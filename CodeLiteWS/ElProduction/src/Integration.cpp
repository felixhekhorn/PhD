#include "Integration.h"

#include <gsl/gsl_monte_vegas.h>
#include <gsl/gsl_integration.h>

dbl int1D(gsl_function* F) {
    //size_t reNevals;
    size_t calls = 10000;
    dbl res,err;
    gsl_integration_workspace *w = gsl_integration_workspace_alloc(calls);
    gsl_integration_qag(F, 0, 1., 1e-20, 1e-4, calls, GSL_INTEG_GAUSS41, w, &res,&err);
    gsl_integration_workspace_free(w);
    //reNevals = w->size;
    //printf("int1D: res: %e, err: %e\n",res,err);
    return res;
}

dbl int2D(gsl_monte_function* F) {
    const uint dim = 2;
    double xl[dim] = {0., 0.};
    double xu[dim] = {1., 1.};
    const gsl_rng_type *T;
    gsl_rng *r;
    F->dim = dim;
        
    size_t calls = 50000;
    gsl_rng_env_setup ();
    T = gsl_rng_default;
    r = gsl_rng_alloc (T);
    
    dbl res,err;
    
    gsl_monte_vegas_state *s = gsl_monte_vegas_alloc (dim);
    gsl_monte_vegas_integrate (F, xl, xu, dim, 20000, r, s, &res, &err);
    //printf("int2D: res: %e, err: %e\n",res,err);
    uint guard=0;
    do {
        gsl_monte_vegas_integrate (F, xl, xu, dim, calls, r, s, &res, &err);
        //printf("int2D: guard: %d, res: %e, err: %e, chi: %e\n",guard,res,err,gsl_monte_vegas_chisq (s));
    } while (fabs (gsl_monte_vegas_chisq (s) - 1.0) > 0.5 && ++guard < 15);
    gsl_monte_vegas_free (s);
    //printf("int2D: guard: %d, res: %e, err: %e, chi: %e\n",guard,res,err,gsl_monte_vegas_chisq (s));
    return res;
}

dbl int3D(gsl_monte_function* F) {
    const uint dim = 3;
    double xl[dim] = {0., 0., 0.};
    double xu[dim] = {1., 1., 1.};
    const gsl_rng_type *T;
    gsl_rng *r;
    F->dim = dim;
        
    size_t calls = 100000;
    gsl_rng_env_setup ();
    T = gsl_rng_default;
    r = gsl_rng_alloc (T);
    
    dbl res,err;
    
    gsl_monte_vegas_state *s = gsl_monte_vegas_alloc (dim);
    gsl_monte_vegas_integrate (F, xl, xu, dim, 30000, r, s, &res, &err);
    //printf("int3D: res: %e, err: %e\n",res,err);
    uint guard=0;
    do {
        gsl_monte_vegas_integrate (F, xl, xu, dim, calls, r, s, &res, &err);
        //printf("int3D: guard: %d, res: %e, err: %e, chi: %e\n",guard,res,err,gsl_monte_vegas_chisq (s));
    } while (fabs (gsl_monte_vegas_chisq (s) - 1.0) > 0.5 && ++guard < 15);
    gsl_monte_vegas_free (s);
    //printf("int3D: guard: %d, res: %e, err: %e, chi: %e\n",guard,res,err,gsl_monte_vegas_chisq (s));
    return res;
}