#ifndef Exclusive_PdfConvNLOq_HPP_
#define Exclusive_PdfConvNLOq_HPP_

#include "PdfConvBase.hpp"
#include "CoeffPsKers.hpp"

namespace Exclusive {

/**
 * @brief NLO quark convolution
 */
class PdfConvNLOq : public Exclusive::PdfConvBase {

/**
 * @brief number of light flavours
 */
    uint nlf;

/**
 * @brief \f$\ln(\mu_F^2/m^2)\f$
 */
    dbl lnF;

/**
 * @brief pointer to kernel ~ eH^2
 */
    PsKerCq1* cq1;

/**
 * @brief pointer to kernel ~ eL^2
 */
    PsKerDq1* dq1;

/**
 * @brief pointer to kernel ~ eH eL
 */
    PsKerOq1* oq1;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param nlf number of light flavours
 */
    PdfConvNLOq(dbl m2, dbl q2, dbl bjorkenX, PdfWrapper* pdf, dbl muF2, uint nlf, PsKerCq1* cq1, PsKerDq1* dq1, PsKerOq1* oq1) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), nlf(nlf) {
        this->lnF = log(this->muF2/this->m2);
    }
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @param a4 integration variable
 * @param a5 integration variable
 * @return \f$1/z \sum\limits_q \left(f_{q}(x/z,\mu_F^2) + f_{\bar{q}}(x/z,\mu_F^2)\right) \left(e_H^2 c_{q}^{(1)}(\eta,\xi) + e_L^2 d_{q}^{(1)}(\eta,\xi) + e_H E_L o_{q}^{(1)}(\eta,\xi)\right)\f$
 */
    dbl operator() (dbl a1, dbl a2, dbl a3, dbl a4, dbl a5) {
        // order: z,x,y,Theta1,Theta2
        this->setZ(a1);
        this->setX(a2);
        this->setY(a3);
        this->setTheta1(a4);
        this->setTheta2(a5);
        dbl r = 0.;
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

} // namespace Exclusive

#endif // Exclusive_PdfConvNLOq_HPP_