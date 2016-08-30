#ifndef NLOq_H_
#define NLOq_H_

#include "config.h"

/**
 * @brief NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$c_{q,1}\f$
 */
dbl cq1G(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$c_{q,1}\f$
 */
dbl cq1L(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$c_{q,1}\f$
 */
dbl cq1P(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief factorisation logs of NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\bar{c}^{F}_{q,1}\f$
 */
dbl cqBarF1G(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief factorisation logs of NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\bar{c}^{F}_{q,1}\f$
 */
dbl cqBarF1L(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief factorisation logs of NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\bar{c}^{F}_{q,1}\f$
 */
dbl cqBarF1P(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief NLO light quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$d_{q,1}\f$
 */
dbl dq1G(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief NLO light quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$d_{q,1}\f$
 */
dbl dq1L(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief NLO light quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$d_{q,1}\f$
 */
dbl dq1P(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

#endif // NLOq_H_