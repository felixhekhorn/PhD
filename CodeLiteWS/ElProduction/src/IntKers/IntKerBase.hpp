#ifndef IntKerBase_H_
#define IntKerBase_H_

#include "../config.h"

/**
 * @brief Abstract base class for integral kernels
 */
class IntKerBase {
protected:
    
/**
 * @brief heavy quark mass squared \f$m^2 > 0\f$
 */
    dbl m2;
    
/**
 * @brief virtuality of the photon \f$q^2< 0\f$
 */
    dbl q2;
    
/**
 * @brief current \f$s'\f$
 */
    dbl sp;
    
/**
 * @brief current \f$t_1^{min}\f$
 */
    dbl t1min;
    
/**
 * @brief current \f$t_1^{max}\f$
 */
    dbl t1max;
    
/**
 * @brief current \f$t_1\f$
 */
    dbl t1;
    
/**
 * @brief current \f$s_1^{max}\f$
 */
    dbl s4max;
    
/**
 * @brief current \f$s_4\f$
 */
    dbl s4;
    
/**
 * @brief current jacobian determinant
 */
    dbl jac;

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 */
    IntKerBase(dbl m2, dbl q2) : m2(m2), q2(q2), 
        sp(0.),t1min(0.),t1max(0.),t1(0.),s4max(0.),s4(0.),
        jac(1.){
    }

/**
 * @brief sets real s'
 * @param sp
 */
    void setSpRaw(dbl sp) {
        this->sp = sp;
        this->t1max = -(sp*(1. - Sqrt(1. - (4.*m2)/(q2 + sp))))/2.;
        this->t1min = -(sp*(1. + Sqrt(1. - (4.*m2)/(q2 + sp))))/2.;
        if (this->t1min >= this->t1max)
            throw domain_error("t1_min has to be smaller than t1_max!");
    }

/**
 * @brief sets t1 by integration
 * @param a integration variable
 */
    void setT1(dbl a) {
        this->t1 = t1min + (t1max-t1min)*a;
        dbl s = sp+q2;
        dbl beta = Sqrt(1 - (4*m2)/s);
        this->s4max = (s*((sp*(1 - beta))/2. + t1)*((sp*(1 + beta))/2. + t1))/(sp*t1);
        this->jac *= (t1max-t1min);
    }

/**
 * @brief sets s4 by integration
 * @param a integration variable
 * @param s4min minimum value for s4
 */
    void setS4(dbl a, dbl s4min) {
        this->s4 = s4min + (s4max - s4min)*a;
        this->jac *= (s4max - s4min);
    }
};

#endif // IntKerBase_H_