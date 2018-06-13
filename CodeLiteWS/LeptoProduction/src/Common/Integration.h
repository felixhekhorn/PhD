/**
 * @file Integration.h
 * @brief defines integration routines in 1-5 dimensions
 */

#ifndef Integration_H_
#define Integration_H_

#include "../config.h"
#include "IntegrationMeta.hpp"

#include <gsl/gsl_monte.h>
#include <gsl/gsl_integration.h>

namespace Common {

/**
 * @brief integrates the kernel in 1 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a)\,da\f$
 */
cdbl integrate1D(gsl_function* F, const IntegrationConfig& cfg, IntegrationOutput* out);

/**
 * @brief integrates the kernel in 2 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a_1,a_2)\,da_1da_2\f$
 */
cdbl integrate2D(gsl_monte_function* F, const IntegrationConfig& cfg, IntegrationOutput* out);

/**
 * @brief integrates the kernel in 2 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a_1,a_2)\,da_1da_2\f$
 */
cdbl integrate3D(gsl_monte_function* F, const IntegrationConfig& cfg, IntegrationOutput* out);

/**
 * @brief integrates the kernel in 2 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a_1,a_2)\,da_1da_2\f$
 */
cdbl integrate4D(gsl_monte_function* F, const IntegrationConfig& cfg, IntegrationOutput* out);

/**
 * @brief integrates the kernel in 2 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a_1,a_2)\,da_1da_2\f$
 */
cdbl integrate5D(gsl_monte_function* F, const IntegrationConfig& cfg, IntegrationOutput* out);

} // namespace Common

#endif // Integration_H_