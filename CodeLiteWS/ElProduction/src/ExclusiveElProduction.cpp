#include "ExclusiveElProduction.h"

#include <gsl/gsl_monte_vegas.h>
#include <gsl/gsl_integration.h>
#include "gsl++.hpp"
#include "Integration.h"

#include "Exclusive/ME/BpQED.h"
#include "Exclusive/ME/Rp.h"
#include "Exclusive/ME/SVp.h"
#include "Exclusive/ME/NLOg.h"
#include "Exclusive/ME/Ap.h"

#include "Exclusive/ME/AltarelliParisi.hpp"

#include "Exclusive/IntKers/CoeffPsKers.hpp"

using namespace Exclusive;

ExclusiveElProduction::ExclusiveElProduction(dbl m2, dbl q2, projT proj, uint nlf, dbl rhoTilde, dbl omega, dbl deltax, dbl deltay):
    AbstractElProduction(m2,q2,proj,nlf) {
    this->setRhoTilde(rhoTilde);
    this->setOmega(omega);
    this->setDeltax(deltax);
    this->setDeltay(deltay);
}

void ExclusiveElProduction::checkPartonic() const {
    if (!this->hasPartonicS)
        throw invalid_argument("no partonic cm-energy given!");
    cdbl rhoStar = (4.*m2 - q2)/this->sp;
    if (this->rhoTilde <= rhoStar)
        throw domain_error("rhoTilde has to be bigger than rhoStar!");
    if (this->rhoTilde >= 1. - this->deltax)
        throw domain_error("rhoTilde has to be smaller than 1-deltax!");
}

void ExclusiveElProduction::setRhoTilde(cdbl rhoTilde) {
    if (rhoTilde >= 1)
        throw domain_error("rhoTilde has to be smaller than 1!");
    if (rhoTilde >= 1.-deltax)
        throw domain_error("rhoTilde has to be smaller than 1-deltax!");
    this->rhoTilde = rhoTilde;
}

void ExclusiveElProduction::setOmega(cdbl omega) {
    if (omega <= 0 || omega >= 2)
        throw domain_error("omega has to be within (0,2)!");
    if (deltay >= omega)
        throw domain_error("omega has to be bigger than deltay!");
    this->omega = omega;
}

void ExclusiveElProduction::setDeltax(cdbl deltax) {
    if (deltax <= 0)
        throw domain_error("deltax has to be positive!");
    this->deltax = deltax;
}

void ExclusiveElProduction::setDeltay(cdbl deltay) {
    if (deltay <= 0 || deltay >= this->omega)
        throw domain_error("deltay has to be positive and smaller than omega!");
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
getterAPker(Pgg0)
getterAPker(Pgg1)
getterAPker(Pgq0)
getterAPker(Pgq1)

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

dbl ExclusiveElProduction::cg1() const {
    this->checkPartonic();
    PsKerCg1 k(m2,q2,sp, rhoTilde, omega, deltax,deltay);
    k.setBorn(this->getBpQED(),this->getSVp());
    k.setRp(this->getRp(),this->getRpxC(),this->getROKpyC(),this->getROKpyxC());
    k.setPgg(this->getPgg0(),this->getPgg1());
    gsl_monte_function f;
    f.f = gsl::callFunctor4D<PsKerCg1>;
    f.params = &k;
    return int4D(&f);
}

dbl ExclusiveElProduction::cq1() const {
    this->checkPartonic();
    PsKerCq1 k(m2,q2,sp, this->getBpQED(),this->getAp1(), this->getAp1Counter(), this->getPgq0(), this->getPgq1(), omega, deltay);
    gsl_monte_function f;
    f.f = gsl::callFunctor4D<PsKerCq1>;
    f.params = &k;
    return int4D(&f);
}

dbl ExclusiveElProduction::dq1() const {
    this->checkPartonic();
    PsKerDq1 k(m2,q2,sp, this->getAp2());
    gsl_monte_function f;
    f.f = gsl::callFunctor4D<PsKerDq1>;
    f.params = &k;
    return int4D(&f);
}