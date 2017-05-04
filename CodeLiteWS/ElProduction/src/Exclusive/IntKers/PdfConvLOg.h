#ifndef PdfConvLOg_H
#define PdfConvLOg_H

#include "PdfConvBase.h"

namespace Exclusive {

/**
 * @brief LO gluon convolution
 */
class PdfConvLOg : public PdfConvBase {
    
/**
 * @brief pointer to Born ME
 */
    fPtr4dbl BpQED;

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param BpQED pointer to Born ME
 */
    PdfConvLOg(cdbl m2, cdbl q2, cdbl bjorkenX, fPtr4dbl BpQED);

/**
 * @brief computes current value of kernel of \f$c_g^{(0)}\f$
 * @return kernel of \f$c_g^{(0)}\f$
 */
    cdbl cg0() const;
    
/**
 * @brief sets all integration variables
 * @param az integration variable mapped on z
 * @param aTheta1 integration variable mapped on Theta1
 */
    void setVars(cdbl az, cdbl aTheta1);

};

} // namespace Exclusive

#endif // PdfConvLOg_H
