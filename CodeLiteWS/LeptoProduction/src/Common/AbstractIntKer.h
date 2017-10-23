#ifndef Common_AbstractIntKer_H_
#define Common_AbstractIntKer_H_

#include <limits.h>
#include <boost/format.hpp>

#include "../config.h"
#include "../Flags.hpp"
#include "../Projection.hpp"
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
    inline cdbl getElectricCharge(const int PDGId) const {
        switch(PDGId) {
            case 1: case -1: // u+ubar
            case 3: case -3: // s+sbar
            case 5: case -5: // b+bbar
                return -1./3.;
            case 2: case -2: // d+dbar
            case 4: case -4: // c+cbar
            case 6: case -6: // t+tbar
                return 2./3.;
            case 21: // Gluon
                return 0.;
            default:
                throw domain_error((boost::format("unkown particle id: %d")%PDGId).str());
        }
    }
    
/**
 * @brief returns vectorial coupling of particle
 * @param PDGId PDG particle id
 * @return vectorial coupling
 */
    inline cdbl getVectorialCoupling(const int PDGId) const {
        switch (PDGId) {
            case 11: case -11:// e+-
                return -.5 + 2.*this->sin2ThetaWeak;
            case 1: case -1: // d+dbar
            case 3: case -3: // s+sbar
            case 5: case -5: // b+bbar
                return -.5 + 2./3.*this->sin2ThetaWeak;
            case 2: case -2: // u+ubar
            case 4: case -4: // c+cbar
            case 6: case -6: // t+tbar
                return .5 - 4./3.*this->sin2ThetaWeak;
            default:
                throw domain_error((boost::format("unkown particle id: %d")%PDGId).str());
        }
    }
    
/**
 * @brief returns axial coupling of particle
 * @param PDGId PDG particle id
 * @return axial coupling
 */
    inline cdbl getAxialCoupling(const int PDGId) const {
        switch (PDGId) {
            case 11: case -11:// e+-
                return -.5;
            case 1: case -1: // d+dbar
            case 3: case -3: // s+sbar
            case 5: case -5: // b+bbar
                return -.5;
            case 2: case -2: // u+ubar
            case 4: case -4: // c+cbar
            case 6: case -6: // t+tbar
                return .5;
            default:
                throw domain_error((boost::format("unkown particle id: %d")%PDGId).str());
        }
    }
    
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
    
/** @brief running strong coupling as provided by LHAPDF */
    LHAPDF::AlphaS_Analytic* aS = 0;
    
/** @brief current kernel mode */
    uint mode = 0;
    
/** @name common kernel modes */
///@{
    static cuint Mode_cg0 = 1;
    static cuint Mode_F = 10;
///@}
    
/**
 * @brief constructor
 */
    AbstractIntKer();
    
/**
 * @brief destructor
 */
    virtual ~AbstractIntKer();

/**
 * @brief returns maximum z
 * @return beta
 */
    inline cdbl zMax() const { return this->Q2/(4.*this->m2 + this->Q2); }

};

}

#endif // Common_AbstractIntKer_H_
