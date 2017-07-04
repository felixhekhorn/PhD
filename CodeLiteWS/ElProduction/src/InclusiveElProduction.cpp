#include "InclusiveElProduction.h"

#include <boost/format.hpp>
#include <gsl/gsl_monte_vegas.h>
#include <gsl/gsl_integration.h>

#include "gslpp/gslpp.Functor.hpp"
#include "Common/Integration.h"

#include "Inclusive/ME/Born.h"
#include "Inclusive/ME/NLOq.h"
#include "Inclusive/ME/NLOg.h"

#include "Inclusive/IntKers/psKer.hpp"
#include "Inclusive/IntKers/PdfConvLO.hpp"
#include "Inclusive/IntKers/PdfConvNLOg.hpp"
#include "Inclusive/IntKers/PdfConvNLOq.hpp"
#include "Inclusive/IntKers/FKerAll.hpp"

using namespace Inclusive;

InclusiveElProduction::InclusiveElProduction(cdbl m2, cdbl q2, cdbl Delta, projT proj, uint nlf) : 
    AbstractElProduction(m2,q2,proj,nlf) {
    this->setDelta(Delta);
}

void InclusiveElProduction::setDelta(cdbl Delta) {
    if (Delta < 0.)
        throw domain_error("Delta has to be positive!");
    this->Delta = Delta;
}

void InclusiveElProduction::setPartonicS(cdbl s) {
    if (s < 4.*m2)
        throw domain_error("partonic cm-energy has to be larger than threshold 4m^2!");
    cdbl s4maxV = sqrt(s)*(sqrt(s)-sqrt(4.*m2));
    if (Delta > s4maxV)
        throw domain_error("Delta has to be smaller than s4_max!");
    this->sp = s - q2;
    this->hasPartonicS = true;
}

fPtr3dbl InclusiveElProduction::getCg0() const {
    switch(this->proj) {
        case G: return &cg0G;
        case L: return &cg0L;
        case P: return &cg0P;
        default: throw invalid_argument("unknown projection!");
    }
}

cdbl InclusiveElProduction::cg0() const {
    this->checkPartonic();
    fPtr3dbl cg0 = this->getCg0();
    return cg0(m2,q2,sp);
}

#define getter4C(n) fPtr4dbl InclusiveElProduction::getC##n() const {\
    switch(this->proj) {\
        case G: return &c##n##G;\
        case L: return &c##n##L;\
        case P: return &c##n##P;\
        default: throw invalid_argument("unknown projection!");\
    }\
}
getter4C(g1SV)
getter4C(g1SVDelta1)
getter4C(g1SVDelta2)
getter4C(gBarR1SV)
getter4C(gBarF1SV)
getter4C(gBarF1SVDelta1)

#define getter5(u,l) fPtr5dbl InclusiveElProduction::get##u() const {\
    switch(this->proj) {\
        case G: return &l##G;\
        case L: return &l##L;\
        case P: return &l##P;\
        default: throw invalid_argument("unknown projection!");\
    }\
}
getter5(Cg1H,cg1H)
getter5(CgBarF1H,cgBarF1H)

getter5(Cq1,cq1)
getter5(CqBarF1,cqBarF1)
getter5(Dq1,dq1)

cdbl InclusiveElProduction::cg1() const {
    this->checkPartonic();
    PsKerNLOg k(m2,q2,sp,Delta,this->getCg1SV(),this->getCg1SVDelta1(),this->getCg1SVDelta2(),this->getCg1H());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerNLOg>;
    f.params = &k;
    return Common::int2D(&f);
}

cdbl InclusiveElProduction::cgBarR1() const {
    this->checkPartonic();
    PsKerNLOgSV k(m2,q2,sp,this->getCgBarR1SV());
    gsl_function f;
    f.function = gslpp::callFunctor<PsKerNLOgSV>;
    f.params = &k;
    // take fermion loop into account!
    return Common::int1D(&f) - nlf*fermionLoopFactor*this->cg0();
}

cdbl InclusiveElProduction::cgBarF1() const {
    this->checkPartonic();
    PsKerNLOg k(m2,q2,sp,Delta,this->getCgBarF1SV(),this->getCgBarF1SVDelta1(),0,this->getCgBarF1H());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerNLOg>;
    f.params = &k;
    // take fermion loop into account!
    return Common::int2D(&f) + nlf*fermionLoopFactor*this->cg0();
}

cdbl InclusiveElProduction::cgBar1() const {
    return this->cgBarF1()+this->cgBarR1();
}

cdbl InclusiveElProduction::cq1() const {
    this->checkPartonic();
    PsKerNLOq k(m2,q2,sp,this->getCq1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerNLOq>;
    f.params = &k;
    return Common::int2D(&f);
}

cdbl InclusiveElProduction::cqBarF1() const {
    this->checkPartonic();
    PsKerNLOq k(m2,q2,sp,this->getCqBarF1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerNLOq>;
    f.params = &k;
    return Common::int2D(&f);
}

cdbl InclusiveElProduction::dq1() const {
    this->checkPartonic();
    PsKerNLOq k(m2,q2,sp,this->getDq1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerNLOq>;
    f.params = &k;
    return Common::int2D(&f);
}

cdbl InclusiveElProduction::getScale(const Common::DynamicScaleFactors& factors, cdbl HAQTransverseMomentum) const {
    if (0. != factors.cHQPairTransverseMomentum)
        throw domain_error("scale for inclusive computation may not depend on exclusive variable HQPairTransverseMomentum!");
    cdbl mu2 = factors.cM2 * this->m2 + factors.cQ2 * this->q2 + factors.cHAQTransverseMomentum * HAQTransverseMomentum*HAQTransverseMomentum;
    if (!isfinite(mu2) || mu2 <= 0.)
        throw domain_error((boost::format("all scales have to be finite and positive! (%e = %e*%e + %e*%e + %e*%e**2)")%mu2%factors.cM2%m2%factors.cQ2%q2%factors.cHAQTransverseMomentum%HAQTransverseMomentum).str());
    return mu2;
}

cdbl InclusiveElProduction::getAlphaS(const uint orderFlag, cdbl HAQTransverseMomentum) const {
    this->aS->setOrderQCD(1 + (orderFlag == OrderFlag_LO ? 0 : 1 ));
    return this->aS->alphasQ2(this->getMuR2(HAQTransverseMomentum));
}

cdbl InclusiveElProduction::F(const uint orderFlag, const uint channelFlag) {
    this->checkFlags(orderFlag, channelFlag);
    dbl r = 0.;
    if ((OrderFlag_LO == (orderFlag & OrderFlag_LO)) && (ChannelFlag_Gluon == (channelFlag & ChannelFlag_Gluon))) // LOg
        r += this->Fg0();
    if (OrderFlag_NLOonly == (orderFlag & OrderFlag_NLOonly)){ // NLO
        if (ChannelFlag_Gluon == (channelFlag & ChannelFlag_Gluon))
            r += this->Fg1();
        if (ChannelFlag_Quark == (channelFlag & ChannelFlag_Quark))
            r += this->Fq1();
    }
    return r;
}

cdbl InclusiveElProduction::Fg0() const {
    this->checkHadronic();
    /*** @todo relax condition? i.e. shift evaluation of alphaS down? */
    if (0. != this->muF2.cHAQTransverseMomentum && 0. != this->muR2.cHAQTransverseMomentum)
        throw domain_error("scale for full inclusive computation may not depend on HAQTransverseMomentum!");
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvLO k(m2, q2, bjorkenX, pdf, this->getMuF2(0.), this->getCg0());
    gsl_function f;
    f.function = gslpp::callFunctor<PdfConvLO>;
    f.params = &k;
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl n = this->getAlphaS(OrderFlag_LO,0.) * (-q2)/(4.*M_PI*M_PI);
    return n * eH*eH * Common::int1D(&f);
}

cdbl InclusiveElProduction::Fg1() const {
    this->checkHadronic();
    /*** @todo relax condition? i.e. shift evaluation of alphaS down? */
    if (0. != this->muF2.cHAQTransverseMomentum && 0. != this->muR2.cHAQTransverseMomentum)
        throw domain_error("scale for full inclusive computation may not depend on HAQTransverseMomentum!");
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvNLOg k(m2,q2,bjorkenX,pdf,this->getMuF2(0.),this->getMuR2(0.),nlf,Delta);
    k.setBpQED(this->getBpQED());
    k.setCg1(this->getCg1SV(),this->getCg1SVDelta1(),this->getCg1SVDelta2(),this->getCg1H());
    k.setCgBarF1(this->getCgBarF1SV(),this->getCgBarF1SVDelta1(),this->getCgBarF1H());
    k.setCgBarR1(this->getCgBarR1SV());
    gsl_monte_function f;
    f.f = gslpp::callFunctor3D<PdfConvNLOg>;
    f.params = &k;
    cdbl Fg1 = Common::int3D(&f);
    // multiply norm
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl alphaS = this->getAlphaS(OrderFlag_NLOonly,0.);
    cdbl n = alphaS*alphaS * (-q2)/(M_PI) * eH*eH;
    return n*Fg1;
}

cdbl InclusiveElProduction::Fq1() const {
    this->checkHadronic();
    /*** @todo relax condition? i.e. shift evaluation of alphaS down? */
    if (0. != this->muF2.cHAQTransverseMomentum && 0. != this->muR2.cHAQTransverseMomentum)
        throw domain_error("scale for full inclusive computation may not depend on HAQTransverseMomentum!");
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    // helper
    PdfConvNLOq k(m2,q2,bjorkenX,pdf,this->getMuF2(0.),nlf,this->getCq1(),this->getCqBarF1(),this->getDq1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor3D<PdfConvNLOq>;
    f.params = &k;
    cdbl Fq1 = Common::int3D(&f);
    // multiply norm
    cdbl alphaS = this->getAlphaS(OrderFlag_NLOonly,0.);
    cdbl n = alphaS*alphaS * (-q2)/(M_PI);
    return n*Fq1;
}

template <class PdfConvLO_dHAQX, class PdfConvNLOg_dHAQX, class PdfConvNLOq_dHAQX, class FKerAll_dHAQX>
cdbl InclusiveElProduction::dF_dHAQX(cdbl v, const uint orderFlag, const uint channelFlag, cdbl pt) const {
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvLO_dHAQX LO(m2, q2, bjorkenX, pdf, this->getMuF2(pt), this->getBpQED(), v);
    PdfConvNLOg_dHAQX NLOg(m2, q2, bjorkenX, pdf, this->getMuF2(pt), this->getMuR2(pt), nlf, this->Delta, v);
    NLOg.setBpQED(this->getBpQED());
    NLOg.setCg1(this->getCg1SV(),this->getCg1SVDelta1(),this->getCg1SVDelta2(),this->getCg1H());
    NLOg.setCgBarF1(this->getCgBarF1SV(),this->getCgBarF1SVDelta1(),this->getCgBarF1H());
    NLOg.setCgBarR1(this->getCgBarR1SV());
    PdfConvNLOq_dHAQX NLOq(m2, q2, bjorkenX, pdf, this->getMuF2(pt), nlf, this->getCq1(), this->getCqBarF1(), this->getDq1(), v);
    
    FKerAll_dHAQX k(m2, q2, bjorkenX, nlf, this->getAlphaS(orderFlag,pt), v);
    k.setKers(&LO,&NLOg,&NLOq);
    k.setFlags(orderFlag, channelFlag);
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<FKerAll_dHAQX>;
    f.params = &k;
    return Common::int2D(&f);
}

cdbl InclusiveElProduction::dF_dHAQTransverseMomentum(cdbl pt, const uint orderFlag, const uint channelFlag) const {
    this->checkFlags(orderFlag, channelFlag);
    this->checkHadronic();
    if (pt < 0.)
        throw invalid_argument((boost::format("pt has to be positive! (pt = %e)")%pt).str());
    if (pt >= this->getHAQTransverseMomentumMax())
        return 0.;
    return this->dF_dHAQX<PdfConvLO_dHAQTransverseMomentum, PdfConvNLOg_dHAQTransverseMomentum,
                        PdfConvNLOq_dHAQTransverseMomentum, FKerAll_dHAQTransverseMomentum>(pt,orderFlag,channelFlag,pt);
}

cdbl InclusiveElProduction::dFg0_dHAQTransverseMomentum(cdbl pt) const {
    this->checkHadronic();
    if (pt < 0.)
        throw invalid_argument((boost::format("pt has to be positive! (pt = %e)")%pt).str());
    // threshold cut off
    if (this->bjorkenX >= this->zMax || pt >= this->getHAQTransverseMomentumMax())
        return 0.;
    PdfConvLO_dHAQTransverseMomentum k(m2, q2, bjorkenX, pdf, this->getMuF2(pt), this->getBpQED(), pt);
    gsl_function f;
    f.function = gslpp::callFunctor<PdfConvLO_dHAQTransverseMomentum>;
    f.params = &k;
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl alphaS = this->getAlphaS(OrderFlag_LO,pt);
    cdbl n = alphaS * (-q2)/(4.*M_PI*M_PI);
    return n * eH*eH * Common::int1D(&f);
}

cdbl InclusiveElProduction::dFg1_dHAQTransverseMomentum(cdbl pt) const {
    this->checkHadronic();
    if (pt < 0.)
        throw invalid_argument((boost::format("pt has to be positive! (pt = %e)")%pt).str());
    // threshold cut off
    if (this->bjorkenX >= this->zMax || pt >= this->getHAQTransverseMomentumMax())
        return 0.;
    PdfConvNLOg_dHAQTransverseMomentum k(m2, q2, bjorkenX, pdf, this->getMuF2(pt), this->getMuR2(pt), nlf, this->Delta, pt);
    k.setBpQED(this->getBpQED());
    k.setCg1(this->getCg1SV(),this->getCg1SVDelta1(),this->getCg1SVDelta2(),this->getCg1H());
    k.setCgBarF1(this->getCgBarF1SV(),this->getCgBarF1SVDelta1(),this->getCgBarF1H());
    k.setCgBarR1(this->getCgBarR1SV());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PdfConvNLOg_dHAQTransverseMomentum>;
    f.params = &k;
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl alphaS = this->getAlphaS(OrderFlag_NLOonly,pt);
    cdbl n = alphaS*alphaS * (-q2)/(M_PI) * eH*eH;
    return n * Common::int2D(&f);
}

cdbl InclusiveElProduction::dFq1_dHAQTransverseMomentum(cdbl pt) const {
    this->checkHadronic();
    if (pt < 0.)
        throw invalid_argument((boost::format("pt has to be positive! (pt = %e)")%pt).str());
    // threshold cut off
    if (this->bjorkenX >= this->zMax || pt >= this->getHAQTransverseMomentumMax())
        return 0.;
    PdfConvNLOq_dHAQTransverseMomentum k(m2, q2, bjorkenX, pdf, this->getMuF2(pt), nlf, this->getCq1(), this->getCqBarF1(), this->getDq1(), pt);
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PdfConvNLOq_dHAQTransverseMomentum>;
    f.params = &k;
    cdbl alphaS = this->getAlphaS(OrderFlag_NLOonly,pt);
    cdbl n = alphaS*alphaS * (-q2)/(M_PI);
    return n * Common::int2D(&f);
}

cdbl InclusiveElProduction::dF_dHAQTransverseMomentumScaling(cdbl xt, const uint orderFlag, const uint channelFlag) const {
    if (xt < 0. || xt > 1)
        throw invalid_argument((boost::format("xt has to be within [0,1]! (xt = %e)")%xt).str());
    cdbl pt_max = this->getHAQTransverseMomentumMax();
    return pt_max*this->dF_dHAQTransverseMomentum(xt*pt_max, orderFlag, channelFlag);
}

cdbl InclusiveElProduction::dFg0_dHAQTransverseMomentumScaling(cdbl xt) const {
    if (xt < 0. || xt > 1)
        throw invalid_argument((boost::format("xt has to be within [0,1]! (xt = %e)")%xt).str());
    cdbl pt_max = this->getHAQTransverseMomentumMax();
    return pt_max*this->dFg0_dHAQTransverseMomentum(xt*pt_max);
}

cdbl InclusiveElProduction::dFg1_dHAQTransverseMomentumScaling(cdbl xt) const {
    if (xt < 0. || xt > 1)
        throw invalid_argument((boost::format("xt has to be within [0,1]! (xt = %e)")%xt).str());
    cdbl pt_max = this->getHAQTransverseMomentumMax();
    return pt_max*this->dFg1_dHAQTransverseMomentum(xt*pt_max);
}

cdbl InclusiveElProduction::dFq1_dHAQTransverseMomentumScaling(cdbl xt) const {
    if (xt < 0. || xt > 1)
        throw invalid_argument((boost::format("xt has to be within [0,1]! (xt = %e)")%xt).str());
    cdbl pt_max = this->getHAQTransverseMomentumMax();
    return pt_max*this->dFq1_dHAQTransverseMomentum(xt*pt_max);
}

cdbl InclusiveElProduction::dF_dHAQRapidity(cdbl y, const uint orderFlag, const uint channelFlag) const {
    this->checkFlags(orderFlag, channelFlag);
    this->checkHadronic();
    /** @todo relax condition? i.e. shift evaluation of alphaS down? */
    if (0. != this->muF2.cHAQTransverseMomentum && 0. != this->muR2.cHAQTransverseMomentum)
        throw domain_error("scale for dF_dHAQRapidity may not depend on HAQTransverseMomentum!");
    cdbl y0 = this->getHAQRapidityMax();
    if (y >= y0 || y <= -y0)
        return 0.;
    return this->dF_dHAQX<PdfConvLO_dHAQRapidity, PdfConvNLOg_dHAQRapidity,
                        PdfConvNLOq_dHAQRapidity, FKerAll_dHAQRapidity>(y,orderFlag,channelFlag,0.);
}

cdbl InclusiveElProduction::dFg0_dHAQRapidity(cdbl y) const {
    this->checkHadronic();
    /** @todo relax condition? i.e. shift evaluation of alphaS down? */
    if (0. != this->muF2.cHAQTransverseMomentum && 0. != this->muR2.cHAQTransverseMomentum)
        throw domain_error("scale for dFg0_dHAQRapidity may not depend on HAQTransverseMomentum!");
    // threshold cut off
    cdbl y0 = this->getHAQRapidityMax();
    if (this->bjorkenX >= this->zMax || y >= y0 || y <= -y0)
        return 0.;
    PdfConvLO_dHAQRapidity k(m2, q2, bjorkenX, pdf, this->getMuF2(0.), this->getBpQED(), y);
    gsl_function f;
    f.function = gslpp::callFunctor<PdfConvLO_dHAQRapidity>;
    f.params = &k;
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl alphaS = this->getAlphaS(OrderFlag_LO,0.);
    cdbl n = alphaS * (-q2)/(4.*M_PI*M_PI);
    return n * eH*eH * Common::int1D(&f);
}

cdbl InclusiveElProduction::dFg1_dHAQRapidity(cdbl y) const {
    this->checkHadronic();
    /** @todo relax condition? i.e. shift evaluation of alphaS down? */
    if (0. != this->muF2.cHAQTransverseMomentum && 0. != this->muR2.cHAQTransverseMomentum)
        throw domain_error("scale for dFg1_dHAQRapidity may not depend on HAQTransverseMomentum!");
    // threshold cut off
    cdbl y0 = this->getHAQRapidityMax();
    if (this->bjorkenX >= this->zMax || y >= y0 || y <= -y0)
        return 0.;
    PdfConvNLOg_dHAQRapidity k(m2, q2, bjorkenX, pdf, this->getMuF2(0.), this->getMuR2(0.), nlf, this->Delta, y);
    k.setBpQED(this->getBpQED());
    k.setCg1(this->getCg1SV(),this->getCg1SVDelta1(),this->getCg1SVDelta2(),this->getCg1H());
    k.setCgBarF1(this->getCgBarF1SV(),this->getCgBarF1SVDelta1(),this->getCgBarF1H());
    k.setCgBarR1(this->getCgBarR1SV());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PdfConvNLOg_dHAQRapidity>;
    f.params = &k;
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl alphaS = this->getAlphaS(OrderFlag_NLOonly,0.);
    cdbl n = alphaS*alphaS * (-q2)/(M_PI) * eH*eH;
    return n * Common::int2D(&f);
}

cdbl InclusiveElProduction::dFq1_dHAQRapidity(cdbl y) const {
    this->checkHadronic();
    /** @todo relax condition? i.e. shift evaluation of alphaS down? */
    if (0. != this->muF2.cHAQTransverseMomentum && 0. != this->muR2.cHAQTransverseMomentum)
        throw domain_error("scale for dFq1_dHAQRapidity may not depend on HAQTransverseMomentum!");
    // threshold cut off
    cdbl y0 = this->getHAQRapidityMax();
    if (this->bjorkenX >= this->zMax || y >= y0 || y <= -y0)
        return 0.;
    PdfConvNLOq_dHAQRapidity k(m2, q2, bjorkenX, pdf, this->getMuF2(0.), nlf, this->getCq1(), this->getCqBarF1(), this->getDq1(), y);
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PdfConvNLOq_dHAQRapidity>;
    f.params = &k;
    cdbl alphaS = this->getAlphaS(OrderFlag_NLOonly,0.);
    cdbl n = alphaS*alphaS * (-q2)/(M_PI);
    return n * Common::int2D(&f);
}

cdbl InclusiveElProduction::dF_dHAQFeynmanX(cdbl xF, const uint orderFlag, const uint channelFlag) const {
    this->checkFlags(orderFlag, channelFlag);
    this->checkHadronic();
    if (xF < -1. || xF > 1)
        throw invalid_argument((boost::format("x_F has to be within [-1,1]! (x_F = %e)")%xF).str());
    /** @todo relax condition? i.e. shift evaluation of alphaS down? */
    if (0. != this->muF2.cHAQTransverseMomentum && 0. != this->muR2.cHAQTransverseMomentum)
        throw domain_error("scale for dF_dHAQRapidity may not depend on HAQTransverseMomentum!");
    return this->dF_dHAQX<PdfConvLO_dHAQFeynmanX, PdfConvNLOg_dHAQFeynmanX,
                        PdfConvNLOq_dHAQFeynmanX, FKerAll_dHAQFeynmanX>(xF,orderFlag,channelFlag,0.);
}

cdbl InclusiveElProduction::dFg0_dHAQFeynmanX(cdbl xF) const {
    this->checkHadronic();
    if (xF < -1. || xF > 1)
        throw invalid_argument((boost::format("x_F has to be within [-1,1]! (x_F = %e)")%xF).str());
    /** @todo relax condition? i.e. shift evaluation of alphaS down? */
    if (0. != this->muF2.cHAQTransverseMomentum && 0. != this->muR2.cHAQTransverseMomentum)
        throw domain_error("scale for dFg0_dHAQFeynmanX may not depend on HAQTransverseMomentum!");
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvLO_dHAQFeynmanX k(m2, q2, bjorkenX, pdf, this->getMuF2(0.), this->getBpQED(), xF);
    gsl_function f;
    f.function = gslpp::callFunctor<PdfConvLO_dHAQFeynmanX>;
    f.params = &k;
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl alphaS = this->getAlphaS(OrderFlag_LO,0.);
    cdbl n = alphaS * (-q2)/(4.*M_PI*M_PI);
    return n * eH*eH * Common::int1D(&f);
}

cdbl InclusiveElProduction::dFg1_dHAQFeynmanX(cdbl xF) const {
    this->checkHadronic();
    if (xF < -1. || xF > 1)
        throw invalid_argument((boost::format("x_F has to be within [-1,1]! (x_F = %e)")%xF).str());
    /** @todo relax condition? i.e. shift evaluation of alphaS down? */
    if (0. != this->muF2.cHAQTransverseMomentum && 0. != this->muR2.cHAQTransverseMomentum)
        throw domain_error("scale for dFg1_dHAQRapidity may not depend on HAQTransverseMomentum!");
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvNLOg_dHAQFeynmanX k(m2, q2, bjorkenX, pdf, this->getMuF2(0.), this->getMuR2(0.), nlf, this->Delta, xF);
    k.setBpQED(this->getBpQED());
    k.setCg1(this->getCg1SV(),this->getCg1SVDelta1(),this->getCg1SVDelta2(),this->getCg1H());
    k.setCgBarF1(this->getCgBarF1SV(),this->getCgBarF1SVDelta1(),this->getCgBarF1H());
    k.setCgBarR1(this->getCgBarR1SV());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PdfConvNLOg_dHAQFeynmanX>;
    f.params = &k;
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl alphaS = this->getAlphaS(OrderFlag_NLOonly,0.);
    cdbl n = alphaS*alphaS * (-q2)/(M_PI) * eH*eH;
    return n * Common::int2D(&f);
}

cdbl InclusiveElProduction::dFq1_dHAQFeynmanX(cdbl xF) const {
    this->checkHadronic();
    if (xF < -1. || xF > 1)
        throw invalid_argument((boost::format("x_F has to be within [-1,1]! (x_F = %e)")%xF).str());
    /** @todo relax condition? i.e. shift evaluation of alphaS down? */
    if (0. != this->muF2.cHAQTransverseMomentum && 0. != this->muR2.cHAQTransverseMomentum)
        throw domain_error("scale for dFq1_dHAQRapidity may not depend on HAQTransverseMomentum!");
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvNLOq_dHAQFeynmanX k(m2, q2, bjorkenX, pdf, this->getMuF2(0.), nlf, this->getCq1(), this->getCqBarF1(), this->getDq1(), xF);
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PdfConvNLOq_dHAQFeynmanX>;
    f.params = &k;
    cdbl alphaS = this->getAlphaS(OrderFlag_NLOonly,0.);
    cdbl n = alphaS*alphaS * (-q2)/(M_PI);
    return n * Common::int2D(&f);
}