#include "gluonicPart.h"

#include <gsl/gsl_monte_vegas.h>
#include "gsl++.hpp"

#include "psKerH.hpp"
#include "psKerSV.hpp"

gluonicPart::gluonicPart(dbl m2, dbl q2, dbl sp, dbl Delta, projT proj) : 
    m2(m2), q2(q2), sp(sp), Delta(Delta), proj(proj){
    dbl s4minV = Delta;
    dbl s4maxV = ((q2 + sp)*(1 - 2*Sqrt(m2/(q2 + sp)) + Sqrt((-4*m2 + q2 + sp)/(q2 + sp)))*(-1 + 2*Sqrt(m2/(q2 + sp)) + Sqrt((-4*m2 + q2 + sp)/(q2 + sp))))/(4.*Sqrt(m2/(q2 + sp)));
    if (s4minV >= s4maxV)
        throw domain_error("Delta has to be smaller than s4_max!");
}

dbl gluonicPart::int2D(gsl_monte_function* F) const {
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
    } while (fabs (gsl_monte_vegas_chisq (s) - 1.0) > 0.5 && ++guard <9);
    gsl_monte_vegas_free (s);
    //printf("H: guard: %d, res: %e, err: %e, chi: %e\n",guard,res,err,gsl_monte_vegas_chisq (s));
    return res;
}

dbl gluonicPart::int1D(gsl_function* F) const {
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

dbl gluonicPart::c0() const {
    dbl s = sp+q2;
    dbl beta = sqrt(1. - 4.*m2/s);
    dbl chi = (1.-beta)/(1.+beta);
    if(L == this->proj)
        return m2*16.*M_PI*Kggg*NC*CF*(-q2*s/(sp*sp*sp))*(beta + 2.*m2/s*log(chi));
    if(G == this->proj)
        return m2*M_PI*(-2.* (4.*m2*s + 2.*q2*s + sp*sp)*beta + (8.*m2*m2 - 2.*q2*q2 - 4.*m2*sp - sp*(2.*q2 + sp))*2.*log(chi))/(sp*sp*sp);
    throw invalid_argument("unknown projection!");
}

dbl gluonicPart::c1() const {
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
    } else
        throw invalid_argument("unknown projection!");
    return this->int2D(&fH)+this->int1D(&fSV);
}

dbl gluonicPart::cBar1() const {
    return this->cBarR1()+this->cBarF1();
}

dbl gluonicPart::cBarR1() const {
    gsl_function fSV;
    if (L == this->proj) {
        psKerSVLBarR kSV(m2,q2,sp,Delta);
        fSV.function = gsl::callFunctor<psKerSVLBarR>;
        fSV.params = &kSV;
    } else if(G == this->proj) {
        psKerSVGBarR kSV(m2,q2,sp,Delta);
        fSV.function = gsl::callFunctor<psKerSVGBarR>;
        fSV.params = &kSV;
    } else
        throw invalid_argument("unknown projection!");
    return this->int1D(&fSV)/*+2./3.*(1./(4.*4.*M_PI*M_PI))*this->c0()*/;
}

dbl gluonicPart::cBarF1() const {
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
    } else
        throw invalid_argument("unknown projection!");
    return this->int2D(&fH)+this->int1D(&fSV);
}