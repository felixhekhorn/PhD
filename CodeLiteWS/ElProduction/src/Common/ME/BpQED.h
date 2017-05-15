#ifndef BpQED_H_
#define BpQED_H_

#include "../../config.h"

namespace Common {
    
/**
 * @brief Born contribution in G-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @return \f$B'_{QED,G}\f$
 */
cdbl BpQEDG(cdbl m2, cdbl q2, cdbl sp, cdbl t1);
    
/**
 * @brief Born contribution in L-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @return \f$B'_{QED,L}\f$
 */
cdbl BpQEDL(cdbl m2, cdbl q2, cdbl sp, cdbl t1);
    
/**
 * @brief Born contribution in P-Projection
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param t1 \f$t_1\f$
 * @return \f$B'_{QED,P}\f$
 */
cdbl BpQEDP(cdbl m2, cdbl q2, cdbl sp, cdbl t1);

} // namespace Exclusive


#endif // BpQED_H_