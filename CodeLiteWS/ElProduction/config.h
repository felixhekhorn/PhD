/**
 * @brief includes all common header files and defines types and shortcuts
 * @author Felix Hekhorn <felix.hekhorn@student.uni-tuebingen.de>
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

// MMa functions can be treated as macros
#define Power(a,b) pow(a,b)
#define Log(a) log(a)
#define Sqrt(a) sqrt(a)

/**
 * @brief exception wrapper to provide Exception(string)
 * @author Felix Hekhorn <felix.hekhorn@student.uni-tuebingen.de>
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
     * @brief Color avarage of \f$\Pgg$\f and \f$\Pg\f$ in initial state
     */
    const dbl Kggg = 1./(NC*NC - 1.);
}

/**
 * @brief projection type
 *  - G: \f$-g^{\mu\nu}\f$-projection
 *  - L: \f$-\frac{4q^2}{{s'}^2}k_1^\mu k_1^\nu\f$ longitudinal projection
 *  - P: \f$i\epsilon_{\mu\nu\rho\sigma}\frac{k_1^\rho q^\sigma}{s'}\f$
 */
enum projT {G, L};

#endif // Config_H_