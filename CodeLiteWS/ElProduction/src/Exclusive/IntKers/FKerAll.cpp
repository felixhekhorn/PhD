#include "FKerAll.h"

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
    // log10(x_bj/z)
    histMapT::const_iterator hLog10pdf = this->histMap->find(log10pdf);
    if (hLog10pdf != this->histMap->end())
        hLog10pdf->second->accumulate(this->bjorkenX/this->z,w);
}
