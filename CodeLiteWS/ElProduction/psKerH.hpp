#ifndef psKerH_H_
#define psKerH_H_

#include "config.h"
#include "psKer.hpp"
#include "IntRFinite.h"
#include "RPole.h"

using namespace Color;

/**
 * @class psKerHG
 * @brief abstract phase space kernel of hard part
 */
class psKerH : public psKer {
protected:
    
/**
 * @brief actual kernel
 * @param t1
 * @param s4
 * @return kernel
 */
    virtual dbl get(dbl t1, dbl s4) const = 0;

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerH(dbl m2, dbl q2, dbl sp, dbl Delta) : psKer(m2,q2,sp,Delta) {}

/**
 * @brief called function
 * @param x1
 * @param x2
 * @return hard part
 */
    dbl operator()(dbl x1, dbl x2) const {
        dbl s = sp+q2;
        dbl beta = Sqrt(1 - (4*m2)/s);
        dbl t1 = this->t1min + (this->t1max-this->t1min)*x1;
        dbl s4max = (s*((sp*(1 - beta))/2. + t1)*((sp*(1 + beta))/2. + t1))/(sp*t1);
        dbl s4 = this->Delta + (s4max - this->Delta)*x2;
        dbl jac = (this->t1max-this->t1min)*(s4max - this->Delta);
        return jac*this->get(t1, s4);
    }
};

/**
 * @class psKerHG
 * @brief phase space kernel of hard part in g-projection
 */
class psKerHG : public psKerH {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return hard part: (OK + QED)_G
 */
    dbl get(dbl t1, dbl s4) const {
        dbl nG = 1./(4) * Kggg * NC * CF;
        return (m2/(4.*M_PI)) * nG * (CA * (IntROKfiniteG(m2,q2,sp,s4,t1) + RPoleG(m2,q2,sp,s4,t1)) + 2.*CF * IntRQEDfiniteG(m2,q2,sp,s4,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerHG(dbl m2, dbl q2, dbl sp, dbl Delta) : psKerH(m2,q2,sp,Delta) {}
};

/**
 * @class psKerHL
 * @author Felix Hekhorn
 * @date 27/06/16
 * @file psKers.hpp
 * @brief phase space kernel of hard part in longitudinal projection
 */
class psKerHL : public psKerH {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return hard part: (OK + QED)_L
 */
    dbl get(dbl t1, dbl s4) const {
        dbl nL = 1./(2) * Kggg * NC * CF;
        return (m2/(4.*M_PI)) * nL * (CA * (IntROKfiniteL(m2,q2,sp,s4,t1) + RPoleL(m2,q2,sp,s4,t1)) + 2.*CF * IntRQEDfiniteL(m2,q2,sp,s4,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerHL(dbl m2, dbl q2, dbl sp, dbl Delta) : psKerH(m2,q2,sp,Delta) {}

};

/**
 * @class psKerHGBarF
 * @author Felix Hekhorn
 * @date 27/06/16
 * @file psKers.hpp
 * @brief phase space kernel of factorisation scaling of hard part in g-projection
 */
class psKerHGBarF : public psKerH {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return hard part: (OK + QED)_G
 */
    dbl get(dbl t1, dbl s4) const {
        dbl nG = 1./(4) * Kggg * NC * CF;
        return (m2/(4.*M_PI)) * nG * (CA * (RPoleGScaleF(m2,q2,sp,s4,t1)))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerHGBarF(dbl m2, dbl q2, dbl sp, dbl Delta) : psKerH(m2,q2,sp,Delta) {}
};

/**
 * @class psKerHLBarF
 * @author Felix Hekhorn
 * @date 27/06/16
 * @file psKers.hpp
 * @brief phase space kernel of factorisation scaling of hard part in longitudinal projection
 */
class psKerHLBarF : public psKerH {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return hard part: (OK + QED)_G
 */
    dbl get(dbl t1, dbl s4) const {
        dbl nL = 1./(2) * Kggg * NC * CF;
        return (m2/(4.*M_PI)) * nL * (CA * (RPoleLScaleF(m2,q2,sp,s4,t1)))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    psKerHLBarF(dbl m2, dbl q2, dbl sp, dbl Delta) : psKerH(m2,q2,sp,Delta) {}
};

#endif // psKerH_H_