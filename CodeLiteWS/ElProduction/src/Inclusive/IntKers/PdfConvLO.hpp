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
        //if (this->bjorkenX/z < this->pdf->xMin()) {
        //    printf("x/z out of range: %e\n",this->bjorkenX/z);
        //}
        cdbl r = jac * 1./this->z * this->pdf->xfxQ2(21,this->bjorkenX/z,this->muF2) * me;
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};


/**
 * @brief LO gluon convolution differentiated to pt
 */
class PdfConvLO_dpt : public PdfConvBase {
    
/**
 * @brief pointer to Born matrix element
 */
    fPtr4dbl BpQED;
    
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
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2),
        BpQED(BpQED), pt(pt), mt(sqrt(m2 + pt*pt)) {
        this->y0 = acosh(sqrt(this->getHadronicS())/(2.*this->mt));
    }
    
/**
 * @brief called function
 * @param ay integration variable mapped on rapidity y
 * @return kernel
 */
    inline cdbl operator() (cdbl ay) {
        cdbl y = -this->y0 + 2.*this->y0 * ay;
        cdbl ey = exp(y);
        cdbl Sh = this->getHadronicS();
        cdbl Shp = Sh - this->q2;
        cdbl T1 = - Shp/Sqrt(Sh) * this->mt * ey;
        cdbl U1 = this->q2 - this->mt*(Sh/ey + this->q2*ey)/sqrt(Sh);
        cdbl xi = - U1/(Shp + T1);
        
        cdbl me = 2.*Kggg*NC*CF*M_PI * (*this->BpQED)(this->m2,this->q2,Shp*xi,T1*xi);
        
        cdbl r = (2.*this->y0) * 2.*pt/Shp/(Shp+T1) * 1./xi*this->pdf->xfxQ2(21,xi,this->muF2) * me;
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
    
};

} // namespace Inclusive

#endif // Inclusive_PdfConvLO_H_