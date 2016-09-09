/**
 * @file NLOg.h
 * @brief defines all kernels to NLO gluon cross sections for all projections
 */
 
#ifndef NLOg_H_
#define NLOg_H_

#include "config.h"

/** @name soft+virtual contributions */
///@{

/**
 * @brief S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,0\Delta}\f$
 */
dbl cg1SVG(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,0\Delta}\f$
 */
dbl cg1SVL(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,0\Delta}\f$
 */
dbl cg1SVP(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,1\Delta}\f$
 */
dbl cg1SVDelta1G(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,1\Delta}\f$
 */
dbl cg1SVDelta1L(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,1\Delta}\f$
 */
dbl cg1SVDelta1P(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief double Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,2\Delta}\f$
 */
dbl cg1SVDelta2G(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief double Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,2\Delta}\f$
 */
dbl cg1SVDelta2L(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief double Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,2\Delta}\f$
 */
dbl cg1SVDelta2P(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief renormalisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 */
dbl cgBarR1SVG(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief renormalisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 */
dbl cgBarR1SVL(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief renormalisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 */
dbl cgBarR1SVP(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,0\Delta}\f$
 */
dbl cgBarF1SVG(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,0\Delta}\f$
 */
dbl cgBarF1SVL(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,0\Delta}\f$
 */
dbl cgBarF1SVP(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-log of factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,1\Delta}\f$
 */
dbl cgBarF1SVDelta1G(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-log of factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,1\Delta}\f$
 */
dbl cgBarF1SVDelta1L(dbl m2, dbl q2, dbl sp, dbl t1);

/**
 * @brief Delta-log of factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,1\Delta}\f$
 */
dbl cgBarF1SVDelta1P(dbl m2, dbl q2, dbl sp, dbl t1);

///@}

/** @name hard contributions */
///@{

/**
 * @brief H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel of \f$c^{(1),(H)}_{g}\f$
 */
dbl cg1HG(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel of \f$c^{(1),(H)}_{g}\f$
 */
dbl cg1HL(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel of \f$c^{(1),(H)}_{g}\f$
 */
dbl cg1HP(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief factorisation logs of H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(H)}_{g}\f$
 */
dbl cgBarF1HG(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief factorisation logs of H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(H)}_{g}\f$
 */
dbl cgBarF1HL(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

/**
 * @brief factorisation logs of H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(H)}_{g}\f$
 */
dbl cgBarF1HP(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

///@}

#endif // NLOg_H_