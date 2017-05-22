#ifndef DynamicScaleFactors_H_
#define DynamicScaleFactors_H_

namespace Common {

/**
 * @brief computes dynamic scales, defaults to 4m²-q²
 */
struct DynamicScaleFactors {
    
/**
 * @brief factor to m²
 */
    dbl cM2;
    
/**
 * @brief factor to q² (!NOT! to Q²)
 */
    dbl cQ2;

/**
 * @brief factor to \f$(p_{\HepGenParticle{Q}{}{},T}+p_{\HepGenAntiParticle{Q}{}{}},T)^2\f$
 */
    dbl cHQPairTransverseMomentum;

/**
 * @brief factor to \f$p_{\HepGenAntiParticle{Q}{}{},T}^2\f$
 */
    dbl cHAQTransverseMomentum;
    
/**
 * @brief constructor
 * @param cM2 factor to m²
 * @param cQ2 factor to q² (!NOT! to Q²)
 * @param cHQPairTransverseMomentum factor to \f$(p_{\HepGenParticle{Q}{}{},T}+p_{\HepGenAntiParticle{Q}{}{}},T)^2\f$
 * @param cHAQTransverseMomentum factor to \f$p_{\HepGenAntiParticle{Q}{}{},T}^2\f$
 */
    inline DynamicScaleFactors(cdbl cM2, cdbl cQ2, cdbl cHQPairTransverseMomentum, cdbl cHAQTransverseMomentum) :
        cM2(cM2), cQ2(cQ2), cHQPairTransverseMomentum(cHQPairTransverseMomentum), cHAQTransverseMomentum(cHAQTransverseMomentum) {};
};

} // namespace Common

#endif // DynamicScaleFactors_H_