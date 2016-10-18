#include "SV.h"

#include <gsl/gsl_sf_dilog.h>
#define ln(z) log(z)
#define Li2(z) gsl_sf_dilog(z)
#define zeta2 1.64493406684823 // pi^2/6

dbl SVOKG(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);
dbl betaq = sqrt(1.-4*m2/q2);
dbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = -(32*Power(m2,3)*q2 + Power(q2 - t1,3)*(2*q2 - t1 - 2*u1) + 8*Power(m2,2)*(2*Power(q2,2) + 3*q2*t1 - Power(t1,2) - q2*u1) - 2*m2*(7*Power(q2,3) + 2*Power(t1,3) - Power(q2,2)*(11*t1 + 5*u1) + q2*t1*(2*t1 + 7*u1)))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1);
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = -(32*Power(m2,3)*q2 + Power(q2 - u1,3)*(2*q2 - 2*t1 - u1) + 8*Power(m2,2)*(2*Power(q2,2) - q2*t1 + 3*q2*u1 - Power(u1,2)) - 2*m2*(7*Power(q2,3) + 2*Power(u1,3) + q2*u1*(7*t1 + 2*u1) - Power(q2,2)*(5*t1 + 11*u1)))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (2*Power(m2,2)*Power(t1 + u1,2) + Power(t1,3)*(-2*q2 + t1 + 2*u1) + 2*m2*t1*(Power(t1,2) - q2*u1 + 3*t1*u1))/(2.*Power(t1,3)*u1);
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (2*Power(m2,2)*Power(t1 + u1,2) + Power(u1,3)*(-2*q2 + 2*t1 + u1) + 2*m2*u1*(-(q2*t1) + u1*(3*t1 + u1)))/(2.*t1*Power(u1,3));
r += c3*v3;
dbl v4 = Li2(1 - t1/(chi*u1)) + Power(ln((chi*u1)/t1),2)/2.;
dbl c4 = (-4*Power(m2,2)*Power(t1 + u1,2) + t1*u1*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)) - 2*m2*(2*t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c4*v4;
dbl v5 = Li2(1 - u1/(chi*t1));
dbl c5 = (4*Power(m2,2)*Power(t1 + u1,2) - t1*u1*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)) + 2*m2*(2*t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c5*v5;
dbl v6 = Li2(-chi) + ln(chi)*ln(1 + chi);
dbl c6 = (32*Power(m2,3)*Power(t1 + u1,2) + 8*Power(m2,2)*(2*Power(t1,3) + 11*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-4*q2 + 11*u1)) - t1*u1*(-8*Power(q2,3) + 5*Power(t1,3) + 9*Power(t1,2)*u1 + 9*t1*Power(u1,2) + 5*Power(u1,3) + 18*Power(q2,2)*(t1 + u1) - 3*q2*(5*Power(t1,2) + 8*t1*u1 + 5*Power(u1,2))) + 2*m2*(-4*Power(q2,2)*Power(t1 + u1,2) + t1*u1*(3*Power(t1,2) + 10*t1*u1 + 3*Power(u1,2)) + q2*(4*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 4*Power(u1,3))))/(beta*Power(t1,2)*Power(u1,2)*(-q2 + t1 + u1));
r += c6*v6;
dbl v7 = Li2(chi) + ln(1 - chi)*ln(chi);
dbl c7 = (4*(8*Power(m2,3)*Power(t1 + u1,2) + 4*Power(m2,2)*(Power(t1,3) + 5*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 5*u1)) - t1*u1*(-2*Power(q2,3) + Power(t1,3) + Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3) + 4*Power(q2,2)*(t1 + u1) - q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))) + 2*m2*(-(Power(q2,2)*Power(t1 + u1,2)) + t1*u1*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + q2*(Power(t1,3) + Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3)))))/(beta*Power(t1,2)*Power(u1,2)*(-q2 + t1 + u1));
r += c7*v7;
dbl v8 = Li2(-(chi/chiq)) + Li2(-(chi*chiq)) + ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq);
dbl c8 = (-16*Power(m2,3)*Power(t1 + u1,2) - 8*Power(m2,2)*(Power(t1,3) + 6*Power(t1,2)*u1 - 2*t1*(q2 - 3*u1)*u1 + Power(u1,3)) - 2*m2*(t1 + u1)*(-2*Power(q2,2)*(t1 + u1) + t1*u1*(t1 + u1) + q2*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2))) + t1*u1*(-4*Power(q2,3) + 3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3) + 10*Power(q2,2)*(t1 + u1) - q2*(9*Power(t1,2) + 16*t1*u1 + 9*Power(u1,2))))/(beta*Power(t1,2)*Power(u1,2)*(-q2 + t1 + u1));
r += c8*v8;
dbl v9 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c9 = -(-8*Power(m2,2) + 2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 4*m2*(t1 + u1) - 2*q2*(t1 + u1))/(2.*t1*u1);
r += c9*v9;
dbl v10 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c10 = (8*Power(m2,2)*(Power(t1,2) + t1*u1 + Power(u1,2)) - t1*u1*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)) + 4*m2*(t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c10*v10;
dbl v11 = ln(chi)*ln(-(t1/m2));
dbl c11 = (16*Power(m2,3)*(t1 + u1) + 8*Power(m2,2)*(-(q2*t1) + 3*Power(t1,2) + 3*t1*u1 + Power(u1,2)) - t1*(-2*Power(q2,3) + 2*Power(t1,3) + 4*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3) + Power(q2,2)*(6*t1 + 4*u1) - q2*(6*Power(t1,2) + 8*t1*u1 + 3*Power(u1,2))) + m2*(-4*Power(q2,2)*(t1 + u1) + 2*t1*u1*(t1 + u1) + q2*(6*Power(t1,2) + 4*t1*u1 + 4*Power(u1,2))))/(beta*Power(t1,2)*u1*(-q2 + t1 + u1));
r += c11*v11;
dbl v12 = ln(-(t1/m2));
dbl c12 = ((q2 - t1)*Power(t1,4)*u1 - 4*Power(m2,3)*q2*Power(t1 + u1,2) - m2*t1*(Power(t1,4) + Power(q2,3)*u1 - Power(t1,2)*Power(u1,2) - Power(q2,2)*u1*(3*t1 + u1) + q2*t1*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))) + Power(m2,2)*(Power(t1,2)*Power(t1 + u1,2) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) - 2*q2*t1*(Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/((-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*(m2 + t1)*u1);
r += c12*v12;
dbl v13 = ln(chi)*ln(-(u1/m2));
dbl c13 = (16*Power(m2,3)*(t1 + u1) + 8*Power(m2,2)*(Power(t1,2) + 3*t1*u1 + u1*(-q2 + 3*u1)) + m2*(-4*Power(q2,2)*(t1 + u1) + 2*t1*u1*(t1 + u1) + q2*(4*Power(t1,2) + 4*t1*u1 + 6*Power(u1,2))) - u1*(-2*Power(q2,3) + Power(t1,3) + 3*Power(t1,2)*u1 + 4*t1*Power(u1,2) + 2*Power(u1,3) + Power(q2,2)*(4*t1 + 6*u1) - q2*(3*Power(t1,2) + 8*t1*u1 + 6*Power(u1,2))))/(beta*t1*Power(u1,2)*(-q2 + t1 + u1));
r += c13*v13;
dbl v14 = ln(-(u1/m2));
dbl c14 = (t1*(q2 - u1)*Power(u1,4) - 4*Power(m2,3)*q2*Power(t1 + u1,2) - m2*u1*(Power(q2,3)*t1 - Power(t1,2)*Power(u1,2) + Power(u1,4) - Power(q2,2)*t1*(t1 + 3*u1) + q2*u1*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2))) + Power(m2,2)*(Power(u1,2)*Power(t1 + u1,2) - 2*q2*u1*(3*Power(t1,2) + 4*t1*u1 + Power(u1,2)) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2))))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2)*(m2 + u1));
r += c14*v14;
dbl v15 = Power(ln(chi),2);
dbl c15 = (-32*Power(m2,3)*Power(t1 + u1,4) + t1*(q2 - t1 - u1)*u1*Power(t1 + u1,2)*(4*(-2 + 3*beta)*Power(q2,2) + (-3 + 7*beta)*Power(t1,2) + 4*(1 + beta)*t1*u1 + (-3 + 7*beta)*Power(u1,2) - 2*(-3 + 7*beta)*q2*(t1 + u1)) + 8*Power(m2,2)*Power(t1 + u1,2)*(2*(-1 + beta)*Power(t1,3) - 2*Power(u1,2)*(beta*q2 + u1 - beta*u1) + t1*u1*((4 - 5*beta)*q2 + (-9 + 7*beta)*u1) + Power(t1,2)*(-2*beta*q2 + (-9 + 7*beta)*u1)) - 2*m2*(-(t1*u1*Power(t1 + u1,2)*((-5 + 8*beta)*Power(t1,2) + 2*(-11 + 8*beta)*t1*u1 + (-5 + 8*beta)*Power(u1,2))) + 4*Power(q2,2)*((-1 + beta)*Power(t1,4) + 2*(-2 + beta)*Power(t1,3)*u1 + 3*(-2 + beta)*Power(t1,2)*Power(u1,2) + 2*(-2 + beta)*t1*Power(u1,3) + (-1 + beta)*Power(u1,4)) - q2*(t1 + u1)*(4*(-1 + beta)*Power(t1,4) - 5*Power(t1,3)*u1 - 2*(1 + 2*beta)*Power(t1,2)*Power(u1,2) - 5*t1*Power(u1,3) + 4*(-1 + beta)*Power(u1,4))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c15*v15;
dbl v16 = ln(chi);
dbl c16 = (-2*beta*(4*Power(m2,2)*q2*Power(t1 + u1,2) + t1*u1*Power(-q2 + t1 + u1,2)*(q2 + t1 + u1) + m2*(q2*Power(t1 + u1,3) + Power(t1 + u1,4) - Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)))))/(t1*u1*Power(t1 + u1,2)*(4*m2 - q2 + t1 + u1));
r += c16*v16;
dbl v17 = Power(ln(chiq),2);
dbl c17 = (32*Power(m2,3)*Power(t1 + u1,4) - t1*(q2 - t1 - u1)*u1*Power(t1 + u1,2)*(8*(-1 + beta)*Power(q2,2) + (-6 + 5*beta)*Power(t1,2) + 4*(-2 + beta)*t1*u1 + (-6 + 5*beta)*Power(u1,2) - 2*(-6 + 5*beta)*q2*(t1 + u1)) - 8*Power(m2,2)*Power(t1 + u1,2)*(2*(-1 + beta)*Power(t1,3) - 2*Power(u1,2)*(beta*q2 + u1 - beta*u1) + t1*u1*((4 - 3*beta)*q2 + (-12 + 5*beta)*u1) + Power(t1,2)*(-2*beta*q2 + (-12 + 5*beta)*u1)) + 4*m2*(q2 - t1 - u1)*((-1 + 2*beta)*t1*u1*Power(t1 + u1,3) + 2*q2*((-1 + beta)*Power(t1,4) + 2*(-2 + beta)*Power(t1,3)*u1 + 3*(-2 + beta)*Power(t1,2)*Power(u1,2) + 2*(-2 + beta)*t1*Power(u1,3) + (-1 + beta)*Power(u1,4))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c17*v17;
dbl v18 = ln(chiq);
dbl c18 = (betaq*q2*(-32*Power(m2,3)*Power(q2,2)*Power(t1 + u1,2) + (q2 - t1)*t1*(q2 - u1)*u1*(2*Power(q2,3) - 2*Power(q2,2)*(t1 + u1) + Power(t1 + u1,3) - 2*q2*(Power(t1,2) + t1*u1 + Power(u1,2))) + 16*Power(m2,2)*q2*(-(t1*u1*Power(t1 + u1,2)) - q2*Power(t1 + u1,3) + Power(q2,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2))) + m2*(-4*Power(q2,2)*t1*Power(t1 - u1,2)*u1 - 8*q2*t1*u1*Power(t1 + u1,3) + 2*t1*u1*Power(t1 + u1,2)*(Power(t1,2) + t1*u1 + Power(u1,2)) - 2*Power(q2,4)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) + 4*Power(q2,3)*(Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + Power(u1,3)))))/((-4*m2*q2 + Power(q2 - t1,2))*t1*(4*m2*q2 - Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c18*v18;
dbl v19 = zeta2;
dbl c19 = (32*Power(m2,3)*t1*u1*Power(t1 + u1,4) - Power(t1,2)*(q2 - t1 - u1)*Power(u1,2)*Power(t1 + u1,2)*(8*(-1 + beta)*Power(q2,2) + (-3 + 6*beta)*Power(t1,2) + 3*(-1 + 2*beta)*Power(u1,2) - 6*(-1 + 2*beta)*q2*(t1 + u1) + 4*t1*(u1 + 2*beta*u1)) - 2*Power(m2,2)*Power(t1 + u1,2)*(beta*Power(t1,5) + beta*Power(u1,4)*(-q2 + u1) + 2*Power(t1,2)*Power(u1,2)*((8 - 3*beta)*q2 + 2*(-9 + 4*beta)*u1) + 2*Power(t1,3)*u1*(-5*beta*q2 + 2*(-9 + 4*beta)*u1) + t1*Power(u1,3)*(-10*beta*q2 + (-8 + 11*beta)*u1) + Power(t1,4)*(-(beta*q2) + (-8 + 11*beta)*u1)) + 2*m2*t1*u1*(t1*u1*Power(t1 + u1,2)*(5*Power(t1,2) + 22*t1*u1 + 5*Power(u1,2)) + Power(q2,2)*((-4 + 3*beta)*Power(t1,4) + 2*(-8 + 3*beta)*Power(t1,3)*u1 + 6*(-4 + 3*beta)*Power(t1,2)*Power(u1,2) + 2*(-8 + 3*beta)*t1*Power(u1,3) + (-4 + 3*beta)*Power(u1,4)) - q2*(t1 + u1)*((-4 + 3*beta)*Power(t1,4) + (-5 + 6*beta)*Power(t1,3)*u1 + 2*(-1 + 9*beta)*Power(t1,2)*Power(u1,2) + (-5 + 6*beta)*t1*Power(u1,3) + (-4 + 3*beta)*Power(u1,4))))/(2.*beta*Power(t1,3)*Power(u1,3)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c19*v19;
dbl v20 = 1;
dbl c20 = -(((Power(t1,2) + Power(u1,2))*(-(q2*t1*u1) + m2*Power(t1 + u1,2)))/(Power(t1,2)*Power(u1,2)*(t1 + u1)));
r += c20*v20;

return r;
}

dbl SVQEDG(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);
dbl betaq = sqrt(1.-4*m2/q2);
dbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = -(256*Power(m2,5)*Power(q2,2)*(t1 + u1) + Power(q2 - t1,5)*t1*(2*Power(q2,2) + 2*Power(t1,2) + 2*t1*u1 + Power(u1,2) - 2*q2*(2*t1 + u1)) - 64*Power(m2,4)*q2*(-8*q2*t1*(t1 + u1) + Power(t1,2)*(t1 + u1) + 2*Power(q2,2)*(2*t1 + u1)) + 16*Power(m2,3)*q2*(Power(q2,3)*(t1 - 3*u1) - 2*Power(q2,2)*t1*(9*t1 + 4*u1) + 2*q2*t1*(14*Power(t1,2) + 10*t1*u1 - Power(u1,2)) - Power(t1,2)*(9*Power(t1,2) + 8*t1*u1 + Power(u1,2))) + 2*Power(m2,2)*(4*Power(q2,5)*(7*t1 + 4*u1) - 8*Power(q2,4)*t1*(8*t1 + 7*u1) + 2*Power(q2,2)*Power(t1,2)*(31*Power(t1,2) + 10*t1*u1 - 13*Power(u1,2)) + Power(t1,4)*(3*Power(t1,2) - 2*t1*u1 - Power(u1,2)) - 3*q2*Power(t1,3)*(13*Power(t1,2) + 8*t1*u1 + 3*Power(u1,2)) + 2*Power(q2,3)*t1*(5*Power(t1,2) + 25*t1*u1 + 8*Power(u1,2))) - 2*m2*(q2 - t1)*(Power(t1,5)*(t1 - u1) + 2*Power(q2,5)*(5*t1 + u1) - Power(q2,4)*t1*(39*t1 + 16*u1) + q2*Power(t1,3)*(5*Power(t1,2) + 8*t1*u1 + 4*Power(u1,2)) + Power(q2,3)*t1*(55*Power(t1,2) + 36*t1*u1 + 5*Power(u1,2)) - Power(q2,2)*Power(t1,2)*(32*Power(t1,2) + 29*t1*u1 + 12*Power(u1,2))))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),3)*Power(t1,2)*u1);
r += c0*v0;
dbl v1 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) + Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) + Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) + Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)));
dbl c1 = (-256*Power(m2,5)*Power(q2,2)*(t1 + u1) - Power(q2 - u1,5)*u1*(2*Power(q2,2) + Power(t1,2) + 2*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1)) + 64*Power(m2,4)*q2*(-8*q2*u1*(t1 + u1) + Power(u1,2)*(t1 + u1) + 2*Power(q2,2)*(t1 + 2*u1)) + 16*Power(m2,3)*q2*(Power(q2,3)*(3*t1 - u1) + 2*Power(q2,2)*u1*(4*t1 + 9*u1) + 2*q2*u1*(Power(t1,2) - 10*t1*u1 - 14*Power(u1,2)) + Power(u1,2)*(Power(t1,2) + 8*t1*u1 + 9*Power(u1,2))) + 2*m2*(q2 - u1)*(Power(u1,5)*(-t1 + u1) + 2*Power(q2,5)*(t1 + 5*u1) - Power(q2,4)*u1*(16*t1 + 39*u1) + q2*Power(u1,3)*(4*Power(t1,2) + 8*t1*u1 + 5*Power(u1,2)) - Power(q2,2)*Power(u1,2)*(12*Power(t1,2) + 29*t1*u1 + 32*Power(u1,2)) + Power(q2,3)*u1*(5*Power(t1,2) + 36*t1*u1 + 55*Power(u1,2))) - 2*Power(m2,2)*(4*Power(q2,5)*(4*t1 + 7*u1) - 8*Power(q2,4)*u1*(7*t1 + 8*u1) + Power(u1,4)*(-Power(t1,2) - 2*t1*u1 + 3*Power(u1,2)) + 2*Power(q2,3)*u1*(8*Power(t1,2) + 25*t1*u1 + 5*Power(u1,2)) - 3*q2*Power(u1,3)*(3*Power(t1,2) + 8*t1*u1 + 13*Power(u1,2)) + Power(q2,2)*(-26*Power(t1,2)*Power(u1,2) + 20*t1*Power(u1,3) + 62*Power(u1,4))))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)*Power(u1,2));
r += c1*v1;
dbl v2 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))));
dbl c2 = (256*Power(m2,5)*Power(q2,2)*(t1 + u1) + Power(q2 - u1,5)*u1*(2*Power(q2,2) + Power(t1,2) + 2*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1)) - 64*Power(m2,4)*q2*(-8*q2*u1*(t1 + u1) + Power(u1,2)*(t1 + u1) + 2*Power(q2,2)*(t1 + 2*u1)) - 16*Power(m2,3)*q2*(Power(q2,3)*(3*t1 - u1) + 2*Power(q2,2)*u1*(4*t1 + 9*u1) + 2*q2*u1*(Power(t1,2) - 10*t1*u1 - 14*Power(u1,2)) + Power(u1,2)*(Power(t1,2) + 8*t1*u1 + 9*Power(u1,2))) - 2*m2*(q2 - u1)*(Power(u1,5)*(-t1 + u1) + 2*Power(q2,5)*(t1 + 5*u1) - Power(q2,4)*u1*(16*t1 + 39*u1) + q2*Power(u1,3)*(4*Power(t1,2) + 8*t1*u1 + 5*Power(u1,2)) - Power(q2,2)*Power(u1,2)*(12*Power(t1,2) + 29*t1*u1 + 32*Power(u1,2)) + Power(q2,3)*u1*(5*Power(t1,2) + 36*t1*u1 + 55*Power(u1,2))) + 2*Power(m2,2)*(4*Power(q2,5)*(4*t1 + 7*u1) - 8*Power(q2,4)*u1*(7*t1 + 8*u1) + Power(u1,4)*(-Power(t1,2) - 2*t1*u1 + 3*Power(u1,2)) + 2*Power(q2,3)*u1*(8*Power(t1,2) + 25*t1*u1 + 5*Power(u1,2)) - 3*q2*Power(u1,3)*(3*Power(t1,2) + 8*t1*u1 + 13*Power(u1,2)) + Power(q2,2)*(-26*Power(t1,2)*Power(u1,2) + 20*t1*Power(u1,3) + 62*Power(u1,4))))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)*Power(u1,2));
r += c2*v2;
dbl v3 = Li2((m2 + t1)/m2);
dbl c3 = (2*m2*t1*(Power(t1,2) + q2*u1 - t1*u1) + Power(m2,2)*(6*Power(t1,2) - 4*t1*u1 - 2*Power(u1,2)) - Power(t1,2)*(2*Power(q2,2) + 2*Power(t1,2) + 2*t1*u1 + Power(u1,2) - 2*q2*(2*t1 + u1)))/(2.*Power(t1,3)*u1);
r += c3*v3;
dbl v4 = Li2((m2 + u1)/m2);
dbl c4 = -(2*Power(m2,2)*(Power(t1,2) + 2*t1*u1 - 3*Power(u1,2)) - 2*m2*u1*(q2*t1 + u1*(-t1 + u1)) + Power(u1,2)*(2*Power(q2,2) + Power(t1,2) + 2*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1)))/(2.*t1*Power(u1,3));
r += c4*v4;
dbl v5 = Li2(-chi) + ln(chi)*ln(1 + chi);
dbl c5 = (-32*Power(m2,3)*Power(t1 + u1,2) - 8*Power(m2,2)*(2*Power(t1,3) + 11*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-4*q2 + 11*u1)) + t1*u1*(-8*Power(q2,3) + 5*Power(t1,3) + 9*Power(t1,2)*u1 + 9*t1*Power(u1,2) + 5*Power(u1,3) + 18*Power(q2,2)*(t1 + u1) - 3*q2*(5*Power(t1,2) + 8*t1*u1 + 5*Power(u1,2))) + 2*m2*(4*Power(q2,2)*Power(t1 + u1,2) - t1*u1*(3*Power(t1,2) + 10*t1*u1 + 3*Power(u1,2)) - q2*(4*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 4*Power(u1,3))))/(beta*Power(t1,2)*Power(u1,2)*(-q2 + t1 + u1));
r += c5*v5;
dbl v6 = Li2(chi) + ln(1 - chi)*ln(chi);
dbl c6 = (-4*(8*Power(m2,3)*Power(t1 + u1,2) + 4*Power(m2,2)*(Power(t1,3) + 5*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 5*u1)) - t1*u1*(-2*Power(q2,3) + Power(t1,3) + Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3) + 4*Power(q2,2)*(t1 + u1) - q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))) + 2*m2*(-(Power(q2,2)*Power(t1 + u1,2)) + t1*u1*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + q2*(Power(t1,3) + Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3)))))/(beta*Power(t1,2)*Power(u1,2)*(-q2 + t1 + u1));
r += c6*v6;
dbl v7 = Li2(-(chi/chiq)) + Li2(-(chi*chiq)) + ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq);
dbl c7 = (16*Power(m2,3)*Power(t1 + u1,2) + 8*Power(m2,2)*(Power(t1,3) + 6*Power(t1,2)*u1 - 2*t1*(q2 - 3*u1)*u1 + Power(u1,3)) + 2*m2*(t1 + u1)*(-2*Power(q2,2)*(t1 + u1) + t1*u1*(t1 + u1) + q2*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2))) - t1*u1*(-4*Power(q2,3) + 3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3) + 10*Power(q2,2)*(t1 + u1) - q2*(9*Power(t1,2) + 16*t1*u1 + 9*Power(u1,2))))/(beta*Power(t1,2)*Power(u1,2)*(-q2 + t1 + u1));
r += c7*v7;
dbl v8 = ln(chi)*ln(-(t1/m2));
dbl c8 = (-16*Power(m2,3)*(t1 + u1) + 8*Power(m2,2)*(q2*t1 - 3*Power(t1,2) - 3*t1*u1 - Power(u1,2)) + m2*(4*Power(q2,2)*(t1 + u1) - 2*t1*u1*(t1 + u1) - 2*q2*(3*Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))) + t1*(-2*Power(q2,3) + 2*Power(t1,3) + 4*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3) + Power(q2,2)*(6*t1 + 4*u1) - q2*(6*Power(t1,2) + 8*t1*u1 + 3*Power(u1,2))))/(beta*Power(t1,2)*u1*(-q2 + t1 + u1));
r += c8*v8;
dbl v9 = ln(-(t1/m2));
dbl c9 = -(-(Power(q2 - t1,2)*Power(t1,4)*u1*(4*Power(q2,2) - 6*q2*t1 + 2*Power(t1,2) - 4*q2*u1 + 3*t1*u1)) + 32*Power(m2,5)*q2*(t1 + u1)*(-2*Power(t1,2) + q2*(t1 + u1)) - 16*Power(m2,4)*(-(Power(t1,4)*(t1 + u1)) + 2*q2*Power(t1,3)*(5*t1 + 6*u1) + Power(q2,3)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) - Power(q2,2)*t1*(7*Power(t1,2) + 14*t1*u1 + 5*Power(u1,2))) + Power(m2,2)*t1*(-2*Power(q2,5)*u1 - 2*q2*Power(t1,3)*(29*Power(t1,2) + 45*t1*u1 - 29*Power(u1,2)) + Power(q2,2)*Power(t1,2)*(35*Power(t1,2) + 78*t1*u1 - 17*Power(u1,2)) + 2*Power(t1,4)*(13*Power(t1,2) + 23*t1*u1 + 2*Power(u1,2)) + Power(q2,4)*(3*Power(t1,2) + 40*t1*u1 + 3*Power(u1,2)) - 2*Power(q2,3)*t1*(7*Power(t1,2) + 48*t1*u1 + 8*Power(u1,2))) + 2*Power(m2,3)*(Power(q2,4)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) + 2*Power(t1,4)*(9*Power(t1,2) + 12*t1*u1 + Power(u1,2)) + 4*Power(q2,2)*Power(t1,2)*(13*Power(t1,2) + 30*t1*u1 + 7*Power(u1,2)) - 2*Power(q2,3)*t1*(9*Power(t1,2) + 41*t1*u1 + 8*Power(u1,2)) + q2*Power(t1,3)*(-77*Power(t1,2) - 108*t1*u1 + 13*Power(u1,2))) + m2*Power(t1,2)*(-3*Power(q2,5)*u1 + Power(q2,4)*u1*(11*t1 + u1) + 2*Power(q2,2)*Power(t1,2)*(Power(t1,2) - 15*t1*u1 - 18*Power(u1,2)) + Power(t1,4)*(4*Power(t1,2) + 11*t1*u1 - 3*Power(u1,2)) + Power(q2,3)*t1*(Power(t1,2) + 8*t1*u1 + 4*Power(u1,2)) + q2*Power(t1,3)*(-7*Power(t1,2) + 3*t1*u1 + 42*Power(u1,2))))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*Power(t1,2)*Power(m2 + t1,2)*u1);
r += c9*v9;
dbl v10 = ln(chi)*ln(-(u1/m2));
dbl c10 = (-16*Power(m2,3)*(t1 + u1) - 8*Power(m2,2)*(Power(t1,2) + 3*t1*u1 + u1*(-q2 + 3*u1)) + m2*(4*Power(q2,2)*(t1 + u1) - 2*t1*u1*(t1 + u1) - 2*q2*(2*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2))) + u1*(-2*Power(q2,3) + Power(t1,3) + 3*Power(t1,2)*u1 + 4*t1*Power(u1,2) + 2*Power(u1,3) + Power(q2,2)*(4*t1 + 6*u1) - q2*(3*Power(t1,2) + 8*t1*u1 + 6*Power(u1,2))))/(beta*t1*Power(u1,2)*(-q2 + t1 + u1));
r += c10*v10;
dbl v11 = ln(-(u1/m2));
dbl c11 = -(t1*Power(q2 - u1,2)*Power(u1,4)*(-4*Power(q2,2) + 4*q2*t1 + 6*q2*u1 - 3*t1*u1 - 2*Power(u1,2)) + 32*Power(m2,5)*q2*(t1 + u1)*(-2*Power(u1,2) + q2*(t1 + u1)) + m2*Power(u1,2)*(-3*Power(q2,5)*t1 + Power(q2,4)*t1*(t1 + 11*u1) + q2*Power(u1,3)*(42*Power(t1,2) + 3*t1*u1 - 7*Power(u1,2)) + 2*Power(q2,2)*Power(u1,2)*(-18*Power(t1,2) - 15*t1*u1 + Power(u1,2)) + Power(q2,3)*u1*(4*Power(t1,2) + 8*t1*u1 + Power(u1,2)) + Power(u1,4)*(-3*Power(t1,2) + 11*t1*u1 + 4*Power(u1,2))) - 16*Power(m2,4)*(-(Power(u1,4)*(t1 + u1)) + 2*q2*Power(u1,3)*(6*t1 + 5*u1) + Power(q2,3)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) - Power(q2,2)*u1*(5*Power(t1,2) + 14*t1*u1 + 7*Power(u1,2))) + 2*Power(m2,3)*(q2*Power(u1,3)*(13*Power(t1,2) - 108*t1*u1 - 77*Power(u1,2)) + Power(q2,4)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) + 2*Power(u1,4)*(Power(t1,2) + 12*t1*u1 + 9*Power(u1,2)) - 2*Power(q2,3)*u1*(8*Power(t1,2) + 41*t1*u1 + 9*Power(u1,2)) + 4*Power(q2,2)*Power(u1,2)*(7*Power(t1,2) + 30*t1*u1 + 13*Power(u1,2))) + Power(m2,2)*u1*(-2*Power(q2,5)*t1 + Power(q2,4)*(3*Power(t1,2) + 40*t1*u1 + 3*Power(u1,2)) - 2*Power(q2,3)*u1*(8*Power(t1,2) + 48*t1*u1 + 7*Power(u1,2)) + 2*Power(u1,4)*(2*Power(t1,2) + 23*t1*u1 + 13*Power(u1,2)) - 2*q2*Power(u1,3)*(-29*Power(t1,2) + 45*t1*u1 + 29*Power(u1,2)) + Power(q2,2)*Power(u1,2)*(-17*Power(t1,2) + 78*t1*u1 + 35*Power(u1,2))))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*Power(u1,2)*Power(m2 + u1,2));
r += c11*v11;
dbl v12 = Power(ln(chi),2);
dbl c12 = (32*Power(m2,3)*Power(t1 + u1,4) - t1*(q2 - t1 - u1)*u1*Power(t1 + u1,2)*(4*(-2 + beta)*Power(q2,2) + 3*(-1 + beta)*Power(t1,2) + 4*(1 + beta)*t1*u1 + 3*(-1 + beta)*Power(u1,2) - 6*(-1 + beta)*q2*(t1 + u1)) + 8*Power(m2,2)*Power(t1 + u1,2)*(2*Power(t1,3) - (-9 + beta)*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*((-4 + beta)*q2 - (-9 + beta)*u1)) - 2*m2*(-(t1*u1*Power(t1 + u1,2)*(5*Power(t1,2) + 22*t1*u1 + 5*Power(u1,2))) + 4*Power(q2,2)*(Power(t1,4) + 4*Power(t1,3)*u1 - (-6 + beta)*Power(t1,2)*Power(u1,2) + 4*t1*Power(u1,3) + Power(u1,4)) - q2*(t1 + u1)*(4*Power(t1,4) + 5*Power(t1,3)*u1 + 2*(1 - 2*beta)*Power(t1,2)*Power(u1,2) + 5*t1*Power(u1,3) + 4*Power(u1,4))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c12*v12;
dbl v13 = ln(chi);
dbl c13 = (32*Power(m2,4)*Power(t1 + u1,4) - 8*Power(m2,3)*Power(t1 + u1,2)*(-3*Power(t1,3) - 13*Power(t1,2)*u1 - 13*t1*Power(u1,2) - 3*Power(u1,3) + q2*(Power(t1,2) + 6*t1*u1 + Power(u1,2))) + 4*Power(m2,2)*Power(t1 + u1,2)*(Power(Power(t1,2) + 4*t1*u1 + Power(u1,2),2) + q2*(t1 + u1)*(Power(t1,2) + 2*(-3 + Power(beta,2))*t1*u1 + Power(u1,2)) - 2*Power(q2,2)*(Power(t1,2) + (1 + Power(beta,2))*t1*u1 + Power(u1,2))) - t1*u1*Power(-q2 + t1 + u1,2)*(-2*q2*Power(t1 + u1,3) + Power(t1 + u1,2)*(Power(t1,2) - 2*Power(beta,2)*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*(Power(t1,2) + (2 + Power(beta,2))*t1*u1 + Power(u1,2))) + 2*m2*(q2 - t1 - u1)*(Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2))*(Power(t1,2) + (2 + Power(beta,2))*t1*u1 + Power(u1,2)) - q2*Power(t1 + u1,3)*(Power(t1,2) + (4 + Power(beta,2))*t1*u1 + Power(u1,2)) - t1*u1*Power(t1 + u1,2)*((-1 + Power(beta,2))*Power(t1,2) + 2*(2 + Power(beta,2))*t1*u1 + (-1 + Power(beta,2))*Power(u1,2))))/(beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1)*(4*m2 - q2 + t1 + u1));
r += c13*v13;
dbl v14 = Power(ln(chiq),2);
dbl c14 = -(32*Power(m2,3)*Power(t1 + u1,4) + 8*Power(m2,2)*Power(t1 + u1,2)*(2*Power(t1,3) - (-12 + beta)*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*((-4 + beta)*q2 - (-12 + beta)*u1)) + (-2 + beta)*t1*u1*Power(t1 + u1,2)*(-4*Power(q2,3) + 3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3) + 10*Power(q2,2)*(t1 + u1) - q2*(9*Power(t1,2) + 16*t1*u1 + 9*Power(u1,2))) - 4*m2*(q2 - t1 - u1)*(t1*u1*Power(t1 + u1,3) + 2*q2*(Power(t1,4) + 4*Power(t1,3)*u1 - (-6 + beta)*Power(t1,2)*Power(u1,2) + 4*t1*Power(u1,3) + Power(u1,4))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c14*v14;
dbl v15 = ln(chiq);
dbl c15 = -(betaq*q2*(-2048*Power(m2,6)*Power(q2,3)*Power(t1 + u1,4) + 512*Power(m2,5)*Power(q2,2)*Power(t1 + u1,2)*(Power(q2,2)*(Power(t1,2) + 8*t1*u1 + Power(u1,2)) + Power(t1 + u1,2)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2)) - 4*q2*(Power(t1,3) + 4*Power(t1,2)*u1 + 4*t1*Power(u1,2) + Power(u1,3))) + 64*Power(m2,4)*q2*(56*Power(q2,3)*t1*u1*Power(t1 + u1,3) - 2*Power(t1 + u1,4)*(Power(t1,4) - Power(t1,3)*u1 + 3*Power(t1,2)*Power(u1,2) - t1*Power(u1,3) + Power(u1,4)) + 4*Power(q2,4)*(3*Power(t1,4) + 6*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 6*t1*Power(u1,3) + 3*Power(u1,4)) - 2*Power(q2,2)*Power(t1 + u1,2)*(4*Power(t1,4) + 47*Power(t1,3)*u1 + 62*Power(t1,2)*Power(u1,2) + 47*t1*Power(u1,3) + 4*Power(u1,4)) + q2*Power(t1 + u1,3)*(8*Power(t1,4) + 37*Power(t1,3)*u1 + 18*Power(t1,2)*Power(u1,2) + 37*t1*Power(u1,3) + 8*Power(u1,4))) + Power(q2 - t1,2)*t1*Power(q2 - u1,2)*u1*(-2*t1*u1*Power(t1 + u1,3)*(Power(t1,2) + t1*u1 + Power(u1,2)) + Power(q2,5)*(6*Power(t1,2) + 8*t1*u1 + 6*Power(u1,2)) - 2*Power(q2,4)*(9*Power(t1,3) + 23*Power(t1,2)*u1 + 23*t1*Power(u1,2) + 9*Power(u1,3)) + Power(q2,3)*(21*Power(t1,4) + 82*Power(t1,3)*u1 + 114*Power(t1,2)*Power(u1,2) + 82*t1*Power(u1,3) + 21*Power(u1,4)) - 2*Power(q2,2)*(6*Power(t1,5) + 31*Power(t1,4)*u1 + 59*Power(t1,3)*Power(u1,2) + 59*Power(t1,2)*Power(u1,3) + 31*t1*Power(u1,4) + 6*Power(u1,5)) + q2*(3*Power(t1,6) + 20*Power(t1,5)*u1 + 53*Power(t1,4)*Power(u1,2) + 68*Power(t1,3)*Power(u1,3) + 53*Power(t1,2)*Power(u1,4) + 20*t1*Power(u1,5) + 3*Power(u1,6))) - 16*Power(m2,3)*(-2*Power(t1,2)*Power(u1,2)*Power(t1 + u1,4)*(Power(t1,2) - t1*u1 + Power(u1,2)) - 2*Power(q2,3)*Power(t1 + u1,3)*(4*Power(t1,4) - 29*Power(t1,3)*u1 - 92*Power(t1,2)*Power(u1,2) - 29*t1*Power(u1,3) + 4*Power(u1,4)) + 2*q2*t1*u1*Power(t1 + u1,3)*(7*Power(t1,4) + 5*Power(t1,3)*u1 + 24*Power(t1,2)*Power(u1,2) + 5*t1*Power(u1,3) + 7*Power(u1,4)) + 4*Power(q2,6)*(7*Power(t1,4) + 34*Power(t1,3)*u1 + 38*Power(t1,2)*Power(u1,2) + 34*t1*Power(u1,3) + 7*Power(u1,4)) - 16*Power(q2,5)*(3*Power(t1,5) + 15*Power(t1,4)*u1 + 26*Power(t1,3)*Power(u1,2) + 26*Power(t1,2)*Power(u1,3) + 15*t1*Power(u1,4) + 3*Power(u1,5)) + Power(q2,2)*Power(t1 + u1,2)*(2*Power(t1,6) - 53*Power(t1,5)*u1 - 150*Power(t1,4)*Power(u1,2) - 246*Power(t1,3)*Power(u1,3) - 150*Power(t1,2)*Power(u1,4) - 53*t1*Power(u1,5) + 2*Power(u1,6)) + 2*Power(q2,4)*(16*Power(t1,6) + 59*Power(t1,5)*u1 + 32*Power(t1,4)*Power(u1,2) + 10*Power(t1,3)*Power(u1,3) + 32*Power(t1,2)*Power(u1,4) + 59*t1*Power(u1,5) + 16*Power(u1,6))) + 4*Power(m2,2)*(Power(t1,2)*Power(u1,2)*Power(t1 + u1,3)*(3*Power(t1,4) + 13*Power(t1,3)*u1 - 4*Power(t1,2)*Power(u1,2) + 13*t1*Power(u1,3) + 3*Power(u1,4)) + 2*Power(q2,7)*(11*Power(t1,4) + 92*Power(t1,3)*u1 + 114*Power(t1,2)*Power(u1,2) + 92*t1*Power(u1,3) + 11*Power(u1,4)) - 2*Power(q2,2)*t1*u1*Power(t1 + u1,3)*(28*Power(t1,4) - 63*Power(t1,3)*u1 - 74*Power(t1,2)*Power(u1,2) - 63*t1*Power(u1,3) + 28*Power(u1,4)) - 64*Power(q2,6)*(Power(t1,5) + 9*Power(t1,4)*u1 + 19*Power(t1,3)*Power(u1,2) + 19*Power(t1,2)*Power(u1,3) + 9*t1*Power(u1,4) + Power(u1,5)) + q2*t1*u1*Power(t1 + u1,2)*(7*Power(t1,6) - 30*Power(t1,5)*u1 - 109*Power(t1,4)*Power(u1,2) - 128*Power(t1,3)*Power(u1,3) - 109*Power(t1,2)*Power(u1,4) - 30*t1*Power(u1,5) + 7*Power(u1,6)) + 2*Power(q2,5)*(36*Power(t1,6) + 381*Power(t1,5)*u1 + 988*Power(t1,4)*Power(u1,2) + 1318*Power(t1,3)*Power(u1,3) + 988*Power(t1,2)*Power(u1,4) + 381*t1*Power(u1,5) + 36*Power(u1,6)) - Power(q2,4)*(40*Power(t1,7) + 531*Power(t1,6)*u1 + 1447*Power(t1,5)*Power(u1,2) + 2030*Power(t1,4)*Power(u1,3) + 2030*Power(t1,3)*Power(u1,4) + 1447*Power(t1,2)*Power(u1,5) + 531*t1*Power(u1,6) + 40*Power(u1,7)) + 2*Power(q2,3)*(5*Power(t1,8) + 110*Power(t1,7)*u1 + 233*Power(t1,6)*Power(u1,2) + 146*Power(t1,5)*Power(u1,3) - 12*Power(t1,4)*Power(u1,4) + 146*Power(t1,3)*Power(u1,5) + 233*Power(t1,2)*Power(u1,6) + 110*t1*Power(u1,7) + 5*Power(u1,8))) + m2*(-2*Power(q2,8)*(3*Power(t1,4) + 54*Power(t1,3)*u1 + 70*Power(t1,2)*Power(u1,2) + 54*t1*Power(u1,3) + 3*Power(u1,4)) + Power(t1,3)*Power(u1,3)*Power(t1 + u1,2)*(5*Power(t1,4) + 14*Power(t1,3)*u1 + 14*Power(t1,2)*Power(u1,2) + 14*t1*Power(u1,3) + 5*Power(u1,4)) + 2*q2*Power(t1,2)*Power(u1,2)*Power(t1 + u1,3)*(11*Power(t1,4) - 6*Power(t1,3)*u1 - 20*Power(t1,2)*Power(u1,2) - 6*t1*Power(u1,3) + 11*Power(u1,4)) + 8*Power(q2,7)*(3*Power(t1,5) + 56*Power(t1,4)*u1 + 129*Power(t1,3)*Power(u1,2) + 129*Power(t1,2)*Power(u1,3) + 56*t1*Power(u1,4) + 3*Power(u1,5)) - 4*Power(q2,6)*(9*Power(t1,6) + 200*Power(t1,5)*u1 + 645*Power(t1,4)*Power(u1,2) + 892*Power(t1,3)*Power(u1,3) + 645*Power(t1,2)*Power(u1,4) + 200*t1*Power(u1,5) + 9*Power(u1,6)) + 4*Power(q2,5)*(6*Power(t1,7) + 198*Power(t1,6)*u1 + 805*Power(t1,5)*Power(u1,2) + 1435*Power(t1,4)*Power(u1,3) + 1435*Power(t1,3)*Power(u1,4) + 805*Power(t1,2)*Power(u1,5) + 198*t1*Power(u1,6) + 6*Power(u1,7)) + 2*Power(q2,3)*t1*u1*(71*Power(t1,7) + 497*Power(t1,6)*u1 + 1155*Power(t1,5)*Power(u1,2) + 1509*Power(t1,4)*Power(u1,3) + 1509*Power(t1,3)*Power(u1,4) + 1155*Power(t1,2)*Power(u1,5) + 497*t1*Power(u1,6) + 71*Power(u1,7)) - Power(q2,4)*(6*Power(t1,8) + 455*Power(t1,7)*u1 + 2318*Power(t1,6)*Power(u1,2) + 4849*Power(t1,5)*Power(u1,3) + 6024*Power(t1,4)*Power(u1,4) + 4849*Power(t1,3)*Power(u1,5) + 2318*Power(t1,2)*Power(u1,6) + 455*t1*Power(u1,7) + 6*Power(u1,8)) - Power(q2,2)*t1*u1*(19*Power(t1,8) + 230*Power(t1,7)*u1 + 608*Power(t1,6)*Power(u1,2) + 626*Power(t1,5)*Power(u1,3) + 522*Power(t1,4)*Power(u1,4) + 626*Power(t1,3)*Power(u1,5) + 608*Power(t1,2)*Power(u1,6) + 230*t1*Power(u1,7) + 19*Power(u1,8)))))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*Power(t1,2)*Power(-4*m2*q2 + Power(q2 - u1,2),2)*Power(u1,2)*Power(t1 + u1,2));
r += c15*v15;
dbl v16 = zeta2;
dbl c16 = (-32*Power(m2,3)*t1*u1*Power(t1 + u1,4) + Power(t1,2)*(q2 - t1 - u1)*Power(u1,2)*Power(t1 + u1,2)*(8*(-1 + beta)*Power(q2,2) + (-3 + 6*beta)*Power(t1,2) + 3*(-1 + 2*beta)*Power(u1,2) - 6*(-1 + 2*beta)*q2*(t1 + u1) + 4*t1*(u1 + 2*beta*u1)) + 2*Power(m2,2)*Power(t1 + u1,2)*(beta*Power(t1,5) + beta*Power(u1,4)*(-q2 + u1) + 2*Power(t1,2)*Power(u1,2)*((8 - 3*beta)*q2 + 2*(-9 + 2*beta)*u1) + 2*Power(t1,3)*u1*(-(beta*q2) + 2*(-9 + 2*beta)*u1) + t1*Power(u1,3)*(-2*beta*q2 + (-8 + 3*beta)*u1) + Power(t1,4)*(-(beta*q2) + (-8 + 3*beta)*u1)) - 2*m2*t1*u1*(t1*u1*Power(t1 + u1,2)*(5*Power(t1,2) + 22*t1*u1 + 5*Power(u1,2)) - Power(q2,2)*((4 + beta)*Power(t1,4) + 2*(8 + beta)*Power(t1,3)*u1 + 2*(12 - 5*beta)*Power(t1,2)*Power(u1,2) + 2*(8 + beta)*t1*Power(u1,3) + (4 + beta)*Power(u1,4)) + q2*(t1 + u1)*((4 + beta)*Power(t1,4) + (5 + 2*beta)*Power(t1,3)*u1 + 2*(1 - 5*beta)*Power(t1,2)*Power(u1,2) + (5 + 2*beta)*t1*Power(u1,3) + (4 + beta)*Power(u1,4))))/(2.*beta*Power(t1,3)*Power(u1,3)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c16*v16;
dbl v17 = 1;
dbl c17 = (-128*Power(m2,6)*Power(q2,2)*Power(t1 + u1,3) + 32*Power(m2,5)*q2*(t1 + u1)*(4*Power(q2,2)*t1*u1 + Power(t1 + u1,2)*(Power(t1,2) + Power(u1,2)) - q2*(7*Power(t1,3) + 23*Power(t1,2)*u1 + 23*t1*Power(u1,2) + 7*Power(u1,3))) + (q2 - t1)*Power(t1,2)*(q2 - u1)*Power(u1,2)*(4*Power(q2,4)*(t1 + u1) - Power(q2,3)*(7*Power(t1,2) + 18*t1*u1 + 7*Power(u1,2)) + t1*u1*(Power(t1,3) + Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3)) + Power(q2,2)*(5*Power(t1,3) + 19*Power(t1,2)*u1 + 19*t1*Power(u1,2) + 5*Power(u1,3)) - 2*q2*(Power(t1,4) + 3*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 3*t1*Power(u1,3) + Power(u1,4))) + 8*Power(m2,4)*(3*Power(q2,4)*Power(t1 + u1,3) - Power(t1,2)*Power(u1,2)*Power(t1 + u1,3) + 8*Power(q2,3)*t1*u1*(3*Power(t1,2) + 5*t1*u1 + 3*Power(u1,2)) - Power(q2,2)*Power(t1 + u1,3)*(13*Power(t1,2) + 58*t1*u1 + 13*Power(u1,2)) + q2*Power(t1 + u1,2)*(5*Power(t1,4) + 15*Power(t1,3)*u1 + 16*Power(t1,2)*Power(u1,2) + 15*t1*Power(u1,3) + 5*Power(u1,4))) + m2*t1*u1*(4*Power(q2,6)*Power(t1 + u1,2) - 3*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) - 2*Power(q2,5)*(7*Power(t1,3) + 36*Power(t1,2)*u1 + 36*t1*Power(u1,2) + 7*Power(u1,3)) + 2*Power(q2,4)*(8*Power(t1,4) + 59*Power(t1,3)*u1 + 118*Power(t1,2)*Power(u1,2) + 59*t1*Power(u1,3) + 8*Power(u1,4)) + Power(q2,2)*t1*u1*(31*Power(t1,4) + 65*Power(t1,3)*u1 + 36*Power(t1,2)*Power(u1,2) + 65*t1*Power(u1,3) + 31*Power(u1,4)) + q2*t1*u1*(-7*Power(t1,5) + 8*Power(t1,4)*u1 + 43*Power(t1,3)*Power(u1,2) + 43*Power(t1,2)*Power(u1,3) + 8*t1*Power(u1,4) - 7*Power(u1,5)) - 2*Power(q2,3)*(3*Power(t1,5) + 45*Power(t1,4)*u1 + 103*Power(t1,3)*Power(u1,2) + 103*Power(t1,2)*Power(u1,3) + 45*t1*Power(u1,4) + 3*Power(u1,5))) + Power(m2,2)*(4*Power(q2,6)*t1*u1*(t1 + u1) - 2*Power(q2,5)*(2*Power(t1,4) + 25*Power(t1,3)*u1 + 48*Power(t1,2)*Power(u1,2) + 25*t1*Power(u1,3) + 2*Power(u1,4)) - Power(q2,3)*t1*u1*(47*Power(t1,4) + 134*Power(t1,3)*u1 + 246*Power(t1,2)*Power(u1,2) + 134*t1*Power(u1,3) + 47*Power(u1,4)) - Power(t1,2)*Power(u1,2)*(4*Power(t1,5) + 29*Power(t1,4)*u1 + 71*Power(t1,3)*Power(u1,2) + 71*Power(t1,2)*Power(u1,3) + 29*t1*Power(u1,4) + 4*Power(u1,5)) + Power(q2,4)*(6*Power(t1,5) + 93*Power(t1,4)*u1 + 309*Power(t1,3)*Power(u1,2) + 309*Power(t1,2)*Power(u1,3) + 93*t1*Power(u1,4) + 6*Power(u1,5)) + q2*t1*u1*(4*Power(t1,6) + 73*Power(t1,5)*u1 + 248*Power(t1,4)*Power(u1,2) + 354*Power(t1,3)*Power(u1,3) + 248*Power(t1,2)*Power(u1,4) + 73*t1*Power(u1,5) + 4*Power(u1,6)) - 2*Power(q2,2)*(Power(t1,7) - 2*Power(t1,6)*u1 + 37*Power(t1,5)*Power(u1,2) + 142*Power(t1,4)*Power(u1,3) + 142*Power(t1,3)*Power(u1,4) + 37*Power(t1,2)*Power(u1,5) - 2*t1*Power(u1,6) + Power(u1,7))) - 2*Power(m2,3)*(2*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(3*Power(t1,2) + 7*t1*u1 + 3*Power(u1,2)) - 8*Power(q2,3)*t1*u1*(Power(t1,3) + 8*Power(t1,2)*u1 + 8*t1*Power(u1,2) + Power(u1,3)) + 2*Power(q2,5)*(Power(t1,3) + 9*Power(t1,2)*u1 + 9*t1*Power(u1,2) + Power(u1,3)) - Power(q2,4)*(15*Power(t1,4) + 74*Power(t1,3)*u1 + 134*Power(t1,2)*Power(u1,2) + 74*t1*Power(u1,3) + 15*Power(u1,4)) + Power(q2,2)*(5*Power(t1,6) + 105*Power(t1,5)*u1 + 415*Power(t1,4)*Power(u1,2) + 646*Power(t1,3)*Power(u1,3) + 415*Power(t1,2)*Power(u1,4) + 105*t1*Power(u1,5) + 5*Power(u1,6)) - 2*q2*(2*Power(t1,7) + 25*Power(t1,6)*u1 + 90*Power(t1,5)*Power(u1,2) + 153*Power(t1,4)*Power(u1,3) + 153*Power(t1,3)*Power(u1,4) + 90*Power(t1,2)*Power(u1,5) + 25*t1*Power(u1,6) + 2*Power(u1,7))))/(2.*(-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*(m2 + t1)*(4*m2*q2 - Power(q2 - u1,2))*Power(u1,2)*(m2 + u1)*(t1 + u1));
r += c17*v17;

return r;
}
dbl SVOKDelta1G(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);

return (2*(-4*Power(m2,2)*Power(sp,2) + t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) - 2*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2))))*((-2*m2 + q2 + sp)*ln(chi) + beta*(q2 - t1 - u1)*(ln(-(t1/m2)) - ln(-(u1/m2)))))/(beta*(q2 + sp)*Power(t1,2)*Power(u1,2));
}

dbl SVQEDDelta1G(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);

return (-2*(-4*Power(m2,2)*Power(sp,2) + t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) - 2*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2))))*(beta*(q2 + sp) + (-2*m2 + q2 + sp)*ln(chi)))/(beta*(q2 + sp)*Power(t1,2)*Power(u1,2));
}

dbl SVOKDelta2G(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return (-8*Power(m2,2)*Power(sp,2) + 2*t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) - 4*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
}

dbl SVOKScaleRG(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return (11*(-4*Power(m2,2)*Power(sp,2) + t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) - 2*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2)))))/(6.*Power(t1,2)*Power(u1,2));
}

dbl SVOKScaleFG(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return ((-4*Power(m2,2)*Power(sp,2) + t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) - 2*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2))))*(-11 + 12*ln(-(u1/m2))))/(6.*Power(t1,2)*Power(u1,2));
}

dbl SVOKScaleFDelta1G(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return (8*Power(m2,2)*Power(sp,2) - 2*t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) + 4*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
}

dbl SVOKL(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);
dbl betaq = sqrt(1.-4*m2/q2);
dbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (2*q2*(Power(q2 - t1,3)*t1*(q2 - t1 - u1)*u1 + 16*Power(m2,3)*q2*(Power(t1,2) - Power(u1,2)) + 2*m2*(q2*Power(t1,2)*(3*Power(t1,2) - 4*t1*u1 - 9*Power(u1,2)) - 3*Power(q2,2)*t1*(Power(t1,2) - 3*t1*u1 - 2*Power(u1,2)) - Power(t1,3)*(Power(t1,2) + t1*u1 - 2*Power(u1,2)) + Power(q2,3)*(Power(t1,2) - 4*t1*u1 - Power(u1,2))) - 4*Power(m2,2)*(Power(t1,4) - Power(t1,2)*Power(u1,2) + Power(q2,2)*(3*Power(t1,2) - 4*t1*u1 - 3*Power(u1,2)) + q2*(-3*Power(t1,3) + 7*t1*Power(u1,2)))))/(Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*u1*Power(t1 + u1,2));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (2*q2*(-(t1*Power(q2 - u1,3)*u1*(-q2 + t1 + u1)) - 16*Power(m2,3)*q2*(Power(t1,2) - Power(u1,2)) - 2*m2*(q2*Power(u1,2)*(9*Power(t1,2) + 4*t1*u1 - 3*Power(u1,2)) + Power(q2,3)*(Power(t1,2) + 4*t1*u1 - Power(u1,2)) + 3*Power(q2,2)*u1*(-2*Power(t1,2) - 3*t1*u1 + Power(u1,2)) + Power(u1,3)*(-2*Power(t1,2) + t1*u1 + Power(u1,2))) + 4*Power(m2,2)*(Power(q2,2)*(3*Power(t1,2) + 4*t1*u1 - 3*Power(u1,2)) + Power(u1,2)*(Power(t1,2) - Power(u1,2)) + q2*(-7*Power(t1,2)*u1 + 3*Power(u1,3)))))/(t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*Power(t1 + u1,2));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (-2*q2*(-2*m2*(t1 - u1) + u1*(-q2 + t1 + u1)))/(u1*Power(t1 + u1,2));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (-2*q2*(2*m2*(t1 - u1) + t1*(-q2 + t1 + u1)))/(t1*Power(t1 + u1,2));
r += c3*v3;
dbl v4 = Li2(1 - t1/(chi*u1)) - Li2(1 - u1/(chi*t1)) + Power(ln((chi*u1)/t1),2)/2.;
dbl c4 = (8*q2*(m2*Power(t1 + u1,2) + t1*u1*(-q2 + t1 + u1)))/(t1*u1*Power(t1 + u1,2));
r += c4*v4;
dbl v5 = Li2(-chi) + ln(chi)*ln(1 + chi);
dbl c5 = (-8*q2*(8*Power(m2,2)*Power(t1 + u1,2) + 3*t1*u1*Power(-q2 + t1 + u1,2) - 4*m2*(q2 - t1 - u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2))))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c5*v5;
dbl v6 = Li2(chi) + ln(1 - chi)*ln(chi);
dbl c6 = (-32*q2*(2*Power(m2,2)*Power(t1 + u1,2) + t1*u1*Power(-q2 + t1 + u1,2) - m2*(q2 - t1 - u1)*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c6*v6;
dbl v7 = Li2(-(chi/chiq)) + Li2(-(chi*chiq)) + ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq) - (ln(chi)*(ln(-(t1/m2)) + ln(-(u1/m2))))/2.;
dbl c7 = (8*q2*(4*Power(m2,2)*Power(t1 + u1,2) - 2*m2*(q2 - t1 - u1)*Power(t1 + u1,2) + t1*u1*Power(-q2 + t1 + u1,2)))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c7*v7;
dbl v8 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c8 = (-4*q2*(2*m2 - q2 + t1 + u1))/Power(t1 + u1,2);
r += c8*v8;
dbl v9 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c9 = (-8*q2*(t1*u1*(-q2 + t1 + u1) + 2*m2*(Power(t1,2) + t1*u1 + Power(u1,2))))/(t1*u1*Power(t1 + u1,2));
r += c9*v9;
dbl v10 = ln(-(t1/m2));
dbl c10 = (-4*q2*((q2 - t1)*Power(t1,2)*(q2 - t1 - u1)*u1 - 2*Power(m2,2)*q2*Power(t1 + u1,2) + m2*t1*(2*Power(q2,2)*u1 + t1*Power(t1 + u1,2) - q2*(Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)))))/((4*m2*q2 - Power(q2 - t1,2))*(m2 + t1)*u1*Power(t1 + u1,2));
r += c10*v10;
dbl v11 = ln(-(u1/m2));
dbl c11 = (-4*q2*(-2*Power(m2,2)*q2*Power(t1 + u1,2) - t1*(q2 - u1)*Power(u1,2)*(-q2 + t1 + u1) + m2*u1*(2*Power(q2,2)*t1 + u1*Power(t1 + u1,2) - q2*(3*Power(t1,2) + 4*t1*u1 + Power(u1,2)))))/(t1*(4*m2*q2 - Power(q2 - u1,2))*(m2 + u1)*Power(t1 + u1,2));
r += c11*v11;
dbl v12 = Power(ln(chi),2);
dbl c12 = (2*q2*(8*Power(m2,2)*Power(t1 + u1,2) - 5*(-1 + beta)*t1*u1*Power(-q2 + t1 + u1,2) + m2*(q2 - t1 - u1)*((-4 + 5*beta)*Power(t1,2) + 10*(-2 + beta)*t1*u1 + (-4 + 5*beta)*Power(u1,2))))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c12*v12;
dbl v13 = ln(chi);
dbl c13 = (-8*beta*q2*(q2 - t1 - u1)*(m2*Power(t1 + u1,2) + t1*u1*(-q2 + t1 + u1)))/(t1*u1*Power(t1 + u1,2)*(4*m2 - q2 + t1 + u1));
r += c13*v13;
dbl v14 = Power(ln(chiq),2);
dbl c14 = (-2*q2*(8*Power(m2,2)*Power(t1 + u1,2) - (-2 + 3*beta)*t1*u1*Power(-q2 + t1 + u1,2) + m2*(q2 - t1 - u1)*((-4 + 5*beta)*Power(t1,2) + 2*(-4 + 3*beta)*t1*u1 + (-4 + 5*beta)*Power(u1,2))))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c14*v14;
dbl v15 = ln(chiq);
dbl c15 = (-4*betaq*Power(q2,2)*(2*q2 - t1 - u1)*((q2 - t1)*t1*(q2 - u1)*(q2 - t1 - u1)*u1 + 4*Power(m2,2)*q2*Power(t1 + u1,2) - m2*(t1*u1*Power(t1 + u1,2) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) - q2*(Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + Power(u1,3)))))/((-4*m2*q2 + Power(q2 - t1,2))*t1*(4*m2*q2 - Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c15*v15;
dbl v16 = zeta2;
dbl c16 = (-4*q2*(8*Power(m2,2)*Power(t1 + u1,2) - (-5 + 2*beta)*t1*u1*Power(-q2 + t1 + u1,2) + 2*m2*(q2 - t1 - u1)*((-2 + 3*beta)*Power(t1,2) + 2*(-5 + beta)*t1*u1 + (-2 + 3*beta)*Power(u1,2))))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c16*v16;

return r;
}

dbl SVQEDL(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);
dbl betaq = sqrt(1.-4*m2/q2);
dbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (2*q2*(Power(q2 - t1,5)*t1*(q2 - t1 - u1)*u1 + 32*Power(m2,4)*q2*(2*q2 + t1 - u1)*Power(t1 + u1,2) - 2*m2*(q2 - t1)*(Power(q2,4)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) - Power(q2,3)*t1*(4*Power(t1,2) + 19*t1*u1 + 9*Power(u1,2)) + Power(q2,2)*Power(t1,2)*(6*Power(t1,2) + 20*t1*u1 + 19*Power(u1,2)) + Power(t1,3)*(Power(t1,3) + Power(u1,3)) - q2*Power(t1,2)*(4*Power(t1,3) + 7*Power(t1,2)*u1 + 11*t1*Power(u1,2) + 4*Power(u1,3))) - 4*Power(m2,3)*(16*Power(q2,3)*Power(t1 + u1,2) + 2*Power(t1,2)*(t1 - u1)*Power(t1 + u1,2) - 2*Power(q2,2)*(9*Power(t1,3) + 19*Power(t1,2)*u1 + 19*t1*Power(u1,2) + Power(u1,3)) + q2*t1*(Power(t1,3) + 3*Power(t1,2)*u1 + 19*t1*Power(u1,2) + 17*Power(u1,3))) + 2*Power(m2,2)*(2*Power(q2,4)*(5*Power(t1,2) + 14*t1*u1 + 5*Power(u1,2)) - 2*Power(q2,3)*t1*(15*Power(t1,2) + 36*t1*u1 + 25*Power(u1,2)) + Power(t1,3)*(-Power(t1,3) - 5*Power(t1,2)*u1 + t1*Power(u1,2) + 5*Power(u1,3)) + Power(q2,2)*t1*(29*Power(t1,3) + 60*Power(t1,2)*u1 + 71*t1*Power(u1,2) + 8*Power(u1,3)) - q2*Power(t1,2)*(8*Power(t1,3) + 11*Power(t1,2)*u1 + 34*t1*Power(u1,2) + 23*Power(u1,3)))))/(Power(-4*m2*q2 + Power(q2 - t1,2),3)*t1*u1*Power(t1 + u1,2));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (2*q2*(32*Power(m2,4)*q2*(2*q2 - t1 + u1)*Power(t1 + u1,2) - t1*Power(q2 - u1,5)*u1*(-q2 + t1 + u1) - 2*m2*(q2 - u1)*(Power(q2,4)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) - Power(q2,3)*u1*(9*Power(t1,2) + 19*t1*u1 + 4*Power(u1,2)) + Power(q2,2)*Power(u1,2)*(19*Power(t1,2) + 20*t1*u1 + 6*Power(u1,2)) + Power(u1,3)*(Power(t1,3) + Power(u1,3)) - q2*Power(u1,2)*(4*Power(t1,3) + 11*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 4*Power(u1,3))) - 4*Power(m2,3)*(16*Power(q2,3)*Power(t1 + u1,2) - 2*(t1 - u1)*Power(u1,2)*Power(t1 + u1,2) + q2*u1*(17*Power(t1,3) + 19*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3)) - 2*Power(q2,2)*(Power(t1,3) + 19*Power(t1,2)*u1 + 19*t1*Power(u1,2) + 9*Power(u1,3))) + 2*Power(m2,2)*(2*Power(q2,4)*(5*Power(t1,2) + 14*t1*u1 + 5*Power(u1,2)) - 2*Power(q2,3)*u1*(25*Power(t1,2) + 36*t1*u1 + 15*Power(u1,2)) + Power(u1,3)*(5*Power(t1,3) + Power(t1,2)*u1 - 5*t1*Power(u1,2) - Power(u1,3)) - q2*Power(u1,2)*(23*Power(t1,3) + 34*Power(t1,2)*u1 + 11*t1*Power(u1,2) + 8*Power(u1,3)) + Power(q2,2)*u1*(8*Power(t1,3) + 71*Power(t1,2)*u1 + 60*t1*Power(u1,2) + 29*Power(u1,3)))))/(t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)*u1*Power(t1 + u1,2));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (-2*q2*(2*m2*(t1 + u1) + u1*(-q2 + t1 + u1)))/(u1*Power(t1 + u1,2));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (-2*q2*(2*m2*(t1 + u1) + t1*(-q2 + t1 + u1)))/(t1*Power(t1 + u1,2));
r += c3*v3;
dbl v4 = Li2(-chi) + ln(chi)*ln(1 + chi);
dbl c4 = (8*q2*(8*Power(m2,2)*Power(t1 + u1,2) + 3*t1*u1*Power(-q2 + t1 + u1,2) - 4*m2*(q2 - t1 - u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2))))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c4*v4;
dbl v5 = Li2(chi) + ln(1 - chi)*ln(chi);
dbl c5 = (32*q2*(2*Power(m2,2)*Power(t1 + u1,2) + t1*u1*Power(-q2 + t1 + u1,2) - m2*(q2 - t1 - u1)*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c5*v5;
dbl v6 = Li2(-(chi/chiq)) + Li2(-(chi*chiq)) + ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq) - (ln(chi)*(ln(-(t1/m2)) + ln(-(u1/m2))))/2.;
dbl c6 = (-8*q2*(4*Power(m2,2)*Power(t1 + u1,2) - 2*m2*(q2 - t1 - u1)*Power(t1 + u1,2) + t1*u1*Power(-q2 + t1 + u1,2)))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c6*v6;
dbl v7 = ln(-(t1/m2));
dbl c7 = (-2*q2*(Power(q2 - t1,2)*(2*q2 - t1)*Power(t1,3)*(q2 - t1 - u1)*Power(u1,2) + 32*Power(m2,5)*q2*(t1 - u1)*Power(t1 + u1,2) + m2*Power(t1,2)*u1*(-2*Power(q2,3)*u1*(19*t1 + 4*u1) + Power(q2,4)*(t1 + 6*u1) + 2*q2*Power(t1,2)*(11*Power(t1,2) - 18*t1*u1 - 20*Power(u1,2)) - 2*Power(t1,3)*(5*Power(t1,2) + t1*u1 - 4*Power(u1,2)) + Power(q2,2)*t1*(-13*Power(t1,2) + 70*t1*u1 + 32*Power(u1,2))) - 4*Power(m2,4)*(2*Power(t1,2)*(t1 - u1)*Power(t1 + u1,2) + 2*Power(q2,2)*(Power(t1,3) + 3*Power(t1,2)*u1 - 9*t1*Power(u1,2) - 3*Power(u1,3)) + q2*t1*(-19*Power(t1,3) - 25*Power(t1,2)*u1 + 23*t1*Power(u1,2) + 29*Power(u1,3))) + 2*Power(m2,3)*(-2*Power(q2,3)*u1*(-Power(t1,2) + 8*t1*u1 + Power(u1,2)) + q2*Power(t1,2)*(31*Power(t1,3) + 62*Power(t1,2)*u1 - 61*t1*Power(u1,2) - 84*Power(u1,3)) + Power(t1,3)*(-9*Power(t1,3) - 15*Power(t1,2)*u1 + 5*t1*Power(u1,2) + 11*Power(u1,3)) + Power(q2,2)*t1*(-4*Power(t1,3) - 27*Power(t1,2)*u1 + 92*t1*Power(u1,2) + 35*Power(u1,3))) - Power(m2,2)*t1*(-4*Power(q2,4)*Power(u1,2) + Power(q2,2)*t1*(3*Power(t1,3) + 49*Power(t1,2)*u1 - 173*t1*Power(u1,2) - 73*Power(u1,3)) + Power(t1,3)*(11*Power(t1,3) + 33*Power(t1,2)*u1 + t1*Power(u1,2) - 21*Power(u1,3)) + Power(q2,3)*(Power(t1,3) + 63*t1*Power(u1,2) + 10*Power(u1,3)) + q2*Power(t1,2)*(-15*Power(t1,3) - 74*Power(t1,2)*u1 + 93*t1*Power(u1,2) + 120*Power(u1,3)))))/(Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*Power(m2 + t1,2)*u1*Power(t1 + u1,2));
r += c7*v7;
dbl v8 = ln(-(u1/m2));
dbl c8 = (2*q2*(32*Power(m2,5)*q2*(t1 - u1)*Power(t1 + u1,2) + Power(t1,2)*Power(q2 - u1,2)*(2*q2 - u1)*Power(u1,3)*(-q2 + t1 + u1) + m2*t1*Power(u1,2)*(-(Power(q2,4)*(6*t1 + u1)) + 2*Power(q2,3)*t1*(4*t1 + 19*u1) + 2*q2*Power(u1,2)*(20*Power(t1,2) + 18*t1*u1 - 11*Power(u1,2)) + 2*Power(u1,3)*(-4*Power(t1,2) + t1*u1 + 5*Power(u1,2)) + Power(q2,2)*u1*(-32*Power(t1,2) - 70*t1*u1 + 13*Power(u1,2))) + 2*Power(m2,3)*(2*Power(q2,3)*t1*(Power(t1,2) + 8*t1*u1 - Power(u1,2)) + q2*Power(u1,2)*(84*Power(t1,3) + 61*Power(t1,2)*u1 - 62*t1*Power(u1,2) - 31*Power(u1,3)) + Power(q2,2)*u1*(-35*Power(t1,3) - 92*Power(t1,2)*u1 + 27*t1*Power(u1,2) + 4*Power(u1,3)) + Power(u1,3)*(-11*Power(t1,3) - 5*Power(t1,2)*u1 + 15*t1*Power(u1,2) + 9*Power(u1,3))) + Power(m2,2)*u1*(-4*Power(q2,4)*Power(t1,2) + q2*Power(u1,2)*(120*Power(t1,3) + 93*Power(t1,2)*u1 - 74*t1*Power(u1,2) - 15*Power(u1,3)) + Power(q2,3)*(10*Power(t1,3) + 63*Power(t1,2)*u1 + Power(u1,3)) + Power(q2,2)*u1*(-73*Power(t1,3) - 173*Power(t1,2)*u1 + 49*t1*Power(u1,2) + 3*Power(u1,3)) + Power(u1,3)*(-21*Power(t1,3) + Power(t1,2)*u1 + 33*t1*Power(u1,2) + 11*Power(u1,3))) - 4*Power(m2,4)*(2*(t1 - u1)*Power(u1,2)*Power(t1 + u1,2) + 2*Power(q2,2)*(3*Power(t1,3) + 9*Power(t1,2)*u1 - 3*t1*Power(u1,2) - Power(u1,3)) + q2*u1*(-29*Power(t1,3) - 23*Power(t1,2)*u1 + 25*t1*Power(u1,2) + 19*Power(u1,3)))))/(t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*Power(m2 + u1,2)*Power(t1 + u1,2));
r += c8*v8;
dbl v9 = Power(ln(chi),2);
dbl c9 = (2*q2*(-8*Power(m2,2)*Power(t1 + u1,2) + (-5 + beta)*t1*u1*Power(-q2 + t1 + u1,2) - m2*(q2 - t1 - u1)*((-4 + beta)*Power(t1,2) + 2*(-10 + beta)*t1*u1 + (-4 + beta)*Power(u1,2))))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c9*v9;
dbl v10 = ln(chi);
dbl c10 = (-8*q2*(m2*Power(t1 + u1,2) + t1*u1*(-q2 + t1 + u1))*(8*Power(m2,2) + 6*m2*(-q2 + t1 + u1) + (1 + Power(beta,2))*Power(-q2 + t1 + u1,2)))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1)*(4*m2 - q2 + t1 + u1));
r += c10*v10;
dbl v11 = Power(ln(chiq),2);
dbl c11 = (2*q2*(8*Power(m2,2)*Power(t1 + u1,2) + (-4 + beta)*m2*(q2 - t1 - u1)*Power(t1 + u1,2) - (-2 + beta)*t1*u1*Power(-q2 + t1 + u1,2)))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c11*v11;
dbl v12 = ln(chiq);
dbl c12 = (-2*betaq*q2*(128*Power(m2,5)*Power(q2,4)*Power(t1 + u1,2)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) - Power(q2 - t1,2)*Power(t1,2)*Power(q2 - u1,2)*Power(u1,2)*(2*Power(q2,5) - 8*Power(q2,4)*(t1 + u1) - t1*u1*Power(t1 + u1,3) + q2*Power(t1 + u1,2)*(2*Power(t1,2) + 5*t1*u1 + 2*Power(u1,2)) + 2*Power(q2,3)*(6*Power(t1,2) + 11*t1*u1 + 6*Power(u1,2)) - 2*Power(q2,2)*(4*Power(t1,3) + 11*Power(t1,2)*u1 + 11*t1*Power(u1,2) + 4*Power(u1,3))) - 32*Power(m2,4)*Power(q2,2)*(-2*t1*Power(t1 - u1,2)*u1*Power(t1 + u1,3) + 2*q2*Power(t1 + u1,2)*(Power(t1,4) + 12*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 12*t1*Power(u1,3) + Power(u1,4)) + Power(q2,3)*(3*Power(t1,4) + 44*Power(t1,3)*u1 + 114*Power(t1,2)*Power(u1,2) + 44*t1*Power(u1,3) + 3*Power(u1,4)) - 4*Power(q2,2)*(Power(t1,5) + 13*Power(t1,4)*u1 + 42*Power(t1,3)*Power(u1,2) + 42*Power(t1,2)*Power(u1,3) + 13*t1*Power(u1,4) + Power(u1,5))) + 8*Power(m2,3)*q2*(-2*t1*Power(t1 - u1,2)*u1*Power(t1 + u1,3)*(Power(t1,2) + Power(u1,2)) + Power(q2,5)*(3*Power(t1,4) + 60*Power(t1,3)*u1 + 226*Power(t1,2)*Power(u1,2) + 60*t1*Power(u1,3) + 3*Power(u1,4)) - 8*Power(q2,4)*(Power(t1,5) + 18*Power(t1,4)*u1 + 77*Power(t1,3)*Power(u1,2) + 77*Power(t1,2)*Power(u1,3) + 18*t1*Power(u1,4) + Power(u1,5)) + q2*Power(t1 + u1,2)*(Power(t1,6) + 15*Power(t1,5)*u1 + 14*Power(t1,4)*Power(u1,2) + 24*Power(t1,3)*Power(u1,3) + 14*Power(t1,2)*Power(u1,4) + 15*t1*Power(u1,5) + Power(u1,6)) + 4*Power(q2,3)*(2*Power(t1,6) + 34*Power(t1,5)*u1 + 159*Power(t1,4)*Power(u1,2) + 214*Power(t1,3)*Power(u1,3) + 159*Power(t1,2)*Power(u1,4) + 34*t1*Power(u1,5) + 2*Power(u1,6)) - 2*Power(q2,2)*(2*Power(t1,7) + 31*Power(t1,6)*u1 + 151*Power(t1,5)*Power(u1,2) + 216*Power(t1,4)*Power(u1,3) + 216*Power(t1,3)*Power(u1,4) + 151*Power(t1,2)*Power(u1,5) + 31*t1*Power(u1,6) + 2*Power(u1,7))) + m2*t1*u1*(4*Power(q2,8)*(Power(t1,2) + 12*t1*u1 + Power(u1,2)) + Power(t1,3)*Power(u1,3)*Power(t1 + u1,2)*(5*Power(t1,2) - 6*t1*u1 + 5*Power(u1,2)) - 4*Power(q2,7)*(5*Power(t1,3) + 59*Power(t1,2)*u1 + 59*t1*Power(u1,2) + 5*Power(u1,3)) + Power(q2,6)*(40*Power(t1,4) + 474*Power(t1,3)*u1 + 932*Power(t1,2)*Power(u1,2) + 474*t1*Power(u1,3) + 40*Power(u1,4)) - 8*q2*Power(t1,2)*Power(u1,2)*(3*Power(t1,5) + 10*Power(t1,4)*u1 + 7*Power(t1,3)*Power(u1,2) + 7*Power(t1,2)*Power(u1,3) + 10*t1*Power(u1,4) + 3*Power(u1,5)) - 4*Power(q2,5)*(10*Power(t1,5) + 127*Power(t1,4)*u1 + 375*Power(t1,3)*Power(u1,2) + 375*Power(t1,2)*Power(u1,3) + 127*t1*Power(u1,4) + 10*Power(u1,5)) + Power(q2,2)*t1*u1*(15*Power(t1,6) + 194*Power(t1,5)*u1 + 395*Power(t1,4)*Power(u1,2) + 384*Power(t1,3)*Power(u1,3) + 395*Power(t1,2)*Power(u1,4) + 194*t1*Power(u1,5) + 15*Power(u1,6)) + Power(q2,4)*(20*Power(t1,6) + 313*Power(t1,5)*u1 + 1288*Power(t1,4)*Power(u1,2) + 1838*Power(t1,3)*Power(u1,3) + 1288*Power(t1,2)*Power(u1,4) + 313*t1*Power(u1,5) + 20*Power(u1,6)) - 2*Power(q2,3)*(2*Power(t1,7) + 53*Power(t1,6)*u1 + 329*Power(t1,5)*Power(u1,2) + 560*Power(t1,4)*Power(u1,3) + 560*Power(t1,3)*Power(u1,4) + 329*Power(t1,2)*Power(u1,5) + 53*t1*Power(u1,6) + 2*Power(u1,7))) - 2*Power(m2,2)*(-2*Power(t1,3)*Power(t1 - u1,2)*Power(u1,3)*Power(t1 + u1,3) + Power(q2,7)*(Power(t1,4) + 36*Power(t1,3)*u1 + 214*Power(t1,2)*Power(u1,2) + 36*t1*Power(u1,3) + Power(u1,4)) + 2*q2*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(9*Power(t1,4) + Power(t1,3)*u1 + 4*Power(t1,2)*Power(u1,2) + t1*Power(u1,3) + 9*Power(u1,4)) - 4*Power(q2,6)*(Power(t1,5) + 33*Power(t1,4)*u1 + 206*Power(t1,3)*Power(u1,2) + 206*Power(t1,2)*Power(u1,3) + 33*t1*Power(u1,4) + Power(u1,5)) + 2*Power(q2,5)*(3*Power(t1,6) + 94*Power(t1,5)*u1 + 645*Power(t1,4)*Power(u1,2) + 1084*Power(t1,3)*Power(u1,3) + 645*Power(t1,2)*Power(u1,4) + 94*t1*Power(u1,5) + 3*Power(u1,6)) - 4*Power(q2,4)*(Power(t1,7) + 34*Power(t1,6)*u1 + 260*Power(t1,5)*Power(u1,2) + 581*Power(t1,4)*Power(u1,3) + 581*Power(t1,3)*Power(u1,4) + 260*Power(t1,2)*Power(u1,5) + 34*t1*Power(u1,6) + Power(u1,7)) - Power(q2,2)*t1*u1*(9*Power(t1,7) + 145*Power(t1,6)*u1 + 271*Power(t1,5)*Power(u1,2) + 439*Power(t1,4)*Power(u1,3) + 439*Power(t1,3)*Power(u1,4) + 271*Power(t1,2)*Power(u1,5) + 145*t1*Power(u1,6) + 9*Power(u1,7)) + Power(q2,3)*(Power(t1,8) + 53*Power(t1,7)*u1 + 491*Power(t1,6)*Power(u1,2) + 1151*Power(t1,5)*Power(u1,3) + 1648*Power(t1,4)*Power(u1,4) + 1151*Power(t1,3)*Power(u1,5) + 491*Power(t1,2)*Power(u1,6) + 53*t1*Power(u1,7) + Power(u1,8)))))/(Power(-4*m2*q2 + Power(q2 - t1,2),2)*Power(t1,2)*Power(-4*m2*q2 + Power(q2 - u1,2),2)*Power(u1,2)*Power(t1 + u1,2));
r += c12*v12;
dbl v13 = zeta2;
dbl c13 = (4*q2*(8*Power(m2,2)*Power(t1 + u1,2) - (-5 + 2*beta)*t1*u1*Power(-q2 + t1 + u1,2) + 2*m2*(q2 - t1 - u1)*((-2 + beta)*Power(t1,2) + 2*(-5 + beta)*t1*u1 + (-2 + beta)*Power(u1,2))))/(beta*t1*u1*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c13*v13;
dbl v14 = 1;
dbl c14 = (2*q2*(64*Power(m2,5)*Power(q2,2)*Power(t1 + u1,2) - (q2 - t1)*Power(t1,2)*(q2 - u1)*Power(u1,2)*(4*Power(q2,3) - Power(t1,3) - 5*Power(t1,2)*u1 - 5*t1*Power(u1,2) - Power(u1,3) - 9*Power(q2,2)*(t1 + u1) + 2*q2*(3*Power(t1,2) + 7*t1*u1 + 3*Power(u1,2))) - 4*Power(m2,4)*q2*(8*Power(q2,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + Power(t1 + u1,2)*(5*Power(t1,2) + 2*t1*u1 + 5*Power(u1,2)) - 8*q2*(3*Power(t1,3) + 11*Power(t1,2)*u1 + 11*t1*Power(u1,2) + 3*Power(u1,3))) + m2*t1*u1*(-4*Power(q2,5)*(t1 + u1) + t1*u1*Power(t1 + u1,2)*(2*Power(t1,2) + 9*t1*u1 + 2*Power(u1,2)) + Power(q2,4)*(17*Power(t1,2) + 64*t1*u1 + 17*Power(u1,2)) - Power(q2,3)*(24*Power(t1,3) + 143*Power(t1,2)*u1 + 143*t1*Power(u1,2) + 24*Power(u1,3)) + Power(q2,2)*(13*Power(t1,4) + 121*Power(t1,3)*u1 + 198*Power(t1,2)*Power(u1,2) + 121*t1*Power(u1,3) + 13*Power(u1,4)) - q2*(2*Power(t1,5) + 40*Power(t1,4)*u1 + 95*Power(t1,3)*Power(u1,2) + 95*Power(t1,2)*Power(u1,3) + 40*t1*Power(u1,4) + 2*Power(u1,5))) + Power(m2,3)*(t1*u1*Power(t1 + u1,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) + 4*Power(q2,4)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) - 8*Power(q2,3)*(5*Power(t1,3) + 31*Power(t1,2)*u1 + 31*t1*Power(u1,2) + 5*Power(u1,3)) + Power(q2,2)*(43*Power(t1,4) + 344*Power(t1,3)*u1 + 570*Power(t1,2)*Power(u1,2) + 344*t1*Power(u1,3) + 43*Power(u1,4)) - q2*(17*Power(t1,5) + 93*Power(t1,4)*u1 + 162*Power(t1,3)*Power(u1,2) + 162*Power(t1,2)*Power(u1,3) + 93*t1*Power(u1,4) + 17*Power(u1,5))) + Power(m2,2)*(-4*Power(q2,5)*t1*u1 + t1*u1*(t1 + u1)*Power(Power(t1,2) + 4*t1*u1 + Power(u1,2),2) + 4*Power(q2,4)*(Power(t1,3) + 14*Power(t1,2)*u1 + 14*t1*Power(u1,2) + Power(u1,3)) - Power(q2,3)*(9*Power(t1,4) + 149*Power(t1,3)*u1 + 336*Power(t1,2)*Power(u1,2) + 149*t1*Power(u1,3) + 9*Power(u1,4)) + Power(q2,2)*(6*Power(t1,5) + 131*Power(t1,4)*u1 + 407*Power(t1,3)*Power(u1,2) + 407*Power(t1,2)*Power(u1,3) + 131*t1*Power(u1,4) + 6*Power(u1,5)) - q2*(Power(t1,6) + 45*Power(t1,5)*u1 + 142*Power(t1,4)*Power(u1,2) + 200*Power(t1,3)*Power(u1,3) + 142*Power(t1,2)*Power(u1,4) + 45*t1*Power(u1,5) + Power(u1,6)))))/((-4*m2*q2 + Power(q2 - t1,2))*t1*(m2 + t1)*(4*m2*q2 - Power(q2 - u1,2))*u1*(m2 + u1)*Power(t1 + u1,2));
r += c14*v14;

return r;
}
dbl SVOKDelta1L(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);

return (-16*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1)*((-2*m2 + q2 + sp)*ln(chi) + beta*(q2 + sp)*(ln(-(t1/m2)) - ln(-(u1/m2)))))/(beta*Power(sp,2)*(q2 + sp)*t1*u1);
}

dbl SVQEDDelta1L(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);

return (16*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1)*(beta*(q2 + sp) + (-2*m2 + q2 + sp)*ln(chi)))/(beta*Power(sp,2)*(q2 + sp)*t1*u1);
}

dbl SVOKDelta2L(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return (-16*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1))/(Power(sp,2)*t1*u1);
}

dbl SVOKScaleRL(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return (-44*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1))/(3.*Power(sp,2)*t1*u1);
}

dbl SVOKScaleFL(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return (-4*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1)*(-11 + 12*ln(-(u1/m2))))/(3.*Power(sp,2)*t1*u1);
}

dbl SVOKScaleFDelta1L(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return (16*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1))/(Power(sp,2)*t1*u1);
}

dbl SVOKP(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);
dbl betaq = sqrt(1.-4*m2/q2);
dbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) + Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) + Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) + Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)));
dbl c0 = (-64*Power(m2,3)*Power(q2,2)*u1 - Power(q2 - u1,3)*u1*(2*Power(q2,2) + 2*Power(t1,2) + 3*t1*u1 + Power(u1,2) - 2*q2*(2*t1 + u1)) + 8*Power(m2,2)*q2*(q2*(Power(t1,2) + 5*t1*u1 - 6*Power(u1,2)) + u1*(-3*Power(t1,2) - 4*t1*u1 + Power(u1,2))) + 2*m2*(6*Power(q2,4)*u1 + Power(u1,3)*(3*Power(t1,2) + 4*t1*u1 + Power(u1,2)) - q2*Power(u1,2)*(12*Power(t1,2) + 19*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*u1*(4*Power(t1,2) + 15*t1*u1 + 2*Power(u1,2)) - Power(q2,3)*(Power(t1,2) + 13*t1*u1 + 10*Power(u1,2))))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*(t1 + u1));
r += c0*v0;
dbl v1 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))));
dbl c1 = (64*Power(m2,3)*Power(q2,2)*u1 + Power(q2 - u1,3)*u1*(2*Power(q2,2) + 2*Power(t1,2) + 3*t1*u1 + Power(u1,2) - 2*q2*(2*t1 + u1)) - 8*Power(m2,2)*q2*(q2*(Power(t1,2) + 5*t1*u1 - 6*Power(u1,2)) + u1*(-3*Power(t1,2) - 4*t1*u1 + Power(u1,2))) - 2*m2*(6*Power(q2,4)*u1 + Power(u1,3)*(3*Power(t1,2) + 4*t1*u1 + Power(u1,2)) - q2*Power(u1,2)*(12*Power(t1,2) + 19*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*u1*(4*Power(t1,2) + 15*t1*u1 + 2*Power(u1,2)) - Power(q2,3)*(Power(t1,2) + 13*t1*u1 + 10*Power(u1,2))))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*(t1 + u1));
r += c1*v1;
dbl v2 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c2 = -(64*Power(m2,3)*Power(q2,2)*t1 + Power(q2 - t1,3)*t1*(2*Power(q2,2) + Power(t1,2) + 3*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1)) + 8*Power(m2,2)*q2*(q2*(6*Power(t1,2) - 5*t1*u1 - Power(u1,2)) + t1*(-Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))) - 2*m2*(6*Power(q2,4)*t1 - Power(q2,3)*(10*Power(t1,2) + 13*t1*u1 + Power(u1,2)) + Power(t1,3)*(Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + 2*Power(q2,2)*t1*(2*Power(t1,2) + 15*t1*u1 + 4*Power(u1,2)) - q2*Power(t1,2)*(Power(t1,2) + 19*t1*u1 + 12*Power(u1,2))))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + t1)/m2);
dbl c3 = (2*m2*t1*(2*Power(t1,3) + q2*t1*u1 + 2*Power(t1,2)*u1 - q2*Power(u1,2)) + 2*Power(m2,2)*(5*Power(t1,3) + 7*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3)) - Power(t1,3)*(2*Power(q2,2) + Power(t1,2) + 3*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1)))/(2.*Power(t1,3)*u1*(t1 + u1));
r += c3*v3;
dbl v4 = Li2((m2 + u1)/m2);
dbl c4 = (2*Power(m2,2)*(Power(t1,3) + 3*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 5*Power(u1,3)) + 2*m2*u1*(q2*t1*(-t1 + u1) + 2*Power(u1,2)*(t1 + u1)) - Power(u1,3)*(2*Power(q2,2) + 2*Power(t1,2) + 3*t1*u1 + Power(u1,2) - 2*q2*(2*t1 + u1)))/(2.*t1*Power(u1,3)*(t1 + u1));
r += c4*v4;
dbl v5 = Li2(1 - t1/(chi*u1)) - Li2(1 - u1/(chi*t1)) + Power(ln((chi*u1)/t1),2)/2.;
dbl c5 = -(((Power(t1,2) + Power(u1,2))*(2*m2*Power(t1 + u1,2) + t1*u1*(-2*q2 + t1 + u1)))/(Power(t1,2)*Power(u1,2)*(t1 + u1)));
r += c5*v5;
dbl v6 = Li2(-chi) + ln(chi)*ln(1 + chi);
dbl c6 = (8*Power(m2,2)*(t1 + u1)*(2*Power(t1,3) + Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(2*q2 + u1)) + t1*u1*(-2*Power(q2,3)*(t1 + u1) + 12*Power(q2,2)*(Power(t1,2) + t1*u1 + Power(u1,2)) + Power(t1 + u1,2)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) - 3*q2*(5*Power(t1,3) + 9*Power(t1,2)*u1 + 9*t1*Power(u1,2) + 5*Power(u1,3))) + m2*(8*Power(t1,5) + 34*Power(t1,4)*u1 + 54*Power(t1,3)*Power(u1,2) + 54*Power(t1,2)*Power(u1,3) + 34*t1*Power(u1,4) + 8*Power(u1,5) + 4*Power(q2,2)*t1*u1*(t1 + u1) - 2*q2*(4*Power(t1,4) + 17*Power(t1,3)*u1 + 18*Power(t1,2)*Power(u1,2) + 17*t1*Power(u1,3) + 4*Power(u1,4))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1));
r += c6*v6;
dbl v7 = Li2(chi) + ln(1 - chi)*ln(chi);
dbl c7 = (4*(Power(t1,2) + Power(u1,2))*(4*Power(m2,2)*Power(t1 + u1,2) + t1*u1*(2*Power(q2,2) - 3*q2*(t1 + u1) + Power(t1 + u1,2)) + 2*m2*(Power(t1,3) + 4*Power(t1,2)*u1 + 4*t1*Power(u1,2) + Power(u1,3) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2)))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1));
r += c7*v7;
dbl v8 = Li2(-(chi/chiq)) + Li2(-(chi*chiq)) + ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq);
dbl c8 = -((8*Power(m2,2)*(t1 + u1)*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)) + 2*m2*(t1 + u1)*(2*Power(q2,2)*t1*u1 + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(2*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 2*Power(u1,3))) + t1*u1*(-2*Power(q2,3)*(t1 + u1) + 4*Power(q2,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) + Power(t1 + u1,2)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) - 3*q2*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1)));
r += c8*v8;
dbl v9 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c9 = (2*m2*Power(t1 + u1,2) - (2*q2 - t1 - u1)*(Power(t1,2) + Power(u1,2)))/(2.*t1*u1*(t1 + u1));
r += c9*v9;
dbl v10 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c10 = (t1*u1*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)) + 2*m2*Power(t1 + u1,2)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2)))/(Power(t1,2)*Power(u1,2)*(t1 + u1));
r += c10*v10;
dbl v11 = ln(chi)*ln(-(t1/m2));
dbl c11 = (8*Power(m2,2)*(2*q2*Power(t1,2) - Power(t1,3) + 2*t1*Power(u1,2) + Power(u1,3)) + t1*(-2*Power(q2,3)*t1 + Power(t1 + u1,2)*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*(3*Power(t1,2) + 3*t1*u1 + Power(u1,2)) - 3*q2*(2*Power(t1,3) + 4*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3))) + 2*m2*(2*Power(q2,2)*Power(t1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 6*t1*Power(u1,2) + 2*Power(u1,3))))/(beta*Power(t1,2)*u1*(t1 + u1)*(-q2 + t1 + u1));
r += c11*v11;
dbl v12 = ln(-(t1/m2));
dbl c12 = ((q2 - t1)*Power(t1,4)*(2*q2 - t1 - u1)*u1 + 4*Power(m2,3)*q2*Power(t1 + u1,3) - Power(m2,2)*(t1 + u1)*(Power(t1,2)*Power(t1 + u1,2) + 2*q2*t1*(Power(t1,2) - 2*t1*u1 - 3*Power(u1,2)) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2))) + m2*t1*(Power(q2,3)*u1*(t1 + u1) + Power(t1,2)*(t1 - u1)*Power(t1 + u1,2) + Power(q2,2)*u1*(Power(t1,2) - 4*t1*u1 - Power(u1,2)) + q2*(-3*Power(t1,4) - 5*Power(t1,3)*u1 + 2*t1*Power(u1,3))))/((-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*(m2 + t1)*u1*(t1 + u1));
r += c12*v12;
dbl v13 = ln(chi)*ln(-(u1/m2));
dbl c13 = (8*Power(m2,2)*(Power(t1,3) + 2*Power(t1,2)*u1 + (2*q2 - u1)*Power(u1,2)) + u1*(-2*Power(q2,3)*u1 + Power(t1 + u1,2)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2)) + 2*Power(q2,2)*(Power(t1,2) + 3*t1*u1 + 3*Power(u1,2)) - 3*q2*(Power(t1,3) + 3*Power(t1,2)*u1 + 4*t1*Power(u1,2) + 2*Power(u1,3))) + 2*m2*(2*Power(q2,2)*Power(u1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(2*Power(t1,3) + 6*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3))))/(beta*t1*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1));
r += c13*v13;
dbl v14 = ln(-(u1/m2));
dbl c14 = (4*Power(m2,3)*q2*Power(t1 + u1,3) - t1*(q2 - u1)*Power(u1,4)*(-2*q2 + t1 + u1) - Power(m2,2)*(t1 + u1)*(Power(u1,2)*Power(t1 + u1,2) + 2*q2*u1*(-3*Power(t1,2) - 2*t1*u1 + Power(u1,2)) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2))) + m2*u1*(Power(q2,3)*t1*(t1 + u1) - (t1 - u1)*Power(u1,2)*Power(t1 + u1,2) - Power(q2,2)*t1*(Power(t1,2) + 4*t1*u1 - Power(u1,2)) + q2*(2*Power(t1,3)*u1 - 5*t1*Power(u1,3) - 3*Power(u1,4))))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2)*(m2 + u1)*(t1 + u1));
r += c14*v14;
dbl v15 = Power(ln(chi),2);
dbl c15 = (-8*Power(m2,2)*Power(t1 + u1,2)*(2*Power(t1,3) + 3*(1 + beta)*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-((2 + 3*beta)*q2) + 3*(1 + beta)*u1)) - t1*(q2 - t1 - u1)*u1*(t1 + u1)*(2*(1 + beta)*Power(q2,2)*(t1 + u1) - 2*q2*((-3 + 7*beta)*Power(t1,2) + 4*(1 + beta)*t1*u1 + (-3 + 7*beta)*Power(u1,2)) + (t1 + u1)*((-3 + 7*beta)*Power(t1,2) + 4*(1 + beta)*t1*u1 + (-3 + 7*beta)*Power(u1,2))) + m2*(4*Power(q2,2)*t1*u1*((1 + beta)*Power(t1,2) + 2*t1*u1 + (1 + beta)*Power(u1,2)) - 2*q2*(t1 + u1)*(4*(-1 + beta)*Power(t1,4) + 5*(-3 + 2*beta)*Power(t1,3)*u1 + 2*(1 + 4*beta)*Power(t1,2)*Power(u1,2) + 5*(-3 + 2*beta)*t1*Power(u1,3) + 4*(-1 + beta)*Power(u1,4)) + 2*Power(t1 + u1,2)*(4*(-1 + beta)*Power(t1,4) + (-11 + 8*beta)*Power(t1,3)*u1 + 2*(-1 + 4*beta)*Power(t1,2)*Power(u1,2) + (-11 + 8*beta)*t1*Power(u1,3) + 4*(-1 + beta)*Power(u1,4))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c15*v15;
dbl v16 = ln(chi);
dbl c16 = (2*beta*(-4*Power(m2,2)*q2*Power(t1 + u1,2) + t1*u1*Power(-q2 + t1 + u1,3) + m2*(-3*q2*Power(t1 + u1,3) + Power(t1 + u1,4) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)))))/(t1*u1*Power(t1 + u1,2)*(4*m2 - q2 + t1 + u1));
r += c16*v16;
dbl v17 = Power(ln(chiq),2);
dbl c17 = (-4*m2*(q2 - t1 - u1)*(-2*(-1 + beta)*Power(t1,5) + (9 - 5*beta)*Power(t1,4)*u1 - 2*(-1 + beta)*Power(u1,5) + t1*Power(u1,3)*((-2 + beta)*q2 + (9 - 5*beta)*u1) + Power(t1,2)*Power(u1,2)*(-4*q2 + (17 - 5*beta)*u1) + Power(t1,3)*u1*((-2 + beta)*q2 + (17 - 5*beta)*u1)) + 8*Power(m2,2)*Power(t1 + u1,2)*(2*Power(t1,3) + 3*beta*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*((4 - 3*beta)*q2 + 3*beta*u1)) + t1*(q2 - t1 - u1)*u1*(t1 + u1)*(2*(-2 + beta)*Power(q2,2)*(t1 + u1) - 2*q2*((-6 + 5*beta)*Power(t1,2) + 4*(-2 + beta)*t1*u1 + (-6 + 5*beta)*Power(u1,2)) + (t1 + u1)*((-6 + 5*beta)*Power(t1,2) + 4*(-2 + beta)*t1*u1 + (-6 + 5*beta)*Power(u1,2))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c17*v17;
dbl v18 = ln(chiq);
dbl c18 = (betaq*q2*(-32*Power(m2,3)*Power(q2,2)*Power(t1 + u1,2) + 8*Power(m2,2)*q2*(-4*q2*Power(t1 + u1,3) + Power(t1 + u1,2)*(Power(t1,2) + Power(u1,2)) + 2*Power(q2,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2))) + (q2 - t1)*t1*(q2 - u1)*u1*(2*Power(q2,3) - 6*Power(q2,2)*(t1 + u1) - Power(t1 + u1,3) + 2*q2*(2*Power(t1,2) + 5*t1*u1 + 2*Power(u1,2))) - 2*m2*(Power(t1,2)*Power(u1,2)*Power(t1 + u1,2) - q2*Power(t1 + u1,3)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + Power(q2,4)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) - 4*Power(q2,3)*(Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + Power(u1,3)) + Power(q2,2)*(3*Power(t1,4) + 26*Power(t1,3)*u1 + 38*Power(t1,2)*Power(u1,2) + 26*t1*Power(u1,3) + 3*Power(u1,4)))))/((-4*m2*q2 + Power(q2 - t1,2))*t1*(4*m2*q2 - Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c18*v18;
dbl v19 = zeta2;
dbl c19 = (-2*Power(m2,2)*Power(t1 + u1,2)*(beta*Power(t1,5) + beta*Power(u1,4)*(-q2 + u1) - 2*Power(t1,3)*u1*(beta*q2 + 6*(1 + 2*beta)*u1) + t1*Power(u1,3)*(-2*beta*q2 + (-8 + 3*beta)*u1) + Power(t1,4)*(-(beta*q2) + (-8 + 3*beta)*u1) + 2*Power(t1,2)*Power(u1,2)*((4 + 13*beta)*q2 - 6*(u1 + 2*beta*u1))) + Power(t1,2)*(q2 - t1 - u1)*Power(u1,2)*(t1 + u1)*(2*(1 + 2*beta)*Power(q2,2)*(t1 + u1) - 2*q2*((-3 + 6*beta)*Power(t1,2) + 3*(-1 + 2*beta)*Power(u1,2) + 4*t1*(u1 + 2*beta*u1)) + (t1 + u1)*((-3 + 6*beta)*Power(t1,2) + 3*(-1 + 2*beta)*Power(u1,2) + 4*t1*(u1 + 2*beta*u1))) - 2*m2*t1*u1*(Power(t1 + u1,2)*(4*(-1 + beta)*Power(t1,4) + (-11 + 4*beta)*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + (-11 + 4*beta)*t1*Power(u1,3) + 4*(-1 + beta)*Power(u1,4)) - q2*(t1 + u1)*((-4 + 5*beta)*Power(t1,4) + 5*(-3 + 2*beta)*Power(t1,3)*u1 - 2*(-1 + beta)*Power(t1,2)*Power(u1,2) + 5*(-3 + 2*beta)*t1*Power(u1,3) + (-4 + 5*beta)*Power(u1,4)) + Power(q2,2)*(beta*Power(t1,4) - 2*(-2 + beta)*Power(t1,2)*Power(u1,2) + 2*(1 + 3*beta)*t1*Power(u1,3) + beta*Power(u1,4) + 2*Power(t1,3)*(u1 + 3*beta*u1))))/(2.*beta*Power(t1,3)*Power(u1,3)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c19*v19;
dbl v20 = 1;
dbl c20 = -(((Power(t1,2) + Power(u1,2))*(-(q2*t1*u1) + m2*Power(t1 + u1,2)))/(Power(t1,2)*Power(u1,2)*(t1 + u1)));
r += c20*v20;

return r;
}

dbl SVQEDP(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);
dbl betaq = sqrt(1.-4*m2/q2);
dbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (-128*Power(m2,4)*Power(q2,2)*(2*q2*Power(t1,2) + u1*Power(t1 + u1,2)) + Power(q2 - t1,5)*t1*(2*Power(q2,2)*t1 + 2*Power(t1,3) + 4*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3) - 2*q2*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2))) + 8*Power(m2,3)*q2*(8*Power(q2,3)*Power(t1,2) + 2*q2*t1*(10*Power(t1,3) - 13*Power(t1,2)*u1 - 26*t1*Power(u1,2) - 15*Power(u1,3)) + Power(t1,2)*(-5*Power(t1,3) - 3*Power(t1,2)*u1 + 5*t1*Power(u1,2) + 3*Power(u1,3)) + 4*Power(q2,2)*(-7*Power(t1,3) + 9*Power(t1,2)*u1 + 10*t1*Power(u1,2) + 4*Power(u1,3))) - 2*m2*(q2 - t1)*(10*Power(q2,5)*Power(t1,2) + Power(t1,7) - Power(t1,5)*Power(u1,2) - Power(q2,4)*(39*Power(t1,3) + 23*Power(t1,2)*u1 + 14*t1*Power(u1,2) + 2*Power(u1,3)) + q2*Power(t1,3)*(7*Power(t1,3) + 27*Power(t1,2)*u1 + 24*t1*Power(u1,2) + 10*Power(u1,3)) + Power(q2,3)*t1*(57*Power(t1,3) + 69*Power(t1,2)*u1 + 53*t1*Power(u1,2) + 13*Power(u1,3)) - Power(q2,2)*Power(t1,2)*(36*Power(t1,3) + 73*Power(t1,2)*u1 + 59*t1*Power(u1,2) + 24*Power(u1,3))) + 2*Power(m2,2)*(24*Power(q2,5)*Power(t1,2) + 2*Power(q2,2)*Power(t1,2)*(11*Power(t1,3) - 64*Power(t1,2)*u1 - 83*t1*Power(u1,2) - 48*Power(u1,3)) + Power(t1,4)*(5*Power(t1,3) + 7*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3)) - 4*Power(q2,4)*(14*Power(t1,3) + 23*Power(t1,2)*u1 + 18*t1*Power(u1,2) + 5*Power(u1,3)) + q2*Power(t1,3)*(-23*Power(t1,3) + 7*Power(t1,2)*u1 + 31*t1*Power(u1,2) + 17*Power(u1,3)) + 2*Power(q2,3)*t1*(14*Power(t1,3) + 101*Power(t1,2)*u1 + 108*t1*Power(u1,2) + 41*Power(u1,3))))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),3)*Power(t1,2)*u1*(t1 + u1));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (-128*Power(m2,4)*Power(q2,2)*(Power(t1,3) + 2*Power(t1,2)*u1 + 2*q2*Power(u1,2) + t1*Power(u1,2)) + Power(q2 - u1,5)*u1*(Power(t1,3) + 2*Power(q2,2)*u1 + 3*Power(t1,2)*u1 + 4*t1*Power(u1,2) + 2*Power(u1,3) - 2*q2*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))) + 8*Power(m2,3)*q2*(8*Power(q2,3)*Power(u1,2) - 2*q2*u1*(15*Power(t1,3) + 26*Power(t1,2)*u1 + 13*t1*Power(u1,2) - 10*Power(u1,3)) + 4*Power(q2,2)*(4*Power(t1,3) + 10*Power(t1,2)*u1 + 9*t1*Power(u1,2) - 7*Power(u1,3)) + Power(u1,2)*(3*Power(t1,3) + 5*Power(t1,2)*u1 - 3*t1*Power(u1,2) - 5*Power(u1,3))) + 2*Power(m2,2)*(24*Power(q2,5)*Power(u1,2) + q2*Power(u1,3)*(17*Power(t1,3) + 31*Power(t1,2)*u1 + 7*t1*Power(u1,2) - 23*Power(u1,3)) - 2*Power(q2,2)*Power(u1,2)*(48*Power(t1,3) + 83*Power(t1,2)*u1 + 64*t1*Power(u1,2) - 11*Power(u1,3)) + Power(u1,4)*(Power(t1,3) + 3*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 5*Power(u1,3)) - 4*Power(q2,4)*(5*Power(t1,3) + 18*Power(t1,2)*u1 + 23*t1*Power(u1,2) + 14*Power(u1,3)) + 2*Power(q2,3)*u1*(41*Power(t1,3) + 108*Power(t1,2)*u1 + 101*t1*Power(u1,2) + 14*Power(u1,3))) - 2*m2*(q2 - u1)*(10*Power(q2,5)*Power(u1,2) - Power(t1,2)*Power(u1,5) + Power(u1,7) + q2*Power(u1,3)*(10*Power(t1,3) + 24*Power(t1,2)*u1 + 27*t1*Power(u1,2) + 7*Power(u1,3)) - Power(q2,2)*Power(u1,2)*(24*Power(t1,3) + 59*Power(t1,2)*u1 + 73*t1*Power(u1,2) + 36*Power(u1,3)) - Power(q2,4)*(2*Power(t1,3) + 14*Power(t1,2)*u1 + 23*t1*Power(u1,2) + 39*Power(u1,3)) + Power(q2,3)*u1*(13*Power(t1,3) + 53*Power(t1,2)*u1 + 69*t1*Power(u1,2) + 57*Power(u1,3))))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)*Power(u1,2)*(t1 + u1));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (-2*m2*t1*(t1 - u1)*(Power(t1,2) + q2*u1 + t1*u1) - 2*Power(m2,2)*(5*Power(t1,3) + 7*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3)) + Power(t1,2)*(2*Power(q2,2)*t1 + 2*Power(t1,3) + 4*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3) - 2*q2*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2))))/(2.*Power(t1,3)*u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (-2*Power(m2,2)*(Power(t1,3) + 3*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 5*Power(u1,3)) + 2*m2*(t1 - u1)*u1*(q2*t1 + u1*(t1 + u1)) + Power(u1,2)*(Power(t1,3) + 2*Power(q2,2)*u1 + 3*Power(t1,2)*u1 + 4*t1*Power(u1,2) + 2*Power(u1,3) - 2*q2*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))))/(2.*t1*Power(u1,3)*(t1 + u1));
r += c3*v3;
dbl v4 = Li2(-chi) + ln(chi)*ln(1 + chi);
dbl c4 = -((8*Power(m2,2)*(t1 + u1)*(2*Power(t1,3) + Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(2*q2 + u1)) + t1*u1*(-2*Power(q2,3)*(t1 + u1) + 12*Power(q2,2)*(Power(t1,2) + t1*u1 + Power(u1,2)) + Power(t1 + u1,2)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) - 3*q2*(5*Power(t1,3) + 9*Power(t1,2)*u1 + 9*t1*Power(u1,2) + 5*Power(u1,3))) + m2*(8*Power(t1,5) + 34*Power(t1,4)*u1 + 54*Power(t1,3)*Power(u1,2) + 54*Power(t1,2)*Power(u1,3) + 34*t1*Power(u1,4) + 8*Power(u1,5) + 4*Power(q2,2)*t1*u1*(t1 + u1) - 2*q2*(4*Power(t1,4) + 17*Power(t1,3)*u1 + 18*Power(t1,2)*Power(u1,2) + 17*t1*Power(u1,3) + 4*Power(u1,4))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1)));
r += c4*v4;
dbl v5 = Li2(chi) + ln(1 - chi)*ln(chi);
dbl c5 = (-4*(Power(t1,2) + Power(u1,2))*(4*Power(m2,2)*Power(t1 + u1,2) + t1*u1*(2*Power(q2,2) - 3*q2*(t1 + u1) + Power(t1 + u1,2)) + 2*m2*(Power(t1,3) + 4*Power(t1,2)*u1 + 4*t1*Power(u1,2) + Power(u1,3) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2)))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1));
r += c5*v5;
dbl v6 = Li2(-(chi/chiq)) + Li2(-(chi*chiq)) + ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq);
dbl c6 = (8*Power(m2,2)*(t1 + u1)*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)) + 2*m2*(t1 + u1)*(2*Power(q2,2)*t1*u1 + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(2*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 2*Power(u1,3))) + t1*u1*(-2*Power(q2,3)*(t1 + u1) + 4*Power(q2,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) + Power(t1 + u1,2)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) - 3*q2*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1));
r += c6*v6;
dbl v7 = ln(chi)*ln(-(t1/m2));
dbl c7 = -((8*Power(m2,2)*(2*q2*Power(t1,2) - Power(t1,3) + 2*t1*Power(u1,2) + Power(u1,3)) + t1*(-2*Power(q2,3)*t1 + Power(t1 + u1,2)*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*(3*Power(t1,2) + 3*t1*u1 + Power(u1,2)) - 3*q2*(2*Power(t1,3) + 4*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3))) + 2*m2*(2*Power(q2,2)*Power(t1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 6*t1*Power(u1,2) + 2*Power(u1,3))))/(beta*Power(t1,2)*u1*(t1 + u1)*(-q2 + t1 + u1)));
r += c7*v7;
dbl v8 = ln(-(t1/m2));
dbl c8 = (-32*Power(m2,5)*Power(q2,2)*Power(t1 + u1,3) + Power(q2 - t1,2)*Power(t1,4)*u1*(4*Power(q2,3) - 8*Power(q2,2)*(t1 + u1) + 2*q2*(3*Power(t1,2) + 6*t1*u1 + 2*Power(u1,2)) - t1*(2*Power(t1,2) + 5*t1*u1 + 3*Power(u1,2))) + 8*Power(m2,4)*q2*(2*Power(q2,2)*(Power(t1,3) + 5*Power(t1,2)*u1 + 5*t1*Power(u1,2) + Power(u1,3)) - 2*q2*t1*(5*Power(t1,3) + 12*Power(t1,2)*u1 + 15*t1*Power(u1,2) + 4*Power(u1,3)) + Power(t1,2)*(7*Power(t1,3) + 17*Power(t1,2)*u1 + 17*t1*Power(u1,2) + 7*Power(u1,3))) + m2*Power(t1,2)*(Power(q2,5)*u1*(5*t1 + u1) + Power(q2,4)*(-4*Power(t1,3) - 51*Power(t1,2)*u1 - 20*t1*Power(u1,2) + Power(u1,3)) + Power(q2,3)*t1*(15*Power(t1,3) + 119*Power(t1,2)*u1 + 112*t1*Power(u1,2) + 8*Power(u1,3)) - Power(t1,4)*(8*Power(t1,3) + 21*Power(t1,2)*u1 + 28*t1*Power(u1,2) + 15*Power(u1,3)) - 2*Power(q2,2)*Power(t1,2)*(13*Power(t1,3) + 61*Power(t1,2)*u1 + 99*t1*Power(u1,2) + 22*Power(u1,3)) + q2*Power(t1,3)*(23*Power(t1,3) + 70*Power(t1,2)*u1 + 125*t1*Power(u1,2) + 58*Power(u1,3))) - 2*Power(m2,3)*(Power(q2,4)*(Power(t1,3) + 11*Power(t1,2)*u1 + 11*t1*Power(u1,2) + Power(u1,3)) + 2*Power(t1,4)*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3)) - 2*Power(q2,3)*t1*(10*Power(t1,3) + 41*Power(t1,2)*u1 + 40*t1*Power(u1,2) + 5*Power(u1,3)) + 2*Power(q2,2)*Power(t1,2)*(31*Power(t1,3) + 70*Power(t1,2)*u1 + 97*t1*Power(u1,2) + 18*Power(u1,3)) - q2*Power(t1,3)*(53*Power(t1,3) + 131*Power(t1,2)*u1 + 155*t1*Power(u1,2) + 69*Power(u1,3))) - Power(m2,2)*t1*(-2*Power(q2,5)*u1*(t1 + u1) + Power(q2,4)*(5*Power(t1,3) + 49*Power(t1,2)*u1 + 29*t1*Power(u1,2) + Power(u1,3)) - 2*Power(q2,3)*t1*(22*Power(t1,3) + 99*Power(t1,2)*u1 + 87*t1*Power(u1,2) + 4*Power(u1,3)) + 2*Power(t1,4)*(9*Power(t1,3) + 22*Power(t1,2)*u1 + 25*t1*Power(u1,2) + 12*Power(u1,3)) - 2*q2*Power(t1,3)*(40*Power(t1,3) + 100*Power(t1,2)*u1 + 141*t1*Power(u1,2) + 65*Power(u1,3)) + Power(q2,2)*Power(t1,2)*(93*Power(t1,3) + 259*Power(t1,2)*u1 + 395*t1*Power(u1,2) + 73*Power(u1,3))))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*Power(t1,2)*Power(m2 + t1,2)*u1*(t1 + u1));
r += c8*v8;
dbl v9 = ln(chi)*ln(-(u1/m2));
dbl c9 = -((8*Power(m2,2)*(Power(t1,3) + 2*Power(t1,2)*u1 + (2*q2 - u1)*Power(u1,2)) + u1*(-2*Power(q2,3)*u1 + Power(t1 + u1,2)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2)) + 2*Power(q2,2)*(Power(t1,2) + 3*t1*u1 + 3*Power(u1,2)) - 3*q2*(Power(t1,3) + 3*Power(t1,2)*u1 + 4*t1*Power(u1,2) + 2*Power(u1,3))) + 2*m2*(2*Power(q2,2)*Power(u1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(2*Power(t1,3) + 6*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3))))/(beta*t1*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1)));
r += c9*v9;
dbl v10 = ln(-(u1/m2));
dbl c10 = (-32*Power(m2,5)*Power(q2,2)*Power(t1 + u1,3) + t1*Power(q2 - u1,2)*Power(u1,4)*(4*Power(q2,3) - 8*Power(q2,2)*(t1 + u1) - u1*(3*Power(t1,2) + 5*t1*u1 + 2*Power(u1,2)) + 2*q2*(2*Power(t1,2) + 6*t1*u1 + 3*Power(u1,2))) + 8*Power(m2,4)*q2*(2*Power(q2,2)*(Power(t1,3) + 5*Power(t1,2)*u1 + 5*t1*Power(u1,2) + Power(u1,3)) - 2*q2*u1*(4*Power(t1,3) + 15*Power(t1,2)*u1 + 12*t1*Power(u1,2) + 5*Power(u1,3)) + Power(u1,2)*(7*Power(t1,3) + 17*Power(t1,2)*u1 + 17*t1*Power(u1,2) + 7*Power(u1,3))) + m2*Power(u1,2)*(Power(q2,5)*t1*(t1 + 5*u1) + Power(q2,4)*(Power(t1,3) - 20*Power(t1,2)*u1 - 51*t1*Power(u1,2) - 4*Power(u1,3)) - Power(u1,4)*(15*Power(t1,3) + 28*Power(t1,2)*u1 + 21*t1*Power(u1,2) + 8*Power(u1,3)) - 2*Power(q2,2)*Power(u1,2)*(22*Power(t1,3) + 99*Power(t1,2)*u1 + 61*t1*Power(u1,2) + 13*Power(u1,3)) + Power(q2,3)*u1*(8*Power(t1,3) + 112*Power(t1,2)*u1 + 119*t1*Power(u1,2) + 15*Power(u1,3)) + q2*Power(u1,3)*(58*Power(t1,3) + 125*Power(t1,2)*u1 + 70*t1*Power(u1,2) + 23*Power(u1,3))) - 2*Power(m2,3)*(Power(q2,4)*(Power(t1,3) + 11*Power(t1,2)*u1 + 11*t1*Power(u1,2) + Power(u1,3)) + 2*Power(u1,4)*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3)) - 2*Power(q2,3)*u1*(5*Power(t1,3) + 40*Power(t1,2)*u1 + 41*t1*Power(u1,2) + 10*Power(u1,3)) + 2*Power(q2,2)*Power(u1,2)*(18*Power(t1,3) + 97*Power(t1,2)*u1 + 70*t1*Power(u1,2) + 31*Power(u1,3)) - q2*Power(u1,3)*(69*Power(t1,3) + 155*Power(t1,2)*u1 + 131*t1*Power(u1,2) + 53*Power(u1,3))) - Power(m2,2)*u1*(-2*Power(q2,5)*t1*(t1 + u1) + Power(q2,4)*(Power(t1,3) + 29*Power(t1,2)*u1 + 49*t1*Power(u1,2) + 5*Power(u1,3)) + 2*Power(u1,4)*(12*Power(t1,3) + 25*Power(t1,2)*u1 + 22*t1*Power(u1,2) + 9*Power(u1,3)) - 2*Power(q2,3)*u1*(4*Power(t1,3) + 87*Power(t1,2)*u1 + 99*t1*Power(u1,2) + 22*Power(u1,3)) - 2*q2*Power(u1,3)*(65*Power(t1,3) + 141*Power(t1,2)*u1 + 100*t1*Power(u1,2) + 40*Power(u1,3)) + Power(q2,2)*Power(u1,2)*(73*Power(t1,3) + 395*Power(t1,2)*u1 + 259*t1*Power(u1,2) + 93*Power(u1,3))))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*Power(u1,2)*Power(m2 + u1,2)*(t1 + u1));
r += c10*v10;
dbl v11 = Power(ln(chi),2);
dbl c11 = (8*Power(m2,2)*Power(t1 + u1,2)*(2*Power(t1,3) + 3*(1 + beta)*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-((2 + 3*beta)*q2) + 3*(1 + beta)*u1)) + t1*(q2 - t1 - u1)*u1*(t1 + u1)*(2*(1 + beta)*Power(q2,2)*(t1 + u1) - 2*q2*(3*(-1 + beta)*Power(t1,2) + 4*(1 + beta)*t1*u1 + 3*(-1 + beta)*Power(u1,2)) + (t1 + u1)*(3*(-1 + beta)*Power(t1,2) + 4*(1 + beta)*t1*u1 + 3*(-1 + beta)*Power(u1,2))) + m2*(-4*Power(q2,2)*t1*u1*((1 + beta)*Power(t1,2) + 2*t1*u1 + (1 + beta)*Power(u1,2)) + 2*Power(t1 + u1,2)*(4*Power(t1,4) + 11*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 11*t1*Power(u1,3) + 4*Power(u1,4)) - 2*q2*(t1 + u1)*(4*Power(t1,4) + (15 - 2*beta)*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + (15 - 2*beta)*t1*Power(u1,3) + 4*Power(u1,4))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c11*v11;
dbl v12 = ln(chi);
dbl c12 = (16*Power(m2,3)*Power(t1 + u1,3)*(Power(t1,2) + Power(u1,2)) - t1*u1*Power(-q2 + t1 + u1,2)*(2*Power(beta,2)*Power(q2,2)*t1*u1 + 2*q2*(t1 + u1)*(Power(t1,2) - 2*Power(beta,2)*t1*u1 + Power(u1,2)) - Power(t1 + u1,2)*(Power(t1,2) - 2*Power(beta,2)*t1*u1 + Power(u1,2))) + 2*m2*(q2 - t1 - u1)*(Power(beta,2)*Power(q2,2)*t1*u1*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) + q2*(t1 + u1)*(Power(t1,4) + (8 - 3*Power(beta,2))*Power(t1,3)*u1 + 2*(1 - 3*Power(beta,2))*Power(t1,2)*Power(u1,2) + (8 - 3*Power(beta,2))*t1*Power(u1,3) + Power(u1,4)) - Power(t1 + u1,2)*(Power(t1,4) - (-5 + Power(beta,2))*Power(t1,3)*u1 - 2*(-1 + Power(beta,2))*Power(t1,2)*Power(u1,2) - (-5 + Power(beta,2))*t1*Power(u1,3) + Power(u1,4))) + 4*Power(m2,2)*(t1 + u1)*(3*Power(t1,5) + 11*Power(t1,4)*u1 + 14*Power(t1,3)*Power(u1,2) + 14*Power(t1,2)*Power(u1,3) + 11*t1*Power(u1,4) + 3*Power(u1,5) - 2*Power(beta,2)*Power(q2,2)*t1*u1*(t1 + u1) - q2*(3*Power(t1,4) - 2*(-5 + Power(beta,2))*Power(t1,3)*u1 + 2*(3 - 2*Power(beta,2))*Power(t1,2)*Power(u1,2) - 2*(-5 + Power(beta,2))*t1*Power(u1,3) + 3*Power(u1,4))))/(beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1)*(4*m2 - q2 + t1 + u1));
r += c12*v12;
dbl v13 = Power(ln(chiq),2);
dbl c13 = (4*m2*(q2 - t1 - u1)*(2*Power(t1,5) + 9*Power(t1,4)*u1 + 2*Power(u1,5) + t1*Power(u1,3)*((-2 + beta)*q2 + 9*u1) + Power(t1,2)*Power(u1,2)*(-4*q2 + 17*u1) + Power(t1,3)*u1*((-2 + beta)*q2 + 17*u1)) - 8*Power(m2,2)*Power(t1 + u1,2)*(2*Power(t1,3) + 3*beta*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*((4 - 3*beta)*q2 + 3*beta*u1)) + (-2 + beta)*t1*u1*(t1 + u1)*(-2*Power(q2,3)*(t1 + u1) + 4*Power(q2,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) + Power(t1 + u1,2)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) - 3*q2*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c13*v13;
dbl v14 = ln(chiq);
dbl c14 = (betaq*q2*(256*Power(m2,5)*Power(q2,3)*Power(t1 + u1,2)*(5*Power(t1,3) + 11*Power(t1,2)*u1 + 5*Power(u1,3) + t1*u1*(-4*q2 + 11*u1)) + 64*Power(m2,4)*Power(q2,2)*(16*Power(q2,3)*t1*u1*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) + 4*q2*Power(t1 + u1,2)*(5*Power(t1,4) + 19*Power(t1,3)*u1 + 22*Power(t1,2)*Power(u1,2) + 19*t1*Power(u1,3) + 5*Power(u1,4)) - Power(t1 + u1,3)*(10*Power(t1,4) + 7*Power(t1,3)*u1 + 14*Power(t1,2)*Power(u1,2) + 7*t1*Power(u1,3) + 10*Power(u1,4)) - Power(q2,2)*(21*Power(t1,5) + 117*Power(t1,4)*u1 + 230*Power(t1,3)*Power(u1,2) + 230*Power(t1,2)*Power(u1,3) + 117*t1*Power(u1,4) + 21*Power(u1,5))) + Power(q2 - t1,2)*t1*Power(q2 - u1,2)*u1*(4*Power(q2,5)*t1*u1 - 2*t1*u1*Power(t1 + u1,3)*(Power(t1,2) + Power(u1,2)) - 2*Power(q2,4)*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3)) + Power(q2,3)*(15*Power(t1,4) + 30*Power(t1,3)*u1 + 38*Power(t1,2)*Power(u1,2) + 30*t1*Power(u1,3) + 15*Power(u1,4)) - 2*Power(q2,2)*(6*Power(t1,5) + 17*Power(t1,4)*u1 + 23*Power(t1,3)*Power(u1,2) + 23*Power(t1,2)*Power(u1,3) + 17*t1*Power(u1,4) + 6*Power(u1,5)) + q2*(3*Power(t1,6) + 16*Power(t1,5)*u1 + 27*Power(t1,4)*Power(u1,2) + 32*Power(t1,3)*Power(u1,3) + 27*Power(t1,2)*Power(u1,4) + 16*t1*Power(u1,5) + 3*Power(u1,6))) - 16*Power(m2,3)*q2*(8*Power(q2,5)*t1*u1*(3*Power(t1,2) + 14*t1*u1 + 3*Power(u1,2)) - Power(q2,4)*(33*Power(t1,5) + 249*Power(t1,4)*u1 + 550*Power(t1,3)*Power(u1,2) + 550*Power(t1,2)*Power(u1,3) + 249*t1*Power(u1,4) + 33*Power(u1,5)) - Power(t1 + u1,3)*(5*Power(t1,6) + Power(t1,5)*u1 + 14*Power(t1,4)*Power(u1,2) + 8*Power(t1,3)*Power(u1,3) + 14*Power(t1,2)*Power(u1,4) + t1*Power(u1,5) + 5*Power(u1,6)) + 4*Power(q2,3)*(16*Power(t1,6) + 113*Power(t1,5)*u1 + 276*Power(t1,4)*Power(u1,2) + 342*Power(t1,3)*Power(u1,3) + 276*Power(t1,2)*Power(u1,4) + 113*t1*Power(u1,5) + 16*Power(u1,6)) + q2*Power(t1 + u1,2)*(20*Power(t1,6) + 95*Power(t1,5)*u1 + 116*Power(t1,4)*Power(u1,2) + 162*Power(t1,3)*Power(u1,3) + 116*Power(t1,2)*Power(u1,4) + 95*t1*Power(u1,5) + 20*Power(u1,6)) - 2*Power(q2,2)*(26*Power(t1,7) + 181*Power(t1,6)*u1 + 445*Power(t1,5)*Power(u1,2) + 652*Power(t1,4)*Power(u1,3) + 652*Power(t1,3)*Power(u1,4) + 445*Power(t1,2)*Power(u1,5) + 181*t1*Power(u1,6) + 26*Power(u1,7))) - m2*(4*Power(q2,8)*t1*u1*(Power(t1,2) + 18*t1*u1 + Power(u1,2)) + Power(t1,3)*Power(u1,3)*Power(t1 + u1,2)*(17*Power(t1,4) + 8*Power(t1,3)*u1 + 26*Power(t1,2)*Power(u1,2) + 8*t1*Power(u1,3) + 17*Power(u1,4)) - 2*Power(q2,7)*(3*Power(t1,5) + 63*Power(t1,4)*u1 + 190*Power(t1,3)*Power(u1,2) + 190*Power(t1,2)*Power(u1,3) + 63*t1*Power(u1,4) + 3*Power(u1,5)) + 4*Power(q2,6)*(6*Power(t1,6) + 109*Power(t1,5)*u1 + 294*Power(t1,4)*Power(u1,2) + 398*Power(t1,3)*Power(u1,3) + 294*Power(t1,2)*Power(u1,4) + 109*t1*Power(u1,5) + 6*Power(u1,6)) - 4*Power(q2,5)*(9*Power(t1,7) + 163*Power(t1,6)*u1 + 527*Power(t1,5)*Power(u1,2) + 809*Power(t1,4)*Power(u1,3) + 809*Power(t1,3)*Power(u1,4) + 527*Power(t1,2)*Power(u1,5) + 163*t1*Power(u1,6) + 9*Power(u1,7)) - 4*q2*Power(t1,2)*Power(u1,2)*(15*Power(t1,7) + 56*Power(t1,6)*u1 + 100*Power(t1,5)*Power(u1,2) + 137*Power(t1,4)*Power(u1,3) + 137*Power(t1,3)*Power(u1,4) + 100*Power(t1,2)*Power(u1,5) + 56*t1*Power(u1,6) + 15*Power(u1,7)) + Power(q2,4)*(24*Power(t1,8) + 521*Power(t1,7)*u1 + 2138*Power(t1,6)*Power(u1,2) + 3895*Power(t1,5)*Power(u1,3) + 4444*Power(t1,4)*Power(u1,4) + 3895*Power(t1,3)*Power(u1,5) + 2138*Power(t1,2)*Power(u1,6) + 521*t1*Power(u1,7) + 24*Power(u1,8)) + Power(q2,2)*t1*u1*(41*Power(t1,8) + 414*Power(t1,7)*u1 + 1068*Power(t1,6)*Power(u1,2) + 1698*Power(t1,5)*Power(u1,3) + 1942*Power(t1,4)*Power(u1,4) + 1698*Power(t1,3)*Power(u1,5) + 1068*Power(t1,2)*Power(u1,6) + 414*t1*Power(u1,7) + 41*Power(u1,8)) - 2*Power(q2,3)*(3*Power(t1,9) + 112*Power(t1,8)*u1 + 626*Power(t1,7)*Power(u1,2) + 1364*Power(t1,6)*Power(u1,3) + 1815*Power(t1,5)*Power(u1,4) + 1815*Power(t1,4)*Power(u1,5) + 1364*Power(t1,3)*Power(u1,6) + 626*Power(t1,2)*Power(u1,7) + 112*t1*Power(u1,8) + 3*Power(u1,9))) + 4*Power(m2,2)*(16*Power(q2,7)*t1*u1*(Power(t1,2) + 8*t1*u1 + Power(u1,2)) - Power(q2,6)*Power(t1 + u1,3)*(23*Power(t1,2) + 186*t1*u1 + 23*Power(u1,2)) - Power(t1,2)*Power(u1,2)*Power(t1 + u1,3)*(5*Power(t1,4) + Power(t1,3)*u1 + 4*Power(t1,2)*Power(u1,2) + t1*Power(u1,3) + 5*Power(u1,4)) + 2*q2*t1*u1*Power(t1 + u1,2)*(15*Power(t1,6) + 20*Power(t1,5)*u1 + 51*Power(t1,4)*Power(u1,2) + 40*Power(t1,3)*Power(u1,3) + 51*Power(t1,2)*Power(u1,4) + 20*t1*Power(u1,5) + 15*Power(u1,6)) + 4*Power(q2,5)*(17*Power(t1,6) + 166*Power(t1,5)*u1 + 431*Power(t1,4)*Power(u1,2) + 548*Power(t1,3)*Power(u1,3) + 431*Power(t1,2)*Power(u1,4) + 166*t1*Power(u1,5) + 17*Power(u1,6)) - Power(q2,4)*(78*Power(t1,7) + 785*Power(t1,6)*u1 + 2285*Power(t1,5)*Power(u1,2) + 3396*Power(t1,4)*Power(u1,3) + 3396*Power(t1,3)*Power(u1,4) + 2285*Power(t1,2)*Power(u1,5) + 785*t1*Power(u1,6) + 78*Power(u1,7)) + 4*Power(q2,3)*(11*Power(t1,8) + 123*Power(t1,7)*u1 + 408*Power(t1,6)*Power(u1,2) + 679*Power(t1,5)*Power(u1,3) + 790*Power(t1,4)*Power(u1,4) + 679*Power(t1,3)*Power(u1,5) + 408*Power(t1,2)*Power(u1,6) + 123*t1*Power(u1,7) + 11*Power(u1,8)) - Power(q2,2)*(11*Power(t1,9) + 172*Power(t1,8)*u1 + 592*Power(t1,7)*Power(u1,2) + 1150*Power(t1,6)*Power(u1,3) + 1483*Power(t1,5)*Power(u1,4) + 1483*Power(t1,4)*Power(u1,5) + 1150*Power(t1,3)*Power(u1,6) + 592*Power(t1,2)*Power(u1,7) + 172*t1*Power(u1,8) + 11*Power(u1,9)))))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*Power(t1,2)*Power(-4*m2*q2 + Power(q2 - u1,2),2)*Power(u1,2)*Power(t1 + u1,2));
r += c14*v14;
dbl v15 = zeta2;
dbl c15 = (2*Power(m2,2)*Power(t1 + u1,2)*(beta*Power(t1,5) + beta*Power(u1,4)*(-q2 + u1) - 2*Power(t1,3)*u1*(beta*q2 + 6*(1 + 2*beta)*u1) + t1*Power(u1,3)*(-2*beta*q2 + (-8 + 3*beta)*u1) + Power(t1,4)*(-(beta*q2) + (-8 + 3*beta)*u1) + 2*Power(t1,2)*Power(u1,2)*((4 + 13*beta)*q2 - 6*(u1 + 2*beta*u1))) - Power(t1,2)*(q2 - t1 - u1)*Power(u1,2)*(t1 + u1)*(2*(1 + 2*beta)*Power(q2,2)*(t1 + u1) - 2*q2*((-3 + 6*beta)*Power(t1,2) + 3*(-1 + 2*beta)*Power(u1,2) + 4*t1*(u1 + 2*beta*u1)) + (t1 + u1)*((-3 + 6*beta)*Power(t1,2) + 3*(-1 + 2*beta)*Power(u1,2) + 4*t1*(u1 + 2*beta*u1))) + 2*m2*t1*u1*(-(Power(t1 + u1,2)*(4*Power(t1,4) + 11*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 11*t1*Power(u1,3) + 4*Power(u1,4))) - q2*(t1 + u1)*((-4 + beta)*Power(t1,4) + 3*(-5 + 2*beta)*Power(t1,3)*u1 - 2*(-1 + beta)*Power(t1,2)*Power(u1,2) + 3*(-5 + 2*beta)*t1*Power(u1,3) + (-4 + beta)*Power(u1,4)) + Power(q2,2)*(beta*Power(t1,4) - 2*(-2 + beta)*Power(t1,2)*Power(u1,2) + 2*(1 + 3*beta)*t1*Power(u1,3) + beta*Power(u1,4) + 2*Power(t1,3)*(u1 + 3*beta*u1))))/(2.*beta*Power(t1,3)*Power(u1,3)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c15*v15;
dbl v16 = 1;
dbl c16 = (-64*Power(m2,5)*Power(q2,2)*(Power(t1,4) + Power(t1,3)*u1 + t1*Power(u1,3) + Power(u1,4)) - Power(t1,2)*Power(u1,2)*(Power(q2,5)*(-5*Power(t1,2) + 2*t1*u1 - 5*Power(u1,2)) + Power(t1,2)*Power(u1,2)*(Power(t1,3) + Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3)) + 6*Power(q2,4)*(2*Power(t1,3) + Power(t1,2)*u1 + t1*Power(u1,2) + 2*Power(u1,3)) - q2*t1*u1*(3*Power(t1,4) + 8*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 8*t1*Power(u1,3) + 3*Power(u1,4)) - Power(q2,3)*(9*Power(t1,4) + 21*Power(t1,3)*u1 + 4*Power(t1,2)*Power(u1,2) + 21*t1*Power(u1,3) + 9*Power(u1,4)) + 2*Power(q2,2)*(Power(t1,5) + 8*Power(t1,4)*u1 + 5*Power(t1,3)*Power(u1,2) + 5*Power(t1,2)*Power(u1,3) + 8*t1*Power(u1,4) + Power(u1,5))) + 16*Power(m2,4)*q2*(Power(t1 + u1,2)*(Power(t1,4) - Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) - t1*Power(u1,3) + Power(u1,4)) + 2*Power(q2,2)*(Power(t1,4) + 3*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 3*t1*Power(u1,3) + Power(u1,4)) - q2*(6*Power(t1,5) + 15*Power(t1,4)*u1 + 11*Power(t1,3)*Power(u1,2) + 11*Power(t1,2)*Power(u1,3) + 15*t1*Power(u1,4) + 6*Power(u1,5))) + m2*t1*u1*(-(Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(5*Power(t1,2) - t1*u1 + 5*Power(u1,2))) + 2*Power(q2,5)*(2*Power(t1,3) + Power(t1,2)*u1 + t1*Power(u1,2) + 2*Power(u1,3)) - 2*Power(q2,4)*(7*Power(t1,4) + 30*Power(t1,3)*u1 + 30*t1*Power(u1,3) + 7*Power(u1,4)) + 4*Power(q2,3)*(4*Power(t1,5) + 25*Power(t1,4)*u1 + 18*Power(t1,3)*Power(u1,2) + 18*Power(t1,2)*Power(u1,3) + 25*t1*Power(u1,4) + 4*Power(u1,5)) + q2*t1*u1*(17*Power(t1,5) + 38*Power(t1,4)*u1 + 39*Power(t1,3)*Power(u1,2) + 39*Power(t1,2)*Power(u1,3) + 38*t1*Power(u1,4) + 17*Power(u1,5)) - Power(q2,2)*(6*Power(t1,6) + 71*Power(t1,5)*u1 + 75*Power(t1,4)*Power(u1,2) + 88*Power(t1,3)*Power(u1,3) + 75*Power(t1,2)*Power(u1,4) + 71*t1*Power(u1,5) + 6*Power(u1,6))) + Power(m2,2)*(4*Power(q2,5)*t1*u1*(Power(t1,2) - t1*u1 + Power(u1,2)) - Power(t1,2)*Power(u1,2)*(4*Power(t1,5) + 11*Power(t1,4)*u1 + 9*Power(t1,3)*Power(u1,2) + 9*Power(t1,2)*Power(u1,3) + 11*t1*Power(u1,4) + 4*Power(u1,5)) - Power(q2,4)*(4*Power(t1,5) + 51*Power(t1,4)*u1 + 25*Power(t1,3)*Power(u1,2) + 25*Power(t1,2)*Power(u1,3) + 51*t1*Power(u1,4) + 4*Power(u1,5)) + Power(q2,3)*(8*Power(t1,6) + 113*Power(t1,5)*u1 + 244*Power(t1,4)*Power(u1,2) + 94*Power(t1,3)*Power(u1,3) + 244*Power(t1,2)*Power(u1,4) + 113*t1*Power(u1,5) + 8*Power(u1,6)) + q2*t1*u1*(30*Power(t1,6) + 71*Power(t1,5)*u1 + 94*Power(t1,4)*Power(u1,2) + 94*Power(t1,3)*Power(u1,3) + 94*Power(t1,2)*Power(u1,4) + 71*t1*Power(u1,5) + 30*Power(u1,6)) - 4*Power(q2,2)*(Power(t1,7) + 22*Power(t1,6)*u1 + 54*Power(t1,5)*Power(u1,2) + 53*Power(t1,4)*Power(u1,3) + 53*Power(t1,3)*Power(u1,4) + 54*Power(t1,2)*Power(u1,5) + 22*t1*Power(u1,6) + Power(u1,7))) - 2*Power(m2,3)*(2*Power(t1,2)*Power(u1,2)*(Power(t1,4) + Power(t1,3)*u1 + t1*Power(u1,3) + Power(u1,4)) + 2*Power(q2,4)*(Power(t1,4) + 9*Power(t1,3)*u1 - 8*Power(t1,2)*Power(u1,2) + 9*t1*Power(u1,3) + Power(u1,4)) - 4*Power(q2,3)*(5*Power(t1,5) + 25*Power(t1,4)*u1 + 14*Power(t1,3)*Power(u1,2) + 14*Power(t1,2)*Power(u1,3) + 25*t1*Power(u1,4) + 5*Power(u1,5)) + 2*Power(q2,2)*(9*Power(t1,6) + 61*Power(t1,5)*u1 + 77*Power(t1,4)*Power(u1,2) + 74*Power(t1,3)*Power(u1,3) + 77*Power(t1,2)*Power(u1,4) + 61*t1*Power(u1,5) + 9*Power(u1,6)) - q2*(8*Power(t1,7) + 27*Power(t1,6)*u1 + 35*Power(t1,5)*Power(u1,2) + 42*Power(t1,4)*Power(u1,3) + 42*Power(t1,3)*Power(u1,4) + 35*Power(t1,2)*Power(u1,5) + 27*t1*Power(u1,6) + 8*Power(u1,7))))/(2.*(-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*(m2 + t1)*(4*m2*q2 - Power(q2 - u1,2))*Power(u1,2)*(m2 + u1)*(t1 + u1));
r += c16*v16;

return r;
}
dbl SVOKDelta1P(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);

return (-2*(-2*m2*Power(sp,2) + (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2))*((-2*m2 + q2 + sp)*ln(chi) + beta*(q2 - t1 - u1)*(ln(-(t1/m2)) - ln(-(u1/m2)))))/(beta*sp*(q2 + sp)*Power(t1,2)*Power(u1,2));
}

dbl SVQEDDelta1P(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);

return (-2*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2))*(beta*(q2 + sp) + (-2*m2 + q2 + sp)*ln(chi)))/(beta*sp*(q2 + sp)*Power(t1,2)*Power(u1,2));
}

dbl SVOKDelta2P(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return (2*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2)))/(sp*Power(t1,2)*Power(u1,2));
}

dbl SVOKScaleRP(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return (11*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2)))/(6.*sp*Power(t1,2)*Power(u1,2));
}

dbl SVOKScaleFP(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return ((2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2))*(-11 + 12*ln(-(u1/m2))))/(6.*sp*Power(t1,2)*Power(u1,2));
}

dbl SVOKScaleFDelta1P(dbl m2, dbl q2, dbl sp, dbl t1) {
dbl u1 = -sp-t1;

return (-2*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2)))/(sp*Power(t1,2)*Power(u1,2));
}

