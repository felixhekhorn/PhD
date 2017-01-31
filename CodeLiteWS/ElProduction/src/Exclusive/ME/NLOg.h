/**
 * @file Exclusive/ME/NLOg.h
 * @brief defines all kernels to NLO gluon cross sections for all projections
 */
 
#ifndef Exclusive_NLOg_H_
#define Exclusive_NLOg_H_

#include "../../config.h"

namespace Exclusive {

/**
 * @brief full soft contribution in G-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param betaTilde \f$\tilde\beta\f$ x-regulating parameter
 * @return \f$(S+V)'_{G}\f$
 */
cdbl SVpG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTilde);

/**
 * @brief full soft contribution in L-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param betaTilde \f$\tilde\beta\f$ x-regulating parameter
 * @return \f$(S+V)'_{L}\f$
 */
cdbl SVpL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTilde);

/**
 * @brief full soft contribution in P-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param betaTilde \f$\tilde\beta\f$ x-regulating parameter
 * @return \f$(S+V)'_{P}\f$
 */
cdbl SVpP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTilde);

/**
 * @brief full hard contribution in G-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{G}\f$
 */
cdbl RpG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief full hard contribution in L-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{L}\f$
 */
cdbl RpL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief full hard contribution in P-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @param u1 \f$u_1\f$
 * @param tp \f$t'\f$
 * @param up \f$u'\f$
 * @return \f$R'_{P}\f$
 */
cdbl RpP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

/**
 * @brief soft limit of full hard contribution in G-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param y 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{G}(x=1)\f$
 */
cdbl RpxCG(cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2);

/**
 * @brief soft limit of full hard contribution in L-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param y 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{L}(x=1)\f$
 */
cdbl RpxCL(cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2);

/**
 * @brief soft limit of full hard contribution in P-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param y 
 * @param Theta1
 * @param Theta2
 * @return \f$R'_{P}(x=1)\f$
 */
cdbl RpxCP(cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2);
    
} // namespace Exclusive

#endif // Exclusive_NLOg_H_