#ifndef Integration_H_
#define Integration_H_

#include "config.h"

#include <gsl/gsl_monte.h>
#include <gsl/gsl_integration.h>
#include <dvegas/dvegas.h>

/**
 * @brief integrates 1 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a)\,da\f$
 */
dbl int1D(gsl_function* F);
    
/**
 * @brief integrates 2 dimension with gsl_monte_vegas
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a_1,a_2)\,da_1da_2\f$
 */
dbl int2D(gsl_monte_function* F);

/**
 * @brief integrates 2 dimension with Dvegas
 * @param k kernel
 * @return \f$\int\limits_0^1 f(a_1,a_2)\,da_1da_2\f$
 */
dbl int2D(HepSource::Integrand& k);
    
/**
 * @brief integrates 3 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a_1,a_2,a_3)\,da_1da_2da_3\f$
 */
dbl int3D(gsl_monte_function* F);
    
/**
 * @brief integrates 4 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a_1,a_2,a_3,a_4)\,da_1da_2da_3da_4\f$
 */
dbl int4D(gsl_monte_function* F);
    
/**
 * @brief integrates 5 dimension with gsl_monte_vegas
 * @param F kernel
 * @return \f$\int\limits_0^1 f(a_1,a_2,a_3,a_4,a_5)\,da_1da_2da_3da_4da_5\f$
 */
dbl int5D(gsl_monte_function* F);
    
#endif // Integration_H_