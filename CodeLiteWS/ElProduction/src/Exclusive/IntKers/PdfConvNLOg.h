#ifndef PdfConvNLOg_H
#define PdfConvNLOg_H

#include "PdfConvBase.hpp"

namespace Exclusive {

/**
 * @brief NLO gluon convolution
 */
class PdfConvNLOg : public PdfConvBase {
    
/**
 * @brief pointer to Born ME
 */
    fPtr4dbl BpQED;
    
/**
 * @brief pointer to soft+virtual ME
 */
    fPtr5dbl SVp;
    
/**
 * @brief pointer to full hard ME
 */
    fPtr7dbl Rp;
    
/**
 * @brief pointer to soft limit of hard ME
 */
    fPtr6dbl RpxC;
    
/**
 * @brief pointer to collinear limit of hard ME
 */
    fPtr6dbl ROKpyC;
    
/**
 * @brief pointer to soft+collinear limit of hard ME
 */
    fPtr4dbl ROKpyxC;
    
/**
 * @brief pointer to \f$P_{gg}^{(0)}(z)\f$
 */
    fPtr1dbl Pgg0;
    
/**
 * @brief pointer to \f$P_{gg}^{(1)}(z)\f$
 */
    fPtr1dbl Pgg1;
    
protected:

    /**
     * @brief computes current value of kernel of \f$c_g^{(1)}\f$
     * @return kernel of \f$c_g^{(1)}\f$
     */
    dbl cg1() const;

    /**
     * @brief computes current value of kernel of \f$\bar c_g^{R,(1)}\f$
     * @return kernel of \f$\bar c_g^{R,(1)}\f$
     */
    dbl cgBarR1() const;

    /**
     * @brief computes current value of kernel of \f$\bar c_g^{F,(1)}\f$
     * @return kernel of \f$\bar c_g^{F,(1)}\f$
     */
    dbl cgBarF1() const;

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
    PdfConvNLOg(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay);

/**
 * @brief sets 2->2 MEs
 * @param BpQED pointer to Born ME
 * @param SVp pointer to soft+virtual ME
 */
    void setBorn(fPtr4dbl BpQED, fPtr5dbl SVp);
    
/**
 * @brief sets hard MEs
 * @param Rp pointer to full hard ME
 * @param RpxC pointer to soft limit of hard ME
 * @param ROKpyC pointer to collinear limit of hard ME
 * @param ROKpyxC pointer to soft+collinear limit of hard ME
 */
    void setRp(fPtr7dbl Rp, fPtr6dbl RpxC, fPtr6dbl ROKpyC, fPtr4dbl ROKpyxC);
    
/**
 * @brief sets Altarelli-Parisi kernels
 * @param Pgg0 pointer to \f$P_{gg}^{H,(0)}(z)\f$
 * @param Pgg1 pointer to \f$P_{gg}^{H,(1)}(z)\f$
 */
    void setPgg(fPtr1dbl Pgg0, fPtr1dbl Pgg1);
};

} // namespace Exclusive

#endif // PdfConvNLOg_H
