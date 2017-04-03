#ifndef Inclusive_PdfConvNLOg_H_
#define Inclusive_PdfConvNLOg_H_

#include "PdfConvBase.hpp"

namespace Inclusive {

/**
 * @brief NLO gluon convolution
 */
class PdfConvNLOg : public PdfConvBase {
    
/**
 * @brief renormalisation scale \f$\mu_R^2\f$
 */
    dbl muR2;

/**
 * @brief number of light flavours
 */
    uint nlf;
    
/**
 * @brief energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 */
    dbl Delta;
    
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

/**
 * @brief \f$\ln(\mu_F^2/m^2)\f$
 */
    dbl lnF;
    
/**
 * @brief \f$\ln(\mu_R^2/m^2)\f$
 */
    dbl lnR;
    
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
    PdfConvNLOg(cdbl m2, cdbl q2, cdbl bjorkenX, PdfWrapper* pdf, cdbl muF2, cdbl muR2, uint nlf, cdbl Delta) :
        PdfConvBase(m2, q2, bjorkenX, pdf, muF2), muR2(muR2), nlf(nlf), Delta(Delta){
        this->lnF = log(this->muF2/this->m2);
        this->lnR = log(this->muR2/this->m2);
    }

/**
 * @brief sets the functions for \f$c_{g}^{(1)}\f$
 * @param cg1SVDelta0 pointer to S+V matrix element
 * @param cg1SVDelta1 pointer to Delta-logs of S+V matrix element
 * @param cg1SVDelta2 pointer to double Delta-logs of S+V matrix element
 * @param cg1H pointer to hard matrix element
 */
    void setCg1(fPtr4dbl cg1SVDelta0, fPtr4dbl cg1SVDelta1, fPtr4dbl cg1SVDelta2, fPtr5dbl cg1H) {
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
    void setCgBarF1(fPtr4dbl cgBarF1SVDelta0, fPtr4dbl cgBarF1SVDelta1, fPtr5dbl cgBarF1H) {
        this->cgBarF1SVDelta0 = cgBarF1SVDelta0;
        this->cgBarF1SVDelta1 = cgBarF1SVDelta1;
        this->cgBarF1H = cgBarF1H;
    }
    
/**
 * @brief sets the functions for \f$\bar c_{g}^{R,(1)}\f$
 * @param cgBarR1SVDelta0 pointer to renormalisation part of S+V matrix element
 */
    void setCgBarR1(fPtr4dbl cgBarR1SVDelta0) {
        this->cgBarR1SVDelta0 = cgBarR1SVDelta0;
    }
    
/**
 * @brief sets the functions for \f$c_{g}^{(0)}\f$
 * @param cg0 pointer to LO matrix element
 */
    void setCg0(fPtr3dbl cg0) {
        this->cg0 = cg0;
    }
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @return \f$1/z f_{g}(x/z,\mu_F^2) c_{g}^{(1)}(\eta,\xi)\f$
 */
    cdbl operator() (cdbl a1, cdbl a2, cdbl a3) {
        // protect from null pointer
        if (0 == this->cg1SVDelta0 || 0 == this->cg1SVDelta1 || 0 == this->cg1SVDelta2 || 0 == this->cg1H
            || 0 == this->cgBarF1SVDelta0 || 0 == this->cgBarF1SVDelta1 || 0 == this->cgBarF1H 
            || 0 == this->cgBarR1SVDelta0 || 0 == this->cg0)
                throw invalid_argument("need to set all arguments!");
        this->setSp(a1);
        this->setT1(a2);
        this->setS4(a3,Delta);
        cdbl A0 = 1./(s4max - Delta);
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
        cdbl r = jac * 1./this->z * this->pdf->xfxQ2(21,this->bjorkenX/this->z,this->muF2) * me;
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

} // namespace Inclusive

#endif // Inclusive_PdfConvNLOg_H_