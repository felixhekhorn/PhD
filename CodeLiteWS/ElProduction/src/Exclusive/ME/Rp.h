#ifndef Rp_H_
#define Rp_H_

#include "../../config.h"

namespace Exclusive {
    
/**
 * @brief hard contribution in G-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{OK1,G}\f$
 */
cdbl ROK1pG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief hard contribution in L-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{OK1,G}\f$
 */
cdbl ROK1pL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief hard contribution in P-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{OK1,G}\f$
 */
cdbl ROK1pP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief hard contribution in G-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{OK2,G}\f$
 */
cdbl ROK2pG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief hard contribution in L-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{OK2,G}\f$
 */
cdbl ROK2pL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief hard contribution in P-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{OK2,G}\f$
 */
cdbl ROK2pP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief hard contribution in G-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{QED,G}\f$
 */
cdbl RQEDpG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief hard contribution in L-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{QED,L}\f$
 */
cdbl RQEDpL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief hard contribution in P-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{QED,P}\f$
 */
cdbl RQEDpP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

} // namespace Exclusive


#endif // Rp_H_