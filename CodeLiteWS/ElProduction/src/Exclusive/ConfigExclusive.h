/**
 * @file ConfigExclusive.h
 * @brief defines additional types and shortcuts for exclusive processes
 */

#ifndef ConfigExclusive_H_
#define ConfigExclusive_H_

#include <unordered_map>

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
    
    HQPairInvMass, /**< 2m < invMassHQPair < sqrt(S) */
    HQPairDeltaPhi, /**< -pi < HQPairDeltaPhi < pi */
    HQPairTransverseMomentum, /**< 0 < HQPairTransverseMomentum < 2sqrt(S/4-m2) TODO: upper limit is actually smaller  */
    HQPairConeSizeVariable, /**< 0 < HQPairConeSizeVariable TODO: determine upper limit */
    
    HAQRapidity, /**< -y0 < HAQRapidity < y0 where y0 = artanh(sqrt(1-4m2/S)) */
    HAQTransverseMomentum, /**< 0 < HAQTransverseMomentum < sqrt(S/4-m2) */
    HAQTransverseMomentumScaling, /**< 0 < HAQTransverseMomentumScaling < 1 */
    HAQFeynmanX, /**< -1 < HAQTransverseMomentumScaling < 1 */
    
// NLO:
    x, /**< bjorkenX/z_max < x < 1 */
    y, /**< -1 < y < 1 */
    Theta2 /**< 0 < Theta2 < pi */
};

/**
 * @brief shorthand for map of histograms
 */
typedef unordered_map<histT,gslpp::Histogram*> histMapT;

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
    inline cdbl tot() const {
        return this->xEyE + this->xCyE + this->xEyC + this->xCyC;
    }
};

} // namespace Exclusive

#endif // ConfigExclusive_H_