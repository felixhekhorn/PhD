#ifndef PdfConvNLOg_H_
#define PdfConvNLOg_H_

#include "PdfConvBase.hpp"

/**
 * @brief NLO gluon convolution
 */
class PdfConvNLOg : public PdfConvBase {
    
/**
 * @brief energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 */
    dbl Delta;
    
/**
 * @brief pointer to S+V matrix element
 */
    fPtr4dbl hg1SV;
    
/**
 * @brief pointer to Delta-logs of S+V matrix element
 */
    fPtr4dbl hg1SVDelta1;
    
/**
 * @brief pointer to double Delta-logs of S+V matrix element
 */
    fPtr4dbl hg1SVDelta2;
    
/**
 * @brief pointer to hard matrix element
 */
    fPtr5dbl hg1H;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 * @param hg1SV pointer to S+V matrix element
 * @param hg1SVDelta1 pointer to Delta-logs of S+V matrix element
 * @param hg1SVDelta2 pointer to double Delta-logs of S+V matrix element
 * @param hg1H pointer to hard matrix element
 */
    PdfConvNLOg(dbl m2, dbl q2, dbl bjorkenX, PdfWrapper* pdf, dbl muF2, dbl Delta, fPtr4dbl hg1SV, fPtr4dbl hg1SVDelta1, fPtr4dbl hg1SVDelta2, fPtr5dbl hg1H) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), Delta(Delta), hg1SV(hg1SV), hg1SVDelta1(hg1SVDelta1), hg1SVDelta2(hg1SVDelta2), hg1H(hg1H){
    }
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @return \f$1/z f_{g}(x/z,\mu_F^2) h_{g}^{(1)}(\eta,\xi)\f$
 */
    dbl operator() (dbl a1, dbl a2, dbl a3) {
        this->setSp(a1);
        this->setT1(a2);
        this->setS4(a3,Delta);
        dbl A0 = 1./(s4max - Delta);
        dbl fakeMESV = hg1SV(m2,q2,sp,t1) * A0;
        
        dbl A1 = log(s4max/m2)/(s4max - Delta) - 1./s4;
        fakeMESV += hg1SVDelta1(m2,q2,sp,t1) * A1;
        
        if (0 != hg1SVDelta2) {
            dbl A2 = pow(log(s4max/m2),2)/(s4max - Delta) - 2.*log(s4/m2)/s4;
            fakeMESV += hg1SVDelta2(m2,q2,sp,t1) * A2;
        }
        dbl meH = hg1H(m2,q2,sp,s4,t1);
        return jac * 1./this->z * this->pdf->xfxQ2(21,this->bjorkenX/z,this->muF2) * (meH + fakeMESV);
    }
};

#endif // PdfConvNLOg_H_