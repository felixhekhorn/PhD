#ifndef RPole_H_
#define RPole_H_

#include "../config.h"

/**
 * @brief finite contributions from hard poles
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return 
 */
dbl RPoleG(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief finite contributions from hard poles
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return 
 */
dbl RPoleL(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief finite contributions from hard poles
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return 
 */
dbl RPoleP(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief scaling part of finite contributions from hard poles
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return 
 */
dbl RPoleGScaleF(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief scaling part of finite contributions from hard poles
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return 
 */
dbl RPoleLScaleF(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief scaling part of finite contributions from hard poles
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return 
 */
dbl RPolePScaleF(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

#endif // RPole_H_