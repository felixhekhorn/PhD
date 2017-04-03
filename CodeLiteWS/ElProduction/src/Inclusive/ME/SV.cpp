#include "SV.h"

#include <gsl/gsl_sf_dilog.h>
#define ln(z) log(z)
#define Li2(z) gsl_sf_dilog(z)
#define zeta2 1.64493406684823 // pi^2/6

cdbl Inclusive::SVOKG(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = -(m2/(q2*u1)) - (4*Power(q2,2) + Power(t1,2) - q2*(t1 + u1))/(4.*Power(q2,2)*u1) + (Power(q2 - t1,2)*t1*(q2*(-t1 + u1) + t1*(t1 + u1)))/(4.*q2*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1) + (Power(t1,4) + 3*Power(q2,2)*t1*(2*t1 - u1) + 3*Power(q2,3)*(-t1 + u1) - 2*q2*Power(t1,2)*(2*t1 + u1))/(4.*Power(q2,2)*(-4*m2*q2 + Power(q2 - t1,2))*u1);
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = -(m2/(q2*t1)) - (4*Power(q2,2) + Power(u1,2) - q2*(t1 + u1))/(4.*Power(q2,2)*t1) + (Power(q2 - u1,2)*u1*(q2*(t1 - u1) + u1*(t1 + u1)))/(4.*q2*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)) + (3*Power(q2,3)*(t1 - u1) - 3*Power(q2,2)*(t1 - 2*u1)*u1 + Power(u1,4) - 2*q2*Power(u1,2)*(t1 + 2*u1))/(4.*Power(q2,2)*t1*(-4*m2*q2 + Power(q2 - u1,2)));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = 1 + m2*(-((q2 - 3*t1)/Power(t1,2)) + 1/u1) + (-2*q2 + t1)/(2.*u1) + (Power(m2,2)*Power(t1 + u1,2))/(Power(t1,3)*u1);
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = m2*(1/t1 - (q2 - 3*u1)/Power(u1,2)) + (Power(m2,2)*Power(t1 + u1,2))/(t1*Power(u1,3)) + (-2*q2 + 2*t1 + u1)/(2.*t1);
r += c3*v3;
dbl v4 = Li2(1 - t1/(chi*u1)) - Li2(1 - u1/(chi*t1)) + Power(ln((chi*u1)/t1),2)/2.;
dbl c4 = (-4*Power(m2,2)*Power(t1 + u1,2))/(Power(t1,2)*Power(u1,2)) + (2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1))/(t1*u1) - (2*m2*(2*t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c4*v4;
dbl v5 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
dbl c5 = ((-16*Power(m2,3)*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) - (8*Power(m2,2)*(Power(t1,3) + 6*Power(t1,2)*u1 - 2*t1*(q2 - 3*u1)*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) - (4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1))/(t1*u1) + (2*m2*(t1 + u1)*(t1*u1 + 2*q2*(t1 + u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c5*v5;
dbl v6 = Li2(chi) - Li2(1 - Power(chi,2))/2. + ln(1 - chi)*ln(chi);
dbl c6 = ((-16*Power(m2,3)*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) - (2*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)))/(t1*u1) - (8*Power(m2,2)*(Power(t1,3) + 5*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(s*Power(t1,2)*Power(u1,2)) - (4*m2*(-(Power(q2,2)*Power(t1 + u1,2)) + q2*(t1 + u1)*(Power(t1,2) + Power(u1,2)) + t1*u1*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)))/beta;
r += c6*v6;
dbl v7 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c7 = (4*Power(m2,2))/(t1*u1) + (2*m2*(t1 + u1))/(t1*u1) - (2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1))/(2.*t1*u1);
r += c7*v7;
dbl v8 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c8 = 4*m2*((q2 + t1)/Power(t1,2) + q2/Power(u1,2) + 1/u1) + (8*Power(m2,2)*(Power(t1,2) + t1*u1 + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) - (2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1))/(t1*u1);
r += c8*v8;
dbl v9 = ln(chi)*ln(-(t1/m2));
dbl c9 = ((-16*Power(m2,3)*(t1 + u1))/(s*Power(t1,2)*u1) - (8*Power(m2,2)*(-(q2*t1) + 3*Power(t1,2) + 3*t1*u1 + Power(u1,2)))/(s*Power(t1,2)*u1) - (2*Power(q2 - t1,2) + 2*(-q2 + t1)*u1 + Power(u1,2))/(t1*u1) - (2*m2*(-2*Power(q2,2)*(t1 + u1) + t1*u1*(t1 + u1) + q2*(3*Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))))/(s*Power(t1,2)*u1))/beta;
r += c9*v9;
dbl v10 = ln(-(t1/m2));
dbl c10 = -(q2/t1) - (t1 + u1)/u1 + (m2*Power(t1 + u1,2))/(Power(t1,2)*u1) + (Power(t1,2)*(q2 + 2*t1) + Power(q2 + t1,2)*u1)/((m2 + t1)*(q2 + t1)*u1) + ((q2 - t1)*t1*(q2*(-t1 + u1) + t1*(t1 + u1)))/((-4*m2*q2 + Power(q2 - t1,2))*(q2 + t1)*u1);
r += c10*v10;
dbl v11 = ln(chi)*ln(-(u1/m2));
dbl c11 = ((-16*Power(m2,3)*(t1 + u1))/(s*t1*Power(u1,2)) - (2*Power(q2,2) + Power(t1,2) + 2*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1))/(t1*u1) - (8*Power(m2,2)*(Power(t1,2) + 3*t1*u1 + u1*(-q2 + 3*u1)))/(s*t1*Power(u1,2)) - (2*m2*(-2*Power(q2,2)*(t1 + u1) + t1*u1*(t1 + u1) + q2*(2*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2))))/(s*t1*Power(u1,2)))/beta;
r += c11*v11;
dbl v12 = ln(-(u1/m2));
dbl c12 = -(q2/u1) - (t1 + u1)/t1 + (m2*Power(t1 + u1,2))/(t1*Power(u1,2)) + ((q2 - u1)*u1*(q2*(t1 - u1) + u1*(t1 + u1)))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*(q2 + u1)) + (Power(q2,2)*t1 + q2*u1*(2*t1 + u1) + Power(u1,2)*(t1 + 2*u1))/(t1*(m2 + u1)*(q2 + u1));
r += c12*v12;
dbl v13 = Power(ln(chi),2);
dbl c13 = (2*Power(m2,2)*(2*t1 + u1)*(t1 + 2*u1))/(Power(t1,2)*Power(u1,2)) - (12*Power(q2,2) + 7*Power(t1,2) + 4*t1*u1 + 7*Power(u1,2) - 14*q2*(t1 + u1))/(4.*t1*u1) + 2*m2*(2*(1/t1 + 1/u1) + q2*(Power(t1,-2) + Power(u1,-2) + Power(t1 + u1,-2))) + ((8*Power(m2,3)*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (8*Power(q2,2) + 3*Power(t1,2) - 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1))/(4.*t1*u1) + (2*Power(m2,2)*(2*Power(t1,3) + 9*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-4*q2 + 9*u1)))/(s*Power(t1,2)*Power(u1,2)) + (m2*(-4*Power(q2,2)*Power(t1 + u1,2) + q2*(t1 + u1)*(4*Power(t1,2) - 3*t1*u1 + 4*Power(u1,2)) + t1*u1*(5*Power(t1,2) + 22*t1*u1 + 5*Power(u1,2))))/(2.*s*Power(t1,2)*Power(u1,2)))/beta;
r += c13*v13;
dbl v14 = ln(chi);
dbl c14 = beta*(-1 - (2*m2*q2)/(t1*u1) - t1/(2.*u1) - (s*Power(t1 - u1,2))/(2.*(4*m2 - s)*t1*u1) - u1/(2.*t1) + (2*Power(q2,2))/Power(t1 + u1,2));
r += c14*v14;
dbl v15 = Power(ln(chiq),2);
dbl c15 = (-2*Power(m2,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)))/(Power(t1,2)*Power(u1,2)) + 2*m2*(-((q2 + t1)/Power(t1,2)) - q2/Power(u1,2) - 1/u1 - q2/Power(t1 + u1,2)) + (8*Power(q2,2) + 5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2) - 10*q2*(t1 + u1))/(4.*t1*u1) + ((-8*Power(m2,3)*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) - (4*Power(m2,2)*(Power(t1,3) + 6*Power(t1,2)*u1 - 2*t1*(q2 - 3*u1)*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) - (4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1))/(2.*t1*u1) + (m2*(t1 + u1)*(t1*u1 + 2*q2*(t1 + u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c15*v15;
dbl v16 = ln(chiq);
dbl c16 = (2*betaq*m2*q2)/(t1*u1) + (betaq*(q2 - t1)*(q2*(t1 - u1) - t1*(t1 + u1)))/(2.*(4*m2*q2 - Power(q2 - t1,2))*u1) - (betaq*(q2 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(2.*t1*(4*m2*q2 - Power(q2 - u1,2))) + (betaq*(Power(t1,4) + 4*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + Power(u1,4) + 4*t1*u1*(-Power(q2,2) + Power(u1,2))))/(2.*t1*u1*Power(t1 + u1,2));
r += c16*v16;
dbl v17 = zeta2;
dbl c17 = -((Power(m2,2)*(Power(t1,4) + 10*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 10*t1*Power(u1,3) + Power(u1,4)))/(Power(t1,3)*Power(u1,3))) + 3*m2*q2*(-Power(t1,-2) - Power(u1,-2) - 4/Power(t1 + u1,2)) + (4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1))/(t1*u1) + ((-24*Power(m2,3)*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (-12*Power(q2,2) - 5*Power(t1,2) + 4*t1*u1 - 5*Power(u1,2) + 10*q2*(t1 + u1))/(2.*t1*u1) - (4*Power(m2,2)*(3*Power(t1,3) + 14*Power(t1,2)*u1 + 3*Power(u1,3) + 2*t1*u1*(-3*q2 + 7*u1)))/(s*Power(t1,2)*Power(u1,2)) - (m2*(-6*Power(q2,2)*Power(t1 + u1,2) + 3*q2*(t1 + u1)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2)) + t1*u1*(7*Power(t1,2) + 30*t1*u1 + 7*Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)))/beta;
r += c17*v17;
dbl v18 = 1;
dbl c18 = (q2*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) - (m2*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2));
r += c18*v18;

return r;
}

cdbl Inclusive::SVQEDG(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (2*Power(m2,2)*(t1 + u1))/(q2*Power(t1,2)*u1) + ((q2 - t1)*(-(Power(q2 - t1,2)*Power(t1,2)*(3*Power(q2,2) - 5*q2*t1 + Power(t1,2))) + (q2 - t1)*t1*(q2 + t1)*(6*Power(q2,2) - 9*q2*t1 + Power(t1,2))*u1 + q2*(-3*Power(q2,3) + 5*q2*Power(t1,2) + 4*Power(t1,3))*Power(u1,2)))/(8.*Power(q2,3)*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1) - (3*Power(q2 - t1,3)*t1*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(16.*Power(q2,2)*Power(-4*m2*q2 + Power(q2 - t1,2),3)*u1) + (m2*(Power(q2,2)*(-t1 + u1) + 2*q2*t1*(t1 + u1) + 2*Power(t1,2)*(t1 + u1)))/(2.*Power(q2,2)*Power(t1,2)*u1) + (3*Power(t1,4)*(t1 + u1) + Power(q2,2)*t1*(t1 - 2*u1)*(t1 + u1) + 2*Power(q2,3)*t1*(3*t1 + 2*u1) - Power(q2,4)*(5*t1 + 3*u1) - q2*Power(t1,2)*(3*Power(t1,2) + 2*t1*u1 + Power(u1,2)))/(8.*Power(q2,3)*Power(t1,2)*u1) + (4*Power(q2,5)*t1*(4*t1 - u1) + 6*Power(q2,6)*(-t1 + u1) - 8*Power(t1,6)*(t1 + u1) - 3*Power(q2,2)*Power(t1,3)*(11*Power(t1,2) + 4*t1*u1 - 3*Power(u1,2)) - 4*Power(q2,4)*t1*(4*Power(t1,2) + 2*t1*u1 + Power(u1,2)) + 4*Power(q2,3)*Power(t1,2)*(5*Power(t1,2) - t1*u1 + 2*Power(u1,2)) + q2*Power(t1,4)*(27*Power(t1,2) + 26*t1*u1 + 7*Power(u1,2)))/(16.*Power(q2,3)*(-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*u1);
r += c0*v0;
dbl v1 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) + Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) + Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) + Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)));
dbl c1 = (2*Power(m2,2)*(t1 + u1))/(q2*t1*Power(u1,2)) - (3*Power(q2 - u1,3)*u1*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(16.*Power(q2,2)*t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)) + (m2*(Power(q2,2)*(t1 - u1) + 2*q2*u1*(t1 + u1) + 2*Power(u1,2)*(t1 + u1)))/(2.*Power(q2,2)*t1*Power(u1,2)) - (Power(q2,2)*(2*t1 - u1)*u1*(t1 + u1) - 3*Power(u1,4)*(t1 + u1) - 2*Power(q2,3)*u1*(2*t1 + 3*u1) + Power(q2,4)*(3*t1 + 5*u1) + q2*Power(u1,2)*(Power(t1,2) + 2*t1*u1 + 3*Power(u1,2)))/(8.*Power(q2,3)*t1*Power(u1,2)) - ((q2 - u1)*(3*Power(q2,4)*Power(t1 - u1,2) + Power(q2,3)*(9*t1 - 11*u1)*Power(u1,2) + Power(u1,5)*(t1 + u1) - q2*Power(u1,3)*(4*Power(t1,2) + 9*t1*u1 + 7*Power(u1,2)) + Power(q2,2)*Power(u1,2)*(-5*Power(t1,2) + 5*t1*u1 + 14*Power(u1,2))))/(8.*Power(q2,3)*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)) + (6*Power(q2,6)*(t1 - u1) - 4*Power(q2,5)*(t1 - 4*u1)*u1 - 8*Power(u1,6)*(t1 + u1) - 4*Power(q2,4)*u1*(Power(t1,2) + 2*t1*u1 + 4*Power(u1,2)) + 4*Power(q2,3)*Power(u1,2)*(2*Power(t1,2) - t1*u1 + 5*Power(u1,2)) - 3*Power(q2,2)*Power(u1,3)*(-3*Power(t1,2) + 4*t1*u1 + 11*Power(u1,2)) + q2*Power(u1,4)*(7*Power(t1,2) + 26*t1*u1 + 27*Power(u1,2)))/(16.*Power(q2,3)*t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2));
r += c1*v1;
dbl v2 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))));
dbl c2 = (-2*Power(m2,2)*(t1 + u1))/(q2*t1*Power(u1,2)) + (3*Power(q2 - u1,3)*u1*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(16.*Power(q2,2)*t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)) - (m2*(Power(q2,2)*(t1 - u1) + 2*q2*u1*(t1 + u1) + 2*Power(u1,2)*(t1 + u1)))/(2.*Power(q2,2)*t1*Power(u1,2)) + (Power(q2,2)*(2*t1 - u1)*u1*(t1 + u1) - 3*Power(u1,4)*(t1 + u1) - 2*Power(q2,3)*u1*(2*t1 + 3*u1) + Power(q2,4)*(3*t1 + 5*u1) + q2*Power(u1,2)*(Power(t1,2) + 2*t1*u1 + 3*Power(u1,2)))/(8.*Power(q2,3)*t1*Power(u1,2)) + ((q2 - u1)*(3*Power(q2,4)*Power(t1 - u1,2) + Power(q2,3)*(9*t1 - 11*u1)*Power(u1,2) + Power(u1,5)*(t1 + u1) - q2*Power(u1,3)*(4*Power(t1,2) + 9*t1*u1 + 7*Power(u1,2)) + Power(q2,2)*Power(u1,2)*(-5*Power(t1,2) + 5*t1*u1 + 14*Power(u1,2))))/(8.*Power(q2,3)*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)) + (4*Power(q2,5)*(t1 - 4*u1)*u1 + 6*Power(q2,6)*(-t1 + u1) + 8*Power(u1,6)*(t1 + u1) + 4*Power(q2,3)*Power(u1,2)*(-2*Power(t1,2) + t1*u1 - 5*Power(u1,2)) + 4*Power(q2,4)*u1*(Power(t1,2) + 2*t1*u1 + 4*Power(u1,2)) + 3*Power(q2,2)*Power(u1,3)*(-3*Power(t1,2) + 4*t1*u1 + 11*Power(u1,2)) - q2*Power(u1,4)*(7*Power(t1,2) + 26*t1*u1 + 27*Power(u1,2)))/(16.*Power(q2,3)*t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2));
r += c2*v2;
dbl v3 = Li2((m2 + t1)/m2);
dbl c3 = m2*((q2 - t1)/Power(t1,2) + 1/u1) + (Power(m2,2)*(t1 - u1)*(3*t1 + u1))/(Power(t1,3)*u1) - (2*Power(q2 - t1,2) + 2*(-q2 + t1)*u1 + Power(u1,2))/(2.*t1*u1);
r += c3*v3;
dbl v4 = Li2((m2 + u1)/m2);
dbl c4 = m2*(1/t1 + (q2 - u1)/Power(u1,2)) - (Power(m2,2)*(t1 - u1)*(t1 + 3*u1))/(t1*Power(u1,3)) - (2*Power(q2,2) + Power(t1,2) + 2*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1))/(2.*t1*u1);
r += c4*v4;
dbl v5 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
dbl c5 = ((16*Power(m2,3)*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (8*Power(m2,2)*(Power(t1,3) + 6*Power(t1,2)*u1 - 2*t1*(q2 - 3*u1)*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1))/(t1*u1) - (2*m2*(t1 + u1)*(t1*u1 + 2*q2*(t1 + u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c5*v5;
dbl v6 = Li2(chi) - Li2(1 - Power(chi,2))/2. + ln(1 - chi)*ln(chi);
dbl c6 = ((16*Power(m2,3)*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (2*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)))/(t1*u1) + (8*Power(m2,2)*(Power(t1,3) + 5*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(s*Power(t1,2)*Power(u1,2)) - (4*m2*(Power(q2,2)*Power(t1 + u1,2) - q2*(t1 + u1)*(Power(t1,2) + Power(u1,2)) - t1*u1*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)))/beta;
r += c6*v6;
dbl v7 = ln(chi)*ln(-(t1/m2));
dbl c7 = ((16*Power(m2,3)*(t1 + u1))/(s*Power(t1,2)*u1) + (8*Power(m2,2)*(-(q2*t1) + 3*Power(t1,2) + 3*t1*u1 + Power(u1,2)))/(s*Power(t1,2)*u1) + (2*Power(q2 - t1,2) + 2*(-q2 + t1)*u1 + Power(u1,2))/(t1*u1) + (2*m2*(-2*Power(q2,2)*(t1 + u1) + t1*u1*(t1 + u1) + q2*(3*Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))))/(s*Power(t1,2)*u1))/beta;
r += c7*v7;
dbl v8 = ln(-(t1/m2));
dbl c8 = -(Power(t1,3)*(q2 + 2*t1) + t1*Power(q2 + t1,2)*u1)/(2.*Power(m2 + t1,2)*(q2 + t1)*u1) + (Power(t1,3)*(7*Power(q2,2) + 13*q2*t1 + 4*Power(t1,2)) + (q2 + t1)*(-Power(q2,3) + 3*Power(q2,2)*t1 + 7*q2*Power(t1,2) + Power(t1,3))*u1 - Power(q2 + t1,3)*Power(u1,2))/(2.*(m2 + t1)*Power(q2 + t1,3)*u1) - (Power(q2 - t1,2)*Power(t1,2)*(6*Power(q2,4) + 3*Power(q2,3)*t1 - 12*Power(q2,2)*Power(t1,2) - 3*q2*Power(t1,3) + 2*Power(t1,4)) - 2*(q2 - t1)*t1*(q2 + t1)*(6*Power(q2,4) + 4*Power(q2,3)*t1 - 11*Power(q2,2)*Power(t1,2) - 4*q2*Power(t1,3) + Power(t1,4))*u1 + q2*Power(q2 + t1,3)*(6*Power(q2,2) - 5*q2*t1 - 5*Power(t1,2))*Power(u1,2))/(4.*Power(q2,2)*(-4*m2*q2 + Power(q2 - t1,2))*Power(q2 + t1,3)*u1) - (m2*(t1 + u1)*(-2*Power(t1,2) + q2*(t1 + u1)))/(q2*Power(t1,2)*u1) - (3*Power(q2 - t1,2)*t1*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(4.*q2*Power(-4*m2*q2 + Power(q2 - t1,2),2)*(q2 + t1)*u1) + (2*Power(q2,3)*u1 + Power(t1,3)*(t1 + u1) + Power(q2,2)*(Power(t1,2) + Power(u1,2)) - q2*t1*(3*Power(t1,2) + 2*t1*u1 + Power(u1,2)))/(2.*Power(q2,2)*t1*u1);
r += c8*v8;
dbl v9 = ln(chi)*ln(-(u1/m2));
dbl c9 = ((16*Power(m2,3)*(t1 + u1))/(s*t1*Power(u1,2)) + (2*Power(q2,2) + Power(t1,2) + 2*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1))/(t1*u1) + (8*Power(m2,2)*(Power(t1,2) + 3*t1*u1 + u1*(-q2 + 3*u1)))/(s*t1*Power(u1,2)) + (2*m2*(-2*Power(q2,2)*(t1 + u1) + t1*u1*(t1 + u1) + q2*(2*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2))))/(s*t1*Power(u1,2)))/beta;
r += c9*v9;
dbl v10 = ln(-(u1/m2));
dbl c10 = (-(Power(q2,3)*t1*(q2 + t1)) + Power(q2,2)*(2*q2 - 3*t1)*t1*u1 + q2*(10*q2 - 3*t1)*t1*Power(u1,2) + (7*Power(q2,2) + 8*q2*t1 - Power(t1,2))*Power(u1,3) + (13*q2 + t1)*Power(u1,4) + 4*Power(u1,5))/(2.*t1*(m2 + u1)*Power(q2 + u1,3)) - (m2*(t1 + u1)*(-2*Power(u1,2) + q2*(t1 + u1)))/(q2*t1*Power(u1,2)) - (3*Power(q2 - u1,2)*u1*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(4.*q2*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(q2 + u1)) - (u1*(Power(q2,2)*t1 + q2*u1*(2*t1 + u1) + Power(u1,2)*(t1 + 2*u1)))/(2.*t1*Power(m2 + u1,2)*(q2 + u1)) + (2*Power(q2,3)*t1 + Power(u1,3)*(t1 + u1) + Power(q2,2)*(Power(t1,2) + Power(u1,2)) - q2*u1*(Power(t1,2) + 2*t1*u1 + 3*Power(u1,2)))/(2.*Power(q2,2)*t1*u1) + (-6*Power(q2,6)*Power(t1 - u1,2) - 2*Power(u1,7)*(t1 + u1) + 4*Power(q2,2)*Power(u1,4)*(t1 + u1)*(5*t1 + u1) - 8*Power(q2,3)*Power(u1,3)*(-3*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2)) + 2*Power(q2,4)*Power(u1,2)*(Power(t1,2) - 17*t1*u1 + 6*Power(u1,2)) + q2*Power(u1,5)*(5*Power(t1,2) + 8*t1*u1 + 7*Power(u1,2)) + Power(q2,5)*u1*(-13*Power(t1,2) + 8*t1*u1 + 9*Power(u1,2)))/(4.*Power(q2,2)*t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(q2 + u1,3));
r += c10*v10;
dbl v11 = Power(ln(chi),2);
dbl c11 = (-2*Power(m2,2))/(t1*u1) - (2*m2*q2)/Power(t1 + u1,2) + (4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1))/(4.*t1*u1) + ((-8*Power(m2,3)*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (-8*Power(q2,2) - 3*Power(t1,2) + 4*t1*u1 - 3*Power(u1,2) + 6*q2*(t1 + u1))/(4.*t1*u1) - (2*Power(m2,2)*(2*Power(t1,3) + 9*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-4*q2 + 9*u1)))/(s*Power(t1,2)*Power(u1,2)) - (m2*(-4*Power(q2,2)*Power(t1 + u1,2) + q2*(t1 + u1)*(4*Power(t1,2) - 3*t1*u1 + 4*Power(u1,2)) + t1*u1*(5*Power(t1,2) + 22*t1*u1 + 5*Power(u1,2))))/(2.*s*Power(t1,2)*Power(u1,2)))/beta;
r += c11*v11;
dbl v12 = ln(chi);
dbl c12 = beta*((2*m2*q2)/(t1*u1) + (s*Power(t1 - u1,2))/(2.*(4*m2 - s)*t1*u1) + (2 + t1/u1 + u1/t1 - (4*Power(q2,2))/Power(t1 + u1,2))/2.) + (2 - t1/(2.*u1) - u1/(2.*t1) - (8*Power(m2,3)*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (q2*(2*q2 + t1 + u1))/(4.*Power(t1,2)) + (q2*(2*q2 + t1 + u1))/(4.*Power(u1,2)) - (Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)))/(2.*Power(t1,2)*Power(t1 + u1,2)) - (Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)))/(2.*Power(u1,2)*Power(t1 + u1,2)) + Power(q2,2)*(-(1/(t1*u1)) - 4/Power(t1 + u1,2)) + (q2*(q2 + 7*(t1 + u1)))/(2.*t1*u1) - (4*Power(m2,2)*(Power(t1,3) + 5*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(s*Power(t1,2)*Power(u1,2)) - (2*m2*(-(Power(q2,2)*Power(t1 + u1,2)) + q2*(t1 + u1)*(Power(t1,2) + Power(u1,2)) + t1*u1*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)) - (-2*Power(q2,2)*t1*u1 + 2*t1*u1*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + q2*(t1 + u1)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)))/(4.*Power(t1,2)*Power(u1,2)))/beta;
r += c12*v12;
dbl v13 = Power(ln(chiq),2);
dbl c13 = (2*Power(m2,2))/(t1*u1) + (2*m2*q2)/Power(t1 + u1,2) - (4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1))/(4.*t1*u1) + ((8*Power(m2,3)*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (4*Power(m2,2)*(Power(t1,3) + 6*Power(t1,2)*u1 - 2*t1*(q2 - 3*u1)*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1))/(2.*t1*u1) - (m2*(t1 + u1)*(t1*u1 + 2*q2*(t1 + u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c13*v13;
dbl v14 = ln(chiq);
dbl c14 = (4*betaq*Power(m2,2)*Power(t1 + u1,2))/(Power(t1,2)*Power(u1,2)) + (betaq*(-(Power(q2 - t1,2)*Power(t1,2)*(5*Power(q2,2) - 8*q2*t1 + 2*Power(t1,2))) + 2*(q2 - t1)*t1*(q2 + t1)*(5*Power(q2,2) - 7*q2*t1 + Power(t1,2))*u1 + q2*(-5*Power(q2,3) + 7*q2*Power(t1,2) + 6*Power(t1,3))*Power(u1,2)))/(8.*Power(q2,2)*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1) - (3*betaq*Power(q2 - t1,2)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(8.*q2*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1) - (3*betaq*Power(q2 - u1,2)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(8.*q2*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)) + (betaq*m2*(4*q2*t1*u1*(t1 + u1) + t1*u1*Power(t1 + u1,2) + 3*Power(q2,2)*(Power(t1,2) + Power(u1,2))))/(q2*Power(t1,2)*Power(u1,2)) - (betaq*(5*Power(q2,4)*Power(t1 - u1,2) + 2*Power(q2,3)*(7*t1 - 9*u1)*Power(u1,2) + 2*Power(u1,5)*(t1 + u1) - 2*q2*Power(u1,3)*(3*Power(t1,2) + 7*t1*u1 + 6*Power(u1,2)) + Power(q2,2)*Power(u1,2)*(-7*Power(t1,2) + 8*t1*u1 + 23*Power(u1,2))))/(8.*Power(q2,2)*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1) + (betaq*(6*Power(q2,4)*Power(t1 - u1,2) + 40*Power(q2,3)*t1*u1*(t1 + u1) + 4*q2*(t1 + u1)*(Power(t1,2) + Power(u1,2))*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) - Power(t1 + u1,2)*(Power(t1,4) - 2*Power(t1,3)*u1 + 4*Power(t1,2)*Power(u1,2) - 2*t1*Power(u1,3) + Power(u1,4)) - 4*Power(q2,2)*(Power(t1,4) + 12*Power(t1,3)*u1 + 16*Power(t1,2)*Power(u1,2) + 12*t1*Power(u1,3) + Power(u1,4))))/(4.*Power(q2,2)*Power(t1,2)*Power(u1,2)) - (betaq*(56*Power(q2,3)*t1*u1*Power(t1 + u1,3) - 2*Power(t1 + u1,4)*(Power(t1,4) - Power(t1,3)*u1 + 3*Power(t1,2)*Power(u1,2) - t1*Power(u1,3) + Power(u1,4)) + 4*Power(q2,4)*(3*Power(t1,4) + 6*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 6*t1*Power(u1,3) + 3*Power(u1,4)) - 2*Power(q2,2)*Power(t1 + u1,2)*(4*Power(t1,4) + 47*Power(t1,3)*u1 + 62*Power(t1,2)*Power(u1,2) + 47*t1*Power(u1,3) + 4*Power(u1,4)) + q2*Power(t1 + u1,3)*(8*Power(t1,4) + 37*Power(t1,3)*u1 + 18*Power(t1,2)*Power(u1,2) + 37*t1*Power(u1,3) + 8*Power(u1,4))))/(8.*Power(q2,2)*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2));
r += c14*v14;
dbl v15 = zeta2;
dbl c15 = (Power(m2,2)*(Power(t1,4) + 2*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 2*t1*Power(u1,3) + Power(u1,4)))/(Power(t1,3)*Power(u1,3)) + m2*q2*(-Power(t1,-2) - Power(u1,-2) + 12/Power(t1 + u1,2)) - (4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1))/(t1*u1) + ((24*Power(m2,3)*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (12*Power(q2,2) + 5*Power(t1,2) - 4*t1*u1 + 5*Power(u1,2) - 10*q2*(t1 + u1))/(2.*t1*u1) + (4*Power(m2,2)*(3*Power(t1,3) + 14*Power(t1,2)*u1 + 3*Power(u1,3) + 2*t1*u1*(-3*q2 + 7*u1)))/(s*Power(t1,2)*Power(u1,2)) - (m2*(6*Power(q2,2)*Power(t1 + u1,2) - 3*q2*(t1 + u1)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2)) - t1*u1*(7*Power(t1,2) + 30*t1*u1 + 7*Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)))/beta;
r += c15*v15;
dbl v16 = 1;
dbl c16 = (4*Power(m2,2)*Power(t1 + u1,2))/(Power(t1,2)*Power(u1,2)) + (Power(t1,2)*(q2 + 2*t1) + Power(q2 + t1,2)*u1)/(2.*(m2 + t1)*(q2 + t1)*u1) - ((q2 - t1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(4.*q2*(-4*m2*q2 + Power(q2 - t1,2))*(q2 + t1)*u1) - ((q2 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(4.*q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*(q2 + u1)) + (Power(q2,2)*t1 + q2*u1*(2*t1 + u1) + Power(u1,2)*(t1 + 2*u1))/(2.*t1*(m2 + u1)*(q2 + u1)) + (m2*(2*q2*(Power(t1,2) + Power(u1,2)) + (t1 + u1)*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(Power(t1,2)*Power(u1,2)) + (-3*Power(q2,4)*Power(t1 + u1,3) + Power(t1,2)*Power(u1,2)*Power(t1 + u1,3) - 8*Power(q2,3)*t1*u1*(3*Power(t1,2) + 5*t1*u1 + 3*Power(u1,2)) + Power(q2,2)*Power(t1 + u1,3)*(13*Power(t1,2) + 58*t1*u1 + 13*Power(u1,2)) - q2*Power(t1 + u1,2)*(5*Power(t1,4) + 15*Power(t1,3)*u1 + 16*Power(t1,2)*Power(u1,2) + 15*t1*Power(u1,3) + 5*Power(u1,4)))/(4.*Power(q2,2)*Power(t1,2)*Power(u1,2)*(t1 + u1)) + (28*Power(q2,3)*t1*u1*(t1 + u1) - Power(t1,2)*Power(u1,2)*Power(t1 + u1,2) + Power(q2,4)*(3*Power(t1,2) - 2*t1*u1 + 3*Power(u1,2)) + q2*(t1 + u1)*(5*Power(t1,4) + 14*Power(t1,3)*u1 + 14*Power(t1,2)*Power(u1,2) + 14*t1*Power(u1,3) + 5*Power(u1,4)) - Power(q2,2)*(13*Power(t1,4) + 90*Power(t1,3)*u1 + 146*Power(t1,2)*Power(u1,2) + 90*t1*Power(u1,3) + 13*Power(u1,4)))/(4.*Power(q2,2)*Power(t1,2)*Power(u1,2));
r += c16*v16;

return r;
}
cdbl Inclusive::SVOKDelta1G(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);

return (2*(-4*Power(m2,2)*Power(sp,2) + t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) - 2*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2))))*((-2*m2 + s)*ln(chi) + beta*s*ln(t1/u1)))/(beta*s*Power(t1,2)*Power(u1,2));
}

cdbl Inclusive::SVQEDDelta1G(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);

return (2*(4*Power(m2,2)*Power(sp,2) - t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) + 2*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2))))*(beta*s + (-2*m2 + s)*ln(chi)))/(beta*s*Power(t1,2)*Power(u1,2));
}

cdbl Inclusive::SVOKDelta2G(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return (-8*Power(m2,2)*Power(sp,2) + 2*t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) - 4*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
}

cdbl Inclusive::SVOKScaleRG(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return (11*(-4*Power(m2,2)*Power(sp,2) + t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) - 2*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2)))))/(6.*Power(t1,2)*Power(u1,2));
}

cdbl Inclusive::SVOKScaleFG(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return ((-4*Power(m2,2)*Power(sp,2) + t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) - 2*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2))))*(-11 + 12*ln(-(u1/m2))))/(6.*Power(t1,2)*Power(u1,2));
}

cdbl Inclusive::SVOKScaleFDelta1G(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return (8*Power(m2,2)*Power(sp,2) - 2*t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) + 4*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
}

cdbl Inclusive::SVOKL(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (2*m2*(t1 - u1))/(t1*u1*(t1 + u1)) - (Power(q2 - t1,2)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1*Power(t1 + u1,2)) + (-4*Power(q2,2)*Power(t1,4) - Power(t1,6) + Power(t1,4)*Power(u1,2) + 2*Power(q2,3)*t1*u1*(-t1 + u1) + Power(q2,4)*(t1 - u1)*(t1 + u1) + 2*q2*Power(t1,3)*(2*Power(t1,2) + t1*u1 + Power(u1,2)))/(2.*q2*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1*Power(t1 + u1,2)) + (Power(t1,4) - Power(t1,2)*Power(u1,2) + Power(q2,2)*(-Power(t1,2) + 4*t1*u1 + Power(u1,2)) - q2*(Power(t1,3) + 3*t1*Power(u1,2)))/(2.*q2*t1*u1*Power(t1 + u1,2));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (2*m2*(-t1 + u1))/(t1*u1*(t1 + u1)) + (Power(q2,2)*Power(t1,2) + q2*(4*q2 - 3*t1)*t1*u1 - (Power(q2,2) + Power(t1,2))*Power(u1,2) - q2*Power(u1,3) + Power(u1,4))/(2.*q2*t1*u1*Power(t1 + u1,2)) - (Power(q2 - u1,2)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*Power(t1 + u1,2)) + (2*Power(q2,3)*t1*(t1 - u1)*u1 - 4*Power(q2,2)*Power(u1,4) + (t1 - u1)*Power(u1,4)*(t1 + u1) + Power(q2,4)*(-Power(t1,2) + Power(u1,2)) + 2*q2*Power(u1,3)*(Power(t1,2) + t1*u1 + 2*Power(u1,2)))/(2.*q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (2*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + (4*m2*q2*(t1 - u1))/(u1*Power(t1 + u1,2));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (2*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + (4*m2*q2*(-t1 + u1))/(t1*Power(t1 + u1,2));
r += c3*v3;
dbl v4 = Li2(1 - t1/(chi*u1)) - Li2(1 - u1/(chi*t1)) + Power(ln((chi*u1)/t1),2)/2.;
dbl c4 = (8*m2*q2)/(t1*u1) - (8*q2*s)/Power(t1 + u1,2);
r += c4*v4;
dbl v5 = Li2(-chi) + (-2*Li2(-(chi/chiq)) - 2*Li2(-(chi*chiq)) - 2*(ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq)) + ln(chi)*(2*ln(1 + chi) + ln(-(t1/m2)) + ln(-(u1/m2))))/2.;
dbl c5 = ((-16*m2*q2)/(t1*u1) + (32*Power(m2,2)*q2)/(s*t1*u1) + (8*q2*(q2 - t1 - u1))/Power(t1 + u1,2))/beta;
r += c5*v5;
dbl v6 = Li2(chi) - Li2(1 - Power(chi,2))/2. + ln(1 - chi)*ln(chi);
dbl c6 = ((32*Power(m2,2)*q2)/(s*t1*u1) + (16*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + 16*m2*q2*(-(1/(t1*u1)) - 2/Power(t1 + u1,2)))/beta;
r += c6*v6;
dbl v7 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c7 = (-8*m2*q2)/Power(t1 + u1,2) + (4*q2*(q2 - t1 - u1))/Power(t1 + u1,2);
r += c7*v7;
dbl v8 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c8 = (8*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + 16*m2*q2*(-(1/(t1*u1)) + Power(t1 + u1,-2));
r += c8*v8;
dbl v9 = ln(-(t1/m2));
dbl c9 = (2*q2)/u1 - (4*q2*Power(t1,2)*(Power(t1,2) + (q2 + t1)*u1))/((m2 + t1)*(q2 + t1)*u1*Power(t1 + u1,2)) - (2*q2*(q2 - t1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/((-4*m2*q2 + Power(q2 - t1,2))*(q2 + t1)*u1*Power(t1 + u1,2));
r += c9*v9;
dbl v10 = ln(-(u1/m2));
dbl c10 = (2*q2)/t1 - (4*q2*Power(u1,2)*(q2*t1 + u1*(t1 + u1)))/(t1*(m2 + u1)*(q2 + u1)*Power(t1 + u1,2)) - (2*q2*(q2 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*(q2 + u1)*Power(t1 + u1,2));
r += c10*v10;
dbl v11 = Power(ln(chi),2);
dbl c11 = (-10*m2*q2)/(t1*u1) + (10*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + ((-16*Power(m2,2)*q2)/(s*t1*u1) - (10*q2*s)/Power(t1 + u1,2) + 8*m2*q2*(1/(t1*u1) + 3/Power(t1 + u1,2)))/beta;
r += c11*v11;
dbl v12 = ln(chi);
dbl c12 = beta*((-2*q2*s)/(t1*u1) - (2*q2*Power(s,2)*Power(t1 - u1,2))/((4*m2 - s)*t1*u1*Power(t1 + u1,2)));
r += c12*v12;
dbl v13 = Power(ln(chiq),2);
dbl c13 = (-6*q2*s)/Power(t1 + u1,2) + 2*m2*q2*(5/(t1*u1) - 4/Power(t1 + u1,2)) + ((-8*m2*q2)/(t1*u1) + (16*Power(m2,2)*q2)/(s*t1*u1) + (4*q2*(q2 - t1 - u1))/Power(t1 + u1,2))/beta;
r += c13*v13;
dbl v14 = ln(chiq);
dbl c14 = -((betaq*q2*(-2*q2 + t1 + u1))/(t1*u1)) - (betaq*q2*(q2 - t1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/((-4*m2*q2 + Power(q2 - t1,2))*t1*u1*Power(t1 + u1,2)) - (betaq*q2*(q2 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c14*v14;
dbl v15 = zeta2;
dbl c15 = (-8*q2*s)/Power(t1 + u1,2) + 8*m2*q2*(3/(t1*u1) - 4/Power(t1 + u1,2)) + ((48*Power(m2,2)*q2)/(s*t1*u1) + (28*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + 8*m2*q2*(-3/(t1*u1) - 8/Power(t1 + u1,2)))/beta;
r += c15*v15;

return r;
}

cdbl Inclusive::SVQEDL(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (m2*(-2*q2 - t1 + u1))/(q2*t1*u1) + ((q2 - t1)*(Power(q2 - t1,2)*Power(t1,2)*(2*Power(q2,2) + 7*q2*t1 - 2*Power(t1,2)) - 2*q2*(q2 - t1)*Power(t1,2)*(2*q2 + 5*t1)*u1 + (-2*Power(q2,4) + 5*Power(q2,3)*t1 + 7*q2*Power(t1,3) + 2*Power(t1,4))*Power(u1,2))*(q2*(t1 - u1) - t1*(t1 + u1)))/(8.*Power(q2,2)*Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*u1*Power(t1 + u1,2)) + (3*Power(q2 - t1,3)*Power(q2*(-t1 + u1) + t1*(t1 + u1),3))/(8.*q2*Power(-4*m2*q2 + Power(q2 - t1,2),3)*u1*Power(t1 + u1,2)) + (4*Power(q2,2)*Power(t1 - u1,2)*u1 + 4*Power(q2,3)*Power(t1 + u1,2) - 4*Power(t1,2)*(t1 - u1)*Power(t1 + u1,2) + q2*t1*(t1 + u1)*(Power(t1,2) - 10*t1*u1 + 5*Power(u1,2)))/(8.*Power(q2,2)*t1*u1*Power(t1 + u1,2)) + (-4*Power(q2,5)*Power(t1 - u1,2) + 6*Power(t1,4)*(t1 - u1)*Power(t1 + u1,2) + 2*Power(q2,4)*(t1 - 3*u1)*(3*Power(t1,2) + Power(u1,2)) - q2*Power(t1,3)*(t1 + u1)*(17*Power(t1,2) - 10*t1*u1 + 5*Power(u1,2)) + 2*Power(q2,2)*Power(t1,2)*(7*Power(t1,3) - 8*Power(t1,2)*u1 - t1*Power(u1,2) - 2*Power(u1,3)) + Power(q2,3)*t1*(-5*Power(t1,3) + 27*Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3)))/(8.*Power(q2,2)*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1*Power(t1 + u1,2));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (m2*(-2*q2 + t1 - u1))/(q2*t1*u1) + (3*Power(q2 - u1,3)*Power(q2*(t1 - u1) + u1*(t1 + u1),3))/(8.*q2*t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)*Power(t1 + u1,2)) + ((q2 - u1)*(q2*(t1 - u1) + u1*(t1 + u1))*(2*Power(q2,4)*(t1 - u1)*(t1 + u1) - 2*(t1 - u1)*Power(u1,4)*(t1 + u1) + 2*Power(q2,2)*Power(u1,3)*(3*t1 + 7*u1) + Power(q2,3)*u1*(-5*Power(t1,2) + 4*t1*u1 - 3*Power(u1,2)) - q2*Power(u1,3)*(7*Power(t1,2) + 10*t1*u1 + 11*Power(u1,2))))/(8.*Power(q2,2)*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*Power(t1 + u1,2)) - (4*Power(q2,5)*Power(t1 - u1,2) + 6*(t1 - u1)*Power(u1,4)*Power(t1 + u1,2) + 2*Power(q2,4)*(3*t1 - u1)*(Power(t1,2) + 3*Power(u1,2)) + q2*Power(u1,3)*(t1 + u1)*(5*Power(t1,2) - 10*t1*u1 + 17*Power(u1,2)) + 2*Power(q2,2)*Power(u1,2)*(2*Power(t1,3) + Power(t1,2)*u1 + 8*t1*Power(u1,2) - 7*Power(u1,3)) - Power(q2,3)*u1*(Power(t1,3) + Power(t1,2)*u1 + 27*t1*Power(u1,2) - 5*Power(u1,3)))/(8.*Power(q2,2)*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(t1 + u1,2)) + ((4*q2)/(t1*u1) + (4*(t1 - u1)*u1)/(Power(q2,2)*t1) + 4*(1/u1 - (4*t1)/Power(t1 + u1,2)) + (-11 + u1/t1 + (16*t1)/(t1 + u1))/q2)/8.;
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (2*q2*(q2 - t1 - u1))/Power(t1 + u1,2) - (4*m2*q2)/(u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (2*q2*(q2 - t1 - u1))/Power(t1 + u1,2) - (4*m2*q2)/(t1*(t1 + u1));
r += c3*v3;
dbl v4 = Li2(-chi) + (-2*Li2(-(chi/chiq)) - 2*Li2(-(chi*chiq)) - 2*(ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq)) + ln(chi)*(2*ln(1 + chi) + ln(-(t1/m2)) + ln(-(u1/m2))))/2.;
dbl c4 = ((16*m2*q2)/(t1*u1) - (32*Power(m2,2)*q2)/(s*t1*u1) - (8*q2*s)/Power(t1 + u1,2))/beta;
r += c4*v4;
dbl v5 = Li2(chi) - Li2(1 - Power(chi,2))/2. + ln(1 - chi)*ln(chi);
dbl c5 = ((-32*Power(m2,2)*q2)/(s*t1*u1) - (16*q2*s)/Power(t1 + u1,2) + 16*m2*q2*(1/(t1*u1) + 2/Power(t1 + u1,2)))/beta;
r += c5*v5;
dbl v6 = ln(-(t1/m2));
dbl c6 = 2.5 - q2/t1 + t1/q2 + 4*m2*(1/t1 - 1/u1) - ((q2 - 2*t1)*(2*q2 - t1))/(2.*q2*u1) + (8*q2*t1)/Power(t1 + u1,2) - (4*(q2 + 2*t1))/(t1 + u1) + (2*q2*Power(t1,3)*(Power(t1,2) + (q2 + t1)*u1))/(Power(m2 + t1,2)*(q2 + t1)*u1*Power(t1 + u1,2)) + (2*q2*t1*(-2*q2*Power(t1,3)*(q2 + 2*t1) - t1*(Power(q2,3) + 3*Power(q2,2)*t1 - 2*Power(t1,3))*u1 + 2*Power(q2 + t1,3)*Power(u1,2)))/((m2 + t1)*Power(q2 + t1,3)*u1*Power(t1 + u1,2)) + (Power(q2 - t1,3)*Power(t1,3)*(Power(q2,4) + 5*Power(q2,3)*t1 + 7*Power(q2,2)*Power(t1,2) - Power(t1,4)) - Power(q2 - t1,2)*Power(t1,2)*(q2 + t1)*(Power(q2,4) + 6*Power(q2,3)*t1 + 14*Power(q2,2)*Power(t1,2) + 2*q2*Power(t1,3) - Power(t1,4))*u1 - t1*Power(q2 + t1,3)*(Power(q2,4) - 5*Power(q2,3)*t1 + Power(q2,2)*Power(t1,2) + 2*q2*Power(t1,3) + Power(t1,4))*Power(u1,2) + Power(q2 + t1,3)*(Power(q2,2) - 2*q2*t1 - Power(t1,2))*(Power(q2,2) + Power(t1,2))*Power(u1,3))/(q2*(-4*m2*q2 + Power(q2 - t1,2))*t1*Power(q2 + t1,3)*u1*Power(t1 + u1,2)) + (3*Power(q2 - t1,2)*Power(q2*(-t1 + u1) + t1*(t1 + u1),3))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*(q2 + t1)*u1*Power(t1 + u1,2));
r += c6*v6;
dbl v7 = ln(-(u1/m2));
dbl c7 = -5.5 + 4*m2*(-(1/t1) + 1/u1) + (5*u1)/(2.*t1) + ((t1 - u1)*u1)/(q2*t1) + (8*t1)/(t1 + u1) + q2*(-(1/t1) - 1/u1 - (8*t1)/Power(t1 + u1,2) + 4/(t1 + u1)) + (2*q2*Power(u1,3)*(q2*t1 + u1*(t1 + u1)))/(t1*Power(m2 + u1,2)*(q2 + u1)*Power(t1 + u1,2)) + (3*Power(q2 - u1,2)*Power(q2*(t1 - u1) + u1*(t1 + u1),3))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(q2 + u1)*Power(t1 + u1,2)) + ((q2*(t1 - u1) + u1*(t1 + u1))*(Power(q2,5)*(t1 - 3*u1)*Power(u1,2) - Power(t1,2)*Power(u1,6) + Power(u1,8) + Power(q2,6)*(t1 - u1)*(t1 + u1) - 2*q2*Power(u1,5)*(2*Power(t1,2) + t1*u1 + Power(u1,2)) + Power(q2,4)*Power(u1,2)*(-3*Power(t1,2) + 7*t1*u1 + 2*Power(u1,2)) - Power(q2,2)*Power(u1,4)*(5*Power(t1,2) + 7*t1*u1 + 6*Power(u1,2)) + Power(q2,3)*Power(u1,3)*(-4*Power(t1,2) + t1*u1 + 9*Power(u1,2))))/(q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(q2 + u1,3)*Power(t1 + u1,2)) + (2*q2*u1*(Power(q2,3)*t1*(2*t1 - u1) + 2*t1*Power(u1,3)*(t1 + u1) + Power(q2,2)*u1*(6*Power(t1,2) - 3*t1*u1 - 2*Power(u1,2)) + q2*(6*Power(t1,2)*Power(u1,2) - 4*Power(u1,4))))/(t1*(m2 + u1)*Power(q2 + u1,3)*Power(t1 + u1,2));
r += c7*v7;
dbl v8 = Power(ln(chi),2);
dbl c8 = (2*m2*q2)/(t1*u1) - (2*q2*s)/Power(t1 + u1,2) + ((16*Power(m2,2)*q2)/(s*t1*u1) + (10*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + 8*m2*q2*(-(1/(t1*u1)) - 3/Power(t1 + u1,2)))/beta;
r += c8*v8;
dbl v9 = ln(chi);
dbl c9 = beta*((2*q2*(q2 - t1 - u1))/(t1*u1) + (2*q2*Power(s,2)*Power(t1 - u1,2))/((4*m2 - s)*t1*u1*Power(t1 + u1,2))) + ((16*Power(m2,2)*q2)/(s*t1*u1) + (8*q2*s)/Power(t1 + u1,2) + 8*m2*q2*(-(1/(t1*u1)) - 2/Power(t1 + u1,2)))/beta;
r += c9*v9;
dbl v10 = Power(ln(chiq),2);
dbl c10 = (-2*m2*q2)/(t1*u1) + (2*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + ((8*m2*q2)/(t1*u1) - (16*Power(m2,2)*q2)/(s*t1*u1) - (4*q2*s)/Power(t1 + u1,2))/beta;
r += c10*v10;
dbl v11 = ln(chiq);
dbl c11 = -((betaq*m2*q2*(Power(t1,2) + 10*t1*u1 + Power(u1,2)))/(Power(t1,2)*Power(u1,2))) + (betaq*(Power(q2 - t1,2)*(3*q2 - t1)*Power(t1,2)*(q2 + 2*t1) - 2*q2*t1*(Power(q2,3) + 2*q2*Power(t1,2) - 3*Power(t1,3))*u1 + (-Power(q2,4) + 5*Power(q2,3)*t1 - 3*Power(q2,2)*Power(t1,2) + 5*q2*Power(t1,3) + 2*Power(t1,4))*Power(u1,2))*(q2*(t1 - u1) - t1*(t1 + u1)))/(4.*q2*(-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*u1*Power(t1 + u1,2)) + (3*betaq*Power(q2 - t1,2)*Power(q2*(-t1 + u1) + t1*(t1 + u1),3))/(4.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*u1*Power(t1 + u1,2)) + (betaq*(Power(q2,4)*Power(t1,2) + Power(q2,3)*(2*q2 - 5*t1)*t1*u1 + 3*Power(q2,2)*(-Power(q2,2) + Power(t1,2))*Power(u1,2) + q2*(q2 - t1)*(q2 + 5*t1)*Power(u1,3) + (9*Power(q2,2) - 6*q2*t1 - 2*Power(t1,2))*Power(u1,4) - 9*q2*Power(u1,5) + 2*Power(u1,6))*(q2*(t1 - u1) + u1*(t1 + u1)))/(4.*q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2)*Power(t1 + u1,2)) + (3*betaq*Power(q2 - u1,2)*Power(q2*(t1 - u1) + u1*(t1 + u1),3))/(4.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*Power(t1 + u1,2)) - (betaq*(32*Power(q2,2)*Power(t1,2)*Power(u1,2)*(t1 + u1) + 2*t1*Power(t1 - u1,2)*u1*Power(t1 + u1,3) - 4*q2*t1*u1*Power(t1 + u1,2)*(Power(t1,2) + Power(u1,2)) + Power(q2,3)*(Power(t1,4) + 4*Power(t1,3)*u1 - 26*Power(t1,2)*Power(u1,2) + 4*t1*Power(u1,3) + Power(u1,4))))/(4.*q2*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2));
r += c11*v11;
dbl v12 = zeta2;
dbl c12 = (-8*m2*q2)/(t1*u1) + (8*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + ((-48*Power(m2,2)*q2)/(s*t1*u1) - (28*q2*s)/Power(t1 + u1,2) + 8*m2*q2*(3/(t1*u1) + 8/Power(t1 + u1,2)))/beta;
r += c12*v12;
dbl v13 = 1;
dbl c13 = (-8*m2*q2)/(t1*u1) - (2*q2*Power(t1,2)*(Power(t1,2) + (q2 + t1)*u1))/((m2 + t1)*(q2 + t1)*u1*Power(t1 + u1,2)) + (2 + t1/u1 + u1/t1 + (16*q2*(q2 - t1 - u1))/Power(t1 + u1,2))/2. + ((q2 - t1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),3))/(2.*(-4*m2*q2 + Power(q2 - t1,2))*t1*(q2 + t1)*u1*Power(t1 + u1,2)) - (2*q2*Power(u1,2)*(q2*t1 + u1*(t1 + u1)))/(t1*(m2 + u1)*(q2 + u1)*Power(t1 + u1,2)) + ((q2 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),3))/(2.*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(q2 + u1)*Power(t1 + u1,2));
r += c13*v13;

return r;
}
cdbl Inclusive::SVOKDelta1L(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);

return (-16*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1)*((-2*m2 + s)*ln(chi) + beta*s*ln(t1/u1)))/(beta*s*Power(sp,2)*t1*u1);
}

cdbl Inclusive::SVQEDDelta1L(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);

return (16*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1)*(beta*s + (-2*m2 + s)*ln(chi)))/(beta*s*Power(sp,2)*t1*u1);
}

cdbl Inclusive::SVOKDelta2L(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return (-16*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1))/(Power(sp,2)*t1*u1);
}

cdbl Inclusive::SVOKScaleRL(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return (-44*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1))/(3.*Power(sp,2)*t1*u1);
}

cdbl Inclusive::SVOKScaleFL(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return (-4*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1)*(-11 + 12*ln(-(u1/m2))))/(3.*Power(sp,2)*t1*u1);
}

cdbl Inclusive::SVOKScaleFDelta1L(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return (16*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1))/(Power(sp,2)*t1*u1);
}

cdbl Inclusive::SVOKP(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) + Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) + Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) + Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)));
dbl c0 = (-2*m2)/(t1*(t1 + u1)) + (q2*Power(t1,2) - 4*Power(q2,2)*u1 + 5*q2*t1*u1 - 3*Power(t1,2)*u1 + 2*q2*Power(u1,2) - 4*t1*Power(u1,2) - 3*Power(u1,3))/(4*q2*Power(t1,2)*u1 + 4*q2*t1*Power(u1,2)) + (-(Power(q2,3)*Power(t1,2)) + Power(q2,2)*t1*(3*q2 + 2*t1)*u1 - 2*q2*(Power(q2,2) + q2*t1 + Power(t1,2))*Power(u1,2) + (6*Power(q2,2) - 7*q2*t1 + 3*Power(t1,2))*Power(u1,3) + (-7*q2 + 4*t1)*Power(u1,4) + 3*Power(u1,5))/(4.*q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(t1 + u1)) - (Power(q2 - u1,2)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(4.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(t1 + u1));
r += c0*v0;
dbl v1 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))));
dbl c1 = (2*m2)/(t1*(t1 + u1)) + (Power(q2,3)*Power(t1,2) - Power(q2,2)*t1*(3*q2 + 2*t1)*u1 + 2*q2*(Power(q2,2) + q2*t1 + Power(t1,2))*Power(u1,2) + (-6*Power(q2,2) + 7*q2*t1 - 3*Power(t1,2))*Power(u1,3) + (7*q2 - 4*t1)*Power(u1,4) - 3*Power(u1,5))/(4.*q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(t1 + u1)) + (Power(q2 - u1,2)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(4.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(t1 + u1)) + (4*Power(q2,2)*u1 - q2*(Power(t1,2) + 5*t1*u1 + 2*Power(u1,2)) + u1*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)))/(4.*q2*t1*u1*(t1 + u1));
r += c1*v1;
dbl v2 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c2 = (-2*m2)/(u1*(t1 + u1)) + (t1*(-4*Power(q2,2) + 2*q2*t1 - 3*Power(t1,2)) + (5*q2 - 4*t1)*t1*u1 + (q2 - 3*t1)*Power(u1,2))/(4.*q2*t1*u1*(t1 + u1)) + (Power(q2 - t1,2)*(t1 - u1)*(q2*(-t1 + u1) + t1*(t1 + u1)))/(4.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1*(t1 + u1)) + (-(Power(q2,3)*(2*Power(t1,2) - 3*t1*u1 + Power(u1,2))) + 2*Power(q2,2)*t1*(3*Power(t1,2) - t1*u1 + Power(u1,2)) - q2*Power(t1,2)*(7*Power(t1,2) + 7*t1*u1 + 2*Power(u1,2)) + Power(t1,3)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)))/(4.*q2*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + t1)/m2);
dbl c3 = (Power(m2,2)*(5*Power(t1,2) + 2*t1*u1 + Power(u1,2)))/(Power(t1,3)*u1) + m2*(2/u1 + (q2*(t1 - u1))/(Power(t1,2)*(t1 + u1))) - (2*Power(q2,2) - 2*q2*(t1 + 2*u1) + (t1 + u1)*(t1 + 2*u1))/(2.*u1*(t1 + u1));
r += c3*v3;
dbl v4 = Li2((m2 + u1)/m2);
dbl c4 = -(2*Power(q2 - t1,2) - 2*q2*u1 + 3*t1*u1 + Power(u1,2))/(2.*t1*(t1 + u1)) + (Power(m2,2)*(Power(t1,2) + 2*t1*u1 + 5*Power(u1,2)))/(t1*Power(u1,3)) + (m2*(q2*t1*(-t1 + u1) + 2*Power(u1,2)*(t1 + u1)))/(t1*Power(u1,2)*(t1 + u1));
r += c4*v4;
dbl v5 = Li2(1 - t1/(chi*u1)) - Li2(1 - u1/(chi*t1)) + Power(ln((chi*u1)/t1),2)/2.;
dbl c5 = (-2*m2*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) - ((-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1));
r += c5*v5;
dbl v6 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
dbl c6 = (4 - (6*q2)/t1 + (2*Power(q2,2) - 6*q2*t1 + 3*Power(t1,2))/(t1*u1) + (3*u1)/t1 + (4*q2)/(t1 + u1) - (8*Power(m2,2)*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (2*m2*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c6*v6;
dbl v7 = Li2(chi) - Li2(1 - Power(chi,2))/2. + ln(1 - chi)*ln(chi);
dbl c7 = ((-8*Power(m2,2)*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(s*Power(t1,2)*Power(u1,2)) + (2*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) - (4*m2*(Power(t1,2) + Power(u1,2))*((t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c7*v7;
dbl v8 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c8 = m2*(1/t1 + 1/u1) + ((-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(2.*t1*u1*(t1 + u1));
r += c8*v8;
dbl v9 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c9 = 2*m2*(1/t1 + (2*t1)/Power(u1,2) + 1/u1 + (2*u1)/Power(t1,2)) + ((-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1));
r += c9*v9;
dbl v10 = ln(chi)*ln(-(t1/m2));
dbl c10 = ((-8*Power(m2,2)*(2*q2*Power(t1,2) - Power(t1,3) + 2*t1*Power(u1,2) + Power(u1,3)))/(s*Power(t1,2)*u1*(t1 + u1)) + (2*Power(q2 - t1,2)*t1 + 4*t1*(-q2 + t1)*u1 + (-2*q2 + 3*t1)*Power(u1,2) + Power(u1,3))/(t1*u1*(t1 + u1)) - (2*m2*(2*Power(q2,2)*Power(t1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 2*Power(u1,2))))/(s*Power(t1,2)*u1*(t1 + u1)))/beta;
r += c10*v10;
dbl v11 = ln(-(t1/m2));
dbl c11 = 2 + q2/t1 + (2*t1)/u1 - (m2*Power(t1 + u1,2))/(Power(t1,2)*u1) - (Power(t1,3)*(q2 + 2*t1) + t1*(Power(q2,2) + 5*q2*t1 + 3*Power(t1,2))*u1 + Power(q2 + t1,2)*Power(u1,2))/((m2 + t1)*(q2 + t1)*u1*(t1 + u1)) - (q2*(q2 - t1)*(t1 - u1)*(q2*(t1 - u1) - t1*(t1 + u1)))/((-4*m2*q2 + Power(q2 - t1,2))*(q2 + t1)*u1*(t1 + u1));
r += c11*v11;
dbl v12 = ln(chi)*ln(-(u1/m2));
dbl c12 = (2 - (4*q2)/t1 + (-2*q2 + t1)/u1 + (2*u1)/t1 + (2*q2*(q2 + t1))/(t1*(t1 + u1)) - (8*Power(m2,2)*(Power(t1,3) + 2*Power(t1,2)*u1 + (2*q2 - u1)*Power(u1,2)))/(s*t1*Power(u1,2)*(t1 + u1)) - (2*m2*(2*Power(q2,2)*Power(u1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(2*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(s*t1*Power(u1,2)*(t1 + u1)))/beta;
r += c12*v12;
dbl v13 = ln(-(u1/m2));
dbl c13 = 2 + q2/u1 + (2*u1)/t1 - (m2*Power(t1 + u1,2))/(t1*Power(u1,2)) - (q2*(q2 - u1)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*(q2 + u1)*(t1 + u1)) - (Power(q2,2)*t1*(t1 + u1) + Power(u1,2)*(t1 + u1)*(t1 + 2*u1) + q2*u1*(2*Power(t1,2) + 5*t1*u1 + Power(u1,2)))/(t1*(m2 + u1)*(q2 + u1)*(t1 + u1));
r += c13*v13;
dbl v14 = Power(ln(chi),2);
dbl c14 = (-6*Power(m2,2))/(t1*u1) + (4 - (14*q2)/t1 + (2*Power(q2,2) - 14*q2*t1 + 7*Power(t1,2))/(t1*u1) + (7*u1)/t1 + (20*q2)/(t1 + u1))/4. + (m2*(Power(t1,2) + Power(u1,2))*(2*Power(t1,3) + 6*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-q2 + 6*u1)))/(Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)) + ((4 + (6*q2)/t1 + (2*Power(q2,2) + 6*q2*t1 - 3*Power(t1,2))/(t1*u1) - (3*u1)/t1 - (20*q2)/(t1 + u1))/4. + (2*Power(m2,2)*(2*Power(t1,3) + 3*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 3*u1)))/(s*Power(t1,2)*Power(u1,2)) - (m2*(2*Power(q2,2)*t1*u1*(t1 + u1) - (t1 + u1)*(4*Power(t1,4) + 11*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 11*t1*Power(u1,3) + 4*Power(u1,4)) + q2*(4*Power(t1,4) + 15*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 15*t1*Power(u1,3) + 4*Power(u1,4))))/(2.*s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c14*v14;
dbl v15 = ln(chi);
dbl c15 = beta*((-2*m2*q2)/(t1*u1) - (Power(t1 - u1,2)*(2*Power(q2,2) - 3*q2*(t1 + u1) + Power(t1 + u1,2)))/(2.*(4*m2 - s)*t1*u1*(t1 + u1)) + (4*Power(q2,2)*t1*u1 - 2*q2*Power(t1 + u1,3) + Power(t1 + u1,4))/(2.*t1*u1*Power(t1 + u1,2)));
r += c15*v15;
dbl v16 = Power(ln(chiq),2);
dbl c16 = (6*Power(m2,2))/(t1*u1) + m2*((-1 + q2/u1)/t1 - (2*t1)/Power(u1,2) - 1/u1 - (2*u1)/Power(t1,2) - (2*q2)/Power(t1 + u1,2)) - (2*Power(q2,2)*(t1 + u1) - 2*q2*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) + (t1 + u1)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)))/(4.*t1*u1*(t1 + u1)) + ((-4*Power(m2,2)*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (4 - (6*q2)/t1 + (2*Power(q2,2) - 6*q2*t1 + 3*Power(t1,2))/(t1*u1) + (3*u1)/t1 + (4*q2)/(t1 + u1))/2. + (m2*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c16*v16;
dbl v17 = ln(chiq);
dbl c17 = (2*betaq*m2*q2)/(t1*u1) - (betaq*q2*(q2 - t1)*(t1 - u1)*(q2*(t1 - u1) - t1*(t1 + u1)))/(2.*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1*(t1 + u1)) - (betaq*q2*(q2 - u1)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(2.*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(t1 + u1)) + (betaq*q2*(Power(t1,3) + 3*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 3*u1)))/(t1*u1*Power(t1 + u1,2));
r += c17*v17;
dbl v18 = zeta2;
dbl c18 = -4 + (6*q2)/t1 + (-2*Power(q2,2) + 6*q2*t1 - 3*Power(t1,2))/(t1*u1) - (3*u1)/t1 - (4*q2)/(t1 + u1) - (Power(m2,2)*(Power(t1,4) + 2*Power(t1,3)*u1 - 26*Power(t1,2)*Power(u1,2) + 2*t1*Power(u1,3) + Power(u1,4)))/(Power(t1,3)*Power(u1,3)) + m2*((-4*t1)/Power(u1,2) - (4*u1)/Power(t1,2) + q2*(Power(t1,-2) + Power(u1,-2) + 4/(t1*u1) - 12/Power(t1 + u1,2))) + (-2 - (5*q2)/t1 - (2*Power(q2,2) + 10*q2*t1 - 5*Power(t1,2))/(2.*t1*u1) + (5*u1)/(2.*t1) + (14*q2)/(t1 + u1) - (4*Power(m2,2)*(3*Power(t1,3) + 4*Power(t1,2)*u1 - 2*t1*(q2 - 2*u1)*u1 + 3*Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) - (m2*(-2*Power(q2,2)*t1*u1*(t1 + u1) + (t1 + u1)*(6*Power(t1,4) + 17*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 17*t1*Power(u1,3) + 6*Power(u1,4)) - q2*(6*Power(t1,4) + 23*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 23*t1*Power(u1,3) + 6*Power(u1,4))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c18*v18;
dbl v19 = 1;
dbl c19 = (q2*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) - (m2*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2));
r += c19*v19;

return r;
}

cdbl Inclusive::SVQEDP(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (-3*Power(q2 - t1,3)*(t1 - u1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(16.*q2*Power(-4*m2*q2 + Power(q2 - t1,2),3)*u1*(t1 + u1)) + (m2*(2*q2*Power(t1,2) + u1*Power(t1 + u1,2)))/(q2*Power(t1,2)*u1*(t1 + u1)) - ((q2 - t1)*(2*Power(q2,4)*Power(t1 - u1,2)*(2*t1 - u1) - Power(q2,3)*t1*(t1 - u1)*(19*Power(t1,2) - 2*t1*u1 + 3*Power(u1,2)) + Power(t1,4)*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) - q2*Power(t1,3)*(21*Power(t1,3) + 29*Power(t1,2)*u1 + 11*t1*Power(u1,2) - 5*Power(u1,3)) + Power(q2,2)*Power(t1,2)*(31*Power(t1,3) + 7*Power(t1,2)*u1 - 15*t1*Power(u1,2) + Power(u1,3))))/(16.*Power(q2,2)*Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*u1*(t1 + u1)) + (16*Power(q2,3)*Power(t1,2) + 2*q2*t1*(t1 + u1)*(2*Power(t1,2) - t1*u1 + 3*Power(u1,2)) + Power(t1,2)*(t1 + u1)*(5*Power(t1,2) + 10*t1*u1 + 9*Power(u1,2)) - 4*Power(q2,2)*(5*Power(t1,3) + 6*Power(t1,2)*u1 + 4*t1*Power(u1,2) + Power(u1,3)))/(16.*Power(q2,2)*Power(t1,2)*u1*(t1 + u1)) + (-4*Power(q2,3)*t1*(t1 - u1)*(2*Power(t1,2) + t1*u1 - 2*Power(u1,2)) - Power(q2,2)*Power(t1,2)*(t1 + 3*u1)*(5*Power(t1,2) + 2*t1*u1 + Power(u1,2)) - 2*Power(t1,4)*(t1 + u1)*(5*Power(t1,2) + 8*t1*u1 + 7*Power(u1,2)) + 4*Power(q2,4)*(Power(t1,3) - 2*Power(t1,2)*u1 + Power(u1,3)) + q2*Power(t1,3)*(19*Power(t1,3) + 43*Power(t1,2)*u1 + 37*t1*Power(u1,2) + 5*Power(u1,3)))/(16.*Power(q2,2)*(-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*u1*(t1 + u1));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = m2*(2/(t1*(t1 + u1)) + (t1 + u1)/(q2*Power(u1,2))) + (3*Power(q2 - u1,3)*(t1 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(16.*q2*t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)*(t1 + u1)) + (16*Power(q2,3)*Power(u1,2) + 2*q2*u1*(t1 + u1)*(3*Power(t1,2) - t1*u1 + 2*Power(u1,2)) + Power(u1,2)*(t1 + u1)*(9*Power(t1,2) + 10*t1*u1 + 5*Power(u1,2)) - 4*Power(q2,2)*(Power(t1,3) + 4*Power(t1,2)*u1 + 6*t1*Power(u1,2) + 5*Power(u1,3)))/(16.*Power(q2,2)*t1*Power(u1,2)*(t1 + u1)) + (-(Power(q2,2)*Power(u1,2)*(3*t1 + u1)*(Power(t1,2) + 2*t1*u1 + 5*Power(u1,2))) - 2*Power(u1,4)*(t1 + u1)*(7*Power(t1,2) + 8*t1*u1 + 5*Power(u1,2)) + 4*Power(q2,3)*u1*(-2*Power(t1,3) + 3*Power(t1,2)*u1 + t1*Power(u1,2) - 2*Power(u1,3)) + 4*Power(q2,4)*(Power(t1,3) - 2*t1*Power(u1,2) + Power(u1,3)) + q2*Power(u1,3)*(5*Power(t1,3) + 37*Power(t1,2)*u1 + 43*t1*Power(u1,2) + 19*Power(u1,3)))/(16.*Power(q2,2)*t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2)*(t1 + u1)) - ((q2 - u1)*(-2*Power(q2,4)*(t1 - 2*u1)*Power(t1 - u1,2) + Power(u1,4)*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) + Power(q2,3)*(t1 - u1)*u1*(3*Power(t1,2) - 2*t1*u1 + 19*Power(u1,2)) - q2*Power(u1,3)*(-5*Power(t1,3) + 11*Power(t1,2)*u1 + 29*t1*Power(u1,2) + 21*Power(u1,3)) + Power(q2,2)*Power(u1,2)*(Power(t1,3) - 15*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 31*Power(u1,3))))/(16.*Power(q2,2)*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*(t1 + u1));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = -((m2*(t1 - u1)*(Power(t1,2) + (q2 + t1)*u1))/(Power(t1,2)*u1*(t1 + u1))) - (Power(m2,2)*(5*Power(t1,2) + 2*t1*u1 + Power(u1,2)))/(Power(t1,3)*u1) + (2*Power(q2 - t1,2)*t1 + 4*t1*(-q2 + t1)*u1 + (-2*q2 + 3*t1)*Power(u1,2) + Power(u1,3))/(2.*t1*u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = 1 - (2*q2)/t1 + (-2*q2 + t1)/(2.*u1) + u1/t1 + (q2*(q2 + t1))/(t1*(t1 + u1)) - (Power(m2,2)*(Power(t1,2) + 2*t1*u1 + 5*Power(u1,2)))/(t1*Power(u1,3)) + (m2*(t1 - u1)*(q2*t1 + u1*(t1 + u1)))/(t1*Power(u1,2)*(t1 + u1));
r += c3*v3;
dbl v4 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
dbl c4 = (-4 + (6*q2)/t1 + (-2*Power(q2,2) + 6*q2*t1 - 3*Power(t1,2))/(t1*u1) - (3*u1)/t1 - (4*q2)/(t1 + u1) + (8*Power(m2,2)*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) - (2*m2*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c4*v4;
dbl v5 = Li2(chi) - Li2(1 - Power(chi,2))/2. + ln(1 - chi)*ln(chi);
dbl c5 = ((8*Power(m2,2)*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(s*Power(t1,2)*Power(u1,2)) - (2*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) + (4*m2*(Power(t1,2) + Power(u1,2))*((t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c5*v5;
dbl v6 = ln(chi)*ln(-(t1/m2));
dbl c6 = ((-2*Power(q2 - t1,2)*t1 + 4*(q2 - t1)*t1*u1 + (2*q2 - 3*t1)*Power(u1,2) - Power(u1,3))/(t1*u1*(t1 + u1)) + (8*Power(m2,2)*(2*q2*Power(t1,2) - Power(t1,3) + 2*t1*Power(u1,2) + Power(u1,3)))/(s*Power(t1,2)*u1*(t1 + u1)) + (2*m2*(2*Power(q2,2)*Power(t1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 2*Power(u1,2))))/(s*Power(t1,2)*u1*(t1 + u1)))/beta;
r += c6*v6;
dbl v7 = ln(-(t1/m2));
dbl c7 = -((m2*Power(t1 + u1,2))/(Power(t1,2)*u1)) + (t1*(Power(t1,3)*(q2 + 2*t1) + t1*(Power(q2,2) + 5*q2*t1 + 3*Power(t1,2))*u1 + Power(q2 + t1,2)*Power(u1,2)))/(2.*Power(m2 + t1,2)*(q2 + t1)*u1*(t1 + u1)) - (Power(t1,4)*(9*Power(q2,2) + 19*q2*t1 + 8*Power(t1,2)) + t1*(-Power(q2,4) + 12*Power(q2,3)*t1 + 45*Power(q2,2)*Power(t1,2) + 47*q2*Power(t1,3) + 17*Power(t1,4))*u1 + (q2 + t1)*(3*Power(q2,3) + 14*Power(q2,2)*t1 + 21*q2*Power(t1,2) + 12*Power(t1,3))*Power(u1,2) + 3*Power(q2 + t1,3)*Power(u1,3))/(2.*(m2 + t1)*Power(q2 + t1,3)*u1*(t1 + u1)) + (-(Power(q2 - t1,2)*Power(t1,3)*(4*Power(q2,4) - 2*Power(q2,3)*t1 - 13*Power(q2,2)*Power(t1,2) + 2*q2*Power(t1,3) + 5*Power(t1,4))) + (q2 - t1)*Power(t1,2)*(10*Power(q2,5) + 12*Power(q2,4)*t1 - 29*Power(q2,3)*Power(t1,2) - 27*Power(q2,2)*Power(t1,3) + 7*q2*Power(t1,4) + 11*Power(t1,5))*u1 - t1*(q2 + t1)*(8*Power(q2,5) + 6*Power(q2,4)*t1 - 21*Power(q2,3)*Power(t1,2) - 17*Power(q2,2)*Power(t1,3) - 3*q2*Power(t1,4) + 11*Power(t1,5))*Power(u1,2) + Power(q2 + t1,3)*(2*Power(q2,3) - 4*Power(q2,2)*t1 + 3*q2*Power(t1,2) - 5*Power(t1,3))*Power(u1,3))/(4.*q2*(-4*m2*q2 + Power(q2 - t1,2))*t1*Power(q2 + t1,3)*u1*(t1 + u1)) - (3*Power(q2 - t1,2)*(t1 - u1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(4.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*(q2 + t1)*u1*(t1 + u1)) + (4*Power(q2,2)*u1*(t1 + u1) + t1*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) + 2*q2*(Power(t1,3) + 6*Power(t1,2)*u1 + 3*t1*Power(u1,2) + 2*Power(u1,3)))/(4.*q2*t1*u1*(t1 + u1));
r += c7*v7;
dbl v8 = ln(chi)*ln(-(u1/m2));
dbl c8 = (-2 + (4*q2)/t1 + (2*q2 - t1)/u1 - (2*u1)/t1 - (2*q2*(q2 + t1))/(t1*(t1 + u1)) + (8*Power(m2,2)*(Power(t1,3) + 2*Power(t1,2)*u1 + (2*q2 - u1)*Power(u1,2)))/(s*t1*Power(u1,2)*(t1 + u1)) - (2*m2*(-2*Power(q2,2)*Power(u1,2) - Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) + q2*(t1 + u1)*(2*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(s*t1*Power(u1,2)*(t1 + u1)))/beta;
r += c8*v8;
dbl v9 = ln(-(u1/m2));
dbl c9 = -((m2*Power(t1 + u1,2))/(t1*Power(u1,2))) - (3*Power(q2,3)*Power(t1,2)*(q2 + t1) + Power(q2,2)*t1*(-Power(q2,2) + 17*q2*t1 + 9*Power(t1,2))*u1 + q2*t1*(12*Power(q2,2) + 35*q2*t1 + 9*Power(t1,2))*Power(u1,2) + 3*t1*(15*Power(q2,2) + 11*q2*t1 + Power(t1,2))*Power(u1,3) + (9*Power(q2,2) + 47*q2*t1 + 12*Power(t1,2))*Power(u1,4) + (19*q2 + 17*t1)*Power(u1,5) + 8*Power(u1,6))/(2.*t1*(m2 + u1)*Power(q2 + u1,3)*(t1 + u1)) + (3*Power(q2 - u1,2)*(t1 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(4.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(q2 + u1)*(t1 + u1)) + (u1*(Power(q2,2)*t1*(t1 + u1) + Power(u1,2)*(t1 + u1)*(t1 + 2*u1) + q2*u1*(2*Power(t1,2) + 5*t1*u1 + Power(u1,2))))/(2.*t1*Power(m2 + u1,2)*(q2 + u1)*(t1 + u1)) + (2*Power(q2,6)*(t1 - 2*u1)*Power(t1 - u1,2) - Power(u1,6)*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) + 2*Power(q2,3)*Power(u1,3)*(-3*Power(t1,3) + 19*Power(t1,2)*u1 + t1*Power(u1,2) - 13*Power(u1,3)) + 4*q2*Power(u1,5)*(-3*Power(t1,3) - 2*Power(t1,2)*u1 + t1*Power(u1,2) + 2*Power(u1,3)) + Power(q2,4)*Power(u1,2)*(-3*Power(t1,3) + 15*Power(t1,2)*u1 - 41*t1*Power(u1,2) + 5*Power(u1,3)) + 2*Power(q2,5)*u1*(Power(t1,3) - 7*Power(t1,2)*u1 + t1*Power(u1,2) + 5*Power(u1,3)) + 2*Power(q2,2)*Power(u1,4)*(-5*Power(t1,3) + 10*Power(t1,2)*u1 + 17*t1*Power(u1,2) + 6*Power(u1,3)))/(4.*q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(q2 + u1,3)*(t1 + u1)) + (10 + (4*q2)/u1 + (2*u1)/t1 + (5*t1 + 6*u1 + (5*Power(u1,2))/t1)/q2 + 4*t1*(1/u1 - 2/(t1 + u1)))/4.;
r += c9*v9;
dbl v10 = Power(ln(chi),2);
dbl c10 = (6*Power(m2,2))/(t1*u1) + m2*q2*(1/(t1*u1) - 2/Power(t1 + u1,2)) + (-2*Power(q2,2)*(t1 + u1) - (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + q2*(6*Power(t1,2) + 8*t1*u1 + 6*Power(u1,2)))/(4.*t1*u1*(t1 + u1)) + ((-4 - (6*q2)/t1 + (-2*Power(q2,2) - 6*q2*t1 + 3*Power(t1,2))/(t1*u1) + (3*u1)/t1 + (20*q2)/(t1 + u1))/4. - (2*Power(m2,2)*(2*Power(t1,3) + 3*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 3*u1)))/(s*Power(t1,2)*Power(u1,2)) - (m2*(-2*Power(q2,2)*t1*u1*(t1 + u1) + (t1 + u1)*(4*Power(t1,4) + 11*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 11*t1*Power(u1,3) + 4*Power(u1,4)) - q2*(4*Power(t1,4) + 15*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 15*t1*Power(u1,3) + 4*Power(u1,4))))/(2.*s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c10*v10;
dbl v11 = ln(chi);
dbl c11 = beta*((2*m2*q2)/(t1*u1) + (Power(t1 - u1,2)*(2*Power(q2,2) - 3*q2*(t1 + u1) + Power(t1 + u1,2)))/(2.*(4*m2 - s)*t1*u1*(t1 + u1)) - (4*Power(q2,2)*t1*u1 - 2*q2*Power(t1 + u1,3) + Power(t1 + u1,4))/(2.*t1*u1*Power(t1 + u1,2))) + ((-4*Power(m2,2)*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(s*Power(t1,2)*Power(u1,2)) + ((-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) - (2*m2*(Power(t1,2) + Power(u1,2))*((t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c11*v11;
dbl v12 = Power(ln(chiq),2);
dbl c12 = (-6*Power(m2,2))/(t1*u1) + m2*q2*(-(1/(t1*u1)) + 2/Power(t1 + u1,2)) + (4 - (6*q2)/t1 + (2*Power(q2,2) - 6*q2*t1 + 3*Power(t1,2))/(t1*u1) + (3*u1)/t1 + (4*q2)/(t1 + u1))/4. + ((4*Power(m2,2)*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (-4 + (6*q2)/t1 + (-2*Power(q2,2) + 6*q2*t1 - 3*Power(t1,2))/(t1*u1) - (3*u1)/t1 - (4*q2)/(t1 + u1))/2. - (m2*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c12*v12;
dbl v13 = ln(chiq);
dbl c13 = (-3*betaq*Power(q2 - t1,2)*(t1 - u1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(8.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*u1*(t1 + u1)) + (3*betaq*Power(q2 - u1,2)*(t1 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(8.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*(t1 + u1)) + (betaq*m2*(5*Power(t1,3) + 11*Power(t1,2)*u1 + 5*Power(u1,3) + t1*u1*(-4*q2 + 11*u1)))/(2.*Power(t1,2)*Power(u1,2)) + (betaq*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1))*(5*Power(t1,3) + 11*Power(t1,2)*u1 + 5*Power(u1,3) + t1*u1*(-4*q2 + 11*u1)))/(4.*q2*Power(t1,2)*Power(u1,2)) + (betaq*(-(Power(q2,4)*Power(t1 - u1,2)*(3*t1 - u1)) + Power(q2,3)*t1*(t1 - u1)*(15*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2)) - Power(t1,4)*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) + q2*Power(t1,3)*(19*Power(t1,3) + 27*Power(t1,2)*u1 + 13*t1*Power(u1,2) - 3*Power(u1,3)) + 2*Power(q2,2)*Power(t1,2)*(-13*Power(t1,3) - 5*Power(t1,2)*u1 + 5*t1*Power(u1,2) + Power(u1,3))))/(8.*q2*(-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*u1*(t1 + u1)) + (betaq*(Power(q2,4)*(t1 - 3*u1)*Power(t1 - u1,2) - Power(u1,4)*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) - Power(q2,3)*(t1 - u1)*u1*(3*Power(t1,2) + 2*t1*u1 + 15*Power(u1,2)) + 2*Power(q2,2)*Power(u1,2)*(Power(t1,3) + 5*Power(t1,2)*u1 - 5*t1*Power(u1,2) - 13*Power(u1,3)) + q2*Power(u1,3)*(-3*Power(t1,3) + 13*Power(t1,2)*u1 + 27*t1*Power(u1,2) + 19*Power(u1,3))))/(8.*q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2)*(t1 + u1)) + (betaq*(16*Power(q2,3)*t1*u1*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) + 4*q2*Power(t1 + u1,2)*(Power(t1,2) + 3*t1*u1 + Power(u1,2))*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) - Power(t1 + u1,3)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2))*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) - Power(q2,2)*(t1 + u1)*(21*Power(t1,4) + 96*Power(t1,3)*u1 + 134*Power(t1,2)*Power(u1,2) + 96*t1*Power(u1,3) + 21*Power(u1,4))))/(8.*q2*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2));
r += c13*v13;
dbl v14 = zeta2;
dbl c14 = 4 - (6*q2)/t1 + (2*Power(q2,2) - 6*q2*t1 + 3*Power(t1,2))/(t1*u1) + (3*u1)/t1 + (4*q2)/(t1 + u1) + (Power(m2,2)*(Power(t1,4) + 2*Power(t1,3)*u1 - 26*Power(t1,2)*Power(u1,2) + 2*t1*Power(u1,3) + Power(u1,4)))/(Power(t1,3)*Power(u1,3)) + m2*q2*(-Power(u1,-2) + 12/Power(t1 + u1,2) - (4*t1 + u1)/(Power(t1,2)*u1)) + (2 + Power(q2,2)/(t1*u1) - (5*t1)/(2.*u1) - (5*u1)/(2.*t1) + (4*Power(m2,2)*(3*Power(t1,3) + 4*Power(t1,2)*u1 - 2*t1*(q2 - 2*u1)*u1 + 3*Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + q2*(5/t1 + 5/u1 - 14/(t1 + u1)) - (m2*(2*Power(q2,2)*t1*u1*(t1 + u1) - (t1 + u1)*(6*Power(t1,4) + 17*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 17*t1*Power(u1,3) + 6*Power(u1,4)) + q2*(6*Power(t1,4) + 23*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 23*t1*Power(u1,3) + 6*Power(u1,4))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c14*v14;
dbl v15 = 1;
dbl c15 = 1 - (2*q2)/t1 + (-4*q2 + 3*t1)/(2.*u1) + (3*u1)/(2.*t1) + (6*q2)/(t1 + u1) + m2*((2*t1)/Power(u1,2) + (2*u1)/Power(t1,2)) - (Power(t1,3)*(q2 + 2*t1) + t1*(Power(q2,2) + 5*q2*t1 + 3*Power(t1,2))*u1 + Power(q2 + t1,2)*Power(u1,2))/(2.*(m2 + t1)*(q2 + t1)*u1*(t1 + u1)) - ((q2 - t1)*(t1 - u1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(4.*(-4*m2*q2 + Power(q2 - t1,2))*t1*(q2 + t1)*u1*(t1 + u1)) + ((q2 - u1)*(t1 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(4.*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(q2 + u1)*(t1 + u1)) - (Power(q2,2)*t1*(t1 + u1) + Power(u1,2)*(t1 + u1)*(t1 + 2*u1) + q2*u1*(2*Power(t1,2) + 5*t1*u1 + Power(u1,2)))/(2.*t1*(m2 + u1)*(q2 + u1)*(t1 + u1));
r += c15*v15;

return r;
}
cdbl Inclusive::SVOKDelta1P(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);

return (2*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2))*((-2*m2 + s)*ln(chi) + beta*s*ln(t1/u1)))/(beta*s*sp*Power(t1,2)*Power(u1,2));
}

cdbl Inclusive::SVQEDDelta1P(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);

return (-2*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2))*(beta*s + (-2*m2 + s)*ln(chi)))/(beta*s*sp*Power(t1,2)*Power(u1,2));
}

cdbl Inclusive::SVOKDelta2P(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return (2*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2)))/(sp*Power(t1,2)*Power(u1,2));
}

cdbl Inclusive::SVOKScaleRP(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return (11*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2)))/(6.*sp*Power(t1,2)*Power(u1,2));
}

cdbl Inclusive::SVOKScaleFP(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return ((2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2))*(-11 + 12*ln(-(u1/m2))))/(6.*sp*Power(t1,2)*Power(u1,2));
}

cdbl Inclusive::SVOKScaleFDelta1P(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = -sp-t1;

return (-2*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2)))/(sp*Power(t1,2)*Power(u1,2));
}

