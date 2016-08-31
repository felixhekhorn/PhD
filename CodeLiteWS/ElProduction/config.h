/**
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

using namespace std;

// define some shorthands
typedef unsigned int uint;
typedef string str;

// floating point precision
typedef double dbl;

// functions
typedef dbl (*fPtr3dbl)(dbl m2, dbl q2, dbl sp);
typedef dbl (*fPtr5dbl)(dbl m2, dbl q2, dbl sp, dbl s4OrDelta, dbl t1);

// MMa functions can be treated as macros
#define Power(a,b) pow(a,b)
#define Log(a) log(a)
#define Sqrt(a) sqrt(a)

/**
 * @brief exception wrapper to provide Exception(string)
 */
class Exception : public exception {
protected:
    /**
     * @brief message
     */
	str msg;

    /**
     * @brief contructor to create message later on
     */
    Exception() : msg("") {}
public:

    /**
     * @brief explicit constructor
     * @param msg message
     */
	Exception(str msg) : msg(msg) {}

    /**
     * @brief returns the message
     * @return the message
     */
	const char* what() const throw() { return this->msg.c_str(); }

    /**
     * @brief destructor
     */
	virtual ~Exception() throw(){}
};

/**
 * @brief trim fake
 * removes whitespace (i.e. " ", "\t", "\r", "\n") from left or right of string
 * @param str string as reference
 */
inline void trim(str& str) {
	str::size_type pos = str.find_last_not_of(" \t\r\n");
	if(pos != string::npos) {
		str.erase(pos + 1);
		pos = str.find_first_not_of(" \t\r\n");
        if(pos != string::npos)
            str.erase(0, pos);
    } else
        str.erase(str.begin(), str.end());
}

// physical constants
namespace physicalConst {

    /**
     * @brief pico barn * GeV^2
     */
    const dbl pbTimesGeV2 = 3894./10000.*1e9;
}

/** @brief factor in front of fermion loop excluding a n_lf - see eq. (3.7) */
#define fermionLoopFactor 2./3.*(1./(4.*4.*M_PI*M_PI))

// color space
namespace Color {
    
    /**
     * @brief number of Colors \f$N_C$\f
     */
    const uint NC = 3;
    
    /**
     * @brief Casimir constant of fundamental representation \f$C_F=\frac{N_C^2 - 1}{2N_C}\f$
     */
    const dbl CF = (NC*NC -1)/(2.*NC);
    
    /**
     * @brief Casimir constant of adjoint representation \f$C_A=N_C\f$
     */
    const dbl CA = (dbl)NC;
    
    /**
     * @brief Color avarage of \f$\Pg$\f and \f$\Pgg\f$ in initial state
     */
    const dbl Kggg = 1./(NC*NC - 1.);
    
    /**
     * @brief Color avarage of \f$\Pq$\f and \f$\Pgg\f$ in initial state
     */
    const dbl Kqgg = 1./(NC);
}

/**
 * @brief returns electric charge of particle
 * @param pid PDG particle id
 * @return electric charge
 */
inline dbl getElectricCharge(int pid) {
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
 *  - G: \f$-g^{\mu\nu}\f$-projection
 *  - L: \f$-\frac{4q^2}{{s'}^2}k_1^\mu k_1^\nu\f$ longitudinal projection
 *  - P: \f$i\epsilon_{\mu\nu\rho\sigma}\frac{k_1^\rho q^\sigma}{s'}\f$
 */
enum projT {G, L, P};

#endif // Config_H_