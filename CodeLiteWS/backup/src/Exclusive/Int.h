#ifndef Exclusive_Integration_H_
#define Exclusive_Integration_H_

#include "../config.h"

#include "IntKers/FKerAll.h"

namespace Exclusive {

/**
 * @brief numeric parameters to int5DDvegas
 */
struct MCParams {
    
/**
 * @brief calls
 */
    HepSource::Int64 calls = 50000;
    
/**
 * @brief calls during warmup
 */
    HepSource::Int64 warmupCalls = 3000;
    
/**
 * @brief iterations
 */
    uint iterations = 5;
    
/**
 * @brief iterations during warmup
 */
    uint warmupIterations = 5;

/**
 * @brief number of bins
 */
    uint bins = 125;
    
/**
 * @brief level of output
 */
    int verbosity = 0;
    
/**
 * @brief iterate until |chi2-1| < 0.5?
 */
    bool adaptChi2 = true;
    
};
    
/**
 * @brief integrates 5 dimension with Dvegas
 * @param k kernel
 * @param ps params
 * @return \f$\int\limits_0^1 f(a_1,a_2,a_3,a_4,a_5)\,da_1da_2da_3da_4da_5\f$
 */
dbl int5DDvegas(FKerAll& k, const MCParams& ps);

} // namespace Exclusive
    
#endif // Exclusive_Integration_H_