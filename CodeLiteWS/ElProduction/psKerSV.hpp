#ifndef psKerSV_H_
#define psKerSV_H_

#include "config.h"
#include "psKer.hpp"
#include "SV.h"

using namespace Color;

/**
 * @brief phase space kernel of soft+virtual contributions
 */
class psKerSV : public psKer {
protected:
    
/**
 * @brief actual kernel
 * @param t1
 * @return kernel
 */
    virtual dbl get(dbl t1) const = 0;

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerSV(dbl m2, dbl q2, dbl sp, dbl Delta) : psKer(m2,q2,sp,Delta) {}

/**
 * @brief called function
 * @param x
 * @return kernel
 */
    dbl operator()(dbl x1) const {
        dbl t1 = this->t1min + (this->t1max-this->t1min)*x1;
        dbl jac = (this->t1max-this->t1min);
        //printf("x: %e t1:%e %e*%e\n",x1,t1,jac,this->get(t1));
        return jac*this->get(t1);
    }
};

/**
 * @brief phase space kernel of soft+virtual part in g-projection
 */
class psKerSVG : public psKerSV {
protected:
    
/**
 * @brief called function
 * @param t1
 * @return soft+virtual: (OK+QED)_G
 */
    inline dbl get(dbl t1) const {
        dbl nG = Kggg * NC * CF;
        return (m2/(4.*M_PI)) * nG * (CA * SVOKG(m2,q2,sp,Delta,t1) + CF * SVQEDG(m2,q2,sp,Delta,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerSVG(dbl m2, dbl q2, dbl sp, dbl Delta) : psKerSV(m2,q2,sp,Delta) {}
};

/**
 * @brief phase space kernel of soft+virtual part in longitudinal projection
 */
class psKerSVL : public psKerSV {
protected:
    
/**
 * @brief called function
 * @param t1
 * @return soft+virtual part: (OK+QED)_G
 */
    inline dbl get(dbl t1) const {
        dbl nL = Kggg * NC * CF;
        return (m2/(4.*M_PI)) * nL * (CA * SVOKL(m2,q2,sp,Delta,t1) + CF * SVQEDL(m2,q2,sp,Delta,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerSVL(dbl m2, dbl q2, dbl sp, dbl Delta) : psKerSV(m2,q2,sp,Delta) {}

};

/**
 * @brief phase space kernel of factorization log scaling of soft+virtual part in g-projection
 */
class psKerSVGBarF : public psKerSV {
protected:

/**
 * @brief called function
 * @param t1
 * @return hard part: (OK+QED)_G
 */
    inline dbl get(dbl t1) const {
        dbl nG = Kggg * NC * CF;
        return (m2/(4.*M_PI)) * nG * (CA * SVOKGScaleF(m2,q2,sp,Delta,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerSVGBarF(dbl m2, dbl q2, dbl sp, dbl Delta) : psKerSV(m2,q2,sp,Delta) {}

};

/**
 * @brief phase space kernel of factorization log scaling of soft+virtual part in longitudinal projection
 */
class psKerSVLBarF : public psKerSV {
protected:
    
/**
 * @brief called function
 * @param t1
 * @return soft+virtual part: (OK+QED)_G
 */
    inline dbl get(dbl t1) const {
        dbl nL = Kggg * NC * CF;
        return (m2/(4.*M_PI)) * nL * (CA * SVOKLScaleF(m2,q2,sp,Delta,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerSVLBarF(dbl m2, dbl q2, dbl sp, dbl Delta) : psKerSV(m2,q2,sp,Delta) {}

};

/**
 * @brief phase space kernel of renormalization log scaling of soft+virtual part in g-projection
 */
class psKerSVGBarR : public psKerSV {
protected:

/**
 * @brief called function
 * @param t1
 * @return hard part: (OK+QED)_G
 */
    inline dbl get(dbl t1) const {
        dbl nG = Kggg * NC * CF;
        return (m2/(4.*M_PI)) * nG * (CA * SVOKGScaleR(m2,q2,sp,Delta,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerSVGBarR(dbl m2, dbl q2, dbl sp, dbl Delta) : psKerSV(m2,q2,sp,Delta) {}

};

/**
 * @brief phase space kernel of renormalization log scaling of soft+virtual part in longitudinal projection
 */
class psKerSVLBarR : public psKerSV {
protected:
    
/**
 * @brief called function
 * @param t1
 * @return soft+virtual part: (OK+QED)_G
 */
    inline dbl get(dbl t1) const {
        dbl nL = Kggg * NC * CF;
        return (m2/(4.*M_PI)) * nL * (CA * SVOKLScaleR(m2,q2,sp,Delta,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerSVLBarR(dbl m2, dbl q2, dbl sp, dbl Delta) : psKerSV(m2,q2,sp,Delta) {}

};

#endif // psKerSV_H_