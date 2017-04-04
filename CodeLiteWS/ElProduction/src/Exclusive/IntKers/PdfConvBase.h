#ifndef Exclusive_PdfConvBase_HPP_
#define Exclusive_PdfConvBase_HPP_

#include "../../config.h"
#include "../ConfigExclusive.h"
#include "../../Pdf/PdfWrapper.h"

namespace Exclusive {

/**
 * @brief Abstract base class for convolution with PDFs
 */
class PdfConvBase {
    
/**
 * @brief upper integration limit for x
 */
    dbl xmax = 1.;
    
/**
 * @brief volume of x-for-event space
 */
    dbl VxE = -0.;
    
/**
 * @brief volume of x-for-counter-event space
 */
    dbl VxC = -0.;
    
protected:

/**
 * @brief lower x intergation bound \f$\rho^*\f$
 */
    dbl rhoStar = -0.;

/**
 * @brief heavy quark mass squared \f$m^2 > 0\f$
 */
    dbl m2;
    
/**
 * @brief virtuality of the photon \f$q^2< 0\f$
 */
    dbl q2;
    
/**
 * @brief Bjorken scaling variable
 */
    dbl bjorkenX;

/**
 * @brief number of light flavours
 */
    uint nlf;
    
/**
 * @brief parton distribution functions
 */
    PdfWrapper* pdf = 0;

/**
 * @brief factorisation scale \f$\mu_F^2\f$
 */
    dbl muF2 = -0.;
    
/**
 * @brief current momentum fraction
 */
    dbl z = -0.;
    
/**
 * @brief current \f$s'\f$
 */
    dbl sp = -0.;
    
/**
 * @brief upper z-integration limit
 */
    dbl zMax;

/**
 * @brief jacobian for z
 */
    dbl jacZ;

/**
 * @brief soft regulation parameter \f$\tilde x\f$
 */
    dbl xTilde;

/**
 * @brief soft regulation parameter \f$\tilde\rho\f$
 */
    dbl rhoTilde = -0.;
    
/**
 * @brief collinear regulation parameter \f$\omega\f$
 */
    dbl omega;
    
/**
 * @brief offset to upper integration bound in x \f$\delta_x\f$
 */
    dbl deltax;
    
/**
 * @brief offset to lower integration bound in y \f$\delta_y\f$
 */
    dbl deltay;
    
/**
 * @brief jacobian for x for event
 */
    dbl jacxE = -0.;
    
/**
 * @brief current x for event
 */
    dbl xE = 1.;
    
/**
 * @brief jacobian for x for counter event
 */
    dbl jacxC = -0.;
    
/**
 * @brief current x for counter event
 */
    dbl xC = 1.;
    
/**
 * @brief jacobian for y for event
 */
    dbl jacyE = -0.;
    
/**
 * @brief current y for event
 */
    dbl yE = -1.;
    
/**
 * @brief jacobian for y for counter event
 */
    dbl jacyC = -0.;
    
/**
 * @brief current y for counter event
 */
    dbl yC = -1.;

/**
 * @brief current Theta1
 */ 
    dbl Theta1 = -0.;

/**
 * @brief jacobian for Theta1
 */ 
    cdbl jacTheta1 = M_PI;

/**
 * @brief current Theta2
 */ 
    dbl Theta2 = -0.;

/**
 * @brief jacobian for Theta2
 */ 
    cdbl jacTheta2 = M_PI;

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param nlf number of light flavours
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltax offset to upper integration bound in x
 * @param deltay offset to lower integration bound in y
 */
    PdfConvBase(cdbl m2, cdbl q2, cdbl bjorkenX, const uint nlf, cdbl xTilde, cdbl omega, cdbl deltax, cdbl deltay);

/**
 * @brief sets z (and  s') by integration
 * @param a integration variable
 */
    void setZ(cdbl a);
    
/**
 * @brief sets raw s' and its dependences
 * @param sp
 */
    void setSpRaw(cdbl sp);

/**
 * @brief sets x by integration
 * @param a integration variable
 */
    void setX(cdbl a);

/**
 * @brief sets y by integration
 * @param a integration variable
 */
    void setY(cdbl a);

/**
 * @brief sets Theta1 by integration
 * @param a integration variable
 */
    void setTheta1(cdbl a);

/**
 * @brief sets Theta2 by integration
 * @param a integration variable
 */
    void setTheta2(cdbl a);
    
public:
    
/**
 * @brief sets pdf 
 * @param pdf parton distribution function
 */
    void setPdf(PdfWrapper* pdf);
    
/**
 * @brief sets factorisation scale \f$\mu_F^2\f$
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 */
    virtual void setMuF2(cdbl muF2);
};

} // namespace Exclusive

#endif // Exclusive_PdfConvBase_HPP_