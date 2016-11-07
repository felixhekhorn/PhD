#ifndef IntRFinite_H_
#define IntRFinite_H_

#include "../config.h"

/**
 * @brief \f$R_{G,OK,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{G,OK,finite}\f$
 */
dbl IntROKfiniteG(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief \f$R_{L,OK,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{L,OK,finite}\f$
 */
dbl IntROKfiniteL(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief \f$R_{P,OK,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{P,OK,finite}\f$
 */
dbl IntROKfiniteP(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief \f$R_{G,QED,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{G,QED,finite}\f$
 */
dbl IntRQEDfiniteG(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief \f$R_{L,QED,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{L,QED,finite}\f$
 */
dbl IntRQEDfiniteL(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief \f$R_{P,QED,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{P,QED,finite}\f$
 */
dbl IntRQEDfiniteP(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

#endif // IntRFinite_H_