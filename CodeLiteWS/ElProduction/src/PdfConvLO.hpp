#ifndef PdfConvLO_H_
#define PdfConvLO_H_

#include "PdfConv/PdfConvBase.hpp"

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
    PdfConvLO(dbl m2, dbl q2, dbl bjorkenX, LHAPDF::PDF* pdf, dbl muF2, fPtr3dbl cg0) :
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
        //printf("a: %e, x: %e, z_max: %e, z: %e\n",a,bjorkenX,zMax,z);
        //printf("s_min: %e, s: %e, me: %e\n",4.*m2,s,me);
        if (this->bjorkenX/z < this->pdf->xMin()) {
            printf("x/z out of range: %e\n",this->bjorkenX/z);
        }
        /** @todo missing factor of x_bj? */
        return jac * 1./this->bjorkenX * this->pdf->xfxQ2(21,this->bjorkenX/z,this->muF2) * me;
    }
};

#endif // PdfConvLO_H_