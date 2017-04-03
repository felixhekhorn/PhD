#ifndef Inclusive_PdfConvNLOq_H_
#define Inclusive_PdfConvNLOq_H_

#include "PdfConvBase.hpp"

namespace Inclusive {

/**
 * @brief NLO quark convolution
 */
class PdfConvNLOq : public PdfConvBase {

/**
 * @brief number of light flavours
 */
    uint nlf;

/**
 * @brief \f$\ln(\mu_F^2/m^2)\f$
 */
    dbl lnF;
    
/**
 * @brief pointer to eH2 matrix element
 */
    fPtr5dbl cq1 = 0;
    
/**
 * @brief pointer to factorisation logs of eH2 matrix element
 */
    fPtr5dbl cqBarF1 = 0;
    
/**
 * @brief pointer to eL2 matrix element
 */
    fPtr5dbl dq1 = 0;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param nlf number of light flavours
 * @param cq1 pointer to eH2 matrix element
 * @param cqBarF1 pointer to factorisation logs of eH2 matrix element
 * @param dq1 pointer to eL2 matrix element
 */
    PdfConvNLOq(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, uint nlf, fPtr5dbl cq1, fPtr5dbl cqBarF1, fPtr5dbl dq1) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), nlf(nlf), cq1(cq1), cqBarF1(cqBarF1), dq1(dq1) {
        this->lnF = log(this->muF2/this->m2);
    }
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @return \f$1/z \sum\limits_q \left(f_{q}(x/z,\mu_F^2) + f_{\bar{q}}(x/z,\mu_F^2)\right) \left(e_H^2 c_{q}^{(1)}(\eta,\xi) + e_q^2 d_{q}^{(1)}(\eta,\xi)\right)\f$
 */
    cdbl operator() (cdbl a1, cdbl a2, cdbl a3) {
        this->setSp(a1);
        this->setT1(a2);
        this->setS4(a3,0.);
        cdbl meCq1 = cq1(m2,q2,sp,s4,t1) + this->lnF * cqBarF1(m2,q2,sp,s4,t1);
        cdbl meDq1 = dq1(m2,q2,sp,s4,t1);
        cdbl xi = this->bjorkenX/z;
        dbl fqs = 0.;
        cdbl eH = getElectricCharge(this->nlf + 1);
        for (uint q = 1; q < this->nlf + 1; ++q) {
            cdbl eL = getElectricCharge(q);
            fqs += (this->pdf->xfxQ2((int)q,xi,this->muF2) + this->pdf->xfxQ2(-((int)q),xi,this->muF2))*(eH*eH*meCq1 + eL*eL*meDq1);
        }
        cdbl r = jac * 1./this->z * fqs;
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

} // namespace Inclusive

#endif // Inclusive_PdfConvNLOq_H_