#ifndef IntA_H_
#define IntA_H_

/**
 * @brief \f$\int A_{G,1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int A_{G,1}\,d\Omega\f$
 */
dbl IntAG1(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief scaling part of \f$\int A_{G,1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return scaling part of \f$\int A_{G,1}\,d\Omega\f$
 */
dbl IntAG1ScaleF(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief \f$\int A_{G,2}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int A_{G,2}\,d\Omega\f$
 */
dbl IntAG2(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief \f$\int A_{L,1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int A_{L,1}\,d\Omega\f$
 */
dbl IntAL1(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief scaling part of \f$\int A_{L,1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return scaling part of \f$\int A_{L,1}\,d\Omega\f$
 */
dbl IntAL1ScaleF(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief \f$\int A_{L,2}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int A_{L,2}\,d\Omega\f$
 */
dbl IntAL2(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief \f$\int \Delta A_{1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int \Delta A_{1}\,d\Omega\f$
 */
dbl IntAP1(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief scaling part of \f$\int \Delta A_{1}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return scaling part of \f$\int \Delta A_{1}\,d\Omega\f$
 */
dbl IntAP1ScaleF(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief \f$\int \Delta A_{2}\,d\Omega\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\int \Delta A_{2}\,d\Omega\f$
 */
dbl IntAP2(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

#endif // IntA_H_