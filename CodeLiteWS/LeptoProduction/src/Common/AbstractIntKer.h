#ifndef Common_AbstractIntKer_H_
#define Common_AbstractIntKer_H_

#include <limits.h>
#include <boost/format.hpp>

#include "../config.h"
#include "../Flags.hpp"
#include "../Projection.hpp"
#include "../DynamicScaleFactors.hpp"
#include "../Pdf/PdfWrapper.h"

namespace Common {

/**
 * @class AbstractIntKer
 * @brief abstract base class for integration kernels
 */
class AbstractIntKer {
protected:

/** @brief define s' = s - q2 */
    #define _sp cdbl sp = this->s + this->Q2;

/**
 * @brief returns partonic beta
 * @return beta
 */
    inline cdbl beta() const { return sqrt(1. - 4.*this->m2/this->s); }
    
/**
 * @brief returns electric charge of particle
 * @param PDGId PDG particle id
 * @return electric charge
 */
    cdbl getElectricCharge(const int PDGId) const;
    
/**
 * @brief returns vectorial coupling of particle
 * @param PDGId PDG particle id
 * @return vectorial coupling
 */
    cdbl getVectorialCoupling(const int PDGId) const;
    
/**
 * @brief returns axial coupling of particle
 * @param PDGId PDG particle id
 * @return axial coupling
 */
    cdbl getAxialCoupling(const int PDGId) const;
    
/**
 * @brief computes normalisation to photon-Z part
 * @return normalisation to photon-Z part
 */
    cdbl getNormphZ() const;
    
/**
 * @brief computes normalisation to Z part
 * @return normalisation to Z part
 */
    cdbl getNormZ() const;
    
/**
 * @brief computes a scale
 * @param factors factors
 * @param HAQTransverseMomentum
 * @param HQPairTransverseMomentum
 * @return current mu2
 */
    cdbl getScale(const DynamicScaleFactors& factors, cdbl HAQTransverseMomentum, cdbl HQPairTransverseMomentum = 0.) const;
    
/**
 * @brief computes current alphaS
 * @param HAQTransverseMomentum
 * @param HQPairTransverseMomentum
 * @return current alphaS
 */
    cdbl getAlphaS(cdbl HAQTransverseMomentum, cdbl HQPairTransverseMomentum = 0.) const;
    
/** @brief define shortcut */
    typedef cdbl (*fPtr4dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl t1);
    
/**
 * @brief sets correct pointers to BQED
 * @param fVV vector-vector part
 * @param fVA vector-axial part
 * @param fAA axial-axial part
 */
    void getBQED(fPtr4dbl &fVV, fPtr4dbl &fVA, fPtr4dbl &fAA) const;
    
/**
 * @brief get suitable B_QED
 * @param t1
 * @return B_QED in correct projection and correct linear combination
 */
    cdbl BQED(cdbl t1) const;
    
public:

/** @brief number of light flavours */
    uint nlf = 0;
    
/** @brief mass^2 of heavy quark */
    dbl m2 = nan("");
    
/** @brief controlling flags */
    Flags flags;
    
/** @brief transferred Q2 > 0 */
    dbl Q2 = nan("");
    
/** @brief partonic energy */
    dbl s = nan("");
    
/** @brief Bjorken scaling variable x */
    dbl xBj = nan("");
    
/** @brief invariant Mass of Z0 - defaults to PDG value */
    dbl MZ2 = pow(91.1876,2);
    
/** @brief weak mixing angle - defaults to PDG value */
    dbl sin2ThetaWeak = 0.231;
    
/** @brief incoming lepton has negative charge?  - i.e. e- or e+ */
    bool incomingLeptonHasNegativeCharge = true;
    
/** @brief incoming lepton has positive helicity? */
    bool incomingLeptonHasPositiveHelicity = true;
    
/** @brief used projection */
    Projection proj = F2;
    
/** @brief used pdfs */
    PdfWrapper* pdf = 0;
    
/** @brief factors for renormalisation scale \f$\mu_R^2\f$ */
    DynamicScaleFactors muR2;
    
/** @brief factors for factorisation scale \f$\mu_F^2\f$ */
    DynamicScaleFactors muF2;
    
/** @brief running strong coupling as provided by LHAPDF */
    LHAPDF::AlphaS_Analytic* aS = 0;
    
/** @brief QCD scale */
    dbl lambdaQCD = nan("");
    
/** @brief current kernel mode */
    uint mode = 0;
    
/** @name common kernel modes */
///@{
    static cuint Mode_cg0_VV = 1;
    static cuint Mode_cg0_VA = 2;
    static cuint Mode_cg0_AA = 3;
    static cuint Mode_F = 100;
///@}
    
/**
 * @brief constructor
 * 
 * sets mu2 = 4m2 + Q2 as default scale
 */
    AbstractIntKer();
    
/**
 * @brief destructor
 */
    ~AbstractIntKer();

/**
 * @brief returns maximum z
 * @return beta
 */
    inline cdbl getZMax() const { return this->Q2/(4.*this->m2 + this->Q2); };
    
/**
 * @brief return hadronic S
 * @return S_h
 */
    inline cdbl getHadronicS() const { return this->Q2/this->xBj - this->Q2; };
    
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
};

}

#endif // Common_AbstractIntKer_H_
