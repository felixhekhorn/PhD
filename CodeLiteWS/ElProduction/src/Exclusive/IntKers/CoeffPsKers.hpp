#ifndef CoeffPsKers_HPP_
#define CoeffPsKers_HPP_

#include "../../config.h"
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
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of the photon \f$q^2< 0\f$
 * @param sp current \f$s'\f$
 */
    AbstractCoeffPsKer(dbl m2, dbl q2, dbl sp) : m2(m2), q2(q2), sp(sp) {};
};

/**
 * @brief exclusive phasespace kernel for \f$d_{q}^{(1)}\f$
 */
class PsKerCq1 : public AbstractCoeffPsKer {
    
/**
 * @brief pointer to Born ME
 */
    fPtr4dbl BpQED;
    
/**
 * @brief pointer to pole part of heavy quark charge ME
 */
    fPtr7dbl Ap1;
    
/**
 * @brief pointer to finite part of heavy quark charge ME
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
        cdbl rhoStar = (4.*m2 - q2)/sp;
        cdbl x = rhoStar + (1.-rhoStar)*a1;
        jac *= (1.-rhoStar);
        // Theta1
        cdbl Theta1 = M_PI * a3;
        jac *= M_PI;
        // Born contributions
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
        cdbl rhoStar = (4.*m2 - q2)/sp;
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


} // namespace Exclusive


#endif // CoeffPsKers_HPP_