#include "AbstractIntKer.h"

#include "./ME/BQED.h"

Common::AbstractIntKer::AbstractIntKer() {
    this->aS = new LHAPDF::AlphaS_Analytic();
}

Common::AbstractIntKer::~AbstractIntKer() {
    if (0 != this->pdf)
        delete this->pdf;
    if (0 != this->aS)
        delete this->aS;
}

cdbl Common::AbstractIntKer::BQED(cdbl t1) const {
    typedef cdbl (*fPtr4dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl t1);
    fPtr4dbl fVV = 0;
    fPtr4dbl fAA = 0;
    fPtr4dbl fVA = 0;
    switch(this->proj) {
        case F2:   fVV = &Common::ME::BQED_F2_VV;   fAA = &Common::ME::BQED_F2_AA;   break;
        case FL:   fVV = &Common::ME::BQED_FL_VV;   fAA = &Common::ME::BQED_FL_AA;   break;
        case x2g1: fVV = &Common::ME::BQED_x2g1_VV; fAA = &Common::ME::BQED_x2g1_AA; break;
        case xF3:  fVA = &Common::ME::BQED_xF3_VA;                                   break;
        case g4:   fVA = &Common::ME::BQED_g4_VA;                                    break;
        case gL:   fVA = &Common::ME::BQED_gL_VA;                                    break;
    }
    cdbl etaPhZ = 1./(4. * this->sin2ThetaWeak * (1. - this->sin2ThetaWeak)) * this->Q2 / (this->Q2 + this->MZ2);
    _sp
    cdbl sgn = this->incomingLeptonHasNegativeCharge ? -1. : 1.;
    cdbl lam = this->incomingLeptonHasPositiveHelicity ? 1. : -1.;
    // initial lepton defaults to electron = 11 - allow change?
    cdbl gVl = this->getVectorialCoupling(11);
    cdbl gAl = this->getAxialCoupling(11);
    cdbl gVQ = this->getVectorialCoupling(this->nlf+1);
    cdbl gAQ = this->getAxialCoupling(this->nlf+1);
    dbl r = 0.;
    if (isParityConservingProj(this->proj)) {
        cdbl eVV = fVV(this->m2,-this->Q2,sp,t1);
        if (this->flags.usePhoton) r += eVV;
        if (this->flags.usePhotonZ) r -= (gVl + sgn*lam*gAl) * etaPhZ * gVQ * eVV;
        if (this->flags.useZ) {
            cdbl eAA = fAA(this->m2,-this->Q2,sp,t1);
            cdbl c = (gVl*gVl + gAl*gAl + 2.*sgn*lam*gVl*gAl) * etaPhZ*etaPhZ;
            // if needed: rewrite to reveal new term v2-a2
            // v2 * fvv + a2*faa = (v2+a2)*(fvv + faa)/2 + (v2-a2)*(fvv-faa)/2;
            r += c*(gVQ*gVQ*eVV + gAQ*gAQ*eAA);
        }
    } else {
        cdbl eVA = fVA(this->m2,-this->Q2,sp,t1);
        if (this->flags.usePhotonZ) r -= (gAl + sgn*lam*gVl) * etaPhZ * gAQ * eVA;
        if (this->flags.useZ) r += (2.*gVl*gAl + sgn*lam*(gVl*gVl + gAl*gAl) * etaPhZ*etaPhZ) * 2.*gVQ*gAQ * eVA;
    }
    return r;
}
