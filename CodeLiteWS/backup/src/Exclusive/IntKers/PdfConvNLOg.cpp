#include "PdfConvNLOg.h"

#include "KinematicVars.hpp"
#include "../../Color.h"
using namespace Color;
using namespace Exclusive;
    
/**
 * @brief first coefficient of running coupling beta function
 * @return \f$b_0^f\f$
 */
dbl b0(uint nf) { return (11.*CA - 2.*nf)/3.; };


PdfConvNLOg::PdfConvNLOg(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay):
    PdfConvBase(m2, q2, bjorkenX, nlf, xTilde, omega, deltax, deltay),
    BpQED(0),SVp(0),Rp(0),RpxC(0),ROKpyC(0),ROKpyxC(0),PggH0(0),PggH1(0), muR2(-0.){
}

void PdfConvNLOg::setBorn(fPtr4dbl BpQED, fPtr5dbl SVp) {
    this->BpQED = BpQED;
    this->SVp = SVp;
}

void PdfConvNLOg::setRp(fPtr7dbl Rp, fPtr6dbl RpxC, fPtr6dbl ROKpyC, fPtr4dbl ROKpyxC) {
    this->Rp = Rp;
    this->RpxC = RpxC;
    this->ROKpyC = ROKpyC;
    this->ROKpyxC = ROKpyxC;
}
    
void PdfConvNLOg::setPgg(fPtr1dbl PggH0, fPtr1dbl PggH1, fPtr0dbl PggS1) {
    this->PggH0 = PggH0;
    this->PggH1 = PggH1;
    this->PggS1 = PggS1;
}

void PdfConvNLOg::setMuR2(dbl muR2) {
    this->muR2 = muR2;
}

dbl PdfConvNLOg::cg1() const {
    // protect from null pointer
    if (0 == this->BpQED || 0 == this->SVp 
        || 0 == this->Rp || 0 == this->RpxC || 0 == this->ROKpyC || 0 == this->ROKpyxC 
        || 0 == this->PggH0 || 0 == this->PggH1)
            throw invalid_argument("need to set all arguments!");
    dbl r = 0.;
    cdbl s = sp + q2;
    cdbl beta = sqrt(1. - 4.*m2/s);
    
    // S+V contributions
    {
        cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
        cdbl f = Kggg*NC*CF * 1./(4.*sp);
        cdbl betaTilde = sqrt(1. - this->rhoTilde);
        r += jacTheta1 * f * SVp(m2,q2,sp,t1,betaTilde) * beta*sin(Theta1)/(16.*M_PI);
        /** @todo hats?
        // hat contributions
        if (0. != PggS1()) {
            cdbl g = 16. * (4.*M_PI) * 2. * Kggg*NC*CF * 1./(4.*sp);
            //r -= jacTheta1 * g * BpQED(m2,q2,sp,t1) * PggS1() * beta*sin(Theta1)/(16.*M_PI);
        }
         */
    }
    
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
        r += jacxE*jacTheta1 * f*beta5E/xE*meE*(PggH0(xE) *(/*(1-x)/(1-x)*/l + 2.*log(1.-xE)        ) + 2.*PggH1(xE));
        r -= jacxC*jacTheta1 * f*beta     *meC*(2.*CA    *(    1./(1.-xC)*l + 2.*log(1.-xC)/(1.-xC)));
    }
    
    // hard contributions
    {
        cdbl s5E = q2 + xE*sp;
        cdbl beta5E = sqrt(1. - 4.*m2/s5E);
        cdbl t1sc = -sp/2.*(1. - beta*cos(Theta1));
        cdbl f = Kggg*NC*CF * s/(M_PI*pow(sp,3))*sin(Theta1);
        r += jacxE*jacyE*jacTheta1*jacTheta2 * f*beta5E/(1.-yE) * 1./(1.-xE)/(1.+yE) *    Rp     (m2,q2,sp,xE,yE,Theta1,Theta2);
        r -= jacxC*jacyE*jacTheta1*jacTheta2 * f*beta  /(1.-yE) * 1./(1.-xC)/(1.+yE) *    RpxC   (m2,q2,sp,yE,Theta1,Theta2);
        r -= jacxE*jacyC*jacTheta1*jacTheta2 * f*beta5E/2.      * 1./(1.-xE)/(1.+yC) * CA*ROKpyC (m2,q2,sp,xE,Theta1,Theta2);
        r += jacxC*jacyC*jacTheta1*jacTheta2 * f*beta  /2.      * 1./(1.-xC)/(1.+yC) * CA*ROKpyxC(m2,q2,sp,t1sc);
    }
    
    // norm to cg1
    r *= (m2/(4.*M_PI));
    if (!isfinite(r)) return 0.;
    return r;
}

dbl PdfConvNLOg::cgBarR1() const {
    // protect from null pointer
    if (0 == this->BpQED)
        throw invalid_argument("need to set all arguments!");
    cdbl s = sp + q2;
    cdbl beta = sqrt(1. - 4.*m2/s);
    cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
    cdbl f = 2. * Kggg*NC*CF * 1./(4.*sp);
    //printf("%e %e %e %e\t%e\n",m2,q2,sp,t1,BpQED(m2,q2,sp,t1));
    // PggS0 = b0/2 + 4CA ln(betaTilde) for all projections
    dbl r = jacTheta1 * f * b0(nlf) * BpQED(m2,q2,sp,t1) * beta*sin(Theta1);
    // norm to cg1
    r *= (m2/(4.*M_PI));
    if (!isfinite(r)) return 0.;
    return r;
}

dbl PdfConvNLOg::cgBarF1() const {
    // protect from null pointer
    if (0 == this->BpQED || 0 == this->PggH0)
            throw invalid_argument("need to set all arguments!");
    dbl r = 0.;
    cdbl s = sp + q2;
    cdbl beta = sqrt(1. - 4.*m2/s);
    
    // S+V contributions
    {
        cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
        cdbl f = 2. * Kggg*NC*CF * 1./(4.*sp);
        // PggS0 = b0/2 + 4CA ln(betaTilde) for all projections
        r -= jacTheta1 * f * (b0(nlf) + 4.*CA*log(1.-rhoTilde)) * BpQED(m2,q2,sp,t1) * beta*sin(Theta1);
    }
    
    // collinear contributions
    {
        cdbl s5E = q2 + xE*sp;
        cdbl beta5E = sqrt(1. - 4.*m2/s5E);
        cdbl t1c = -.5*sp*(1. - beta5E*cos(Theta1));
        cdbl t1  = -.5*sp*(1. - beta  *cos(Theta1));
        cdbl meE = BpQED(m2,q2,xE*sp,xE*t1c);
        cdbl meC = BpQED(m2,q2,sp,t1);
        cdbl f = Kggg*NC*CF * 1./sp * sin(Theta1);
        cdbl l = -1.;
        // (1-x)P_gg^0 -> 2CA for x->1 for all projections
        r += jacxE*jacTheta1 * f*beta5E/xE*meE*(PggH0(xE) *(/*(1-x)/(1-x)*/l));
        r -= jacxC*jacTheta1 * f*beta     *meC*(2.*CA    *(    1./(1.-xC)*l));
    }
    
    // norm to cg1
    r *= (m2/(4.*M_PI));
    if (!isfinite(r)) return 0.;
    return r;
}

dbl PdfConvNLOg::operator() (cdbl az, cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2) {
    // protect from null pointer
    if (0 == this->pdf)
        throw invalid_argument("need to set all arguments!");
    this->setZ(az);
    this->setX(ax);
    this->setY(ay);
    this->setTheta1(aTheta1);
    this->setTheta2(aTheta2);
    cdbl lnF = log(this->muF2/this->m2);
    cdbl lnR = log(this->muR2/this->m2);
    cdbl r = jacZ * 1./this->z * this->pdf->xfxQ2(21,this->bjorkenX/z,this->muF2) * (cg1() + lnF * cgBarF1() + lnR * cgBarR1());
    // Protect from ps corner cases
    if (!isfinite(r)) return 0.;
    return r;
}