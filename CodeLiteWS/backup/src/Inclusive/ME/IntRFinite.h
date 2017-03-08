#ifndef IntRFinite_H_
#define IntRFinite_H_

#include "../../config.h"

/**
 * @brief \f$R_{G,OK,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{G,OK,finite}\f$
 */
cdbl IntROKfiniteG(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief \f$R_{L,OK,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{L,OK,finite}\f$
 */
cdbl IntROKfiniteL(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief \f$R_{P,OK,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{P,OK,finite}\f$
 */
cdbl IntROKfiniteP(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief \f$R_{G,QED,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{G,QED,finite}\f$
 */
cdbl IntRQEDfiniteG(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief \f$R_{L,QED,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{L,QED,finite}\f$
 */
cdbl IntRQEDfiniteL(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief \f$R_{P,QED,finite}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$R_{P,QED,finite}\f$
 */
cdbl IntRQEDfiniteP(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

#endif // IntRFinite_H_