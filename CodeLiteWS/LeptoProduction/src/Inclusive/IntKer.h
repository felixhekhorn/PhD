#ifndef INTKER_H
#define INTKER_H

#include "../Common/AbstractIntKer.h"

/**
 * @brief namespace for inclusive lepto production of heavy quarks
 */
namespace Inclusive {

/**
 * @brief Inclusive integration kernel
 */
class IntKer : public Common::AbstractIntKer {
    
/** @brief partonic t1 */
    dbl t1;
/** @brief jacobian for t1 trafo */
    dbl jac_t1;
/**
 * @brief sets t1 (and its jacobian)
 * @param a integration variable
 */
    void setT1(cdbl a);

/** @brief parton moment variable z = x_bj/xi */
    dbl z;
/** @brief jacobian for z */
    dbl jac_z;
/**
 * @brief sets z (and its jacobian)
 * @param a integration variable
 */
    void setZ(cdbl a);
    
/**
 * @brief get hadronic T1
 * @param ey exp(y)
 * @param mt sqrt(mt2)
 * @return T1(exp(y),mt)
 */
    cdbl getHadronicT1(cdbl ey, cdbl mt) const;
    
/**
 * @brief get hadronic U1
 * @param ey exp(y)
 * @param mt sqrt(mt2)
 * @return U1(exp(y),mt)
 */
    cdbl getHadronicU1(cdbl ey, cdbl mt) const;
    
/** 
 * @brief computes a single current cg0
 * @return cg0
 */
    cdbl cg0_cur() const;

/** 
 * @brief computes full cg0
 * @return cg0
 */
    cdbl cg0() const;
    
/** 
 * @brief computes F
 * @return F
 */
    cdbl F() const;
    
public:
    
/** @brief soft cut-off \f$\Delta\f$ */
    dbl Delta;
    
/** @brief current transverse momentum pt of heavy anti quark */
    dbl HAQTransverseMomentum;
    
/** @brief current rapidity y of heavy anti quark */
    dbl HAQRapidity;
    
/** @brief current Feynman-x of heavy anti quark */
    dbl HAQFeynmanX;

/** @brief constructor */
    IntKer();
    
/** @brief destructor */
    ~IntKer();
    
/**
 * @brief called function in kernel
 * @param a1
 * @param a2
 */
    cdbl operator()(cdbl a1, cdbl a2 = 0.);
    
    
/** @name additional kernel modes */
///@{
    static cuint Mode_dF_dHAQTransverseMomentum = 150;
    static cuint Mode_dF_dHAQRapidity = 151;
    static cuint Mode_dF_dHAQFeynmanX = 152;
///@}

};

}

#endif // INTKER_H
