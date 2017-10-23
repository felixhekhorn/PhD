#include "InclusiveLeptoProduction.h"

#include <gsl/gsl_integration.h>

#include "gslpp/gslpp.Functor.hpp"

#include "Common/Integration.h"

InclusiveLeptoProduction::InclusiveLeptoProduction(cuint nlf, cdbl m2, cdbl Delta) :
    AbstractLeptoProduction(new Inclusive::IntKer(), nlf, m2) {
    this->setDelta(Delta);
}

InclusiveLeptoProduction::~InclusiveLeptoProduction() {
}

cdbl InclusiveLeptoProduction::cg0() const {
    checkPartonicS(this->ker->s)
    checkQ2(this->ker->Q2)
    gsl_function f;
    f.params = this->ker;
    f.function = gslpp::callFunctor<Inclusive::IntKer>;
    this->ker->mode = Common::AbstractIntKer::Mode_cg0;
    return Common::int1D(&f);
}

cdbl InclusiveLeptoProduction::F() const {
    checkXBjorken(this->ker->xBj)
    checkQ2(this->ker->Q2)
    // Threshold?
    if (this->ker->xBj >= this->ker->zMax()) return 0.;
    gsl_monte_function f;
    f.params = this->ker;
    f.f = gslpp::callFunctor2D<Inclusive::IntKer>;
    this->ker->mode = Common::AbstractIntKer::Mode_F;
    return Common::int2D(&f);
}