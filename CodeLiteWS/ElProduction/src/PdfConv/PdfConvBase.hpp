#ifndef PdfConvBase_H_
#define PdfConvBase_H_

#include "config.h"
#include "./../IntKerBase.hpp"
#include "./../PdfWrapper.h"

/**
 * @brief Abstract base class for convolution with PDFs
 */
class PdfConvBase : public IntKerBase {
protected:
    
/**
 * @brief Bjorken scaling variable
 */
    dbl bjorkenX;
    
/**
 * @brief parton distribution functions
 */
    PdfWrapper* pdf;

/**
 * @brief factorisation scale \f$\mu_F^2\f$
 */
    dbl muF2;
    
/**
 * @brief upper z-integration limit
 */
    dbl zMax;
    
/**
 * @brief current momentum fraction
 */
    dbl z;

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 */
    PdfConvBase(dbl m2, dbl q2, dbl bjorkenX, PdfWrapper* pdf, dbl muF2) :
        IntKerBase(m2, q2), bjorkenX(bjorkenX), pdf(pdf), muF2(muF2),
        z(0.){
        this->zMax = -q2/(4.*m2 - q2);
    }

/**
 * @brief sets s' by integration
 * @param a integration variable
 */
    void setSp(dbl a) {
        this->z = this->bjorkenX + (this->zMax - this->bjorkenX)*a;
        this->setSpRaw(-q2/z);
        this->jac *= (this->zMax - this->bjorkenX);
    }
};

#endif // PdfConvBase_H_