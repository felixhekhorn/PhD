#ifndef CoeffPsKers_HPP_
#define CoeffPsKers_HPP_

#include "../../config.h"
#include "../../Color.h"
#include "KinematicVars.hpp"

using namespace Color;

namespace Exclusive {
    
/**
 * @brief base class to all coefficient phasespace kernels
 */
class AbstractCoeffPsKer {
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
 * @brief current \f$s'\f$
 */
    dbl sp;
    
/**
 * @brief lower x intergation bound \f$\rho^*\f$
 */
    dbl rhoStar;
    
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 */
    AbstractCoeffPsKer(dbl m2, dbl q2, dbl sp) : m2(m2), q2(q2) {
        this->setSp(sp);
    };
    
public:

/**
 * @brief sets s'
 * @param sp s'
 */
    void setSp(dbl sp) {
        this->sp = sp;
        this->rhoStar = (4.*m2 - q2)/sp;
    }
};

/**
 * @brief exclusive phasespace kernel for \f$c_{g}^{(1)}\f$
 */
class PsKerCg1 : public AbstractCoeffPsKer {
    
/**
 * @brief pointer to Born ME
 */
    fPtr4dbl BpQED;
    
/**
 * @brief pointer to soft+virtual ME
 */
    fPtr5dbl SVp;
    
/**
 * @brief pointer to full hard ME
 */
    fPtr7dbl Rp;
    
/**
 * @brief pointer to soft limit of hard ME
 */
    fPtr6dbl RpxC;
    
/**
 * @brief pointer to collinear limit of hard ME
 */
    fPtr6dbl ROKpyC;
    
/**
 * @brief pointer to soft+collinear limit of hard ME
 */
    fPtr4dbl ROKpyxC;
    
/**
 * @brief pointer to \f$P_{gg}^{(0)}(z)\f$
 */
    fPtr1dbl Pgg0;
    
/**
 * @brief pointer to \f$P_{gg}^{(1)}(z)\f$
 */
    fPtr1dbl Pgg1;
    
/**
 * @brief soft regulation parameter \f$\tilde\rho\f$
 */
    dbl rhoTilde;

/**
 * @brief soft regulation parameter \f$\tilde\beta\f$
 */
    dbl betaTilde;
    
/**
 * @brief collinear regulation parameter \f$\omega\f$
 */
    dbl omega;
    
/**
 * @brief offset to upper integration bound in x \f$\delta_x\f$
 */
    dbl deltax;
    
/**
 * @brief offset to lower integration bound in y \f$\delta_y\f$
 */
    dbl deltay;
    
public:
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 * @param rhoTilde soft regulation parameter \f$\tilde\rho\f$
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltax offset to upper integration bound in x \f$\delta_x\f$
 * @param deltay offset to lower integration bound in y \f$\delta_y\f$
 */
    PsKerCg1(dbl m2, dbl q2, dbl sp, dbl rhoTilde, dbl omega, dbl deltax, dbl deltay) : AbstractCoeffPsKer(m2,q2,sp), 
        BpQED(0),SVp(0),Rp(0),RpxC(0),ROKpyC(0),ROKpyxC(0),Pgg0(0),Pgg1(0),
        rhoTilde(rhoTilde),omega(omega),deltax(deltax),deltay(deltay) {
        this->betaTilde = sqrt(1. - rhoTilde);
    };
    
/**
 * @brief sets 2->2 MEs
 * @param BpQED pointer to Born ME
 * @param SVp pointer to soft+virtual ME
 */
    void setBorn(fPtr4dbl BpQED, fPtr5dbl SVp) {
        this->BpQED = BpQED;
        this->SVp = SVp;
    }
    
/**
 * @brief sets hard MEs
 * @param Rp pointer to full hard ME
 * @param RpxC pointer to soft limit of hard ME
 * @param ROKpyC pointer to collinear limit of hard ME
 * @param ROKpyxC pointer to soft+collinear limit of hard ME
 */
    void setRp(fPtr7dbl Rp, fPtr6dbl RpxC, fPtr6dbl ROKpyC, fPtr4dbl ROKpyxC) {
        this->Rp = Rp;
        this->RpxC = RpxC;
        this->ROKpyC = ROKpyC;
        this->ROKpyxC = ROKpyxC;
    }
    
/**
 * @brief sets Altarelli-Parisi kernels
 * @param Pgg0 pointer to \f$P_{gg}^{(0)}(z)\f$
 * @param Pgg1 pointer to \f$P_{gg}^{(1)}(z)\f$
 */
    void setPgg(fPtr1dbl Pgg0, fPtr1dbl Pgg1) {
        this->Pgg0 = Pgg0;
        this->Pgg1 = Pgg1;
    }
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @param a4 integration variable
 * @return kernel
 */
    dbl operator() (cdbl a1, cdbl a2, cdbl a3, cdbl a4) {
        // protect from null pointer
        if (0 == this->BpQED || 0 == this->SVp 
            || 0 == this->Rp || 0 == this->RpxC || 0 == this->ROKpyC || 0 == this->ROKpyxC 
            || 0 == this->Pgg0 || 0 == this->Pgg1)
                throw invalid_argument("need to set all arguments!");
        dbl r = 0.;
        dbl jac = 1.;
        cdbl s = sp + q2;
        cdbl beta = sqrt(1. - 4.*m2/s);
        // Theta1
        cdbl Theta1 = M_PI * a3;
        jac *= M_PI;
        
        // S+V contributions
        {
            cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
            cdbl f = Kggg*NC*CF * 1./(4.*sp);
            r += jac*f * SVp(m2,q2,sp,t1,betaTilde) * beta*sin(Theta1)/(16.*M_PI);
        }
        
        // transform x with distribution for event
        cdbl xEmax = 1.-deltax;
        cdbl xEmin = rhoStar;
        cdbl xE = xEmin + (xEmax - xEmin)*a1;
        // transform x with distribution for counter event
        cdbl xCmax = xEmax;
        cdbl xCmin = rhoTilde;
        cdbl xC = xCmin + (xCmax - xCmin)*a1;
        
        // collinear contributions
        {
            cdbl s5E = q2 + xE*sp;
            cdbl beta5E = sqrt(1. - 4.*m2/s5E);
            cdbl t1c = -.5*sp*(1. - beta5E*cos(Theta1));
            cdbl t1  = -.5*sp*(1. - beta  *cos(Theta1));
            cdbl meE = BpQED(m2,q2,xE*sp,xE*t1c);
            cdbl meC = BpQED(m2,q2,sp,t1);
            cdbl f = Kggg*NC*CF * 1./sp * sin(Theta1);
            cdbl l = log(sp/m2)+log(sp/s)+log(omega/2.);
            // (1-x)P_gg^0 -> 2CA for x->1 for all projections
            r += jac*(xEmax - xEmin) * f*beta5E/xE*meE*(Pgg0(xE) *(/*(1-x)/(1-x)*/l + 2.*log(1.-xE)        ) + 2.*Pgg1(xE));
            r -= jac*(xCmax - xCmin) * f*beta     *meC*(2.*CA    *(    1./(1.-xC)*l + 2.*log(1.-xC)/(1.-xC)));
            //cdbl p = (1.-xE)*(1.-xE)*(1.+1./xE/xE) + 1.;
            //printf("%e %e %e\n",xE,Pgg0(xE)/xE,2.*CA*p/(1.-xE));
            //cdbl px = 1.;
            //r += jac*(xEmax - xEmin) * f*beta5E*meE*(2.*CA*p *(l + 2.*log(1.-xE))/(1.-xE));
            //r -= jac*(xCmax - xCmin) * f*beta  *meC*(2.*CA*px*(l + 2.*log(1.-xC))/(1.-xC));
        }
        
        // Theta2
        cdbl Theta2 = M_PI * a4;
        jac *= M_PI;
        // transform y with distribution for event
        cdbl yEmin = -1.+deltay;
        cdbl yEmax = 1.;
        cdbl yE = yEmin + (yEmax - yEmin)*a2;
        // transform y with distribution for counter event
        cdbl yCmin = yEmin;
        cdbl yCmax = -1.+omega;
        cdbl yC = yCmin + (yCmax - yCmin)*a2;
        
        // hard contributions
        {
            const KinematicVars vsE(m2,q2,sp,xE,yE,Theta1,Theta2);
            cdbl t1sc = -sp/2.*(1. - beta*cos(Theta1));
            cdbl f = Kggg*NC*CF * s/(M_PI*pow(sp,3))*sin(Theta1);
            r += jac*(xEmax - xEmin)*(yEmax - yEmin) * f*vsE.beta5/(1.-yE) * 1./(1.-xE)/(1.+yE) *    Rp     (m2,q2,sp,xE,yE,Theta1,Theta2);
            r -= jac*(xCmax - xCmin)*(yEmax - yEmin) * f*    beta /(1.-yE) * 1./(1.-xC)/(1.+yE) *    RpxC   (m2,q2,sp,yE,Theta1,Theta2);
            r -= jac*(xEmax - xEmin)*(yCmax - yCmin) * f*vsE.beta5/2.      * 1./(1.-xE)/(1.+yC) * CA*ROKpyC (m2,q2,sp,xE,Theta1,Theta2);
            r += jac*(xCmax - xCmin)*(yCmax - yCmin) * f*    beta /2.      * 1./(1.-xC)/(1.+yC) * CA*ROKpyxC(m2,q2,sp,t1sc);
        }
        
        // norm to cg1
        r *= (m2/4.*M_PI) * /** @todo 1/pi^2? */ .101;
        if (!isfinite(r)) return 0.;
        return r;
    }
};

/**
 * @brief exclusive phasespace kernel for \f$c_{q}^{(1)}\f$
 */
class PsKerCq1 : public AbstractCoeffPsKer {
    
/**
 * @brief pointer to Born ME
 */
    fPtr4dbl BpQED;
    
/**
 * @brief pointer to full heavy quark charge ME
 */
    fPtr7dbl Ap1;
    
/**
 * @brief pointer to soft limit of heavy quark charge ME
 */
    fPtr6dbl Ap1Counter;
    
/**
 * @brief pointer to \f$P_{gq}^{(0)}(z)\f$
 */
    fPtr1dbl Pgq0;
    
/**
 * @brief pointer to \f$P_{gq}^{(1)}(z)\f$
 */
    fPtr1dbl Pgq1;
    
/**
 * @brief collinear factorisation parameter \f$\omega\f$
 */
    dbl omega;
    
/**
 * @brief offset to lower integration bound in y \f$\delta_y\f$
 */
    dbl deltay;
    
public:
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 * @param BpQED pointer to Born ME
 * @param Ap1 pointer to pole part of ME
 * @param Ap1Counter pointer to finite part of heavy quark charge ME
 * @param Pgq0 pointer to \f$P_{gq}^{(0)}(z)\f$
 * @param Pgq1 pointer to \f$P_{gq}^{(1)}(z)\f$
 * @param omega collinear factorisation parameter \f$\omega\f$
 * @param deltay offset to lower integration bound in y \f$\delta_y\f$
 */
    PsKerCq1(dbl m2, dbl q2, dbl sp, fPtr4dbl BpQED, fPtr7dbl Ap1, fPtr6dbl Ap1Counter, fPtr1dbl Pgq0, fPtr1dbl Pgq1, dbl omega, dbl deltay) : AbstractCoeffPsKer(m2,q2,sp), 
        BpQED(BpQED),Ap1(Ap1),Ap1Counter(Ap1Counter),Pgq0(Pgq0),Pgq1(Pgq1),omega(omega),deltay(deltay) {};
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @param a4 integration variable
 * @return kernel
 */
    dbl operator() (cdbl a1, cdbl a2, cdbl a3, cdbl a4) {
        dbl jac = 1.;
        // x
        cdbl x = rhoStar + (1.-rhoStar)*a1;
        jac *= (1.-rhoStar);
        // Theta1
        cdbl Theta1 = M_PI * a3;
        jac *= M_PI;
        // collinear contributions
        cdbl jacB = jac;
        // Theta2
        cdbl Theta2 = M_PI * a4;
        jac *= M_PI;
        // transform y with distribution for Event
        cdbl yEmin = -1.+deltay;
        cdbl yEmax = 1.;
        cdbl yE = yEmin + (yEmax - yEmin)*a2;
        cdbl jacE = jac * (yEmax - yEmin);
        const KinematicVars vsE(m2,q2,sp,x,yE,Theta1,Theta2);
        // transform y with distribution for Counterevent
        cdbl yCmin = yEmin;
        cdbl yCmax = -1.+omega;
        cdbl yC = yCmin + (yCmax - yCmin)*a2;
        cdbl jacC = jac * (yCmax - yCmin);
        
        cdbl s5B = q2 + sp*x;
        cdbl beta5B = sqrt(1. - 4.*m2/s5B);
        cdbl t1c = -.5*sp*(1.-beta5B*cos(Theta1));
        cdbl meB = BpQED(m2,q2,x*sp,x*t1c);
        
        cdbl meE = Ap1(m2,q2,sp,vsE.t1,vsE.u1,vsE.tp,vsE.up);
        cdbl meC = Ap1Counter(m2,q2,sp,x,Theta1,Theta2);
        cdbl f = -1./(8.*M_PI*M_PI)*m2/sp * Kqgg*NC*CF * vsE.beta5*sin(Theta1);
        cdbl l = log(sp/m2*sp/(sp+q2)*omega/2.*(1.-x)*(1.-x));
        cdbl vPqg0 = Pgq0(x)/CF;
        cdbl vPgq1 = Pgq1(x)/CF;
        cdbl g = Kqgg*NC*CF * m2/(x*sp)*1./(8.*M_PI) * beta5B*sin(Theta1);
        cdbl r = f * (jacE*meE/(1.+yE) - jacC*meC/(1.+yC)) + g*jacB*meB*(2.*vPgq1 + vPqg0*l);
        if (!isfinite(r)) return 0.;
        return r;
    }
};

/**
 * @brief exclusive phasespace kernel for \f$d_{q}^{(1)}\f$
 */
class PsKerDq1 : public AbstractCoeffPsKer {
    
/**
 * @param Ap2 pointer to ME
 */
    fPtr7dbl Ap2;
    
public:
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 * @param Ap2 pointer to ME
 */
    PsKerDq1(dbl m2, dbl q2, dbl sp, fPtr7dbl Ap2) : AbstractCoeffPsKer(m2,q2,sp), Ap2(Ap2) {};
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @param a4 integration variable
 * @return kernel
 */
    dbl operator() (dbl a1, dbl a2, dbl a3, dbl a4) {
        // transform to x,y,Theta1,Theta2
        // as there are no poles we can just proceed by linear transformations
        dbl jac = 1.;
        cdbl Theta1 = M_PI * a3;
        cdbl Theta2 = M_PI * a4;
        jac *= M_PI * M_PI;
        cdbl x = rhoStar + (1.-rhoStar)*a1;
        jac *= (1.-rhoStar);
        cdbl y = -1. + 2.*a2;
        jac *= 2.;
        const KinematicVars vs(m2,q2,sp,x,y,Theta1,Theta2);
        cdbl me = Ap2(m2,q2,sp,vs.t1,vs.u1,vs.tp,vs.up);
        cdbl f = -1./(8.*M_PI*M_PI)*m2/sp * Kqgg*NC*CF * vs.beta5/(1.+y)*sin(Theta1);
        cdbl r = jac * f * me;
        return r;
    }
};

/**
 * @brief exclusive phasespace kernel for \f$o_{q}^{(1)}\f$
 */
class PsKerOq1 : public AbstractCoeffPsKer {
    
/**
 * @param Ap3 pointer to ME
 */
    fPtr7dbl Ap3;
    
public:
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 * @param Ap3 pointer to ME
 */
    PsKerOq1(dbl m2, dbl q2, dbl sp, fPtr7dbl Ap3) : AbstractCoeffPsKer(m2,q2,sp), Ap3(Ap3) {};
    
/**
 * @brief called function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @param a4 integration variable
 * @return kernel
 */
    dbl operator() (dbl a1, dbl a2, dbl a3, dbl a4) {
        // transform to x,y,Theta1,Theta2
        // as there are no poles we can just proceed by linear transformations
        dbl jac = 1.;
        cdbl Theta1 = M_PI * a3;
        cdbl Theta2 = M_PI * a4;
        jac *= M_PI * M_PI;
        cdbl x = rhoStar + (1.-rhoStar)*a1;
        jac *= (1.-rhoStar);
        cdbl y = -1. + 2.*a2;
        jac *= 2.;
        const KinematicVars vs(m2,q2,sp,x,y,Theta1,Theta2);
        cdbl me = Ap3(m2,q2,sp,vs.t1,vs.u1,vs.tp,vs.up);
        cdbl f = -1./(8.*M_PI*M_PI)*m2/sp * Kqgg*NC*CF * vs.beta5/(1.+y)*sin(Theta1);
        cdbl r = jac * f * me;
        return r;
    }
};


} // namespace Exclusive


#endif // CoeffPsKers_HPP_