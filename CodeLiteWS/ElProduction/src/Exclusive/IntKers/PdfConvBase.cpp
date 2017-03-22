#include "PdfConvBase.h"

using namespace Exclusive;

PdfConvBase::PdfConvBase(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay) :
    m2(m2), q2(q2), bjorkenX(bjorkenX), nlf(nlf), xTilde(xTilde), omega(omega), deltax(deltax), deltay(deltay){
    this->zMax = -q2/(4.*m2 - q2);
    this->jacZ = this->zMax - this->bjorkenX;
    cdbl ymin = -1.+deltay;
    this->jacyE = 1. - ymin;
    this->jacyC = (-1. + omega) - ymin;
}

void PdfConvBase::setZ(dbl a) {
    this->z = this->bjorkenX + this->jacZ*a;
    this->setSpRaw(-q2/z);
}
    
void PdfConvBase::setSpRaw(dbl sp) {
    this->sp = sp;
    cdbl eta = (sp + q2)/(4.*m2) - 1.;
    this->xmax = 1. - this->deltax*pow(eta,2./3.);
    // make hard cut instead of throwing an error
    this->rhoStar = min((4.*m2 - q2)/this->sp,xmax);
    //if (this->rhoStar > xmax)
    //    throw domain_error((boost::format("rho* (%e) has to be smaller than 1-deltax (%e)!")%this->rhoStar%xmax).str());
    this->VxE = xmax - this->rhoStar;
    this->rhoTilde = min(1. - this->xTilde*(1. - this->rhoStar),xmax);
    //if (this->rhoTilde > xmax)
    //    throw domain_error((boost::format("rhoTilde (%e) has to be smaller than 1-deltax (%e)!")%this->rhoTilde%xmax).str());
    this->VxC = xmax - this->rhoTilde;
}

void PdfConvBase::setX(dbl a) {
    //cdbl xmax = 1. - this->deltax;
    /*this->jacxE = 2. * this->VxE * a;
    this->jacxC = 2. * this->VxC * a;
    this->xE = rhoStar  + this->VxE * a*a;
    this->xC = rhoTilde + this->VxC * a*a;*/
    this->jacxE = this->VxE;
    this->jacxC = this->VxC;
    this->xE = rhoStar  + this->VxE * a;
    this->xC = rhoTilde + this->VxC * a;
}

void PdfConvBase::setY(dbl a) {
    cdbl ymin = -1. + this->deltay;
    this->yE = ymin + this->jacyE*a;
    this->yC = ymin + this->jacyC*a;
}

void PdfConvBase::setTheta1(dbl a) {
    this->Theta1 = this->jacTheta1*a;
}

void PdfConvBase::setTheta2(dbl a) {
    this->Theta2 = this->jacTheta2*a;
}
    
void PdfConvBase::setPdf(PdfWrapper* pdf) {
    this->pdf = pdf;
}

void PdfConvBase::setMuF2(dbl muF2) {
    this->muF2 = muF2;
}