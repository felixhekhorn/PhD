#include "FKerAll.h"

#include "KinematicVars.hpp"

using namespace Exclusive;

FKerAll::FKerAll(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay) :
    PdfConvBase(m2, q2, bjorkenX, nlf, xTilde, omega, deltax, deltay){
}
    
void FKerAll::setKers(PdfConvLOg* LOg, PdfConvNLOg* NLOg, PdfConvNLOq* NLOq) {
    this->LOg = LOg;
    this->NLOg = NLOg;
    this->NLOq = NLOq;
}

void FKerAll::setAlphaS(dbl alphaS) {
    this->alphaS = alphaS;
}
    
dbl FKerAll::operator() (cdbl az, cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2) {
    // protect from null pointer
    if (0 == this->LOg || 0 == this->NLOg || 0 == this->NLOq)
        throw invalid_argument("need to set all arguments!");
    this->setZ(az);
    this->setX(ax);
    this->setY(ay);
    this->setTheta1(aTheta1);
    this->setTheta2(aTheta2);
    cdbl eH = getElectricCharge(this->nlf + 1);
    cdbl n = alphaS/m2 * (-q2)/(4.*M_PI*M_PI);
    cdbl nNLO = 4.*M_PI*alphaS;
    cdbl r = n * (eH*eH*(*this->LOg)(az,aTheta1) + nNLO * (eH*eH*(*this->NLOg)(az, ax, ay, aTheta1, aTheta2) + (*this->NLOq)(az, ax, ay, aTheta1, aTheta2)));
    cdbl w = isfinite(r) ? r : 0.;
    this->fillHistograms(w);
    return w;
}

void FKerAll::setHistograms(const histMapT* histMap, size_t* count) {
    this->histMap = histMap;
    this->count = count;
}

void FKerAll::fillHistograms(cdbl w) {
    // smth active?
    if (0 == this->histMap)
        return;
    if (this->histMap->empty())
        return;
    (*count)++;
    KinematicVars vs(this->m2, this->q2, this->sp, this->xE, this->yE, this->Theta1, this->Theta2);
    // log10(z)
    histMapT::const_iterator hLog10z = this->histMap->find(log10z);
    if (hLog10z != this->histMap->cend())
        hLog10z->second->accumulate(this->z,w);
    // log10(x_bj/z)
    histMapT::const_iterator hLog10pdf = this->histMap->find(log10pdf);
    if (hLog10pdf != this->histMap->cend())
        hLog10pdf->second->accumulate(this->bjorkenX/this->z,w);
    // x
    histMapT::const_iterator hx = this->histMap->find(histT::x);
    if (hx != this->histMap->cend())
        hx->second->accumulate(this->xE,w);
    // y
    histMapT::const_iterator hy = this->histMap->find(histT::y);
    if (hy != this->histMap->cend())
        hy->second->accumulate(this->yE,w);
    // Theta1
    histMapT::const_iterator hTheta1 = this->histMap->find(histT::Theta1);
    if (hTheta1 != this->histMap->cend())
        hTheta1->second->accumulate(this->Theta1,w);
    // Theta2
    histMapT::const_iterator hTheta2 = this->histMap->find(histT::Theta2);
    if (hTheta2 != this->histMap->cend())
        hTheta2->second->accumulate(this->Theta2,w);
    // s5
    histMapT::const_iterator hs5 = this->histMap->find(histT::s5);
    if (hs5 != this->histMap->cend())
        hs5->second->accumulate(vs.s5,w);
    // invHQMass
    histMapT::const_iterator hInvHQMass = this->histMap->find(histT::invHQMass);
    if (hInvHQMass != this->histMap->cend())
        hInvHQMass->second->accumulate(sqrt(vs.s5),w);
}
