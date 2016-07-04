#ifndef SV_H_
#define SV_H_

/**
 * @brief \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$(S+V)_{G,OK}\f$
 */
dbl SVOKG(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief \f$(S+V)_{G,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$(S+V)_{G,QED}\f$
 */
dbl SVQEDG(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$(S+V)_{L,OK}\f$
 */
dbl SVOKL(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief \f$(S+V)_{L,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$(S+V)_{L,QED}\f$
 */
dbl SVQEDL(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief renormalization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return renormalization scaling of \f$(S+V)_{G,OK}\f$
 */
dbl SVOKGScaleR(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief factorization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{G,OK}\f$
 */
dbl SVOKGScaleF(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief renormalization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return renormalization scaling of \f$(S+V)_{L,OK}\f$
 */
dbl SVOKLScaleR(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief factorization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return factorization scaling of \f$(S+V)_{L,OK}\f$
 */
dbl SVOKLScaleF(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

#endif // SV_H_