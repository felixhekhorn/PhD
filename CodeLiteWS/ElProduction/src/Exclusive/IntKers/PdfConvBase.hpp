#ifndef Exclusive_PdfConvBase_HPP_
#define Exclusive_PdfConvBase_HPP_

#include "../../config.h"
#include "../../Pdf/PdfWrapper.h"

namespace Exclusive {

/**
 * @brief Abstract base class for convolution with PDFs
 */
class PdfConvBase {
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
    PdfWrapper* pdf;

/**
 * @brief factorisation scale \f$\mu_F^2\f$
 */
    dbl muF2;
    
/**
 * @brief current momentum fraction
 */
    dbl z;
    
/**
 * @brief current \f$s'\f$
 */
    dbl sp;
    
/**
 * @brief upper z-integration limit
 */
    dbl zMax;

/**
 * @brief jacobian for z
 */
    dbl jacZ;

/**
 * @brief lower x intergation bound \f$\rho^*\f$
 */
    dbl rhoStar;

/**
 * @brief soft regulation parameter \f$\tilde x\f$
 */
    dbl xTilde;

/**
 * @brief soft regulation parameter \f$\tilde\rho\f$
 */
    dbl rhoTilde;
    
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
    dbl jacxE;
    
/**
 * @brief current x for event
 */
    dbl xE;
    
/**
 * @brief jacobian for x for counter event
 */
    dbl jacxC;
    
/**
 * @brief current x for counter event
 */
    dbl xC;
    
/**
 * @brief jacobian for y for event
 */
    dbl jacyE;
    
/**
 * @brief current y for event
 */
    dbl yE;
    
/**
 * @brief jacobian for y for counter event
 */
    dbl jacyC;
    
/**
 * @brief current y for counter event
 */
    dbl yC;

/**
 * @brief current Theta1
 */ 
    dbl Theta1;

/**
 * @brief jacobian for Theta1
 */ 
    cdbl jacTheta1;

/**
 * @brief current Theta2
 */ 
    dbl Theta2;

/**
 * @brief jacobian for Theta2
 */ 
    cdbl jacTheta2;

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltax offset to upper integration bound in x
 * @param deltay offset to lower integration bound in y
 */
    PdfConvBase(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay) :
        m2(m2), q2(q2), bjorkenX(bjorkenX), nlf(nlf), pdf(0), muF2(0),
        z(-0.), sp(-0.), rhoStar(-0.),
        xTilde(xTilde), rhoTilde(-0.),omega(omega), deltax(deltax), deltay(deltay),
        jacxE(-0.),xE(-0.),jacxC(-0.),xC(-0.),
        jacyE(-0.),yE(-0.),jacyC(-0.),yC(-0.),
        Theta1(-0.), jacTheta1(M_PI), Theta2(-0.), jacTheta2(M_PI){
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
        this->jacxE = xmax - this->rhoStar;
        this->rhoTilde = 1. - this->xTilde*(1. - this->rhoStar);
        this->jacxC = xmax - this->rhoTilde;
    }

/**
 * @brief sets x by integration
 * @param a integration variable
 */
    void setX(dbl a) {
        this->xE = this->rhoStar + this->jacxE*a;
        this->xC = this->rhoTilde + this->jacxC*a;
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