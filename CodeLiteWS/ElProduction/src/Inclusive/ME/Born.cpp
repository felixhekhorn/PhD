#include "Born.h"

using namespace Color;

cdbl cg0G(cdbl m2, cdbl q2, cdbl sp) {
    cdbl s = sp+q2;
    cdbl beta = sqrt(1. - 4.*m2/s);
    cdbl chi = (1.-beta)/(1.+beta);
    cdbl n = Kggg*NC*CF;
    return m2* n* (-4.)*M_PI*((4.*m2*s + 2.*q2*s + sp*sp)*beta - (8.*m2*m2 - 2.*q2*q2 - 4.*m2*sp - sp*(2.*q2 + sp))*log(chi))/(sp*sp*sp);
}

cdbl cg0L(cdbl m2, cdbl q2, cdbl sp) {
    cdbl s = sp+q2;
    cdbl beta = sqrt(1. - 4.*m2/s);
    cdbl chi = (1.-beta)/(1.+beta);
    cdbl n = Kggg*NC*CF;
    return m2* n* 16.*M_PI*(-q2*s/(sp*sp*sp))*(beta + 2.*m2/s*log(chi));
}

cdbl cg0P(cdbl m2, cdbl q2, cdbl sp) {
    cdbl s = sp+q2;
    cdbl beta = sqrt(1. - 4.*m2/s);
    cdbl chi = (1.-beta)/(1.+beta);
    cdbl n = Kggg*NC*CF;
    return m2* n* 4*M_PI*((4*q2+3*sp)*beta +(2*q2+sp)*log(chi))/(sp*sp);
}