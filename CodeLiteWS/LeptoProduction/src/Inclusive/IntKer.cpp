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
    cdbl zmax = this->zMax();
    this->jac_z = zmax - zmin;
    this->z = zmin + this->jac_z*a;
    this->s = this->Q2/this->z - this->Q2;
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
    cdbl Sph = this->Q2/this->xBj;
    cdbl xi = this->xBj/this->z;
    cdbl T1 = this->t1 / xi;
    cdbl U1 = -Sph - T1;
    cdbl mt2 = T1*U1/Sph + this->Q2*T1*T1/Sph/Sph + this->Q2*T1/Sph;
    cdbl HAQTransverseMomentum = mt2 - this->m2;
    
    cdbl alphaS = this->getAlphaS(HAQTransverseMomentum);
    cdbl curMuF2 = this->getScale(this->muF2,HAQTransverseMomentum);
    cdbl g = this->pdf->xfxQ2(21,xi,curMuF2) / this->z;
    cdbl n = alphaS/this->m2 * (this->Q2)/(4.*M_PI*M_PI);
    return n * g * cg0();
}

cdbl Inclusive::IntKer::operator()(cdbl a1, cdbl a2) {
    // void mode?
    if (0 == this->mode) return 0.;
    if (Mode_cg0_VV == this->mode) {
        this->setT1(a1);
        return this->jac_t1*this->cg0_cur();
    } else if (Mode_F == this->mode) {
        this->setZ(a1);
        this->setT1(a2);
        return this->jac_z*this->jac_t1*this->F();
    }
    return 0.;
}