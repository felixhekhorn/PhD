#ifndef SVp_H_
#define SVp_H_

#include "../../config.h"

namespace Exclusive {

/**
 * @brief \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return \f$(S+V)_{G,OK}\f$
 */
cdbl SVOKpG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);

/**
 * @brief \f$(S+V)_{G,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return \f$(S+V)_{G,QED}\f$
 */
cdbl SVQEDpG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);

/**
 * @brief renormalization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return renormalization scaling of \f$(S+V)_{G,OK}\f$
 */
cdbl SVOKpScaleRG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);

/**
 * @brief factorization scaling of \f$(S+V)_{G,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return factorization scaling of \f$(S+V)_{G,OK}\f$
 */
cdbl SVOKpScaleFG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);
/**
 * @brief \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return \f$(S+V)_{L,OK}\f$
 */
cdbl SVOKpL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);

/**
 * @brief \f$(S+V)_{L,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return \f$(S+V)_{L,QED}\f$
 */
cdbl SVQEDpL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);

/**
 * @brief renormalization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return renormalization scaling of \f$(S+V)_{L,OK}\f$
 */
cdbl SVOKpScaleRL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);

/**
 * @brief factorization scaling of \f$(S+V)_{L,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return factorization scaling of \f$(S+V)_{L,OK}\f$
 */
cdbl SVOKpScaleFL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);
/**
 * @brief \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return \f$(S+V)_{P,OK}\f$
 */
cdbl SVOKpP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);

/**
 * @brief \f$(S+V)_{P,QED}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return \f$(S+V)_{P,QED}\f$
 */
cdbl SVQEDpP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);

/**
 * @brief renormalization scaling of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return renormalization scaling of \f$(S+V)_{P,OK}\f$
 */
cdbl SVOKpScaleRP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);

/**
 * @brief factorization scaling of \f$(S+V)_{P,OK}\f$
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1
 * @param betaTil \f$\tilde\beta$\f x-regulating parameter
 * @return factorization scaling of \f$(S+V)_{P,OK}\f$
 */
cdbl SVOKpScaleFP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil);


} // namespace Exclusive

#endif // SVp_H_