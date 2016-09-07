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
    fPtr5dbl hg1SV;
    
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
 * @param hg1H pointer to hard matrix element
 */
    PdfConvNLOg(dbl m2, dbl q2, dbl bjorkenX, LHAPDF::PDF* pdf, dbl muF2, dbl Delta, fPtr5dbl hg1SV, fPtr5dbl hg1H) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), Delta(Delta), hg1SV(hg1SV), hg1H(hg1H){
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
        dbl meSV = hg1SV(m2,q2,sp,Delta,t1);
        dbl meH = hg1H(m2,q2,sp,s4,t1);
        return jac * 1./this->z * this->pdf->xfxQ2(21,this->bjorkenX/z,this->muF2) * (meH + meSV/(s4max - Delta));
    }
};

#endif // PdfConvNLOg_H_