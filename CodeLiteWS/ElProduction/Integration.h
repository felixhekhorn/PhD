#ifndef Integration_H_
#define Integration_H_

#include "config.h"

#include <gsl/gsl_monte.h>
#include <gsl/gsl_integration.h>

/**
 * @brief integrates 1 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(x)\,dx\f$
 */
dbl int1D(gsl_function* F);
    
/**
 * @brief integrates 2 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(x_1,x_2)\,dx_1dx_2\f$
 */
dbl int2D(gsl_monte_function* F);
    
#endif // Integration_H_