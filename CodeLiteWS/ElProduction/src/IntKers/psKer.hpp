#ifndef psKers_H_
#define psKers_H_

#include "../config.h"
#include "../IntKers/IntKerBase.hpp"

using namespace Color;

/**
 * @brief abstract phase space kernel
 */
class PsKerBase : public IntKerBase {
protected:
    
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 */
    PsKerBase(dbl m2, dbl q2, dbl sp) : IntKerBase(m2, q2){
        this->setSpRaw(sp);
    }

};


/**
 * @brief phase space kernel of soft+virtual contributions
 */
class PsKerNLOgSV : public PsKerBase {
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
 * @param cg1SV pointer to matrix element
 */
    PsKerNLOgSV(dbl m2, dbl q2, dbl sp, fPtr4dbl cg1SV) : PsKerBase(m2,q2,sp), cg1SV(cg1SV) {}

/**
 * @brief called function
 * @param a
 * @return kernel
 */
    dbl operator()(dbl a) {
        this->setT1(a);
        dbl me = cg1SV(m2,q2,sp,t1);
        //printf("a: %e t1:%e %e*%e\n",a,t1,jac,this->get(t1));
        return jac*me;
    }
};

/**
 * @brief phase space kernel of hard part
 */
class PsKerNLOg : public PsKerBase {
protected:
/**
 * @brief energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 */
    dbl Delta;
    
/**
 * @brief pointer to S+V matrix element
 */
    fPtr4dbl hg1SV;
    
/**
 * @brief pointer to Delta-logs of S+V matrix element
 */
    fPtr4dbl hg1SVDelta1;
    
/**
 * @brief pointer to double Delta-logs of S+V matrix element
 */
    fPtr4dbl hg1SVDelta2;
    
/**
 * @brief pointer to hard matrix element
 */
    fPtr5dbl hg1H;

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 * @param hg1SV pointer to S+V matrix element
 * @param hg1SVDelta1 pointer to Delta-logs of S+V matrix element
 * @param hg1SVDelta2 pointer to double Delta-logs of S+V matrix element
 * @param hg1H pointer to hard matrix element
 */
    PsKerNLOg(dbl m2, dbl q2, dbl sp, dbl Delta, fPtr4dbl hg1SV, fPtr4dbl hg1SVDelta1, fPtr4dbl hg1SVDelta2, fPtr5dbl hg1H) : PsKerBase(m2,q2,sp),
        Delta(Delta), hg1SV(hg1SV), hg1SVDelta1(hg1SVDelta1), hg1SVDelta2(hg1SVDelta2), hg1H(hg1H) {}

/**
 * @brief called function
 * @param a1
 * @param a2
 * @return hard part
 */
    dbl operator()(dbl a1, dbl a2) {
        this->setT1(a1);
        this->setS4(a2,Delta);
        dbl A0 = 1./(s4max - Delta);
        dbl fakeMESV = hg1SV(m2,q2,sp,t1) * A0;
        //if (isnan(fakeMESV)) printf("hg1SV\n");
        
        dbl A1 = log(s4max/m2)/(s4max - Delta) - 1./s4;
        fakeMESV += hg1SVDelta1(m2,q2,sp,t1) * A1;
        //if (isnan(fakeMESV)) printf("hg1SVDelta1\n");
        
        if (0 != hg1SVDelta2) {
            dbl A2 = pow(log(s4max/m2),2)/(s4max - Delta) - 2.*log(s4/m2)/s4;
            fakeMESV += hg1SVDelta2(m2,q2,sp,t1) * A2;
            //if (isnan(fakeMESV)) printf("hg1SVDelta2\n");
        }
        dbl meH = hg1H(m2,q2,sp,s4,t1);
        /*if (isnan(meH)) {
            printf("nan: meH\n");
            meH = 0.;
        }
        if (isinf(meH)) {
            printf("inf: meH\n");
            meH = 0.;
        }
        if (isnan(meH+fakeMESV)) printf("meH+fakeMESV\n");
        if (isnan(jac*(meH + fakeMESV))) printf("nan: jac*(meH + fakeMESV)\n");
        if (isinf(jac*(meH + fakeMESV))) printf("inf: jac*(meH + fakeMESV)\n");*/
        return jac*(meH + fakeMESV);
    }
};

/**
 * @brief phase space kernel of quark parts
 */
class PsKerNLOq : public PsKerBase {
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
    PsKerNLOq(dbl m2, dbl q2, dbl sp, fPtr5dbl gq1) : PsKerBase(m2,q2,sp), gq1(gq1) {}

/**
 * @brief called function
 * @param a1
 * @param a2
 * @return quark part
 */
    dbl operator()(dbl a1, dbl a2) {
        this->setT1(a1);
        this->setS4(a2,0.);
        dbl me = gq1(m2,q2,sp,s4,t1);
        return jac*me;
    }
};

#endif // psKers_H_