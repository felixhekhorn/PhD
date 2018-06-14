/**
 * @file IntegrationMeta.h
 * @brief defines meta classes for integration routines
 */

#ifndef IntegrationMeta_H_
#define IntegrationMeta_H_

#include <gsl/gsl_integration.h>
#include <yaml-cpp/yaml.h>

#include "../config.h"

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
    
/** @brief level of output */
    int verbosity = 0;

/** @brief calls */
    size_t calls = 0;
    
/** @brief calls for warmup */
    size_t warmupCalls = 0;
    
/** @brief iterations */
    uint iterations = 5;
    
/** @brief iterations during warmup */
    uint warmupIterations = 5;
    
/** @brief iterate until |chi2-1| < 0.5? */
    bool adaptChi2 = true;
///@}

/** @name variables for Dvegas */
///@{
/** @brief number of bins */
    uint Dvegas_bins = 250;
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

/**
 * @brief give string representation
 * @return string
 */
    str toString() const {
        YAML::Node r;
        r["method"] = method;
        r["verbosity"] = verbosity;
        if ("gsl_integration_qag" == this->method) {
            r["GslQag_epsabs"] = GslQag_epsabs;
            r["GslQag_epsrel"] = GslQag_epsrel;
            r["GslQag_key"] = GslQag_key;
        } else {
            r["calls"] = calls;
            r["warmupCalls"] = warmupCalls;
            r["iterations"] = iterations;
            r["warmupIterations"] = warmupCalls;
            r["adaptChi2"] = adaptChi2;
            if ("Dvegas" == this->method) {
                r["Dvegas_bins"] = Dvegas_bins;
            }
        }
        r.SetStyle(YAML::EmitterStyle::Flow);
        YAML::Emitter e;
        e << r;
        return e.c_str(); 
    }

/**
 * @brief writes object to stream
 * @param os stream
 * @param c object
 * @return improved stream
 */
    friend std::ostream& operator<<(std::ostream& os, const IntegrationConfig& c ) {
        os << c.toString();
        return os;
    }

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