#include "InclusiveLeptoProduction.h"

#include <gsl/gsl_integration.h>

#include "gslpp/gslpp.Functor.hpp"

#include "Common/Integration.h"

InclusiveLeptoProduction::InclusiveLeptoProduction(cuint nlf, cdbl m2, cdbl Delta) :
    AbstractLeptoProduction(new Inclusive::IntKer(), nlf, m2) {
    this->setDelta(Delta);
    // setup default values for IntegrationConfig
    this->intConfigs.resize(5);
    Common::IntegrationConfig i1;
    i1.method = "gsl_integration_qag";
    i1.GslQag_epsabs = 5e-6;
    i1.GslQag_epsrel = 1e-4;
    i1.GslQag_key = GSL_INTEG_GAUSS41;
    this->intConfigs[0] = i1;
    Common::IntegrationConfig i2;
    i2.method = "gsl_monte_vegas_integrate";
    i2.warmupCalls = 3000;
    i2.calls = 30000;
    this->intConfigs[1] = i2;
    Common::IntegrationConfig i3;
    i2.method = "gsl_monte_vegas_integrate";
    i2.warmupCalls = 5000;
    i2.calls = 50000;
    this->intConfigs[2] = i3;
    Common::IntegrationConfig i4;
    i2.method = "gsl_monte_vegas_integrate";
    i2.warmupCalls = 7000;
    i2.calls = 70000;
    this->intConfigs[3] = i4;
    Common::IntegrationConfig i5;
    i2.method = "gsl_monte_vegas_integrate";
    i2.warmupCalls = 10000;
    i2.calls = 100000;
    this->intConfigs[4] = i4;
}

InclusiveLeptoProduction::~InclusiveLeptoProduction() {
}

cdbl InclusiveLeptoProduction::int1D() const {
    gsl_function f;
    f.params = this->ker;
    f.function = gslpp::callFunctor<Inclusive::IntKer>;
    return Common::integrate1D(&f,this->intConfigs[0],this->intOut);
}

#define intND(N) cdbl InclusiveLeptoProduction::int##N##D() const {\
    gsl_monte_function f;\
    f.params = this->ker;\
    f.f = gslpp::callFunctor##N##D<Inclusive::IntKer>;\
    return Common::integrate##N##D(&f,this->intConfigs[N-1],this->intOut);\
}
intND(2)
intND(3)
intND(4)
intND(5)

#define initPartonicVV checkQ2(this->ker->Q2)\
    checkPartonicS(this->ker->s)\
    if (!isParityConservingProj(this->ker->proj))\
        throw domain_error("current projection does NOT have a vector-vector part!");
#define initPartonicVA checkQ2(this->ker->Q2)\
    checkPartonicS(this->ker->s)\
    if (isParityConservingProj(this->ker->proj))\
        throw domain_error("current projection does NOT have a vector-axial part!");
#define initPartonicAA checkQ2(this->ker->Q2)\
    checkPartonicS(this->ker->s)\
    if (!isParityConservingProj(this->ker->proj))\
        throw domain_error("current projection does NOT have a axial-axial part!");
        
// implement partonic coefficient functions with 1D integration
#define implement1DCoeffs(n) \
cdbl InclusiveLeptoProduction::n##_VV() const { initPartonicVV this->ker->mode = Common::AbstractIntKer::Mode_##n##_VV; return this->int1D(); }\
cdbl InclusiveLeptoProduction::n##_VA() const { initPartonicVA this->ker->mode = Common::AbstractIntKer::Mode_##n##_VA; return this->int1D(); }\
cdbl InclusiveLeptoProduction::n##_AA() const { initPartonicAA this->ker->mode = Common::AbstractIntKer::Mode_##n##_AA; return this->int1D(); }

// implement partonic coefficient functions with 2D integration
#define implement2DCoeffs(n) \
cdbl InclusiveLeptoProduction::n##_VV() const { initPartonicVV this->ker->mode = Common::AbstractIntKer::Mode_##n##_VV; return this->int2D(); }\
cdbl InclusiveLeptoProduction::n##_VA() const { initPartonicVA this->ker->mode = Common::AbstractIntKer::Mode_##n##_VA; return this->int2D(); }\
cdbl InclusiveLeptoProduction::n##_AA() const { initPartonicAA this->ker->mode = Common::AbstractIntKer::Mode_##n##_AA; return this->int2D(); }

implement1DCoeffs(cg0)
implement1DCoeffs(cgBarR1)

implement2DCoeffs(dq1)
implement2DCoeffs(cq1)
implement2DCoeffs(cg1)
implement2DCoeffs(cqBarF1)
implement2DCoeffs(cgBarF1)

#define checkMu if (0. != this->ker->muF2.cHQPairTransverseMomentum || 0. != this->ker->muR2.cHQPairTransverseMomentum)\
        throw domain_error("scales for inclusive computation may not depend on the exclusive variable HQPairTransverseMomentum!");

#define initF checkQ2(this->ker->Q2)\
    checkXBjorken(this->ker->xBj)\
    checkAlphaS(this->ker->aS)\
    if (0 == this->ker->pdf)\
        throw domain_error("needs PDF for hadronic structure function!");\
    checkMu\
    if (this->ker->xBj >= this->ker->getZMax()) return 0.;

cdbl InclusiveLeptoProduction::F() const {
    initF
    this->ker->mode = Common::AbstractIntKer::Mode_F;
    dbl r = dblNaN;
    if (this->ker->flags.useNextToLeadingOrder) {
        r = this->int3D();
    } else {
        r = this->int2D();
    }
    // unset integration variables
    this->ker->s = dblNaN;
    return r;
}

cdbl InclusiveLeptoProduction::rundF_dHAQX() const {
    dbl r = dblNaN;
    if (this->ker->flags.useNextToLeadingOrder) {
        r = this->int2D();
    } else {
        r = this->int1D();
    }
    // unset integration variables
    this->ker->s = dblNaN;
    return r;
}

cdbl InclusiveLeptoProduction::dF_dHAQTransverseMomentum(cdbl HAQTransverseMomentum) const {
    initF
    if (HAQTransverseMomentum < 0.)
        throw invalid_argument((boost::format("HAQTransverseMomentum has to be positive! (pt = %e)")%HAQTransverseMomentum).str());
    if (HAQTransverseMomentum >= this->ker->getHAQTransverseMomentumMax())
        return 0.;
    kker->HAQTransverseMomentum = HAQTransverseMomentum;
    this->ker->mode = Inclusive::IntKer::Mode_dF_dHAQTransverseMomentum;
    return this->rundF_dHAQX();
}

cdbl InclusiveLeptoProduction::dF_dHAQRapidity(cdbl HAQRapidity) const {
    initF
    if (fabs(HAQRapidity) >= this->ker->getHAQRapidityMax())
        return 0.;
    kker->HAQRapidity = HAQRapidity;
    this->ker->mode = Inclusive::IntKer::Mode_dF_dHAQRapidity;
    return this->rundF_dHAQX();
}

cdbl InclusiveLeptoProduction::dF_dHAQFeynmanX(cdbl HAQFeynmanX) const {
    initF
    if (HAQFeynmanX < -1. || HAQFeynmanX > 1.)
        throw invalid_argument((boost::format("HAQFeynmanX has to be within [-1,1]! (x_F = %e)")%HAQFeynmanX).str());
    kker->HAQFeynmanX = HAQFeynmanX;
    this->ker->mode = Inclusive::IntKer::Mode_dF_dHAQFeynmanX;
    return this->rundF_dHAQX();
}

cdbl InclusiveLeptoProduction::dF_dHAQTransverseMomentumScaling(cdbl HAQTransverseMomentumScaling) const {
    initF
    if (HAQTransverseMomentumScaling < 0. || HAQTransverseMomentumScaling > 1.)
        throw invalid_argument((boost::format("HAQTransverseMomentumScaling has to be within [0,1]! (xt = %e)")%HAQTransverseMomentumScaling).str());
    cdbl pt_max = this->ker->getHAQTransverseMomentumMax();
    return pt_max*this->dF_dHAQTransverseMomentum(HAQTransverseMomentumScaling*pt_max);
}

cdbl InclusiveLeptoProduction::sigma() const {
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
    return r;
}