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
    uint orderFlag;
    
/**
 * @brief computed channel
 */
    uint channelFlag;
    
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
 * @brief sets computed order and channel
 * @param orderFlag computed order
 * @param channelFlag computed channel
 */
    inline void setFlags(const uint orderFlag, const uint channelFlag) {
        this->orderFlag = orderFlag;
        this->channelFlag = channelFlag;
    }
};

/**
 * @brief template for all oder kernel for full dF/dHAQX
 * @tparam PdfConvBase_dHAQX parent class
 * @tparam PdfConvLO_dHAQX LO matrix element
 * @tparam PdfConvNLOg_dHAQX NLO gluon matrix element
 * @tparam PdfConvNLOq_dHAQX NLO quark matrix element
 */    
template <class PdfConvBase_dHAQX, class PdfConvLO_dHAQX, class PdfConvNLOg_dHAQX, class PdfConvNLOq_dHAQX>
class FKerAll_dHAQX : public FKerAllBase, protected PdfConvBase_dHAQX {
    
/**
 * @brief LO matrix element
 */
    PdfConvLO_dHAQX* LO = 0;
    
/**
 * @brief NLO gluon matrix element
 */
    PdfConvNLOg_dHAQX* NLOg = 0;
    
/**
 * @brief NLO quark matrix element
 */
    PdfConvNLOq_dHAQX* NLOq = 0;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param nlf number of light flavours
 * @param alphaS running strong coupling
 * @param v current HAQX
 */
    inline FKerAll_dHAQX(cdbl m2, cdbl q2, cdbl bjorkenX, uint nlf, cdbl alphaS, cdbl v) :
        FKerAllBase(m2,q2,bjorkenX,nlf,alphaS),
        PdfConvBase_dHAQX(m2, this->getHadronicS(), v){};
        
/**
 * @brief set kernels
 * @param LO LO matrix element
 * @param NLOg NLO gluon matrix element
 * @param NLOq NLO quark matrix element
 */
    inline void setKers(PdfConvLO_dHAQX* LO, PdfConvNLOg_dHAQX* NLOg, PdfConvNLOq_dHAQX* NLOq) {
        this->LO = LO;
        this->NLOg = NLOg;
        this->NLOq = NLOq;
    }
    
/**
 * @brief called function
 * @param aymt2 integration variable mapped on y or mt2
 * @param as4 integration variable mapped on s4
 * @return kernel
 */
    inline cdbl operator() (cdbl aymt2, cdbl as4) const {
        // protect from null pointer
        if (0 == this->LO || 0 == this->NLOg || 0 == this->NLOq)
            throw invalid_argument("need to set all arguments!");
        cdbl eH = getElectricCharge(this->nlf + 1);
        cdbl n = alphaS * (-q2)/(4.*M_PI*M_PI);
        dbl r = 0.;
        if ((OrderFlag_LO == (orderFlag & OrderFlag_LO)) && (ChannelFlag_Gluon == (channelFlag & ChannelFlag_Gluon))) // LOg
            r += n * eH*eH * (*this->LO)(aymt2);
        if (OrderFlag_NLOonly == (orderFlag & OrderFlag_NLOonly)){ // NLO
            if (ChannelFlag_Gluon == (channelFlag & ChannelFlag_Gluon))
                r += n * alphaS*4.*M_PI* eH*eH * (*this->NLOg)(aymt2,as4);
            if (ChannelFlag_Quark == (channelFlag & ChannelFlag_Quark))
                r += n * alphaS*4.*M_PI*         (*this->NLOq)(aymt2,as4);
        }
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

/**
 * @brief all oder kernel for full dF/dHAQFeynmanX
 */  
typedef FKerAll_dHAQX<PdfConvBase_dHAQFeynmanX, PdfConvLO_dHAQFeynmanX, PdfConvNLOg_dHAQFeynmanX, PdfConvNLOq_dHAQFeynmanX> FKerAll_dHAQFeynmanX;

/**
 * @brief all oder kernel for full dF/dHAQRapidity
 */  
typedef FKerAll_dHAQX<PdfConvBase_dHAQRapidity, PdfConvLO_dHAQRapidity, PdfConvNLOg_dHAQRapidity, PdfConvNLOq_dHAQRapidity> FKerAll_dHAQRapidity;

/**
 * @brief all oder kernel for full dF/dHAQRapidity
 */  
typedef FKerAll_dHAQX<PdfConvBase_dHAQTransverseMomentum, PdfConvLO_dHAQTransverseMomentum,
                    PdfConvNLOg_dHAQTransverseMomentum, PdfConvNLOq_dHAQTransverseMomentum> FKerAll_dHAQTransverseMomentum;

} // namespace Inclusive

#endif // FKerAll_HPP_