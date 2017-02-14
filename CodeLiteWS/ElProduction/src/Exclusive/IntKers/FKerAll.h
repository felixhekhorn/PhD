#ifndef FKerAll_HPP_
#define FKerAll_HPP_

#include "PdfConvBase.hpp"
#include "PdfConvLOg.h"
#include "PdfConvNLOg.h"
#include "PdfConvNLOq.h"

#include "../../ConfigExclusive.h"

namespace Exclusive {

/**
 * @brief kernel for full F
 */
class FKerAll : PdfConvBase {

/**
 * @brief pointer to LO kernel
 */
    PdfConvLOg* LOg = 0;
    
/**
 * @brief pointer to NLO gluon kernel
 */
    PdfConvNLOg* NLOg = 0;
    
/**
 * @brief pointer to NLO quark kernel
 */
    PdfConvNLOq* NLOq = 0;

/**
 * @brief running coupling
 */
    dbl alphaS = -0.;
    
/**
 * @brief pointer to map of histgrams
 */
    const histMapT* histMap = 0;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param nlf number of light flavours
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltax offset to upper integration bound in x
 * @param deltay offset to lower integration bound in y
 */
    FKerAll(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay);
    
/**
 * @brief sets all kernels
 * @param LOg pointer to LO kernel
 * @param NLOg pointer to NLO gluon kernel
 * @param NLOq pointer to NLO quark kernel
 */
    void setKers(PdfConvLOg* LOg, PdfConvNLOg* NLOg, PdfConvNLOq* NLOq);

/**
 * @brief sets running coupling
 * @param alphaS running coupling
 */
    void setAlphaS(dbl alphaS);
    
/**
 * @brief sets avtive histograms
 * @param histMap pointer to map of histgrams
 */
    void setHistograms(const histMapT* histMap);
    
/**
 * @brief called function
 * @param az integration variable mapped on z
 * @param ax integration variable mapped on x
 * @param ay integration variable mapped on y
 * @param aTheta1 integration variable mapped on Theta1
 * @param aTheta2 integration variable mapped on Theta2
 * @return F
 */
    dbl operator() (cdbl az, cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2);

/**
 * @brief fills all avtive histograms
 * @param w weight
 */
    void fillHistograms(dbl w);
};
    
} // namespace Exclusive

#endif // FKerAll_HPP_