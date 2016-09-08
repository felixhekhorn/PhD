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
 * @brief \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{L,OK}\f$
 */
dbl SVOKL(dbl m2, dbl q2, dbl sp, dbl t1);

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
 * @brief \f$(S+V)_{G,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{G,QED}\f$
 */
dbl SVQEDG(dbl m2, dbl q2, dbl sp, dbl t1);

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
 * @brief \f$(S+V)_{P,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return \f$(S+V)_{P,QED}\f$
 */
dbl SVQEDP(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief renormalization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return renormalization scaling of \f$(S+V)_{G,OK}\f$
 */
dbl SVOKGScaleR(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief factorization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{G,OK}\f$
 */
dbl SVOKGScaleF(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief renormalization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return renormalization scaling of \f$(S+V)_{L,OK}\f$
 */
dbl SVOKLScaleR(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief factorization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{L,OK}\f$
 */
dbl SVOKLScaleF(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief renormalization scaling of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return renormalization scaling of \f$(S+V)_{P,OK}\f$
 */
dbl SVOKPScaleR(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief factorization scaling of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{P,OK}\f$
 */
dbl SVOKPScaleF(dbl m2, dbl q2, dbl sp, dbl t1);

#endif // SV_H_