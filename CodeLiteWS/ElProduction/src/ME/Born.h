/**
 * @file Born.h
 * @brief defines LO cross sections for all projections
 */

#ifndef Born_H_
#define Born_H_

#include "../config.h"

/**
 * @brief LO contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @return \f$c_{g,0}\f$
 */
cdbl cg0G(cdbl m2, cdbl q2, cdbl sp);

/**
 * @brief LO contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @return \f$c_{g,0}\f$
 */
cdbl cg0L(cdbl m2, cdbl q2, cdbl sp);

/**
 * @brief LO contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @return \f$c_{g,0}\f$
 */
cdbl cg0P(cdbl m2, cdbl q2, cdbl sp);


#endif // Born_H_