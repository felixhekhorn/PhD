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
    #define checkPartonicS(s) if (!isfinite(s) || s < 4.*this->ker->m2) throw domain_error("partonic energy has to be set, finite and larger than the threshold 4m^2!");
/** @brief check Q2 */
    #define checkQ2(Q2) if (!isfinite(Q2) || Q2 <= 0.) throw domain_error("transfered Q2 has to be set, finite and positive!");
/** @brief check xBjorken */
    #define checkXBjorken(xBj) if (!isfinite(xBj) || xBj <= 0. || xBj > 1.) throw domain_error("x_Bjorken has to be set, finite and in (0:1]!");
    
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
    inline void setNumberOfLightFlavours(cuint nlf) {
        if (nlf < 3 || nlf > 5)
            throw domain_error("number of light flavours has to be between 3 and 5!");
        this->ker->nlf = nlf;
    }
    
/**
 * @brief sets mass^2 of heavy flavours
 * @param m2 mass^2 of heavy flavours
 */
    inline void setM2(cdbl m2) {
        if (m2 <= 0.)
            throw domain_error("mass^2 of heavy flavours has to be positive!");
        this->ker->m2 = m2;
    }
    
/**
 * @brief sets transfered Q2 > 0
 * @param Q2 transfered Q2 > 0
 */
    inline void setQ2(cdbl Q2) {
        checkQ2(Q2)
        this->ker->Q2 = Q2;
    }
    
/**
 * @brief sets used projection
 * @param proj projection
 */
    inline void setProjection(Projection proj) {
        this->ker->proj = proj;
    }
    
///@}

/** @name partonic setter */
///@{
    
/**
 * @brief sets partonic energy s >= 4*m2
 * @param s partonic energy s >= 4*m2
 */
    inline void setPartonicS(cdbl s) {
        checkPartonicS(s)
        this->ker->s = s;
    }
    
/**
 * @brief sets partonic distance from threshold \f$\\eta = \\frac{s-4 m^2}{(4 m^2}\f >= 0$
 * @param eta partonic distance from threshold
 */
    inline void setPartonicEta(cdbl eta) {
        if (eta < 0.)
            throw domain_error("partonic eta has to be larger than 0!");
        this->setPartonicS(4.*this->ker->m2*(1.+eta));
    }
///@}

/** @name hadronic setter */
///@{    

/**
 * @brief sets Bjorken scaling variable x
 * @param xBj Bjorken scaling variable
 */
    inline void setXBjorken(cdbl xBj) {
        checkXBjorken(xBj)
        this->ker->xBj = xBj;
    }
    
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
    
///@}
    
/**
 * @brief manipulate controlling flags
 * @return controlling flags
 */
    inline Flags& flags() const {
        return this->ker->flags;
    }
    
/** @name partonic coefficient functions */
///@{

/**
 * @brief computes leading order partonic gluon contribution \f$c_{\Pg}^{(0)}\f$
 * @return leading order partonic gluon contribution
 */
    virtual cdbl cg0() const = 0;
    
///@}

/** @name hadronic structure functions */
///@{

/**
 * @brief computes leading order hadronic gluon contribution \f$F_{\Pg}^{(0)}\f$
 * @return leading order hadronic gluon contribution
 */
    virtual cdbl F() const = 0;
    
///@}
        
};

} // namespace Common

#endif // Common_AbstractLeptoProduction_H_
