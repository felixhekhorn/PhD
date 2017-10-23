#ifndef DynamicScaleFactors_HPP_
#define DynamicScaleFactors_HPP_

/**
 * @brief computes dynamic scales
 */
struct DynamicScaleFactors {
    
/** @brief factor to m2 */
    dbl cM2;
    
/** @brief factor to Q2 */
    dbl cQ2;

/** @brief factor to \f$p_{\HepGenAntiParticle{Q}{}{},T}^2\f$ */
    dbl cHAQTransverseMomentum;

/** @brief factor to \f$(p_{\HepGenParticle{Q}{}{},T}+p_{\HepGenAntiParticle{Q}{}{}},T)^2\f$ */
    dbl cHQPairTransverseMomentum;
    
/**
 * @brief constructor
 * @param cM2 factor to m2
 * @param cQ2 factor to Q2
 * @param cHAQTransverseMomentum factor to \f$p_{\HepGenAntiParticle{Q}{}{},T}^2\f$
 * @param cHQPairTransverseMomentum factor to \f$(p_{\HepGenParticle{Q}{}{},T}+p_{\HepGenAntiParticle{Q}{}{}},T)^2\f$
 */
    inline DynamicScaleFactors(cdbl cM2, cdbl cQ2, cdbl cHAQTransverseMomentum, cdbl cHQPairTransverseMomentum) :
        cM2(cM2), cQ2(cQ2), cHAQTransverseMomentum(cHAQTransverseMomentum), cHQPairTransverseMomentum(cHQPairTransverseMomentum) {};
};

#endif // DynamicScaleFactors_HPP_