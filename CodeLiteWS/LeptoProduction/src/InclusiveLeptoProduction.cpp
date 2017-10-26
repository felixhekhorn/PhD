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

#define initF checkQ2(this->ker->Q2)\
    checkXBjorken(this->ker->xBj)\
    checkLambdaQCD(this->ker->lambdaQCD)\
    if (0 == this->ker->pdf)\
        throw domain_error("needs PDF for hadronic structure function!");\
    if (0. != this->ker->muF2.cHQPairTransverseMomentum || 0. != this->ker->muR2.cHQPairTransverseMomentum)\
        throw domain_error("scale for inclusive computation may not depend on exclusive variable HQPairTransverseMomentum!");\
    if (this->ker->xBj >= this->ker->getZMax()) return 0.;

cdbl InclusiveLeptoProduction::F() const {
    initF
    gsl_monte_function f;
    f.params = this->ker;
    this->ker->mode = Common::AbstractIntKer::Mode_F;
    f.f = gslpp::callFunctor2D<Inclusive::IntKer>;
    return Common::int2D(&f);
}

cdbl InclusiveLeptoProduction::dF_dHAQTransverseMomentum(cdbl HAQTransverseMomentum) const {
    initF
    if (HAQTransverseMomentum < 0.)
        throw invalid_argument((boost::format("HAQTransverseMomentum has to be positive! (pt = %e)")%HAQTransverseMomentum).str());
    if (HAQTransverseMomentum >= this->ker->getHAQTransverseMomentumMax())
        return 0.;
    kker->HAQTransverseMomentum = HAQTransverseMomentum;
    this->ker->mode = Inclusive::IntKer::Mode_dF_dHAQTransverseMomentum;
    gsl_function f;
    f.params = this->ker;
    f.function = gslpp::callFunctor<Inclusive::IntKer>;
    return Common::int1D(&f);
}

cdbl InclusiveLeptoProduction::dF_dHAQRapidity(cdbl HAQRapidity) const {
    initF
    if (fabs(HAQRapidity) >= this->ker->getHAQRapidityMax())
        return 0.;
    kker->HAQRapidity = HAQRapidity;
    this->ker->mode = Inclusive::IntKer::Mode_dF_dHAQRapidity;
    gsl_function f;
    f.params = this->ker;
    f.function = gslpp::callFunctor<Inclusive::IntKer>;
    return Common::int1D(&f);
}

cdbl InclusiveLeptoProduction::dF_dHAQFeynmanX(cdbl HAQFeynmanX) const {
    initF
    if (HAQFeynmanX < -1. || HAQFeynmanX > 1)
        throw invalid_argument((boost::format("HAQFeynmanX has to be within [-1,1]! (x_F = %e)")%HAQFeynmanX).str());
    kker->HAQFeynmanX = HAQFeynmanX;
    this->ker->mode = Inclusive::IntKer::Mode_dF_dHAQFeynmanX;
    gsl_function f;
    f.params = this->ker;
    f.function = gslpp::callFunctor<Inclusive::IntKer>;
    return Common::int1D(&f);
}

cdbl InclusiveLeptoProduction::dF_dHAQTransverseMomentumScaling(cdbl HAQTransverseMomentumScaling) const {
    if (HAQTransverseMomentumScaling < 0. || HAQTransverseMomentumScaling > 1.)
        throw invalid_argument((boost::format("HAQTransverseMomentumScaling has to be within [0,1]! (xt = %e)")%HAQTransverseMomentumScaling).str());
    cdbl pt_max = this->ker->getHAQTransverseMomentumMax();
    return pt_max*this->dF_dHAQFeynmanX(HAQTransverseMomentumScaling*pt_max);
}