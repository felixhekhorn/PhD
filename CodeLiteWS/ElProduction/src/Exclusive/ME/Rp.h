#ifndef Rp_H_
#define Rp_H_

#include "../../config.h"

namespace Exclusive {

/**
 * @brief \f$R'_{OK1,G}\f$
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
 * @brief \f$R'_{OK2,G}\f$
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
 * @brief \f$R'_{QED,G}\f$
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
 * @brief \f$R'_{OK,G}(x=1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param y 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{OK,G}(x=1)\f$
 */
cdbl ROKpxCG(cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2);

/**
 * @brief \f$R'_{QED,G}(x=1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param y 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{QED,G}(x=1)\f$
 */
cdbl RQEDpxCG(cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2);

/**
 * @brief \f$R'_{OK,G}(y=-1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param x 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{OK,G}(y=-1)\f$
 */
cdbl ROKpyCG(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);

/**
 * @brief \f$R'_{OK,G}(x=1,y=-1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @return \f$R'_{OK,G}(x=1,y=-1)\f$
 */
cdbl ROKpyxCG(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief \f$R'_{OK1,L}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{OK1,L}\f$
 */
cdbl ROK1pL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief \f$R'_{OK2,L}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{OK2,L}\f$
 */
cdbl ROK2pL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief \f$R'_{QED,L}\f$
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
 * @brief \f$R'_{OK,L}(x=1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param y 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{OK,L}(x=1)\f$
 */
cdbl ROKpxCL(cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2);

/**
 * @brief \f$R'_{QED,L}(x=1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param y 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{QED,L}(x=1)\f$
 */
cdbl RQEDpxCL(cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2);

/**
 * @brief \f$R'_{OK,L}(y=-1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param x 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{OK,L}(y=-1)\f$
 */
cdbl ROKpyCL(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);

/**
 * @brief \f$R'_{OK,L}(x=1,y=-1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @return \f$R'_{OK,L}(x=1,y=-1)\f$
 */
cdbl ROKpyxCL(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief \f$R'_{OK1,P}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{OK1,P}\f$
 */
cdbl ROK1pP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief \f$R'_{OK2,P}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{OK2,P}\f$
 */
cdbl ROK2pP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief \f$R'_{QED,P}\f$
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

/**
 * @brief \f$R'_{OK,P}(x=1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param y 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{OK,P}(x=1)\f$
 */
cdbl ROKpxCP(cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2);

/**
 * @brief \f$R'_{QED,P}(x=1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param y 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{QED,P}(x=1)\f$
 */
cdbl RQEDpxCP(cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2);

/**
 * @brief \f$R'_{OK,P}(y=-1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param x 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{OK,P}(y=-1)\f$
 */
cdbl ROKpyCP(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);

/**
 * @brief \f$R'_{OK,P}(x=1,y=-1)\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @return \f$R'_{OK,P}(x=1,y=-1)\f$
 */
cdbl ROKpyxCP(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

} // namespace Exclusive


#endif // Rp_H_