#ifndef gluonicPart_H_
#define gluonicPart_H_

#include "config.h"

#include <gsl/gsl_monte.h>
#include <gsl/gsl_integration.h>

/**
 * @class gluonicPart
 * @author Felix Hekhorn
 * @date 27/06/16
 * @file gluonicPart.h
 * @brief gluonic part of the cross sections
 */
class gluonicPart {
/**
 * @brief heavy quark mass squared: \f$m^2 > 0\f$
 */
    dbl m2;
    
/**
 * @brief virtuality of photon: \f$q^2 < 0\f$
 */
    dbl q2;
    
/**
 * @brief center of mass energy: \f$s' = s - q^2\f$
 */
    dbl sp;
    
/**
 * @brief energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    dbl Delta;

/**
 * @brief projection
 */
    projT proj;

/**
 * @brief integrates 1 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(x)\,dx\f$
 */
    dbl int1D(gsl_function* F) const;
    
/**
 * @brief integrates 2 dimension
 * @param F kernel
 * @return \f$\int\limits_0^1 f(x,y)\,dxdy\f$
 */
    dbl int2D(gsl_monte_function* F) const;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 * @param proj projection
 */
    gluonicPart(dbl m2, dbl q2, dbl sp, dbl Delta, projT proj);
    
/**
 * @brief LO scaling function \f$c^{(0)}_g\f$: H+Poles+S+V
 * @return \f$c^{(0)}_g\f$
 */
    dbl c0() const;

/**
 * @brief NLO scaling function \f$c^{(1)}_g\f$: H+Poles+S+V
 * @return \f$c^{(1)}_g\f$
 */
    dbl c1() const;

/**
 * @brief scaling logs of NLO scaling function \f$\bar{c}^{R,(1)}_g\f$: H+Poles+S+V
 * @return \f$\bar{c}^{R,(1)}_g\f$
 */
    dbl cBar1() const;

/**
 * @brief renormalization log scaling of NLO scaling function \f$\bar{c}^{R,(1)}_g\f$: H+Poles+S+V
 * @return \f$\bar{c}^{R,(1)}_g\f$
 */
    dbl cBarR1() const;

/**
 * @brief factorization log scaling of NLO scaling function \f$\bar{c}^{F,(1)}_g\f$: H+Poles+S+V
 * @return \f$\bar{c}^{R,(1)}_g\f$
 */
    dbl cBarF1() const;
};


#endif // gluonicPart_H_