#ifndef NLOg_H_
#define NLOg_H_

#include "config.h"

/**
 * @brief S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$c^{(1),(S+V)}_{g}\f$
 */
dbl cg1SVG(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$c^{(1),(S+V)}_{g}\f$
 */
dbl cg1SVL(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$c^{(1),(S+V)}_{g}\f$
 */
dbl cg1SVP(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$\bar {c}^{F,(1),(S+V)}_{g}\f$
 */
dbl cgBarF1SVG(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$\bar {c}^{F,(1),(S+V)}_{g}\f$
 */
dbl cgBarF1SVL(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$\bar {c}^{F,(1),(S+V)}_{g}\f$
 */
dbl cgBarF1SVP(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief renormalisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 */
dbl cgBarR1SVG(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief renormalisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 */
dbl cgBarR1SVL(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief renormalisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param t1
 * @return \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 */
dbl cgBarR1SVP(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1);

/**
 * @brief H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$c^{(1),(H)}_{g}\f$
 */
dbl cg1HG(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$c^{(1),(H)}_{g}\f$
 */
dbl cg1HL(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$c^{(1),(H)}_{g}\f$
 */
dbl cg1HP(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief factorisation logs of H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\bar {c}^{F,(1),(H)}_{g}\f$
 */
dbl cgBarF1HG(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief factorisation logs of H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\bar {c}^{F,(1),(H)}_{g}\f$
 */
dbl cgBarF1HL(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief factorisation logs of H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return \f$\bar {c}^{F,(1),(H)}_{g}\f$
 */
dbl cgBarF1HP(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

#endif // NLOg_H_