#include "ElProduction.h"

#include <gsl/gsl_monte_vegas.h>
#include <gsl/gsl_integration.h>
#include "gsl++.hpp"

#include "Integration.h"
#include "src/ME/Born.h"
#include "src/ME/NLOq.h"
#include "psKerH.hpp"
#include "psKerSV.hpp"
//#include "psKerA.hpp"

#include "src/PdfConvolutionLO.hpp"
#include "src/PdfConvolutionNLOq.hpp"

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

dbl ElProduction::cg0() const {
    this->checkPartonic();
    if(L == this->proj)
        return cg0L(m2,q2,sp);
    if(G == this->proj)
        return cg0G(m2,q2,sp);
    if (P == this->proj)
        return cg0P(m2,q2,sp);
    throw invalid_argument("unknown projection!");
}

dbl ElProduction::cg1() const {
    this->checkPartonic();
    gsl_monte_function fH;
    gsl_function fSV;
    if (L == this->proj) {
        psKerHL kH(m2,q2,sp,Delta); 
        fH.f = gsl::callFunctor2D<psKerHL>;
        fH.params = &kH;
        psKerSVL kSV(m2,q2,sp,Delta);
        fSV.function = gsl::callFunctor<psKerSVL>;
        fSV.params = &kSV;
    } else if(G == this->proj) {
        psKerHG kH(m2,q2,sp,Delta);
        fH.f = gsl::callFunctor2D<psKerHG>;
        fH.params = &kH;
        psKerSVG kSV(m2,q2,sp,Delta);
        fSV.function = gsl::callFunctor<psKerSVG>;
        fSV.params = &kSV;
    } else if(P == this->proj) {
        psKerHP kH(m2,q2,sp,Delta);
        fH.f = gsl::callFunctor2D<psKerHP>;
        fH.params = &kH;
        psKerSVP kSV(m2,q2,sp,Delta);
        fSV.function = gsl::callFunctor<psKerSVP>;
        fSV.params = &kSV;
    } else
        throw invalid_argument("unknown projection!");
    return int2D(&fH)+int1D(&fSV);
}

dbl ElProduction::cgBar1() const {
    this->checkPartonic();
    return this->cgBarR1()+this->cgBarF1();
}

dbl ElProduction::cgBarR1() const {
    this->checkPartonic();
    gsl_function fSV;
    if (L == this->proj) {
        psKerSVLBarR kSV(m2,q2,sp,Delta);
        fSV.function = gsl::callFunctor<psKerSVLBarR>;
        fSV.params = &kSV;
    } else if(G == this->proj) {
        psKerSVGBarR kSV(m2,q2,sp,Delta);
        fSV.function = gsl::callFunctor<psKerSVGBarR>;
        fSV.params = &kSV;
    } else if(P == this->proj) {
        psKerSVPBarR kSV(m2,q2,sp,Delta);
        fSV.function = gsl::callFunctor<psKerSVPBarR>;
        fSV.params = &kSV;
    } else
        throw invalid_argument("unknown projection!");
    // take fermion loop into account!
    return int1D(&fSV)+2./3.*nlf*(1./(4.*4.*M_PI*M_PI))*this->cg0();
}

dbl ElProduction::cgBarF1() const {
    this->checkPartonic();
    gsl_monte_function fH;
    gsl_function fSV;
    if (L == this->proj) {
        psKerHLBarF kH(m2,q2,sp,Delta);
        fH.f = gsl::callFunctor2D<psKerHLBarF>;
        fH.params = &kH;
        psKerSVLBarF kSV(m2,q2,sp,Delta);
        fSV.function = gsl::callFunctor<psKerSVLBarF>;
        fSV.params = &kSV;
    } else if(G == this->proj) {
        psKerHGBarF k(m2,q2,sp,Delta);
        fH.f = gsl::callFunctor2D<psKerHGBarF>;
        fH.params = &k;
        psKerSVGBarF kSV(m2,q2,sp,Delta);
        fSV.function = gsl::callFunctor<psKerSVGBarF>;
        fSV.params = &kSV;
    } else if(P == this->proj) {
        psKerHPBarF k(m2,q2,sp,Delta);
        fH.f = gsl::callFunctor2D<psKerHPBarF>;
        fH.params = &k;
        psKerSVPBarF kSV(m2,q2,sp,Delta);
        fSV.function = gsl::callFunctor<psKerSVPBarF>;
        fSV.params = &kSV;
    } else
        throw invalid_argument("unknown projection!");
    // given by mass factorization
    return int2D(&fH)+int1D(&fSV)-2./3.*nlf*(1./(4.*4.*M_PI*M_PI))*this->cg0();
}

func5dbl ElProduction::getCq1() const {
    switch(this->proj) {
        case G: return &cq1G;
        case L: return &cq1L;
        case P: return &cq1P;
        default: throw invalid_argument("unknown projection!");
    }
}

func5dbl ElProduction::getCqBarF1() const {
    switch(this->proj) {
        case G: return &cqBarF1G;
        case L: return &cqBarF1L;
        case P: return &cqBarF1P;
        default: throw invalid_argument("unknown projection!");
    }
}

func5dbl ElProduction::getDq1() const {
    switch(this->proj) {
        case G: return &dq1G;
        case L: return &dq1L;
        case P: return &dq1P;
        default: throw invalid_argument("unknown projection!");
    }
}

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
        throw domain_error("running strong coupling has to be positive!");
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
        throw invalid_argument("no running strong coupling given!");
}

dbl ElProduction::Fg0() const {
    this->checkHardonic();
    /** @todo: correct? */
    if (this->bjorkenX >= this->zMax)
        return 0.;
    dbl (*cg0)(dbl m2, dbl q2, dbl sp) = 0;
    switch(this->proj) {
        case G: cg0 = &cg0G; break;
        case L: cg0 = &cg0L; break;
        case P: cg0 = &cg0P; break;
        default: throw invalid_argument("unknown projection!");
    }
    PdfConvolutionLO k(m2, q2, bjorkenX, pdf, muF2,cg0);
    gsl_function f;
    f.function = gsl::callFunctor<PdfConvolutionLO>;
    f.params = &k;
    dbl eH = getElectricCharge(this->nlf + 1);
    dbl n = alphaS/m2 * (-q2)/(4.*M_PI*M_PI) * eH*eH;
    return n*int1D(&f);
}

dbl ElProduction::Fq1() const {
    this->checkHardonic();
    /** @todo: correct? */
    if (this->bjorkenX >= this->zMax)
        return 0.;
    // helper
    #define run(src,inc,target) {func5dbl g = this->get##src();\
        PdfConvolutionNLOq k(m2,q2,bjorkenX,pdf,muF2,nlf,inc,g);\
        gsl_monte_function f;\
        f.f = gsl::callFunctor3D<PdfConvolutionNLOq>;\
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