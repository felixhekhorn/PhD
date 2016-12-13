#ifndef CoeffPsKers_HPP_
#define CoeffPsKers_HPP_

#include "../../config.h"
#include "KinematicVars.hpp"

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
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 */
    AbstractCoeffPsKer(dbl m2, dbl q2, dbl sp) : m2(m2), q2(q2), sp(sp) {};
};

class PsKerDq1 : public AbstractCoeffPsKer {
    
/**
 * @param Ap2 pointer to ME
 */
    fPtr7dbl Ap2;
    
public:
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 * @param Ap2 pointer to ME
 */
    PsKerDq1(dbl m2, dbl q2, dbl sp, fPtr7dbl Ap2) : AbstractCoeffPsKer(m2,q2,sp), Ap2(Ap2) {};
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @param a4 integration variable
 * @return 
 */
    dbl operator() (dbl a1, dbl a2, dbl a3, dbl a4) {
        // transform to x,y,Theta1,Theta2
        // as there are no poles we can just proceed by linear transformations
        dbl jac = 1.;
        cdbl Theta1 = M_PI * a3;
        cdbl Theta2 = M_PI * a4;
        jac *= M_PI * M_PI;
        cdbl rhoStar = (4.*m2 - q2)/sp;
        cdbl x = rhoStar + (1.-rhoStar)*a1;
        jac *= (1.-rhoStar);
        cdbl y = -1. + 2.*a2;
        jac *= 2.;
        const KinematicVars vs(m2,q2,sp,x,y,Theta1,Theta2);
        cdbl me = Ap2(m2,q2,sp,vs.t1,vs.u1,vs.tp,vs.up);
        cdbl f = -1./(8.*M_PI*M_PI)*m2/sp * Kqgg*NC*CF * vs.beta5/(1.+y)*sin(Theta1);
        cdbl r = jac * f * me;
        return r;
    }
};


} // namespace Exclusive


#endif // CoeffPsKers_HPP_