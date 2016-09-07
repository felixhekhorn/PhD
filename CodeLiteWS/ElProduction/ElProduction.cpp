#include "ElProduction.h"

#include <gsl/gsl_monte_vegas.h>
#include <gsl/gsl_integration.h>
#include "gsl++.hpp"

#include "Integration.h"
#include "src/ME/Born.h"
#include "src/ME/NLOq.h"
#include "src/ME/NLOg.h"
#include "psKer.hpp"

#include "src/PdfConvLO.hpp"
#include "src/PdfConv/PdfConvNLOgSV.hpp"
#include "src/PdfConv/PdfConvNLOgH.hpp"
#include "src/PdfConv/PdfConvNLOg.hpp"
#include "src/PdfConvNLOq.hpp"

ElProduction::ElProduction(dbl m2, dbl q2, dbl Delta, projT proj, uint nlf) : 
    m2(m2), q2(0.), sp(0.), hasPartonicS(false), Delta(Delta), proj(proj), nlf(nlf),
    pdf(0), muR2(0.), hasMuR2(false), muF2(0.), hasMuF2(false), bjorkenX(0.), hasBjorkenX(false),
    alphaS(0.), hasAlphaS(false), zMax(0.) {
    this->setQ2(q2);
    if (nlf < 3 || nlf > 5)
        throw domain_error("number of light flavours has to be between 3 and 5!");
}

ElProduction::~ElProduction() {
    if (0 != this->pdf)
        delete (this->pdf);
}

void ElProduction::setEta(dbl eta) {
    if (eta < 0)
        throw domain_error("partonic eta has to be larger than 0!");
    this->setPartonicS(4.*m2*(1.+eta));
}

void ElProduction::setPartonicS(dbl s) {
    if (s < 4.*m2)
        throw domain_error("partonic cm-energy has to be larger than threshold 4m^2!");
    dbl s4maxV = s*(1.-Sqrt(4.*m2/s));
    if (Delta > s4maxV)
        throw domain_error("Delta has to be smaller than s4_max!");
    this->sp = s - q2;
    this->hasPartonicS = true;
}

void ElProduction::setQ2(dbl q2) {
    if (q2 >= 0.)
        throw domain_error("virtuality q2 has to be negative! (this is NOT Q2!)");
    this->q2 = q2;
    this->zMax = -q2/(4.*m2  - q2);
}

void ElProduction::checkPartonic() const {
    if (!this->hasPartonicS)
        throw invalid_argument("no partonic center of mass energy given!");
}

fPtr3dbl ElProduction::getCg0() const {
    switch(this->proj) {
        case G: return &cg0G;
        case L: return &cg0L;
        case P: return &cg0P;
        default: throw invalid_argument("unknown projection!");
    }
}

dbl ElProduction::cg0() const {
    this->checkPartonic();
    fPtr3dbl cg0 = this->getCg0();
    return cg0(m2,q2,sp);
}

#define getter(u,l) fPtr5dbl ElProduction::get##u() const {\
    switch(this->proj) {\
        case G: return &l##G;\
        case L: return &l##L;\
        case P: return &l##P;\
        default: throw invalid_argument("unknown projection!");\
    }\
}

getter(Cg1SV,cg1SV)
getter(Cg1H,cg1H)
getter(CgBarF1SV,cgBarF1SV)
getter(CgBarF1H,cgBarF1H)
getter(CgBarR1SV,cgBarR1SV)

dbl ElProduction::cg1() const {
    this->checkPartonic();
    psKerSV kSV(m2,q2,sp,Delta,this->getCg1SV());
    gsl_function fSV;
    fSV.function = gsl::callFunctor<psKerSV>;
    fSV.params = &kSV;
    psKerH kH(m2,q2,sp,Delta,this->getCg1H());
    gsl_monte_function fH;
    fH.f = gsl::callFunctor2D<psKerH>;
    fH.params = &kH;
    return int2D(&fH)+int1D(&fSV);
}

dbl ElProduction::cgBarR1() const {
    this->checkPartonic();
    psKerSV k(m2,q2,sp,Delta,this->getCgBarR1SV());
    gsl_function f;
    f.function = gsl::callFunctor<psKerSV>;
    f.params = &k;
    // take fermion loop into account!
    return int1D(&f)+nlf*fermionLoopFactor*this->cg0();
}

dbl ElProduction::cgBarF1() const {
    this->checkPartonic();
    psKerSV kSV(m2,q2,sp,Delta,this->getCgBarF1SV());
    gsl_function fSV;
    fSV.function = gsl::callFunctor<psKerSV>;
    fSV.params = &kSV;
    psKerH kH(m2,q2,sp,Delta,this->getCgBarF1H());
    gsl_monte_function fH;
    fH.f = gsl::callFunctor2D<psKerH>;
    fH.params = &kH;
    // given by mass factorization
    return int2D(&fH)+int1D(&fSV)-nlf*fermionLoopFactor*this->cg0();
}

getter(Cq1,cq1)
getter(CqBarF1,cqBarF1)
getter(Dq1,dq1)

dbl ElProduction::cq1() const {
    this->checkPartonic();
    psKerA k(m2,q2,sp,this->getCq1());
    gsl_monte_function f;
    f.f = gsl::callFunctor2D<psKerA>;
    f.params = &k;
    return int2D(&f);
}

dbl ElProduction::cqBarF1() const {
    this->checkPartonic();
    psKerA k(m2,q2,sp,this->getCqBarF1());
    gsl_monte_function f;
    f.f = gsl::callFunctor2D<psKerA>;
    f.params = &k;
    return int2D(&f);
}

dbl ElProduction::dq1() const {
    this->checkPartonic();
    psKerA k(m2,q2,sp,this->getDq1());
    gsl_monte_function f;
    f.f = gsl::callFunctor2D<psKerA>;
    f.params = &k;
    return int2D(&f);
}

void ElProduction::setPdf(str name, int member) {
    // suppress log message
    //int v = LHAPDF::verbosity();
    //LHAPDF::setVerbosity(0);
    this->pdf = LHAPDF::mkPDF(name,member);
    //LHAPDF::setVerbosity(v);
}

/*void ElProduction::setPdf(str nmem) {
    // suppress log message
    int v = LHAPDF::verbosity();
    LHAPDF::setVerbosity(0);
    this->pdf = LHAPDF::mkPDF(nmem);
    LHAPDF::setVerbosity(v);
}*/
    
void ElProduction::setMuR2(dbl muR2) {
    if (muR2 <= 0.)
        throw domain_error("renormalisation scale has to be positive!");
    this->muR2 = muR2;
    this->hasMuR2 = true;
}
    
void ElProduction::setMuF2(dbl muF2) {
    if (muF2 <= 0.)
        throw domain_error("factorisation scale has to be positive!");
    this->muF2 = muF2;
    this->hasMuF2 = true;
}

void ElProduction::setMu2(dbl mu2) {
    this->setMuF2(mu2);
    this->setMuR2(mu2);
}

void ElProduction::setAlphaS(dbl alphaS) {
    if (alphaS <= 0.)
        throw domain_error("strong coupling has to be positive!");
    this->alphaS = alphaS;
    this->hasAlphaS = true;
}
    
void ElProduction::setBjorkenX(dbl bjorkenX) {
    if (bjorkenX < 0. || bjorkenX > 1.)
        throw domain_error("Bjorken x has to be between 0 and 1!");
    this->bjorkenX = bjorkenX;
    this->hasBjorkenX = true;
}

void ElProduction::checkHardonic() const {
    if (0 == this->pdf)
        throw invalid_argument("no PDF given!");
    if (!this->hasMuR2)
        throw invalid_argument("no renormalisation scale given!");
    if (!this->hasMuF2)
        throw invalid_argument("no factorisation scale given!");
    if (!this->hasBjorkenX)
        throw invalid_argument("no Bjorken x given!");
    if (!this->hasAlphaS)
        throw invalid_argument("no strong coupling given!");
    if (!this->pdf->inRangeQ2(this->muF2))
        throw invalid_argument("PDF can't be evaluated at mu_F^2!");
}

dbl ElProduction::Fg0() const {
    this->checkHardonic();
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    PdfConvLO k(m2, q2, bjorkenX, pdf, muF2, this->getCg0());
    gsl_function f;
    f.function = gsl::callFunctor<PdfConvLO>;
    f.params = &k;
    dbl eH = getElectricCharge(this->nlf + 1);
    dbl n = alphaS/m2 * (-q2)/(4.*M_PI*M_PI) * eH*eH;
    return n*int1D(&f);
}

dbl ElProduction::Fg1() const {
    this->checkHardonic();
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
/*
    // compute S+V
    #define runSV(src,target) {\
        fPtr5dbl g = this->get##src();\
        PdfConvNLOgSV k(m2,q2,bjorkenX,pdf,muF2,Delta,g);\
        gsl_monte_function f;\
        f.f = gsl::callFunctor2D<PdfConvNLOgSV>;\
        f.params = &k;\
        target = int2D(&f);\
    }
    dbl cg1SV = 0.,cgBarF1SV = 0.,cgBarR1SV = 0.;
    runSV(Cg1SV,cg1SV)
    runSV(CgBarF1SV,cgBarF1SV)
    runSV(CgBarR1SV,cgBarR1SV)
    //printf("SV: %e\t%e\t%e\n",cg1SV,cgBarF1SV,cgBarR1SV);
    
    // compute H
    #define runH(src,target) {\
        fPtr5dbl g = this->get##src();\
        PdfConvNLOgH k(m2,q2,bjorkenX,pdf,muF2,Delta,g);\
        gsl_monte_function f;\
        f.f = gsl::callFunctor3D<PdfConvNLOgH>;\
        f.params = &k;\
        target = int3D(&f);\
    }
    dbl cg1H = 0.,cgBarF1H = 0.;
    runH(Cg1H,cg1H)
    runH(CgBarF1H,cgBarF1H)
    //printf("H: %e\t%e\n",cg1H,cgBarF1H);
    
    // compute fermion loop
    dbl Fg0 = this->Fg0();
    //printf("Fg0: %e\n",Fg0);
    
    // combine all functions
    dbl eH = getElectricCharge(this->nlf + 1);
    dbl n = alphaS*alphaS/m2 * (-q2)/(M_PI) * eH*eH;
    dbl realFg1 = n*(cg1SV + cg1H);
    dbl FgBarF1 = n*(cgBarF1SV + cgBarF1H) + nlf*fermionLoopFactor*Fg0;
    dbl FgBarR1 = n*cgBarR1SV - nlf*fermionLoopFactor*Fg0;
    return realFg1 + FgBarF1*log(this->muF2/this->m2) + FgBarR1*log(this->muR2/this->m2);
*/
    PdfConvNLOg kCg1(m2,q2,bjorkenX,pdf,muF2,Delta,this->getCg1SV(),this->getCg1H());
    gsl_monte_function fCg1;
    fCg1.f = gsl::callFunctor3D<PdfConvNLOg>;
    fCg1.params = &kCg1;
    dbl cg1 = int3D(&fCg1);
    
    PdfConvNLOg kCgBarF1(m2,q2,bjorkenX,pdf,muF2,Delta,this->getCgBarF1SV(),this->getCgBarF1H());
    gsl_monte_function fCgBarF1;
    fCgBarF1.f = gsl::callFunctor3D<PdfConvNLOg>;
    fCgBarF1.params = &kCgBarF1;
    dbl cgBarF1 = int3D(&fCgBarF1);
    
    PdfConvNLOgSV kCgBarR1(m2,q2,bjorkenX,pdf,muF2,Delta,this->getCgBarR1SV());
    gsl_monte_function fCgBarR1;
    fCgBarR1.f = gsl::callFunctor2D<PdfConvNLOgSV>;
    fCgBarR1.params = &kCgBarR1;
    dbl cgBarR1 = int2D(&fCgBarR1);
    
    // compute fermion loop
    dbl Fg0 = this->Fg0();
    //printf("Fg0: %e\n",Fg0);
    
    // combine all functions
    dbl eH = getElectricCharge(this->nlf + 1);
    dbl n = alphaS*alphaS/m2 * (-q2)/(M_PI) * eH*eH;
    dbl realFg1 = n*cg1;
    dbl FgBarF1 = n*cgBarF1 + nlf*fermionLoopFactor*Fg0;
    dbl FgBarR1 = n*cgBarR1 - nlf*fermionLoopFactor*Fg0;
    return realFg1 + FgBarF1*log(this->muF2/this->m2) + FgBarR1*log(this->muR2/this->m2);
}

dbl ElProduction::Fq1() const {
    this->checkHardonic();
    // threshold cut off
    if (this->bjorkenX >= this->zMax)
        return 0.;
    // helper
    #define run(src,inc,target) {fPtr5dbl g = this->get##src();\
        PdfConvNLOq k(m2,q2,bjorkenX,pdf,muF2,nlf,inc,g);\
        gsl_monte_function f;\
        f.f = gsl::callFunctor3D<PdfConvNLOq>;\
        f.params = &k;\
        target = int3D(&f);}
    // compute
    dbl cq1,cqBarF1,dq1;
    run(Cq1,false,cq1)
    run(CqBarF1,false,cqBarF1)
    run(Dq1,true,dq1)
    // compose
    dbl eH = getElectricCharge(this->nlf + 1);
    dbl n = alphaS*alphaS/m2 * (-q2)/(M_PI);
    return n*(eH*eH*(cq1 + cqBarF1*log(this->muF2/this->m2)) + dq1);
}