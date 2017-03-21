#include "ExclusiveElProduction.h"

#include <errno.h>

#include <gsl/gsl_monte_vegas.h>
#include <gsl/gsl_integration.h>
#include "gslpp/gslpp.Functor.hpp"
#include "./Integration.h"

#include "Exclusive/ME/BpQED.h"
#include "Exclusive/ME/Rp.h"
#include "Exclusive/ME/SVp.h"
#include "Exclusive/ME/NLOg.h"
#include "Exclusive/ME/Ap.h"
#include "Exclusive/ME/AltarelliParisi.hpp"

#include "Exclusive/IntKers/CoeffPsKers.hpp"
#include "Exclusive/IntKers/CoeffPsKerLOg.hpp"
#include "Exclusive/IntKers/CoeffPsKerNLOg.hpp"
#include "Exclusive/IntKers/CoeffPsKerNLOq.hpp"
#include "Exclusive/IntKers/PdfConvNLOq.h"
#include "Exclusive/IntKers/FKerAll.h"

using namespace Exclusive;

ExclusiveElProduction::ExclusiveElProduction(dbl m2, dbl q2, projT proj, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay):
    AbstractElProduction(m2,q2,proj,nlf) {
    this->setXTilde(xTilde);
    this->setOmega(omega);
    this->setDeltax(deltax);
    this->setDeltay(deltay);
}

void ExclusiveElProduction::setPartonicS(dbl s) {
    if (s < 4.*m2)
        throw domain_error("partonic cm-energy has to be larger than threshold 4m^2!");
    this->sp = s - q2;
    this->hasPartonicS = true;
    this->setRhoTilde();
}

void ExclusiveElProduction::setRhoTilde() {
    if (!this->hasPartonicS)
        throw domain_error("need partonic s to set rhoTilde");
    cdbl rhoStar = (4.*m2 - q2)/this->sp;
    cdbl rhoTilde = 1. - this->xTilde*(1. - rhoStar);
    if (rhoTilde >= 1. - this->deltax)
        throw domain_error("rhoTilde has to be smaller than 1-deltax!");
    this->rhoTilde = rhoTilde;
}

void ExclusiveElProduction::setXTilde(cdbl xTilde) {
    if (xTilde <= 0. || xTilde >= 1.)
        throw domain_error((boost::format("xTilde (%e) has to be within (0,1)!")%xTilde).str());
    this->xTilde = xTilde;
    if (this->hasPartonicS)
        this->setRhoTilde();
}

void ExclusiveElProduction::setOmega(cdbl omega) {
    if (omega <= 0. || omega >= 2.)
        throw domain_error((boost::format("omega (%e) has to be within (0,2)!")%omega).str());
    if (deltay >= omega)
        throw domain_error((boost::format("omega (%e) has to be bigger than deltay (%e)!")%omega%deltay).str());
    this->omega = omega;
}

void ExclusiveElProduction::setDeltax(cdbl deltax) {
    if (deltax <= 0 || deltax >= 1)
        throw domain_error((boost::format("deltax (%e) has to be positive and smaller then 1!")%deltax).str());
    this->deltax = deltax;
}

void ExclusiveElProduction::setDeltay(cdbl deltay) {
    if (deltay <= 0 || deltay >= 2 || deltay >= this->omega)
        throw domain_error((boost::format("deltay (%e) has to be positive, smaller than 2 and smaller than omega (%e)!")%deltay%omega).str());
    this->deltay = deltay;
}

#define getterAPker(n) fPtr1dbl ExclusiveElProduction::get##n() const {\
    switch(this->proj) {\
        case P: return &AltarelliParisi::Delta##n;\
        case G: \
        case L: return &AltarelliParisi::n;\
        default: throw invalid_argument("unknown projection!");\
    }\
}
getterAPker(PggH0)
getterAPker(PggH1)
getterAPker(Pgq0)
getterAPker(Pgq1)

fPtr0dbl ExclusiveElProduction::getPggS1() const {
    switch(this->proj) {\
        case P: return &AltarelliParisi::DeltaPggS1;
        case G: \
        case L: return &AltarelliParisi::PggS1;
        default: throw invalid_argument("unknown projection!");
    }
}

#define getter4(n) fPtr4dbl ExclusiveElProduction::get##n() const {\
    switch(this->proj) {\
        case G: return &n##G;\
        case L: return &n##L;\
        case P: return &n##P;\
        default: throw invalid_argument("unknown projection!");\
    }\
}
#define getter5(n) fPtr5dbl ExclusiveElProduction::get##n() const {\
    switch(this->proj) {\
        case G: return &n##G;\
        case L: return &n##L;\
        case P: return &n##P;\
        default: throw invalid_argument("unknown projection!");\
    }\
}
#define getter6(n) fPtr6dbl ExclusiveElProduction::get##n() const {\
    switch(this->proj) {\
        case G: return &n##G;\
        case L: return &n##L;\
        case P: return &n##P;\
        default: throw invalid_argument("unknown projection!");\
    }\
}
#define getter7(n) fPtr7dbl ExclusiveElProduction::get##n() const {\
    switch(this->proj) {\
        case G: return &n##G;\
        case L: return &n##L;\
        case P: return &n##P;\
        default: throw invalid_argument("unknown projection!");\
    }\
}

getter4(BpQED)

getter5(SVp)
getter7(Rp)
getter6(RpxC)
getter6(ROKpyC)
getter4(ROKpyxC)

getter7(Ap1)
getter6(Ap1Counter)
getter7(Ap2)
getter7(Ap3)

dbl ExclusiveElProduction::cg0() const {
    this->checkPartonic();
    PsKerCg0 k(m2,q2,sp,this->getBpQED());
    gsl_function f;
    f.function = gslpp::callFunctor<PsKerCg0>;
    f.params = &k;
    return int1D(&f);
}

dbl ExclusiveElProduction::cg1() const {
    this->checkPartonic();
    PsKerCg1 k(m2,q2,sp, xTilde, omega, deltax,deltay);
    k.setBorn(this->getBpQED(),this->getSVp());
    k.setRp(this->getRp(),this->getRpxC(),this->getROKpyC(),this->getROKpyxC());
    k.setPgg(this->getPggH0(),this->getPggH1(), this->getPggS1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor4D<PsKerCg1>;
    f.params = &k;
    return int4D(&f);
}

dbl ExclusiveElProduction::cgBarR1() const {
    this->checkPartonic();
    PsKerCgBarR1 k(m2,q2,sp,nlf);
    k.setBorn(this->getBpQED(),0);
    gsl_function f;
    f.function = gslpp::callFunctor<PsKerCgBarR1>;
    f.params = &k;
    return int1D(&f);
}

dbl ExclusiveElProduction::cgBarF1() const {
    this->checkPartonic();
    PsKerCgBarF1 k(m2,q2,sp,nlf,xTilde,deltax);
    k.setBorn(this->getBpQED(),0);
    k.setPgg(this->getPggH0(),0,0);
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerCgBarF1>;
    f.params = &k;
    return int2D(&f);
}

dbl ExclusiveElProduction::cq1() const {
    this->checkPartonic();
    PsKerCq1 k(m2,q2,sp, omega, deltay);
    k.setAp1(this->getAp1(), this->getAp1Counter());
    k.setSplitting(this->getBpQED(), this->getPgq0(), this->getPgq1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor4D<PsKerCq1>;
    f.params = &k;
    return int4D(&f);
}

dbl ExclusiveElProduction::cqBarF1() const {
    this->checkPartonic();
    PsKerCqBarF1 k(m2,q2,sp);
    k.setSplitting(this->getBpQED(), this->getPgq0(), this->getPgq1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerCqBarF1>;
    f.params = &k;
    return int2D(&f);
}

dbl ExclusiveElProduction::dq1() const {
    this->checkPartonic();
    PsKerDq1 k(m2,q2,sp, this->getAp2());
    gsl_monte_function f;
    f.f = gslpp::callFunctor4D<PsKerDq1>;
    f.params = &k;
    return int4D(&f);
}

dbl ExclusiveElProduction::Fg0() const {
/** @todo reimplement! delegate? */
throw logic_error("TODO: reimplement! delegate?");
/*    this->checkHadronic();
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvLOg k(m2,q2,bjorkenX,this->getBpQED());
    k.setPdf(this->pdf);
    k.setMuF2(this->muF2);
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PdfConvLOg>;
    f.params = &k;
    // multiply norm
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl n = alphaS/m2 * (-q2)/(4.*M_PI*M_PI) * eH*eH;
    return n*int2D(&f);*/
}

dbl ExclusiveElProduction::Fg1() const {
/** @todo reimplement! delegate? */
throw logic_error("TODO: reimplement! delegate?");
/*    this->checkHadronic();
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvNLOg k(m2,q2,bjorkenX,nlf,xTilde, omega, deltax,deltay);
    k.setBorn(this->getBpQED(),this->getSVp());
    k.setRp(this->getRp(),this->getRpxC(),this->getROKpyC(),this->getROKpyxC());
    k.setPgg(this->getPggH0(),this->getPggH1(),this->getPggS1());
    k.setPdf(this->pdf);
    k.setMuF2(this->muF2);
    k.setMuR2(this->muR2);
    gsl_monte_function f;
    f.f = gslpp::callFunctor5D<PdfConvNLOg>;
    f.params = &k;
    // multiply norm
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl n = alphaS*alphaS/m2 * (-q2)/(M_PI)* eH*eH;
    return n*int5D(&f);*/
}

dbl ExclusiveElProduction::Fq1() const {
/** @todo reimplement! delegate? */
throw logic_error("TODO: reimplement! delegate?");
/*    this->checkHadronic();
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvNLOq k(m2,q2,bjorkenX,nlf,omega,deltay);
    k.setAp1(this->getAp1(), this->getAp1Counter());
    k.setSplitting(this->getBpQED(), this->getPgq0(), this->getPgq1());
    k.setAp2(this->getAp2());
    k.setAp3(this->getAp3());
    k.setPdf(this->pdf);
    k.setMuF2(this->muF2);
    gsl_monte_function f;
    f.f = gslpp::callFunctor5D<PdfConvNLOq>;
    f.params = &k;
    // multiply norm
    cdbl n = alphaS*alphaS/m2 * (-q2)/(M_PI);
    return n*int5D(&f);*/
}

void ExclusiveElProduction::setMuR2(dbl muR2) {
    throw logic_error("use setMuR2Factors instead!");
}

void ExclusiveElProduction::setMuF2(dbl muR2) {
    throw logic_error("use setMuF2Factors instead!");
}

void ExclusiveElProduction::setMu2(dbl muR2) {
    throw logic_error("use setMu2Factors instead!");
}

void ExclusiveElProduction::setAlphaS(dbl muR2) {
    throw logic_error("use setLambdaQCD instead!");
}

void ExclusiveElProduction::setMuR2Factors(Exclusive::DynamicScaleFactors muR2Factors) {
    this->muR2Factors = muR2Factors;
    this->hasMuR2 = true;
}
    
void ExclusiveElProduction::setMuF2Factors(Exclusive::DynamicScaleFactors muF2Factors) {
    this->muF2Factors = muF2Factors;
    this->hasMuF2 = true;
}
    
void ExclusiveElProduction::setMu2Factors(Exclusive::DynamicScaleFactors mu2Factors) {
    this->setMuF2Factors(mu2Factors);
    this->setMuR2Factors(mu2Factors);
}

void ExclusiveElProduction::setLambdaQCD(dbl lambdaQCD) {
    this->lambdaQCD = lambdaQCD;
    this->aS.setLambda(this->nlf + 1, lambdaQCD);
    this->hasAlphaS = true;
}

dbl ExclusiveElProduction::F(uint order/*= 1*/) {
    if (order > 1)
        throw domain_error((boost::format("order has to be either 0 or 1")%order).str());
    this->checkHadronic();
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    // LO kernel
    PdfConvLOg LOg(m2,q2,bjorkenX,this->getBpQED());
    LOg.setPdf(this->pdf);
    // NLO gluon kernel 
    PdfConvNLOg NLOg(m2,q2,bjorkenX,nlf,xTilde, omega, deltax,deltay);
    NLOg.setBorn(this->getBpQED(),this->getSVp());
    NLOg.setRp(this->getRp(),this->getRpxC(),this->getROKpyC(),this->getROKpyxC());
    NLOg.setPgg(this->getPggH0(),this->getPggH1(),this->getPggS1());
//    NLOg.setPdf(this->pdf);
    // NLO quark kernel
    PdfConvNLOq NLOq(m2,q2,bjorkenX,nlf,omega,deltay);
    NLOq.setAp1(this->getAp1(), this->getAp1Counter());
    NLOq.setSplitting(this->getBpQED(), this->getPgq0(), this->getPgq1());
    NLOq.setAp2(this->getAp2());
    NLOq.setAp3(this->getAp3());
//    NLOq.setPdf(this->pdf);
    // Full kernel
    FKerAll k(m2,q2,bjorkenX,nlf,xTilde, omega, deltax,deltay);
    k.setAlphaS(&(this->aS));
    k.setMuRF2Factors(this->muR2Factors,this->muF2Factors);
    k.setOrder(order);
    k.setKers(&LOg,&NLOg,&NLOq);
    k.setPdf(this->pdf);
//dbl sumWeights = 0.;
    // setup histograms
    this->setupHistograms();
//k.setHistograms(&(this->histMap), &sumWeights);
    k.setHistograms(&(this->histMap));
    cdbl i = int5DDvegas(k, this->MCparams);
    return i;
}

ExclusiveElProduction::~ExclusiveElProduction() {
    // delete all histograms
    for(auto it : this->histMap) {
        delete (it.second);
    }
}

void ExclusiveElProduction::activateHistogram(histT t, uint size, dbl min /*=nan*/, dbl max /*=nan*/) {
    gslpp::Histogram* h = new gslpp::Histogram(size);
    if (!isnan(min) && !isnan(max))
        h->setRangesUniform(min,max);
    this->histMap.insert({t,h});
}
    
void ExclusiveElProduction::setupHistograms() {
/** @todo */
    {
    histMapT::const_iterator h = this->histMap.find(log10z);
    if (this->histMap.cend() != h && !h->second->isInitialized())
        h->second->setRangesLog10(this->bjorkenX,this->zMax);
    } {
    histMapT::const_iterator h = this->histMap.find(invMassHQPair);
    if (this->histMap.cend() != h && !h->second->isInitialized())
        h->second->setRangesUniform(2.*sqrt(this->m2),sqrt(-this->q2*(1./this->bjorkenX - 1.)));
    }
/*
    {
    histMapT::const_iterator h = this->histMap.find(log10z);
    if (this->histMap.cend() != h && !h->second->isInitialized())
        h->second->setRangesLog10(this->bjorkenX,this->zMax);
    } {
    histMapT::const_iterator h = this->histMap.find(log10xi);
    if (this->histMap.cend() != h && !h->second->isInitialized())
        h->second->setRangesLog10(this->bjorkenX/this->zMax,1.);
    } {
    histMapT::const_iterator hx = this->histMap.find(x);
    if (this->histMap.cend() != hx && !hx->second->isInitialized())
        hx->second->setRangesLog10(this->bjorkenX/this->zMax,1.);
    } {
    histMapT::const_iterator hy = this->histMap.find(y);
    if (this->histMap.cend() != hy && !hy->second->isInitialized())
        hy->second->setRangesUniform(-1.,1.);
    } {
    histMapT::const_iterator h = this->histMap.find(Theta1);
    if (this->histMap.cend() != h && !h->second->isInitialized())
        h->second->setRangesUniform(0.,M_PI);
    } {
    histMapT::const_iterator hTheta2 = this->histMap.find(Theta2);
    if (this->histMap.cend() != hTheta2 && !hTheta2->second->isInitialized())
        hTheta2->second->setRangesUniform(0.,M_PI);
    } {
    histMapT::const_iterator h = this->histMap.find(s5);
    if (this->histMap.cend() != h && !h->second->isInitialized())
        h->second->setRangesUniform(4.*this->m2,-this->q2*(1./this->bjorkenX - 1.));
    } {
    histMapT::const_iterator h = this->histMap.find(invMassHQPair);
    if (this->histMap.cend() != h && !h->second->isInitialized())
        h->second->setRangesUniform(2.*sqrt(this->m2),sqrt(-this->q2*(1./this->bjorkenX - 1.)));
    }
    
    // hadronic S
    dbl S = q2*(1. - 1./this->bjorkenX); 
    
    {
    histMapT::const_iterator h = this->histMap.find(AHQRapidity);
    if (this->histMap.cend() != h && !h->second->isInitialized()) {
        dbl y0 = atanh(sqrt(1. - 4.*this->m2/S));
        h->second->setRangesUniform(-y0,y0);
    } } {
    histMapT::const_iterator h = this->histMap.find(AHQTransverseMomentum);
    if (this->histMap.cend() != h && !h->second->isInitialized())
        h->second->setRangesUniform(0.,sqrt(S/4. - this->m2));
    } {
    histMapT::const_iterator h = this->histMap.find(DeltaPhiHQPair);
    if (this->histMap.cend() != h && !h->second->isInitialized())
        h->second->setRangesUniform(-M_PI,M_PI);
    }
*/
}

/*void ExclusiveElProduction::rescaleHistograms(dbl s) {
    for(auto it = this->histMap.cbegin(); it != this->histMap.cend(); ++it) {
        it->second->scale(s);
    }
}*/

void ExclusiveElProduction::printHistogram(Exclusive::histT t, str path) {
    histMapT::const_iterator it = this->histMap.find(t);
    if (this->histMap.cend() == it)
        throw invalid_argument("histogram was not active!");
    FILE* f = fopen(path.c_str(),"w");
    if (f == NULL)
        throw ios::failure(strerror(errno));
    it->second->fprintf(f, "% e", "% e");
    fclose(f);
}