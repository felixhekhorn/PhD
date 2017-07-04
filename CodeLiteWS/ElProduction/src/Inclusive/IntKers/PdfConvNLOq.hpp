#ifndef Inclusive_PdfConvNLOq_H_
#define Inclusive_PdfConvNLOq_H_

#include "PdfConvBase.hpp"

namespace Inclusive {

/**
 * @brief Abstract base class for NLO quark convolution
 */
class PdfConvNLOqBase : protected PdfConvBase {

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
    inline PdfConvNLOqBase(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, uint nlf, fPtr5dbl cq1, fPtr5dbl cqBarF1, fPtr5dbl dq1) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), nlf(nlf), cq1(cq1), cqBarF1(cqBarF1), dq1(dq1) {
        this->lnF = log(this->muF2/this->m2);
    }
};

/**
 * @brief NLO quark convolution
 */
class PdfConvNLOq : public PdfConvNLOqBase, public PdfConvFullBase {
    using PdfConvBase::bjorkenX;
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
    inline PdfConvNLOq(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, uint nlf, fPtr5dbl cq1, fPtr5dbl cqBarF1, fPtr5dbl dq1) :
        PdfConvNLOqBase(m2, q2, bjorkenX, pdf, muF2, nlf, cq1, cqBarF1, dq1),
        PdfConvFullBase(m2, q2, bjorkenX){}
    
/**
 * @brief called function
 * @param aZ integration variable mapped on z
 * @param at1 integration variable mapped on t1
 * @param as4 integration variable mapped on s4
 * @return kernel
 */
    inline cdbl operator() (cdbl aZ, cdbl at1, cdbl as4) {
        this->setZ(aZ);
        this->setT1(at1);
        this->setS4(as4,0.);
        cdbl xi = this->bjorkenX/this->z;
        cdbl r = (jac*xi/this->z) * this->PdfMe(xi,this->t1,this->s4);
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

/**
 * @brief NLO quark convolution differentiated towards HAQRapidity
 */
class PdfConvNLOq_dHAQRapidity : public PdfConvNLOqBase, protected PdfConvBase_dHAQRapidity {
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
    inline PdfConvNLOq_dHAQRapidity(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, uint nlf, fPtr5dbl cq1, fPtr5dbl cqBarF1, fPtr5dbl dq1, cdbl y) :
        PdfConvNLOqBase(m2, q2, bjorkenX, pdf, muF2, nlf, cq1, cqBarF1, dq1),
        PdfConvBase_dHAQRapidity(m2,this->getHadronicS(),y){}
    
/**
 * @brief called function
 * @param amt2 integration variable mapped on mt2
 * @param as4 integration variable mapped on s4
 * @return kernel
 */
    inline cdbl operator() (cdbl amt2, cdbl as4) const {
        cdbl mt2 = this->m2 + this->Vmt2*amt2;
        cdbl mt = sqrt(mt2);
        cdbl Shp = this->getHadronicSp();
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
class PdfConvNLOq_dHAQTransverseMomentum : public PdfConvNLOqBase, protected PdfConvBase_dHAQTransverseMomentum {
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
    inline PdfConvNLOq_dHAQTransverseMomentum(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, uint nlf, fPtr5dbl cq1, fPtr5dbl cqBarF1, fPtr5dbl dq1, cdbl pt) :
        PdfConvNLOqBase(m2, q2, bjorkenX, pdf, muF2, nlf, cq1, cqBarF1, dq1),
        PdfConvBase_dHAQTransverseMomentum(m2,this->getHadronicS(),pt){}
    
/**
 * @brief called function
 * @param ay integration variable mapped on y
 * @param as4 integration variable mapped on s4
 * @return kernel
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

/**
 * @brief NLO quark convolution differentiated towards HAQFeynmanX
 */
class PdfConvNLOq_dHAQFeynmanX : public PdfConvNLOqBase, protected PdfConvBase_dHAQFeynmanX {
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
 * @param xF current HAQFeynmanX
 */
    inline PdfConvNLOq_dHAQFeynmanX(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, uint nlf, fPtr5dbl cq1, fPtr5dbl cqBarF1, fPtr5dbl dq1, cdbl xF) :
        PdfConvNLOqBase(m2, q2, bjorkenX, pdf, muF2, nlf, cq1, cqBarF1, dq1),
        PdfConvBase_dHAQFeynmanX(m2,this->getHadronicS(),xF){}
    
/**
 * @brief called function
 * @param amt2 integration variable mapped on mt2
 * @param as4 integration variable mapped on s4
 * @return kernel
 */
    inline cdbl operator() (cdbl amt2, cdbl as4) const {
        cdbl mt2 = this->m2 + this->Vmt2*amt2;
        cdbl mt = sqrt(mt2);
        cdbl chi = this->getChi(mt);
        cdbl ey = this->pLmax/mt*(this->xF + chi);
        
        cdbl Shp = this->getHadronicSp();
        cdbl T1 = this->getHadronicT1(ey,mt);
        cdbl U1 = this->getHadronicU1(ey,mt);
        cdbl s4max = Shp + T1 + U1;
        cdbl s4 = s4max*as4;
        cdbl xi = (s4 - U1)/(Shp + T1);
        
        cdbl r = this->Vmt2/chi*s4max/(Shp+T1)*Shp*xi * this->PdfMe(xi,xi*T1,s4);
        
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

} // namespace Inclusive

#endif // Inclusive_PdfConvNLOq_H_