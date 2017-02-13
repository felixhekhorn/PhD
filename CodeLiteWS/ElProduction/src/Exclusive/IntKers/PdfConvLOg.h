#ifndef PdfConvLOg_H
#define PdfConvLOg_H

#include "PdfConvBase.hpp"

namespace Exclusive {

/**
 * @brief LO gluon convolution
 */
class PdfConvLOg : public PdfConvBase {
    
/**
 * @brief pointer to Born ME
 */
    fPtr4dbl BpQED;
    
protected:

    /**
     * @brief computes current value of kernel of \f$c_g^{(0)}\f$
     * @return kernel of \f$c_g^{(0)}\f$
     */
    dbl cg0() const;

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param BpQED pointer to Born ME
 */
    PdfConvLOg(dbl m2, dbl q2, dbl bjorkenX, fPtr4dbl BpQED);

};

} // namespace Exclusive

#endif // PdfConvLOg_H
