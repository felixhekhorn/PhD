#ifndef ElProduction_H_
#define ElProduction_H_

#include "config.h"

/**
 * @brief application class
 */
class ElProduction {
    
/**
 * @brief heavy quark mass squared: \f$m^2 > 0\f$
 */
    dbl m2;
    
/**
 * @brief virtuality of photon: \f$q^2 < 0\f$
 */
    dbl q2;
    
/**
 * @brief corrected center of mass energy: \f$s' = s - q^2\f$
 */
    dbl sp;
    
/**
 * @brief has partonic s been set?
 */
    bool hasPartonicS;
    
/**
 * @brief energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    dbl Delta;

/**
 * @brief projection
 */
    projT proj;

/**
 * @brief number of light flavours
 */
    uint nlf;
    
/**
 * @brief checks wether all parameters are given
 */
    void check() const;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param proj projection
 * @param nlf number of light flavours
 */
    ElProduction(dbl m2, dbl q2, dbl Delta, projT proj, uint nlf);
    
/**
 * @brief sets partonic eta
 * @param eta partonic eta
 */
    void setEta(dbl eta);
    
/**
 * @brief sets partonic center of mass energy
 * @param s partonic cm-energy
 */
    void setPartonicS(dbl s);
    
/**
 * @brief sets virtuality of photon \f$q^2< 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 */
    void setQ2(dbl q2);
    
/**
 * @brief LO scaling function \f$c^{(0)}_g\f$
 * @return \f$c^{(0)}_g\f$
 */
    dbl cg0() const;

/**
 * @brief NLO gluon scaling function \f$c^{(1)}_g\f$: H+Poles+S+V
 * @return \f$c^{(1)}_g\f$
 */
    dbl cg1() const;

/**
 * @brief sum of scaling logs of NLO gluon scaling function \f$\bar{c}^{R,(1)}_g\f$
 * @return \f$\bar{c}^{R,(1)}_g\f$
 */
    dbl cgBar1() const;

/**
 * @brief renormalization log scaling of NLO gluon scaling function \f$\bar{c}^{R,(1)}_g\f$
 * @return \f$\bar{c}^{R,(1)}_g\f$
 */
    dbl cgBarR1() const;

/**
 * @brief factorization log scaling of NLO gluon scaling function \f$\bar{c}^{F,(1)}_g\f$
 * @return \f$\bar{c}^{F,(1)}_g\f$
 */
    dbl cgBarF1() const;

/**
 * @brief NLO quark scaling function \f$c^{(1)}_q\f$ with heavy charges
 * @return \f$c^{(1)}_q\f$
 */
    dbl cq1() const;

/**
 * @brief factorization log scaling of NLO quark scaling function \f$\bar{c}^{F,(1)}_q\f$
 * @return \f$\bar{c}^{F,(1)}_q\f$
 */
    dbl cqBarF1() const;

/**
 * @brief NLO quark scaling function \f$c^{(1)}_q\f$ with light charges
 * @return \f$d^{(1)}_q\f$
 */
    dbl dq1() const;
};


#endif // ElProduction_H_