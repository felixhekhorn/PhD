#include "./Int.h"

#include <dvegas/dvegas.h>

using namespace Exclusive;

dbl Exclusive::int5DDvegas(FKerAll& F, const MCParams& ps) {
    const uint dim = 5;
    size_t calls = ps.calls;
    uint iterations = ps.iterations;
    using HepSource::Dvegas;
    using HepSource::VEGAS;
    using HepSource::IntegrandEstimate;
    Dvegas dv(dim,ps.bins,1,F);
    /** @todo activate correlation between z and x? */
    //Dvegas dv(dim,ps.bins,2,{},0,1,F);
    
    dbl res, err;
    
    // clear histograms
    F.scaleHistograms(0.);
    // warm-up
    VEGAS(dv,ps.warmupCalls,ps.warmupIterations,0,ps.verbosity - 2);
    IntegrandEstimate e = dv.stats(0);
    res = e.integral();
    uint guard = 0;
    // run
    if (ps.adaptChi2) { // adapt chi
        do {
            if (!isfinite(res)) return res;
            F.scaleHistograms(0.);
            VEGAS(dv,calls,iterations,1,ps.verbosity - 1);
            e = dv.stats(0);
            res = e.integral();
            err = e.standardDeviation();
//          printf("int5D(Dvegas): [%d] %e ± %e (%.3f%%) chi2/it: %f\n",guard,res,err,err/res*1e2,e.chiSquarePerIteration());
        } while (fabs (e.chiSquarePerIteration() - 1.0) > 0.5 && ++guard < 15);
    } else { // simple run
        F.scaleHistograms(0.);
        VEGAS(dv,calls,iterations,1,ps.verbosity - 1);
        e = dv.stats(0);
        res = e.integral();
        err = e.standardDeviation();
    }
    F.scaleHistograms(1./((double)iterations));
    if (ps.verbosity > 0)
        printf("[INFO] int5D(Dvegas): [%d] % e ± %e (%.3f%%) chi2/it: %.3f\n",guard,res,err,abs(err/res*1e2),e.chiSquarePerIteration());
    return e.integral();
}