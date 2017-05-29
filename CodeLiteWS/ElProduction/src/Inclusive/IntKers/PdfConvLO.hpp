#ifndef Inclusive_PdfConvLO_H_
#define Inclusive_PdfConvLO_H_

#include "PdfConvBase.hpp"
#include "../../Common/Color.h"

using namespace Color;

namespace Inclusive {

/**
 * @brief LO gluon convolution
 */
class PdfConvLO : public PdfConvFullBase {
    PdfWrapper* pdf;
    cdbl muF2;
    
/**
 * @brief pointer to full integrated matrix element
 */
    fPtr3dbl cg0;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param cg0 pointer to full integrated matrix element
 */
    inline PdfConvLO(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, fPtr3dbl cg0) :
        PdfConvFullBase(m2, q2, bjorkenX), pdf(pdf), muF2(muF2), cg0(cg0) {
    }
    
/**
 * @brief called function
 * @param az integration variable mapped on z
 * @return \f$1/z f_{g}(x/z,\mu_F^2) c_{g}^{(0)}(\eta,\xi)\f$
 */
    inline virtual cdbl operator() (cdbl az) {
        this->setZ(az);
        cdbl me = cg0(m2,q2,sp)/m2;
        cdbl r = jac * 1./this->z * this->pdf->xfxQ2(21,this->bjorkenX/z,this->muF2) * me;
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

/**
 * @brief differential LO gluon convolution (in mt2 and y)
 */
class PdfConvLO_dmt2dy : public PdfConvBase {
    
/**
 * @brief pointer to Born matrix element
 */
    fPtr4dbl BpQED;
    
/**
 * @brief maximum of rapidity of HAQ
 */
    dbl y0_;
    
protected:

/**
 * @brief computes pdf * matrix element
 * @param ey exp(y) with y rapidity of heavy antiquark
 * @param mt transverse mass of heavy antiquark
 * @return pdf * matrix element
 */
    inline cdbl PdfMe(cdbl ey, cdbl mt) const {
        cdbl Sh = this->getHadronicS();
        cdbl Shp = Sh - this->q2;
        cdbl T1 = this->getHadronicT1(ey,mt);
        cdbl U1 = this->getHadronicU1(ey,mt);
        cdbl xi = - U1/(Shp + T1);
        
        cdbl me = 4.*M_PI * Kggg*NC*CF * (*this->BpQED)(this->m2,this->q2,Shp*xi,T1*xi);
        
        return 1./Shp/(Shp+T1) * 1./xi/xi*this->pdf->xfxQ2(21,xi,this->muF2) * me;
    }
    
public:
    
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param BpQED pointer to Born matrix element
 */
    inline PdfConvLO_dmt2dy(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, fPtr4dbl BpQED) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), BpQED(BpQED) {
        this->y0_ = atanh(sqrt(1. - 4.*this->m2/this->getHadronicS()));
    }
    
/**
 * @brief called function
 * @param ay integration variable mapped on rapidity y
 * @param amt2 integration variable mapped on transverse mass mt2
 * @return kernel
 */
    inline cdbl operator() (cdbl ay, cdbl amt2) const {
        cdbl y = this->y0_*(-1. + 2.*ay);
        cdbl ey = exp(y);
        cdbl coshy = cosh(y);
        cdbl mt2Max = this->getHadronicS()/(4.*coshy*coshy);
        cdbl mt2 = this->m2 + (mt2Max - this->m2)*amt2;
        cdbl mt = sqrt(mt2);
        cdbl r = (2.*this->y0_) * (mt2Max - this->m2) * this->PdfMe(ey, mt);
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

/**
 * @brief LO gluon convolution differentiated to HAQTransverseMomentum
 */
class PdfConvLO_dHAQTransverseMomentum : public PdfConvLO_dmt2dy, protected PdfConvBase_dHAQTransverseMomentum {    
public:
    
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param BpQED pointer to Born matrix element
 * @param pt current pt of HAQ
 */
    inline PdfConvLO_dHAQTransverseMomentum(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, fPtr4dbl BpQED, cdbl pt) :
        PdfConvLO_dmt2dy(m2, q2, bjorkenX, pdf, muF2, BpQED),
        PdfConvBase_dHAQTransverseMomentum(m2, this->getHadronicS(),pt) {}
    
/**
 * @brief called function
 * @param ay integration variable mapped on rapidity y
 * @return kernel
 */
    inline cdbl operator() (cdbl ay) const {
        cdbl y = this->y0*(-1. + 2.*ay);
        cdbl ey = exp(y);
        
        cdbl r = (2.*this->y0) * 2.*pt * this->PdfMe(ey,this->mt);
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
    
};

/**
 * @brief LO gluon convolution differentiated to HAQRapidity
 */
class PdfConvLO_dHAQRapidity : public PdfConvLO_dmt2dy, protected PdfConvBase_dHAQRapidity {
    
public:
    
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param BpQED pointer to Born matrix element
 * @param y current y of HAQ
 */
    inline PdfConvLO_dHAQRapidity(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, fPtr4dbl BpQED, cdbl y) :
        PdfConvLO_dmt2dy(m2, q2, bjorkenX, pdf, muF2, BpQED), PdfConvBase_dHAQRapidity(m2, this->getHadronicS(),y) {}
    
/**
 * @brief called function
 * @param amt2 integration variable mapped on transverse mass mt2
 * @return kernel
 */
    inline cdbl operator() (cdbl amt2) const {
        cdbl mt2 = this->m2 + this->Vmt2*amt2;
        cdbl mt = sqrt(mt2);
        
        cdbl r = this->Vmt2 * this->PdfMe(this->ey,mt);
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
    
};

} // namespace Inclusive

#endif // Inclusive_PdfConvLO_H_