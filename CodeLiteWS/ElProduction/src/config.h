/**
 * @file config.h
 * @brief includes all common header files and defines types and shortcuts
 */

#ifndef Config_H_
#define Config_H_

#include <stdlib.h>
#include <cmath>
#include <string>
#include <stdexcept>
#include <iostream>
#include <stdio.h>

#include "Common/Timer.h"

using namespace std;

/** @name shorthands */
///@{
/** @brief unsigned int shorthand */
typedef unsigned int uint;
/** @brief string shorthand */
typedef string str;

/** @brief defines floating point precision */
typedef double dbl;
/** @brief defines floating point precision */
typedef const double cdbl;

/** @brief function pointer of 0 variables */
typedef cdbl (*fPtr0dbl)();
/** @brief function pointer of 1 variables */
typedef cdbl (*fPtr1dbl)(cdbl x);
/** @brief function pointer of 3 variables */
typedef cdbl (*fPtr3dbl)(cdbl m2, cdbl q2, cdbl sp);
/** @brief function pointer of 4 variables */
typedef cdbl (*fPtr4dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl t1);
/** @brief function pointer of 5 variables */
typedef cdbl (*fPtr5dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);
/** @brief function pointer of 6 variables */
typedef cdbl (*fPtr6dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);
/** @brief function pointer of 7 variables */
typedef cdbl (*fPtr7dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl u1, cdbl t1, cdbl tp, cdbl up);
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

/** @name order flags */
///@{

/**
 * @brief leading order (LO) ~ aS^1
 */    
const uint OrderFlag_LO = 1 << 0;

/**
 * @brief only next-to-leading order (NLO) ~ aS^2 (NLO only!)
 */    
const uint OrderFlag_NLOonly = 1 << 1;

/**
 * @brief up to next-to-leading order (NLO) ~ aS c0 + aS^2 c1
 */    
const uint OrderFlag_NLO = OrderFlag_LO | OrderFlag_NLOonly;

///@}

/** @name channel flags */
///@{

/**
 * @brief gluon initiated
 */    
const uint ChannelFlag_Gluon = 1 << 0;

/**
 * @brief light quark initiated
 */    
const uint ChannelFlag_Quark = 1 << 1;

/**
 * @brief all channels = gluon + light quark
 */    
const uint ChannelFlag_Full = -1;

///@}

/**
 * @brief stringify projection type
 * @param proj
 * @return (str) proj
 */
inline const str projToStr(const projT proj) {
    switch (proj) {
        case G: return "G";
        case L: return "L";
        case P: return "P";
        default: return "unknown projection";
    }
}

#endif // Config_H_