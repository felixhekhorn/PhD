#include "Integration.h"

#include <gsl/gsl_monte_plain.h>
#include <gsl/gsl_monte_vegas.h>

cdbl Common::integrate1D(gsl_function* F, const Common::IntegrationConfig& cfg, Common::IntegrationOutput* out) {
    // init
    if ("gsl_integration_qag" != cfg.method)
        throw invalid_argument("currently only gsl_integration_qag is supported for 1D-integration!");
    out->result = dblNaN;
    out->error = dblNaN;
    // run
    size_t calls = cfg.calls;
    dbl res,err;
    gsl_integration_workspace *w = gsl_integration_workspace_alloc(calls);
    gsl_integration_qag(F, 0., 1., cfg.GslQag_epsabs, cfg.GslQag_epsabs, calls, cfg.GslQag_key, w, &res,&err);
    gsl_integration_workspace_free(w);
    // out
    if (cfg.verbosity > 0)
        printf("[INFO] int1D(gsl_qag): % e ± %e (%.3f%%)\n",res,err,fabs(err/res*1e2));
    out->result = res;
    out->error = err;
    //size_t reNevals;reNevals = w->size;
    return res;
}

#define runGslVegas \
    /* init */\
    F->dim = dim;\
    const gsl_rng_type *T;\
    gsl_rng *r;\
    gsl_rng_env_setup ();\
    T = gsl_rng_default;\
    r = gsl_rng_alloc (T);\
    dbl res,err;\
    gsl_monte_vegas_state *s = gsl_monte_vegas_alloc (dim);\
    /* warmup */\
    gsl_monte_vegas_params p;\
    gsl_monte_vegas_params_get(s,&p);\
    p.iterations = cfg.warmupIterations;\
    p.verbose = cfg.verbosity - 3;\
    gsl_monte_vegas_params_set(s,&p);\
    gsl_monte_vegas_integrate (F, xl, xu, dim, cfg.warmupCalls, r, s, &res, &err);\
    /* run */\
    p.iterations = cfg.iterations;\
    p.verbose = cfg.verbosity - 2;\
    gsl_monte_vegas_params_set(s,&p);\
    uint guard = 0;\
    out->result = dblNaN;\
    out->error = dblNaN;\
    out->MC_chi2 = dblNaN;\
    out->MC_chi2inter = 0;\
    if (cfg.adaptChi2) {\
        do {\
            if (!isfinite(res)) return res;\
            gsl_monte_vegas_integrate (F, xl, xu, dim, cfg.calls, r, s, &res, &err);\
            if (cfg.verbosity > 2)\
                printf("[INFO] int%dD(gsl):    [%d] % e ± %e (%.3f%%) chi2/it: %.3f\n",dim,guard,res,err,fabs(err/res*1e2),gsl_monte_vegas_chisq(s));\
        } while (fabs (gsl_monte_vegas_chisq (s) - 1.0) > 0.5 && ++guard < 15);\
    } else {\
        gsl_monte_vegas_integrate (F, xl, xu, dim, cfg.calls, r, s, &res, &err);\
    }\
    out->MC_chi2 = gsl_monte_vegas_chisq (s);\
    /* out */\
    if (cfg.verbosity > 0)\
        printf("[INFO] int%dD(gsl):    [%d] % e ± %e (%.3f%%) chi2/it: %.3f\n",dim,guard,res,err,fabs(err/res*1e2),gsl_monte_vegas_chisq(s));\
    gsl_monte_vegas_free (s);\
    gsl_rng_free (r);\
    out->result = res;\
    out->error = err;\
    out->MC_chi2inter = guard;\
    return res;

cdbl Common::integrate2D(gsl_monte_function* F, const Common::IntegrationConfig& cfg, Common::IntegrationOutput* out) {
    // init
    if ("gsl_monte_vegas_integrate" != cfg.method)
        throw invalid_argument("currently only gsl_monte_vegas_integrate is supported for 2D-integration!");
    const uint dim = 2;
    double xl[dim] = {0., 0.};
    double xu[dim] = {1., 1.};
    runGslVegas
}
cdbl Common::integrate3D(gsl_monte_function* F, const Common::IntegrationConfig& cfg, Common::IntegrationOutput* out) {
    // init
    if ("gsl_monte_vegas_integrate" != cfg.method)
        throw invalid_argument("currently only gsl_monte_vegas_integrate is supported for 3D-integration!");
    const uint dim = 3;
    double xl[dim] = {0., 0., 0.};
    double xu[dim] = {1., 1., 0.};
    runGslVegas
}
cdbl Common::integrate4D(gsl_monte_function* F, const Common::IntegrationConfig& cfg, Common::IntegrationOutput* out) {
    // init
    if ("gsl_monte_vegas_integrate" != cfg.method)
        throw invalid_argument("currently only gsl_monte_vegas_integrate is supported for 4D-integration!");
    const uint dim = 4;
    double xl[dim] = {0., 0., 0., 0.};
    double xu[dim] = {1., 1., 1., 1.};
    runGslVegas
}
cdbl Common::integrate5D(gsl_monte_function* F, const Common::IntegrationConfig& cfg, Common::IntegrationOutput* out) {
    // init
    if ("gsl_monte_vegas_integrate" != cfg.method)
        throw invalid_argument("currently only gsl_monte_vegas_integrate is supported for 5D-integration!");
    const uint dim = 5;
    double xl[dim] = {0., 0., 0., 0., 0.};
    double xu[dim] = {1., 1., 1., 1., 1.};
    runGslVegas
}