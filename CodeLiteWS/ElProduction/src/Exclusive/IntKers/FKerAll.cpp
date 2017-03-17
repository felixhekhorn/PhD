#include "FKerAll.h"

#include <rk/geom3.hh>
#include <gsl/gsl_rng.h>

#include "KinematicVars.hpp"

using namespace Exclusive;

FKerAll::FKerAll(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay) :
    PdfConvBase(m2, q2, bjorkenX, nlf, xTilde, omega, deltax, deltay),
    HepSource::Integrand(5,1), vs(m2,q2,4.*m2-q2,0.,0.,0.,0.){
}
    
void FKerAll::setKers(PdfConvLOg* LOg, PdfConvNLOg* NLOg, PdfConvNLOq* NLOq) {
    this->LOg = LOg;
    this->NLOg = NLOg;
    this->NLOq = NLOq;
}

void FKerAll::setAlphaS(LHAPDF::AlphaS* alphaS) {
    this->alphaS = alphaS;
}

void FKerAll::setOrder(uint order) {
    this->order = order;
}

void FKerAll::setMuRF2Factors(DynamicScaleFactors muR2Factors, DynamicScaleFactors muF2Factors) {
    this->muR2Factors = muR2Factors;
    this->muF2Factors = muF2Factors;
}

void FKerAll::setupLOKinematics() {
    this->vs = KinematicVars(this->m2, this->q2, this->sp, 1., -1., this->Theta1, 0.);
    using rk::P4;
    using geom3::UnitVector3;
    
    cdbl sqrts = sqrt(this->sp + this->q2);
    this->k1 = P4(sp/(2.*sqrts) * UnitVector3::zAxis(),0.);
    this->q = P4((sp + 2.*q2)/(2.*sqrts),-k1.momentum());
    UnitVector3 u (Theta1,0.);
    this->p1 = P4(.5*sqrts*vs.beta5*u,sqrt(m2));
    this->p2 = P4(-.5*sqrts*vs.beta5*u,sqrt(m2));
    this->k2 = P4();
    
    this->applyLTsToFinalFrame();
}

void FKerAll::setupNLOKinematics() {
    this->vs = KinematicVars(this->m2, this->q2, this->sp, this->xE, this->yE, this->Theta1, this->Theta2);
    using rk::P4;
    using geom3::UnitVector3;
    
    this->k1 = P4(vs.k10*UnitVector3(0.,vs.sinPsi,vs.cosPsi),0.);
    this->q = P4(vs.q0,vs.absq*UnitVector3::zAxis());
    UnitVector3 u (Theta1,Theta2);
    this->p1 = P4(.5*sqrt(vs.s5)*vs.beta5*u,sqrt(m2));
    this->p2 = P4(-.5*sqrt(vs.s5)*vs.beta5*u,sqrt(m2));
    this->k2 = P4(k1.momentum() + q.momentum(),0.);
    
    this->applyLTsToFinalFrame();
}

void FKerAll::applyLTsToFinalFrame() {
    using rk::P4;
    using rk::Boost;
    using geom3::Vector3;
    using geom3::UnitVector3;
    using geom3::Rotation3;
    { // boost to virtual photon-parton c.m.s.
        P4 ps = q+k1;
        Boost partonCMS = ps.restBoost();
        k1.boost(partonCMS);
        this->p1.boost(partonCMS);
        this->p2.boost(partonCMS);
        k2.boost(partonCMS);
        q = p1+p2+k2-k1; // trick, as space-like vectors can't be boosted
    } { // align k1 to z
        Vector3 k1vec = k1.momentum();
        Rotation3 toZ(k1vec.cross(UnitVector3::zAxis()).direction(),k1vec.angle(UnitVector3::zAxis()));
        q.rotate(toZ);
        k1.rotate(toZ);
        this->p1.rotate(toZ);
        this->p2.rotate(toZ);
        k2.rotate(toZ);
    }{ // randomize around z
        const gsl_rng_type *T;
        gsl_rng *r;
        gsl_rng_env_setup();
        T = gsl_rng_default;
        r = gsl_rng_alloc(T);
        Rotation3 randZ (UnitVector3::zAxis(),2.*M_PI*gsl_rng_uniform(r));
        gsl_rng_free(r);
        q.rotate(randZ);
        k1.rotate(randZ);
        this->p1.rotate(randZ);
        this->p2.rotate(randZ);
        k2.rotate(randZ);
    }{ // boost to virtual photon-hadron c.m.s.
        P4 ph = (z/bjorkenX)*k1;
        P4 pCMS = ph + q;
        Boost hCMS = pCMS.restBoost();
        this->p1.boost(hCMS);
        this->p2.boost(hCMS);
    }
}
    
dbl FKerAll::getDynamicScale(DynamicScaleFactors factors) {
    dbl ptSumHQPair = (this->p1 + this->p2).pt();
    dbl mu2 = factors.cM2 * this->m2 + factors.cQ2 * this->q2 + factors.cSqrPtSumHQPair * ptSumHQPair*ptSumHQPair;
    if (!isfinite(mu2) || mu2 < 0)
        throw domain_error((boost::format("all scales have to be finite and positive! (%e = %e*%e + %e*%e + %e*%e**2)")%mu2%factors.cM2%m2%factors.cQ2%q2%factors.cSqrPtSumHQPair%ptSumHQPair).str());
    return mu2;
}
    
dbl FKerAll::operator() (cdbl az, cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2) {
    // protect from null pointer
    if (0 == this->LOg || 0 == this->NLOg || 0 == this->NLOq)
        throw invalid_argument("need to set all arguments!");
    // set variables
    this->setZ(az);
    this->setX(ax);
    this->setY(ay);
    this->setTheta1(aTheta1);
    this->setTheta2(aTheta2);
//return aTheta1;
    dbl r = 0.;
    cdbl n0 = 1./m2 * (-q2)/(4.*M_PI*M_PI);
    cdbl eH = getElectricCharge(this->nlf + 1);
   
    /** @todo set order local? */
    this->alphaS->setOrderQCD(1 + this->order);
    
    { // LO
        this->setupLOKinematics();
        cdbl muR2 = this->getDynamicScale(this->muR2Factors);
        cdbl muF2 = this->getDynamicScale(this->muF2Factors);
        cdbl aS = this->alphaS->alphasQ2(muR2);
        cdbl nLO = aS*n0;
        this->LOg->setMuF2(muF2);
        cdbl fLO = nLO * eH*eH*(*this->LOg)(az,aTheta1);
        this->fillAllOrderHistograms(fLO);
        r += fLO;
    }
    
    if (this->order > 0) { // NLO
        this->setupNLOKinematics();
        cdbl muR2 = this->getDynamicScale(this->muR2Factors);
        cdbl muF2 = this->getDynamicScale(this->muF2Factors);
        cdbl aS = this->alphaS->alphasQ2(muR2);
        cdbl nNLO = 4.*M_PI*aS*aS*n0;
        this->NLOg->setMuF2(muF2);
        this->NLOg->setMuR2(muR2);
        this->NLOq->setMuF2(muF2);
        cdbl fNLO = nNLO * (eH*eH*(*this->NLOg)(az, ax, ay, aTheta1, aTheta2) + (*this->NLOq)(az, ax, ay, aTheta1, aTheta2));
        this->fillAllOrderHistograms(fNLO);
        this->fillNLOHistograms(fNLO);
        r += fNLO;
    }
    return isfinite(r) ? r : 0.;
}

void FKerAll::operator()(cdbl x[], const int k[], cdbl& weight, cdbl aux[], dbl f[]) {
    this->vegasWeight = &weight;
    cdbl i = this->operator()(x[0],x[1],x[2],x[3],x[4]);
    f[0] = i;
}

void FKerAll::setHistograms(const histMapT* histMap /*, dbl* sumWeights*/) {
    this->histMap = histMap;
//    this->sumWeights = sumWeights;
}

void FKerAll::scaleHistograms(dbl s) {
    for (histMapT::const_iterator it = this->histMap->cbegin(); it != this->histMap->cend(); ++it)
        it->second->scale(s);
//    (*sumWeights) *= s;
}

void FKerAll::fillAllOrderHistograms(cdbl i) {
    // something active?
    if (0 == this->histMap)
        return;
    if (this->histMap->empty())
        return;
//    (*sumWeights) += weight;
    cdbl val = i*(*this->vegasWeight);
    
    { // log10(z)
    histMapT::const_iterator h = this->histMap->find(histT::log10z);
    if (h != this->histMap->cend())
        h->second->accumulate(this->z,val);
    } { // invMassHQPair
    histMapT::const_iterator h = this->histMap->find(histT::invMassHQPair);
    if (h != this->histMap->cend()) {
        cdbl M2 = (this->p1 + this->p2).squared();
        h->second->accumulate(sqrt(M2),val);
    } }
    /** @todo */
    /*{ // log10(xi)
    histMapT::const_iterator h = this->histMap->find(histT::log10xi);
    if (h != this->histMap->cend())
        h->second->accumulate(this->bjorkenX/this->z,val);
    } { // s5
    histMapT::const_iterator h = this->histMap->find(histT::s5);
    if (h != this->histMap->cend())
        h->second->accumulate(vs.s5,val);
    } { // invMassHQPair
    histMapT::const_iterator h = this->histMap->find(histT::invMassHQPair);
    if (h != this->histMap->cend())
        h->second->accumulate(sqrt(vs.s5),val);
    } { // AHQRapidity
    histMapT::const_iterator h = this->histMap->find(histT::AHQRapidity);
    if (h != this->histMap->cend())
        h->second->accumulate(p2.rapidity(),val);
    } { // AHQTransverseMomentum
    histMapT::const_iterator h = this->histMap->find(histT::AHQTransverseMomentum);
    if (h != this->histMap->cend())
        h->second->accumulate(p2.pt(),val);
    } { // DeltaPhiHQPair
    histMapT::const_iterator h = this->histMap->find(histT::DeltaPhiHQPair);
    if (h != this->histMap->cend()) {
        dbl phi1 = p1.momentum().phi();
        dbl phi2 = p2.momentum().phi();
        if (fabs(phi1 - phi2) > M_PI) {
            if (phi1 > phi2) phi1 -= 2.*M_PI;
            else phi2 -= 2.*M_PI;
        }
        h->second->accumulate(phi1-phi2,val);
    } }
     */
}

void FKerAll::fillNLOHistograms(cdbl i) {
    /** @todo */
    /*// something active?
    if (0 == this->histMap)
        return;
    if (this->histMap->empty())
        return;
//    (*sumWeights) += weight;
    cdbl val = i*(*this->vegasWeight);
     { // x
    histMapT::const_iterator hx = this->histMap->find(histT::x);
    if (hx != this->histMap->cend())
        hx->second->accumulate(this->xE,val);
    } { // y
    histMapT::const_iterator hy = this->histMap->find(histT::y);
    if (hy != this->histMap->cend())
        hy->second->accumulate(this->yE,val);
    } { // Theta1
    histMapT::const_iterator h = this->histMap->find(histT::Theta1);
    if (h != this->histMap->cend())
        h->second->accumulate(this->Theta1,val);
    } { // Theta2
    histMapT::const_iterator h = this->histMap->find(histT::Theta2);
    if (h != this->histMap->cend())
        h->second->accumulate(this->Theta2,val);
    }
     */
}
