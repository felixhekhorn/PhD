#include "FKerAll.h"

using namespace Exclusive;

FKerAll::FKerAll(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay) :
    PdfConvBase(m2, q2, bjorkenX, nlf, xTilde, omega, deltax, deltay),
    HepSource::Integrand(5,1){
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

void FKerAll::setMuF2(dbl muF2) {
    throw logic_error("use setMuRF2Factors instead!");
}

void FKerAll::setMuRF2Factors(DynamicScaleFactors muR2Factors, DynamicScaleFactors muF2Factors) {
    this->muR2Factors = muR2Factors;
    this->muF2Factors = muF2Factors;
}
    
cdbl FKerAll::operator() (cdbl az, cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2) {
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
   
    this->alphaS->setOrderQCD(1 + this->order);
    
    { // LO
        PhasespacePoint p(this->m2, this->q2, this->bjorkenX, this->muR2Factors, this->muF2Factors);
        p.setupLO(this->z, this->Theta1);
        cdbl aS = this->alphaS->alphasQ2(p.getMuR2());
        this->LOg->setMuF2(p.getMuF2());
        cdbl nLO = aS * 1./m2 * (-q2)/(4.*M_PI*M_PI);
        cdbl eH = getElectricCharge(this->nlf + 1);
        cdbl fLO = nLO * eH*eH*(*this->LOg)(az,aTheta1);
        this->fillAllOrderHistograms(p, fLO);
        r += fLO;
    }
    
    // NLO
    if (this->order > 0) {
        { // gluon channel
            // compute kernels
            this->NLOg->setVars(az,ax,ay,aTheta1,aTheta2);
            PhasespaceValues cg1 = this->NLOg->cg1();
            PhasespaceValues cgBarR1 = this->NLOg->cgBarR1();
            PhasespaceValues cgBarF1 = this->NLOg->cgBarF1();
            // combine all 4 points: Event & soft & collinear & soft+collinear
#ifdef CounterByHeavyside
            r += this->combineNLOg(this->xE, this->yE, cg1.xEyE, cgBarR1.xEyE, cgBarF1.xEyE);
            if (this->xE > this->rhoTilde)
                r += this->combineNLOg(1., this->yE, cg1.xCyE, cgBarR1.xCyE, cgBarF1.xCyE);
            if (this->yE < -1.+omega) {
                r += this->combineNLOg(this->xE, -1., cg1.xEyC, cgBarR1.xEyC, cgBarF1.xEyC);
                if (this->xE > this->rhoTilde)
                    r += this->combineNLOg(1., -1., cg1.xCyC, cgBarR1.xCyC, cgBarF1.xCyC);
            }
#else // CounterByHeavyside
            r += this->combineNLOg(this->xE, this->yE, cg1.xEyE, cgBarR1.xEyE, cgBarF1.xEyE);
            r += this->combineNLOg(1.,       this->yE, cg1.xCyE, cgBarR1.xCyE, cgBarF1.xCyE);
            r += this->combineNLOg(this->xE, -1.,      cg1.xEyC, cgBarR1.xEyC, cgBarF1.xEyC);
            r += this->combineNLOg(1.,       -1.,      cg1.xCyC, cgBarR1.xCyC, cgBarF1.xCyC);
#endif // CounterByHeavyside
        } { // quark channel
            // compute kernels
            this->NLOq->setVars(az,ax,ay,aTheta1,aTheta2);
            PhasespaceValues cq1 = this->NLOq->cq1();
            PhasespaceValues cqBarF1 = this->NLOq->cqBarF1();
            PhasespaceValues dq1 = this->NLOq->dq1();
            PhasespaceValues oq1 = this->NLOq->oq1();
            // combine 2 points: Event & collinear
#ifdef CounterByHeavyside
            r += this->combineNLOq(this->xE, this->yE, cq1.xEyE, cqBarF1.xEyE, dq1.xEyE, oq1.xEyE);
            if (this->yE < -1.+omega) 
                r += this->combineNLOq(this->xE, -1., cq1.xEyC, cqBarF1.xEyC, dq1.xEyC, oq1.xEyC);
#else // CounterByHeavyside
            r += this->combineNLOq(this->xE, this->yE, cq1.xEyE, cqBarF1.xEyE, dq1.xEyE, oq1.xEyE);
            r += this->combineNLOq(this->xE, -1.,      cq1.xEyC, cqBarF1.xEyC, dq1.xEyC, oq1.xEyC);
#endif // CounterByHeavyside
        }
    }
    return isfinite(r) ? r : 0.;
}

#define combineNLOInit PhasespacePoint p(this->m2, this->q2, this->bjorkenX, this->muR2Factors, this->muF2Factors);\
    p.setupNLO(this->z,x,y,this->Theta1,this->Theta2);\
    cdbl muR2 = p.getMuR2();\
    cdbl muF2 = p.getMuF2();\
    cdbl aS = this->alphaS->alphasQ2(muR2);\
    cdbl nNLO = aS*aS * 1./m2 * (-q2)/(M_PI);\
    cdbl eH = getElectricCharge(this->nlf + 1);\

cdbl FKerAll::combineNLOg(cdbl x, cdbl y, cdbl cg1, cdbl cgBarR1, cdbl cgBarF1) {
    combineNLOInit
    // combine
    cdbl nNLOg = this->jacZ * 1./this->z * this->pdf->xfxQ2(21,this->bjorkenX/this->z,muF2);
    cdbl fNLOg = nNLO * eH*eH * nNLOg * (cg1 + log(muR2/this->m2)*cgBarR1 + log(muF2/this->m2)*cgBarF1);
    if (!isfinite(fNLOg) || 0. == fNLOg)
        return 0.;
    // fill histograms
    this->fillAllOrderHistograms(p, fNLOg);
    this->fillNLOHistograms(p, fNLOg);
    return fNLOg;
}

cdbl FKerAll::combineNLOq(cdbl x, cdbl y, cdbl cq1, cdbl cqBarF1, cdbl dq1, cdbl oq1) {
    combineNLOInit
    // combine
    dbl fqs = 0.;
    cdbl xi = this->bjorkenX/z;
    for (uint q = 1; q < this->nlf + 1; ++q) {
        cdbl eL = getElectricCharge(q);
        fqs += (this->pdf->xfxQ2((int)q,xi,muF2) + this->pdf->xfxQ2(-((int)q),xi,muF2))
                * (eH*eH*(cq1 + log(muF2/m2)*cqBarF1) + eL*eL*dq1 + eH*eL*oq1);
    }
    cdbl fNLOq = nNLO * (this->jacZ * 1./this->z) * fqs ;
    if (!isfinite(fNLOq) || 0. == fNLOq)
        return 0.;
    // fill histograms
    this->fillAllOrderHistograms(p, fNLOq);
    this->fillNLOHistograms(p, fNLOq);
    return fNLOq;
}

void FKerAll::operator()(cdbl x[], const int k[], cdbl& weight, cdbl aux[], dbl f[]) {
    this->vegasWeight = &weight;
//    (*sumWeights) += weight;
    cdbl i = this->operator()(x[0],x[1],x[2],x[3],x[4]);
    f[0] = i;
}

void FKerAll::setHistograms(const histMapT* histMap /*, dbl* sumWeights*/) {
    this->histMap = histMap;
//    this->sumWeights = sumWeights;
}

void FKerAll::scaleHistograms(dbl s) const {
    for (histMapT::const_iterator it = this->histMap->cbegin(); it != this->histMap->cend(); ++it)
        it->second->scale(s);
//    (*sumWeights) *= s;
}

void FKerAll::fillAllOrderHistograms(const PhasespacePoint p, cdbl i) const {
    // something active?
    if (0 == this->histMap)
        return;
    if (this->histMap->empty())
        return;
    if (0 == this->vegasWeight)
        return;
    cdbl value = i*(*this->vegasWeight);
    
    for (histMapT::const_iterator it = this->histMap->cbegin(); it != this->histMap->cend(); ++it) {
        dbl var = nan("");
        switch (it->first) {
            case histT::log10z:         var = p.getZ();                 break;
            case histT::log10xi:        var = this->bjorkenX/p.getZ();  break;
            case histT::Theta1:         var = p.getTheta1();            break;
            case histT::invMassHQPair: 
                {cdbl M2 = (p.getP1() + p.getP2()).squared();
                var = sqrt(M2);}
                break;
            case histT::HAQRapidity:    var = p.getP2().rapidity();     break;
            case histT::HAQTransverseMomentum:
                {//printf("%sLO: pt22 = %e =? %e\n",(p.isNLO()?"N":""),p.getP2().pt(),sqrt(p.getPtAQ2()));
                var = p.getP2().pt();
                //var = sqrt(p.getPtAQ2());
                }
                break;
            default: continue;
        }
        it->second->accumulate(var,value);
    }
    /** @todo add more dists */
/*  { // DeltaPhiHQPair
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

void FKerAll::fillNLOHistograms(const PhasespacePoint p, cdbl i) const {
    // something active?
    if (0 == this->histMap)
        return;
    if (this->histMap->empty())
        return;
    if (0 == this->vegasWeight)
        return;
    if (!p.isNLO())
        return;
    cdbl val = i*(*this->vegasWeight);
    for (histMapT::const_iterator it = this->histMap->cbegin(); it != this->histMap->cend(); ++it) {
        dbl var = nan("");
        switch (it->first) {
            case histT::x:      var = p.getX();         break;
            case histT::y:      var = p.getY();         break;
            case histT::Theta2: var = p.getTheta2();    break;
            default: continue;
        }
        it->second->accumulate(var,val);
    }
}
