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

void Inclusive::IntKer::setZ(cdbl a) {
    cdbl zmin = this->xBj;
    cdbl zmax = this->getZMax();
    this->jac_z = zmax - zmin;
    this->z = zmin + this->jac_z*a;
    this->s = this->Q2/this->z - this->Q2;
}

cdbl Inclusive::IntKer::getHadronicT1(cdbl ey, cdbl mt) const {
    cdbl Sh = this->getHadronicS();
    cdbl Shp = Sh + this->Q2;
    return - Shp/sqrt(Sh) * mt / ey;
}

cdbl Inclusive::IntKer::getHadronicU1(cdbl ey, cdbl mt) const {
    cdbl Sh = this->getHadronicS();
    return -this->Q2 - mt*(Sh*ey - this->Q2/ey)/sqrt(Sh);
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

cdbl Inclusive::IntKer::F() const {
    cdbl xi = this->xBj/this->z;
    cdbl alphaS = this->getAlphaS(this->HAQTransverseMomentum);
    cdbl curMuF2 = this->getScale(this->muF2,this->HAQTransverseMomentum);
    cdbl g = this->pdf->xfxQ2(21,xi,curMuF2) / xi;
    cdbl n = alphaS/this->m2 * (this->Q2)/(4.*M_PI*M_PI);
    dbl meLO = this->cg0();
    // Correct delta function
    if (Mode_dF_dHAQTransverseMomentum == this->mode || Mode_dF_dHAQRapidity == this->mode
        || Mode_dF_dHAQFeynmanX == this->mode || Mode_dF_dHAQFeynmanX == this->mode) {
        cdbl Shp = this->Q2/this->xBj;
        cdbl T1 = this->t1 / xi;
        meLO *= 1./(Shp + T1);
    }
    return n * g * meLO;
}

cdbl Inclusive::IntKer::operator()(cdbl a1, cdbl a2) {
    // set partonic vars by pt&y
    #define setPartonics cdbl Shp = Sh + this->Q2;\
        cdbl T1 = this->getHadronicT1(ey,mt);\
        cdbl U1 = this->getHadronicU1(ey,mt);\
        cdbl xi = - U1/(Shp + T1);\
        this->z = this->xBj/xi;\
        this->s = Shp*xi - this->Q2;\
        this->t1 = xi*T1;
        
    // void mode?
    if (0 == this->mode) return 0.;
    if (Mode_cg0_VV == this->mode || Mode_cg0_VA == this->mode || Mode_cg0_AA == this->mode) {
        this->setT1(a1);
        return this->jac_t1*this->cg0_cur();
    } else if (Mode_F == this->mode) {
        this->setZ(a1);
        this->setT1(a2);
        cdbl Shp = this->Q2/this->xBj;
        cdbl xi = this->xBj/this->z;
        cdbl T1 = this->t1 / xi;
        cdbl U1 = -Shp - T1;
        cdbl mt2 = T1*U1/Shp + this->Q2*T1*T1/Shp/Shp + this->Q2*T1/Shp;
        this->HAQTransverseMomentum = sqrt(mt2 - this->m2);
        return this->jac_z*xi/this->z * this->jac_t1 * this->F();
    } else if (Mode_dF_dHAQTransverseMomentum == this->mode) {
        // setHAQRapidity
        cdbl mt = sqrt(this->m2 + this->HAQTransverseMomentum*this->HAQTransverseMomentum);
        cdbl y0 = acosh(sqrt(this->getHadronicS())/(2.*mt));
        cdbl jac_y = 2.*y0;
        cdbl y = -y0 + jac_y*a1;
        cdbl ey = exp(y);
        
        cdbl Sh = this->getHadronicS();
        setPartonics
        cdbl jac2 = 2.*this->HAQTransverseMomentum;
        return jac_y*Shp*xi * jac2 * this->F();
    } else if (Mode_dF_dHAQRapidity == this->mode) {
        cdbl Sh = this->getHadronicS();
        // setHAQTransverseMomentum
        cdbl ey = exp(this->HAQRapidity);
        cdbl coshy = cosh(this->HAQRapidity);
        cdbl mt2Max = Sh/(4.*coshy*coshy);
        cdbl jac_mt2 = mt2Max - this->m2;
        cdbl mt2 = this->m2 + jac_mt2*a1;
        this->HAQTransverseMomentum = sqrt(mt2 - this->m2);
        cdbl mt = sqrt(mt2);
        
        setPartonics
        return jac_mt2*Shp*xi * this->F();
    } else if (Mode_dF_dHAQFeynmanX == this->mode) {
        cdbl Sh = this->getHadronicS();
        cdbl betah = sqrt(1. - 4.*this->m2/Sh);
        cdbl mt2Max = Sh/4*(1. - betah*betah * this->HAQFeynmanX*this->HAQFeynmanX);
        cdbl jac_mt2 = mt2Max - this->m2;
        cdbl mt2 = this->m2 + jac_mt2*a1;
        this->HAQTransverseMomentum = sqrt(mt2 - this->m2);
        cdbl mt = sqrt(mt2);
        cdbl pLmax = sqrt(Sh)/2. * betah;
        cdbl chi = sqrt(this->HAQFeynmanX*this->HAQFeynmanX + (mt/pLmax)*(mt/pLmax));
        cdbl ey = pLmax/mt*(this->HAQFeynmanX + chi);
        
        setPartonics
        return jac_mt2*Shp*xi/chi * this->F();
    }
    return 0.;
}