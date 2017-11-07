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

#define initPartonicVV checkQ2(this->ker->Q2)\
    checkPartonicS(this->ker->s)\
    if (!isParityConservingProj(this->ker->proj))\
        throw domain_error("current projection does NOT have a vector-vector part!");

#define initPartonicAA checkQ2(this->ker->Q2)\
    checkPartonicS(this->ker->s)\
    if (!isParityConservingProj(this->ker->proj))\
        throw domain_error("current projection does NOT have a axial-axial part!");
        
#define initPartonicVA checkQ2(this->ker->Q2)\
    checkPartonicS(this->ker->s)\
    if (isParityConservingProj(this->ker->proj))\
        throw domain_error("current projection does NOT have a vector-axial part!");
        
#define runCg0(cur) this->ker->mode = Common::AbstractIntKer::Mode_cg0_##cur;\
    gsl_function f;\
    f.params = this->ker;\
    f.function = gslpp::callFunctor<Inclusive::IntKer>;\
    return Common::int1D(&f);
cdbl InclusiveLeptoProduction::cg0_VV() const { initPartonicVV runCg0(VV) }
cdbl InclusiveLeptoProduction::cg0_AA() const { initPartonicAA runCg0(AA) }
cdbl InclusiveLeptoProduction::cg0_VA() const { initPartonicVA runCg0(VA) }

#define runDq1(cur) this->ker->mode = Common::AbstractIntKer::Mode_dq1_##cur;\
    gsl_monte_function f;\
    f.params = this->ker;\
    f.f = gslpp::callFunctor2D<Inclusive::IntKer>;\
    return Common::int2D(&f);
cdbl InclusiveLeptoProduction::dq1_VV() const { initPartonicVV runDq1(VV) }
cdbl InclusiveLeptoProduction::dq1_AA() const { initPartonicAA runDq1(AA) }
cdbl InclusiveLeptoProduction::dq1_VA() const { initPartonicVA runDq1(VA) }

#define runCq1(cur) this->ker->mode = Common::AbstractIntKer::Mode_cq1_##cur;\
    gsl_monte_function f;\
    f.params = this->ker;\
    f.f = gslpp::callFunctor2D<Inclusive::IntKer>;\
    return Common::int2D(&f);
cdbl InclusiveLeptoProduction::cq1_VV() const { initPartonicVV runCq1(VV) }
cdbl InclusiveLeptoProduction::cq1_AA() const { initPartonicAA runCq1(AA) }
cdbl InclusiveLeptoProduction::cq1_VA() const { initPartonicVA runCq1(VA) }

#define runCqBarF1(cur) this->ker->mode = Common::AbstractIntKer::Mode_cqBarF1_##cur;\
    gsl_monte_function f;\
    f.params = this->ker;\
    f.f = gslpp::callFunctor2D<Inclusive::IntKer>;\
    return Common::int2D(&f);
cdbl InclusiveLeptoProduction::cqBarF1_VV() const { initPartonicVV runCqBarF1(VV) }
cdbl InclusiveLeptoProduction::cqBarF1_AA() const { initPartonicAA runCqBarF1(AA) }
cdbl InclusiveLeptoProduction::cqBarF1_VA() const { initPartonicVA runCqBarF1(VA) }

#define initF checkQ2(this->ker->Q2)\
    checkXBjorken(this->ker->xBj)\
    checkLambdaQCD(this->ker->lambdaQCD)\
    if (0 == this->ker->pdf)\
        throw domain_error("needs PDF for hadronic structure function!");\
    if (0. != this->ker->muF2.cHQPairTransverseMomentum || 0. != this->ker->muR2.cHQPairTransverseMomentum)\
        throw domain_error("scales for inclusive computation may not depend on exclusive variable HQPairTransverseMomentum!");\
    if (this->ker->xBj >= this->ker->getZMax()) return 0.;

cdbl InclusiveLeptoProduction::F() const {
    initF
    this->ker->mode = Common::AbstractIntKer::Mode_F;
    gsl_monte_function f;
    f.params = this->ker;
    f.f = gslpp::callFunctor2D<Inclusive::IntKer>;
    return Common::int2D(&f);
}

cdbl InclusiveLeptoProduction::rundF_dHAQX() const {
    if (this->ker->flags.useNextToLeadingOrder) {
        gsl_monte_function f;
        f.params = this->ker;
        f.f = gslpp::callFunctor2D<Inclusive::IntKer>;
        return Common::int2D(&f);
    }
    gsl_function f;
    f.params = this->ker;
    f.function = gslpp::callFunctor<Inclusive::IntKer>;
    return Common::int1D(&f);
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