#ifndef Exclusive_PdfConvNLOq_HPP_
#define Exclusive_PdfConvNLOq_HPP_

#include "PdfConvBase.hpp"

namespace Exclusive {

/**
 * @brief NLO quark convolution
 */
class PdfConvNLOq : public Exclusive::PdfConvBase {

/**
 * @brief number of light flavours
 */
    uint nlf;

/**
 * @brief \f$\ln(\mu_F^2/m^2)\f$
 */
    dbl lnF;
    
/**
 * @brief pointer to full heavy quark charge ME
 */
    fPtr7dbl Ap1;
    
/**
 * @brief pointer to collinear limit of heavy quark charge ME
 */
    fPtr6dbl Ap1Counter;
    
/**
 * @brief pointer to Born ME
 */
    fPtr4dbl BpQED;
    
/**
 * @brief pointer to \f$P_{gq}^{(0)}(z)\f$
 */
    fPtr1dbl Pgq0;
    
/**
 * @brief pointer to \f$P_{gq}^{(1)}(z)\f$
 */
    fPtr1dbl Pgq1;
    
/**
 * @brief pointer to ME ~ eL^2
 */
    fPtr7dbl Ap2;
    
/**
 * @brief pointer to ME ~ eH eL
 */
    fPtr7dbl Ap3;
    
protected:

    /**
     * @brief computes current value of kernel of \f$c_q^{(1)}\f$
     * @return kernel of \f$c_q^{(1)}\f$
     */
    dbl cq1() const {
        if(0 == this->Ap1 || 0 == this->Ap1Counter || 0 == this->BpQED ||
            0 == this->Pgq0 || 0 == this->Pgq1)
            throw invalid_argument("need to set all arguments!");
        // collinear contributions
        cdbl s5B = q2 + sp*xE;
        cdbl beta5B = sqrt(1. - 4.*m2/s5B);
        cdbl t1c = -.5*sp*(1.-beta5B*cos(Theta1));
        cdbl meB = BpQED(m2,q2,xE*sp,xE*t1c);
        cdbl jacB = jacTheta1;
        cdbl g = Kqgg*NC*CF * m2/(xE*sp)*1./(8.*M_PI) * beta5B*sin(Theta1);
        cdbl l = log(sp/m2*sp/(sp+q2)*omega/2.*(1.-xE)*(1.-xE));
        cdbl vPqg0 = Pgq0(xE)/CF;
        cdbl vPgq1 = Pgq1(xE)/CF;
        
        // hard contributions
        const KinematicVars vsE(m2,q2,sp,xE,yE,Theta1,Theta2);
        cdbl meE = Ap1(m2,q2,sp,vsE.t1,vsE.u1,vsE.tp,vsE.up);
        cdbl jacE = jacxE*jacyE*jacTheta1*jacTheta2;
        cdbl meC = Ap1Counter(m2,q2,sp,xE,Theta1,Theta2);
        cdbl jacC = jacxE*jacyC*jacTheta1*jacTheta2;
        cdbl f = -1./(8.*M_PI*M_PI)*m2/sp * Kqgg*NC*CF * vsE.beta5*sin(Theta1);
        cdbl r = f * (jacE*meE/(1.+yE) - jacC*meC/(1.+yC)) + g*jacB*meB*(2.*vPgq1 + vPqg0*l);
        if (!isfinite(r)) return 0.;
        return r;
    }

    /**
     * @brief computes current value of kernel of \f$d_q^{(1)}\f$
     * @return kernel of \f$d_q^{(1)}\f$
     */
    dbl dq1() const {
        if(0 == this->Ap2)
            throw invalid_argument("need to set all arguments!");
        cdbl jac = jacxE*jacyE*jacTheta1*jacTheta2;
        const KinematicVars vs(m2,q2,sp,xE,yE,Theta1,Theta2);
        cdbl me = Ap2(m2,q2,sp,vs.t1,vs.u1,vs.tp,vs.up);
        cdbl f = -1./(8.*M_PI*M_PI)*m2/sp * Kqgg*NC*CF * vs.beta5/(1.+yE)*sin(Theta1);
        cdbl r = jac * f * me;
        return r;
    }

    /**
     * @brief computes current value of kernel of \f$o_q^{(1)}\f$
     * @return kernel of \f$o_q^{(1)}\f$
     */
    dbl oq1() const {
        if(0 == this->Ap3)
            throw invalid_argument("need to set all arguments!");
        cdbl jac = jacxE*jacyE*jacTheta1*jacTheta2;
        const KinematicVars vs(m2,q2,sp,xE,yE,Theta1,Theta2);
        cdbl me = Ap3(m2,q2,sp,vs.t1,vs.u1,vs.tp,vs.up);
        cdbl f = -1./(8.*M_PI*M_PI)*m2/sp * Kqgg*NC*CF * vs.beta5/(1.+yE)*sin(Theta1);
        cdbl r = jac * f * me;
        return r;
    }
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2 < 0\f$
 * @param bjorkenX Bjorken scaling variable
 * @param nlf number of light flavours
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltax offset to upper integration bound in x
 * @param deltay offset to lower integration bound in y
 */
    PdfConvNLOq(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay) :
        PdfConvBase(m2, q2, bjorkenX, xTilde, omega, deltax, deltay), nlf(nlf),
        Ap1(0), Ap1Counter(0), BpQED(0), Pgq0(0), Pgq1(0),
        Ap2(0), Ap3(0){
        this->lnF = log(this->muF2/this->m2);
    }
    
/**
 * @brief sets pointer to ME ~ eH^2
 * @param Ap1 pointer to full heavy quark charge ME
 * @param Ap1Counter pointer to collinear limit of heavy quark charge ME
 * @param BpQED pointer to Born ME
 * @param Pgq0 pointer to \f$P_{gq}^{(0)}(z)\f$
 * @param Pgq1 pointer to \f$P_{gq}^{(1)}(z)\f$
 */
    void setAp1(fPtr7dbl Ap1, fPtr6dbl Ap1Counter, fPtr4dbl BpQED, fPtr1dbl Pgq0, fPtr1dbl Pgq1) {
        this->Ap1 = Ap1;
        this->Ap1Counter = Ap1Counter;
        this->BpQED = BpQED;
        this->Pgq0 = Pgq0;
        this->Pgq1 = Pgq1;
    }
    
/**
 * @brief sets pointer to ME ~ eL^2
 * @param Ap2 pointer to ME ~ eL^2
 */
    void setAp2(fPtr7dbl Ap2) {
        this->Ap2 = Ap2;
    }
    
/**
 * @brief sets pointer to ME ~ eH eL
 * @param Ap3 pointer to ME ~ eH eL
 */
    void setAp3(fPtr7dbl Ap3) {
        this->Ap3 = Ap3;
    }
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @param a4 integration variable
 * @param a5 integration variable
 * @return \f$1/z \sum\limits_q \left(f_{q}(x/z,\mu_F^2) + f_{\bar{q}}(x/z,\mu_F^2)\right) \left(e_H^2 c_{q}^{(1)}(\eta,\xi) + e_L^2 d_{q}^{(1)}(\eta,\xi) + e_H E_L o_{q}^{(1)}(\eta,\xi)\right)\f$
 */
    dbl operator() (dbl a1, dbl a2, dbl a3, dbl a4, dbl a5) {
        if(0 == this->pdf)
            throw invalid_argument("need to set all arguments!");
        this->setZ(a1);
        this->setX(a2);
        this->setY(a3);
        this->setTheta1(a4);
        this->setTheta2(a5);
        dbl r = 0.;
        // Protect from ps corner cases
        if (!isfinite(r)) return 0.;
        return r;
    }
};

} // namespace Exclusive

#endif // Exclusive_PdfConvNLOq_HPP_