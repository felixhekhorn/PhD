#ifndef CoeffPsKerNLOq_HPP_
#define CoeffPsKerNLOq_HPP_

#include "PdfConvNLOq.h"

namespace Exclusive {

/**
 * @brief exclusive phasespace kernel for \f$c_{q}^{(1)}\f$
 */
class PsKerCq1 : public PdfConvNLOq {
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 * @param omega collinear factorisation parameter \f$\omega\f$
 * @param deltay offset to lower integration bound in y \f$\delta_y\f$
 */
    PsKerCq1(cdbl m2, cdbl q2, cdbl sp, cdbl omega, cdbl deltay) : PdfConvNLOq(m2,q2,0.,0,omega,deltay) {
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
    dbl operator() (cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2) {
        this->setX(ax);
        this->setY(ay);
        this->setTheta1(aTheta1);
        this->setTheta2(aTheta2);
        cdbl r = this->cq1().tot();
        return isfinite(r) ? r : 0.;
    }
};

/**
 * @brief exclusive phasespace kernel for \f$\bar c_{q}^{F,(1)}\f$
 */
class PsKerCqBarF1 : public PdfConvNLOq {
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 */
    PsKerCqBarF1(dbl m2, dbl q2, dbl sp, cdbl omega, cdbl deltay) : PdfConvNLOq(m2,q2,0.,0,omega,deltay) {
        this->setSpRaw(sp);
    }
    
    
/**
 * @brief called function
 * @param ax integration variable mapped on x
 * @param aTheta1 integration variable mapped on Theta1
 * @return kernel
 */
    dbl operator() (cdbl ax, cdbl aTheta1) {
        this->setX(ax);
        this->setTheta1(aTheta1);
        cdbl r = this->cqBarF1().tot();
        return isfinite(r) ? r : 0.;
    }
};

/**
 * @brief exclusive phasespace kernel for \f$d_{q}^{(1)}\f$
 */
class PsKerDq1 : public PdfConvNLOq {
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 * @param Ap2 pointer to ME
 */
    PsKerDq1(dbl m2, dbl q2, dbl sp, fPtr7dbl Ap2) : PdfConvNLOq(m2,q2,0.,0,0.,0.) {
        this->setSpRaw(sp);
        this->setAp2(Ap2);
    };
    
/**
 * @brief called function
 * @param ax integration variable mapped on x
 * @param ay integration variable mapped on y
 * @param aTheta1 integration variable mapped on Theta1
 * @param aTheta2 integration variable mapped on Theta2
 * @return kernel
 */
    dbl operator() (cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2) {
        this->setX(ax);
        this->setY(ay);
        this->setTheta1(aTheta1);
        this->setTheta2(aTheta2);
        cdbl r = this->dq1().tot();
        return isfinite(r) ? r : 0.;
    }
};

} // namespace Exclusive


#endif // CoeffPsKerNLOq_HPP_