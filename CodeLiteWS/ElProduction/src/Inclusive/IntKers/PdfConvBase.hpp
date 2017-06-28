#ifndef PdfConvBase_H_
#define PdfConvBase_H_

#include "../../config.h"
#include "IntKerBase.hpp"
#include "../../Pdf/PdfWrapper.h"

namespace Inclusive {
    
/**
 * @brief Abstract base class for convolution with PDFs
 */
class PdfConvBase {
protected:
    
/**
 * @brief heavy quark mass squared \f$m^2 > 0\f$
 */
    dbl m2;
    
/**
 * @brief virtuality of the photon \f$q^2< 0\f$
 */
    dbl q2;
    
/**
 * @brief Bjorken scaling variable
 */
    dbl bjorkenX;
    
/**
 * @brief parton distribution functions
 */
    PdfWrapper* pdf;

/**
 * @brief factorisation scale \f$\mu_F^2\f$
 */
    dbl muF2;

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 */
    inline PdfConvBase(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2) :
        m2(m2), q2(q2), bjorkenX(bjorkenX), pdf(pdf), muF2(muF2){
    }
    
/**
 * @brief get hadronic S'
 * @return hadronic S'
 */
    inline cdbl getHadronicSp() const {
        return -this->q2/this->bjorkenX;
    }
    
/**
 * @brief get hadronic S
 * @return hadronic S
 */
    inline cdbl getHadronicS() const {
        return this->getHadronicSp() + this->q2;
    }
    
/**
 * @brief get hadronic T1
 * @param ey exp(y)
 * @param mt sqrt(mt2)
 * @return T1(exp(y),mt)
 */
    inline cdbl getHadronicT1(cdbl ey, cdbl mt) const {
        cdbl Sh = this->getHadronicS();
        cdbl Shp = Sh - this->q2;
        return - Shp/Sqrt(Sh) * mt / ey;
    }
    
/**
 * @brief get hadronic U1
 * @param ey exp(y)
 * @param mt sqrt(mt2)
 * @return U1(exp(y),mt)
 */
    inline cdbl getHadronicU1(cdbl ey, cdbl mt) const {
        cdbl Sh = this->getHadronicS();
        return this->q2 - mt*(Sh*ey + this->q2/ey)/sqrt(Sh);
    }
};

/**
 * @brief Abstract base class for convolution with PDFs to full cross sections
 */
class PdfConvFullBase : public IntKerBase {
protected:

/**
 * @brief Bjorken scaling variable
 */
    dbl bjorkenX;
    
/**
 * @brief upper z-integration limit
 */
    dbl zMax;
    
/**
 * @brief volume for z-integration
 */
    dbl Vz;
    
/**
 * @brief current momentum fraction
 */
    dbl z = -0.;

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 */
    inline PdfConvFullBase(cdbl m2, cdbl q2, cdbl bjorkenX) :
        IntKerBase(m2, q2), bjorkenX(bjorkenX){
        this->zMax = -q2/(4.*m2 - q2);
        this->Vz = this->zMax - this->bjorkenX;
    }

/**
 * @brief sets z (and there by s') by integration
 * @param az integration variable mapped on z
 */
    inline void setZ(cdbl az) {
        this->z = this->bjorkenX + this->Vz*az;
        this->setSpRaw(-q2/z);
        this->jac *= this->Vz;
    }
};

/**
 * @brief Abstract base class for convolution with PDFs differential towards HAQRapididy
 */
class PdfConvBase_dHAQRapidity {
protected:
    
/**
 * @brief rapidity of HAQ
 */
    dbl y;
    
/**
 * @brief exponential of rapidity of HAQ
 */
    dbl ey;
    
/**
 * @brief maximum of transverse mass of HAQ
 */
    dbl Vmt2;
    
/**
 * @brief constructor
 * @param m2
 * @param Sh hadronic S
 * @param y current HAQRapididy
 */
    inline PdfConvBase_dHAQRapidity(cdbl m2, cdbl Sh, cdbl y): y(y), ey(exp(y)) {
        cdbl coshy = cosh(y);
        cdbl mt2Max = Sh/(4.*coshy*coshy);
        this->Vmt2 = mt2Max - m2;
    }
};

/**
 * @brief Abstract base class for convolution with PDFs differential towards HAQTransverseMomentum
 */
class PdfConvBase_dHAQTransverseMomentum {
protected:

/**
 * @brief transverse momentum of HAQ
 */
    dbl pt;
    
/**
 * @brief transverse mass of HAQ
 */
    dbl mt;
    
/**
 * @brief maximum of rapidity of HAQ
 */
    dbl y0;
    
/**
 * @brief constructor
 * @param m2
 * @param Sh hadronic S
 * @param pt current HAQTransverseMomentum
 */
    inline PdfConvBase_dHAQTransverseMomentum(cdbl m2, cdbl Sh, cdbl pt): pt(pt), mt(sqrt(m2 + pt*pt)) {
        this->y0 = acosh(sqrt(Sh)/(2.*this->mt));
    }
};

} // namespace Inclusive

#endif // PdfConvBase_H_