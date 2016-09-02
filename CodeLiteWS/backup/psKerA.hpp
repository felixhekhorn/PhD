#ifndef psKerA_H_
#define psKerA_H_

#include "config.h"
#include "psKer.hpp"
#include "IntA.h"

/**
 * @class psKerA
 * @brief abstract phase space kernel of quark parts
 */
class psKerA : public psKer {
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
 */
    psKerA(dbl m2, dbl q2, dbl sp) : psKer(m2,q2,sp,0.) {}

/**
 * @brief called function
 * @param x1
 * @param x2
 * @return quark part
 */
    dbl operator()(dbl x1, dbl x2) const {
        dbl s = sp+q2;
        dbl beta = Sqrt(1 - (4*m2)/s);
        dbl t1 = this->t1min + (this->t1max-this->t1min)*x1;
        dbl s4max = (s*((sp*(1 - beta))/2. + t1)*((sp*(1 + beta))/2. + t1))/(sp*t1);
        dbl s4 = s4max*x2;
        dbl jac = (this->t1max-this->t1min)*s4max;
        return jac*this->get(t1, s4);
    }
};

/**
 * @class psKerAG1
 * @brief phase space kernel of quark part with heavy charges in g-projection
 */
class psKerAG1 : public psKerA {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return 
 */
    dbl get(dbl t1, dbl s4) const {
        dbl n = Kqgg * NC * CF;
        return (m2/(4.*M_PI)) * n * (IntAG1(m2,q2,sp,s4,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 */
    psKerAG1(dbl m2, dbl q2, dbl sp) : psKerA(m2,q2,sp) {}
};

/**
 * @class psKerAG1ScaleF
 * @brief phase space kernel of scaling part of quark part with heavy charges in g-projection
 */
class psKerAG1ScaleF : public psKerA {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return 
 */
    dbl get(dbl t1, dbl s4) const {
        dbl n = Kqgg * NC * CF;
        return (m2/(4.*M_PI)) * n * (IntAG1ScaleF(m2,q2,sp,s4,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 */
    psKerAG1ScaleF(dbl m2, dbl q2, dbl sp) : psKerA(m2,q2,sp) {}
};

/**
 * @class psKerAG2
 * @brief phase space kernel of quark part with light charges in g-projection
 */
class psKerAG2 : public psKerA {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return 
 */
    dbl get(dbl t1, dbl s4) const {
        dbl n = Kqgg * NC * CF;
        return (m2/(4.*M_PI)) * n * (IntAG2(m2,q2,sp,s4,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 */
    psKerAG2(dbl m2, dbl q2, dbl sp) : psKerA(m2,q2,sp) {}
};

/**
 * @class psKerAL1
 * @brief phase space kernel of quark part with heavy charges in longitudinal projection
 */
class psKerAL1 : public psKerA {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return 
 */
    dbl get(dbl t1, dbl s4) const {
        dbl n = Kqgg * NC * CF;
        return (m2/(4.*M_PI)) * n * (IntAL1(m2,q2,sp,s4,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 */
    psKerAL1(dbl m2, dbl q2, dbl sp) : psKerA(m2,q2,sp) {}
};

/**
 * @class psKerAL1ScaleF
 * @brief phase space kernel of scaling part of quark part with heavy charges in longitudinal projection
 */
class psKerAL1ScaleF : public psKerA {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return 
 */
    dbl get(dbl t1, dbl s4) const {
        dbl n = Kqgg * NC * CF;
        return (m2/(4.*M_PI)) * n * (IntAL1ScaleF(m2,q2,sp,s4,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 */
    psKerAL1ScaleF(dbl m2, dbl q2, dbl sp) : psKerA(m2,q2,sp) {}
};

/**
 * @class psKerAL2
 * @brief phase space kernel of quark part with light charges in longitudinal projection
 */
class psKerAL2 : public psKerA {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return 
 */
    dbl get(dbl t1, dbl s4) const {
        dbl n = Kqgg * NC * CF;
        return (m2/(4.*M_PI)) * n * (IntAL2(m2,q2,sp,s4,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 */
    psKerAL2(dbl m2, dbl q2, dbl sp) : psKerA(m2,q2,sp) {}
};

/**
 * @class psKerAP1
 * @brief phase space kernel of quark part with heavy charges in polarized projection
 */
class psKerAP1 : public psKerA {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return 
 */
    dbl get(dbl t1, dbl s4) const {
        dbl n = Kqgg * NC * CF;
        return (m2/(4.*M_PI)) * n * (IntAP1(m2,q2,sp,s4,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 */
    psKerAP1(dbl m2, dbl q2, dbl sp) : psKerA(m2,q2,sp) {}
};

/**
 * @class psKerAP1ScaleF
 * @brief phase space kernel of scaling part of quark part with heavy charges in polarized projection
 */
class psKerAP1ScaleF : public psKerA {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return 
 */
    dbl get(dbl t1, dbl s4) const {
        dbl n = Kqgg * NC * CF;
        return (m2/(4.*M_PI)) * n * (IntAP1ScaleF(m2,q2,sp,s4,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 */
    psKerAP1ScaleF(dbl m2, dbl q2, dbl sp) : psKerA(m2,q2,sp) {}
};

/**
 * @class psKerAP2
 * @brief phase space kernel of quark part with light charges in polarized projection
 */
class psKerAP2 : public psKerA {
protected:
    
/**
 * @brief called function
 * @param t1
 * @param s4
 * @return 
 */
    dbl get(dbl t1, dbl s4) const {
        dbl n = Kqgg * NC * CF;
        return (m2/(4.*M_PI)) * n * (IntAP2(m2,q2,sp,s4,t1))/(sp*sp);
    }

public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param sp center of mass energy \f$s' = s - q^2\f$
 */
    psKerAP2(dbl m2, dbl q2, dbl sp) : psKerA(m2,q2,sp) {}
};

#endif // psKerA_H_