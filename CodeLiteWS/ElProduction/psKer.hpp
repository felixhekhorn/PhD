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
class PsKer {
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
 * @brief energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
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
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 */
    PsKer(dbl m2, dbl q2, dbl sp, dbl Delta) : m2(m2), q2(q2), sp(sp), Delta(Delta){
        this->t1max = -(sp*(1. - Sqrt(1. - (4.*m2)/(q2 + sp))))/2.;
        this->t1min = -(sp*(1. + Sqrt(1. - (4.*m2)/(q2 + sp))))/2.;
        if (this->t1min >= this->t1max)
            throw domain_error("t1_min has to be smaller than t1_max!");
    }

};


/**
 * @brief phase space kernel of soft+virtual contributions
 */
class PsKerNLOgSV : public PsKer {
protected:
    
/**
 * @brief pointer to matrix element
 */
  fPtr4dbl cg1SV;

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 * @param cg1SV pointer to matrix element
 */
    PsKerNLOgSV(dbl m2, dbl q2, dbl sp, dbl Delta, fPtr4dbl cg1SV) : PsKer(m2,q2,sp,Delta), cg1SV(cg1SV) {}

/**
 * @brief called function
 * @param a
 * @return kernel
 */
    dbl operator()(dbl a) const {
        dbl t1 = this->t1min + (this->t1max-this->t1min)*a;
        dbl jac = (this->t1max-this->t1min);
        dbl me = cg1SV(m2,q2,sp,t1);
        //printf("a: %e t1:%e %e*%e\n",a,t1,jac,this->get(t1));
        return jac*me;
    }
};

/**
 * @brief phase space kernel of hard part
 */
class psKerH : public PsKer {
protected:
    
/**
 * @brief pointer to matrix element
 */
  fPtr5dbl cg1H;

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 * @param cg1H pointer to matrix element
 */
    psKerH(dbl m2, dbl q2, dbl sp, dbl Delta, fPtr5dbl cg1H) : PsKer(m2,q2,sp,Delta), cg1H(cg1H) {}

/**
 * @brief called function
 * @param a1
 * @param a2
 * @return hard part
 */
    dbl operator()(dbl a1, dbl a2) const {
        dbl s = sp+q2;
        dbl beta = Sqrt(1 - (4*m2)/s);
        dbl t1 = this->t1min + (this->t1max-this->t1min)*a1;
        dbl s4max = (s*((sp*(1 - beta))/2. + t1)*((sp*(1 + beta))/2. + t1))/(sp*t1);
        dbl s4 = this->Delta + (s4max - this->Delta)*a2;
        dbl jac = (this->t1max-this->t1min)*(s4max - this->Delta);
        dbl me = cg1H(m2,q2,sp,s4,t1);
        return jac*me;
    }
};

/**
 * @brief phase space kernel of quark parts
 */
class PsKerNLOq : public PsKer {
protected:
    
/**
 * @brief pointer to matrix element
 */
  fPtr5dbl gq1;

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param gq1 pointer to matrix element
 */
    PsKerNLOq(dbl m2, dbl q2, dbl sp, fPtr5dbl gq1) : PsKer(m2,q2,sp,0.), gq1(gq1) {}

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