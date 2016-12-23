#include "ExclusiveElProduction.h"

#include <gsl/gsl_monte_vegas.h>
#include <gsl/gsl_integration.h>
#include "gsl++.hpp"
#include "Integration.h"

#include "Exclusive/ME/BpQED.h"
#include "Exclusive/ME/Ap.h"
#include "Exclusive/ME/AltarelliParisi.hpp"

#include "Exclusive/IntKers/CoeffPsKers.hpp"

using namespace Exclusive;

ExclusiveElProduction::ExclusiveElProduction(dbl m2, dbl q2, projT proj, uint nlf, dbl omega, dbl deltay):
    AbstractElProduction(m2,q2,proj,nlf) {
    this->setOmega(omega);
    if (deltay <= 0 || deltay >= this->omega)
        throw domain_error("deltay has to be positive and smaller than omega!");
    this->deltay = deltay;
}

void ExclusiveElProduction::setOmega(cdbl omega) {
    if (omega <= 0 || omega >= 2)
        throw domain_error("omega has to be within (0,2)!");
    this->omega = omega;
}

fPtr4dbl ExclusiveElProduction::getBpQED() const {
    switch(this->proj) {
        case G: return &BpQEDG;
        case L: return &BpQEDL;
        case P: return &BpQEDP;
        default: throw invalid_argument("unknown projection!");
    }
}

fPtr1dbl ExclusiveElProduction::getPgq0() const {
    switch(this->proj) {
        case P: return &AltarelliParisi::DeltaPgq0;
        case G: 
        case L: return &AltarelliParisi::Pgq0;
        default: throw invalid_argument("unknown projection!");
    }
}

fPtr1dbl ExclusiveElProduction::getPgq1() const {
    switch(this->proj) {
        case P: return &AltarelliParisi::DeltaPgq1;
        case G: 
        case L: return &AltarelliParisi::Pgq1;
        default: throw invalid_argument("unknown projection!");
    }
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

getter7(Ap1)
getter6(Ap1Counter)
getter7(Ap2)
getter7(Ap3)

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