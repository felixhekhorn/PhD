#include "IntKer.h"

#include "../Common/Color.hpp"
#include "../Common/ME/BQED.h"

Inclusive::IntKer::IntKer() : AbstractIntKer() {
};

Inclusive::IntKer::~IntKer() {
};

void Inclusive::IntKer::setT1(cdbl a) {
    _sp
    cdbl beta = this->beta();
    cdbl t1min = -sp/2 * (1. + beta);
    cdbl t1max = -sp/2 * (1. - beta);
    this->jac_t1 = t1max - t1min;
    this->t1 = t1min + this->jac_t1*a;
}

void Inclusive::IntKer::setHAQTransverseMomentum(cdbl a) {
    dbl mt2Max;
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
    dbl y0;
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

cdbl Inclusive::IntKer::cg0_cur() const {
    _sp
    cdbl n = 4.*M_PI*m2/(sp*sp) * Color::Kgph * (cdbl)Color::NC * Color::CF;
    fPtr4dbl fVV = 0;
    fPtr4dbl fVA = 0;
    fPtr4dbl fAA = 0;
    this->getBQED(fVV, fVA, fAA);
    if (Mode_cg0_VV == this->mode) return n * fVV(m2,-Q2,sp,t1);
    if (Mode_cg0_VA == this->mode) return n * fVA(m2,-Q2,sp,t1);
    if (Mode_cg0_AA == this->mode) return n * fAA(m2,-Q2,sp,t1);
    return 0.;
}

cdbl Inclusive::IntKer::cg0() const {
    _sp
    cdbl n = 4.*M_PI*m2/(sp*sp) * Color::Kgph * (cdbl)Color::NC * Color::CF;
    fPtr4dbl fVV = 0;
    fPtr4dbl fVA = 0;
    fPtr4dbl fAA = 0;
    this->getBQED(fVV, fVA, fAA);
    cdbl eH = this->getElectricCharge(this->nlf+1);
    cdbl gVQ = this->getVectorialCoupling(this->nlf+1);
    cdbl gAQ = this->getAxialCoupling(this->nlf+1);
    dbl r = 0.;
    if (isParityConservingProj(this->proj)) {
        cdbl eVV = fVV(this->m2,-this->Q2,sp,t1);
        if (this->flags.usePhoton) r += eH*eH * eVV;
        if (this->flags.usePhotonZ) r -= this->getNormphZ() * eH*gVQ * eVV;
        if (this->flags.useZ) {
            cdbl eAA = fAA(this->m2,-this->Q2,sp,t1);
            cdbl c = this->getNormZ();
            // if needed: rewrite to reveal new term v2-a2
            // v2 * fvv + a2*faa = (v2+a2)*(fvv + faa)/2 + (v2-a2)*(fvv-faa)/2;
            r += c*(gVQ*gVQ*eVV + gAQ*gAQ*eAA);
        }
    } else {
        cdbl eVA = fVA(this->m2,-this->Q2,sp,t1);
        if (this->flags.usePhotonZ) r -= this->getNormphZ() * eH*gAQ * eVA;
        if (this->flags.useZ) r += this->getNormZ() * 2.*gVQ*gAQ * eVA;
    }
    return n * r;
}

cdbl Inclusive::IntKer::Fg0() const {
    cdbl xi = this->xi;
    cdbl alphaS = this->getAlphaS(this->HAQTransverseMomentum);
    cdbl curMuF2 = this->getScale(this->muF2,this->HAQTransverseMomentum);
    cdbl g = this->pdf->xfxQ2(21,xi,curMuF2) / xi;
    cdbl n = alphaS/this->m2 * (this->Q2)/(4.*M_PI*M_PI);
    cdbl Shp = this->getHadronicS() + this->Q2;
    cdbl T1 = this->getHadronicT1();
    cdbl jac_s4 = 1./(Shp + T1);
    cdbl meLO = this->cg0() * jac_s4;
    return n * g * meLO;
}

cdbl Inclusive::IntKer::operator()(cdbl a1, cdbl a2) {      
    // void mode
    if (0 == this->mode) return 0.;
    // partonic mode
    if (Mode_cg0_VV == this->mode || Mode_cg0_VA == this->mode || Mode_cg0_AA == this->mode) {
        this->setT1(a1);
        return this->jac_t1*this->cg0_cur();
    }
    // structure function mode
    dbl jac = 0.;
    if (Mode_F == this->mode) {
        this->HAQRapidity = nan("");
        this->HAQTransverseMomentum = nan("");
        this->setHAQRapidity(a1);
        this->setHAQTransverseMomentum(a2);
        jac = this->V_HAQTransverseMass2*this->V_HAQRapidity;
    } else if (Mode_dF_dHAQTransverseMomentum == this->mode) {
        this->HAQRapidity = nan("");
        this->setHAQRapidity(a1);
        cdbl jac2 = 2. * this->HAQTransverseMomentum;
        jac = this->V_HAQRapidity * jac2;
    } else if (Mode_dF_dHAQRapidity == this->mode) {
        this->HAQTransverseMomentum = nan("");
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
    dbl r = 0.;
    if (this->flags.useLeadingOrder) {
        this->s4 = 0;
        this->setPartonicVars();
        r += jac*Shp*this->xi * this->Fg0();
    }
    return r;
}