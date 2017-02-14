#include "InclusiveElProduction.h"

#include <gsl/gsl_monte_vegas.h>
#include <gsl/gsl_integration.h>
#include "gslpp/gslpp.Functor.hpp"
#include "Integration.h"

#include "Inclusive/ME/Born.h"
#include "Inclusive/ME/NLOq.h"
#include "Inclusive/ME/NLOg.h"

#include "Inclusive/IntKers/psKer.hpp"
#include "Inclusive/IntKers/PdfConvLO.hpp"
#include "Inclusive/IntKers/PdfConvNLOg.hpp"
#include "Inclusive/IntKers/PdfConvNLOq.hpp"

InclusiveElProduction::InclusiveElProduction(dbl m2, dbl q2, dbl Delta, projT proj, uint nlf) : 
    AbstractElProduction(m2,q2,proj,nlf) {
    this->setDelta(Delta);
}

void InclusiveElProduction::setDelta(dbl Delta) {
    if (Delta < 0.)
        throw domain_error("Delta has to be positive!");
    this->Delta = Delta;
}

void InclusiveElProduction::setPartonicS(dbl s) {
    if (s < 4.*m2)
        throw domain_error("partonic cm-energy has to be larger than threshold 4m^2!");
    dbl s4maxV = s*(1.-Sqrt(4.*m2/s));
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

dbl InclusiveElProduction::cg0() const {
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

dbl InclusiveElProduction::cg1() const {
    this->checkPartonic();
    PsKerNLOg k(m2,q2,sp,Delta,this->getCg1SV(),this->getCg1SVDelta1(),this->getCg1SVDelta2(),this->getCg1H());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerNLOg>;
    f.params = &k;
    return int2D(&f);
}

dbl InclusiveElProduction::cgBarR1() const {
    this->checkPartonic();
    PsKerNLOgSV k(m2,q2,sp,this->getCgBarR1SV());
    gsl_function f;
    f.function = gslpp::callFunctor<PsKerNLOgSV>;
    f.params = &k;
    // take fermion loop into account!
    return int1D(&f) - nlf*fermionLoopFactor*this->cg0();
}

dbl InclusiveElProduction::cgBarF1() const {
    this->checkPartonic();
    PsKerNLOg k(m2,q2,sp,Delta,this->getCgBarF1SV(),this->getCgBarF1SVDelta1(),0,this->getCgBarF1H());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerNLOg>;
    f.params = &k;
    // take fermion loop into account!
    return int2D(&f) + nlf*fermionLoopFactor*this->cg0();
}

dbl InclusiveElProduction::cgBar1() const {
    return this->cgBarF1()+this->cgBarR1();
}

dbl InclusiveElProduction::cq1() const {
    this->checkPartonic();
    PsKerNLOq k(m2,q2,sp,this->getCq1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerNLOq>;
    f.params = &k;
    return int2D(&f);
}

dbl InclusiveElProduction::cqBarF1() const {
    this->checkPartonic();
    PsKerNLOq k(m2,q2,sp,this->getCqBarF1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerNLOq>;
    f.params = &k;
    return int2D(&f);
}

dbl InclusiveElProduction::dq1() const {
    this->checkPartonic();
    PsKerNLOq k(m2,q2,sp,this->getDq1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor2D<PsKerNLOq>;
    f.params = &k;
    return int2D(&f);
}

dbl InclusiveElProduction::Fg0() const {
    this->checkHadronic();
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvLO k(m2, q2, bjorkenX, pdf, muF2, this->getCg0());
    gsl_function f;
    f.function = gslpp::callFunctor<PdfConvLO>;
    f.params = &k;
    dbl eH = getElectricCharge(this->nlf + 1);
    dbl n = alphaS/m2 * (-q2)/(4.*M_PI*M_PI) * eH*eH;
    return n*int1D(&f);
}

dbl InclusiveElProduction::Fg1() const {
    this->checkHadronic();
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvNLOg k(m2,q2,bjorkenX,pdf,muF2,muR2,nlf,Delta);
    k.setCg1(this->getCg1SV(),this->getCg1SVDelta1(),this->getCg1SVDelta2(),this->getCg1H());
    k.setCgBarF1(this->getCgBarF1SV(),this->getCgBarF1SVDelta1(),this->getCgBarF1H());
    k.setCgBarR1(this->getCgBarR1SV());
    k.setCg0(this->getCg0());
    gsl_monte_function f;
    f.f = gslpp::callFunctor3D<PdfConvNLOg>;
    f.params = &k;
    dbl Fg1 = int3D(&f);
    // multiply norm
    dbl eH = getElectricCharge(this->nlf + 1);
    dbl n = alphaS*alphaS/m2 * (-q2)/(M_PI) * eH*eH;
    return n*Fg1;
}

dbl InclusiveElProduction::Fq1() const {
    this->checkHadronic();
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    // helper
    PdfConvNLOq k(m2,q2,bjorkenX,pdf,muF2,nlf,this->getCq1(),this->getCqBarF1(),this->getDq1());
    gsl_monte_function f;
    f.f = gslpp::callFunctor3D<PdfConvNLOq>;
    f.params = &k;
    dbl Fq1 = int3D(&f);
    // multiply norm
    dbl n = alphaS*alphaS/m2 * (-q2)/(M_PI);
    return n*Fq1;
}