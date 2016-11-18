#ifndef IntA_H_
#define IntA_H_

#include "../config.h"

/**
 * @brief \f$\int A_{G,1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int A_{G,1}\,d\Omega\f$
 */
cdbl IntAG1(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief scaling part of \f$\int A_{G,1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return scaling part of \f$\int A_{G,1}\,d\Omega\f$
 */
cdbl IntAG1ScaleF(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief \f$\int A_{G,2}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int A_{G,2}\,d\Omega\f$
 */
cdbl IntAG2(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief \f$\int A_{L,1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int A_{L,1}\,d\Omega\f$
 */
cdbl IntAL1(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief scaling part of \f$\int A_{L,1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return scaling part of \f$\int A_{L,1}\,d\Omega\f$
 */
cdbl IntAL1ScaleF(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief \f$\int A_{L,2}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int A_{L,2}\,d\Omega\f$
 */
cdbl IntAL2(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief \f$\int \Delta A_{1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int \Delta A_{1}\,d\Omega\f$
 */
cdbl IntAP1(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief scaling part of \f$\int \Delta A_{1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return scaling part of \f$\int \Delta A_{1}\,d\Omega\f$
 */
cdbl IntAP1ScaleF(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief \f$\int \Delta A_{2}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int \Delta A_{2}\,d\Omega\f$
 */
cdbl IntAP2(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

#endif // IntA_H_