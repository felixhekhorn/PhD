#ifndef PHASESPACEPOINT_H
#define PHASESPACEPOINT_H

#include <rk/rk.hh>

#include "../../config.h"
#include "../ConfigExclusive.h"
#include "KinematicVars.hpp"

namespace Exclusive {

/**
 * @brief represents a single point in phase space
 */
class PhasespacePoint {
    
/**
 * @brief heavy quark mass squared \f$m^2 > 0\f$
 */
    cdbl m2;
    
/**
 * @brief virtuality of the photon \f$q^2< 0\f$
 */
    cdbl q2;
    
/**
 * @brief Bjorken scaling variable
 */
    dbl bjorkenX;
    
/**
 * @brief factors for \f$\mu_R^2\f$
 */
    DynamicScaleFactors muR2Factors;

/**
 * @brief factors for \f$\mu_F^2\f$
 */
    DynamicScaleFactors muF2Factors;
    
/**
 * @brief current z
 */
    dbl z = -0.;

/**
 * @brief kinematic vars
 */
    KinematicVars vs;

/**
 * @brief incoming parton
 */
    rk::P4 k1;

/**
 * @brief incoming photon
 */
    rk::P4 q;

/**
 * @brief outgoing heavy quark
 */
    rk::P4 p1;

/**
 * @brief outgoing heavy anti quark
 */
    rk::P4 p2;
    
/**
 * @brief shifts all vectors to the final (observatory-) frame
 */
    void applyLTsToFinalFrame();
    
/**
 * @brief computes a scale by given factors
 * @param factors
 */
    dbl getDynamicScale(DynamicScaleFactors factors) const;
    
public:
    
/**
 * @brief contstructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param muR2Factors factors for \f$\mu_R^2\f$
 * @param muF2Factors factors for \f$\mu_F^2\f$
 */
    PhasespacePoint(cdbl m2, cdbl q2, cdbl bjorkenX, DynamicScaleFactors muR2Factors, DynamicScaleFactors muF2Factors);
    
/**
 * @brief sets a LO phase space point
 * @param z actual z
 * @param Theta1 actual Theta1
 */
    void setupLO(cdbl z, cdbl Theta1);
    
/**
 * @brief sets a LO phase space point
 * @param z actual z
 * @param x actual x
 * @param y actual y
 * @param Theta1 actual Theta1
 * @param Theta2 actual Theta2
 */
    void setupNLO(cdbl z, cdbl x, cdbl y, cdbl Theta1, cdbl Theta2);
    
/**
 * @brief current z
 * @return z
 */
    dbl getZ() const;
    
/**
 * @brief momentum of outgoing heavy quark
 * @return p1
 */
    rk::P4 getP1() const;
    
/**
 * @brief momentum of outgoing heavy anti quark
 * @return p2
 */
    rk::P4 getP2() const;

/**
 * @brief computes \f$\mu_R^2\f$
 * @return \f$\mu_R^2\f$
 */
    dbl getMuR2() const;
    
/**
 * @brief computes \f$\mu_F^2\f$
 * @return \f$\mu_F^2\f$
 */
    dbl getMuF2() const;
};

} // namespace Exclusive

#endif // PHASESPACEPOINT_H
