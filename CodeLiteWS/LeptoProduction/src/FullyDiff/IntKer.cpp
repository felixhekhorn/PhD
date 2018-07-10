#include "IntKer.h"

#include "../Common/Color.hpp"
#include "../Common/ME/BQED.h"
#include "PhasespaceValues.hpp"
#include "KinematicVars.hpp"

#include "ME/A1.h"
#include "ME/A1Counter.h"
#include "ME/A2.h"

#include "ME/R.h"
#include "ME/RCounterX.h"
#include "ME/RCounterY.h"
#include "ME/RCounterXY.h"
#include "ME/SV.h"

FullyDiff::IntKer::IntKer() : AbstractIntKer() {
};

FullyDiff::IntKer::~IntKer() {
};

void FullyDiff::IntKer::setTheta1(cdbl a) {
    this->Theta1 = this->V_Theta1*a;
}

void FullyDiff::IntKer::setTheta2(cdbl a) {
    this->Theta2 = this->V_Theta2*a;
}

// setup cg0
#define init_cg0 _sp\
    cdbl beta = this->beta();\
    cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));\
    cdbl n = 8.*M_PI * Color::Kgph*Color::NC*Color::CF * 1./(4.*sp) * m2  * beta*sin(Theta1) * this->V_Theta1;\
    fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;\
    this->getBQED(fVV, fVA, fAA);
#define cg0_VV n * fVV(m2,-Q2,sp,t1)
#define cg0_VA n * fVA(m2,-Q2,sp,t1)
#define cg0_AA n * fAA(m2,-Q2,sp,t1)
implementPartonicCoeff(FullyDiff,cg0)

// setup cg1
void FullyDiff::IntKer::getR(fPtr7dbl &fVV, fPtr7dbl &fVA, fPtr7dbl &fAA) const { getME(FullyDiff::ME::R) }
void FullyDiff::IntKer::getRCounterX(fPtr6dbl &fVV, fPtr6dbl &fVA, fPtr6dbl &fAA) const { getME(FullyDiff::ME::RCounterX) }
void FullyDiff::IntKer::getRCounterY(fPtr6dbl &fVV, fPtr6dbl &fVA, fPtr6dbl &fAA) const { getME(FullyDiff::ME::RCounterY) }
void FullyDiff::IntKer::getRCounterXY(fPtr4dbl &fVV, fPtr4dbl &fVA, fPtr4dbl &fAA) const { getME(FullyDiff::ME::RCounterXY) }
void FullyDiff::IntKer::getSV(fPtr5dbl &fVV, fPtr5dbl &fVA, fPtr5dbl &fAA) const { getME(FullyDiff::ME::SV) }
cdbl FullyDiff::IntKer::cg1_cur() const {
    _sp
    // norm to cg1
    cdbl ncg1 = (m2/(4.*M_PI));
    PhasespaceValues r;
    
    cdbl beta = sqrt(1. - 4.*m2/s);
    cdbl t1sc = -.5*sp*(1. - beta*cos(Theta1));
    
    { // S+V contributions
        cdbl f = Color::Kgph*cdbl(Color::NC)*Color::CF * 1./(4.*sp);
        cdbl betaTilde = sqrt(1. - this->rhoTilde);
        cdbl g = ncg1 * V_Theta1 * f * beta*sin(Theta1)/(16.*M_PI);
        /// @todo speed up SV? grid or parametrization? "complicated" part only depends on m2,Q2,s,cos(theta1)
        fPtr5dbl fVV = 0;fPtr5dbl fVA = 0;fPtr5dbl fAA = 0;
        this->getSV(fVV, fVA, fAA);
        dbl meSV = 0;
        if (Mode_cg1_VV == this->mode)      meSV = fVV(m2,-Q2,sp,t1sc,betaTilde);
        else if (Mode_cg1_VA == this->mode) meSV = fVA(m2,-Q2,sp,t1sc,betaTilde);
        else if (Mode_cg1_AA == this->mode) meSV = fAA(m2,-Q2,sp,t1sc,betaTilde);
        r.xCyE += g * meSV;
        /// @todo hat contribution?
        // // hat contributions
        // if (0. != PggS1()) {
        //    cdbl g = 16. * (4.*M_PI) * 2. * Kggg*NC*CF * 1./(4.*sp);
        //    //r -= jacTheta1 * g * BpQED(m2,q2,sp,t1) * PggS1() * beta*sin(Theta1)/(16.*M_PI);
        // }
    }
   
    { // collinear contributions
        cdbl s5E = -Q2 + xE*sp;
        cdbl beta5E = sqrt(1. - 4.*m2/s5E);
        cdbl t1c  = -.5*sp*(1. - beta5E*cos(Theta1));
        cdbl f = Color::Kgph*cdbl(Color::NC)*Color::CF * 1./sp * sin(Theta1);
        cdbl l = log(sp/m2*sp/s*omega/2.);
        fPtr1dbl PggH0 = this->getPggH0();
        fPtr1dbl PggH1 = this->getPggH1();
        
        // (1-x)P_gg^{H,0} -> 2CA for x->1 for all projections
        cdbl gE = ncg1 * V_xE*V_Theta1 * f/xE*beta5E * (PggH0(xE)   *(           l + 2.*log(1.-xE)        ) + 2.*PggH1(xE));
        cdbl gC = ncg1 * V_xC*V_Theta1 * f   *beta   * (2.*Color::CA*(1./(1.-xC)*l + 2.*log(1.-xC)/(1.-xC))               );
        
        fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;
        this->getBQED(fVV, fVA, fAA);
        
        dbl meE = 0;
        if (Mode_cg1_VV == this->mode)      meE = fVV(m2,-Q2,xE*sp,xE*t1c);
        else if (Mode_cg1_VA == this->mode) meE = fVA(m2,-Q2,xE*sp,xE*t1c);
        else if (Mode_cg1_AA == this->mode) meE = fAA(m2,-Q2,xE*sp,xE*t1c);
        
        dbl meC = 0;
        if (Mode_cg1_VV == this->mode)      meC = fVV(m2,-Q2,sp,t1sc);
        else if (Mode_cg1_VA == this->mode) meC = fVA(m2,-Q2,sp,t1sc);
        else if (Mode_cg1_AA == this->mode) meC = fAA(m2,-Q2,sp,t1sc);
        
        r.xEyC += gE*meE;
        r.xCyC -= gC*meC;
    }

    { // hard contributions
        cdbl s5E = -Q2 + xE*sp;
        cdbl beta5E = sqrt(1. - 4.*m2/s5E);
        cdbl f = Color::Kgph*cdbl(Color::NC)*Color::CF * s/(M_PI*pow(sp,3))*sin(Theta1);
        cdbl gEE = ncg1 * V_xE*V_yE*V_Theta1*V_Theta2 * f*beta5E/(1.-yE) * 1./(1.-xE)/(1.+yE);
        cdbl gCE = ncg1 * V_xC*V_yE*V_Theta1*V_Theta2 * f*beta  /(1.-yE) * 1./(1.-xC)/(1.+yE);
        cdbl gEC = ncg1 * V_xE*V_yC*V_Theta1*V_Theta2 * f*beta5E/2.      * 1./(1.-xE)/(1.+yC);
        cdbl gCC = ncg1 * V_xC*V_yC*V_Theta1*V_Theta2 * f*beta  /2.      * 1./(1.-xC)/(1.+yC);
        
        dbl meEE = 0;
        {
            fPtr7dbl fVV = 0;fPtr7dbl fVA = 0;fPtr7dbl fAA = 0;
            this->getR(fVV, fVA, fAA);
            if (Mode_cg1_VV == this->mode)      meEE = fVV(m2,-Q2,sp,xE,yE,Theta1,Theta2);
            else if (Mode_cg1_VA == this->mode) meEE = fVA(m2,-Q2,sp,xE,yE,Theta1,Theta2);
            else if (Mode_cg1_AA == this->mode) meEE = fAA(m2,-Q2,sp,xE,yE,Theta1,Theta2);
        }
        dbl meCE = 0;
        {
            fPtr6dbl fVV = 0;fPtr6dbl fVA = 0;fPtr6dbl fAA = 0;
            this->getRCounterX(fVV, fVA, fAA);
            if (Mode_cg1_VV == this->mode)      meCE = fVV(m2,-Q2,sp,yE,Theta1,Theta2);
            else if (Mode_cg1_VA == this->mode) meCE = fVA(m2,-Q2,sp,yE,Theta1,Theta2);
            else if (Mode_cg1_AA == this->mode) meCE = fAA(m2,-Q2,sp,yE,Theta1,Theta2);
        }
        dbl meEC = 0;
        {
            fPtr6dbl fVV = 0;fPtr6dbl fVA = 0;fPtr6dbl fAA = 0;
            this->getRCounterY(fVV, fVA, fAA);
            if (Mode_cg1_VV == this->mode)      meEC = fVV(m2,-Q2,sp,xE,Theta1,Theta2);
            else if (Mode_cg1_VA == this->mode) meEC = fVA(m2,-Q2,sp,xE,Theta1,Theta2);
            else if (Mode_cg1_AA == this->mode) meEC = fAA(m2,-Q2,sp,xE,Theta1,Theta2);
        }
        dbl meCC = 0;
        {
            fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;
            this->getRCounterXY(fVV, fVA, fAA);
            if (Mode_cg1_VV == this->mode)      meCC = fVV(m2,-Q2,sp,t1sc);
            else if (Mode_cg1_VA == this->mode) meCC = fVA(m2,-Q2,sp,t1sc);
            else if (Mode_cg1_AA == this->mode) meCC = fAA(m2,-Q2,sp,t1sc);
        }
        
        r.xEyE += gEE * meEE;
        r.xCyE -= gCE * meCE;
        r.xEyC -= gEC * meEC;
        r.xCyC += gCC * meCC;
    }
    
    return r.tot();
}

// setup cgBarF1
cdbl FullyDiff::IntKer::cgBarF1_cur() const {
    // collinear contributions
    _sp
    cdbl beta = this->beta();
    // norm to cg1
    cdbl ncg1 = (m2/(4.*M_PI));
    PhasespaceValues r;
    
    cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
    fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;
    this->getBQED(fVV, fVA, fAA);
    dbl meC = 0;
    if (Mode_cgBarF1_VV == this->mode)      meC = fVV(m2,-Q2,sp,t1);
    else if (Mode_cgBarF1_VA == this->mode) meC = fVA(m2,-Q2,sp,t1);
    else if (Mode_cgBarF1_AA == this->mode) meC = fAA(m2,-Q2,sp,t1);
    
    { // S+V contributions
        cdbl f = 2. * Color::Kgph*cdbl(Color::NC)*Color::CF * 1./(4.*sp);
        cdbl b0 = this->beta0lf();
        // PggS0 = b0/2 + 4CA ln(betaTilde) for all projections
        cdbl g = ncg1 * V_Theta1 * f * (b0 + 4.*Color::CA*log(1.-rhoTilde)) * beta*sin(Theta1);
        r.xCyE -= g * meC;
    }

    { // collinear contributions
        cdbl s5E = -Q2 + xE*sp;
        cdbl beta5E = sqrt(1. - 4.*m2/s5E);
        cdbl t1c = -.5*sp*(1. - beta5E*cos(Theta1));
        dbl meE = 0;
        if (Mode_cgBarF1_VV == this->mode)      meE = fVV(m2,-Q2,xE*sp,xE*t1c);
        else if (Mode_cgBarF1_VA == this->mode) meE = fVA(m2,-Q2,xE*sp,xE*t1c);
        else if (Mode_cgBarF1_AA == this->mode) meE = fAA(m2,-Q2,xE*sp,xE*t1c);
        cdbl f = Color::Kgph*cdbl(Color::NC)*Color::CF * 1./sp * sin(Theta1);
        cdbl l = -1.;
        fPtr1dbl PggH0 = this->getPggH0();
        cdbl gE = ncg1 * V_xE*V_Theta1 * f*beta5E/xE*(PggH0(xE)*l);
        cdbl gC = ncg1 * V_xC*V_Theta1 * f*beta     *(2.*Color::CA*(1./(1.-xC)*l));
        // (1-x)P_gg^{H,0} -> 2CA for x->1 for all projections
        r.xEyC += gE*meE;
        r.xCyC -= gC*meC;
    }
    return r.tot();
}

// setup cgBarR1
#define init_cgBarR1 _sp\
    cdbl beta = this->beta();\
    cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));\
    cdbl n = 8.*M_PI * Color::Kgph*cdbl(Color::NC)*Color::CF * 1./(4.*sp) * m2  * beta*sin(Theta1) * this->V_Theta1;\
    fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;\
    this->getBQED(fVV, fVA, fAA);\
    cdbl b = this->beta0lf()/(16.*M_PI*M_PI);
#define cgBarR1_VV n * b * fVV(m2,-Q2,sp,t1)
#define cgBarR1_VA n * b * fVA(m2,-Q2,sp,t1)
#define cgBarR1_AA n * b * fAA(m2,-Q2,sp,t1)
implementPartonicCoeff(FullyDiff,cgBarR1)

// setup cq1
void FullyDiff::IntKer::getA1(fPtr7dbl &fVV, fPtr7dbl &fVA, fPtr7dbl &fAA) const { getME(FullyDiff::ME::A1) }
void FullyDiff::IntKer::getA1Counter(fPtr6dbl &fVV, fPtr6dbl &fVA, fPtr6dbl &fAA) const { getME(FullyDiff::ME::A1Counter) }
cdbl FullyDiff::IntKer::cq1_cur() const {
    _sp
    PhasespaceValues r;
    cdbl ncq1 = m2/(4.*M_PI);
    { // collinear contributions
        cdbl s5B = -Q2 + sp*xE;
        cdbl beta5B = sqrt(1. - 4.*m2/s5B);
        cdbl t1c = -.5*sp*(1.-beta5B*cos(Theta1));
        cdbl jacB = V_xE*V_Theta1;
        cdbl g = ncq1 * Color::Kqph*cdbl(Color::NC) * 1./(xE*sp)*1./(2.) * beta5B*sin(Theta1);
        cdbl l = log(sp/m2*sp/(this->s)*omega/2.*(1.-xE)*(1.-xE));
        fPtr1dbl Pgq0 = this->getPgq0();
        cdbl vPqg0 = Pgq0(xE);
        fPtr1dbl Pgq1 = this->getPgq1();
        cdbl vPgq1 = Pgq1(xE);
        
        fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;
        this->getBQED(fVV, fVA, fAA);
        dbl meB = 0;
        if (Mode_cq1_VV == this->mode) meB = fVV(m2,-Q2,xE*sp,xE*t1c);
        else if (Mode_cq1_VA == this->mode) meB = fVA(m2,-Q2,xE*sp,xE*t1c);
        else if (Mode_cq1_AA == this->mode) meB = fAA(m2,-Q2,xE*sp,xE*t1c);
        r.xEyC += g*jacB*meB*(2.*vPgq1 + vPqg0*l);
    } { // hard contributions
        const KinematicVars vsE(m2,-Q2,sp,xE,yE,Theta1,Theta2);
        cdbl jacE = V_xE*V_yE*V_Theta1*V_Theta2;
        cdbl jacC = V_xE*V_yC*V_Theta1*V_Theta2;
        cdbl f = ncq1 * (-1.)/(4.*M_PI)*1./sp * Color::Kqph*cdbl(Color::NC)*Color::CF * vsE.beta5*sin(Theta1);
        
        fPtr7dbl fVV = 0;fPtr7dbl fVA = 0;fPtr7dbl fAA = 0;
        this->getA1(fVV, fVA, fAA);
        fPtr6dbl gVV = 0;fPtr6dbl gVA = 0;fPtr6dbl gAA = 0;
        this->getA1Counter(gVV, gVA, gAA);
        dbl meE = 0;
        dbl meC = 0;
        if (Mode_cq1_VV == this->mode) { meE = fVV(m2,-Q2,sp,vsE.t1,vsE.u1,vsE.tp,vsE.up); meC = gVV(m2,-Q2,sp,xE,Theta1,Theta2); }
        else if (Mode_cq1_VA == this->mode) { meE = fVA(m2,-Q2,sp,vsE.t1,vsE.u1,vsE.tp,vsE.up); meC = gVA(m2,-Q2,sp,xE,Theta1,Theta2); }
        else if (Mode_cq1_AA == this->mode) { meE = fAA(m2,-Q2,sp,vsE.t1,vsE.u1,vsE.tp,vsE.up); meC = gAA(m2,-Q2,sp,xE,Theta1,Theta2); }
        r.xEyE += f * jacE*meE/(1.+yE);
        r.xEyC -= f * jacC*meC/(1.+yC);
    }
    return r.tot();
}

// setup cqBarF1
cdbl FullyDiff::IntKer::cqBarF1_cur() const {
    // collinear contributions
    _sp
    PhasespaceValues r;
    cdbl s5B = -Q2 + sp*xE;
    cdbl beta5B = sqrt(1. - 4.*m2/s5B);
    cdbl t1c = -.5*sp*(1. - beta5B*cos(Theta1));
    cdbl jacB = V_xE*V_Theta1;
    cdbl g = Color::Kqph*cdbl(Color::NC) * m2/(xE*sp)*1./(8.*M_PI) * beta5B*sin(Theta1);
    cdbl l = -1.;
    fPtr1dbl Pgq0 = this->getPgq0();
    cdbl vPqg0 = Pgq0(xE);
    
    fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;
    this->getBQED(fVV, fVA, fAA);
    dbl meB = 0.;
    if (Mode_cqBarF1_VV == this->mode) meB = fVV(m2,-Q2,xE*sp,xE*t1c);
    else if (Mode_cqBarF1_VA == this->mode) meB = fVA(m2,-Q2,xE*sp,xE*t1c);
    else if (Mode_cqBarF1_AA == this->mode) meB = fAA(m2,-Q2,xE*sp,xE*t1c);
    r.xEyC += jacB * g*meB*vPqg0*l;
    return r.tot();
}

// setup dq1
void FullyDiff::IntKer::getA2(fPtr7dbl &fVV, fPtr7dbl &fVA, fPtr7dbl &fAA) const { getME(FullyDiff::ME::A2) }
cdbl FullyDiff::IntKer::dq1_cur() const {
    _sp
    PhasespaceValues r;
    cdbl jac = V_Theta1*V_Theta2*V_xE*V_yE;
    const KinematicVars vs(m2,-Q2,sp,xE,yE,Theta1,Theta2);
    cdbl f = -1./(16.*M_PI*M_PI)*m2/sp * Color::Kqph*Color::NC*Color::CF * vs.beta5/(1.+yE)*sin(Theta1);
    
    fPtr7dbl fVV = 0;fPtr7dbl fVA = 0;fPtr7dbl fAA = 0;
    this->getA2(fVV, fVA, fAA);
    dbl meA2 = 0.;
    if(Mode_dq1_VV == this->mode) meA2 = fVV(m2,-Q2,sp,vs.t1,vs.u1,vs.tp,vs.up);
    else if(Mode_dq1_VA == this->mode) meA2 = fVA(m2,-Q2,sp,vs.t1,vs.u1,vs.tp,vs.up);
    else if(Mode_dq1_AA == this->mode) meA2 = fAA(m2,-Q2,sp,vs.t1,vs.u1,vs.tp,vs.up);
    r.xEyE += jac * f * meA2;
    return r.tot();
}

cdbl FullyDiff::IntKer::runPartonic(cdbl a1, cdbl a2,cdbl a3, cdbl a4) {
    // 1D integrations
    this->setTheta1(a1);
    // cg0
    if (Mode_cg0_VV == this->mode || Mode_cg0_VA == this->mode || Mode_cg0_AA == this->mode)
        return this->cg0_cur();
    // cgBarR1
    if (Mode_cgBarR1_VV == this->mode || Mode_cgBarR1_VA == this->mode || Mode_cgBarR1_AA == this->mode)
        return this->cgBarR1_cur();
    // 2D integrations
    { // setSpRaw
        _sp
        cdbl eta = this->s/(4.*m2) - 1.;
        cdbl cut = this->deltax*pow(eta,2./3.);
        cdbl xmax = 1. - cut;
        // reached numeric limit?
        if (0. != this->deltax && 1. == xmax)
            throw domain_error((boost::format("x_max = 1-deltax*eta^(2/3) = 1. - %e = %e has to be smaller than 1!")%cut%xmax).str());
        // make hard cut instead of throwing an error
        this->rhoStar = min((4.*m2 + this->Q2)/sp,xmax);
        this->V_xE = xmax - this->rhoStar;
        this->rhoTilde = min(1. - this->xTilde*(1. - this->rhoStar),xmax);
        this->V_xC = xmax - this->rhoTilde;
    } { // setX
        this->xE = this->rhoStar  + this->V_xE * a2;
        this->xC = this->rhoTilde + this->V_xC * a2;
    }
    // cgBarF1
    if (Mode_cgBarF1_VV == this->mode || Mode_cgBarF1_VA == this->mode || Mode_cgBarF1_AA == this->mode)
        return this->cgBarF1_cur();
    // cgBar1
    if (Mode_cgBar1_VV == this->mode || Mode_cgBar1_VA == this->mode || Mode_cgBar1_AA == this->mode) {
        cuint old = this->mode;
        uint F,R;
        if (Mode_cgBar1_VV == this->mode) { F = this->Mode_cgBarF1_VV; R = this->Mode_cgBarR1_VV; }
        else if (Mode_cgBar1_VA == this->mode) { F = this->Mode_cgBarF1_VA; R = this->Mode_cgBarR1_VA; }
        else if (Mode_cgBar1_AA == this->mode) { F = this->Mode_cgBarF1_AA; R = this->Mode_cgBarR1_AA; }
        dbl r = 0.;
        this->mode = F;
        r += this->cgBarF1_cur();
        this->mode = R;
        r += this->cgBarR1_cur();
        this->mode = old;
        return r;
    }
    // cqBarF1
    if (Mode_cqBarF1_VV == this->mode || Mode_cqBarF1_VA == this->mode || Mode_cqBarF1_AA == this->mode)
        return this->cqBarF1_cur();
    // 4D integrations
    this->setTheta2(a3);
    { // setY
        cdbl ymin = -1.+this->deltay;
        this->V_yE = 1. - ymin;
        this->V_yC = (-1. + this->omega) - ymin;
        this->yE = ymin + this->V_yE*a4;
        this->yC = ymin + this->V_yC*a4;
    }
    // cg1
    if (Mode_cg1_VV == this->mode || Mode_cg1_VA == this->mode || Mode_cg1_AA == this->mode)
        return this->cg1_cur();
    // cq1
    if (Mode_cq1_VV == this->mode || Mode_cq1_VA == this->mode || Mode_cq1_AA == this->mode)
        return this->cq1_cur();
    // dq1
    if (Mode_dq1_VV == this->mode || Mode_dq1_VA == this->mode || Mode_dq1_AA == this->mode)
        return this->dq1_cur();
    
    return 0.;
}

cdbl FullyDiff::IntKer::operator()(cdbl a1, cdbl a2, cdbl a3, cdbl a4, cdbl a5) {      
    // void mode
    if (0 == this->mode) return 0.;
    // partonic mode?
    if (this->mode < Mode_F) {
        cdbl r = this->runPartonic(a1,a2,a3,a4);
        //if(!isfinite(r)) printf("<%.10e\t%.10e ()\n",a1,a2);
        return isfinite(r) ? r : 0.;
    }
    return 0.;
}

void FullyDiff::IntKer::operator()(const double x[], const int k[], const double& weight, const double aux[], double f[]) {
    cdbl a0 = this->dim >= 1 ? x[0] : 0.;
    cdbl a1 = this->dim >= 2 ? x[1] : 0.;
    cdbl a2 = this->dim >= 3 ? x[2] : 0.;
    cdbl a3 = this->dim >= 4 ? x[3] : 0.;
    cdbl a4 = this->dim >= 5 ? x[4] : 0.;
    f[0] = this->operator()(a0,a1,a2,a3,a4);
}