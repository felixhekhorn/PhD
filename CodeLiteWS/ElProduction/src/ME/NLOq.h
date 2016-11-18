/**
 * @file NLOq.h
 * @brief defines all kernels to NLO quark cross sections for all projections
 */
 
#ifndef NLOq_H_
#define NLOq_H_

#include "../config.h"

/**
 * @brief NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel to \f$c^{(1)}_{q}\f$
 */
cdbl cq1G(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel to \f$c^{(1)}_{q}\f$
 */
cdbl cq1L(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel to \f$c^{(1)}_{q}\f$
 */
cdbl cq1P(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief factorisation logs of NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel to \f$\bar{c}^{F,(1)}_{q}\f$
 */
cdbl cqBarF1G(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief factorisation logs of NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel to \f$\bar{c}^{F,(1)}_{q}\f$
 */
cdbl cqBarF1L(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief factorisation logs of NLO heavy quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel to \f$\bar{c}^{F,(1)}_{q}\f$
 */
cdbl cqBarF1P(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief NLO light quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel to \f$d^{(1)}_{q}\f$
 */
cdbl dq1G(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief NLO light quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel to \f$d^{(1)}_{q}\f$
 */
cdbl dq1L(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief NLO light quark contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel to \f$d^{(1)}_{q}\f$
 */
cdbl dq1P(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

#endif // NLOq_H_