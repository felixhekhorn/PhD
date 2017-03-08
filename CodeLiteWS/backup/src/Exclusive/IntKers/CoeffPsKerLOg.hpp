#ifndef CoeffPsKerLOg_HPP_
#define CoeffPsKerLOg_HPP_

#include "PdfConvLOg.h"

namespace Exclusive {

/**
 * @brief exclusive phasespace kernel for \f$\bar c_{g}^{(0)}\f$
 */
class PsKerCg0 : public PdfConvLOg {
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 * @param BpQED pointer to Born ME
 */
    PsKerCg0(dbl m2, dbl q2, dbl sp, fPtr4dbl BpQED) : PdfConvLOg(m2,q2,0.,BpQED) {
        this->setSpRaw(sp);
    }
    
    
/**
 * @brief called function
 * @param aTheta1 integration variable mapped on Theta1
 * @return kernel
 */
    dbl operator() (cdbl aTheta1) {
        this->setTheta1(aTheta1);
        return this->cg0();
    }
};

} // namespace Exclusive


#endif // CoeffPsKerLOg_HPP_