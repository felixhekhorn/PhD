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

} // namespace Exclusive

#endif // ConfigExclusive_H_