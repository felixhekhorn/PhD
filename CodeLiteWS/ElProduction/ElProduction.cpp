#include "ElProduction.h"

#include <gsl/gsl_monte_vegas.h>
#include "gsl++.hpp"

#include "psKerH.hpp"
#include "psKerSV.hpp"
#include "psKerA.hpp"

ElProduction::ElProduction(dbl m2, dbl q2, dbl Delta, projT proj, uint nlf) : 
    m2(m2), q2(0.), sp(0.), hasPartonicS(false), Delta(Delta), proj(proj), nlf(nlf){
    this->setQ2(q2);
}

void ElProduction::setEta(dbl eta) {
    if (eta < 0)
        throw domain_error("partonic eta has to be larger than 0!");
    this->setPartonicS(4.*m2*(1.+eta));
}

void ElProduction::setPartonicS(dbl s) {
    if (s < 4.*m2)
        throw domain_error("partonic cm-energy has to be larger than threshold 4m^2!");
    dbl s4minV = Delta;
    dbl s4maxV = s*(1.-Sqrt(4.*m2/s));
    if (s4minV >= s4maxV)
        throw domain_error("Delta has to be smaller than s4_max!");
    this->sp = s - q2;
    this->hasPartonicS = true;
}

void ElProduction::setQ2(dbl q2) {
    if (q2 >= 0.)
        throw domain_error("virtuality q2 has to be negative! (this is NOT Q2!)");
    this->q2 = q2;
}

void ElProduction::check() const {
    if (!this->hasPartonicS)
        throw invalid_argument("no partonic center of mass energy given!");
}

dbl ElProduction::int2D(gsl_monte_function* F) const {
    const uint dim = 2;
    double xl[dim] = {0., 0.};
    double xu[dim] = {1., 1.};
    const gsl_rng_type *T;
    gsl_rng *r;
    F->dim = dim;
        
    size_t calls = 70000;
    gsl_rng_env_setup ();
    T = gsl_rng_default;
    r = gsl_rng_alloc (T);
    
    dbl res,err;
    
    gsl_monte_vegas_state *s = gsl_monte_vegas_alloc (dim);
    gsl_monte_vegas_integrate (F, xl, xu, dim, 10000, r, s, &res, &err);
    //printf("res: %f, err: %f\n",res,err);
    uint guard=0;
    do {
        gsl_monte_vegas_integrate (F, xl, xu, dim, calls, r, s, &res, &err);
        //printf("H: guard: %d, res: %e, err: %e, chi: %e\n",guard,res,err,gsl_monte_vegas_chisq (s));
    } while (fabs (gsl_monte_vegas_chisq (s) - 1.0) > 0.5 && ++guard < 15);
    gsl_monte_vegas_free (s);
    //printf("H: guard: %d, res: %e, err: %e, chi: %e\n",guard,res,err,gsl_monte_vegas_chisq (s));
    return res;
}

dbl ElProduction::int1D(gsl_function* F) const {
    //size_t reNevals;
    size_t calls = 10000;
    dbl res,err;
    gsl_integration_workspace *w = gsl_integration_workspace_alloc(calls);
    gsl_integration_qag(F, 0, 1., 1e-10,1e-5, calls, GSL_INTEG_GAUSS41, w, &res,&err);
    gsl_integration_workspace_free(w);
    //reNevals = w->size;
    //printf("SV: res: %e, err: %e\n",res,err);
    return res;
}

dbl ElProduction::cg0() const {
    this->check();
    dbl s = sp+q2;
    dbl beta = sqrt(1. - 4.*m2/s);
    dbl chi = (1.-beta)/(1.+beta);
    if(L == this->proj)
        return m2*16.*M_PI*Kggg*NC*CF*(-q2*s/(sp*sp*sp))*(beta + 2.*m2/s*log(chi));
    if(G == this->proj)
        return m2*M_PI*(-2.* (4.*m2*s + 2.*q2*s + sp*sp)*beta + (8.*m2*m2 - 2.*q2*q2 - 4.*m2*sp - sp*(2.*q2 + sp))*2.*log(chi))/(sp*sp*sp);
    if (P == this->proj)
        return m2*4*M_PI*((4*q2+3*sp)*beta +(2*q2+sp)*log(chi))/(sp*sp);
    throw invalid_argument("unknown projection!");
}

dbl ElProduction::cg1() const {
    this->check();
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
    return this->int2D(&fH)+this->int1D(&fSV);
}

dbl ElProduction::cgBar1() const {
    this->check();
    return this->cgBarR1()+this->cgBarF1();
}

dbl ElProduction::cgBarR1() const {
    this->check();
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
    return this->int1D(&fSV)+2./3.*nlf*(1./(4.*4.*M_PI*M_PI))*this->cg0();
}

dbl ElProduction::cgBarF1() const {
    this->check();
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
    return this->int2D(&fH)+this->int1D(&fSV)-2./3.*nlf*(1./(4.*4.*M_PI*M_PI))*this->cg0();
}

dbl ElProduction::cq1() const {
    this->check();
    gsl_monte_function f;
    if (L == this->proj) {
        psKerAL1 k(m2,q2,sp); 
        f.f = gsl::callFunctor2D<psKerAL1>;
        f.params = &k;
    } else if(G == this->proj) {
        psKerAG1 k(m2,q2,sp); 
        f.f = gsl::callFunctor2D<psKerAG1>;
        f.params = &k;
    } else if(P == this->proj) {
        psKerAP1 k(m2,q2,sp); 
        f.f = gsl::callFunctor2D<psKerAP1>;
        f.params = &k;
    } else
        throw invalid_argument("unknown projection!");
    return this->int2D(&f);
}

dbl ElProduction::cqBarF1() const {
    this->check();
    gsl_monte_function f;
    if (L == this->proj) {
        psKerAL1ScaleF k(m2,q2,sp); 
        f.f = gsl::callFunctor2D<psKerAL1ScaleF>;
        f.params = &k;
    } else if(G == this->proj) {
        psKerAG1ScaleF k(m2,q2,sp); 
        f.f = gsl::callFunctor2D<psKerAG1ScaleF>;
        f.params = &k;
    } else if(P == this->proj) {
        psKerAP1ScaleF k(m2,q2,sp); 
        f.f = gsl::callFunctor2D<psKerAP1ScaleF>;
        f.params = &k;
    } else
        throw invalid_argument("unknown projection!");
    return this->int2D(&f);
}

dbl ElProduction::dq1() const {
    this->check();
    gsl_monte_function f;
    if (L == this->proj) {
        psKerAL2 k(m2,q2,sp); 
        f.f = gsl::callFunctor2D<psKerAL2>;
        f.params = &k;
    } else if(G == this->proj) {
        psKerAG2 k(m2,q2,sp); 
        f.f = gsl::callFunctor2D<psKerAG2>;
        f.params = &k;
    } else if(P == this->proj) {
        psKerAP2 k(m2,q2,sp); 
        f.f = gsl::callFunctor2D<psKerAP2>;
        f.params = &k;
    } else
        throw invalid_argument("unknown projection!");
    return this->int2D(&f);
}