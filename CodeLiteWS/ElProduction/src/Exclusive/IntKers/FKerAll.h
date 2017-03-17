#ifndef FKerAll_HPP_
#define FKerAll_HPP_

#include <dvegas/dvegas.h>
#include <rk/rk.hh>

#include "PdfConvBase.h"
#include "PdfConvLOg.h"
#include "PdfConvNLOg.h"
#include "PdfConvNLOq.h"

#include "../ConfigExclusive.h"
#include "KinematicVars.hpp"

namespace Exclusive {

/**
 * @brief kernel for full F
 */
class FKerAll : PdfConvBase, public HepSource::Integrand {

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
    DynamicScaleFactors muR2Factors;

/**
 * @brief factors for \f$\mu_F^2\f$
 */
    DynamicScaleFactors muF2Factors;

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
    
//    dbl* sumWeights = 0;

/**
 * @brief kinematic vars
 */
    KinematicVars vs;

/**
 * @brief incoming parton
 */
    rk::P4 k1;

/**
 * @brief incoming photon
 */
    rk::P4 q;

/**
 * @brief outgoing heavy quark
 */
    rk::P4 p1;

/**
 * @brief outgoing heavy anti quark
 */
    rk::P4 p2;

/**
 * @brief outgoing parton
 */
    rk::P4 k2;
    
/**
 * @brief integration weight determined by VEGAS
 */
    cdbl* vegasWeight = 0;

/**
 * @brief computes all LO kinematic variables
 */
    void setupLOKinematics();

/**
 * @brief computes all NLO kinematic variables
 */
    void setupNLOKinematics();

/**
 * @brief shifts all vectors to the final (observatory-) frame
 */
    void applyLTsToFinalFrame();
    
/**
 * @brief computes a scale by given factors
 * @param factors
 */
    dbl getDynamicScale(DynamicScaleFactors factors);

/**
 * @brief fills all avtive histograms available in all orders
 * These histograms may only depend on LO variables such as z, p1, p2, k1, q
 * @param i integrand
 */
    void fillAllOrderHistograms(dbl i);

/**
 * @brief fills all avtive histograms available in NLO
 * @param i integrand
 */
    void fillNLOHistograms(dbl i);
    
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
 * @brief sets running strong coupling
 * @param alphaS running strong coupling
 */
    void setAlphaS(LHAPDF::AlphaS* alphaS);
    
/**
 * @brief sets factors for \f$\mu_R^2\f$ and \f$\mu_F^2\f$
 * @param muR2Factors factors for \f$\mu_R^2\f$
 * @param muF2Factors factors for \f$\mu_F^2\f$
 */
    void setMuRF2Factors(DynamicScaleFactors muR2Factors, DynamicScaleFactors muF2Factors);
    
/**
 * @brief sets computed order
 * @param order computed order
 */
    void setOrder(uint order);
    
/**
 * @brief sets avtive histograms
 * @param histMap pointer to map of histograms
 */
    void setHistograms(const histMapT* histMap/*, dbl* sumWeights*/);
    
/**
 * @brief called function for gsl_monte
 * @param az integration variable mapped on z
 * @param ax integration variable mapped on x
 * @param ay integration variable mapped on y
 * @param aTheta1 integration variable mapped on Theta1
 * @param aTheta2 integration variable mapped on Theta2
 * @return F
 */
    dbl operator() (cdbl az, cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2);
    
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
    void scaleHistograms(dbl s);
};
    
} // namespace Exclusive

#endif // FKerAll_HPP_