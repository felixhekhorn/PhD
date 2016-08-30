#ifndef PdfConvolutionLO_H_
#define PdfConvolutionLO_H_

#include "LHAPDF/LHAPDF.h"

#include "config.h"

class PdfConvolutionLO {
    
/**
 * @brief heavy quark mass squared \f$m^2 > 0\f$
 */
    dbl m2;
    
/**
 * @brief virtuality of the photon \f$q^2< 0\f$
 */
    dbl q2;
    
/**
 * @brief Bjorken scaling variable
 */
    dbl bjorkenX;
    
/**
 * @brief parton distribution functions
 */
    LHAPDF::PDF* pdf;

/**
 * @brief factorisation scale \f$\mu_F^2\f$
 */
    dbl muF2;
    
/**
 * @brief pointer to matrix element
 */
    dbl (*cg0)(dbl m2, dbl q2, dbl sp);
    
/**
 * @brief upper z-integration limit
 */
    dbl zMax;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param cg0 pointer to matrix element
 */
    PdfConvolutionLO(dbl m2, dbl q2, dbl bjorkenX, LHAPDF::PDF* pdf, dbl muF2, dbl (*cg0)(dbl m2, dbl q2, dbl sp)) :
        m2(m2), q2(q2), bjorkenX(bjorkenX), pdf(pdf), muF2(muF2), cg0(cg0){
        this->zMax = -q2/(4.*m2 - q2);
    }
    
/**
 * @brief called function
 * @param a
 * @return \f$1/z f_{g}(x/z,\mu_F^2) c_{g}^{(0)}(\eta,\xi)\f$
 */
    dbl operator() (dbl a) {
        dbl z = this->bjorkenX + (this->zMax - this->bjorkenX)*a;
        dbl jac = (this->zMax - this->bjorkenX);
        dbl s = -q2*(1.-z)/z;
        dbl me = cg0(m2,q2,s-q2);
        //printf("a: %e, x: %e, z_max: %e, z: %e\n",a,bjorkenX,zMax,z);
        //printf("s_min: %e, s: %e, me: %e\n",4.*m2,s,me);
        return jac * 1./this->bjorkenX * this->pdf->xfxQ2(21,this->bjorkenX/z,this->muF2) * me;
    }
};

#endif // PdfConvolutionLO_H_