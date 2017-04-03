#ifndef CoeffPsKerNLOg_HPP_
#define CoeffPsKerNLOg_HPP_

#include "PdfConvNLOg.h"

namespace Exclusive {

/**
 * @brief exclusive phasespace kernel for \f$c_{g}^{(1)}\f$
 */
class PsKerCg1 : public PdfConvNLOg {
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltax offset to upper integration bound in x \f$\delta_x\f$
 * @param deltay offset to lower integration bound in y \f$\delta_y\f$
 */
    PsKerCg1(cdbl m2, cdbl q2, cdbl sp, cdbl xTilde, cdbl omega, cdbl deltax, cdbl deltay) : PdfConvNLOg(m2,q2,0.,0,xTilde,omega,deltax,deltay) {
        this->setSpRaw(sp);
    }
    
    
/**
 * @brief called function
 * @param ax integration variable mapped on x
 * @param ay integration variable mapped on y
 * @param aTheta1 integration variable mapped on Theta1
 * @param aTheta2 integration variable mapped on Theta2
 * @return kernel
 */
    cdbl operator() (cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2) {
        this->setX(ax);
        this->setY(ay);
        this->setTheta1(aTheta1);
        this->setTheta2(aTheta2);
        cdbl r = this->cg1().tot();
        return isfinite(r) ? r : 0.;
    }
};

/**
 * @brief exclusive phasespace kernel for \f$\bar c_{g}^{R,(1)}\f$
 */
class PsKerCgBarR1 : public PdfConvNLOg {
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 * @param nlf number of light flavours
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltax offset to upper integration bound in x \f$\delta_x\f$
 * @param deltay offset to lower integration bound in y \f$\delta_y\f$
 */
    PsKerCgBarR1(cdbl m2, cdbl q2, cdbl sp, uint nlf, cdbl xTilde, cdbl omega, cdbl deltax, cdbl deltay) : PdfConvNLOg(m2,q2,0.,nlf,xTilde,omega,deltax,deltay) {
        this->setSpRaw(sp);
    }
    
    
/**
 * @brief called function
 * @param ax integration variable mapped on x
 * @param aTheta1 integration variable mapped on Theta1
 * @return kernel
 */
    cdbl operator() (cdbl ax, cdbl aTheta1) {
        this->setX(ax);
        this->setTheta1(aTheta1);
        cdbl r = this->cgBarR1().tot();
        return isfinite(r) ? r : 0.;
    }
};

/**
 * @brief exclusive phasespace kernel for \f$\bar c_{g}^{F,(1)}\f$
 */
class PsKerCgBarF1 : public PdfConvNLOg {
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 * @param nlf number of light flavours
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltax offset to upper integration bound in x \f$\delta_x\f$
 * @param deltay offset to lower integration bound in y \f$\delta_y\f$
 */
    PsKerCgBarF1(cdbl m2, cdbl q2, cdbl sp, uint nlf, cdbl xTilde, cdbl omega, cdbl deltax, cdbl deltay) : PdfConvNLOg(m2,q2,0.,nlf,xTilde,omega,deltax,deltay) {
        this->setSpRaw(sp);
    }
    
    
/**
 * @brief called function
 * @param ax integration variable mapped on x
 * @param ay integration variable mapped on y
 * @param aTheta1 integration variable mapped on Theta1
 * @return kernel
 */
    cdbl operator() (cdbl ax, cdbl ay, cdbl aTheta1) {
        this->setX(ax);
        this->setY(ay);
        this->setTheta1(aTheta1);
        cdbl r = this->cgBarF1().tot();
        return isfinite(r) ? r : 0.;
    }
};

} // namespace Exclusive


#endif // CoeffPsKerNLOg_HPP_