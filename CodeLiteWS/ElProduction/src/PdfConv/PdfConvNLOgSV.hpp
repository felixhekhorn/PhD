#ifndef PdfConvNLOgSV_H_
#define PdfConvNLOgSV_H_

#include "PdfConvBase.hpp"

/**
 * @brief NLO gluon convolution with S+V part
 */
class PdfConvNLOgSV : public PdfConvBase {
    
/**
 * @brief energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 */
    dbl Delta;
    
/**
 * @brief pointer to matrix element
 */
    fPtr4dbl hg1SV;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 * @param hg1SV pointer to matrix element
 */
    PdfConvNLOgSV(dbl m2, dbl q2, dbl bjorkenX, PdfWrapper* pdf, dbl muF2, dbl Delta, fPtr4dbl hg1SV) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), Delta(Delta), hg1SV(hg1SV){
    }
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @return \f$1/z f_{g}(x/z,\mu_F^2) h_{g}^{(1),(S+V)}(\eta,\xi)\f$
 */
    dbl operator() (dbl a1, dbl a2) {
        this->setSp(a1);
        this->setT1(a2);
        dbl me = hg1SV(m2,q2,sp,t1);
        return jac * 1./this->z * this->pdf->xfxQ2(21,this->bjorkenX/z,this->muF2) * me;
    }
};

#endif // PdfConvNLOgSV_H_