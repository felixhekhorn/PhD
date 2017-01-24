#ifndef EXCLUSIVEELPRODUCTION_H
#define EXCLUSIVEELPRODUCTION_H

#include "AbstractElProduction.h" // Base class: AbstractElProduction

/**
 * @brief application class for exclusive electro production
 */
class ExclusiveElProduction : public AbstractElProduction {
    
/**
 * @brief factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 */
    dbl xTilde;
    
/**
 * @brief soft regulation parameter \f$\tilde\rho\f$
 */
    dbl rhoTilde;
    
/**
 * @brief collinear regulation parameter \f$\omega\f$
 */
    dbl omega;
    
/**
 * @brief offset to upper integration bound in x \f$\delta_x\f$
 */
    dbl deltax;
    
/**
 * @brief offset to lower integration bound in y \f$\delta_y\f$
 */
    dbl deltay;
    
/**
 * @brief returns \f$B'_{QED}\f$
 * @return \f$B'_{QED}\f$
 */
    fPtr4dbl getBpQED() const;

/** @name gluon coefficient functions */
///@{
    
/**
 * @brief returns \f$(S+V)'\f$
 * @return \f$(S+V)'\f$
 */
    fPtr5dbl getSVp() const;
    
/**
 * @brief returns \f$R'\f$
 * @return \f$R'\f$
 */
    fPtr7dbl getRp() const;
    
/**
 * @brief returns \f$R'(x=1)\f$
 * @return \f$R'(x=1)\f$
 */
    fPtr6dbl getRpxC() const;
    
/**
 * @brief returns \f$R'_{OK}(y=-1)\f$
 * @return \f$R'_{OK}(y=-1)\f$
 */
    fPtr6dbl getROKpyC() const;
    
/**
 * @brief returns \f$R'_{OK}(x=1,y=-1)\f$
 * @return \f$R'_{OK}(x=1,y=-1)\f$
 */
    fPtr4dbl getROKpyxC() const;
    
///@}
    
/** @name quark coefficient functions */
///@{
    
/**
 * @brief returns \f$A'_{1}\f$
 * @return \f$A'_{1}\f$
 */
    fPtr7dbl getAp1() const;
    
/**
 * @brief returns \f$A'_{1}(y=-1)\f$
 * @return \f$A'_{1}(y=-1)\f$
 */
    fPtr6dbl getAp1Counter() const;
    
/**
 * @brief returns \f$A'_{2}\f$
 * @return \f$A'_{2}\f$
 */
    fPtr7dbl getAp2() const;
    
/**
 * @brief returns \f$A'_{3}\f$
 * @return \f$A'_{3}\f$
 */
    fPtr7dbl getAp3() const;
    
///@}
   
/** @name Altarelli-Parisi kernels */
///@{
 
/**
 * @brief return \f$P_{gg}^{(0)}(z)\f$
 * @return \f$P_{gg}^{(0)}(z)\f$
 */
    fPtr1dbl getPgg0() const;
    
/**
 * @brief return \f$P_{gg}^{(1)}(z)\f$
 * @return \f$P_{gg}^{(1)}(z)\f$
 */
    fPtr1dbl getPgg1() const;
 
/**
 * @brief return \f$P_{gq}^{(0)}(z)\f$
 * @return \f$P_{gq}^{(0)}(z)\f$
 */
    fPtr1dbl getPgq0() const;
    
/**
 * @brief return \f$P_{gq}^{(1)}(z)\f$
 * @return \f$P_{gq}^{(1)}(z)\f$
 */
    fPtr1dbl getPgq1() const;
    
///@}
    
/**
 * @brief checks wether all partonic parameters are given
 */
    void checkPartonic() const;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param proj projection
 * @param nlf number of light flavours
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltax offset to upper integration bound in x
 * @param deltay offset to lower integration bound in y
 */
    ExclusiveElProduction(dbl m2, dbl q2, projT proj, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay);

/** @name partonic coefficient functions */
///@{
    
/**
 * @brief sets partonic center of mass energy
 * @param s partonic cm-energy
 */
    void setPartonicS(dbl s);

/**
 * @brief sets xTilde
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 */
    void setXTilde(cdbl xTilde);

/**
 * @brief sets rhoTilde
 * @param rhoTilde soft regulation parameter \f$\tilde\rho\f$
 */
    void setRhoTilde(cdbl rhoTilde);

/**
 * @brief sets omega
 * @param omega collinear regulation parameter \f$\omega\f$
 */
    void setOmega(cdbl omega);

/**
 * @brief sets deltax
 * @param offset to upper integration bound in x
 */
    void setDeltax(cdbl deltax);

/**
 * @brief sets deltay
 * @param offset to lower integration bound in y
 */
    void setDeltay(cdbl deltay);
    
///@}

/** @name partonic coefficient functions */
///@{
/**
 * @brief NLO quark scaling function \f$c^{(1)}_g\f$
 * @return \f$c^{(1)}_g\f$
 */
    dbl cg1() const;
    
/**
 * @brief NLO quark scaling function \f$c^{(1)}_q\f$
 * @return \f$c^{(1)}_q\f$
 */
    dbl cq1() const;
    
/**
 * @brief NLO quark scaling function \f$d^{(1)}_q\f$
 * @return \f$d^{(1)}_q\f$
 */
    dbl dq1() const;
    
///@}

};

#endif // EXCLUSIVEELPRODUCTION_H
