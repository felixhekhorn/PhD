#include "IntKer.h"

#include "../Common/Color.hpp"
#include "../Common/ME/BQED.h"
#include "ME/IntA2.h"
#include "ME/IntA1.h"
#include "ME/IntR.h"
#include "ME/SV.h"

Inclusive::IntKer::IntKer() : AbstractIntKer() {
};

Inclusive::IntKer::~IntKer() {
};

void Inclusive::IntKer::setT1(cdbl a) {
    _sp
    cdbl beta = this->beta();
    cdbl t1min = -sp/2. * (1. + beta);
    cdbl t1max = -sp/2. * (1. - beta);
    this->jac_t1 = t1max - t1min;
    this->t1 = t1min + this->jac_t1*a;
}

void Inclusive::IntKer::setHAQTransverseMomentum(cdbl a) {
    dbl mt2Max = dblNaN;
    if(isfinite(this->HAQRapidity)) {
        cdbl Sh = this->getHadronicS();
        cdbl coshy = cosh(this->HAQRapidity);
        mt2Max = Sh/(4.*coshy*coshy);
    } else {
        cdbl ptmax = this->getHAQTransverseMomentumMax();
        mt2Max = this->m2*this->m2 + ptmax*ptmax;
    }
    this->V_HAQTransverseMass2 = mt2Max - this->m2;
    cdbl mt2 = this->m2 + this->V_HAQTransverseMass2*a;
    this->HAQTransverseMomentum = sqrt(mt2 - this->m2);
}

void Inclusive::IntKer::setHAQRapidity(cdbl a) {
    dbl y0 = dblNaN;
    if (isfinite(this->HAQTransverseMomentum)) {
        cdbl mt = sqrt(this->m2 + this->HAQTransverseMomentum*this->HAQTransverseMomentum);
        y0 = acosh(sqrt(this->getHadronicS())/(2.*mt));
    } else {
        y0 = this->getHAQRapidityMax();
    }
    this->V_HAQRapidity = 2.*y0;
    this->HAQRapidity = -y0 + this->V_HAQRapidity*a;
}

cdbl Inclusive::IntKer::getHadronicT1() const {
    cdbl ey = exp(this->HAQRapidity);
    cdbl mt = sqrt(this->m2 + this->HAQTransverseMomentum*this->HAQTransverseMomentum);
    cdbl Sh = this->getHadronicS();
    cdbl Shp = Sh + this->Q2;
    return - Shp/sqrt(Sh) * mt / ey;
}

cdbl Inclusive::IntKer::getHadronicU1() const {
    cdbl ey = exp(this->HAQRapidity);
    cdbl mt = sqrt(this->m2 + this->HAQTransverseMomentum*this->HAQTransverseMomentum);
    cdbl Sh = this->getHadronicS();
    return -this->Q2 - mt*(Sh*ey - this->Q2/ey)/sqrt(Sh);
}

void Inclusive::IntKer::setPartonicVars() {
    // set partonic vars
    cdbl Shp = this->getHadronicS() + this->Q2;
    cdbl T1 = this->getHadronicT1();
    cdbl U1 = this->getHadronicU1();
    this->xi = (this->s4 - U1)/(Shp + T1);
    this->s = Shp*this->xi - this->Q2;
    this->t1 = this->xi*T1;
}

// combine all available currents with appropriate factors
// NB: needs to be macro, to get fVV only evaluate, when needed
// if needed: rewrite to reveal "new" term v2-a2
// v2 * eVV + a2*eAA = (v2+a2)*(eVV + eAA)/2 + (v2-a2)*(eVV-eAA)/2;
#define combineCurs(gVV,gVA,gAA) \
    cdbl eH = this->getElectricCharge(this->nlf+1);\
    cdbl gVQ = this->getVectorialCoupling(this->nlf+1);\
    cdbl gAQ = this->getAxialCoupling(this->nlf+1);\
    dbl r = 0.;\
    if (isParityConservingProj(this->proj)) {\
        cdbl eVV = {gVV};\
        if (this->flags.usePhoton) r += eH*eH * eVV;\
        if (this->flags.usePhotonZ) r -= this->getNormPhZ() * eH*gVQ * eVV;\
        if (this->flags.useZ) {\
            cdbl eAA = {gAA};\
            r += this->getNormZ()*(gVQ*gVQ*eVV + gAQ*gAQ*eAA);\
        }\
    } else {\
        cdbl eVA = {gVA};\
        if (this->flags.usePhotonZ) r -= this->getNormPhZ() * eH*gAQ * eVA;\
        if (this->flags.useZ) r += this->getNormZ() * 2.*gVQ*gAQ * eVA;\
    }\
    return r;

// implement partonic coefficient as single-current variant and as all-currents-combination
// @param n name
#define implementPartonicCoeff(n)\
cdbl Inclusive::IntKer::n##_cur() const {\
    init_##n\
    if (Mode_##n##_VV == this->mode) { return n##_VV; }\
    if (Mode_##n##_VA == this->mode) { return n##_VA; }\
    if (Mode_##n##_AA == this->mode) { return n##_AA; }\
    return 0.;\
}\
\
cdbl Inclusive::IntKer::n() const {\
    init_##n\
    combineCurs(n##_VV,n##_VA,n##_AA)\
}

// setup cg0
#define init_cg0 _sp\
    cdbl n = 4.*M_PI*m2/(sp*sp) * Color::Kgph * cdbl(Color::NC) * Color::CF;\
    fPtr4dbl fVV = 0;\
    fPtr4dbl fVA = 0;\
    fPtr4dbl fAA = 0;\
    this->getBQED(fVV, fVA, fAA);
#define cg0_VV n * fVV(m2,-Q2,sp,t1)
#define cg0_VA n * fVA(m2,-Q2,sp,t1)
#define cg0_AA n * fAA(m2,-Q2,sp,t1)
implementPartonicCoeff(cg0)

// setup dq1
void Inclusive::IntKer::getIntA2(fPtr5dbl &fVV, fPtr5dbl &fVA) const {
    switch(this->proj) {
        case F2:   fVV = &Inclusive::ME::IntA2_F2_VV;   fVA = 0; break;
        case FL:   fVV = &Inclusive::ME::IntA2_FL_VV;   fVA = 0; break;
        case x2g1: fVV = &Inclusive::ME::IntA2_x2g1_VV; fVA = 0; break;
        case xF3:  fVA = &Inclusive::ME::IntA2_xF3_VA;  fVV = 0; break;
        case g4:   fVA = &Inclusive::ME::IntA2_g4_VA;   fVV = 0; break;
        case gL:   fVA = &Inclusive::ME::IntA2_gL_VA;   fVV = 0; break;
    }
}
#define init_dq1 _sp\
    cdbl n = m2/(4.*M_PI*sp*sp) * Color::Kqph * cdbl(Color::NC) * Color::CF;\
    fPtr5dbl fVV = 0;\
    fPtr5dbl fVA = 0;\
    this->getIntA2(fVV, fVA);
cdbl Inclusive::IntKer::dq1_cur() const {
    init_dq1
    if (Mode_dq1_VV == this->mode) return n * fVV(m2,-Q2,sp,t1,s4);
    // d_q^1 = 0 for g_4 and g_L
    if (Mode_dq1_VA == this->mode) return n * fVA(m2,-Q2,sp,t1,s4);
    // we find d^1_{x2g1_AA,q} = 0 and d^1_{F2_AA,q} = d^1_{F2_VV,q} and d^1_{FL_AA,q} = d^1_{FL_VV,q}
    if (Mode_dq1_AA == this->mode) {
        if (x2g1 == this->proj)
            return 0.;
        return n * fVV(m2,-Q2,sp,t1,s4);
    }
    return 0.;
}

// setup cq1
void Inclusive::IntKer::getIntA1(fPtr5dbl &fVV, fPtr5dbl &fVA, fPtr5dbl &fAA) const { getME(Inclusive::ME::IntA1) }
#define init_cq1 _sp\
    cdbl n = m2/(4.*M_PI*sp*sp) * Color::Kqph * cdbl(Color::NC) * Color::CF;\
    fPtr5dbl fVV = 0;fPtr5dbl fVA = 0;fPtr5dbl fAA = 0;\
    this->getIntA1(fVV, fVA, fAA);
#define cq1_VV n * fVV(m2,-Q2,sp,t1,s4)
#define cq1_VA n * fVA(m2,-Q2,sp,t1,s4)
#define cq1_AA n * fAA(m2,-Q2,sp,t1,s4)
implementPartonicCoeff(cq1)

// setup cqBarF1
#define init_cqBarF1 _sp\
    fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;\
    this->getBQED(fVV, fVA, fAA);\
    cdbl u1 = s4 - sp - t1;\
    cdbl x1 = - u1/(sp + t1);\
    fPtr1dbl Pgq0 = this->getPgq0();\
    cdbl n = m2/(4.*M_PI*sp*sp) * Color::Kqph * cdbl(Color::NC) * Pgq0(x1)/u1;
#define cqBarF1_VV n * fVV(m2,-Q2,x1*sp,x1*t1)
#define cqBarF1_VA n * fVA(m2,-Q2,x1*sp,x1*t1)
#define cqBarF1_AA n * fAA(m2,-Q2,x1*sp,x1*t1)
implementPartonicCoeff(cqBarF1)

// soft helper coefficients
cdbl Inclusive::IntKer::getDeltaCoeffA0() const {
    return 1./(this->s4max - this->Delta);
}
cdbl Inclusive::IntKer::getDeltaCoeffA1() const {
    return log(this->s4max/this->m2)/(this->s4max - this->Delta) - 1./this->s4;
}
cdbl Inclusive::IntKer::getDeltaCoeffA2() const {
    return pow(log(this->s4max/this->m2),2)/(this->s4max - this->Delta) - 2.*log(this->s4/m2)/this->s4;
}

// setup cgBarF1
#define init_cgBarF1 _sp\
    fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;\
    this->getBQED(fVV, fVA, fAA);\
    cdbl u1 = s4 - sp - t1;\
    cdbl x1 = - u1/(sp + t1);\
    fPtr1dbl PggH0 = this->getPggH0();\
    cdbl AP = -2./u1*PggH0(x1)*(-1.);\
    cdbl n = m2/(4.*M_PI*sp*sp) * Color::Kgph * cdbl(Color::NC) * Color::CF;\
    cdbl A0 = this->getDeltaCoeffA0();\
    cdbl A1 = this->getDeltaCoeffA1();\
    cdbl SoftDelta1 = -4.*Color::CA;\
    cdbl u1S = -sp - t1;\
    cdbl SoftDelta0 = 4.*Color::CA * log(-u1S/this->m2) - this->beta0lf();\
    cdbl AS = A0*SoftDelta0 + A1*SoftDelta1;
#define cgBarF1_VV n * (AP*fVV(m2,-Q2,x1*sp,x1*t1) + AS*fVV(m2,-Q2,sp,t1))
#define cgBarF1_VA n * (AP*fVA(m2,-Q2,x1*sp,x1*t1) + AS*fVA(m2,-Q2,sp,t1))
#define cgBarF1_AA n * (AP*fAA(m2,-Q2,x1*sp,x1*t1) + AS*fAA(m2,-Q2,sp,t1))
implementPartonicCoeff(cgBarF1)

// setup cgBarR1
#define init_cgBarR1 _sp\
    cdbl n = 4.*M_PI*m2/(sp*sp) * Color::Kgph * cdbl(Color::NC) * Color::CF;\
    fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;\
    this->getBQED(fVV, fVA, fAA);\
    cdbl b = this->beta0lf()/(16.*M_PI*M_PI);
#define cgBarR1_VV n * b * fVV(m2,-Q2,sp,t1)
#define cgBarR1_VA n * b * fVA(m2,-Q2,sp,t1)
#define cgBarR1_AA n * b * fAA(m2,-Q2,sp,t1)
implementPartonicCoeff(cgBarR1)

// setup cg1
void Inclusive::IntKer::getIntROK(fPtr5dbl &fVV, fPtr5dbl &fVA, fPtr5dbl &fAA) const { getME(Inclusive::ME::IntROK) }
void Inclusive::IntKer::getIntRQED(fPtr5dbl &fVV, fPtr5dbl &fVA, fPtr5dbl &fAA) const { getME(Inclusive::ME::IntRQED) }
void Inclusive::IntKer::getSVOK(fPtr4dbl &fVV, fPtr4dbl &fVA, fPtr4dbl &fAA) const { getME(Inclusive::ME::SVOK) }
void Inclusive::IntKer::getSVQED(fPtr4dbl &fVV, fPtr4dbl &fVA, fPtr4dbl &fAA) const { getME(Inclusive::ME::SVQED) }
#define init_cg1 _sp\
    cdbl n = m2/(4.*M_PI*sp*sp) * Color::Kgph * cdbl(Color::NC) * Color::CF;\
    fPtr5dbl IntROK_VV = 0;fPtr5dbl IntROK_VA = 0;fPtr5dbl IntROK_AA = 0;\
    this->getIntROK(IntROK_VV, IntROK_VA, IntROK_AA);\
    fPtr5dbl IntRQED_VV = 0;fPtr5dbl IntRQED_VA = 0;fPtr5dbl IntRQED_AA = 0;\
    this->getIntRQED(IntRQED_VV, IntRQED_VA, IntRQED_AA);\
    fPtr4dbl SVOK_VV = 0;fPtr4dbl SVOK_VA = 0;fPtr4dbl SVOK_AA = 0;\
    this->getSVOK(SVOK_VV, SVOK_VA, SVOK_AA);\
    fPtr4dbl SVQED_VV = 0;fPtr4dbl SVQED_VA = 0;fPtr4dbl SVQED_AA = 0;\
    this->getSVQED(SVQED_VV, SVQED_VA, SVQED_AA);\
    fPtr4dbl BQED_VV = 0;fPtr4dbl BQED_VA = 0;fPtr4dbl BQED_AA = 0;\
    this->getBQED(BQED_VV, BQED_VA, BQED_AA);\
    cdbl A0 = this->getDeltaCoeffA0();\
    cdbl A1 = this->getDeltaCoeffA1();\
    cdbl A2 = this->getDeltaCoeffA2();\
    cdbl SoftDelta2 = 4.*Color::CA;\
    cdbl beta = this->beta();\
    cdbl chi = (1. - beta)/(1. + beta);\
    cdbl u1S = -sp - t1;\
    /*if(!isfinite(IntRQED_VV(m2,-Q2,sp,t1,s4)))  printf(">%.10e\t%.10e IntRQED_VV\n",t1,s4);\
    if(!isfinite(IntROK_VV(m2,-Q2,sp,t1,s4))) printf(">%.10e\t%.10e IntROK_VV\n",t1,s4);*/\
    cdbl SoftDelta1 = 4.*(Color::CA*(log(-t1/m2)-log(-u1S/m2))-(Color::CA - 2.*Color::CF)*(2.*m2-s)/(s*beta)*log(chi) - 2.*Color::CF);
    
#define cg1_VV n * ((Color::CA*IntROK_VV(m2,-Q2,sp,t1,s4) + 2.*Color::CF*IntRQED_VV(m2,-Q2,sp,t1,s4))\
                    + (A2*SoftDelta2 + A1*SoftDelta1)*BQED_VV(m2,-Q2,sp,t1)\
                    + A0*(Color::CA*SVOK_VV(m2,-Q2,sp,t1) + 2.*Color::CF*SVQED_VV(m2,-Q2,sp,t1))\
                   )
#define cg1_VA n * (Color::CA*IntROK_VA(m2,-Q2,sp,t1,s4) + 2.*Color::CF*IntRQED_VA(m2,-Q2,sp,t1,s4)\
                    + (A2*SoftDelta2 + A1*SoftDelta1)*BQED_VA(m2,-Q2,sp,t1)\
                    + A0*(Color::CA*SVOK_VA(m2,-Q2,sp,t1) + 2.*Color::CF*SVQED_VA(m2,-Q2,sp,t1))\
                   )
#define cg1_AA n * (Color::CA*IntROK_AA(m2,-Q2,sp,t1,s4) + 2.*Color::CF*IntRQED_AA(m2,-Q2,sp,t1,s4)\
                    + (A2*SoftDelta2 + A1*SoftDelta1)*BQED_AA(m2,-Q2,sp,t1)\
                    + A0*(Color::CA*SVOK_AA(m2,-Q2,sp,t1) + 2.*Color::CF*SVQED_AA(m2,-Q2,sp,t1))\
                   )
implementPartonicCoeff(cg1)


cdbl Inclusive::IntKer::Fg0() const {
    cdbl alphaS = this->getAlphaS(this->HAQTransverseMomentum);
    cdbl curMuF2 = this->getScale(this->muF2,this->HAQTransverseMomentum);
    cdbl g = this->pdf->xfxQ2(21,this->xi,curMuF2) / this->xi;
    cdbl nLO = alphaS/this->m2 * (this->Q2)/(4.*M_PI*M_PI);
    return nLO * g * this->cg0();
}

cdbl Inclusive::IntKer::Fg1() const {
    cdbl alphaS = this->getAlphaS(this->HAQTransverseMomentum);
    cdbl curMuF2 = this->getScale(this->muF2,this->HAQTransverseMomentum);
    cdbl curMuR2 = this->getScale(this->muR2,this->HAQTransverseMomentum);
    cdbl g = this->pdf->xfxQ2(21,this->xi,curMuF2) / this->xi;
    cdbl nNLO = alphaS*alphaS/this->m2 * (this->Q2)/(M_PI);
    return nNLO * g * (this->cg1() + log(curMuF2/m2)*this->cgBarF1() + log(curMuR2/m2)*this->cgBarR1());
}

cdbl Inclusive::IntKer::Fq1() const {
    // compute matrix elements for dq1
    // as they are combined with the properties of the light quarks,
    // we have to keep the raw-current elements
    dbl dq1_eVV = 0.;
    dbl dq1_eVA = 0.;
    {
        init_dq1
        if (isParityConservingProj(this->proj)) {
            dq1_eVV = n*fVV(this->m2,-this->Q2,sp,t1,s4);
        } else {
            dq1_eVA = n*fVA(this->m2,-this->Q2,sp,t1,s4);
        }
    }
    // common stuff
    cdbl alphaS = this->getAlphaS(this->HAQTransverseMomentum);
    cdbl curMuF2 = this->getScale(this->muF2,this->HAQTransverseMomentum);
    cdbl nNLO = alphaS*alphaS/this->m2 * (this->Q2)/(M_PI);
    cdbl cq1 = this->cq1() + log(curMuF2/this->m2) * this->cqBarF1();
    dbl fqs = 0.;
    for (uint q = 1; q < this->nlf + 1; ++q) {
        dbl dq1 = 0.;
        { // compute actual dq1
            cdbl eL = getElectricCharge(q);
            cdbl gVq = this->getVectorialCoupling(q);
            cdbl gAq = this->getAxialCoupling(q);
            if (isParityConservingProj(this->proj)) {
                if (this->flags.usePhoton)  dq1 +=                       eL*eL              * dq1_eVV;
                if (this->flags.usePhotonZ) dq1 -= this->getNormPhZ() *  eL*gVq             * dq1_eVV;
                if (this->flags.useZ)       dq1 += this->getNormZ()   * (gVq*gVq + gAq*gAq*(x2g1 == this->proj ? 0. : 1.)) * dq1_eVV;
            } else {
                if (this->flags.usePhotonZ) dq1 -= this->getNormPhZ() *    eL *gAq * dq1_eVA;
                if (this->flags.useZ)       dq1 += this->getNormZ()   * 2.*gVq*gAq * dq1_eVA;
            }        
        }
        // combine cq1+dq1
        fqs += (this->pdf->xfxQ2((int)q,this->xi,curMuF2) + this->pdf->xfxQ2(-((int)q),this->xi,curMuF2))/this->xi*(cq1 + dq1);
    }
    return nNLO*fqs;
}

cdbl Inclusive::IntKer::runPartonic(cdbl a1, cdbl a2) {
    // 1D integrations
    this->setT1(a1);
    // cg0
    if (Mode_cg0_VV == this->mode || Mode_cg0_VA == this->mode || Mode_cg0_AA == this->mode)
        return this->jac_t1*this->cg0_cur();
    // cgBarR1
    if (Mode_cgBarR1_VV == this->mode || Mode_cgBarR1_VA == this->mode || Mode_cgBarR1_AA == this->mode)
        return this->jac_t1*this->cgBarR1_cur();
    // setS4 in NLOq
    _sp
    //cdbl beta = this->beta();
    this->s4max = this->s + this->s*this->t1/sp + sp*this->m2/this->t1; //(this->s*((sp*(1. - beta))/2. + this->t1)*((sp*(1. + beta))/2. + this->t1))/(sp*this->t1);
    if (s4max <= 0.)
        return 0.;
    this->s4 = a2*s4max;
    // dq1
    if (Mode_dq1_VV == this->mode || Mode_dq1_VA == this->mode || Mode_dq1_AA == this->mode)
        return this->jac_t1*this->s4max*this->dq1_cur();
    // cq1
    if (Mode_cq1_VV == this->mode || Mode_cq1_VA == this->mode || Mode_cq1_AA == this->mode)
        return this->jac_t1*this->s4max*this->cq1_cur();
    // cqBarF1
    if (Mode_cqBarF1_VV == this->mode || Mode_cqBarF1_VA == this->mode || Mode_cqBarF1_AA == this->mode)
        return this->jac_t1*this->s4max*this->cqBarF1_cur();
    // setS4 in NLOg
    cdbl V_s4 = s4max - this->Delta;
    if (V_s4 <= 0.)
        return 0.;
    this->s4 = this->Delta + a2*V_s4;
    if(this->s4 <= this->Delta || this->s4 > s4max)
        return 0.;
    // cg1
    if (Mode_cg1_VV == this->mode || Mode_cg1_VA == this->mode || Mode_cg1_AA == this->mode)
        return this->jac_t1*V_s4*this->cg1_cur();
    // cgBarF1
    if (Mode_cgBarF1_VV == this->mode || Mode_cgBarF1_VA == this->mode || Mode_cgBarF1_AA == this->mode)
        return this->jac_t1*V_s4*this->cgBarF1_cur();
    // cgBar1
    if (Mode_cgBar1_VV == this->mode || Mode_cgBar1_VA == this->mode || Mode_cgBar1_AA == this->mode) {
        cuint old = this->mode;
        uint F,R;
        if (Mode_cgBar1_VV == this->mode) { F = this->Mode_cgBarF1_VV; R = this->Mode_cgBarR1_VV; }
        else if (Mode_cgBar1_VA == this->mode) { F = this->Mode_cgBarF1_VA; R = this->Mode_cgBarR1_VA; }
        else if (Mode_cgBar1_AA == this->mode) { F = this->Mode_cgBarF1_AA; R = this->Mode_cgBarR1_AA; }
        dbl r = 0.;
        this->mode = F;
        r += this->jac_t1*V_s4*this->cgBarF1_cur();
        this->mode = R;
        r += this->jac_t1*this->cgBarR1_cur();
        this->mode = old;
        return r;
    }
    return 0.;
}

cdbl Inclusive::IntKer::runHadronic(cdbl a1, cdbl a2, cdbl a3) {
    dbl jac = 0.;
    if (Mode_F == this->mode) {
        this->HAQRapidity = dblNaN;
        this->HAQTransverseMomentum = dblNaN;
        this->setHAQRapidity(a1);
        this->setHAQTransverseMomentum(a2);
        jac = this->V_HAQTransverseMass2*this->V_HAQRapidity;
    } else if (Mode_dF_dHAQTransverseMomentum == this->mode) {
        this->HAQRapidity = dblNaN;
        this->setHAQRapidity(a1);
        cdbl jac2 = 2. * this->HAQTransverseMomentum;
        jac = this->V_HAQRapidity * jac2;
    } else if (Mode_dF_dHAQRapidity == this->mode) {
        this->HAQTransverseMomentum = dblNaN;
        this->setHAQTransverseMomentum(a1);
        jac = this->V_HAQTransverseMass2;
    } else if (Mode_dF_dHAQFeynmanX == this->mode) {
        cdbl Sh = this->getHadronicS();
        cdbl betah = sqrt(1. - 4.*this->m2/Sh);
        cdbl mt2Max = Sh/4.*(1. - betah*betah * this->HAQFeynmanX*this->HAQFeynmanX);
        cdbl jac_mt2 = mt2Max - this->m2;
        cdbl mt2 = this->m2 + jac_mt2*a1;
        this->HAQTransverseMomentum = sqrt(mt2 - this->m2);
        cdbl mt = sqrt(mt2);
        cdbl pLmax = sqrt(Sh)/2. * betah;
        cdbl chi = sqrt(this->HAQFeynmanX*this->HAQFeynmanX + (mt/pLmax)*(mt/pLmax));
        cdbl ey = pLmax/mt*(this->HAQFeynmanX + chi);
        this->HAQRapidity = log(ey);
        jac = jac_mt2/chi;
    }
    cdbl Shp = this->getHadronicS() + this->Q2;
    cdbl T1 = this->getHadronicT1();
    jac *= Shp/(Shp + T1);
    dbl r = 0.;
    // LO
    if (this->flags.useLeadingOrder && this->flags.useGluonicChannel) {
        this->s4 = 0;
        this->setPartonicVars();
        r += jac*this->xi * this->Fg0();
    }
    // NLO
    if (this->flags.useNextToLeadingOrder) {
        // setS4
        cdbl U1 = this->getHadronicU1();
        cdbl s4max = Shp + T1 + U1;
        cdbl as4 = (Mode_F == this->mode) ? a3 : a2;
        if (this->flags.useQuarkChannel) {
            this->s4 = s4max*as4;
            this->setPartonicVars();
            r += jac*this->xi*s4max * this->Fq1();
        }
        if (this->flags.useGluonicChannel) {
            cdbl V_s4 = s4max - this->Delta;
            this->s4 = this->Delta + V_s4*as4;
            this->setPartonicVars();
            r += jac*this->xi*V_s4 * this->Fg1();
        }
    }
    return r;
}

cdbl Inclusive::IntKer::runLeptonic(cdbl a1, cdbl a2, cdbl a3, cdbl a4, cdbl a5) {
    // setYBj
    cdbl yBjMax = 1.;
    cdbl yBjMin = 4.*this->m2 / this->Sl;
    cdbl V_yBj = yBjMax - yBjMin;
    if (V_yBj <= 0.)
        return 0.;
    cdbl yBj = yBjMin + V_yBj*a1;
    cdbl OmYBj = 1. - yBj;
    // set Q2
    dbl curQ2min = this->Q2min;
    if (!isfinite(this->Q2min)) {
        curQ2min = this->q2minHVQDIS * yBj*yBj/OmYBj/OmYBj;
    }
    cdbl Q2max = yBj * this->Sl - 4.*this->m2;
    cdbl V_Q2 = Q2max - curQ2min;
    if (V_Q2 <= 0.)
        return 0.;
    this->Q2 = curQ2min + V_Q2*a2;
    this->xBj = this->Q2/yBj/this->Sl;
    if(this->xBj >= this->getZMax())
        return 0.;
    // normalisation
    cdbl n = 2.*M_PI*this->alphaEM*this->alphaEM/yBj/this->Q2/this->Q2;
    cdbl polN = this->polarizeBeams ? 2. : 1.;
    // collect structure functions
    dbl F2_mg4 = 0.;
    dbl FL_mgL = 0.;
    dbl xF3_x2g1 = 0.;
    this->mode = Mode_F;
    if (this->polarizeBeams) {
        this->proj = x2g1;
        xF3_x2g1 = this->runHadronic(a3,a4,a5);
        this->proj = g4;
        F2_mg4 = -this->runHadronic(a3,a4,a5);
        this->proj = gL;
        FL_mgL = -this->runHadronic(a3,a4,a5);
    } else {
        this->proj = F2;
        F2_mg4 = this->runHadronic(a3,a4,a5);
        this->proj = FL;
        FL_mgL = this->runHadronic(a3,a4,a5);
        this->proj = xF3;
        xF3_x2g1 = this->runHadronic(a3,a4,a5);
    }
    this->mode = Mode_sigma;
    // combine
    cdbl Yp = 1. + OmYBj*OmYBj;
    cdbl Ym = 1. - OmYBj*OmYBj;
    cdbl YmSign = this->incomingLeptonHasNegativeCharge ? 1. : -1. ;
    cdbl sig = n*polN*(Yp*F2_mg4 + YmSign*Ym*xF3_x2g1 - yBj*yBj*FL_mgL);
    return V_yBj*V_Q2*sig;
}

cdbl Inclusive::IntKer::operator()(cdbl a1, cdbl a2, cdbl a3, cdbl a4, cdbl a5) {      
    // void mode
    if (0 == this->mode) return 0.;
    // partonic mode?
    if (this->mode < Mode_F) {
        cdbl r = this->runPartonic(a1, a2);
        //if(!isfinite(r)) printf("<%.10e\t%.10e ()\n",a1,a2);
        return isfinite(r) ? r : 0.;
    }
    // hadronic mode?
    if (this->mode < Mode_sigma) {
        cdbl r = this->runHadronic(a1, a2, a3);
        return isfinite(r) ? r : 0.;
    }
    // leptonic mode = Mode_sigma
    cdbl r = this->runLeptonic(a1, a2, a3, a4, a5);
    return isfinite(r) ? r : 0.;
}

void Inclusive::IntKer::operator()(const double x[], const int k[], const double& weight, const double aux[], double f[]) {
    // proide simple redirect as weight isn't needed
    cdbl a0 = this->dim >= 1 ? x[0] : 0.;
    cdbl a1 = this->dim >= 2 ? x[1] : 0.;
    cdbl a2 = this->dim >= 3 ? x[2] : 0.;
    cdbl a3 = this->dim >= 4 ? x[3] : 0.;
    cdbl a4 = this->dim >= 5 ? x[4] : 0.;
    f[0] = this->operator()(a0,a1,a2,a3,a4);
}