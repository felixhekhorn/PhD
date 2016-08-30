#ifndef PdfConvolutionNLOq_H_
#define PdfConvolutionNLOq_H_

#include "LHAPDF/LHAPDF.h"

#include "config.h"

class PdfConvolutionNLOq {
    
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
    LHAPDF::PDF* pdf;

/**
 * @brief factorisation scale \f$\mu_F^2\f$
 */
    dbl muF2;

/**
 * @brief number of light flavours
 */
    uint nlf;

/**
 * @brief multiply quark charge?
 */
    bool multiplyElCharge;
    
/**
 * @brief pointer to matrix element
 */
    func5dbl gq1;
    
/**
 * @brief upper z-integration limit
 */
    dbl zMax;
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 * @param nlf number of light flavours
 * @param multiplyElCharge multiply quark charge?
 * @param gq1 pointer to matrix element
 */
    PdfConvolutionNLOq(dbl m2, dbl q2, dbl bjorkenX, LHAPDF::PDF* pdf, dbl muF2, uint nlf, bool multiplyElCharge, func5dbl gq1) :
        m2(m2), q2(q2), bjorkenX(bjorkenX), pdf(pdf), muF2(muF2), nlf(nlf), multiplyElCharge(multiplyElCharge), gq1(gq1){
        this->zMax = -q2/(4.*m2 - q2);
    }
    
/**
 * @brief called function
 * @param a
 * @return \f$1/z f_{g}(x/z,\mu_F^2) c_{g}^{(0)}(\eta,\xi)\f$
 */
    dbl operator() (dbl a1, dbl a2, dbl a3) {
        dbl z = this->bjorkenX + (this->zMax - this->bjorkenX)*a1;
        dbl s = -q2*(1.-z)/z;
        dbl sp = s - q2;
        dbl beta = Sqrt(1 - (4*m2)/s);
        dbl t1max = -(sp*(1. - Sqrt(1. - (4.*m2)/(q2 + sp))))/2.;
        dbl t1min = -(sp*(1. + Sqrt(1. - (4.*m2)/(q2 + sp))))/2.;
        dbl t1 = t1min + (t1max-t1min)*a2;
        dbl s4max = (s*((sp*(1 - beta))/2. + t1)*((sp*(1 + beta))/2. + t1))/(sp*t1);
        dbl s4 = s4max*a3;
        dbl jac = (this->zMax - this->bjorkenX)*(t1max-t1min)*s4max;
        dbl me = gq1(m2,q2,sp,s4,t1);
        dbl y = this->bjorkenX/z;
        dbl fqs = 0.;
        dbl e = 1.;
        for (uint q = 1; q < this->nlf + 1; ++q) {
            if (this->multiplyElCharge)
                e = getElectricCharge(q);
            fqs += e * (this->pdf->xfxQ2(q,y,this->muF2) + this->pdf->xfxQ2(-q,y,this->muF2));
        }
        return jac * 1./this->bjorkenX * fqs * me;
    }
};

#endif // PdfConvolutionNLOq_H_