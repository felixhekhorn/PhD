#include "FKerAll.h"

#include <rk/geom3.hh>
#include <gsl/gsl_rng.h>

#include "KinematicVars.hpp"

using namespace Exclusive;

FKerAll::FKerAll(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay) :
    PdfConvBase(m2, q2, bjorkenX, nlf, xTilde, omega, deltax, deltay),
    HepSource::Integrand(5,1), vs(m2,q2,4.*m2,0.,0.,0.,0.){
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


void FKerAll::setupKinematics() {
    this->vs = KinematicVars(this->m2, this->q2, this->sp, this->xE, this->yE, this->Theta1, this->Theta2);
    // setup relativistic kinematics
    using rk::P4;
    using geom3::Vector3;
    using geom3::UnitVector3;
    using geom3::Rotation3;
    P4 k1(vs.k10*UnitVector3(0,vs.sinPsi,vs.cosPsi),0.);
    P4 q (vs.q0,vs.absq*UnitVector3::zAxis());
    UnitVector3 u (Theta1,Theta2);
    this->p1 = P4(vs.beta5*u,sqrt(m2));
    this->p2 = P4(-vs.beta5*u,sqrt(m2));
    P4 ph = (z/bjorkenX)*k1;
    { // boost to virtual photon-hadron c.m.s.
        using rk::Boost;
        P4 pCMS = ph + q;
        Boost hCMS = pCMS.restBoost();
        p1.boost(hCMS);
        p2.boost(hCMS);
//        k1.boost(hCMS);
//        ph.boost(hCMS);
//        cout << ph << endl;
    } { // align ph to z
        Rotation3 toZ(UnitVector3::xAxis(),ph.momentum().angle(UnitVector3::zAxis()));
        p1.rotate(toZ);
        p2.rotate(toZ);
//        k1.rotate(toZ);
//        ph.rotate(toZ);
//        cout << ph << endl;
    } { // randomize around z
        const gsl_rng_type *T;
        gsl_rng *r;
        gsl_rng_env_setup();
        T = gsl_rng_default;
        r = gsl_rng_alloc(T);
        Rotation3 randZ (UnitVector3::zAxis(),2.*M_PI*gsl_rng_uniform(r));
        gsl_rng_free(r);
        p1.rotate(randZ);
        p2.rotate(randZ);
//        k1.rotate(randZ);
//        ph.rotate(randZ);
//        cout << ph << endl;
    }
    /*{ // reverse psi rotation
        Rotation3 invPsi (UnitVector3::xAxis(),acos(vs.cosPsi));
        q.rotate(invPsi);
        k1.rotate(invPsi);
        p1.rotate(invPsi);
        p2.rotate(invPsi);
    } { // randomize around z
        const gsl_rng_type *T;
        gsl_rng *r;
        gsl_rng_env_setup();
        T = gsl_rng_default;
        r = gsl_rng_alloc(T);
        Rotation3 randZ (UnitVector3::zAxis(),2.*M_PI*gsl_rng_uniform(r));
        gsl_rng_free(r);
        q.rotate(randZ);
        k1.rotate(randZ);
        p1.rotate(randZ);
        p2.rotate(randZ);
    } { // boost to virtual photon-hadron c.m.s.
        using rk::Boost;
        P4 psh = (z/bjorkenX)*k1 + q;
        Boost hCMS = psh.restBoost();
        p1.boost(hCMS);
        p2.boost(hCMS);
    }*/
}
    
dbl FKerAll::getDynamicScale(DynamicScaleFactors factors) {
    dbl ptSumHQPair = (this->p1 + this->p2).pt();
    dbl mu2 = factors.cM2 * this->m2 + factors.cQ2 * this->q2 + factors.cSqrPtSumHQPair * ptSumHQPair*ptSumHQPair;
    if (mu2 < 0.)
        throw domain_error("all scales have to be positive!");
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
    // setup kinematics, scales and norms
    this->setupKinematics();
    dbl muR2 = this->getDynamicScale(this->muR2Factors);
    dbl muF2 = this->getDynamicScale(this->muF2Factors);
    this->alphaS->setOrderQCD(1 + this->order);
    dbl aS = this->alphaS->alphasQ2(muR2);
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl n = aS/m2 * (-q2)/(4.*M_PI*M_PI);
    cdbl nNLO = 4.*M_PI*aS;
    this->LOg->setMuF2(muF2);
    // combine elements
    dbl r = n * eH*eH*(*this->LOg)(az,aTheta1);
    if (this->order > 0) {
        this->NLOg->setMuF2(muF2);
        this->NLOg->setMuR2(muR2);
        this->NLOq->setMuF2(muF2);
        r += n*nNLO * (eH*eH*(*this->NLOg)(az, ax, ay, aTheta1, aTheta2) + (*this->NLOq)(az, ax, ay, aTheta1, aTheta2));
    }
    return isfinite(r) ? r : 0.;
}

void FKerAll::operator()(cdbl x[], const int k[], cdbl& weight, cdbl aux[], dbl f[]) {
    cdbl i = this->operator()(x[0],x[1],x[2],x[3],x[4]);
    f[0] = i;
    this->fillHistograms(i, weight);
}

void FKerAll::setHistograms(const histMapT* histMap /*, size_t* count, dbl* sumWeights*/) {
    this->histMap = histMap;
//    this->count = count;
//    this->sumWeights = sumWeights;
}

void FKerAll::scaleHistograms(dbl s) {
    for (histMapT::const_iterator it = this->histMap->cbegin(); it != this->histMap->cend(); ++it)
        it->second->scale(s);
//    (*sumWeights) *= s;
}

void FKerAll::fillHistograms(cdbl i, cdbl& weight) {
    // something active?
    if (0 == this->histMap)
        return;
    if (this->histMap->empty())
        return;
//    (*count)++;
//    (*sumWeights) += weight;
    cdbl val = i*weight;
    { // log10(z)
    histMapT::const_iterator h = this->histMap->find(histT::log10z);
    if (h != this->histMap->cend())
        h->second->accumulate(this->z,val);
    } { // log10(x_bj/z)
    histMapT::const_iterator h = this->histMap->find(histT::log10pdf);
    if (h != this->histMap->cend())
        h->second->accumulate(this->bjorkenX/this->z,val);
    } { // x
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
}
