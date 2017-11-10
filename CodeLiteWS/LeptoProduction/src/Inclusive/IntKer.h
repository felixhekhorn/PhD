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
    dbl t1 = dblNaN;
/** @brief jacobian for t1 trafo */
    dbl jac_t1 = 0.;
/**
 * @brief sets t1 (and its jacobian)
 * @param a integration variable
 */
    void setT1(cdbl a);

/** @brief parton moment variable xi */
    dbl xi = dblNaN;
    
/** @brief volume of V_HAQTransverseMass2 */
    dbl V_HAQTransverseMass2 = 0.;
/**
 * @brief sets HAQTransverseMomentum (and the volume of mt2)
 * @param a integration variable
 */
    void setHAQTransverseMomentum(cdbl a);
    
/** @brief volume of HAQRapidity */
    dbl V_HAQRapidity = 0.;
/**
 * @brief sets HAQRapidity (and its volume)
 * @param a integration variable
 */
    void setHAQRapidity(cdbl a);
    
/** @brief partonic s4 */
    dbl s4 = dblNaN;
/** @brief sets partonic s and t1 by pt,y,s4 */
    void setPartonicVars();
    
/**
 * @brief get hadronic T1
 * @return T1
 */
    cdbl getHadronicT1() const;
    
/**
 * @brief get hadronic U1
 * @return U1
 */
    cdbl getHadronicU1() const;
    
/** @brief define shortcut */
    typedef cdbl (*fPtr5dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
    
/**
 * @brief sets correct pointers to IntA2
 * @param fVV vector-vector part
 * @param fVA vector-axial part
 */
    void getIntA2(fPtr5dbl &fVV, fPtr5dbl &fVA) const;
    
/**
 * @brief sets correct pointers to IntA1
 * @param fVV vector-vector part
 * @param fVA vector-axial part
 * @param fAA axial-axial part
 */
    void getIntA1(fPtr5dbl &fVV, fPtr5dbl &fVA, fPtr5dbl &fAA) const;
    
/** 
 * @brief computes a single current cg0
 * @return cg0
 */
    cdbl cg0_cur() const;
    
/** 
 * @brief computes a single current dq1
 * @return dq1
 */
    cdbl dq1_cur() const;
    
/** 
 * @brief computes a single current cq1
 * @return cq1
 */
    cdbl cq1_cur() const;
    
/** 
 * @brief computes a single current cqBarF1
 * @return cqBarF1
 */
    cdbl cqBarF1_cur() const;

/** 
 * @brief computes full cg0
 * @return cg0
 */
    cdbl cg0() const;

/** 
 * @brief computes full cq1
 * @return cq1
 */
    cdbl cq1() const;

/** 
 * @brief computes full cqBarF1
 * @return cqBarF1
 */
    cdbl cqBarF1() const;
    
/**
 * @brief computes a single partonic function
 * @param a1 integration variable
 * @param a2 integration variable
 * @return a single partonic function
 */
    cdbl runPartonic(cdbl a1, cdbl a2);
    
/**
 * @brief computes a hadronic function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @return a single hadronic function
 */
    cdbl runHadronic(cdbl a1, cdbl a2, cdbl a3);
    
/** 
 * @brief computes Fg0
 * @return Fg0
 */
    cdbl Fg0() const;
    
/** 
 * @brief computes Fq1
 * @return Fq1
 */
    cdbl Fq1() const;
    
public:
    
/** @brief soft cut-off \f$\Delta\f$ */
    dbl Delta = 0.;
    
/** @brief current transverse momentum pt of heavy anti quark */
    dbl HAQTransverseMomentum = dblNaN;
    
/** @brief current rapidity y of heavy anti quark */
    dbl HAQRapidity = dblNaN;
    
/** @brief current Feynman-x of heavy anti quark */
    dbl HAQFeynmanX = dblNaN;

/** @brief constructor */
    IntKer();
    
/** @brief destructor */
    ~IntKer();
    
/**
 * @brief called function in kernel
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @param a4 integration variable
 * @param a5 integration variable
 * @return kernel
 */
    cdbl operator()(cdbl a1, cdbl a2 = 0., cdbl a3 = 0., cdbl a4 = 0., cdbl a5 = 0.);
    
/** @name additional kernel modes */
///@{
    static cuint Mode_dF_dHAQTransverseMomentum = 150;
    static cuint Mode_dF_dHAQRapidity = 151;
    static cuint Mode_dF_dHAQFeynmanX = 152;
///@}

};

}

#endif // INTKER_H