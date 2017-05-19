#ifndef FKerAll_HPP_
#define FKerAll_HPP_

#include <dvegas/dvegas.h>

#include "PdfConvBase.h"
#include "PdfConvLOg.h"
#include "PdfConvNLOg.h"
#include "PdfConvNLOq.h"

#include "../ConfigExclusive.h"
#include "PhasespacePoint.h"

namespace Exclusive {

/**
 * @brief kernel for full F
 */
class FKerAll : public PdfConvBase, public HepSource::Integrand {

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
 * @brief factors for \f$\mu_R^2\f$
 */
    Common::DynamicScaleFactors muR2Factors;

/**
 * @brief factors for \f$\mu_F^2\f$
 */
    Common::DynamicScaleFactors muF2Factors;
    
/**
 * @brief parton distribution functions
 */
    PdfWrapper* pdf = 0;

/**
 * @brief running strong coupling
 */
    LHAPDF::AlphaS* alphaS = 0;
    
/**
 * @brief computed order
 */
    uint order = 1;
    
/**
 * @brief pointer to map of histograms
 */
    const histMapT* histMap = 0;
    
/**
 * @brief integration weight determined by VEGAS
 */
    cdbl* vegasWeight = 0;
    
/**
 * @brief combines all parts to NLOg
 * @param x
 * @param y
 * @param cg1
 * @param cgBarR1
 * @param cgBarF1
 * @return total kernel
 */
    cdbl combineNLOg(cdbl x, cdbl y, cdbl cg1, cdbl cgBarR1, cdbl cgBarF1);
    
/**
 * @brief combines all parts of NLOq
 * @param x
 * @param y
 * @param cq1
 * @param cqBarF1
 * @param dq1
 * @param oq1
 * @return total kernel
 */
    cdbl combineNLOq(cdbl x, cdbl y, cdbl cq1, cdbl cqBarF1, cdbl dq1, cdbl oq1);

/**
 * @brief fills all avtive histograms available in all orders
 * These histograms may only depend on LO variables such as z, p1, p2, k1, q
 * @param p current phase space point
 * @param i integrand
 */
    void fillAllOrderHistograms(const PhasespacePoint& p, cdbl i) const;

/**
 * @brief fills all avtive histograms available in NLO
 * @param p current phase space point
 * @param i integrand
 */
    void fillNLOHistograms(const PhasespacePoint& p, cdbl i) const;
    
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
    FKerAll(cdbl m2, cdbl q2, cdbl bjorkenX, const uint nlf, cdbl xTilde, cdbl omega, cdbl deltax, cdbl deltay, const Common::DynamicScaleFactors& muR2Factors, const Common::DynamicScaleFactors& muF2Factors);
    
/**
 * @brief sets all kernels
 * @param LOg pointer to LO kernel
 * @param NLOg pointer to NLO gluon kernel
 * @param NLOq pointer to NLO quark kernel
 */
    void setKers(PdfConvLOg* LOg, PdfConvNLOg* NLOg, PdfConvNLOq* NLOq);

/**
 * @brief sets running strong coupling
 * @param alphaS running strong coupling
 */
    void setAlphaS(LHAPDF::AlphaS* alphaS);

/**
 * @brief sets pdf 
 * @param pdf parton distribution function
 */
    void setPdf(PdfWrapper* pdf);
    
/**
 * @brief sets computed order
 * @param order computed order
 */
    void setOrder(const uint order);
    
/**
 * @brief sets avtive histograms
 * @param histMap pointer to map of histograms
 */
    void setHistograms(const histMapT* histMap);
    
/**
 * @brief called function for gsl_monte
 * @param az integration variable mapped on z
 * @param ax integration variable mapped on x
 * @param ay integration variable mapped on y
 * @param aTheta1 integration variable mapped on Theta1
 * @param aTheta2 integration variable mapped on Theta2
 * @return F
 */
    cdbl operator() (cdbl az, cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2);
    
/**
 * @brief called function for Dvegas
 * @param x correlated coords
 * @param k discrete dimensions
 * @param weight integration weight
 * @param aux unadapted coords
 * @param f result
 */
    void operator()(cdbl x[], const int k[], cdbl& weight, cdbl aux[], dbl f[]);

/**
 * @brief scales all avtive histograms
 * @param s factor
 */
    void scaleHistograms(cdbl s) const;
};
    
} // namespace Exclusive

#endif // FKerAll_HPP_