#ifndef Inclusive_PdfConvNLOg_H_
#define Inclusive_PdfConvNLOg_H_

#include "PdfConvBase.hpp"

namespace Inclusive {

/**
 * @brief Abstract base class for NLO gluon convolution
 */
class PdfConvNLOgBase : protected PdfConvBase {
    
/**
 * @brief renormalisation scale \f$\mu_R^2\f$
 */
    dbl muR2;

/**
 * @brief number of light flavours
 */
    uint nlf;

protected:
    
/**
 * @brief energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 */
    dbl Delta;
    
private:

/**
 * @brief \f$\ln(\mu_F^2/m^2)\f$
 */
    dbl lnF;
    
/**
 * @brief \f$\ln(\mu_R^2/m^2)\f$
 */
    dbl lnR;
    
/**
 * @brief pointer to S+V matrix element
 */
    fPtr4dbl cg1SVDelta0 = 0;
    
/**
 * @brief pointer to Delta-logs of S+V matrix element
 */
    fPtr4dbl cg1SVDelta1 = 0;
    
/**
 * @brief pointer to double Delta-logs of S+V matrix element
 */
    fPtr4dbl cg1SVDelta2 = 0;
    
/**
 * @brief pointer to hard matrix element
 */
    fPtr5dbl cg1H = 0;
    
/**
 * @brief pointer to factorisation part of S+V matrix element
 */
    fPtr4dbl cgBarF1SVDelta0 = 0;
    
/**
 * @brief pointer to Delta-logs of factorisation part of S+V matrix element
 */
    fPtr4dbl cgBarF1SVDelta1 = 0;
    
/**
 * @brief pointer to factorisation part of hard matrix element
 */
    fPtr5dbl cgBarF1H = 0;
    
/**
 * @brief pointer to renormalisation part of S+V matrix element
 */
    fPtr4dbl cgBarR1SVDelta0 = 0;
    
/**
 * @brief pointer to LO matrix element
 */
    fPtr3dbl cg0 = 0;
    
protected:

/**
 * @brief computes pdf * me without any jacobians
 * @param xi momentum fraction
 * @param t1 partonic t1
 * @param s4 partonic s4
 * @param s4max max partonic s4
 * @return pdf*me
 */
    inline cdbl PdfMe(cdbl xi, cdbl t1, cdbl s4, dbl s4max) const {
        // protect from null pointer
        if (0 == this->cg1SVDelta0 || 0 == this->cg1SVDelta1 || 0 == this->cg1SVDelta2 || 0 == this->cg1H
            || 0 == this->cgBarF1SVDelta0 || 0 == this->cgBarF1SVDelta1 || 0 == this->cgBarF1H 
            || 0 == this->cgBarR1SVDelta0 || 0 == this->cg0)
                throw invalid_argument("need to set all arguments!");
                
        cdbl Shp = this->getHadronicSp();
        cdbl sp = xi * Shp;
        
        /*{
            cdbl s = sp+q2;
            cdbl beta = Sqrt(1. - (4.*m2)/s);
            s4max = (s*( (sp*(1. - beta))/2. + t1 )*( (sp*(1. + beta))/2. + t1) )/(sp*t1);
        }*/
        
        if (s4 < this->Delta || s4 > s4max || s4max < this->Delta) {
            //printf("%e < s4=%e < %e\n",Delta,s4,s4max);
            return 0.;
        }
        
        cdbl A0 = 1./(s4max - this->Delta);
        dbl fakeCg1SV = cg1SVDelta0(m2,q2,sp,t1) * A0;
        dbl fakeCgBarF1SV = cgBarF1SVDelta0(m2,q2,sp,t1) * A0;
        dbl fakeCgBarR1SV = cgBarR1SVDelta0(m2,q2,sp,t1) * A0;
        
        cdbl A1 = log(s4max/m2)/(s4max - this->Delta) - 1./s4;
        fakeCg1SV += cg1SVDelta1(m2,q2,sp,t1) * A1;
        fakeCgBarF1SV += cgBarF1SVDelta1(m2,q2,sp,t1) * A1;
        
        cdbl A2 = pow(log(s4max/m2),2)/(s4max - this->Delta) - 2.*log(s4/m2)/s4;
        fakeCg1SV += cg1SVDelta2(m2,q2,sp,t1) * A2;
        
        cdbl meCg1H = cg1H(m2,q2,sp,s4,t1);
        cdbl meCgBarF1H = cgBarF1H(m2,q2,sp,s4,t1);
        
        // take fermion loop into account
        if (lnF != lnR) {
            cdbl s = sp+q2;
            cdbl beta = Sqrt(1. - (4.*m2)/s);
            cdbl t1max = -(sp*(1. - beta))/2.;
            cdbl t1min = -(sp*(1. + beta))/2.;
            cdbl B0 = A0/(t1max-t1min);
            cdbl meCg0 = cg0(m2,q2,sp);
            fakeCgBarF1SV += nlf * fermionLoopFactor * meCg0 * B0;
            fakeCgBarR1SV -= nlf * fermionLoopFactor * meCg0 * B0;
        }
        
        cdbl me = (meCg1H + fakeCg1SV) + lnF * (meCgBarF1H + fakeCgBarF1SV) + lnR * (fakeCgBarR1SV);
        cdbl r = 1./xi * this->pdf->xfxQ2(21,xi,this->muF2) * me / m2;
        return r;
    }

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param muR2 renormalisation scale \f$\mu_R^2\f$
 * @param nlf number of light flavours
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 */
    inline PdfConvNLOgBase(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, cdbl muR2, uint nlf, cdbl Delta) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), muR2(muR2), nlf(nlf), Delta(Delta){
        this->lnF = log(this->muF2/this->m2);
        this->lnR = log(this->muR2/this->m2);
    }
    
public:

/**
 * @brief sets the functions for \f$c_{g}^{(1)}\f$
 * @param cg1SVDelta0 pointer to S+V matrix element
 * @param cg1SVDelta1 pointer to Delta-logs of S+V matrix element
 * @param cg1SVDelta2 pointer to double Delta-logs of S+V matrix element
 * @param cg1H pointer to hard matrix element
 */
    inline void setCg1(fPtr4dbl cg1SVDelta0, fPtr4dbl cg1SVDelta1, fPtr4dbl cg1SVDelta2, fPtr5dbl cg1H) {
        this->cg1SVDelta0 = cg1SVDelta0;
        this->cg1SVDelta1 = cg1SVDelta1;
        this->cg1SVDelta2 = cg1SVDelta2;
        this->cg1H = cg1H;
    }
    
/**
 * @brief sets the functions for \f$\bar c_{g}^{F,(1)}\f$
 * @param cgBarF1SVDelta0 pointer to factorisation part of S+V matrix element
 * @param cgBarF1SVDelta1 pointer to factorisation part of Delta-logs of S+V matrix element
 * @param cgBarF1H pointer to factorisation part of hard matrix element
 */
    inline void setCgBarF1(fPtr4dbl cgBarF1SVDelta0, fPtr4dbl cgBarF1SVDelta1, fPtr5dbl cgBarF1H) {
        this->cgBarF1SVDelta0 = cgBarF1SVDelta0;
        this->cgBarF1SVDelta1 = cgBarF1SVDelta1;
        this->cgBarF1H = cgBarF1H;
    }
    
/**
 * @brief sets the functions for \f$\bar c_{g}^{R,(1)}\f$
 * @param cgBarR1SVDelta0 pointer to renormalisation part of S+V matrix element
 */
    inline void setCgBarR1(fPtr4dbl cgBarR1SVDelta0) {
        this->cgBarR1SVDelta0 = cgBarR1SVDelta0;
    }
    
/**
 * @brief sets the functions for \f$c_{g}^{(0)}\f$
 * @param cg0 pointer to LO matrix element
 */
    inline void setCg0(fPtr3dbl cg0) {
        this->cg0 = cg0;
    }
};

/**
 * @brief NLO gluon convolution
 */
class PdfConvNLOg : public PdfConvNLOgBase, public PdfConvFullBase {
    using PdfConvBase::bjorkenX;
public:
    
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param muR2 renormalisation scale \f$\mu_R^2\f$
 * @param nlf number of light flavours
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 */
    inline PdfConvNLOg(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, cdbl muR2, uint nlf, cdbl Delta) :
        PdfConvNLOgBase(m2, q2, bjorkenX, pdf, muF2, muR2, nlf, Delta),
        PdfConvFullBase(m2, q2, bjorkenX){}
    
/**
 * @brief called function
 * @param az integration variable mapped on z
 * @param at1 integration variable mapped on t1
 * @param as4 integration variable mapped on s4
 * @return
 */
    inline cdbl operator() (cdbl az, cdbl at1, cdbl as4) {
        this->setZ(az);
        this->setT1(at1);
        this->setS4(as4,Delta);
        cdbl xi = this->bjorkenX/this->z;
        /*cdbl A0 = 1./(s4max - Delta);
        dbl fakeCg1SV = cg1SVDelta0(m2,q2,sp,t1) * A0;
        dbl fakeCgBarF1SV = cgBarF1SVDelta0(m2,q2,sp,t1) * A0;
        dbl fakeCgBarR1SV = cgBarR1SVDelta0(m2,q2,sp,t1) * A0;
        
        cdbl A1 = log(s4max/m2)/(s4max - Delta) - 1./s4;
        fakeCg1SV += cg1SVDelta1(m2,q2,sp,t1) * A1;
        fakeCgBarF1SV += cgBarF1SVDelta1(m2,q2,sp,t1) * A1;
        
        cdbl A2 = pow(log(s4max/m2),2)/(s4max - Delta) - 2.*log(s4/m2)/s4;
        fakeCg1SV += cg1SVDelta2(m2,q2,sp,t1) * A2;
        
        cdbl meCg1H = cg1H(m2,q2,sp,s4,t1);
        cdbl meCgBarF1H = cgBarF1H(m2,q2,sp,s4,t1);
        
        // take fermion loop into account
        cdbl B0 = A0/(this->t1max-this->t1min);
        cdbl meCg0 = cg0(m2,q2,sp);
        fakeCgBarF1SV += nlf * fermionLoopFactor * meCg0 * B0;
        fakeCgBarR1SV -= nlf * fermionLoopFactor * meCg0 * B0;
        
        cdbl me = (meCg1H + fakeCg1SV) + lnF * (meCgBarF1H + fakeCgBarF1SV) + lnR * (fakeCgBarR1SV);
        cdbl r = jac * 1./this->z * this->pdf->xfxQ2(21,this->bjorkenX/this->z,this->muF2) * me;*/
        cdbl r = (jac*xi/this->z) * this->PdfMe(xi, this->t1, this->s4, this->s4max);
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};



class PdfConvNLOg_ : public PdfConvNLOgBase {
    dbl y0_;
public:
    inline PdfConvNLOg_(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, cdbl muR2, uint nlf, cdbl Delta) :
        PdfConvNLOgBase(m2, q2, bjorkenX, pdf, muF2, muR2, nlf, Delta){
            this->y0_ = atanh(sqrt(1. - 4.*this->m2/this->getHadronicS()));
        }
    inline cdbl operator() (cdbl ay, cdbl amt2, cdbl as4) {
        cdbl y = this->y0_*(-1. + 2.*ay);
        cdbl ey = exp(y);
        cdbl coshy = cosh(y);
        
        cdbl mt2Max = this->getHadronicS()/(4.*coshy*coshy);
        cdbl mt2 = this->m2 + (mt2Max - this->m2)*amt2;
        cdbl mt = sqrt(mt2);
        
        /*cdbl Sh = this->getHadronicS();
        cdbl mt2 = m2 + (Sh/4 - m2)*amt2;
        cdbl mt = sqrt(mt2);
        cdbl y0 = acosh(sqrt(Sh)/2./mt);
        cdbl y = y0*(-1. + 2.*ay);
        cdbl ey = exp(y);*/
        
        cdbl Shp = this->getHadronicSp();
        cdbl T1 = this->getHadronicT1(ey,mt);
        cdbl U1 = this->getHadronicU1(ey,mt);
        cdbl s4max = Shp + T1 + U1;
        if (s4max < this->Delta) {
            //printf("[WARN] Delta=%e <!< s4max=%e\n",Delta,s4max);
            return 0.;
        }
        cdbl s4 = Delta + (s4max-this->Delta)*as4;
        cdbl xi = (s4 - U1)/(Shp + T1);
        
        cdbl r = (2.*this->y0_)*(mt2Max - this->m2)*(s4max-this->Delta)/(Shp+T1) *Shp*xi*xi*Shp * this->PdfMe(xi,xi*T1,s4,s4max);
        //cdbl r = (2.*y0)*(Sh/4 - m2)*(s4max-this->Delta)/(Shp+T1) *Shp*xi * this->PdfMe(xi,xi*T1,s4,s4max);
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

/**
 * @brief NLO gluon convolution differentiated towards HAQRapidity
 */
class PdfConvNLOg_dHAQRapidity : public PdfConvNLOgBase, protected PdfConvBase_dHAQRapidity {
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param muR2 renormalisation scale \f$\mu_R^2\f$
 * @param nlf number of light flavours
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 * @param y current HAQRapididy
 */
    inline PdfConvNLOg_dHAQRapidity(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, cdbl muR2, uint nlf, cdbl Delta, cdbl y) :
        PdfConvNLOgBase(m2, q2, bjorkenX, pdf, muF2, muR2, nlf, Delta),
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
        cdbl s4 = Delta + (s4max-Delta)*as4;
        cdbl xi = (s4 - U1)/(Shp + T1);
        
        cdbl r = this->Vmt2*(s4max-Delta)/(Shp+T1)*Shp*xi * this->PdfMe(xi,xi*T1,s4,s4max);
        
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

/**
 * @brief NLO gluon convolution differentiated towards HAQTransverseMomentum
 */
class PdfConvNLOg_dHAQTransverseMomentum : public PdfConvNLOgBase, protected PdfConvBase_dHAQTransverseMomentum {
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param muR2 renormalisation scale \f$\mu_R^2\f$
 * @param nlf number of light flavours
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 * @param pt current HAQTransverseMomentum
 */
    inline PdfConvNLOg_dHAQTransverseMomentum(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, cdbl muR2, uint nlf, cdbl Delta, cdbl pt) :
        PdfConvNLOgBase(m2, q2, bjorkenX, pdf, muF2, muR2, nlf, Delta),
        PdfConvBase_dHAQTransverseMomentum(m2,this->getHadronicS(),pt){}
        
/**
 * @brief called function
 * @param amt2 integration variable mapped on mt2
 * @param as4 integration variable mapped on s4
 * @return 
 */
    inline cdbl operator() (cdbl ay, cdbl as4) const {
        cdbl y = this->y0*(-1. + 2.*ay);
        cdbl ey = exp(y);
        cdbl Shp = this->getHadronicSp();
        cdbl T1 = this->getHadronicT1(ey,this->mt);
        cdbl U1 = this->getHadronicU1(ey,this->mt);
        cdbl s4max = Shp + T1 + U1;
        cdbl s4 = Delta + (s4max-Delta)*as4;
        cdbl xi = (s4 - U1)/(Shp + T1);
        
        /*{
            cdbl sp = xi*Shp;
            cdbl t1 = xi*T1;
            cdbl s = sp+q2;
            cdbl beta = Sqrt(1. - (4.*m2)/s);
            cdbl s4max_ = (s*( (sp*(1. - beta))/2. + t1 )*( (sp*(1. + beta))/2. + t1) )/(sp*t1);
            printf("%e\t%e\t%e\t%e\t",s4max,s4max_,s4max-s4max_,s4max/s4max_);
            cout << " " << sp << " " << t1 << " " << U1 << " " << s4 << " " << xi <<endl;
        }*/
        
        cdbl r = 2.*this->y0*2.*pt*(s4max-Delta)/(Shp+T1)*Shp*xi * this->PdfMe(xi,xi*T1,s4,s4max);
        
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

} // namespace Inclusive

#endif // Inclusive_PdfConvNLOg_H_