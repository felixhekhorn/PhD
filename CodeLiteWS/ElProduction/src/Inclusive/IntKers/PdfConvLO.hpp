#ifndef Inclusive_PdfConvLO_H_
#define Inclusive_PdfConvLO_H_

#include "PdfConvBase.hpp"
#include "../../Color.h"

using namespace Color;

namespace Inclusive {

/**
 * @brief LO gluon convolution
 */
class PdfConvLO : public PdfConvBase {
    
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
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), cg0(cg0) {
    }
    
/**
 * @brief called function
 * @param az integration variable mapped on z
 * @return \f$1/z f_{g}(x/z,\mu_F^2) c_{g}^{(0)}(\eta,\xi)\f$
 */
    inline virtual cdbl operator() (cdbl az) {
        this->setZ(az);
        cdbl me = cg0(m2,q2,sp);
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
    dbl y0;
    
protected:

/**
 * @brief computes pdf * matrix element
 * @param ey exp(y) with y rapidity of heavy antiquark
 * @param mt transverse mass of heavy antiquark
 * @return pdf * matrix element
 */
    inline cdbl PdfMe(cdbl ey, cdbl mt) {
//return 1.;
        cdbl Sh = this->getHadronicS();
        cdbl Shp = Sh - this->q2;
        cdbl T1 = - Shp/Sqrt(Sh) * mt / ey;
        cdbl U1 = this->q2 - mt*(Sh*ey + this->q2/ey)/sqrt(Sh);
        cdbl xi = - U1/(Shp + T1);
        
        cdbl me = 4.*M_PI * Kggg*NC*CF * (*this->BpQED)(this->m2,this->q2,Shp*xi,T1*xi);
        
        return 1./Shp/(Shp+T1) * 1./xi*this->pdf->xfxQ2(21,xi,this->muF2) * me;
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
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2),
        BpQED(BpQED) {
        this->y0 = atanh(sqrt(1. - 4.*this->m2/this->getHadronicS()));
    }
    
/**
 * @brief called function
 * @param ay integration variable mapped on rapidity y
 * @param amt2 integration variable mapped on transverse mass mt2
 * @return kernel
 */
    inline cdbl operator() (cdbl ay, cdbl amt2) {
        cdbl y = this->y0*(-1. + 2.*ay);
        cdbl ey = exp(y);
        cdbl coshy = cosh(y);
        cdbl mt2Max = this->getHadronicS()/(4.*coshy*coshy);
        cdbl mt2 = this->m2 + (mt2Max - this->m2)*amt2;
        cdbl mt = sqrt(mt2);
        cdbl r = (2.*this->y0) * (mt2Max - this->m2) * this->PdfMe(ey, mt);
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
    
};

/**
 * @brief LO gluon convolution differentiated to pt
 */
class PdfConvLO_dpt : public PdfConvLO_dmt2dy {
    
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
    inline PdfConvLO_dpt(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, fPtr4dbl BpQED, cdbl pt) :
        PdfConvLO_dmt2dy(m2, q2, bjorkenX, pdf, muF2, BpQED),
        pt(pt), mt(sqrt(m2 + pt*pt)) {
        this->y0 = acosh(sqrt(this->getHadronicS())/(2.*this->mt));
    }
    
/**
 * @brief called function
 * @param ay integration variable mapped on rapidity y
 * @return kernel
 */
    inline cdbl operator() (cdbl ay) {
        cdbl y = this->y0*(-1. + 2.*ay);
        cdbl ey = exp(y);
        
        cdbl r = (2.*this->y0) * 2.*pt * this->PdfMe(ey,this->mt);
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
    
};

/**
 * @brief LO gluon convolution differentiated to y
 */
class PdfConvLO_dy : public PdfConvLO_dmt2dy {
    
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
    dbl mt2Max;
    
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
    inline PdfConvLO_dy(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, fPtr4dbl BpQED, cdbl y) :
        PdfConvLO_dmt2dy(m2, q2, bjorkenX, pdf, muF2, BpQED),
        y(y), ey(exp(y)){
        cdbl coshy = cosh(y);
        this->mt2Max = this->getHadronicS()/(4.*coshy*coshy);
    }
    
/**
 * @brief called function
 * @param amt2 integration variable mapped on transverse mass mt2
 * @return kernel
 */
    inline cdbl operator() (cdbl amt2) {
        cdbl mt2 = this->m2 + (this->mt2Max - this->m2)*amt2;
        cdbl mt = sqrt(mt2);
        
        cdbl r = (this->mt2Max - this->m2) * this->PdfMe(this->ey,mt);
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
    
};

} // namespace Inclusive

#endif // Inclusive_PdfConvLO_H_