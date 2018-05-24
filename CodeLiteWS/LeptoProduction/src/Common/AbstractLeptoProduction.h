#ifndef Common_AbstractLeptoProduction_H_
#define Common_AbstractLeptoProduction_H_

#include "../config.h"
#include "AbstractIntKer.h"

/**
 * @brief namespace for common functions, such as Altarelli-Parisi
 */
namespace Common {

/**
 * @class AbstractLeptoProduction
 * @brief abstract base class for applications
 */
class AbstractLeptoProduction {
protected:

/** @brief integration kernel - to be provided by the child */
    AbstractIntKer* ker = 0;
    
/** @brief check partonic s */
    #define checkPartonicS(s) if (!isfinite(s) || s < 4.*this->ker->m2) throw domain_error("partonic s has to be set, finite and larger than the threshold 4m^2!");
/** @brief check Q2 */
    #define checkQ2(Q2) if (!isfinite(Q2) || Q2 <= 0.) throw domain_error("transfered Q2 has to be set, finite and strict positive!");
/** @brief check xBjorken */
    #define checkXBjorken(xBj) if (!isfinite(xBj) || xBj <= 0. || xBj > 1.) throw domain_error("x_Bjorken has to be set, finite and in (0:1]!");
/** @brief check alpha_s */
    #define checkAlphaS(aS) if (0 == aS) throw domain_error("alpha_s has to be set!");
/** @brief check alphaEM */
    #define checkAlphaEM(alphaEM) if (!isfinite(alphaEM) || alphaEM <= 0.) throw domain_error("alpha_EM has to be finite and strict positive!");
/** @brief check leptonic Sl */
    #define checkLeptonicS(Sl) if (!isfinite(Sl) || Sl <= 4.*this->ker->m2) throw domain_error("leptonic s has to be set, finite and strict larger than the threshold 4m^2!");
    
public:

/**
 * @brief constructor
 * @param ker integration kernel
 * @param nlf number of light flavours
 * @param m2 mass^2 of heavy flavours
 */
    AbstractLeptoProduction(AbstractIntKer* ker, cuint nlf, cdbl m2);
    
/** @brief destructor */
    ~AbstractLeptoProduction();
    
/** @name global setter */
///@{
    
/**
 * @brief sets number of light flavours
 * @param nlf number of light flavours
 */
    void setNumberOfLightFlavours(cuint nlf);
    
/**
 * @brief sets mass^2 of heavy flavours
 * @param m2 mass^2 of heavy flavours
 */
    void setM2(cdbl m2);
    
/**
 * @brief sets transfered Q2 > 0
 * @param Q2 transfered Q2 > 0
 */
    void setQ2(cdbl Q2);
    
/**
 * @brief sets used projection
 * @param proj projection
 */
    void setProjection(Projection proj);
    
/**
 * @brief manipulate controlling flags
 * @return controlling flags
 */
    inline Flags& flags() const {
        return this->ker->flags;
    }
    
///@}

/** @name partonic setter */
///@{
    
/**
 * @brief sets partonic energy \f$s >= 4m^2\f$
 * @param s partonic energy \f$s >= 4m^2\f$
 */
    void setPartonicS(cdbl s);
    
/**
 * @brief sets partonic distance from threshold \f$\eta = \frac{s-4 m^2}{4 m^2} >= 0\f$
 * @param eta partonic distance from threshold
 */
    void setPartonicEta(cdbl eta);
///@}
    
/** @name partonic coefficient functions */
///@{

/**
 * @brief computes vector-vector part of leading order partonic gluon contribution \f$c_{\Pg}^{(0),VV}\f$
 * @return \f$c_{\Pg}^{(0),VV}\f$
 */
    virtual cdbl cg0_VV() const = 0;

/**
 * @brief computes vector-axial part of leading order partonic gluon contribution \f$c_{\Pg}^{(0),VA}\f$
 * @return \f$c_{\Pg}^{(0),VA}\f$
 */
    virtual cdbl cg0_VA() const = 0;

/**
 * @brief computes axial-axial part of leading order partonic gluon contribution \f$c_{\Pg}^{(0),AA}\f$
 * @return \f$c_{\Pg}^{(0),AA}\f$
 */
    virtual cdbl cg0_AA() const = 0;

/**
 * @brief computes vector-vector part of next-to-leading order partonic quark contribution with light quark charge \f$d_{\Pq}^{(1),VV}\f$
 * @return \f$d_{\Pq}^{(1),VV}\f$
 */
    virtual cdbl dq1_VV() const = 0;

/**
 * @brief computes vector-axial part of next-to-leading order partonic quark contribution with light quark charge \f$d_{\Pq}^{(1),VA}\f$
 * @return \f$d_{\Pq}^{(1),VA}\f$
 */
    virtual cdbl dq1_VA() const = 0;

/**
 * @brief computes axial-axial part of next-to-leading order partonic quark contribution with light quark charge \f$d_{\Pq}^{(1),AA}\f$
 * @return \f$d_{\Pq}^{(1),AA}\f$
 */
    virtual cdbl dq1_AA() const = 0;

/**
 * @brief computes vector-vector part of next-to-leading order partonic quark contribution with heavy quark charge \f$c_{\Pq}^{(1),VV}\f$
 * @return \f$c_{\Pq}^{(1),VV}\f$
 */
    virtual cdbl cq1_VV() const = 0;

/**
 * @brief computes vector-axial part of next-to-leading order partonic quark contribution with heavy quark charge \f$c_{\Pq}^{(1),VA}\f$
 * @return \f$c_{\Pq}^{(1),VA}\f$
 */
    virtual cdbl cq1_VA() const = 0;

/**
 * @brief computes axial-axial part of next-to-leading order partonic quark contribution with heavy quark charge \f$c_{\Pq}^{(1),AA}\f$
 * @return \f$c_{\Pq}^{(1),AA}\f$
 */
    virtual cdbl cq1_AA() const = 0;

/**
 * @brief computes vector-vector part of next-to-leading order partonic quark contribution with factorisation scale \f$\bar c_{\Pq}^{F,(1),VV}\f$
 * @return \f$\bar c_{\Pq}^{F,(1),VV}\f$
 */
    virtual cdbl cqBarF1_VV() const = 0;

/**
 * @brief computes vector-axial part of next-to-leading order partonic quark contribution with factorisation scale \f$\bar c_{\Pq}^{F,(1),VA}\f$
 * @return \f$\bar c_{\Pq}^{F,(1),VA}\f$
 */
    virtual cdbl cqBarF1_VA() const = 0;

/**
 * @brief computes axial-axial part of next-to-leading order partonic quark contribution with factorisation scale \f$\bar c_{\Pq}^{F,(1),AA}\f$
 * @return \f$\bar c_{\Pq}^{F,(1),AA}\f$
 */
    virtual cdbl cqBarF1_AA() const = 0;

/**
 * @brief computes vector-vector part of next-to-leading order partonic gluon contribution with factorisation scale \f$\bar c_{\Pg}^{F,(1),VV}\f$
 * @return \f$\bar c_{\Pg}^{F,(1),VV}\f$
 */
    virtual cdbl cgBarF1_VV() const = 0;

/**
 * @brief computes vector-axial part of next-to-leading order partonic gluon contribution with factorisation scale \f$\bar c_{\Pg}^{F,(1),VA}\f$
 * @return \f$\bar c_{\Pg}^{F,(1),VA}\f$
 */
    virtual cdbl cgBarF1_VA() const = 0;

/**
 * @brief computes axial-axial part of next-to-leading order partonic gluon contribution with factorisation scale \f$\bar c_{\Pg}^{F,(1),AA}\f$
 * @return \f$\bar c_{\Pg}^{F,(1),AA}\f$
 */
    virtual cdbl cgBarF1_AA() const = 0;
    
///@}

/** @name hadronic setter */
///@{

/**
 * @brief sets Bjorken scaling variable x
 * @param xBj Bjorken scaling variable
 */
    void setXBjorken(cdbl xBj);

/**
 * @brief sets hadronic \f$S_h = (p + q)^2 \f$
 * @param Sh hadronic S
 */
    void setHadronicS(cdbl Sh);
    
/**
 * @brief sets PDF
 * @param name LHAPDF/ported name
 * @param member (LHAPDF) member index
 * @see LHAPDF::mkPDF()
 */
    void setPdf(str name, int member);
    
/**
 * @brief sets renormalisation scale \f$\mu_R^2\f$
 * @param muR2 renormalisation scale \f$\mu_R^2\f$
 */
    void setMuR2(const DynamicScaleFactors& muR2);
    
/**
 * @brief sets factorisation scale \f$\mu_F^2\f$
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 */
    void setMuF2(const DynamicScaleFactors& muF2);
    
/**
 * @brief sets common scale \f$\mu^2=\mu_F^2=\mu_R^2\f$
 * @param mu2 common scale \f$\mu^2=\mu_F^2=\mu_R^2\f$
 */
    void setMu2(const DynamicScaleFactors& mu2);
    
/**
 * @brief sets \f$\Lambda_{QCD,n_{lf}+1}\f$
 * @param lambdaQCD \f$\Lambda_{QCD,n_{lf}+1}\f$
 */
    void setLambdaQCD(cdbl lambdaQCD);
    
/**
 * @brief sets Alpha_S by LHAPDF
 * @param name LHAPDF name
 * @param member LHAPDF member index
 * @see LHAPDF::mkAlphaS()
 */
    void setAlphaSByLHAPDF(str name, int member);
    
///@}

/** @name hadronic structure functions */
///@{

/**
 * @brief computes the corresponding structure functions \f$F_{k}\f$
 * @return corresponding structure function
 */
    virtual cdbl F() const = 0;
    
///@}

/** @name leptonic setter */
///@{

/**
 * @brief sets electro-magnetic coupling constant
 * @param alphaEM electro-magnetic coupling constant
 */
    void setAlphaEM(cdbl alphaEM);
    
/**
 * @brief use polarized beams?
 * @param polarizeBeams polarized beams?
 */
    void setPolarizeBeams(bool polarizeBeams);

/**
 * @brief sets leptonic \f$S_l = (p + l_1)^2 \f$
 * @param Sl leptonic S
 */
    void setLeptonicS(cdbl Sl);
    
/**
 * @brief sets constant cut on lower Q2
 * @param Q2min constant cut on lower Q2
 */
    void setQ2min(cdbl Q2min);
    
/**
 * @brief cut on lower Q2 as done by HVQDIS: \f$Q^2 = q^{2,HVQDIS}_{min}\cdot \frac {y^2}{(1-y)^2}\f$
 * @param q2minHVQDIS parameter for dynamic cut on lower Q2
 */
    void setQ2minByHVQDIS(cdbl q2minHVQDIS);
    
///@}

/** @name leptonic cross sections */
///@{

/**
 * @brief computes the leptonic cross section \f$\sigma\f$
 * @return leptonic cross section \f$\sigma\f$
 */
    virtual cdbl sigma() const = 0;
    
///@}
        
};

} // namespace Common

#endif // Common_AbstractLeptoProduction_H_
