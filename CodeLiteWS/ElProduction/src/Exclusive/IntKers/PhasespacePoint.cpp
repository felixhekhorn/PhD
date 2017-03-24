#include "PhasespacePoint.h"

#include <rk/geom3.hh>
#include <gsl/gsl_rng.h>

using namespace Exclusive;

PhasespacePoint::PhasespacePoint(cdbl m2, cdbl q2, cdbl bjorkenX, DynamicScaleFactors muR2Factors, DynamicScaleFactors muF2Factors) :
    m2(m2), q2(q2), bjorkenX(bjorkenX), muR2Factors(muR2Factors), muF2Factors(muF2Factors), vs(m2,q2,4.*m2-q2,1.,-1.,0.,0.){
}

void PhasespacePoint::setupLO(cdbl z, cdbl Theta1) {
    this->z = z;
    cdbl sp = -q2/z;
    this->vs = KinematicVars(this->m2, this->q2, sp, 1., -1., Theta1, 0.);
    // with x = 1 is s5 = s and beta5 = beta
    
    // use photon-parton c.m.s.
    using rk::P4;
    using geom3::UnitVector3;
    cdbl sqrts = sqrt(vs.s5);
    this->k1 = P4(sp/(2.*sqrts) * UnitVector3::zAxis(),0.);
    this->q = P4((sp + 2.*q2)/(2.*sqrts),-k1.momentum());
    const UnitVector3 u (Theta1,0.);
    this->p1 = P4(.5*sqrts*vs.beta5*u,sqrt(m2));
    this->p2 = P4(-.5*sqrts*vs.beta5*u,sqrt(m2));
    
    // move to final frame
    this->applyLTsToFinalFrame();
}

void PhasespacePoint::setupNLO(cdbl z, cdbl x, cdbl y, cdbl Theta1, cdbl Theta2) {
    this->z = z;
    this->vs = KinematicVars(this->m2, this->q2, -q2/z, x, y, Theta1, Theta2);
    using rk::P4;
    using geom3::UnitVector3;
    
    this->k1 = P4(vs.k10*UnitVector3(0.,vs.sinPsi,vs.cosPsi),0.);
    this->q = P4(vs.q0,vs.absq*UnitVector3::zAxis());
    const UnitVector3 u (Theta1,Theta2);
    this->p1 = P4(.5*sqrt(vs.s5)*vs.beta5*u,sqrt(m2));
    this->p2 = P4(-.5*sqrt(vs.s5)*vs.beta5*u,sqrt(m2));
    P4 k2 (k1.momentum() + q.momentum(),0.);
    
    { // boost to virtual photon-parton c.m.s.
        using rk::Boost;
        const P4 ps = q+k1;
        const Boost partonCMS = ps.restBoost();
        this->k1.boost(partonCMS);
        this->p1.boost(partonCMS);
        this->p2.boost(partonCMS);
        k2.boost(partonCMS);
        this->q = p1+p2+k2-k1; // trick, as space-like vectors can't be boosted
    } { // align k1 to z
        using geom3::Rotation3;
        using geom3::Vector3;
        Vector3 k1vec = k1.momentum();
        const Rotation3 toZ(k1vec.cross(UnitVector3::zAxis()).direction(),k1vec.angle(UnitVector3::zAxis()));
        this->q.rotate(toZ);
        this->k1.rotate(toZ);
        this->p1.rotate(toZ);
        this->p2.rotate(toZ);
        //k2.rotate(toZ);
    }
    
    // move to final frame
    this->applyLTsToFinalFrame();
}

void PhasespacePoint::applyLTsToFinalFrame() {
    { // randomize around z
        using geom3::Rotation3;
        using geom3::UnitVector3;
        const gsl_rng_type *T;
        gsl_rng *r;
        gsl_rng_env_setup();
        T = gsl_rng_default;
        r = gsl_rng_alloc(T);
        const Rotation3 randZ (UnitVector3::zAxis(),2.*M_PI*gsl_rng_uniform(r));
        gsl_rng_free(r);
        q.rotate(randZ);
        k1.rotate(randZ);
        this->p1.rotate(randZ);
        this->p2.rotate(randZ);
    } { // boost to virtual photon-hadron c.m.s.
        using rk::P4;
        using rk::Boost;
        const P4 ph = (this->z/this->bjorkenX)*k1;
        const P4 pCMS = ph + q;
        const Boost hCMS = pCMS.restBoost();
        this->p1.boost(hCMS);
        this->p2.boost(hCMS);
    }
}

dbl PhasespacePoint::getDynamicScale(DynamicScaleFactors factors) const {
    cdbl ptSumHQPair = (this->p1 + this->p2).pt();
    cdbl ptHAQ = this->p2.pt();
    cdbl mu2 = factors.cM2 * this->m2 +
                factors.cQ2 * this->q2 + 
                factors.cSqrPtSumHQPair * ptSumHQPair*ptSumHQPair +
                factors.cSqrPtHAQ * ptHAQ*ptHAQ;
    if (!isfinite(mu2) || mu2 < 0)
        throw domain_error((boost::format("all scales have to be finite and positive! (%e = %e*%e + %e*%e + %e*%e**2)")%mu2%factors.cM2%m2%factors.cQ2%q2%factors.cSqrPtSumHQPair%ptSumHQPair).str());
    return mu2;
}

dbl PhasespacePoint::getZ() const {
    return this->z;
}

rk::P4 PhasespacePoint::getP1() const {
    return this->p1;
}
    
rk::P4 PhasespacePoint::getP2() const {
    return this->p2;
}

dbl PhasespacePoint::getMuR2() const {
    return this->getDynamicScale(this->muR2Factors);
}
    
dbl PhasespacePoint::getMuF2() const {
    return this->getDynamicScale(this->muF2Factors);
}