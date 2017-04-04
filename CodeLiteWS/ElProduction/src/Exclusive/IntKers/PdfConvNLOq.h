#ifndef Exclusive_PdfConvNLOq_H_
#define Exclusive_PdfConvNLOq_H_

#include "PdfConvBase.h"

namespace Exclusive {

/**
 * @brief NLO quark convolution
 */
class PdfConvNLOq : public PdfConvBase {
    
/**
 * @brief pointer to full heavy quark charge ME
 */
    fPtr7dbl Ap1 = 0;
    
/**
 * @brief pointer to collinear limit of heavy quark charge ME
 */
    fPtr6dbl Ap1Counter = 0;
    
/**
 * @brief pointer to Born ME
 */
    fPtr4dbl BpQED = 0;
    
/**
 * @brief pointer to \f$P_{gq}^{(0)}(z)\f$
 */
    fPtr1dbl Pgq0 = 0;
    
/**
 * @brief pointer to \f$P_{gq}^{(1)}(z)\f$
 */
    fPtr1dbl Pgq1 = 0;
    
/**
 * @brief pointer to ME ~ eL^2
 */
    fPtr7dbl Ap2 = 0;
    
/**
 * @brief pointer to ME ~ eH eL
 */
    fPtr7dbl Ap3 = 0;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param nlf number of light flavours
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltay offset to lower integration bound in y
 */
    PdfConvNLOq(cdbl m2, cdbl q2, cdbl bjorkenX, const uint nlf, cdbl omega, cdbl deltay);
    
/**
 * @brief sets pointer to ME ~ eH^2
 * @param Ap1 pointer to full heavy quark charge ME
 * @param Ap1Counter pointer to collinear limit of heavy quark charge ME
 */
    void setAp1(fPtr7dbl Ap1, fPtr6dbl Ap1Counter);
    
/**
 * @brief sets pointer to ME ~ eH^2
 * @param BpQED pointer to Born ME
 * @param Pgq0 pointer to \f$P_{gq}^{(0)}(z)\f$
 * @param Pgq1 pointer to \f$P_{gq}^{(1)}(z)\f$
 */
    void setSplitting(fPtr4dbl BpQED, fPtr1dbl Pgq0, fPtr1dbl Pgq1);
    
/**
 * @brief sets pointer to ME ~ eL^2
 * @param Ap2 pointer to ME ~ eL^2
 */
    void setAp2(fPtr7dbl Ap2);
    
/**
 * @brief sets pointer to ME ~ eH eL
 * @param Ap3 pointer to ME ~ eH eL
 */
    void setAp3(fPtr7dbl Ap3);
    
/**
 * @brief sets all integration variables
 * @param az integration variable mapped on z
 * @param ax integration variable mapped on x
 * @param ay integration variable mapped on y
 * @param aTheta1 integration variable mapped on Theta1
 * @param aTheta2 integration variable mapped on Theta2
 */
    void setVars(cdbl az, cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2);
    
    /**
     * @brief computes current value of kernel of \f$c_q^{(1)}\f$
     * @return kernel of \f$c_q^{(1)}\f$
     */
    const PhasespaceValues cq1() const;

    /**
     * @brief computes current value of kernel of \f$\bar c_q^{F,(1)}\f$
     * @return kernel of \f$\bar c_q^{F,(1)}\f$
     */
    const PhasespaceValues cqBarF1() const;

    /**
     * @brief computes current value of kernel of \f$d_q^{(1)}\f$
     * @return kernel of \f$d_q^{(1)}\f$
     */
    const PhasespaceValues dq1() const;

    /**
     * @brief computes current value of kernel of \f$o_q^{(1)}\f$
     * @return kernel of \f$o_q^{(1)}\f$
     */
    const PhasespaceValues oq1() const;
};

} // namespace Exclusive

#endif // Exclusive_PdfConvNLOq_H_