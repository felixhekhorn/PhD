/**
 * @file IntegrationMeta.h
 * @brief defines meta classes for integration routines
 */

#ifndef IntegrationMeta_H_
#define IntegrationMeta_H_

#include "../config.h"

#include <gsl/gsl_integration.h>

namespace Common {

/**
 * @class IntegrationConfig
 * @brief configurates a single integration
 */
struct IntegrationConfig {
    
/** @name common variables */
///@{
/** @brief used method */
    string method;

/** @brief calls */
    size_t calls;
    
/** @brief calls for warmup */
    size_t warmupCalls;
    
/** @brief iterations */
    uint iterations = 5;
    
/** @brief iterations during warmup */
    uint warmupIterations = 5;
    
/** @brief level of output */
    int verbosity = 0;
    
/** @brief iterate until |chi2-1| < 0.5? */
    bool adaptChi2 = true;
///@}

/** @name variables for DVegas */
///@{
/** @brief number of bins */
    uint DVegas_bins = 250;
///@}

/** @name variables for gsl_integration_qag */
///@{
/** @see gsl_integration_qag */
    int GslQag_epsabs = 5e-6;
/** @see gsl_integration_qag */
    int GslQag_epsrel = 1e-4;
/** @see gsl_integration_qag */
    int GslQag_key = GSL_INTEG_GAUSS41;
///@}
};

/**
 * @class IntegrationOutput
 * @brief stores meta data for a single integration
 */
struct IntegrationOutput {
/** @name common variables */
///@{
/** @brief result */
    dbl result = dblNaN;
    
/** @brief error */
    dbl error = dblNaN;
///@}
    
/** @name Monte Carlo variables */
///@{
/** @brief chi^2 */
    dbl MC_chi2 = dblNaN;
/** @brief number of iteration to converge chi^2 */
    uint MC_chi2inter = 0;
///@}
};

} // namespace Common

#endif // IntegrationMeta_H_