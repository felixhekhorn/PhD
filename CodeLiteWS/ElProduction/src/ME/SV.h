#ifndef SV_H_
#define SV_H_

#include "../config.h"

/**
 * @brief \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,OK,0\Delta}\f$
 */
cdbl SVOKG(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,OK,1\Delta}\f$
 */
cdbl SVOKDelta1G(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief double Delta-logs of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,OK,2\Delta}\f$
 */
cdbl SVOKDelta2G(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief \f$(S+V)_{G,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,QED,0\Delta}\f$
 */
cdbl SVQEDG(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{G,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,QED,1\Delta}\f$
 */
cdbl SVQEDDelta1G(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief renormalization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return renormalization scaling of \f$(S+V)_{G,OK}\f$
 */
cdbl SVOKScaleRG(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief factorization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{G,OK,0\Delta}\f$
 */
cdbl SVOKScaleFG(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of factorization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{G,OK,1\Delta}\f$
 */
cdbl SVOKScaleFDelta1G(cdbl m2, cdbl q2, cdbl sp, cdbl t1);
/**
 * @brief \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,OK,0\Delta}\f$
 */
cdbl SVOKL(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,OK,1\Delta}\f$
 */
cdbl SVOKDelta1L(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief double Delta-logs of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,OK,2\Delta}\f$
 */
cdbl SVOKDelta2L(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief \f$(S+V)_{L,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,QED,0\Delta}\f$
 */
cdbl SVQEDL(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{L,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,QED,1\Delta}\f$
 */
cdbl SVQEDDelta1L(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief renormalization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return renormalization scaling of \f$(S+V)_{L,OK}\f$
 */
cdbl SVOKScaleRL(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief factorization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{L,OK,0\Delta}\f$
 */
cdbl SVOKScaleFL(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of factorization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{L,OK,1\Delta}\f$
 */
cdbl SVOKScaleFDelta1L(cdbl m2, cdbl q2, cdbl sp, cdbl t1);
/**
 * @brief \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,OK,0\Delta}\f$
 */
cdbl SVOKP(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,OK,1\Delta}\f$
 */
cdbl SVOKDelta1P(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief double Delta-logs of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,OK,2\Delta}\f$
 */
cdbl SVOKDelta2P(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief \f$(S+V)_{P,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,QED,0\Delta}\f$
 */
cdbl SVQEDP(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{P,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,QED,1\Delta}\f$
 */
cdbl SVQEDDelta1P(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief renormalization scaling of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return renormalization scaling of \f$(S+V)_{P,OK}\f$
 */
cdbl SVOKScaleRP(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief factorization scaling of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{P,OK,0\Delta}\f$
 */
cdbl SVOKScaleFP(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of factorization scaling of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{P,OK,1\Delta}\f$
 */
cdbl SVOKScaleFDelta1P(cdbl m2, cdbl q2, cdbl sp, cdbl t1);


#endif // SV_H_