#include "IntKer.h"

#include "../Common/Color.hpp"
#include "../Common/ME/BQED.h"


FullyDiff::IntKer::IntKer() : AbstractIntKer() {
};

FullyDiff::IntKer::~IntKer() {
};

void FullyDiff::IntKer::setTheta1(cdbl a) {
    this->Theta1 = this->jac_Theta1*a;
}

// setup cg0
#define init_cg0 _sp\
    cdbl beta = this->beta();\
    cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));\
    cdbl n = 8.*M_PI * Color::Kgph*Color::NC*Color::CF * 1./(4.*sp) * m2  * beta*sin(Theta1);\
    fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;\
    this->getBQED(fVV, fVA, fAA);
#define cg0_VV n * fVV(m2,-Q2,sp,t1)
#define cg0_VA n * fVA(m2,-Q2,sp,t1)
#define cg0_AA n * fAA(m2,-Q2,sp,t1)
implementPartonicCoeff(FullyDiff,cg0)

// setup cgBarR1
#define init_cgBarR1 _sp\
    cdbl beta = this->beta();\
    cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));\
    cdbl n = 8.*M_PI * Color::Kgph*Color::NC*Color::CF * 1./(4.*sp) * m2  * beta*sin(Theta1);\
    fPtr4dbl fVV = 0;fPtr4dbl fVA = 0;fPtr4dbl fAA = 0;\
    this->getBQED(fVV, fVA, fAA);\
    cdbl b = this->beta0lf()/(16.*M_PI*M_PI);
#define cgBarR1_VV n * b * fVV(m2,-Q2,sp,t1)
#define cgBarR1_VA n * b * fVA(m2,-Q2,sp,t1)
#define cgBarR1_AA n * b * fAA(m2,-Q2,sp,t1)
implementPartonicCoeff(FullyDiff,cgBarR1)

cdbl FullyDiff::IntKer::runPartonic(cdbl a1, cdbl a2) {
    // 1D integrations
    this->setTheta1(a1);
    // cg0
    if (Mode_cg0_VV == this->mode || Mode_cg0_VA == this->mode || Mode_cg0_AA == this->mode)
        return this->jac_Theta1*this->cg0_cur();
    // cgBarR1
    if (Mode_cgBarR1_VV == this->mode || Mode_cgBarR1_VA == this->mode || Mode_cgBarR1_AA == this->mode)
        return this->jac_Theta1*this->cgBarR1_cur();
    return 0.;
}

cdbl FullyDiff::IntKer::operator()(cdbl a1, cdbl a2, cdbl a3, cdbl a4, cdbl a5) {      
    // void mode
    if (0 == this->mode) return 0.;
    // partonic mode?
    if (this->mode < Mode_F)
        return this->runPartonic(a1,a2);
    return 0.;
}

void FullyDiff::IntKer::operator()(const double x[], const int k[], const double& weight, const double aux[], double f[]) {
    /*cdbl a0 = this->dim >= 1 ? x[0] : 0.;
    cdbl a1 = this->dim >= 2 ? x[1] : 0.;
    cdbl a2 = this->dim >= 3 ? x[2] : 0.;
    cdbl a3 = this->dim >= 4 ? x[3] : 0.;
    cdbl a4 = this->dim >= 5 ? x[4] : 0.;*/
    f[0] = 0.;
}