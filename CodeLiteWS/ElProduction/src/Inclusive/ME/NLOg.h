/**
 * @file NLOg.h
 * @brief defines all kernels to NLO gluon cross sections for all projections
 */
 
#ifndef NLOg_H_
#define NLOg_H_

#include "../../config.h"

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
cdbl cg1SVG(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,0\Delta}\f$
 */
cdbl cg1SVL(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,0\Delta}\f$
 */
cdbl cg1SVP(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,1\Delta}\f$
 */
cdbl cg1SVDelta1G(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,1\Delta}\f$
 */
cdbl cg1SVDelta1L(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,1\Delta}\f$
 */
cdbl cg1SVDelta1P(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief double Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,2\Delta}\f$
 */
cdbl cg1SVDelta2G(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief double Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,2\Delta}\f$
 */
cdbl cg1SVDelta2L(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief double Delta-logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$c^{(1),(S+V)}_{g,2\Delta}\f$
 */
cdbl cg1SVDelta2P(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief renormalisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 */
cdbl cgBarR1SVG(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief renormalisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 */
cdbl cgBarR1SVL(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief renormalisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 */
cdbl cgBarR1SVP(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,0\Delta}\f$
 */
cdbl cgBarF1SVG(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,0\Delta}\f$
 */
cdbl cgBarF1SVL(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,0\Delta}\f$
 */
cdbl cgBarF1SVP(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-log of factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,1\Delta}\f$
 */
cdbl cgBarF1SVDelta1G(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-log of factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,1\Delta}\f$
 */
cdbl cgBarF1SVDelta1L(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

/**
 * @brief Delta-log of factorisation logs of S+V part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,1\Delta}\f$
 */
cdbl cgBarF1SVDelta1P(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

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
cdbl cg1HG(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel of \f$c^{(1),(H)}_{g}\f$
 */
cdbl cg1HL(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel of \f$c^{(1),(H)}_{g}\f$
 */
cdbl cg1HP(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief factorisation logs of H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(H)}_{g}\f$
 */
cdbl cgBarF1HG(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief factorisation logs of H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(H)}_{g}\f$
 */
cdbl cgBarF1HL(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

/**
 * @brief factorisation logs of H part of NLO gluon contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param s4
 * @param t1
 * @return kernel of \f$\bar {c}^{F,(1),(H)}_{g}\f$
 */
cdbl cgBarF1HP(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1);

///@}

#endif // NLOg_H_