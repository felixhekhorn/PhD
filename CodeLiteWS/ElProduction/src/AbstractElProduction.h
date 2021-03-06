#ifndef ABSTRACTELPRODUCTION_H
#define ABSTRACTELPRODUCTION_H

#include "config.h"
#include "Pdf/PdfWrapper.h"
#include "Common/ME/BpQED.h"
#include "Common/DynamicScaleFactors.hpp"

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
 * @brief factors for renormalisation scale \f$\mu_R^2\f$
 */
    Common::DynamicScaleFactors muR2;

/**
 * @brief has renormalisation scale been set?
 */
    bool hasMuR2;
    
/**
 * @brief factors for factorisation scale \f$\mu_F^2\f$
 */
    Common::DynamicScaleFactors muF2;

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
 * @brief running strong coupling as provided by LHAPDF
 */
    LHAPDF::AlphaS* aS = 0;
    
/**
 * @brief has running strong coupling been set
 */
    bool hasAlphaS;
    
/**
 * @brief upper z-integration limit
 */
    dbl zMax;
    
/**
 * @brief checks wether all partonic parameters are given
 */
    virtual void checkPartonic() const;
    
/**
 * @brief checks wether all hadronic parameters are given
 */
    void checkHadronic() const;
    
/**
 * @brief checks wether flags are meaningful
 * @param orderFlag computed orders
 * @param channelFlag computed channels
 */
    void checkFlags(const uint orderFlag, const uint channelFlag) const;
    
/**
 * @brief get hadronic hadronic S
 * @return hadronic S
 */
    inline cdbl getHadronicS() const {
        if (!this->hasBjorkenX)
            throw invalid_argument("no Bjorken x or hadronic S given!");
        return -this->q2*(1./this->bjorkenX - 1.);
    };
    
/**
 * @brief get maximum value of pt of heavy anti quark
 * @return pt_Qbar^max
 */
    inline cdbl getHAQTransverseMomentumMax() const {
        return sqrt(this->getHadronicS()/4. - this->m2);
    }
    
/**
 * @brief get maximum value of rapidity of heavy anti quark
 * @return y_Qbar^max
 */
    inline cdbl getHAQRapidityMax() const {
        return atanh(sqrt(1. - 4.*this->m2/this->getHadronicS()));
    }
   
/**
 * @brief returns \f$B'_{QED}\f$
 * @return \f$B'_{QED}\f$
 */
    inline fPtr4dbl getBpQED() const {
        switch(this->proj) {
            case G: return &Common::BpQEDG;
            case L: return &Common::BpQEDL;
            case P: return &Common::BpQEDP;
            default: throw invalid_argument("unknown projection!");
        }
    }

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param proj projection
 * @param nlf number of light flavours
 */
    AbstractElProduction(cdbl m2, cdbl q2, projT proj, uint nlf);
    
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
    void setM2(cdbl m2);
    
/**
 * @brief sets virtuality of photon \f$q^2< 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 */
    void setQ2(cdbl q2);
    
///@}


/** @name partonic setter */
///@{
    
/**
 * @brief sets partonic eta
 * @param eta partonic eta
 */
    void setEta(cdbl eta);
    
/**
 * @brief sets partonic center of mass energy
 * @param s partonic cm-energy
 */
    virtual void setPartonicS(cdbl s) = 0;

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
    
/**
 * @brief sets renormalisation scale \f$\mu_R^2\f$
 * @param muR2 renormalisation scale \f$\mu_R^2\f$
 */
    void setMuR2(const Common::DynamicScaleFactors& muR2);
    
/**
 * @brief sets factorisation scale \f$\mu_F^2\f$
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 */
    void setMuF2(const Common::DynamicScaleFactors& muF2);
    
/**
 * @brief sets common scale \f$\mu^2=\mu_F^2=\mu_R^2\f$
 * @param mu2 common scale \f$\mu^2=\mu_F^2=\mu_R^2\f$
 */
    void setMu2(const Common::DynamicScaleFactors& mu2);
    
/**
 * @brief sets AlphaS_Analytic and its \f$\Lambda_{QCD,n_{lf+1}}\f$
 * @param lambdaQCD \f$\Lambda_{QCD,n_{lf+1}}\f$
 */
    void setLambdaQCD(cdbl lambdaQCD);
    
/**
 * @brief sets Alpha_S by LHAPDF
 * @param name LHAPDF name
 * @param member LHAPDF member index
 * @see LHAPDF::mkAlphaS()
 */
    void setAlphaSByLHAPDF(str name, int member);
    
/**
 * @brief sets Bjorken x
 * @param bjorkenX Bjorken x
 */
    void setBjorkenX(cdbl bjorkenX);
    
/**
 * @brief sets hadronic S
 * @param Sh hadronic S
 */
    void setHadronicS(cdbl Sh);
    
///@}

};

#endif // ABSTRACTELPRODUCTION_H
