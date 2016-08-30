#ifndef Integration_H_
#define Integration_H_

#include "config.h"

#include <gsl/gsl_monte.h>
#include <gsl/gsl_integration.h>

/**
 * @brief integrates 1 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a)\,da\f$
 */
dbl int1D(gsl_function* F);
    
/**
 * @brief integrates 2 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a_1,a_2)\,da_1da_2\f$
 */
dbl int2D(gsl_monte_function* F);
    
/**
 * @brief integrates 3 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a_1,a_2,a_3)\,da_1da_2da_3\f$
 */
dbl int3D(gsl_monte_function* F);
    
#endif // Integration_H_