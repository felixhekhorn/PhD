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

cdbl InclusiveLeptoProduction::cg0_VV() const {
    checkQ2(this->ker->Q2)
    checkPartonicS(this->ker->s)
    if (!isParityConservingProj(this->ker->proj))
        throw domain_error("current projection does NOT have a vector-vector part!");
    gsl_function f;
    f.params = this->ker;
    f.function = gslpp::callFunctor<Inclusive::IntKer>;
    this->ker->mode = Common::AbstractIntKer::Mode_cg0_VV;
    return Common::int1D(&f);
}

cdbl InclusiveLeptoProduction::cg0_AA() const {
    checkQ2(this->ker->Q2)
    checkPartonicS(this->ker->s)
    if (!isParityConservingProj(this->ker->proj))
        throw domain_error("current projection does NOT have a axial-axial part!");
    gsl_function f;
    f.params = this->ker;
    f.function = gslpp::callFunctor<Inclusive::IntKer>;
    this->ker->mode = Common::AbstractIntKer::Mode_cg0_AA;
    return Common::int1D(&f);
}

cdbl InclusiveLeptoProduction::cg0_VA() const {
    checkQ2(this->ker->Q2)
    checkPartonicS(this->ker->s)
    if (isParityConservingProj(this->ker->proj))
        throw domain_error("current projection does NOT have a vector-axial part!");
    gsl_function f;
    f.params = this->ker;
    f.function = gslpp::callFunctor<Inclusive::IntKer>;
    this->ker->mode = Common::AbstractIntKer::Mode_cg0_VA;
    return Common::int1D(&f);
}

cdbl InclusiveLeptoProduction::F() const {
    checkQ2(this->ker->Q2)
    checkXBjorken(this->ker->xBj)
    checkLambdaQCD(this->ker->lambdaQCD)
    if (0 == this->ker->pdf)
        throw domain_error("needs PDF for hadronic structure function!");
    if (0. != this->ker->muF2.cHQPairTransverseMomentum || 0. != this->ker->muR2.cHQPairTransverseMomentum)
        throw domain_error("scale for inclusive computation may not depend on exclusive variable HQPairTransverseMomentum!");
    // Threshold?
    if (this->ker->xBj >= this->ker->zMax()) return 0.;
    gsl_monte_function f;
    f.params = this->ker;
    f.f = gslpp::callFunctor2D<Inclusive::IntKer>;
    this->ker->mode = Common::AbstractIntKer::Mode_F;
    return Common::int2D(&f);
}