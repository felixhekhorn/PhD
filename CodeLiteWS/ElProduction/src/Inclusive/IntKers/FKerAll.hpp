#ifndef FKerAll_HPP_
#define FKerAll_HPP_

#include "../../config.h"
#include "PdfConvBase.hpp"
#include "PdfConvLO.hpp"
#include "PdfConvNLOg.hpp"
#include "PdfConvNLOq.hpp"

namespace Inclusive {
    
/**
 * @brief abstract base class fo all oder kernel for full F
 */    
class FKerAllBase : protected PdfConvBase {
protected:
    
/**
 * @brief number of light flavours
 */
    uint nlf;
    
/**
 * @brief running strong coupling
 */
    dbl alphaS;
    
/**
 * @brief computed order
 */
    uint order = 1;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param nlf number of light flavours
 * @param alphaS running strong coupling
 */
    inline FKerAllBase(cdbl m2, cdbl q2, cdbl bjorkenX, uint nlf, cdbl alphaS) :
        PdfConvBase(m2,q2,bjorkenX,0,0.),
        nlf(nlf), alphaS(alphaS){};
    
/**
 * @brief set order
 * @param order 0|1
 */
    inline void setOrder(uint order) {
        this->order = order;
    }
};

/**
 * @brief all oder kernel for full dF/dHAQRapidity
 */    
class FKerAll_dHAQRapidity : public FKerAllBase, protected PdfConvBase_dHAQRapidity {
    
/**
 * @brief LO matrix element
 */
    PdfConvLO_dHAQRapidity* LO = 0;
    
/**
 * @brief NLO gluon matrix element
 */
    PdfConvNLOg_dHAQRapidity* NLOg = 0;
    
/**
 * @brief NLO quark matrix element
 */
    PdfConvNLOq_dHAQRapidity* NLOq = 0;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param nlf number of light flavours
 * @param alphaS running strong coupling
 * @param y current HAQRapidity
 */
    inline FKerAll_dHAQRapidity(cdbl m2, cdbl q2, cdbl bjorkenX, uint nlf, cdbl alphaS, cdbl y) :
        FKerAllBase(m2,q2,bjorkenX,nlf,alphaS),
        PdfConvBase_dHAQRapidity(m2, this->getHadronicS(), y){};
        
/**
 * @brief set kernels
 * @param LO LO matrix element
 * @param NLOg NLO gluon matrix element
 * @param NLOq NLO quark matrix element
 */
    inline void setKers(PdfConvLO_dHAQRapidity* LO, PdfConvNLOg_dHAQRapidity* NLOg, PdfConvNLOq_dHAQRapidity* NLOq) {
        this->LO = LO;
        this->NLOg = NLOg;
        this->NLOq = NLOq;
    }
    
/**
 * @brief called function
 * @param amt2 integration variable mapped on mt2
 * @param as4 integration variable mapped on s4
 * @return kernel
 */
    inline cdbl operator() (cdbl amt2, cdbl as4) const {
        // protect from null pointer
        if (0 == this->LO || 0 == this->NLOg || 0 == this->NLOq)
            throw invalid_argument("need to set all arguments!");
        cdbl eH = getElectricCharge(this->nlf + 1);
        cdbl n = alphaS * (-q2)/(4.*M_PI*M_PI);
        dbl r = n * eH*eH * (*this->LO)(amt2);
        if (this->order > 0) {
            r += n * alphaS*4.*M_PI* eH*eH * (*this->NLOg)(amt2,as4);
            r += n * alphaS*4.*M_PI*         (*this->NLOq)(amt2,as4);
        }
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};


/**
 * @brief all oder kernel for full dF/dHAQTransverseMomentum
 */    
class FKerAll_dHAQTransverseMomentum : public FKerAllBase, protected PdfConvBase_dHAQTransverseMomentum {
    
/**
 * @brief LO matrix element
 */
    PdfConvLO_dHAQTransverseMomentum* LO = 0;
    
/**
 * @brief NLO gluon matrix element
 */
    PdfConvNLOg_dHAQTransverseMomentum* NLOg = 0;
    
/**
 * @brief NLO quark matrix element
 */
    PdfConvNLOq_dHAQTransverseMomentum* NLOq = 0;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param nlf number of light flavours
 * @param alphaS running strong coupling
 * @param pt current HAQTransverseMomentum
 */
    inline FKerAll_dHAQTransverseMomentum(cdbl m2, cdbl q2, cdbl bjorkenX, uint nlf, cdbl alphaS, cdbl pt) :
        FKerAllBase(m2,q2,bjorkenX,nlf,alphaS),
        PdfConvBase_dHAQTransverseMomentum(m2, this->getHadronicS(), pt){};
        
/**
 * @brief set kernels
 * @param LO LO matrix element
 * @param NLOg NLO gluon matrix element
 * @param NLOq NLO quark matrix element
 */
    inline void setKers(PdfConvLO_dHAQTransverseMomentum* LO, PdfConvNLOg_dHAQTransverseMomentum* NLOg, PdfConvNLOq_dHAQTransverseMomentum* NLOq) {
        this->LO = LO;
        this->NLOg = NLOg;
        this->NLOq = NLOq;
    }
    
/**
 * @brief called function
 * @param ay integration variable mapped on y
 * @param as4 integration variable mapped on s4
 * @return kernel
 */
    inline cdbl operator() (cdbl ay, cdbl as4) const {
        // protect from null pointer
        if (0 == this->LO || 0 == this->NLOg || 0 == this->NLOq)
            throw invalid_argument("need to set all arguments!");
        cdbl eH = getElectricCharge(this->nlf + 1);
        cdbl n = alphaS * (-q2)/(4.*M_PI*M_PI);
        dbl r = n * eH*eH * (*this->LO)(ay);
        if (this->order > 0) {
            r += n * alphaS*4.*M_PI* eH*eH * (*this->NLOg)(ay,as4);
            r += n * alphaS*4.*M_PI*         (*this->NLOq)(ay,as4);
        }
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

} // namespace Inclusive

#endif // FKerAll_HPP_