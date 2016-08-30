#ifndef Born_H_
#define Born_H_

#include "config.h"

/**
 * @brief LO contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @return \f$c_{g,0}\f$
 */
dbl cg0G(dbl m2, dbl q2, dbl sp);

/**
 * @brief LO contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @return \f$c_{g,0}\f$
 */
dbl cg0L(dbl m2, dbl q2, dbl sp);

/**
 * @brief LO contribution
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @return \f$c_{g,0}\f$
 */
dbl cg0P(dbl m2, dbl q2, dbl sp);


#endif // Born_H_