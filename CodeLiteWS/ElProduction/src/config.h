/**
 * @file config.h
 * @brief includes all common header files and defines types and shortcuts
 */

#ifndef Config_H_
#define Config_H_

#include <stdlib.h>
#include <cmath>
#include <string>
#include <exception>
#include <stdexcept>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <stdio.h>

#include "Timer.h"

using namespace std;

/** @name shorthands */
///@{
/** @brief int shorthand */
typedef unsigned int uint;
/** @brief string shorthand */
typedef string str;

/** @brief define floating point precision */
typedef double dbl;
/** @brief define floating point precision */
typedef const double cdbl;

/** @brief function pointer of 3 variables */
typedef cdbl (*fPtr3dbl)(cdbl m2, cdbl q2, cdbl sp);
/** @brief function pointer of 4 variables */
typedef cdbl (*fPtr4dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl t1);
/** @brief function pointer of 5 variables */
typedef cdbl (*fPtr5dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);
///@}

/** @name Mathematica functions
 * functions can be treated as macros
 */
///@{
/** @brief MMa port */
#define Power(a,b) pow(a,b)
/** @brief MMa port */
#define Log(a) log(a)
/** @brief MMa port */
#define Sqrt(a) sqrt(a)
///@}

/** @brief factor in front of fermion loop excluding the \f$n_{lf}\f$ - see eq. (3.7) */
#define fermionLoopFactor 2./3.*(1./(4.*4.*M_PI*M_PI))

/**
 * @brief constants related to color space
 */
namespace Color {
    
    /**
     * @brief number of Colors \f$N_C \f$
     */
    const uint NC = 3;
    
    /**
     * @brief Casimir constant of fundamental representation \f$C_F=\frac{N_C^2 - 1}{2N_C} \f$
     */
    cdbl CF = (NC*NC -1)/(2.*NC);
    
    /**
     * @brief Casimir constant of adjoint representation \f$C_A=N_C \f$
     */
    cdbl CA = (dbl)NC;
    
    /**
     * @brief Color avarage of \f$\Pg\f$ and \f$\Pgg\f$ in initial state \f$K_{\Pg\Pgg} = \frac 1 {N_C^2 -1}\f$
     */
    cdbl Kggg = 1./(NC*NC - 1.);
    
    /**
     * @brief Color avarage of \f$\Pq\f$ and \f$\Pgg\f$ in initial state \f$K_{\Pq\Pgg} = \frac 1 {N_C}\f$
     */
    cdbl Kqgg = 1./(NC);
}

/**
 * @brief returns electric charge of particle
 * @param pid PDG particle id
 * @return electric charge
 */
inline cdbl getElectricCharge(const int pid) {
    switch(pid) {
        case 1: case -1: // u+ubar
        case 3: case -3: // s+sbar
        case 5: case -5: // b+bbar
            return -1./3.;
        case 2: case -2: // d+dbar
        case 4: case -4: // c+cbar
        case 6: case -6: // t+tbar
            return 2./3.;
        case 21: // Gluon
            return 0.;
        default:
            throw domain_error("not implemented!");
    }
}

/**
 * @brief projection type
 */
enum projT {
    G, /**< g-projection */
    L, /**< longitudinal projection */
    P /**< polarized projection */
};

#endif // Config_H_