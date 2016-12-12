#ifndef PdfConvLO_H_
#define PdfConvLO_H_

#include "PdfConvBase.hpp"

/**
 * @brief LO gluon convolution
 */
class PdfConvLO : public PdfConvBase {
    
/**
 * @brief pointer to matrix element
 */
    fPtr3dbl cg0;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param cg0 pointer to matrix element
 */
    PdfConvLO(dbl m2, dbl q2, dbl bjorkenX, PdfWrapper* pdf, dbl muF2, fPtr3dbl cg0) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), cg0(cg0) {
    }
    
/**
 * @brief called function
 * @param a integration variable
 * @return \f$1/z f_{g}(x/z,\mu_F^2) c_{g}^{(0)}(\eta,\xi)\f$
 */
    dbl operator() (dbl a) {
        this->setSp(a);
        dbl me = cg0(m2,q2,sp);
        //if (this->bjorkenX/z < this->pdf->xMin()) {
        //    printf("x/z out of range: %e\n",this->bjorkenX/z);
        //}
        dbl r = jac * 1./this->z * this->pdf->xfxQ2(21,this->bjorkenX/z,this->muF2) * me;
        // Protect from ps corner cases
        if (isnan(r) || isinf(r)) return 0.;
        return r;
    }
};

#endif // PdfConvLO_H_