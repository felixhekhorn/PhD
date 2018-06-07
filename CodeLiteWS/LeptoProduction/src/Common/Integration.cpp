#include "Integration.h"

#include <gsl/gsl_integration.h>
#include <gsl/gsl_monte_plain.h>
#include <gsl/gsl_monte_vegas.h>

cdbl Common::int1D(gsl_function* F) {
    //size_t reNevals;
    size_t calls = 10000;
    dbl res,err;
    gsl_integration_workspace *w = gsl_integration_workspace_alloc(calls);
    gsl_integration_qag(F, 0., 1., 5e-6, 1e-4, calls, GSL_INTEG_GAUSS41, w, &res,&err);
    gsl_integration_workspace_free(w);
    //reNevals = w->size;
//    printf("[INFO] int1D(gsl):    [-] % e ± %e (%.3f%%)\n",res,err,abs(err/res*1e2));
    return res;
}

cdbl Common::int2D(gsl_monte_function* F) {
    const uint dim = 2;
    double xl[dim] = {0., 0.};
    double xu[dim] = {1., 1.};
    const gsl_rng_type *T;
    gsl_rng *r;
    F->dim = dim;
        
    size_t calls = 30000;
    gsl_rng_env_setup ();
    T = gsl_rng_default;
    r = gsl_rng_alloc (T);
    
    dbl res,err;
    
    gsl_monte_vegas_state *s = gsl_monte_vegas_alloc (dim);
    gsl_monte_vegas_integrate (F, xl, xu, dim, 3000, r, s, &res, &err);
    uint guard = 0;
    do {
        if (!isfinite(res)) return res;
        gsl_monte_vegas_integrate (F, xl, xu, dim, calls, r, s, &res, &err);
    } while (fabs (gsl_monte_vegas_chisq (s) - 1.0) > 0.5 && ++guard < 15);
    printf("[INFO] int2D(gsl):    [%d] % e ± %e (%.3f%%) chi2/it: %.3f\n",guard,res,err,abs(err/res*1e2),gsl_monte_vegas_chisq(s));
    gsl_monte_vegas_free (s);
    gsl_rng_free (r);
    return res;
}

cdbl Common::int3D(gsl_monte_function* F) {
    const uint dim = 3;
    double xl[dim] = {0., 0., 0.};
    double xu[dim] = {1., 1., 1.};
    const gsl_rng_type *T;
    gsl_rng *r;
    F->dim = dim;
        
    size_t calls = 50000;
    gsl_rng_env_setup ();
    T = gsl_rng_default;
    r = gsl_rng_alloc (T);
    
    dbl res,err;
    
    gsl_monte_vegas_state *s = gsl_monte_vegas_alloc (dim);
    gsl_monte_vegas_integrate (F, xl, xu, dim, 5000, r, s, &res, &err);
    //printf("int3D: res: %e, err: %e\n",res,err);
    uint guard=0;
    do {
        if (!isfinite(res)) return res;
        gsl_monte_vegas_integrate (F, xl, xu, dim, calls, r, s, &res, &err);
    } while (fabs(gsl_monte_vegas_chisq (s) - 1.0) > 0.5 && ++guard < 15);
//    printf("[INFO] int3D(gsl):    [%d] % e ± %e (%.3f%%) chi2/it: %.3f\n",guard,res,err,abs(err/res*1e2),gsl_monte_vegas_chisq(s));
    gsl_monte_vegas_free (s);
    gsl_rng_free (r);
    return res;
}

cdbl Common::int4D(gsl_monte_function* F) {
    const uint dim = 4;
    double xl[dim] = {0., 0., 0., 0.};
    double xu[dim] = {1., 1., 1., 1.};
    const gsl_rng_type *T;
    gsl_rng *r;
    F->dim = dim;
        
    size_t calls = 70000;
    gsl_rng_env_setup();
    T = gsl_rng_default;
    r = gsl_rng_alloc(T);
    
    dbl res,err;
    
    gsl_monte_vegas_state *s = gsl_monte_vegas_alloc(dim);
    gsl_monte_vegas_integrate (F, xl, xu, dim, 7000, r, s, &res, &err);
    //printf("int4D: res: %e, err: %e\n",res,err);
    uint guard = 0;
    do {
        if (!isfinite(res)) return res;
        gsl_monte_vegas_integrate(F, xl, xu, dim, calls, r, s, &res, &err);
    } while (fabs(gsl_monte_vegas_chisq(s) - 1.0) > 0.5 && ++guard < 15);
//    printf("[INFO] int4D(gsl):    [%d] % e ± %e (%.3f%%) chi2/it: %.3f\n",guard,res,err,abs(err/res*1e2),gsl_monte_vegas_chisq(s));
    gsl_monte_vegas_free(s);
    gsl_rng_free (r);
    return res;
}

cdbl Common::int5D(gsl_monte_function* F) {
    const uint dim = 5;
    double xl[dim] = {0., 0., 0., 0., 0.};
    double xu[dim] = {1., 1., 1., 1., 1.};
    const gsl_rng_type *T;
    gsl_rng *r;
    F->dim = dim;
    
    size_t calls = 100000;
    gsl_rng_env_setup();
    T = gsl_rng_default;
    r = gsl_rng_alloc(T);
    
    dbl res,err;
    
    gsl_monte_vegas_state *s = gsl_monte_vegas_alloc(dim);
    gsl_monte_vegas_integrate (F, xl, xu, dim, 10000, r, s, &res, &err);
    //printf("int5D: res: %e, err: %e\n",res,err);
    uint guard = 0;
    do {
        if (!isfinite(res)) return res;
        gsl_monte_vegas_integrate(F, xl, xu, dim, calls, r, s, &res, &err);
//        printf("int5D: guard: %d, res: %e, err: %e, chi: %f\n",guard,res,err,gsl_monte_vegas_chisq(s));
    } while (fabs(gsl_monte_vegas_chisq(s) - 1.0) > 0.5 && ++guard < 15);
    gsl_monte_vegas_free(s);
    gsl_rng_free (r);
//    printf("int5D: guard: %d, res: %e, err: %e, chi: %f\n",guard,res,err,gsl_monte_vegas_chisq(s));
    return res;
}