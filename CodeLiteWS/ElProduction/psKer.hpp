#ifndef psKers_H_
#define psKers_H_

#include "config.h"
#include "IntRFinite.h"
#include "RPole.h"
#include "SV.h"

using namespace Color;

/**
 * @brief abstract phase space kernel
 */
class psKer {
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
 * @brief center of mass energy \f$s' = s - q^2\f$
 */
    dbl sp;
     
/**
 * @brief energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    dbl Delta;

/**
 * @brief lower bound of t1 integration
 */
    dbl t1min;

/**
 * @brief upper bound of t1 integration
 */
    dbl t1max;
    
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKer(dbl m2, dbl q2, dbl sp, dbl Delta) : m2(m2), q2(q2), sp(sp), Delta(Delta){
        this->t1max = -(sp*(1. - Sqrt(1. - (4.*m2)/(q2 + sp))))/2.;
        this->t1min = -(sp*(1. + Sqrt(1. - (4.*m2)/(q2 + sp))))/2.;
        if (this->t1min >= this->t1max)
            throw domain_error("t1_min has to be smaller than t1_max!");
    }

};

/**
 * @brief phase space kernel of quark parts
 */
class psKerA : public psKer {
protected:
    
/**
 * @brief pointer to matrix element
 */
    dbl (*gq1)(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1);

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 */
    psKerA(dbl m2, dbl q2, dbl sp, dbl (*gq1)(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1)) : psKer(m2,q2,sp,0.),
       gq1(gq1) {}

/**
 * @brief called function
 * @param a1
 * @param a2
 * @return quark part
 */
    dbl operator()(dbl a1, dbl a2) const {
        dbl s = sp+q2;
        dbl beta = Sqrt(1 - (4*m2)/s);
        dbl t1 = this->t1min + (this->t1max-this->t1min)*a1;
        dbl s4max = (s*((sp*(1 - beta))/2. + t1)*((sp*(1 + beta))/2. + t1))/(sp*t1);
        dbl s4 = s4max*a2;
        dbl jac = (this->t1max-this->t1min)*s4max;
        dbl me = gq1(m2,q2,sp,s4,t1);
        return jac*me;
    }
};

#endif // psKers_H_