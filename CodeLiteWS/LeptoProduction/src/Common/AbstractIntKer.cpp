#include "AbstractIntKer.h"

#include "./ME/BQED.h"

Common::AbstractIntKer::AbstractIntKer() : muR2(4.,1.,0.,0.), muF2(4.,1.,0.,0.) {
    this->aS = new LHAPDF::AlphaS_Analytic();
}

Common::AbstractIntKer::~AbstractIntKer() {
    if (0 != this->pdf)
        delete this->pdf;
    if (0 != this->aS)
        delete this->aS;
}

cdbl Common::AbstractIntKer::getElectricCharge(const int PDGId) const {
    switch(PDGId) {
        case 1: case -1: // u+ubar
        case 3: case -3: // s+sbar
        case 5: case -5: // b+bbar
            return -1./3.;
        case 2: case -2: // d+dbar
        case 4: case -4: // c+cbar
        case 6: case -6: // t+tbar
            return 2./3.;
        case 21: // Gluon
            return 0.;
        default:
            throw domain_error((boost::format("unkown particle id: %d")%PDGId).str());
    }
}

cdbl Common::AbstractIntKer::getVectorialCoupling(const int PDGId) const {
    switch (PDGId) {
        case 11: case -11:// e+-
            return -.5 + 2.*this->sin2ThetaWeak;
        case 1: case -1: // d+dbar
        case 3: case -3: // s+sbar
        case 5: case -5: // b+bbar
            return -.5 + 2./3.*this->sin2ThetaWeak;
        case 2: case -2: // u+ubar
        case 4: case -4: // c+cbar
        case 6: case -6: // t+tbar
            return .5 - 4./3.*this->sin2ThetaWeak;
        default:
            throw domain_error((boost::format("unkown particle id: %d")%PDGId).str());
    }
}

cdbl Common::AbstractIntKer::getAxialCoupling(const int PDGId) const {
    switch (PDGId) {
        case 11: case -11:// e+-
            return -.5;
        case 1: case -1: // d+dbar
        case 3: case -3: // s+sbar
        case 5: case -5: // b+bbar
            return -.5;
        case 2: case -2: // u+ubar
        case 4: case -4: // c+cbar
        case 6: case -6: // t+tbar
            return .5;
        default:
            throw domain_error((boost::format("unkown particle id: %d")%PDGId).str());
    }
}

cdbl Common::AbstractIntKer::getScale(const DynamicScaleFactors& factors, cdbl HAQTransverseMomentum, cdbl HQPairTransverseMomentum) const {
    cdbl mu2 = factors.cM2 * this->m2 + factors.cQ2 * this->Q2 + factors.cHAQTransverseMomentum * HAQTransverseMomentum*HAQTransverseMomentum;
    if (!isfinite(mu2) || mu2 <= 0.)
        throw domain_error((boost::format("all scales have to be finite and positive! (%e = %e*%e + %e*%e + %e*%e**2)")%mu2%factors.cM2%m2%factors.cQ2%Q2%factors.cHAQTransverseMomentum%HAQTransverseMomentum).str());
    return mu2;
}

cdbl Common::AbstractIntKer::getAlphaS(cdbl HAQTransverseMomentum, cdbl HQPairTransverseMomentum) const {
    cdbl muR2 = this->getScale(this->muR2, HAQTransverseMomentum, HQPairTransverseMomentum);
    this->aS->setOrderQCD(1 + this->flags.useNextToLeadingOrder ? 1 : 0);
    return this->aS->alphasQ2(muR2);
}


void Common::AbstractIntKer::getBQED(fPtr4dbl &fVV, fPtr4dbl &fVA, fPtr4dbl &fAA) const {
    switch(this->proj) {
        case F2:   fVV = &Common::ME::BQED_F2_VV;   fAA = &Common::ME::BQED_F2_AA;   fVA = 0; break;
        case FL:   fVV = &Common::ME::BQED_FL_VV;   fAA = &Common::ME::BQED_FL_AA;   fVA = 0; break;
        case x2g1: fVV = &Common::ME::BQED_x2g1_VV; fAA = &Common::ME::BQED_x2g1_AA; fVA = 0; break;
        case xF3:  fVA = &Common::ME::BQED_xF3_VA; fVV = 0; fAA = 0;                          break;
        case g4:   fVA = &Common::ME::BQED_g4_VA;  fVV = 0; fAA = 0;                          break;
        case gL:   fVA = &Common::ME::BQED_gL_VA;  fVV = 0; fAA = 0;                          break;
    }
}

cdbl Common::AbstractIntKer::getNormphZ() const {
    cdbl etaPhZ = 1./(4. * this->sin2ThetaWeak * (1. - this->sin2ThetaWeak)) * this->Q2 / (this->Q2 + this->MZ2);
    cdbl sgn = this->incomingLeptonHasNegativeCharge ? -1. : 1.;
    cdbl lam = this->incomingLeptonHasPositiveHelicity ? 1. : -1.;
    cdbl gVl = this->getVectorialCoupling(11); // initial lepton defaults to electron = 11 - allow change?
    cdbl gAl = this->getAxialCoupling(11);
    if (isParityConservingProj(this->proj))
        return (gVl + sgn*lam*gAl) * etaPhZ;
    return (gAl + sgn*lam*gVl) * etaPhZ;
}

cdbl Common::AbstractIntKer::getNormZ() const {
    cdbl etaPhZ = 1./(4. * this->sin2ThetaWeak * (1. - this->sin2ThetaWeak)) * this->Q2 / (this->Q2 + this->MZ2);
    cdbl sgn = this->incomingLeptonHasNegativeCharge ? -1. : 1.;
    cdbl lam = this->incomingLeptonHasPositiveHelicity ? 1. : -1.;
    cdbl gVl = this->getVectorialCoupling(11); // initial lepton defaults to electron = 11 - allow change?
    cdbl gAl = this->getAxialCoupling(11);
    if (isParityConservingProj(this->proj))
        return (gVl*gVl + gAl*gAl + 2.*sgn*lam*gVl*gAl) * etaPhZ*etaPhZ;
    return (2.*gVl*gAl + sgn*lam*(gVl*gVl + gAl*gAl)) * etaPhZ*etaPhZ;
}

cdbl Common::AbstractIntKer::BQED(cdbl t1) const {
    fPtr4dbl fVV = 0;
    fPtr4dbl fVA = 0;
    fPtr4dbl fAA = 0;
    this->getBQED(fVV, fVA, fAA);
    cdbl etaPhZ = 1./(4. * this->sin2ThetaWeak * (1. - this->sin2ThetaWeak)) * this->Q2 / (this->Q2 + this->MZ2);
    _sp
    cdbl sgn = this->incomingLeptonHasNegativeCharge ? -1. : 1.;
    cdbl lam = this->incomingLeptonHasPositiveHelicity ? 1. : -1.;
    cdbl gVl = this->getVectorialCoupling(11); // initial lepton defaults to electron = 11 - allow change?
    cdbl gAl = this->getAxialCoupling(11);
    cdbl eH = this->getElectricCharge(this->nlf+1); // note that cg0 is normed on partonic side to eH^2
    cdbl gVQ = this->getVectorialCoupling(this->nlf+1);
    cdbl gAQ = this->getAxialCoupling(this->nlf+1);
    dbl r = 0.;
    if (isParityConservingProj(this->proj)) {
        cdbl eVV = fVV(this->m2,-this->Q2,sp,t1);
        if (this->flags.usePhoton) r += eVV;
        if (this->flags.usePhotonZ) r -= (gVl + sgn*lam*gAl) * etaPhZ * gVQ/eH * eVV;
        if (this->flags.useZ) {
            cdbl eAA = fAA(this->m2,-this->Q2,sp,t1);
            cdbl c = (gVl*gVl + gAl*gAl + 2.*sgn*lam*gVl*gAl) * etaPhZ*etaPhZ;
            // if needed: rewrite to reveal new term v2-a2
            // v2 * fvv + a2*faa = (v2+a2)*(fvv + faa)/2 + (v2-a2)*(fvv-faa)/2;
            r += c*(gVQ*gVQ*eVV + gAQ*gAQ*eAA)/eH/eH;
        }
    } else {
        cdbl eVA = fVA(this->m2,-this->Q2,sp,t1);
        if (this->flags.usePhotonZ) r -= (gAl + sgn*lam*gVl) * etaPhZ * gAQ/eH * eVA;
        if (this->flags.useZ) r += (2.*gVl*gAl + sgn*lam*(gVl*gVl + gAl*gAl)) * etaPhZ*etaPhZ * 2.*gVQ*gAQ/eH/eH * eVA;
    }
    return r;
}
