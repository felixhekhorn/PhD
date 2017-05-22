#ifndef Inclusive_PdfConvNLOq_H_
#define Inclusive_PdfConvNLOq_H_

#include "PdfConvBase.hpp"

namespace Inclusive {

/**
 * @brief NLO quark convolution
 */
class PdfConvNLOq : public PdfConvBase {

/**
 * @brief number of light flavours
 */
    uint nlf;

/**
 * @brief \f$\ln(\mu_F^2/m^2)\f$
 */
    dbl lnF;
    
/**
 * @brief pointer to eH2 matrix element
 */
    fPtr5dbl cq1 = 0;
    
/**
 * @brief pointer to factorisation logs of eH2 matrix element
 */
    fPtr5dbl cqBarF1 = 0;
    
/**
 * @brief pointer to eL2 matrix element
 */
    fPtr5dbl dq1 = 0;
    
protected:

/**
 * @brief computes pdf * me without any jacobians
 * @param xi momentum fraction
 * @param t1 partonic t1
 * @param s4 partonic s4
 * @return pdf*me
 */
    inline cdbl PdfMe(cdbl xi, cdbl t1, cdbl s4) const {
        cdbl Sh = this->getHadronicS();
        cdbl Shp = Sh - this->q2;
        cdbl sp = xi * Shp;
        cdbl meCq1 = cq1(this->m2,this->q2,sp,s4,t1) + this->lnF * cqBarF1(this->m2,this->q2,sp,s4,t1);
        cdbl meDq1 = dq1(this->m2,this->q2,sp,s4,t1);
        dbl fqs = 0.;
        cdbl eH = getElectricCharge(this->nlf + 1);
        for (uint q = 1; q < this->nlf + 1; ++q) {
            cdbl eL = getElectricCharge(q);
            fqs += (this->pdf->xfxQ2((int)q,xi,this->muF2) + this->pdf->xfxQ2(-((int)q),xi,this->muF2))*(eH*eH*meCq1 + eL*eL*meDq1);
        }
        cdbl r = 1./xi * fqs / m2;
        return r;
    }
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param nlf number of light flavours
 * @param cq1 pointer to eH2 matrix element
 * @param cqBarF1 pointer to factorisation logs of eH2 matrix element
 * @param dq1 pointer to eL2 matrix element
 */
    PdfConvNLOq(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, uint nlf, fPtr5dbl cq1, fPtr5dbl cqBarF1, fPtr5dbl dq1) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), nlf(nlf), cq1(cq1), cqBarF1(cqBarF1), dq1(dq1) {
        this->lnF = log(this->muF2/this->m2);
    }
    
/**
 * @brief called function
 * @param aZ integration variable mapped on z
 * @param at1 integration variable mapped on t1
 * @param as4 integration variable mapped on s4
 * @return \f$1/z \sum\limits_q \left(f_{q}(x/z,\mu_F^2) + f_{\bar{q}}(x/z,\mu_F^2)\right) \left(e_H^2 c_{q}^{(1)}(\eta,\xi) + e_q^2 d_{q}^{(1)}(\eta,\xi)\right)\f$
 */
    cdbl operator() (cdbl aZ, cdbl at1, cdbl as4) {
        this->setZ(aZ);
        this->setT1(at1);
        this->setS4(as4,0.);
        cdbl xi = this->bjorkenX/this->z;
        /*cdbl meCq1 = cq1(m2,q2,sp,s4,t1) + this->lnF * cqBarF1(m2,q2,sp,s4,t1);
        cdbl meDq1 = dq1(m2,q2,sp,s4,t1);
        dbl fqs = 0.;
        cdbl eH = getElectricCharge(this->nlf + 1);
        for (uint q = 1; q < this->nlf + 1; ++q) {
            cdbl eL = getElectricCharge(q);
            fqs += (this->pdf->xfxQ2((int)q,xi,this->muF2) + this->pdf->xfxQ2(-((int)q),xi,this->muF2))*(eH*eH*meCq1 + eL*eL*meDq1);
        }
        cdbl r = jac * 1./this->z * fqs / m2;*/
        cdbl r = (jac*xi/this->z) * this->PdfMe(xi,this->t1,this->s4);
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

/**
 * @brief NLO quark convolution differentiated towards HAQRapidity
 */
class PdfConvNLOq_dy : public PdfConvNLOq, protected PdfConvBase_dy {
public:
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param nlf number of light flavours
 * @param cq1 pointer to eH2 matrix element
 * @param cqBarF1 pointer to factorisation logs of eH2 matrix element
 * @param dq1 pointer to eL2 matrix element
 * @param y current HAQRapididy
 */
    PdfConvNLOq_dy(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, uint nlf, fPtr5dbl cq1, fPtr5dbl cqBarF1, fPtr5dbl dq1, cdbl y) :
        PdfConvNLOq(m2, q2, bjorkenX, pdf, muF2, nlf, cq1, cqBarF1, dq1),
        PdfConvBase_dy(m2,this->getHadronicS(),y){}
    
/**
 * @brief called function
 * @param amt2 integration variable mapped on mt2
 * @param as4 integration variable mapped on s4
 * @return 
 */
    inline cdbl operator() (cdbl amt2, cdbl as4) const {
        cdbl mt2 = this->m2 + this->Vmt2*amt2;
        cdbl mt = sqrt(mt2);
        cdbl Sh = this->getHadronicS();
        cdbl Shp = Sh - this->q2;
        cdbl T1 = this->getHadronicT1(this->ey,mt);
        cdbl U1 = this->getHadronicU1(this->ey,mt);
        cdbl s4max = Shp + T1 + U1;
        cdbl s4 = s4max*as4;
        cdbl xi = (s4 - U1)/(Shp + T1);
        
        cdbl r = this->Vmt2*s4max/(Shp+T1)*Shp*xi * this->PdfMe(xi,xi*T1,s4);
        
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
    
};

/**
 * @brief NLO quark convolution differentiated towards HAQTransverseMomentum
 */
class PdfConvNLOq_dpt : public PdfConvNLOq, protected PdfConvBase_dmt2 {
public:
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param nlf number of light flavours
 * @param cq1 pointer to eH2 matrix element
 * @param cqBarF1 pointer to factorisation logs of eH2 matrix element
 * @param dq1 pointer to eL2 matrix element
 * @param pt current HAQTransverseMomentum
 */
    PdfConvNLOq_dpt(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, uint nlf, fPtr5dbl cq1, fPtr5dbl cqBarF1, fPtr5dbl dq1, cdbl pt) :
        PdfConvNLOq(m2, q2, bjorkenX, pdf, muF2, nlf, cq1, cqBarF1, dq1),
        PdfConvBase_dmt2(m2,this->getHadronicS(),pt){}
    
/**
 * @brief called function
 * @param ay integration variable mapped on y
 * @param as4 integration variable mapped on s4
 * @return 
 */
    inline cdbl operator() (cdbl ay, cdbl as4) const {
        cdbl y = this->y0*(-1. + 2.*ay);
        cdbl ey = exp(y);
        cdbl Sh = this->getHadronicS();
        cdbl Shp = Sh - this->q2;
        cdbl T1 = this->getHadronicT1(ey,this->mt);
        cdbl U1 = this->getHadronicU1(ey,this->mt);
        cdbl s4max = Shp + T1 + U1;
        cdbl s4 = s4max*as4;
        cdbl xi = (s4 - U1)/(Shp + T1);
        
        cdbl r = 2.*this->y0*2.*pt*s4max/(Shp+T1)*Shp*xi * this->PdfMe(xi,xi*T1,s4);
        
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
    
};

} // namespace Inclusive

#endif // Inclusive_PdfConvNLOq_H_