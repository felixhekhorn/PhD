/**
 * @file ConfigExclusive.h
 * @brief defines additional types and shortcuts for exclusive processes
 */

#ifndef ConfigExclusive_H_
#define ConfigExclusive_H_

#include <unordered_map>
#include <boost/format.hpp>

#include "../gslpp/gslpp.Histogram.hpp"

//#define CounterByHeavyside 1

/**
 * @brief subspace for exclusive calculations
 */
namespace Exclusive {
    
/**
 * @brief histogram types
 */
enum histT {
// All order:
    log10z, /**< bjorkenX < z < z_max */
    log10xi, /**< bjorkenX/z_max < xi < 1. */
    Theta1, /**< 0 < Theta1 < pi */
    invMassHQPair, /**< 2m < invMassHQPair < sqrt(S) */
    HAQRapidity, /**< -y0 < HAQRapidity < y0 where y0 = artanh(sqrt(1-4m2/S)) */
    HAQTransverseMomentum, /**< 0 < HAQTransverseMomentum < sqrt(S/4-m2)) */
// NLO:
    x, /**< x_bj/z_max < x < 1 */
    Theta2, /**< 0 < Theta2 < pi */
//    y, /**< -1 < y < 1 */
//    DeltaPhiHQPair /**< -pi < DeltaPhiHQPair < pi */
};

/**
 * @brief shorthand for map of histograms
 */
typedef unordered_map<histT,gslpp::Histogram*> histMapT;

/**
 * @brief computes dynamic scales, defaults to 4m²-q²
 */
struct DynamicScaleFactors {
    
/**
 * @brief factor to m²
 */
    dbl cM2 = 4.;
    
/**
 * @brief factor to q² (!NOT! to Q²)
 */
    dbl cQ2 = -1.;

/**
 * @brief factor to \f$(p_{T,\HepGenParticle{Q}{}{}}+p_{T,\HepGenAntiParticle{Q}{}{}})^2\f$
 */
    dbl cSqrPtSumHQPair = 0.;

/**
 * @brief factor to \f$p_{T,\HepGenAntiParticle{Q}{}{}}^2\f$
 */
    dbl cSqrPtHAQ = 0.;
    
/**
 * @brief constructor
 * @param cM2 factor to m²
 * @param cQ2 factor to q² (!NOT! to Q²)
 * @param cSqrPtSumHQPair factor to \f$(p_{T,\HepGenParticle{Q}{}{}}+p_{T,\HepGenAntiParticle{Q}{}{}})^2\f$
 * @param cSqrPtHAQ factor to \f$p_{T,\HepGenAntiParticle{Q}{}{}}^2\f$
 */
    DynamicScaleFactors(cdbl cM2 = 4., cdbl cQ2 = -1., cdbl cSqrPtSumHQPair = 0., cdbl cSqrPtHAQ = 0.) :
        cM2(cM2), cQ2(cQ2), cSqrPtSumHQPair(cSqrPtSumHQPair), cSqrPtHAQ(cSqrPtHAQ) {};
};

/**
 * @brief holds the values of all kernels
 */
struct PhasespaceValues {
    
/**
 * @brief kernel at event x and event y
 */
    dbl xEyE = 0.;
    
/**
 * @brief kernel at counter event x and event y
 */
    dbl xCyE = 0.;
    
/**
 * @brief kernel at event x and counter event y
 */
    dbl xEyC = 0.;
    
/**
 * @brief kernel at counter event x and counter event y
 */
    dbl xCyC = 0.;
    
/**
 * @brief total weight
 * @return sum of all parts
 */
    dbl tot() const {
        return this->xEyE + this->xCyE + this->xEyC + this->xCyC;
    }
};

} // namespace Exclusive

#endif // ConfigExclusive_H_