#ifndef ABSTRACTELPRODUCTION_H
#define ABSTRACTELPRODUCTION_H

#include "config.h"
#include "Pdf/PdfWrapper.h"

/**
 * @brief base class
 */
class AbstractElProduction {
protected:
    
/**
 * @brief heavy quark mass squared: \f$m^2 > 0\f$
 */
    dbl m2;
    
/**
 * @brief virtuality of photon: \f$q^2 < 0\f$
 */
    dbl q2;
    
/**
 * @brief corrected center of mass energy: \f$s' = s - q^2\f$
 */
    dbl sp;
    
/**
 * @brief has partonic s been set?
 */
    bool hasPartonicS;

/**
 * @brief projection
 */
    projT proj;

/**
 * @brief number of light flavours
 */
    uint nlf;

/**
 * @brief parton distribution function
 */
    PdfWrapper* pdf;
    
/**
 * @brief renormalisation scale \f$\mu_R^2\f$
 */
    dbl muR2;

/**
 * @brief has renormalisation scale been set?
 */
    bool hasMuR2;
    
/**
 * @brief factorisation scale \f$\mu_F^2\f$
 */
    dbl muF2;

/**
 * @brief has factorisation scale \f$\mu_F^2\f$ been set?
 */
    bool hasMuF2;
    
/**
 * @brief Bjorken scaling variable
 */
    dbl bjorkenX;
    
/**
 * @brief has Bjorken x been set?
 */
    bool hasBjorkenX;
    
/**
 * @brief running strong coupling
 */
    dbl alphaS;
    
/**
 * has running strong coupling been set
 */
    bool hasAlphaS;
    
/**
 * upper z-integration limit
 */
    dbl zMax;
    
/**
 * @brief checks wether all partonic parameters are given
 */
    void virtual checkPartonic() const;

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param proj projection
 * @param nlf number of light flavours
 */
    AbstractElProduction(dbl m2, dbl q2, projT proj, uint nlf);
    
public:
    
/**
 * @brief destructor
 */
    ~AbstractElProduction();
    
    
/** @name global setter */
///@{
    
/**
 * @brief sets mass of heavy quark \f$m^2 > 0\f$
 * This functions unsets partonic cm-energy
 * @param m2 mass of heavy quark \f$m^2 > 0\f$
 */
    void setM2(dbl m2);
    
/**
 * @brief sets virtuality of photon \f$q^2< 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 */
    void setQ2(dbl q2);
    
///@}


/** @name partonic setter */
///@{
    
/**
 * @brief sets partonic eta
 * @param eta partonic eta
 */
    void setEta(dbl eta);
    
/**
 * @brief sets partonic center of mass energy
 * @param s partonic cm-energy
 */
    void virtual setPartonicS(dbl s) = 0;

///@}


/** @name hadronic setter */
///@{
    
/**
 * @brief sets PDF
 * @param name LHAPDF name
 * @param member LHAPDF member index
 * @see LHAPDF::mkPDF()
 */
    void setPdf(str name, int member);

/*
 * @brief sets PDF
 * @param nmem LHAPDF name / member index
 * @see LHAPDF::mkPDF()
 */
    //void setPdf(str nmem);
    
/**
 * @brief sets renormalisation scale \f$\mu_R^2\f$
 * @param muR2 renormalisation scale \f$\mu_R^2\f$
 */
    void setMuR2(dbl muR2);
    
/**
 * @brief sets factorisation scale \f$\mu_F^2\f$
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 */
    void setMuF2(dbl muF2);
    
/**
 * @brief sets common scale \f$\mu^2=\mu_F^2=\mu_R^2\f$
 * @param mu2 common scale \f$\mu^2=\mu_F^2=\mu_R^2\f$
 */
    void setMu2(dbl mu2);
    
/**
 * @brief sets strong coupling
 * @param alphaS strong coupling
 */
    void setAlphaS(dbl alphaS);
    
/**
 * @brief sets Bjorken x
 * @param bjorkenX Bjorken x
 */
    void setBjorkenX(dbl bjorkenX);
    
///@}

};

#endif // ABSTRACTELPRODUCTION_H
