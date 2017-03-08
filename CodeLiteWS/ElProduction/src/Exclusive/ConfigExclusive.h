/**
 * @file ConfigExclusive.h
 * @brief defines additional types and shortcuts for exclusive processes
 */

#ifndef ConfigExclusive_H_
#define ConfigExclusive_H_

#include <unordered_map>
#include <boost/format.hpp>

#include "../gslpp/gslpp.Histogram.hpp"

/**
 * @brief subspace for exclusive calculations
 */
namespace Exclusive {
    
/**
 * @brief histogram types
 */
enum histT {
    log10z, /**< x_bj < z < z_max */
    log10pdf, /**< x_bj/z_max < x_bj/z < 1. */
    x, /**< x_bj/z_max < x < 1 */
    y, /**< -1 < y < 1 */
    Theta1, /**< 0 < Theta1 < pi */
    Theta2, /**< 0 < Theta2 < pi */
    s5, /**< 4m^2 < s5 < -q2(1/x_bj - 1) */
    invMassHQPair, /**< 2m < invMassHQPair < sqrt(-q2(1/x_bj - 1)) */
    AHQRapidity, /**< -y0 < AHQRapidity < y0 where y0 = artanh(sqrt(1-4m2/S)) */
    AHQTransverseMomentum, /**< 0 < AHQTransverseMomentum < sqrt(S/4-m2)) */
    DeltaPhiHQPair /**< -pi < DeltaPhiHQPair < pi */
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
 * @brief factor to s5
 */
    dbl cS5 = 0.;
    
/**
 * @brief constructor
 * @param cM2 factor to m²
 * @param cQ2 factor to q² (!NOT! to Q²)
 * @param cS5 factor to s5
 */
    DynamicScaleFactors(dbl cM2 = 4., dbl cQ2 = -1., dbl cS5 = 0.) :
        cM2(cM2), cQ2(cQ2), cS5(cS5) {};
};

} // namespace Exclusive

#endif // ConfigExclusive_H_