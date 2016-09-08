#ifndef SV_H_
#define SV_H_

/**
 * @brief \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,OK}\f$
 */
dbl SVOKG(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$\left.(S+V)_{G,OK}\right|_{\ln(\Delta/m^2)}\f$
 */
dbl SVOKDelta1G(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief double Delta-logs of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$\left.(S+V)_{G,OK}\right|_{\ln^2(\Delta/m^2)}\f$
 */
dbl SVOKDelta2G(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief \f$(S+V)_{G,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,QED}\f$
 */
dbl SVQEDG(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{G,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$\left.(S+V)_{G,QED}\right|_{\ln(\Delta/m^2)}\f$
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
 * @return factorization scaling of \f$(S+V)_{G,OK}\f$
 */
dbl SVOKScaleFG(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of factorization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$\left.(S+V)_{G,OK}\right|_{\ln(\Delta/m^2)}\f$
 */
dbl SVOKScaleFDelta1G(dbl m2, dbl q2, dbl sp, dbl t1);
/**
 * @brief \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,OK}\f$
 */
dbl SVOKL(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$\left.(S+V)_{L,OK}\right|_{\ln(\Delta/m^2)}\f$
 */
dbl SVOKDelta1L(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief double Delta-logs of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$\left.(S+V)_{L,OK}\right|_{\ln^2(\Delta/m^2)}\f$
 */
dbl SVOKDelta2L(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief \f$(S+V)_{L,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,QED}\f$
 */
dbl SVQEDL(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{L,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$\left.(S+V)_{L,QED}\right|_{\ln(\Delta/m^2)}\f$
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
 * @return factorization scaling of \f$(S+V)_{L,OK}\f$
 */
dbl SVOKScaleFL(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of factorization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$\left.(S+V)_{L,OK}\right|_{\ln(\Delta/m^2)}\f$
 */
dbl SVOKScaleFDelta1L(dbl m2, dbl q2, dbl sp, dbl t1);
/**
 * @brief \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,OK}\f$
 */
dbl SVOKP(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$\left.(S+V)_{P,OK}\right|_{\ln(\Delta/m^2)}\f$
 */
dbl SVOKDelta1P(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief double Delta-logs of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$\left.(S+V)_{P,OK}\right|_{\ln^2(\Delta/m^2)}\f$
 */
dbl SVOKDelta2P(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief \f$(S+V)_{P,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,QED}\f$
 */
dbl SVQEDP(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of \f$(S+V)_{P,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$\left.(S+V)_{P,QED}\right|_{\ln(\Delta/m^2)}\f$
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
 * @return factorization scaling of \f$(S+V)_{P,OK}\f$
 */
dbl SVOKScaleFP(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of factorization scaling of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$\left.(S+V)_{P,OK}\right|_{\ln(\Delta/m^2)}\f$
 */
dbl SVOKScaleFDelta1P(dbl m2, dbl q2, dbl sp, dbl t1);


#endif // SV_H_