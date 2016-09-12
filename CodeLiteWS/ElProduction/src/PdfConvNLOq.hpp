#ifndef PdfConvNLOq_H_
#define PdfConvNLOq_H_

#include "PdfConv/PdfConvBase.hpp"

/**
 * @brief NLO quark convolution
 */
class PdfConvNLOq : public PdfConvBase {

/**
 * @brief number of light flavours
 */
    uint nlf;

/**
 * @brief multiply electric quark charge?
 */
    bool multiplyElCharge;
    
/**
 * @brief pointer to matrix element
 */
    fPtr5dbl hq1;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param nlf number of light flavours
 * @param multiplyElCharge multiply electric quark charge?
 * @param hq1 pointer to matrix element
 */
    PdfConvNLOq(dbl m2, dbl q2, dbl bjorkenX, PdfWrapper* pdf, dbl muF2, uint nlf, bool multiplyElCharge, fPtr5dbl hq1) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), nlf(nlf), multiplyElCharge(multiplyElCharge), hq1(hq1){
    }
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @return \f$1/z \sum\limits_q e_q^2 \left(f_{q}(x/z,\mu_F^2) + f_{\bar{q}}(x/z,\mu_F^2)\right) h_{q}^{(1)}(\eta,\xi)\f$
 */
    dbl operator() (dbl a1, dbl a2, dbl a3) {
        this->setSp(a1);
        this->setT1(a2);
        this->setS4(a3,0.);
        dbl me = hq1(m2,q2,sp,s4,t1);
        dbl y = this->bjorkenX/z;
        dbl fqs = 0.;
        dbl e = 1.;
        for (uint q = 1; q < this->nlf + 1; ++q) {
            if (this->multiplyElCharge)
                e = getElectricCharge(q);
            fqs += e*e * (this->pdf->xfxQ2((int)q,y,this->muF2) + this->pdf->xfxQ2((int)-q,y,this->muF2));
        }
        return jac * 1./this->z * fqs * me;
    }
};

#endif // PdfConvNLOq_H_