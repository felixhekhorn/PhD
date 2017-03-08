#ifndef Ap_H_
#define Ap_H_

#include "../../config.h"

namespace Exclusive {
    
/**
 * @brief heavy quark contribution in G-Projection \f$\sim e_H^2\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$A'_{1,G}\f$
 */
cdbl Ap1G(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief heavy quark contribution in L-Projection \f$\sim e_H^2\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$A'_{1,L}\f$
 */
cdbl Ap1L(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief heavy quark contribution in P-Projection \f$\sim e_H^2\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$A'_{1,P}\f$
 */
cdbl Ap1P(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief Counter part to heavy quark contribution in G-Projection \f$\sim e_H^2\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param x
 * @param Theta1
 * @param Theta2
 * @return \f$A'_{1,G}(y=-1)\f$
 */
cdbl Ap1CounterG(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);

/**
 * @brief Counter part to heavy quark contribution in L-Projection \f$\sim e_H^2\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param x
 * @param Theta1
 * @param Theta2
 * @return \f$A'_{1,L}(y=-1)\f$
 */
cdbl Ap1CounterL(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);

/**
 * @brief Counter part to heavy quark contribution in P-Projection \f$\sim e_H^2\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param x
 * @param Theta1
 * @param Theta2
 * @return \f$A'_{1,P}(y=-1)\f$
 */
cdbl Ap1CounterP(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);
    
/**
 * @brief light quark contribution in G-Projection \f$\sim e_L^2\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$A'_{2,G}\f$
 */
cdbl Ap2G(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief light quark contribution in L-Projection \f$\sim e_L^2\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$A'_{2,L}\f$
 */
cdbl Ap2L(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief light quark contribution in P-Projection \f$\sim e_L^2\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$A'_{2,P}\f$
 */
cdbl Ap2P(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief interference quark contribution in G-Projection \f$\sim e_He_L\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$A'_{3,G}\f$
 */
cdbl Ap3G(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief interference quark contribution in L-Projection \f$\sim e_He_L\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$A'_{3,L}\f$
 */
cdbl Ap3L(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief interference quark contribution in P-Projection \f$\sim e_He_L\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$A'_{3,P}\f$
 */
cdbl Ap3P(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

} // namespace Exclusive


#endif // Ap_H_