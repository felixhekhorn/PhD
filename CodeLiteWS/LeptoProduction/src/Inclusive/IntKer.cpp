#include "IntKer.h"

#include "../Common/Color.hpp"
#include "../Common/ME/BQED.h"

void Inclusive::IntKer::setT1(cdbl a) {
    _sp
    cdbl beta = this->beta();
    cdbl t1min = -sp/2 * (1. + beta);
    cdbl t1max = -sp/2 * (1. - beta);
    this->jac_t1 = t1max - t1min;
    this->t1 = t1min + this->jac_t1*a;
}

void Inclusive::IntKer::setZ(cdbl a) {
    cdbl zmin = this->xBj;
    cdbl zmax = this->zMax();
    this->jac_z = zmax - zmin;
    this->z = zmin + this->jac_z*a;
    this->s = this->Q2/this->z - this->Q2;
}
    
cdbl Inclusive::IntKer::cg0() const {
    _sp
    cdbl jac = 4.*M_PI*m2/(sp*sp) * Color::Kgph * (cdbl)Color::NC * Color::CF;
    return jac * this->BQED(t1);
}

cdbl Inclusive::IntKer::F() const {
    
}

cdbl Inclusive::IntKer::operator()(cdbl a1, cdbl a2) {
    // void mode?
    if (0 == this->mode) return 0.;
    if (Mode_cg0 == this->mode) {
        this->setT1(a1);
        return this->jac_t1*this->cg0();
    } else if (Mode_F == this->mode) {
        this->setZ(a1);
        this->setT1(a2);
        
    }
    return 0.;
}