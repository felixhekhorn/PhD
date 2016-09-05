#ifndef PdfConvBase_H_
#define PdfConvBase_H_

#include "LHAPDF/LHAPDF.h"

#include "config.h"

/**
 * @brief Abstract base class for convolution with PDFs
 */
class PdfConvBase {
protected:
    
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
 * @brief upper z-integration limit
 */
    dbl zMax;
    
/**
 * @brief current momentum fraction
 */
    dbl z;
    
/**
 * @brief current \f$s'\f$
 */
    dbl sp;
    
/**
 * @brief current \f$t_1\f$
 */
    dbl t1;
    
/**
 * @brief current \f$s_4\f$
 */
    dbl s4;
    
/**
 * @brief current jacobian determinant
 */
    dbl jac;

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param pdf parton distribution functions
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 */
    PdfConvBase(dbl m2, dbl q2, dbl bjorkenX, LHAPDF::PDF* pdf, dbl muF2) :
        m2(m2), q2(q2), bjorkenX(bjorkenX), pdf(pdf), muF2(muF2),
        z(0.),sp(0.),t1(0.),s4(0.),
        jac(1.){
        this->zMax = -q2/(4.*m2 - q2);
    }

/**
 * @brief sets s'
 * @param a integration variable
 */
    void setSp(dbl a) {
        this->z = this->bjorkenX + (this->zMax - this->bjorkenX)*a;
        this->sp = -q2/z;
        this->jac *= (this->zMax - this->bjorkenX);
    }

/**
 * @brief sets t1
 * @param a integration variable
 */
    void setT1(dbl a) {
        dbl t1max = -(sp*(1. - Sqrt(1. - (4.*m2)/(q2 + sp))))/2.;
        dbl t1min = -(sp*(1. + Sqrt(1. - (4.*m2)/(q2 + sp))))/2.;
        this->t1 = t1min + (t1max-t1min)*a;
        this->jac *= (t1max-t1min);
    }

/**
 * @brief sets s4
 * @param a integration variable
 * @param s4min minimum value for s4
 */
    void setS4(dbl a, dbl s4min) {
        dbl s = sp+q2;
        dbl beta = Sqrt(1 - (4*m2)/s);
        dbl s4max = (s*((sp*(1 - beta))/2. + t1)*((sp*(1 + beta))/2. + t1))/(sp*t1);
        this->s4 = s4min + (s4max - s4min)*a;
        this->jac *= (s4max - s4min);
    }
};

#endif // PdfConvBase_H_