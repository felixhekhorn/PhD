#include "IntKer.h"

#include "../Common/Color.hpp"
#include "../Common/ME/BQED.h"

#define _sp cdbl sp = this->s + this->Q2;

void Inclusive::IntKer::setT1(cdbl a) {
    _sp
    cdbl beta = this->beta();
    cdbl t1min = -sp/2 * (1. + beta);
    cdbl t1max = -sp/2 * (1. - beta);
    this->jac_t1 = t1max - t1min;
    this->t1 = t1min + a*this->jac_t1;
}
    
cdbl Inclusive::IntKer::cg0() {
    _sp
    cdbl jac = 4.*M_PI*m2/(sp*sp) * Color::Kgph * Color::NC * Color::CF;
    return jac * Common::ME::BQED_FL_VV(m2,-this->Q2,sp,t1);
}

cdbl Inclusive::IntKer::operator()(cdbl a1) {
    // void mode?
    if (0 == this->mode) return 0.;
    if (Mode_cg0 == this->mode) {
        this->setT1(a1);
        return this->jac_t1*this->cg0();
    }
    return 0.;
}