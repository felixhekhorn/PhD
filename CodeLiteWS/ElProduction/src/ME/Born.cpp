#include "Born.h"

using namespace Color;

dbl cg0G(dbl m2, dbl q2, dbl sp) {
    dbl s = sp+q2;
    dbl beta = sqrt(1. - 4.*m2/s);
    dbl chi = (1.-beta)/(1.+beta);
    return m2*M_PI*(-2.* (4.*m2*s + 2.*q2*s + sp*sp)*beta + (8.*m2*m2 - 2.*q2*q2 - 4.*m2*sp - sp*(2.*q2 + sp))*2.*log(chi))/(sp*sp*sp);
}

dbl cg0L(dbl m2, dbl q2, dbl sp) {
    dbl s = sp+q2;
    dbl beta = sqrt(1. - 4.*m2/s);
    dbl chi = (1.-beta)/(1.+beta);
    return m2*16.*M_PI*Kggg*NC*CF*(-q2*s/(sp*sp*sp))*(beta + 2.*m2/s*log(chi));
}

dbl cg0P(dbl m2, dbl q2, dbl sp) {
    dbl s = sp+q2;
    dbl beta = sqrt(1. - 4.*m2/s);
    dbl chi = (1.-beta)/(1.+beta);
    return m2*2*M_PI*((4*q2+3*sp)*beta +(2*q2+sp)*log(chi))/(sp*sp);
}