#include "FullyDiffLeptoProduction.h"

#include <gsl/gsl_integration.h>
#include <boost/algorithm/string.hpp>

#include "gslpp/gslpp.Functor.hpp"

#include "Common/Integration.hpp"

FullyDiffLeptoProduction::FullyDiffLeptoProduction(cuint nlf, cdbl m2, cdbl xTilde, cdbl omega, cdbl deltax, cdbl deltay) :
    AbstractLeptoProduction(new FullyDiff::IntKer(), nlf, m2) {
    this->setXTilde(xTilde);
    this->setOmega(omega);
    this->setDeltax(deltax);
    this->setDeltay(deltay);
    
    // setup default values for IntegrationConfig
    this->intConfigs.resize(5);
    Common::IntegrationConfig* i1 = new Common::IntegrationConfig;
    i1->method = "gsl_integration_qag";
    i1->calls = 10000;
    i1->GslQag_epsabs = 5e-6;
    i1->GslQag_epsrel = 1e-4;
    i1->GslQag_key = GSL_INTEG_GAUSS41;
    this->intConfigs[0] = i1;
    Common::IntegrationConfig* i2 = new Common::IntegrationConfig;
    i2->method = "Dvegas";
    i2->MC_warmupCalls = 3000;
    i2->calls = 30000;
    this->intConfigs[1] = i2;
    Common::IntegrationConfig* i3 = new Common::IntegrationConfig;
    i3->method = "Dvegas";
    i3->MC_warmupCalls = 5000;
    i3->calls = 50000;
    this->intConfigs[2] = i3;
    Common::IntegrationConfig* i4 = new Common::IntegrationConfig;
    i4->method = "Dvegas";
    i4->MC_warmupCalls = 7000;
    i4->calls = 70000;
    this->intConfigs[3] = i4;
    Common::IntegrationConfig* i5 = new Common::IntegrationConfig;
    i5->method = "Dvegas";
    i5->MC_warmupCalls = 10000;
    i5->calls = 100000;
    this->intConfigs[4] = i5;
}

FullyDiffLeptoProduction::~FullyDiffLeptoProduction() {
}

void FullyDiffLeptoProduction::setXTilde(cdbl xTilde) {
    if (xTilde <= 0. || xTilde >= 1.)
        throw domain_error((boost::format("xTilde (%e) has to be within (0,1)!")%xTilde).str());
    FDker->xTilde = xTilde;
}

void FullyDiffLeptoProduction::setOmega(cdbl omega) {
    if (omega <= 0. || omega >= 2.)
        throw domain_error((boost::format("omega (%e) has to be within (0,2)!")%omega).str());
    if (FDker->deltay >= omega)
        throw domain_error((boost::format("omega (%e) has to be bigger than deltay (%e)!")%omega%(FDker->deltay)).str());
    FDker->omega = omega;
}

void FullyDiffLeptoProduction::setDeltax(cdbl deltax) {
    if (deltax <= 0 || deltax >= 1)
        throw domain_error((boost::format("deltax (%e) has to be positive and smaller then 1!")%deltax).str());
    FDker->deltax = deltax;
}

void FullyDiffLeptoProduction::setDeltay(cdbl deltay) {
    if (deltay <= 0 || deltay >= 2 || deltay >= FDker->omega)
        throw domain_error((boost::format("deltay (%e) has to be positive, smaller than 2 and smaller than omega (%e)!")%deltay%(FDker->omega)).str());
    FDker->deltay = deltay;
}

Common::IntegrationConfig* FullyDiffLeptoProduction::getIntegrationConfig(str method) const {
    // partonic functions
    if (boost::starts_with(method,"cg0_") || boost::starts_with(method,"cgBarR1_"))
        return this->intConfigs.at(1-1);
    if (boost::starts_with(method,"cgBarF1_") || boost::starts_with(method,"cgBar1_") || 
        boost::starts_with(method,"cqBarF1_"))
        return this->intConfigs.at(2-1);
    if (boost::starts_with(method,"cg1_") || boost::starts_with(method,"cq1_") || boost::starts_with(method,"dq1_"))
        return this->intConfigs.at(4-1);
    /*// hadronic functions
    bool isNLO = this->ker->flags.useNextToLeadingOrder;
    if (boost::starts_with(method,"dF_d"))
        return isNLO ? this->intConfigs.at(1) : this->intConfigs.at(0);
    if (boost::iequals(method,"F"))
        return isNLO ? this->intConfigs.at(2) : this->intConfigs.at(1);
    // leptonic functions
    if (boost::iequals(method,"sigma"))
        return isNLO ? this->intConfigs.at(4) : this->intConfigs.at(3);
    */throw invalid_argument(str("unknown method: ")+method);
}

#define intND(N) cdbl FullyDiffLeptoProduction::int##N##D() const {\
    this->ker->dim = N;\
    return Common::integrate##N##D<FullyDiff::IntKer>(FDker,*this->intConfigs.at(N-1),this->intOut);\
}
intND(1)
intND(2)
intND(3)
intND(4)
intND(5)

// implement partonic coefficient functions with d-dim integration
#define implementCoeffs(n,d) \
cdbl FullyDiffLeptoProduction::n##_VV() const { initPartonicVV this->ker->mode = Common::AbstractIntKer::Mode_##n##_VV; return this->int##d##D(); }\
cdbl FullyDiffLeptoProduction::n##_VA() const { initPartonicVA this->ker->mode = Common::AbstractIntKer::Mode_##n##_VA; return this->int##d##D(); }\
cdbl FullyDiffLeptoProduction::n##_AA() const { initPartonicAA this->ker->mode = Common::AbstractIntKer::Mode_##n##_AA; return this->int##d##D(); }

implementCoeffs(cg0,1)
implementCoeffs(cgBarR1,1)

implementCoeffs(cgBarF1,2)
implementCoeffs(cgBar1,2)
implementCoeffs(cqBarF1,2)

implementCoeffs(dq1,4)
implementCoeffs(cq1,4)
implementCoeffs(cg1,4)

cdbl FullyDiffLeptoProduction::F() const { 
    initF
    this->ker->mode = Common::AbstractIntKer::Mode_F;
    dbl r = dblNaN;
    if (this->ker->flags.useNextToLeadingOrder) {
        r = this->int5D();
    } else {
        r = this->int2D();
    }
    // unset integration variables
    this->ker->s = dblNaN;
    return r;
}

cdbl FullyDiffLeptoProduction::sigma() const { return 0.;/*
    checkAlphaS(this->ker->aS)
    checkAlphaEM(this->ker->alphaEM)
    if (0 == this->ker->pdf)
        throw domain_error("needs PDF for leptonic cross section!");
    checkMu
    checkLeptonicS(this->ker->Sl)
    if (!isfinite(this->ker->Q2min) && !isfinite(this->ker->q2minHVQDIS))
        throw domain_error("needs cut on Q2 for leptonic cross section!");
    // kinematic phase space available for y?
    cdbl yBjMax = 1.;
    cdbl yBjMin = 4.*this->ker->m2 / this->ker->Sl;
    if (yBjMin >= yBjMax)
        return 0.;
    // kinematic phase space available for Q2?
    cdbl Q2max = this->ker->Sl - 4.*this->ker->m2;
    if (isfinite(this->ker->Q2min) && this->ker->Q2min >= Q2max)
        return 0.;
    else if (isfinite(this->ker->q2minHVQDIS)) {
        cdbl Q2min = this->ker->q2minHVQDIS * yBjMin*yBjMin/(1. - yBjMin)/(1. - yBjMin);
        if (Q2min >= Q2max)
            return 0.;
    }
    this->ker->mode = Common::AbstractIntKer::Mode_sigma;
    dbl r = dblNaN;
    if (this->flags().useNextToLeadingOrder) {
        r = this->int5D();
    } else {
        r = this->int4D();
    }
    // unset integration variables
    this->ker->xBj = dblNaN;
    this->ker->Q2 = dblNaN;
    this->ker->s = dblNaN;
    return r;*/
}