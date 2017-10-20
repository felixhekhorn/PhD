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

cdbl InclusiveLeptoProduction::cg0() {
    checkPartonicS(this->ker->s)
    checkQ2(this->ker->Q2)
    gsl_function f;
    f.params = this->ker;
    f.function = gslpp::callFunctor<Inclusive::IntKer>;
    this->ker->mode = Common::AbstractIntKer::Mode_cg0;
    return Common::int1D(&f);
}