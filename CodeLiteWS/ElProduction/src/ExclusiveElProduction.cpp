#include "ExclusiveElProduction.h"

#include <gsl/gsl_monte_vegas.h>
#include <gsl/gsl_integration.h>
#include "gsl++.hpp"
#include "Integration.h"

#include "Exclusive/ME/Ap2.h"

#include "Exclusive/IntKers/CoeffPsKers.hpp"

using namespace Exclusive;

ExclusiveElProduction::ExclusiveElProduction(dbl m2, dbl q2, projT proj, uint nlf, dbl omega, dbl deltay):
    AbstractElProduction(m2,q2,proj,nlf) {
    if (omega <= 0 || omega >= 2)
        throw domain_error("omega has to be within (0,2)!");
    this->omega = omega;
    if (deltay <= 0 || deltay >= this->omega)
        throw domain_error("deltay has to be positive and smaller than omega!");
    this->deltay = deltay;
}

fPtr7dbl ExclusiveElProduction::getAp2() const {
    switch(this->proj) {
        case G: return &Ap2G;
        case L: return &Ap2L;
        case P: return &Ap2P;
        default: throw invalid_argument("unknown projection!");
    }
}

dbl ExclusiveElProduction::dq1() const {
    this->checkPartonic();
    PsKerDq1 k(m2,q2,sp, this->getAp2());
    gsl_monte_function f;
    f.f = gsl::callFunctor4D<PsKerDq1>;
    f.params = &k;
    return int4D(&f);
}