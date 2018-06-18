#ifndef Common_AbstractIntKer_H_
#define Common_AbstractIntKer_H_

#include <limits.h>
#include <boost/format.hpp>
#include <dvegas/dvegas.h>

#include "../config.h"
#include "../Flags.hpp"
#include "../Projection.hpp"
#include "../DynamicScaleFactors.hpp"
#include "../Pdf/PdfWrapper.h"
#include "Color.hpp"

namespace Common {

/**
 * @class AbstractIntKer
 * @brief abstract base class for integration kernels
 */
class AbstractIntKer : public HepSource::Integrand {
protected:

/** @brief define s' = s - q2 */
    #define _sp cdbl sp = this->s + this->Q2;

/**
 * @brief returns partonic (kinematic) beta
 * @return \f$\beta = \sqrt{1-4m^2/s}\f$
 */
    inline cdbl beta() const { return sqrt(1. - 4.*this->m2/this->s); }

/**
 * @brief returns first beta coefficient with light flavors
 * @return \f$\beta_0^{lf} = \frac{11C_A - 2n_{lf}}{3}\f$
 */
    inline cdbl beta0lf() const { return (11.*cdbl(Color::CA) - 2.*this->nlf)/3.; }
    
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
    cdbl getNormPhZ() const;
    
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
    
/** @brief define shortcut for BQED */
    typedef cdbl (*fPtr4dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl t1);
    
/** @brief getter for matrix elements */
    #define getME(ns) switch(this->proj) {\
        case F2:   fVV = &ns##_F2_VV;   fAA = &ns##_F2_AA;   fVA = 0; break;\
        case FL:   fVV = &ns##_FL_VV;   fAA = &ns##_FL_AA;   fVA = 0; break;\
        case x2g1: fVV = &ns##_x2g1_VV; fAA = &ns##_x2g1_AA; fVA = 0; break;\
        case xF3:  fVA = &ns##_xF3_VA; fVV = 0; fAA = 0;              break;\
        case g4:   fVA = &ns##_g4_VA;  fVV = 0; fAA = 0;              break;\
        case gL:   fVA = &ns##_gL_VA;  fVV = 0; fAA = 0;              break;\
        default: throw domain_error("unkonwn projection: "+strProj(this->proj));\
    }
    
/**
 * @brief sets correct pointers to BQED
 * @param fVV vector-vector part
 * @param fVA vector-axial part
 * @param fAA axial-axial part
 */
    void getBQED(fPtr4dbl &fVV, fPtr4dbl &fVA, fPtr4dbl &fAA) const;
    
/** @brief define shortcut for Ps */
    typedef cdbl (*fPtr1dbl)(cdbl x);
    
/** @name getter to Altarelli-Parisi functions */
///@{
    
/**
 * @brief finds correct pointer to Pgq
 * @return \f$P_{\Pg\Pq}(x)\f$
 */
    fPtr1dbl getPgq0() const;
    
/**
 * @brief finds correct pointer to PggH0
 * @return \f$P_{\Pg\Pg}^{H,(0)}(x)\f$
 */
    fPtr1dbl getPggH0() const;
    
/**
 * @brief finds correct pointer to PggH1
 * @return \f$P_{\Pg\Pg}^{H,(1)}(x)\f$
 */
    fPtr1dbl getPggH1() const;
    
///@}
    
/**
 * @brief constructor
 * 
 * sets mu2 = 4m2 + Q2 as default scale
 */
    AbstractIntKer();
    
public:

/** @name common variables */
///@{

/** @brief number of light flavours */
    uint nlf = 0;
    
/** @brief mass^2 of heavy quark */
    dbl m2 = dblNaN;
    
/** @brief controlling flags */
    Flags flags;
    
/** @brief current kernel mode */
    uint mode = 0;
    
/** @brief integration dimension */
    uint dim = 0;

///@}
    
/** @name partonic variables */
///@{
    
/** @brief transferred Q2 > 0 */
    dbl Q2 = dblNaN;
    
/** @brief partonic cm-energy^2 */
    dbl s = dblNaN;
    
/** @brief used projection */
    Projection proj = F2;
    
///@}

/** @name hadronic variables */
///@{
    
/** @brief Bjorken scaling variable x */
    dbl xBj = dblNaN;
    
/** @brief leptonic cm-energy^2 */
    dbl Sl = dblNaN;
    
/** @brief invariant Mass of Z0 - defaults to PDG value */
    dbl MZ2 = pow(91.18,2);
    
/** @brief weak mixing angle - defaults to PDG value */
    dbl sin2ThetaWeak = 0.2315;
    
/** @brief electro-magnetic coupling constant - defaults to PDG value */
    dbl alphaEM = 1./137.0359991;
    
/** @brief incoming lepton has negative charge?  - i.e. e- (default) or e+ */
    bool incomingLeptonHasNegativeCharge = true;
    
/** @brief incoming lepton has positive helicity? - defaults to true */
    bool incomingLeptonHasPositiveHelicity = true;
    
/** @brief used pdfs */
    PdfWrapper* pdf = 0;
    
/** @brief factors for renormalisation scale \f$\mu_R^2\f$ */
    DynamicScaleFactors muR2;
    
/** @brief factors for factorisation scale \f$\mu_F^2\f$ */
    DynamicScaleFactors muF2;
    
/** @brief running strong coupling as provided by LHAPDF */
    LHAPDF::AlphaS* aS = 0;
    
///@}

/** @name leptonic variables */
///@{
    
/** @brief bool polarize beams? */
    bool polarizeBeams = false;
    
/** @brief constant cut on Q2 */
    dbl Q2min = dblNaN;
    
/** @brief lower cut on Q2, as done by HVQDIS */
    dbl q2minHVQDIS = dblNaN;
    
///@}
    
/**
 * @name common kernel modes
 * 
 * - 1 - 99 : partonic modes
 * - 100 - 199 : hadronic modes
 * - 200 - 299 : leptonic modes
 */
///@{
    static cuint Mode_cg0_VV = 1;
    static cuint Mode_cg0_VA = 2;
    static cuint Mode_cg0_AA = 3;
    static cuint Mode_dq1_VV = 4;
    static cuint Mode_dq1_VA = 5;
    static cuint Mode_dq1_AA = 6;
    static cuint Mode_cq1_VV = 7;
    static cuint Mode_cq1_VA = 8;
    static cuint Mode_cq1_AA = 9;
    static cuint Mode_cqBarF1_VV = 10;
    static cuint Mode_cqBarF1_VA = 11;
    static cuint Mode_cqBarF1_AA = 12;
    static cuint Mode_cg1_VV = 13;
    static cuint Mode_cg1_VA = 14;
    static cuint Mode_cg1_AA = 15;
    static cuint Mode_cgBarF1_VV = 16;
    static cuint Mode_cgBarF1_VA = 17;
    static cuint Mode_cgBarF1_AA = 18;
    static cuint Mode_cgBarR1_VV = 19;
    static cuint Mode_cgBarR1_VA = 20;
    static cuint Mode_cgBarR1_AA = 21;
    static cuint Mode_cgBar1_VV = 22;
    static cuint Mode_cgBar1_VA = 23;
    static cuint Mode_cgBar1_AA = 24;
    
    static cuint Mode_F = 100;
    
    static cuint Mode_sigma = 200;
///@}
    
/**
 * @brief destructor
 */
    virtual ~AbstractIntKer();

/**
 * @brief returns maximum z
 * @return z_max
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
