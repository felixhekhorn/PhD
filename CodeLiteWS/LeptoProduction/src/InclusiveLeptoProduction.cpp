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

cdbl InclusiveLeptoProduction::int1D() const {
    gsl_function f;
    f.params = this->ker;
    f.function = gslpp::callFunctor<Inclusive::IntKer>;
    return Common::int1D(&f);
}

cdbl InclusiveLeptoProduction::int2D() const {
    gsl_monte_function f;
    f.params = this->ker;
    f.f = gslpp::callFunctor2D<Inclusive::IntKer>;
    return Common::int2D(&f);
}

cdbl InclusiveLeptoProduction::int3D() const {
    gsl_monte_function f;
    f.params = this->ker;
    f.f = gslpp::callFunctor2D<Inclusive::IntKer>;
    return Common::int3D(&f);
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
        
// implement partonic coefficient functions with 1D integration
#define implement1DCoeffs(n) \
cdbl InclusiveLeptoProduction::n##_VV() const { initPartonicVV this->ker->mode = Common::AbstractIntKer::Mode_##n##_VV; return this->int1D(); }\
cdbl InclusiveLeptoProduction::n##_VA() const { initPartonicVA this->ker->mode = Common::AbstractIntKer::Mode_##n##_VA; return this->int1D(); }\
cdbl InclusiveLeptoProduction::n##_AA() const { initPartonicAA this->ker->mode = Common::AbstractIntKer::Mode_##n##_AA; return this->int1D(); }

// implement partonic coefficient functions with 2D integration
#define implement2DCoeffs(n) \
cdbl InclusiveLeptoProduction::n##_VV() const { initPartonicVV this->ker->mode = Common::AbstractIntKer::Mode_##n##_VV; return this->int2D(); }\
cdbl InclusiveLeptoProduction::n##_VA() const { initPartonicVA this->ker->mode = Common::AbstractIntKer::Mode_##n##_VA; return this->int2D(); }\
cdbl InclusiveLeptoProduction::n##_AA() const { initPartonicAA this->ker->mode = Common::AbstractIntKer::Mode_##n##_AA; return this->int2D(); }

implement1DCoeffs(cg0)
implement1DCoeffs(cgBarR1)

implement2DCoeffs(dq1)
implement2DCoeffs(cq1)
implement2DCoeffs(cg1)
implement2DCoeffs(cqBarF1)
implement2DCoeffs(cgBarF1)

#define checkMu if (0. != this->ker->muF2.cHQPairTransverseMomentum || 0. != this->ker->muR2.cHQPairTransverseMomentum)\
        throw domain_error("scales for inclusive computation may not depend on the exclusive variable HQPairTransverseMomentum!");

#define initF checkQ2(this->ker->Q2)\
    checkXBjorken(this->ker->xBj)\
    checkAlphaS(this->ker->aS)\
    if (0 == this->ker->pdf)\
        throw domain_error("needs PDF for hadronic structure function!");\
    checkMu\
    if (this->ker->xBj >= this->ker->getZMax()) return 0.;

cdbl InclusiveLeptoProduction::F() const {
    initF
    this->ker->mode = Common::AbstractIntKer::Mode_F;
    dbl r = dblNaN;
    if (this->ker->flags.useNextToLeadingOrder) {
        r = this->int3D();
    } else {
        r = this->int2D();
    }
    // unset integration variables
    this->ker->s = dblNaN;
    return r;
}

cdbl InclusiveLeptoProduction::rundF_dHAQX() const {
    dbl r = dblNaN;
    if (this->ker->flags.useNextToLeadingOrder) {
        r = this->int2D();
    } else {
        r = this->int1D();
    }
    // unset integration variables
    this->ker->s = dblNaN;
    return r;
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

cdbl InclusiveLeptoProduction::sigma() const {
    checkAlphaS(this->ker->aS)
    checkAlphaEM(this->ker->alphaEM)
    if (0 == this->ker->pdf)
        throw domain_error("needs PDF for leptonic cross section!");
    checkMu
    checkLeptonicS(this->ker->Sl)
    if (!isfinite(this->ker->Q2min) && !isfinite(this->ker->q2minHVQDIS))
        throw domain_error("needs cut on Q2 for leptonic cross section!");
    // kinematic phase space available for y?
    cdbl yBjMax = 1.;
    cdbl yBjMin = 4.*this->ker->m2 / this->ker->Sl;
    if (yBjMin >= yBjMax)
        return 0.;
    // kinematic phase space available for Q2?
    cdbl Q2max = this->ker->Sl - 4.*this->ker->m2;
    if (isfinite(this->ker->Q2min) && this->ker->Q2min >= Q2max)
        return 0.;
    else if (isfinite(this->ker->q2minHVQDIS)) {
        cdbl Q2min = this->ker->q2minHVQDIS * yBjMin*yBjMin/(1. - yBjMin)/(1. - yBjMin);
        if (Q2min >= Q2max)
            return 0.;
    }
    this->ker->mode = Common::AbstractIntKer::Mode_sigma;
    gsl_monte_function f;
    f.params = this->ker;
    dbl r = dblNaN;
    if (this->flags().useNextToLeadingOrder) {
        f.f = gslpp::callFunctor5D<Inclusive::IntKer>;
        r = Common::int5D(&f);
    } else {
        f.f = gslpp::callFunctor4D<Inclusive::IntKer>;
        r = Common::int4D(&f);
    }
    // unset integration variables
    this->ker->xBj = dblNaN;
    this->ker->Q2 = dblNaN;
    this->ker->s = dblNaN;
    return r;
}