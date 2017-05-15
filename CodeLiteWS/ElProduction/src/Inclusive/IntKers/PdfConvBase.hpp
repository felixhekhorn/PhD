#ifndef PdfConvBase_H_
#define PdfConvBase_H_

#include "../../config.h"
#include "IntKerBase.hpp"
#include "../../Pdf/PdfWrapper.h"

namespace Inclusive {

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
 * @brief volume for z-integration
 */
    dbl Vz;
    
/**
 * @brief current momentum fraction
 */
    dbl z = -0.;

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 */
    inline PdfConvBase(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2) :
        IntKerBase(m2, q2), bjorkenX(bjorkenX), pdf(pdf), muF2(muF2){
        this->zMax = -q2/(4.*m2 - q2);
        this->Vz = this->zMax - this->bjorkenX;
    }
    
/**
 * @brief get hadronic hadronic S
 * @return hadronic S
 */
    inline cdbl getHadronicS() {
        return -this->q2*(1./this->bjorkenX - 1.);
    }

/**
 * @brief sets z (and there by s') by integration
 * @param az integration variable mapped on z
 */
    inline void setZ(cdbl az) {
        this->z = this->bjorkenX + this->Vz*az;
        this->setSpRaw(-q2/z);
        this->jac *= this->Vz;
    }
};

} // namespace Inclusive

#endif // PdfConvBase_H_