#ifndef CoeffPsKers_HPP_
#define CoeffPsKers_HPP_

#include "../../config.h"
#include "../../Color.h"
#include "KinematicVars.hpp"
#include "PdfConvNLOq.h"

using namespace Color;

namespace Exclusive {
    
/**
 * @brief base class to all coefficient phasespace kernels
 */
class AbstractCoeffPsKer {
protected:
    
/**
 * @brief heavy quark mass squared \f$m^2 > 0\f$
 */
    dbl m2;
    
/**
 * @brief virtuality of the photon \f$q^2< 0\f$
 */
    dbl q2;
    
/**
 * @brief current \f$s'\f$
 */
    dbl sp;
    
/**
 * @brief lower x intergation bound \f$\rho^*\f$
 */
    dbl rhoStar;
    
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 */
    AbstractCoeffPsKer(dbl m2, dbl q2, dbl sp) : m2(m2), q2(q2) {
        this->setSp(sp);
    };
    
public:

/**
 * @brief sets s'
 * @param sp s'
 */
    void setSp(dbl sp) {
        this->sp = sp;
        this->rhoStar = (4.*m2 - q2)/sp;
    }
};

} // namespace Exclusive


#endif // CoeffPsKers_HPP_