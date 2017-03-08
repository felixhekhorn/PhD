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
    
//    size_t* count = 0;
//    dbl* sumWeights = 0;
//    size_t n = 0;

/**
 * @brief kinematic vars
 */
    KinematicVars vs;

/**
 * @brief incoming (hadronic-) parton
 */
    rk::P4 k1;

/**
 * @brief incoming (virtual) photon
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
 * @brief computes all kinematic variables
 */
    void setupKinematics();
    
/**
 * @brief computes a scale by given factors
 * @param factors
 */
    dbl getDynamicScale(DynamicScaleFactors factors);
    
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
 * @param count number of points
 */
    void setHistograms(const histMapT* histMap/*, size_t* count, dbl* sumWeights*/);
    
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
    
/*
 * @brief called before collecting data
 * @param nshots number of points
 */
//    void beginIteration(HepSource::Int64 nshots);
    
/*
 * @brief called after collecting data
 * @param nshots number of points
 */
//    void endIteration(HepSource::Int64 nshots);

/**
 * @brief scales all avtive histograms
 * @param s factor
 */
    void scaleHistograms(dbl s);

/**
 * @brief fills all avtive histograms
 * @param i integrand
 * @param weight integration weight
 */
    void fillHistograms(dbl i, cdbl& weight);
};
    
} // namespace Exclusive

#endif // FKerAll_HPP_