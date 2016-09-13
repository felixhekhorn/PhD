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
dbl SVOKG(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,OK,1\Delta}\f$
 */
dbl SVOKDelta1G(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief double Delta-logs of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,OK,2\Delta}\f$
 */
dbl SVOKDelta2G(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief \f$(S+V)_{G,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,QED,0\Delta}\f$
 */
dbl SVQEDG(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{G,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,QED,1\Delta}\f$
 */
dbl SVQEDDelta1G(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief renormalization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return renormalization scaling of \f$(S+V)_{G,OK}\f$
 */
dbl SVOKScaleRG(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief factorization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{G,OK,0\Delta}\f$
 */
dbl SVOKScaleFG(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of factorization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{G,OK,1\Delta}\f$
 */
dbl SVOKScaleFDelta1G(dbl m2, dbl q2, dbl sp, dbl t1);
/**
 * @brief \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,OK,0\Delta}\f$
 */
dbl SVOKL(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,OK,1\Delta}\f$
 */
dbl SVOKDelta1L(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief double Delta-logs of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,OK,2\Delta}\f$
 */
dbl SVOKDelta2L(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief \f$(S+V)_{L,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,QED,0\Delta}\f$
 */
dbl SVQEDL(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{L,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,QED,1\Delta}\f$
 */
dbl SVQEDDelta1L(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief renormalization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return renormalization scaling of \f$(S+V)_{L,OK}\f$
 */
dbl SVOKScaleRL(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief factorization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{L,OK,0\Delta}\f$
 */
dbl SVOKScaleFL(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of factorization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{L,OK,1\Delta}\f$
 */
dbl SVOKScaleFDelta1L(dbl m2, dbl q2, dbl sp, dbl t1);
/**
 * @brief \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,OK,0\Delta}\f$
 */
dbl SVOKP(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,OK,1\Delta}\f$
 */
dbl SVOKDelta1P(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief double Delta-logs of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,OK,2\Delta}\f$
 */
dbl SVOKDelta2P(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief \f$(S+V)_{P,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,QED,0\Delta}\f$
 */
dbl SVQEDP(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{P,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,QED,1\Delta}\f$
 */
dbl SVQEDDelta1P(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief renormalization scaling of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return renormalization scaling of \f$(S+V)_{P,OK}\f$
 */
dbl SVOKScaleRP(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief factorization scaling of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{P,OK,0\Delta}\f$
 */
dbl SVOKScaleFP(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of factorization scaling of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{P,OK,1\Delta}\f$
 */
dbl SVOKScaleFDelta1P(dbl m2, dbl q2, dbl sp, dbl t1);


#endif // SV_H_