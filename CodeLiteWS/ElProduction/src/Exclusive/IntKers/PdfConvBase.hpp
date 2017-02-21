#ifndef Exclusive_PdfConvBase_HPP_
#define Exclusive_PdfConvBase_HPP_

#include "../../config.h"
#include "../../Pdf/PdfWrapper.h"

namespace Exclusive {

/**
 * @brief Abstract base class for convolution with PDFs
 */
class PdfConvBase {

/**
 * @brief lower x intergation bound \f$\rho^*\f$
 */
    dbl rhoStar = -0.;
    
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
    dbl xE = -0.;
    
/**
 * @brief jacobian for x for counter event
 */
    dbl jacxC = -0.;
    
/**
 * @brief current x for counter event
 */
    dbl xC = -0.;
    
/**
 * @brief jacobian for y for event
 */
    dbl jacyE = -0.;
    
/**
 * @brief current y for event
 */
    dbl yE = -0.;
    
/**
 * @brief jacobian for y for counter event
 */
    dbl jacyC = -0.;
    
/**
 * @brief current y for counter event
 */
    dbl yC = -0.;

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
    PdfConvBase(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay) :
        m2(m2), q2(q2), bjorkenX(bjorkenX), nlf(nlf), xTilde(xTilde), omega(omega), deltax(deltax), deltay(deltay){
        this->zMax = -q2/(4.*m2 - q2);
        this->jacZ = this->zMax - this->bjorkenX;
        cdbl ymin = -1.+deltay;
        this->jacyE = 1. - ymin;
        this->jacyC = (-1. + omega) - ymin;
    }

/**
 * @brief sets z (and  s') by integration
 * @param a integration variable
 */
    void setZ(dbl a) {
        this->z = this->bjorkenX + this->jacZ*a;
        this->setSpRaw(-q2/z);
    }
    
/**
 * @brief sets raw s' and its dependences
 * @param sp
 */
    void setSpRaw(dbl sp) {
        this->sp = sp;
        this->rhoStar = (4.*m2 - q2)/this->sp;
        cdbl xmax = 1. - this->deltax;
        this->VxE = xmax - this->rhoStar;
        this->rhoTilde = 1. - this->xTilde*(1. - this->rhoStar);
        this->VxC = xmax - this->rhoTilde;
    }

/**
 * @brief sets x by integration
 * @param a integration variable
 */
    void setX(dbl a) {
        //cdbl xmax = 1. - this->deltax;
        this->jacxE = 2. * this->VxE * a;
        this->jacxC = 2. * this->VxC * a;
        this->xE = rhoStar  + this->VxE * a*a;
        this->xC = rhoTilde + this->VxC * a*a;
        /*this->jacxE = this->VxE ;
        this->jacxC = this->VxC ;
        this->xE = rhoStar  + this->VxE * a;
        this->xC = rhoTilde + this->VxC * a;*/
    }

/**
 * @brief sets y by integration
 * @param a integration variable
 */
    void setY(dbl a) {
        cdbl ymin = -1. + this->deltay;
        this->yE = ymin + this->jacyE*a;
        this->yC = ymin + this->jacyC*a;
    }

/**
 * @brief sets Theta1 by integration
 * @param a integration variable
 */
    void setTheta1(dbl a) {
        this->Theta1 = this->jacTheta1*a;
    }

/**
 * @brief sets Theta2 by integration
 * @param a integration variable
 */
    void setTheta2(dbl a) {
        this->Theta2 = this->jacTheta2*a;
    }
    
public:
    
/**
 * @brief sets pdf and muF2
 * @param pdf parton distribution function
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 */
    void setPdf(PdfWrapper* pdf, dbl muF2) {
        this->pdf = pdf;
        this->muF2 = muF2;
    }
};

} // namespace Exclusive

#endif // Exclusive_PdfConvBase_HPP_