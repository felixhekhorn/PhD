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