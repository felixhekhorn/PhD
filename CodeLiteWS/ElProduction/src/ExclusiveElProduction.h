#ifndef EXCLUSIVEELPRODUCTION_H
#define EXCLUSIVEELPRODUCTION_H

#include "AbstractElProduction.h" // Base class: AbstractElProduction

/**
 * @brief application class for exclusive electro production
 */
class ExclusiveElProduction : public AbstractElProduction {
    
/**
 * @brief collinear factorisation parameter \f$\omega\f$
 */
    dbl omega;
    
/**
 * @brief offset to lower integration bound in y \f$\delta_y\f$
 */
    dbl deltay;
    
/**
 * @brief returns \f$A'_{2,G}\f$
 * @return \f$A'_{2,G}\f$
 */
    fPtr7dbl getAp2() const;
    
public:
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param proj projection
 * @param nlf number of light flavours
 * @param omega collinear factorisation parameter
 * @param deltay offset to lower integration bound in y
 */
    ExclusiveElProduction(dbl m2, dbl q2, projT proj, uint nlf, dbl omega, dbl deltay);

/**
 * @brief NLO quark scaling function \f$c^{(1)}_q\f$ with light charges
 * @return \f$d^{(1)}_q\f$
 */
    dbl dq1() const;
};

#endif // EXCLUSIVEELPRODUCTION_H
