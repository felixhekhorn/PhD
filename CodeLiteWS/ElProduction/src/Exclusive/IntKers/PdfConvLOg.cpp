#include "PdfConvLOg.h"

#include "../../Color.h"
using namespace Color;
using namespace Exclusive;

PdfConvLOg::PdfConvLOg(dbl m2, dbl q2, dbl bjorkenX, fPtr4dbl BpQED):
    PdfConvBase(m2, q2, bjorkenX, 0, 0., 0., 0., 0.),
    BpQED(BpQED){
}

dbl PdfConvLOg::cg0() const {
    // protect from null pointer
    if (0 == this->BpQED)
        throw invalid_argument("need to set all arguments!");
    cdbl s = sp + q2;
    cdbl beta = sqrt(1. - 4.*m2/s);
    cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
    cdbl f = 8.*M_PI * Kggg*NC*CF * 1./(4.*sp);
    //printf("%e %e %e %e\t%e\n",m2,q2,sp,t1,BpQED(m2,q2,sp,t1));
    dbl r = jacTheta1 * f * BpQED(m2,q2,sp,t1) * beta*sin(Theta1);
    // norm to cg0
    r *= (m2);
    if (!isfinite(r)) return 0.;
    return r;
}

dbl PdfConvLOg::operator() (cdbl az, cdbl aTheta1) {
    // protect from null pointer
    if (0 == this->pdf)
        throw invalid_argument("need to set all arguments!");
    this->setZ(az);
    this->setTheta1(aTheta1);
    cdbl r = jacZ * 1./this->z * this->pdf->xfxQ2(21,this->bjorkenX/z,this->muF2) * this->cg0();
    // Protect from ps corner cases
    if (!isfinite(r)) return 0.;
    return r;
}