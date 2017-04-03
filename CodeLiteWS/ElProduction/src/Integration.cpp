#include "Integration.h"

#include <gsl/gsl_integration.h>
#include <gsl/gsl_monte_plain.h>
#include <gsl/gsl_monte_vegas.h>

cdbl int1D(gsl_function* F) {
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

cdbl int2D(gsl_monte_function* F) {
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
    gsl_monte_vegas_integrate (F, xl, xu, dim, 2000, r, s, &res, &err);
    uint guard = 0;
    do {
        if (!isfinite(res)) return res;
        gsl_monte_vegas_integrate (F, xl, xu, dim, calls, r, s, &res, &err);
    } while (fabs (gsl_monte_vegas_chisq (s) - 1.0) > 0.5 && ++guard < 15);
//    printf("[INFO] int2D(gsl):    [%d] % e ± %e (%.3f%%) chi2/it: %.3f\n",guard,res,err,abs(err/res*1e2),gsl_monte_vegas_chisq(s));
    gsl_monte_vegas_free (s);
    gsl_rng_free (r);
    return res;
}

cdbl int2D(HepSource::Integrand& F) {
    const uint dim = 2;
    size_t calls = 10000;
    using HepSource::Dvegas;
    using HepSource::VEGAS;
    using HepSource::IntegrandEstimate;
    Dvegas dv(dim,50,1,F);
    
    dbl res; //,err;
    
    // warm-up
    VEGAS(dv,1000,5,0,0);
    IntegrandEstimate e = dv.stats(0);
    res = e.integral();
    uint guard = 0;
    // run
    do {
        if (!isfinite(res)) return res;
        VEGAS(dv,calls,5,1,0);
        e = dv.stats(0);
        res = e.integral();
        //err = e.standardDeviation();
        //printf("int2D: guard: %d, res: %e, err: %e, chi: %f\n",guard,res,err,e.chiSquarePerIteration());
    } while (fabs (e.chiSquarePerIteration() - 1.0) > 0.5 && ++guard < 15);
//    printf("int2D: guard: %d, res: %e, err: %e, chi: %f\n",guard,res,err,e.chiSquarePerIteration());
    return e.integral();
}

cdbl int3D(gsl_monte_function* F) {
    const uint dim = 3;
    double xl[dim] = {0., 0., 0.};
    double xu[dim] = {1., 1., 1.};
    const gsl_rng_type *T;
    gsl_rng *r;
    F->dim = dim;
        
    size_t calls = 30000;
    gsl_rng_env_setup ();
    T = gsl_rng_default;
    r = gsl_rng_alloc (T);
    
    dbl res,err;
    
    gsl_monte_vegas_state *s = gsl_monte_vegas_alloc (dim);
    gsl_monte_vegas_integrate (F, xl, xu, dim, 2000, r, s, &res, &err);
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

cdbl int4D(gsl_monte_function* F) {
    const uint dim = 4;
    double xl[dim] = {0., 0., 0., 0.};
    double xu[dim] = {1., 1., 1., 1.};
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
    //printf("int4D: res: %e, err: %e\n",res,err);
    uint guard = 0;
    do {
        if (!isfinite(res)) return res;
        gsl_monte_vegas_integrate(F, xl, xu, dim, calls, r, s, &res, &err);
    } while (fabs(gsl_monte_vegas_chisq(s) - 1.0) > 0.5 && ++guard < 15);
    printf("[INFO] int4D(gsl):    [%d] % e ± %e (%.3f%%) chi2/it: %.3f\n",guard,res,err,abs(err/res*1e2),gsl_monte_vegas_chisq(s));
    gsl_monte_vegas_free(s);
    gsl_rng_free (r);
    return res;
}

cdbl int5D(gsl_monte_function* F) {
    const uint dim = 5;
    double xl[dim] = {0., 0., 0., 0., 0.};
    double xu[dim] = {1., 1., 1., 1., 1.};
    const gsl_rng_type *T;
    gsl_rng *r;
    F->dim = dim;
    
    size_t calls = 50000;
    gsl_rng_env_setup();
    T = gsl_rng_default;
    r = gsl_rng_alloc(T);
    
    dbl res,err;
    
    gsl_monte_vegas_state *s = gsl_monte_vegas_alloc(dim);
    gsl_monte_vegas_integrate (F, xl, xu, dim, 3000, r, s, &res, &err);
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