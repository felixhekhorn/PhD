#include "ExclusiveElProduction.h"

#include <boost/format.hpp>
#include <boost/filesystem.hpp>

#include <gsl/gsl_monte_vegas.h>
#include <gsl/gsl_integration.h>

#include "gslpp/gslpp.Functor.hpp"
#include "Common/Integration.h"

#include "Common/ME/BpQED.h"
#include "Common/ME/AltarelliParisi.hpp"
#include "Exclusive/ME/Rp.h"
#include "Exclusive/ME/SVp.h"
#include "Exclusive/ME/NLOg.h"
#include "Exclusive/ME/Ap.h"

#include "Exclusive/IntKers/CoeffPsKers.hpp"
#include "Exclusive/IntKers/CoeffPsKerLOg.hpp"
#include "Exclusive/IntKers/CoeffPsKerNLOg.hpp"
#include "Exclusive/IntKers/CoeffPsKerNLOq.hpp"
#include "Exclusive/IntKers/PdfConvNLOq.h"
#include "Exclusive/IntKers/FKerAll.h"

using namespace Common;
using namespace Exclusive;

ExclusiveElProduction::ExclusiveElProduction(cdbl m2, cdbl q2, const projT proj, const uint nlf, cdbl xTilde, cdbl omega, cdbl deltax, cdbl deltay):
    AbstractElProduction(m2,q2,proj,nlf) {
    this->setXTilde(xTilde);
    this->setOmega(omega);
    this->setDeltax(deltax);
    this->setDeltay(deltay);
}

ExclusiveElProduction::~ExclusiveElProduction() {
    // delete all histograms
    for(auto it : this->histMap) {
        delete (it.second);
    }
}

void ExclusiveElProduction::setPartonicS(cdbl s) {
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

getter5(SVp)
getter7(Rp)
getter6(RpxC)
getter6(ROKpyC)
getter4(ROKpyxC)

getter7(Ap1)
getter6(Ap1Counter)
getter7(Ap2)
getter7(Ap3)

cdbl ExclusiveElProduction::cg0() const {
    this->checkPartonic();
    PsKerCg0 k(m2,q2,sp,this->getBpQED());
    gsl_function f;
    f.function = gslpp::callFunctor<PsKerCg0>;
    f.params = &k;
    return int1D(&f);
}

cdbl ExclusiveElProduction::cg1() const {
    this->checkPartonic();
    PsKerCg1 k(m2,q2,sp, xTilde, omega, deltax,deltay);
    k.setBorn(this->getBpQED(),this->getSVp());
    k.setRp(this->getRp(),this->getRpxC(),this->getROKpyC(),this->getROKpyxC());
    k.setPgg(this->getPggH0(),this->getPggH1(), this->getPggS1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor4D<PsKerCg1>;
    f.params = &k;
    k(.5,.5,.5,.5);
    return int4D(&f);
}

cdbl ExclusiveElProduction::cgBarR1() const {
    this->checkPartonic();
    PsKerCgBarR1 k(m2,q2,sp,nlf,xTilde, omega, deltax,deltay);
    k.setBorn(this->getBpQED(),0);
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerCgBarR1>;
    f.params = &k;
    return int2D(&f);
    /*gsl_function f;
    f.function = gslpp::callFunctor<PsKerCgBarR1>;
    f.params = &k;
    return int1D(&f);*/
}

cdbl ExclusiveElProduction::cgBarF1() const {
    this->checkPartonic();
    PsKerCgBarF1 k(m2,q2,sp,nlf,xTilde, omega, deltax,deltay);
    k.setBorn(this->getBpQED(),0);
    k.setPgg(this->getPggH0(),0,0);
    gsl_monte_function f;
    f.f = gslpp::callFunctor3D<PsKerCgBarF1>;
    f.params = &k;
    return int3D(&f);
}

cdbl ExclusiveElProduction::cq1() const {
    this->checkPartonic();
    PsKerCq1 k(m2,q2,sp, omega, deltay);
    k.setAp1(this->getAp1(), this->getAp1Counter());
    k.setSplitting(this->getBpQED(), this->getPgq0(), this->getPgq1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor4D<PsKerCq1>;
    f.params = &k;
    return int4D(&f);
}

cdbl ExclusiveElProduction::cqBarF1() const {
    this->checkPartonic();
    PsKerCqBarF1 k(m2,q2,sp, omega, deltay);
    k.setSplitting(this->getBpQED(), this->getPgq0(), this->getPgq1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerCqBarF1>;
    f.params = &k;
    return int2D(&f);
}

cdbl ExclusiveElProduction::dq1() const {
    this->checkPartonic();
    PsKerDq1 k(m2,q2,sp, this->getAp2());
    gsl_monte_function f;
    f.f = gslpp::callFunctor4D<PsKerDq1>;
    f.params = &k;
    return int4D(&f);
}

cdbl ExclusiveElProduction::F(const uint orderFlag, const uint channelFlag) const {
    this->checkFlags(orderFlag, channelFlag);
    this->checkHadronic();
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    // LO kernel
    PdfConvLOg LOg(m2,q2,bjorkenX,this->getBpQED());
    // NLO gluon kernel 
    PdfConvNLOg NLOg(m2,q2,bjorkenX,nlf,xTilde, omega, deltax,deltay);
    NLOg.setBorn(this->getBpQED(),this->getSVp());
    NLOg.setRp(this->getRp(),this->getRpxC(),this->getROKpyC(),this->getROKpyxC());
    NLOg.setPgg(this->getPggH0(),this->getPggH1(),this->getPggS1());
    // NLO quark kernel
    PdfConvNLOq NLOq(m2,q2,bjorkenX,nlf,omega,deltay);
    NLOq.setAp1(this->getAp1(), this->getAp1Counter());
    NLOq.setSplitting(this->getBpQED(), this->getPgq0(), this->getPgq1());
    NLOq.setAp2(this->getAp2());
    NLOq.setAp3(this->getAp3());
    // Full kernel
    FKerAll k(m2,q2,bjorkenX,nlf,xTilde, omega, deltax,deltay,this->muR2,this->muF2);
    k.setAlphaS(this->aS);
    k.setFlags(orderFlag, channelFlag);
    k.setKers(&LOg,&NLOg,&NLOq);
    k.setPdf(this->pdf);
    // setup histograms
    this->setupHistograms();
    k.setHistograms(&(this->histMap));
    cdbl i = int5DDvegas(k, this->MCparams);
    // write histograms
    for (histMapT::const_iterator it = this->histMap.cbegin(); it != this->histMap.cend(); ++it) {
        it->second->writeToFile();
    }
    return i;
}

void ExclusiveElProduction::activateHistogram(const histT t, const uint size, const str& path, cdbl min /*=nan*/, cdbl max /*=nan*/) {
    // assert existance of path
    boost::filesystem::path fp (path);
    boost::filesystem::path par = fp.parent_path();
    if(!boost::filesystem::exists(par))
        throw ios::failure("histogram path \""+par.string()+"\" does not exist!");
    // create
    gslpp::Histogram* h = new gslpp::Histogram(size);
    if (!isnan(min) && !isnan(max))
        h->setRangesUniform(min,max);
    h->setPath(path);
    // insert
    this->histMap.insert({t,h});
}
    
void ExclusiveElProduction::setupHistograms() const {
    // hadronic S
    cdbl Sh = this->getHadronicS();
    for (histMapT::const_iterator it = this->histMap.cbegin(); it != this->histMap.cend(); ++it) {
        if (it->second->isInitialized())
            continue;
        switch (it->first) {
            case histT::log10z:                 it->second->setRangesLog10(this->bjorkenX,this->zMax);      break;
            case histT::log10xi:                it->second->setRangesLog10(this->bjorkenX/this->zMax,1.);   break;
            case histT::Theta1:
            case histT::Theta2:                 it->second->setRangesUniform(0.,M_PI);                      break;
            
            case histT::HQPairInvMass:          it->second->setRangesUniform(2.*sqrt(this->m2),sqrt(Sh));   break;
            case histT::HQPairDeltaPhi:         it->second->setRangesUniform(-M_PI,M_PI);                   break;
            case histT::HQPairTransverseMomentum:
                /** @todo defalt upper limit of HQPairTransverseMomentum is actually smaller, than 2p_{2,t,max} */
                it->second->setRangesUniform(0.,2.*this->getHAQTransverseMomentumMax());
                break;
            case histT::HQPairConeSizeVariable:
                /** @todo determine default upper limit of HQPairConeSizeVariable */
                throw domain_error("default upper limit of HQPairConeSizeVariable currently unknown!");
                break;
            
            case histT::HAQRapidity:
                {cdbl y0 = this->getHAQRapidityMax();
                it->second->setRangesUniform(-y0,y0);}
                break;
            case histT::HAQTransverseMomentum:         it->second->setRangesUniform(0.,this->getHAQTransverseMomentumMax());        break;
            case histT::HAQTransverseMomentumScaling:  it->second->setRangesLog10(1.e-3,1.);                        break;
            case histT::HAQFeynmanX:                   it->second->setRangesUniform(-1.,1.+1e-5);                   break;
            
            case histT::x:                      it->second->setRangesLog10(this->bjorkenX/this->zMax,1.+1e-5); break;
            case histT::y:                      it->second->setRangesUniform(-1.,1.+1e-5);                     break;
            default: continue;
        }
    }
}