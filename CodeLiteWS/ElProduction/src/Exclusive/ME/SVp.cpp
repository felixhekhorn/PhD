#include "SVp.h"

#include <gsl/gsl_sf_dilog.h>
#define ln(z) log(z)
#define Li2(z) gsl_sf_dilog(z)
#define zeta2 1.64493406684823 // pi^2/6
#define Pi M_PI

namespace Exclusive {

cdbl SVOKpG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (-32*m2*Pi)/(q2*u1) - (8*Pi*(4*Power(q2,2) + Power(t1,2) - q2*(t1 + u1)))/(Power(q2,2)*u1) + (8*Pi*Power(q2 - t1,2)*t1*(q2*(-t1 + u1) + t1*(t1 + u1)))/(q2*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1) - (8*Pi*(-Power(t1,4) + 3*Power(q2,3)*(t1 - u1) + 3*Power(q2,2)*t1*(-2*t1 + u1) + 2*q2*Power(t1,2)*(2*t1 + u1)))/(Power(q2,2)*(-4*m2*q2 + Power(q2 - t1,2))*u1);
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (-32*m2*Pi)/(q2*t1) - (8*Pi*(4*Power(q2,2) + Power(u1,2) - q2*(t1 + u1)))/(Power(q2,2)*t1) + (8*Pi*Power(q2 - u1,2)*u1*(q2*(t1 - u1) + u1*(t1 + u1)))/(q2*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)) + (8*Pi*(3*Power(q2,3)*(t1 - u1) - 3*Power(q2,2)*(t1 - 2*u1)*u1 + Power(u1,4) - 2*q2*Power(u1,2)*(t1 + 2*u1)))/(Power(q2,2)*t1*(-4*m2*q2 + Power(q2 - u1,2)));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (32*Power(m2,2)*Pi*Power(t1 + u1,2))/(Power(t1,3)*u1) + (16*Pi*(-2*q2 + t1 + 2*u1))/u1 + (32*m2*Pi*(Power(t1,2) - q2*u1 + 3*t1*u1))/(Power(t1,2)*u1);
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (32*Power(m2,2)*Pi*Power(t1 + u1,2))/(t1*Power(u1,3)) + (16*Pi*(-2*q2 + 2*t1 + u1))/t1 + (32*m2*Pi*(-(q2*t1) + u1*(3*t1 + u1)))/(t1*Power(u1,2));
r += c3*v3;
dbl v4 = (2*Li2(1 + (2*t1)/((-1 + beta)*(t1 + u1))) + 2*Li2(1 + (2*u1)/((-1 + beta)*(t1 + u1))) - 2*Li2(-(t1 - u1 + beta*(t1 + u1))/(2.*u1)) - 2*Li2(-(-t1 + u1 + beta*(t1 + u1))/(2.*t1)) + 8*ln(betaTil)*(ln(-(t1/m2)) + ln(-(u1/m2))) + Power(ln(-((-1 + beta)*(t1 + u1))/(2.*t1)),2) + Power(ln(-((-1 + beta)*(t1 + u1))/(2.*u1)),2) + (2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2)))*(2*(ln(-(t1/m2)) + ln(-(u1/m2)) - ln(-((t1 + u1)/m2))) + ln(-((-q2 + t1 + u1)/m2))))/2.;
dbl c4 = (-128*Power(m2,2)*Pi*Power(t1 + u1,2))/(Power(t1,2)*Power(u1,2)) + (32*Pi*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)))/(t1*u1) - (64*m2*Pi*(2*t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c4*v4;
dbl v5 = Li2((2*beta)/(1 + beta)) - Li2(chi) + (ln(chi)*(4*ln(betaTil) - 2*ln(1 - chi) + 2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))))/2.;
dbl c5 = ((512*Power(m2,3)*Pi*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (64*Pi*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)))/(t1*u1) + (256*Power(m2,2)*Pi*(Power(t1,3) + 5*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(s*Power(t1,2)*Power(u1,2)) + (128*m2*Pi*(-(Power(q2,2)*Power(t1 + u1,2)) + q2*(t1 + u1)*(Power(t1,2) + Power(u1,2)) + t1*u1*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)))/beta;
r += c5*v5;
dbl v6 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
dbl c6 = ((-512*Power(m2,3)*Pi*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) - (256*Power(m2,2)*Pi*(Power(t1,3) + 6*Power(t1,2)*u1 - 2*t1*(q2 - 3*u1)*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) - (32*Pi*(4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1)))/(t1*u1) + (64*m2*Pi*(t1 + u1)*(t1*u1 + 2*q2*(t1 + u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c6*v6;
dbl v7 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c7 = (128*Power(m2,2)*Pi)/(t1*u1) + (64*m2*Pi*(t1 + u1))/(t1*u1) - (16*Pi*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)))/(t1*u1);
r += c7*v7;
dbl v8 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c8 = (256*Power(m2,2)*Pi*(Power(t1,2) + t1*u1 + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) - (32*Pi*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)))/(t1*u1) + (128*m2*Pi*(t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c8*v8;
dbl v9 = ln(chi)*ln(-(t1/m2));
dbl c9 = ((-512*Power(m2,3)*Pi*(t1 + u1))/(s*Power(t1,2)*u1) - (256*Power(m2,2)*Pi*(-(q2*t1) + 3*Power(t1,2) + 3*t1*u1 + Power(u1,2)))/(s*Power(t1,2)*u1) - (32*Pi*(2*Power(q2 - t1,2) + 2*(-q2 + t1)*u1 + Power(u1,2)))/(t1*u1) - (64*m2*Pi*(-2*Power(q2,2)*(t1 + u1) + t1*u1*(t1 + u1) + q2*(3*Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))))/(s*Power(t1,2)*u1))/beta;
r += c9*v9;
dbl v10 = ln(-(t1/m2));
dbl c10 = (32*m2*Pi*Power(t1 + u1,2))/(Power(t1,2)*u1) - (32*Pi*(Power(t1,2) + (q2 + t1)*u1))/(t1*u1) + (32*Pi*(Power(t1,2)*(q2 + 2*t1) + Power(q2 + t1,2)*u1))/((m2 + t1)*(q2 + t1)*u1) - (32*Pi*(q2 - t1)*t1*(q2*(t1 - u1) - t1*(t1 + u1)))/((-4*m2*q2 + Power(q2 - t1,2))*(q2 + t1)*u1);
r += c10*v10;
dbl v11 = ln(chi)*ln(-(u1/m2));
dbl c11 = ((-512*Power(m2,3)*Pi*(t1 + u1))/(s*t1*Power(u1,2)) - (32*Pi*(2*Power(q2,2) + Power(t1,2) + 2*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1)))/(t1*u1) - (256*Power(m2,2)*Pi*(Power(t1,2) + 3*t1*u1 + u1*(-q2 + 3*u1)))/(s*t1*Power(u1,2)) - (64*m2*Pi*(-2*Power(q2,2)*(t1 + u1) + t1*u1*(t1 + u1) + q2*(2*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2))))/(s*t1*Power(u1,2)))/beta;
r += c11*v11;
dbl v12 = ln(-(u1/m2));
dbl c12 = (32*m2*Pi*Power(t1 + u1,2))/(t1*Power(u1,2)) - (32*Pi*(q2*t1 + u1*(t1 + u1)))/(t1*u1) + (32*Pi*(q2 - u1)*u1*(q2*(t1 - u1) + u1*(t1 + u1)))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*(q2 + u1)) + (32*Pi*(Power(q2,2)*t1 + q2*u1*(2*t1 + u1) + Power(u1,2)*(t1 + 2*u1)))/(t1*(m2 + u1)*(q2 + u1));
r += c12*v12;
dbl v13 = Power(ln(betaTil),2);
dbl c13 = (-1024*Power(m2,2)*Pi*Power(t1 + u1,2))/(Power(t1,2)*Power(u1,2)) + (256*Pi*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)))/(t1*u1) - (512*m2*Pi*(2*t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c13*v13;
dbl v14 = Power(ln(chi),2);
dbl c14 = (64*Power(m2,2)*Pi*(Power(t1,2) + 3*t1*u1 + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) - (8*Pi*(8*Power(q2,2) + 5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2) - 10*q2*(t1 + u1)))/(t1*u1) + 32*m2*Pi*(2*(1/t1 + 1/u1) + q2*(Power(t1,-2) + Power(u1,-2) + 2/Power(t1 + u1,2))) + ((128*Power(m2,3)*Pi*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (64*Power(m2,2)*Pi*(Power(t1,3) + 4*Power(t1,2)*u1 - 2*t1*(q2 - 2*u1)*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (8*Pi*(4*Power(q2,2) + Power(t1,2) - 4*t1*u1 + Power(u1,2) - 2*q2*(t1 + u1)))/(t1*u1) - (16*m2*Pi*(2*Power(q2,2)*Power(t1 + u1,2) - q2*(t1 + u1)*(2*Power(t1,2) - 3*t1*u1 + 2*Power(u1,2)) - t1*u1*(3*Power(t1,2) + 14*t1*u1 + 3*Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)))/beta;
r += c14*v14;
dbl v15 = ln(chi);
dbl c15 = beta*((-64*m2*Pi*q2)/(t1*u1) - (16*Pi*s*Power(t1 - u1,2))/((4*m2 - s)*t1*u1) + 16*Pi*(-2 - t1/u1 - u1/t1 + (4*Power(q2,2))/Power(t1 + u1,2)));
r += c15*v15;
dbl v16 = Power(ln(chiq),2);
dbl c16 = (-64*Power(m2,2)*Pi*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)))/(Power(t1,2)*Power(u1,2)) + (8*Pi*(8*Power(q2,2) + 5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2) - 10*q2*(t1 + u1)))/(t1*u1) - (64*m2*Pi*(t1*u1*Power(t1 + u1,3) + q2*Power(Power(t1,2) + t1*u1 + Power(u1,2),2)))/(Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)) + ((-256*Power(m2,3)*Pi*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) - (128*Power(m2,2)*Pi*(Power(t1,3) + 6*Power(t1,2)*u1 - 2*t1*(q2 - 3*u1)*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) - (16*Pi*(4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1)))/(t1*u1) + (32*m2*Pi*(t1 + u1)*(t1*u1 + 2*q2*(t1 + u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c16*v16;
dbl v17 = ln(chiq);
dbl c17 = (64*betaq*m2*Pi*q2)/(t1*u1) + (16*betaq*Pi*(q2 - t1)*(q2*(t1 - u1) - t1*(t1 + u1)))/((4*m2*q2 - Power(q2 - t1,2))*u1) - (16*betaq*Pi*(q2 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(t1*(4*m2*q2 - Power(q2 - u1,2))) + (16*betaq*Pi*(Power(t1,4) + 4*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + Power(u1,4) + 4*t1*u1*(-Power(q2,2) + Power(u1,2))))/(t1*u1*Power(t1 + u1,2));
r += c17*v17;
dbl v18 = zeta2;
dbl c18 = (-32*Power(m2,2)*Pi*(Power(t1,4) + 10*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 10*t1*Power(u1,3) + Power(u1,4)))/(Power(t1,3)*Power(u1,3)) + 96*m2*Pi*q2*(-Power(t1,-2) - Power(u1,-2) - 4/Power(t1 + u1,2)) + (32*Pi*(4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1)))/(t1*u1) + ((-768*Power(m2,3)*Pi*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) - (16*Pi*(12*Power(q2,2) + 5*Power(t1,2) - 4*t1*u1 + 5*Power(u1,2) - 10*q2*(t1 + u1)))/(t1*u1) - (128*Power(m2,2)*Pi*(3*Power(t1,3) + 14*Power(t1,2)*u1 + 3*Power(u1,3) + 2*t1*u1*(-3*q2 + 7*u1)))/(s*Power(t1,2)*Power(u1,2)) - (32*m2*Pi*(-6*Power(q2,2)*Power(t1 + u1,2) + 3*q2*(t1 + u1)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2)) + t1*u1*(7*Power(t1,2) + 30*t1*u1 + 7*Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)))/beta;
r += c18*v18;
dbl v19 = 1;
dbl c19 = (32*Pi*q2*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) - (32*m2*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2));
r += c19*v19;

return r;
}

cdbl SVQEDpG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (64*Power(m2,2)*Pi*(t1 + u1))/(q2*Power(t1,2)*u1) + (4*Pi*(q2 - t1)*(-(Power(q2 - t1,2)*Power(t1,2)*(3*Power(q2,2) - 5*q2*t1 + Power(t1,2))) + (q2 - t1)*t1*(q2 + t1)*(6*Power(q2,2) - 9*q2*t1 + Power(t1,2))*u1 + q2*(-3*Power(q2,3) + 5*q2*Power(t1,2) + 4*Power(t1,3))*Power(u1,2)))/(Power(q2,3)*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1) - (6*Pi*Power(q2 - t1,3)*t1*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(Power(q2,2)*Power(-4*m2*q2 + Power(q2 - t1,2),3)*u1) + (16*m2*Pi*(Power(q2,2)*(-t1 + u1) + 2*q2*t1*(t1 + u1) + 2*Power(t1,2)*(t1 + u1)))/(Power(q2,2)*Power(t1,2)*u1) - (4*Pi*(-3*Power(t1,4)*(t1 + u1) - Power(q2,2)*t1*(t1 - 2*u1)*(t1 + u1) - 2*Power(q2,3)*t1*(3*t1 + 2*u1) + Power(q2,4)*(5*t1 + 3*u1) + q2*Power(t1,2)*(3*Power(t1,2) + 2*t1*u1 + Power(u1,2))))/(Power(q2,3)*Power(t1,2)*u1) - (2*Pi*(6*Power(q2,6)*(t1 - u1) + 4*Power(q2,5)*t1*(-4*t1 + u1) + 8*Power(t1,6)*(t1 + u1) + 3*Power(q2,2)*Power(t1,3)*(11*Power(t1,2) + 4*t1*u1 - 3*Power(u1,2)) + 4*Power(q2,3)*Power(t1,2)*(-5*Power(t1,2) + t1*u1 - 2*Power(u1,2)) + 4*Power(q2,4)*t1*(4*Power(t1,2) + 2*t1*u1 + Power(u1,2)) - q2*Power(t1,4)*(27*Power(t1,2) + 26*t1*u1 + 7*Power(u1,2))))/(Power(q2,3)*(-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*u1);
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (64*Power(m2,2)*Pi*(t1 + u1))/(q2*t1*Power(u1,2)) - (6*Pi*Power(q2 - u1,3)*u1*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(Power(q2,2)*t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)) + (16*m2*Pi*(Power(q2,2)*(t1 - u1) + 2*q2*u1*(t1 + u1) + 2*Power(u1,2)*(t1 + u1)))/(Power(q2,2)*t1*Power(u1,2)) + (4*Pi*(-(Power(q2,2)*(2*t1 - u1)*u1*(t1 + u1)) + 3*Power(u1,4)*(t1 + u1) + 2*Power(q2,3)*u1*(2*t1 + 3*u1) - Power(q2,4)*(3*t1 + 5*u1) - q2*Power(u1,2)*(Power(t1,2) + 2*t1*u1 + 3*Power(u1,2))))/(Power(q2,3)*t1*Power(u1,2)) - (4*Pi*(q2 - u1)*(3*Power(q2,4)*Power(t1 - u1,2) + Power(q2,3)*(9*t1 - 11*u1)*Power(u1,2) + Power(u1,5)*(t1 + u1) - q2*Power(u1,3)*(4*Power(t1,2) + 9*t1*u1 + 7*Power(u1,2)) + Power(q2,2)*Power(u1,2)*(-5*Power(t1,2) + 5*t1*u1 + 14*Power(u1,2))))/(Power(q2,3)*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)) + (2*Pi*(6*Power(q2,6)*(t1 - u1) - 4*Power(q2,5)*(t1 - 4*u1)*u1 - 8*Power(u1,6)*(t1 + u1) - 4*Power(q2,4)*u1*(Power(t1,2) + 2*t1*u1 + 4*Power(u1,2)) + 4*Power(q2,3)*Power(u1,2)*(2*Power(t1,2) - t1*u1 + 5*Power(u1,2)) - 3*Power(q2,2)*Power(u1,3)*(-3*Power(t1,2) + 4*t1*u1 + 11*Power(u1,2)) + q2*Power(u1,4)*(7*Power(t1,2) + 26*t1*u1 + 27*Power(u1,2))))/(Power(q2,3)*t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (32*Power(m2,2)*Pi*(t1 - u1)*(3*t1 + u1))/(Power(t1,3)*u1) + (32*m2*Pi*(Power(t1,2) + q2*u1 - t1*u1))/(Power(t1,2)*u1) - (16*Pi*(2*Power(q2 - t1,2) + 2*(-q2 + t1)*u1 + Power(u1,2)))/(t1*u1);
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (-32*Power(m2,2)*Pi*(t1 - u1)*(t1 + 3*u1))/(t1*Power(u1,3)) + (32*m2*Pi*(q2*t1 + u1*(-t1 + u1)))/(t1*Power(u1,2)) - (16*Pi*(2*Power(q2,2) + Power(t1,2) + 2*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1)))/(t1*u1);
r += c3*v3;
dbl v4 = Li2((2*beta)/(1 + beta)) - Li2(chi) + (ln(chi)*(4*ln(betaTil) - 2*ln(1 - chi) + 2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))))/2.;
dbl c4 = ((-512*Power(m2,3)*Pi*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) - (64*Pi*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)))/(t1*u1) - (256*Power(m2,2)*Pi*(Power(t1,3) + 5*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(s*Power(t1,2)*Power(u1,2)) - (128*m2*Pi*(-(Power(q2,2)*Power(t1 + u1,2)) + q2*(t1 + u1)*(Power(t1,2) + Power(u1,2)) + t1*u1*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)))/beta;
r += c4*v4;
dbl v5 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
dbl c5 = ((512*Power(m2,3)*Pi*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (256*Power(m2,2)*Pi*(Power(t1,3) + 6*Power(t1,2)*u1 - 2*t1*(q2 - 3*u1)*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (32*Pi*(4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1)))/(t1*u1) - (64*m2*Pi*(t1 + u1)*(t1*u1 + 2*q2*(t1 + u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c5*v5;
dbl v6 = ln(chi)*ln(-(t1/m2));
dbl c6 = ((512*Power(m2,3)*Pi*(t1 + u1))/(s*Power(t1,2)*u1) + (256*Power(m2,2)*Pi*(-(q2*t1) + 3*Power(t1,2) + 3*t1*u1 + Power(u1,2)))/(s*Power(t1,2)*u1) + (32*Pi*(2*Power(q2 - t1,2) + 2*(-q2 + t1)*u1 + Power(u1,2)))/(t1*u1) + (64*m2*Pi*(-2*Power(q2,2)*(t1 + u1) + t1*u1*(t1 + u1) + q2*(3*Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))))/(s*Power(t1,2)*u1))/beta;
r += c6*v6;
dbl v7 = ln(-(t1/m2));
dbl c7 = (-16*Pi*Power(t1,3)*(q2 + 2*t1) - 16*Pi*t1*Power(q2 + t1,2)*u1)/(Power(m2 + t1,2)*(q2 + t1)*u1) + (16*Pi*(Power(t1,3)*(7*Power(q2,2) + 13*q2*t1 + 4*Power(t1,2)) + (q2 + t1)*(-Power(q2,3) + 3*Power(q2,2)*t1 + 7*q2*Power(t1,2) + Power(t1,3))*u1 - Power(q2 + t1,3)*Power(u1,2)))/((m2 + t1)*Power(q2 + t1,3)*u1) + (8*Pi*(-(Power(q2 - t1,2)*Power(t1,2)*(6*Power(q2,4) + 3*Power(q2,3)*t1 - 12*Power(q2,2)*Power(t1,2) - 3*q2*Power(t1,3) + 2*Power(t1,4))) + 2*(q2 - t1)*t1*(q2 + t1)*(6*Power(q2,4) + 4*Power(q2,3)*t1 - 11*Power(q2,2)*Power(t1,2) - 4*q2*Power(t1,3) + Power(t1,4))*u1 - q2*Power(q2 + t1,3)*(6*Power(q2,2) - 5*q2*t1 - 5*Power(t1,2))*Power(u1,2)))/(Power(q2,2)*(-4*m2*q2 + Power(q2 - t1,2))*Power(q2 + t1,3)*u1) - (32*m2*Pi*(t1 + u1)*(-2*Power(t1,2) + q2*(t1 + u1)))/(q2*Power(t1,2)*u1) - (24*Pi*Power(q2 - t1,2)*t1*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(q2*Power(-4*m2*q2 + Power(q2 - t1,2),2)*(q2 + t1)*u1) + (16*Pi*(2*Power(q2,3)*u1 + Power(t1,3)*(t1 + u1) + Power(q2,2)*(Power(t1,2) + Power(u1,2)) - q2*t1*(3*Power(t1,2) + 2*t1*u1 + Power(u1,2))))/(Power(q2,2)*t1*u1);
r += c7*v7;
dbl v8 = 2*ln(betaTil) + ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))/2.;
dbl c8 = (256*Power(m2,2)*Pi*Power(t1 + u1,2))/(Power(t1,2)*Power(u1,2)) - (64*Pi*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)))/(t1*u1) + (128*m2*Pi*(2*t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c8*v8;
dbl v9 = ln(chi)*ln(-(u1/m2));
dbl c9 = ((512*Power(m2,3)*Pi*(t1 + u1))/(s*t1*Power(u1,2)) + (32*Pi*(2*Power(q2,2) + Power(t1,2) + 2*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1)))/(t1*u1) + (256*Power(m2,2)*Pi*(Power(t1,2) + 3*t1*u1 + u1*(-q2 + 3*u1)))/(s*t1*Power(u1,2)) + (64*m2*Pi*(-2*Power(q2,2)*(t1 + u1) + t1*u1*(t1 + u1) + q2*(2*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2))))/(s*t1*Power(u1,2)))/beta;
r += c9*v9;
dbl v10 = ln(-(u1/m2));
dbl c10 = (16*Pi*(-(Power(q2,3)*t1*(q2 + t1)) + Power(q2,2)*(2*q2 - 3*t1)*t1*u1 + q2*(10*q2 - 3*t1)*t1*Power(u1,2) + (7*Power(q2,2) + 8*q2*t1 - Power(t1,2))*Power(u1,3) + (13*q2 + t1)*Power(u1,4) + 4*Power(u1,5)))/(t1*(m2 + u1)*Power(q2 + u1,3)) - (32*m2*Pi*(t1 + u1)*(-2*Power(u1,2) + q2*(t1 + u1)))/(q2*t1*Power(u1,2)) - (24*Pi*Power(q2 - u1,2)*u1*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(q2*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(q2 + u1)) - (16*Pi*u1*(Power(q2,2)*t1 + q2*u1*(2*t1 + u1) + Power(u1,2)*(t1 + 2*u1)))/(t1*Power(m2 + u1,2)*(q2 + u1)) + (16*Pi*(2*Power(q2,3)*t1 + Power(u1,3)*(t1 + u1) + Power(q2,2)*(Power(t1,2) + Power(u1,2)) - q2*u1*(Power(t1,2) + 2*t1*u1 + 3*Power(u1,2))))/(Power(q2,2)*t1*u1) + (8*Pi*(-6*Power(q2,6)*Power(t1 - u1,2) - 2*Power(u1,7)*(t1 + u1) + 4*Power(q2,2)*Power(u1,4)*(t1 + u1)*(5*t1 + u1) - 8*Power(q2,3)*Power(u1,3)*(-3*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2)) + 2*Power(q2,4)*Power(u1,2)*(Power(t1,2) - 17*t1*u1 + 6*Power(u1,2)) + q2*Power(u1,5)*(5*Power(t1,2) + 8*t1*u1 + 7*Power(u1,2)) + Power(q2,5)*u1*(-13*Power(t1,2) + 8*t1*u1 + 9*Power(u1,2))))/(Power(q2,2)*t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(q2 + u1,3));
r += c10*v10;
dbl v11 = Power(ln(chi),2);
dbl c11 = (-64*Power(m2,2)*Pi)/(t1*u1) - (64*m2*Pi*q2)/Power(t1 + u1,2) + (8*Pi*(4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1)))/(t1*u1) + ((-128*Power(m2,3)*Pi*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) - (64*Power(m2,2)*Pi*(Power(t1,3) + 4*Power(t1,2)*u1 - 2*t1*(q2 - 2*u1)*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) - (8*Pi*(4*Power(q2,2) + Power(t1,2) - 4*t1*u1 + Power(u1,2) - 2*q2*(t1 + u1)))/(t1*u1) + (16*m2*Pi*(2*Power(q2,2)*Power(t1 + u1,2) - q2*(t1 + u1)*(2*Power(t1,2) - 3*t1*u1 + 2*Power(u1,2)) - t1*u1*(3*Power(t1,2) + 14*t1*u1 + 3*Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)))/beta;
r += c11*v11;
dbl v12 = ln(chi);
dbl c12 = beta*((64*m2*Pi*q2)/(t1*u1) + (16*Pi*s*Power(t1 - u1,2))/((4*m2 - s)*t1*u1) + 16*Pi*(2 + t1/u1 + u1/t1 - (4*Power(q2,2))/Power(t1 + u1,2))) + (64*Pi + (56*Pi*s)/t1 + (56*Pi*(q2 - t1 - u1))/u1 - (160*Pi*Power(q2,2))/Power(t1 + u1,2) - (16*Pi*Power(q2,2)*Power(t1,2))/(Power(u1,2)*Power(t1 + u1,2)) - (96*Pi*Power(q2,2)*t1)/(u1*Power(t1 + u1,2)) - (96*Pi*Power(q2,2)*u1)/(t1*Power(t1 + u1,2)) - (16*Pi*Power(q2,2)*Power(u1,2))/(Power(t1,2)*Power(t1 + u1,2)) + (128*Power(m2,2)*Pi*Power(t1 + u1,2))/(Power(t1,2)*Power(u1,2)) + (8*Pi*Power(s,2)*Power(t1 + u1,2))/(Power(t1,2)*Power(u1,2)) - (16*Pi*q2*(q2 - 3*(t1 + u1)))/(t1*u1) + (8*Pi*(Power(q2,2) - t1*(t1 + u1) + q2*(2*t1 + u1)))/Power(u1,2) + (8*Pi*(Power(q2,2) - u1*(t1 + u1) + q2*(t1 + 2*u1)))/Power(t1,2) + (64*m2*Pi*(2*t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2)))/beta;
r += c12*v12;
dbl v13 = Power(ln(chiq),2);
dbl c13 = (64*Power(m2,2)*Pi)/(t1*u1) + (64*m2*Pi*q2)/Power(t1 + u1,2) - (8*Pi*(4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1)))/(t1*u1) + ((256*Power(m2,3)*Pi*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (128*Power(m2,2)*Pi*(Power(t1,3) + 6*Power(t1,2)*u1 - 2*t1*(q2 - 3*u1)*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (16*Pi*(4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1)))/(t1*u1) - (32*m2*Pi*(t1 + u1)*(t1*u1 + 2*q2*(t1 + u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c13*v13;
dbl v14 = ln(chiq);
dbl c14 = (128*betaq*Power(m2,2)*Pi*Power(t1 + u1,2))/(Power(t1,2)*Power(u1,2)) - (4*betaq*Pi*(Power(q2 - t1,2)*Power(t1,2)*(5*Power(q2,2) - 8*q2*t1 + 2*Power(t1,2)) - 2*(q2 - t1)*t1*(q2 + t1)*(5*Power(q2,2) - 7*q2*t1 + Power(t1,2))*u1 + q2*(5*Power(q2,3) - 7*q2*Power(t1,2) - 6*Power(t1,3))*Power(u1,2)))/(Power(q2,2)*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1) - (12*betaq*Pi*Power(q2 - t1,2)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(q2*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1) - (12*betaq*Pi*Power(q2 - u1,2)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(q2*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)) + (32*betaq*m2*Pi*(4*q2*t1*u1*(t1 + u1) + t1*u1*Power(t1 + u1,2) + 3*Power(q2,2)*(Power(t1,2) + Power(u1,2))))/(q2*Power(t1,2)*Power(u1,2)) - (4*betaq*Pi*(5*Power(q2,4)*Power(t1 - u1,2) + 2*Power(q2,3)*(7*t1 - 9*u1)*Power(u1,2) + 2*Power(u1,5)*(t1 + u1) - 2*q2*Power(u1,3)*(3*Power(t1,2) + 7*t1*u1 + 6*Power(u1,2)) + Power(q2,2)*Power(u1,2)*(-7*Power(t1,2) + 8*t1*u1 + 23*Power(u1,2))))/(Power(q2,2)*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1) + (8*betaq*Pi*(6*Power(q2,4)*Power(t1 - u1,2) + 40*Power(q2,3)*t1*u1*(t1 + u1) + 4*q2*(t1 + u1)*(Power(t1,2) + Power(u1,2))*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) - Power(t1 + u1,2)*(Power(t1,4) - 2*Power(t1,3)*u1 + 4*Power(t1,2)*Power(u1,2) - 2*t1*Power(u1,3) + Power(u1,4)) - 4*Power(q2,2)*(Power(t1,4) + 12*Power(t1,3)*u1 + 16*Power(t1,2)*Power(u1,2) + 12*t1*Power(u1,3) + Power(u1,4))))/(Power(q2,2)*Power(t1,2)*Power(u1,2)) - (4*betaq*Pi*(56*Power(q2,3)*t1*u1*Power(t1 + u1,3) - 2*Power(t1 + u1,4)*(Power(t1,4) - Power(t1,3)*u1 + 3*Power(t1,2)*Power(u1,2) - t1*Power(u1,3) + Power(u1,4)) + 4*Power(q2,4)*(3*Power(t1,4) + 6*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 6*t1*Power(u1,3) + 3*Power(u1,4)) - 2*Power(q2,2)*Power(t1 + u1,2)*(4*Power(t1,4) + 47*Power(t1,3)*u1 + 62*Power(t1,2)*Power(u1,2) + 47*t1*Power(u1,3) + 4*Power(u1,4)) + q2*Power(t1 + u1,3)*(8*Power(t1,4) + 37*Power(t1,3)*u1 + 18*Power(t1,2)*Power(u1,2) + 37*t1*Power(u1,3) + 8*Power(u1,4))))/(Power(q2,2)*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2));
r += c14*v14;
dbl v15 = zeta2;
dbl c15 = (32*Power(m2,2)*Pi*(Power(t1,4) + 2*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 2*t1*Power(u1,3) + Power(u1,4)))/(Power(t1,3)*Power(u1,3)) + 32*m2*Pi*q2*(-Power(t1,-2) - Power(u1,-2) + 12/Power(t1 + u1,2)) - (32*Pi*(4*Power(q2,2) + 3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2) - 6*q2*(t1 + u1)))/(t1*u1) + ((768*Power(m2,3)*Pi*Power(t1 + u1,2))/(s*Power(t1,2)*Power(u1,2)) + (16*Pi*(12*Power(q2,2) + 5*Power(t1,2) - 4*t1*u1 + 5*Power(u1,2) - 10*q2*(t1 + u1)))/(t1*u1) + (128*Power(m2,2)*Pi*(3*Power(t1,3) + 14*Power(t1,2)*u1 + 3*Power(u1,3) + 2*t1*u1*(-3*q2 + 7*u1)))/(s*Power(t1,2)*Power(u1,2)) + (32*m2*Pi*(-6*Power(q2,2)*Power(t1 + u1,2) + 3*q2*(t1 + u1)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2)) + t1*u1*(7*Power(t1,2) + 30*t1*u1 + 7*Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)))/beta;
r += c15*v15;
dbl v16 = 1;
dbl c16 = (256*Power(m2,2)*Pi*Power(t1 + u1,2))/(Power(t1,2)*Power(u1,2)) + (16*Pi*(Power(t1,2)*(q2 + 2*t1) + Power(q2 + t1,2)*u1))/((m2 + t1)*(q2 + t1)*u1) - (8*Pi*(q2 - t1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(q2*(-4*m2*q2 + Power(q2 - t1,2))*(q2 + t1)*u1) - (8*Pi*(q2 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*(q2 + u1)) + (16*Pi*(Power(q2,2)*t1 + q2*u1*(2*t1 + u1) + Power(u1,2)*(t1 + 2*u1)))/(t1*(m2 + u1)*(q2 + u1)) + (32*m2*Pi*(4*q2*(Power(t1,2) + Power(u1,2)) + (t1 + u1)*(Power(t1,2) + 8*t1*u1 + Power(u1,2))))/(Power(t1,2)*Power(u1,2)) + (8*Pi*(-2*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2) - 2*Power(q2,3)*(t1 + u1)*(Power(t1,2) - 28*t1*u1 + Power(u1,2)) + Power(q2,4)*(6*Power(t1,2) - 4*t1*u1 + 6*Power(u1,2)) - 4*Power(q2,2)*(5*Power(t1,4) + 42*Power(t1,3)*u1 + 70*Power(t1,2)*Power(u1,2) + 42*t1*Power(u1,3) + 5*Power(u1,4)) + q2*(t1 + u1)*(9*Power(t1,4) + 28*Power(t1,3)*u1 + 26*Power(t1,2)*Power(u1,2) + 28*t1*Power(u1,3) + 9*Power(u1,4))))/(Power(q2,2)*Power(t1,2)*Power(u1,2)) + (8*Pi*(-6*Power(q2,4)*Power(t1 + u1,3) + 2*Power(t1,2)*Power(u1,2)*Power(t1 + u1,3) + 2*Power(q2,2)*Power(t1 + u1,3)*(10*Power(t1,2) + 59*t1*u1 + 10*Power(u1,2)) + 2*Power(q2,3)*(Power(t1,4) - 20*Power(t1,3)*u1 - 38*Power(t1,2)*Power(u1,2) - 20*t1*Power(u1,3) + Power(u1,4)) - q2*Power(t1 + u1,2)*(9*Power(t1,4) + 29*Power(t1,3)*u1 + 28*Power(t1,2)*Power(u1,2) + 29*t1*Power(u1,3) + 9*Power(u1,4))))/(Power(q2,2)*Power(t1,2)*Power(u1,2)*(t1 + u1));
r += c16*v16;

return r;
}
cdbl SVOKpScaleRG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;

return (176*Pi*(-4*Power(m2,2)*Power(sp,2) + t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) - 2*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2)))))/(3.*Power(t1,2)*Power(u1,2));
}

cdbl SVOKpScaleFG(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;

return (16*Pi*(4*Power(m2,2)*Power(sp,2) - t1*u1*(2*Power(q2,2) + 2*q2*sp + Power(t1,2) + Power(u1,2)) + 2*m2*(-2*sp*t1*u1 + q2*(Power(t1,2) + Power(u1,2))))*(11 + 24*ln(betaTil)))/(3.*Power(t1,2)*Power(u1,2));
}

cdbl SVOKpL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (64*m2*Pi*(t1 - u1))/(t1*u1*(t1 + u1)) - (16*Pi*(Power(t1,2)*(Power(q2,2) + q2*t1 - Power(t1,2)) - 4*Power(q2,2)*t1*u1 + (-Power(q2,2) + 3*q2*t1 + Power(t1,2))*Power(u1,2)))/(q2*t1*u1*Power(t1 + u1,2)) - (16*Pi*Power(q2 - t1,2)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1*Power(t1 + u1,2)) + (16*Pi*(-4*Power(q2,2)*Power(t1,4) - Power(t1,6) + Power(t1,4)*Power(u1,2) + 2*Power(q2,3)*t1*u1*(-t1 + u1) + Power(q2,4)*(t1 - u1)*(t1 + u1) + 2*q2*Power(t1,3)*(2*Power(t1,2) + t1*u1 + Power(u1,2))))/(q2*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1*Power(t1 + u1,2));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (64*m2*Pi*(-t1 + u1))/(t1*u1*(t1 + u1)) + (16*Pi*(Power(q2,2)*Power(t1,2) + q2*(4*q2 - 3*t1)*t1*u1 - (Power(q2,2) + Power(t1,2))*Power(u1,2) - q2*Power(u1,3) + Power(u1,4)))/(q2*t1*u1*Power(t1 + u1,2)) - (16*Pi*Power(q2 - u1,2)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*Power(t1 + u1,2)) - (16*Pi*(4*Power(q2,2)*Power(u1,4) - Power(t1,2)*Power(u1,4) + Power(u1,6) + 2*Power(q2,3)*t1*u1*(-t1 + u1) + Power(q2,4)*(t1 - u1)*(t1 + u1) - 2*q2*Power(u1,3)*(Power(t1,2) + t1*u1 + 2*Power(u1,2))))/(q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (64*Pi*q2*s)/Power(t1 + u1,2) + (128*m2*Pi*q2*(t1 - u1))/(u1*Power(t1 + u1,2));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (64*Pi*q2*s)/Power(t1 + u1,2) + (128*m2*Pi*q2*(-t1 + u1))/(t1*Power(t1 + u1,2));
r += c3*v3;
dbl v4 = (2*Li2(1 + (2*t1)/((-1 + beta)*(t1 + u1))) + 2*Li2(1 + (2*u1)/((-1 + beta)*(t1 + u1))) - 2*Li2(-(t1 - u1 + beta*(t1 + u1))/(2.*u1)) - 2*Li2(-(-t1 + u1 + beta*(t1 + u1))/(2.*t1)) + 8*ln(betaTil)*(ln(-(t1/m2)) + ln(-(u1/m2))) + Power(ln(-((-1 + beta)*(t1 + u1))/(2.*t1)),2) + Power(ln(-((-1 + beta)*(t1 + u1))/(2.*u1)),2) + (2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2)))*(2*(ln(-(t1/m2)) + ln(-(u1/m2)) - ln(-((t1 + u1)/m2))) + ln(-((-q2 + t1 + u1)/m2))))/2.;
dbl c4 = (256*m2*Pi*q2)/(t1*u1) - (256*Pi*q2*s)/Power(t1 + u1,2);
r += c4*v4;
dbl v5 = Li2((2*beta)/(1 + beta)) - Li2(chi) + (ln(chi)*(4*ln(betaTil) - 2*ln(1 - chi) + 2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))))/2.;
dbl c5 = ((-1024*Power(m2,2)*Pi*q2)/(s*t1*u1) - (512*Pi*q2*s)/Power(t1 + u1,2) + 512*m2*Pi*q2*(1/(t1*u1) + 2/Power(t1 + u1,2)))/beta;
r += c5*v5;
dbl v6 = Li2(-chi) + (-2*Li2(-(chi/chiq)) - 2*Li2(-(chi*chiq)) - 2*(ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq)) + ln(chi)*(2*ln(1 + chi) + ln(-(t1/m2)) + ln(-(u1/m2))))/2.;
dbl c6 = ((-512*m2*Pi*q2)/(t1*u1) + (1024*Power(m2,2)*Pi*q2)/(s*t1*u1) + (256*Pi*q2*s)/Power(t1 + u1,2))/beta;
r += c6*v6;
dbl v7 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c7 = (-256*m2*Pi*q2)/Power(t1 + u1,2) + (128*Pi*q2*s)/Power(t1 + u1,2);
r += c7*v7;
dbl v8 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c8 = (256*Pi*q2*s)/Power(t1 + u1,2) + 512*m2*Pi*q2*(-(1/(t1*u1)) + Power(t1 + u1,-2));
r += c8*v8;
dbl v9 = ln(-(t1/m2));
dbl c9 = (64*Pi*q2)/u1 - (128*Pi*q2*Power(t1,2)*(Power(t1,2) + (q2 + t1)*u1))/((m2 + t1)*(q2 + t1)*u1*Power(t1 + u1,2)) - (64*Pi*q2*(q2 - t1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/((-4*m2*q2 + Power(q2 - t1,2))*(q2 + t1)*u1*Power(t1 + u1,2));
r += c9*v9;
dbl v10 = ln(-(u1/m2));
dbl c10 = (64*Pi*q2)/t1 - (128*Pi*q2*Power(u1,2)*(q2*t1 + u1*(t1 + u1)))/(t1*(m2 + u1)*(q2 + u1)*Power(t1 + u1,2)) - (64*Pi*q2*(q2 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*(q2 + u1)*Power(t1 + u1,2));
r += c10*v10;
dbl v11 = Power(ln(betaTil),2);
dbl c11 = (2048*m2*Pi*q2)/(t1*u1) - (2048*Pi*q2*s)/Power(t1 + u1,2);
r += c11*v11;
dbl v12 = Power(ln(chi),2);
dbl c12 = (-192*m2*Pi*q2)/(t1*u1) + (192*Pi*q2*s)/Power(t1 + u1,2) + ((-256*Power(m2,2)*Pi*q2)/(s*t1*u1) - (192*Pi*q2*s)/Power(t1 + u1,2) + 128*m2*Pi*q2*(1/(t1*u1) + 4/Power(t1 + u1,2)))/beta;
r += c12*v12;
dbl v13 = ln(chi);
dbl c13 = beta*((-64*Pi*q2*s)/(t1*u1) - (64*Pi*q2*Power(s,2)*Power(t1 - u1,2))/((4*m2 - s)*t1*u1*Power(t1 + u1,2)));
r += c13*v13;
dbl v14 = Power(ln(chiq),2);
dbl c14 = (-192*Pi*q2*s)/Power(t1 + u1,2) + 64*m2*Pi*q2*(5/(t1*u1) - 4/Power(t1 + u1,2)) + ((-256*m2*Pi*q2)/(t1*u1) + (512*Power(m2,2)*Pi*q2)/(s*t1*u1) + (128*Pi*q2*s)/Power(t1 + u1,2))/beta;
r += c14*v14;
dbl v15 = ln(chiq);
dbl c15 = (-32*betaq*Pi*q2*(-2*q2 + t1 + u1))/(t1*u1) - (32*betaq*Pi*q2*(q2 - t1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/((-4*m2*q2 + Power(q2 - t1,2))*t1*u1*Power(t1 + u1,2)) - (32*betaq*Pi*q2*(q2 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c15*v15;
dbl v16 = zeta2;
dbl c16 = (-256*Pi*q2*s)/Power(t1 + u1,2) + 256*m2*Pi*q2*(3/(t1*u1) - 4/Power(t1 + u1,2)) + ((1536*Power(m2,2)*Pi*q2)/(s*t1*u1) + (896*Pi*q2*s)/Power(t1 + u1,2) + 256*m2*Pi*q2*(-3/(t1*u1) - 8/Power(t1 + u1,2)))/beta;
r += c16*v16;

return r;
}

cdbl SVQEDpL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (-32*m2*Pi*(2*q2 + t1 - u1))/(q2*t1*u1) + (4*Pi*(q2 - t1)*(Power(q2 - t1,2)*Power(t1,2)*(2*Power(q2,2) + 7*q2*t1 - 2*Power(t1,2)) - 2*q2*(q2 - t1)*Power(t1,2)*(2*q2 + 5*t1)*u1 + (-2*Power(q2,4) + 5*Power(q2,3)*t1 + 7*q2*Power(t1,3) + 2*Power(t1,4))*Power(u1,2))*(q2*(t1 - u1) - t1*(t1 + u1)))/(Power(q2,2)*Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*u1*Power(t1 + u1,2)) + (12*Pi*Power(q2 - t1,3)*Power(q2*(-t1 + u1) + t1*(t1 + u1),3))/(q2*Power(-4*m2*q2 + Power(q2 - t1,2),3)*u1*Power(t1 + u1,2)) + (4*Pi*(4*Power(q2,2)*Power(t1 - u1,2)*u1 + 4*Power(q2,3)*Power(t1 + u1,2) - 4*Power(t1,2)*(t1 - u1)*Power(t1 + u1,2) + q2*t1*(t1 + u1)*(Power(t1,2) - 10*t1*u1 + 5*Power(u1,2))))/(Power(q2,2)*t1*u1*Power(t1 + u1,2)) + (4*Pi*(-4*Power(q2,5)*Power(t1 - u1,2) + 6*Power(t1,4)*(t1 - u1)*Power(t1 + u1,2) + 2*Power(q2,4)*(t1 - 3*u1)*(3*Power(t1,2) + Power(u1,2)) - q2*Power(t1,3)*(t1 + u1)*(17*Power(t1,2) - 10*t1*u1 + 5*Power(u1,2)) + 2*Power(q2,2)*Power(t1,2)*(7*Power(t1,3) - 8*Power(t1,2)*u1 - t1*Power(u1,2) - 2*Power(u1,3)) + Power(q2,3)*t1*(-5*Power(t1,3) + 27*Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3))))/(Power(q2,2)*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1*Power(t1 + u1,2));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (-32*m2*Pi*(2*q2 - t1 + u1))/(q2*t1*u1) + (12*Pi*Power(q2 - u1,3)*Power(q2*(t1 - u1) + u1*(t1 + u1),3))/(q2*t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)*Power(t1 + u1,2)) + (4*Pi*(4*Power(q2,2)*t1*Power(t1 - u1,2) + 4*Power(q2,3)*Power(t1 + u1,2) + 4*(t1 - u1)*Power(u1,2)*Power(t1 + u1,2) + q2*u1*(t1 + u1)*(5*Power(t1,2) - 10*t1*u1 + Power(u1,2))))/(Power(q2,2)*t1*u1*Power(t1 + u1,2)) + (4*Pi*(q2 - u1)*(q2*(t1 - u1) + u1*(t1 + u1))*(2*Power(q2,4)*(t1 - u1)*(t1 + u1) - 2*(t1 - u1)*Power(u1,4)*(t1 + u1) + 2*Power(q2,2)*Power(u1,3)*(3*t1 + 7*u1) + Power(q2,3)*u1*(-5*Power(t1,2) + 4*t1*u1 - 3*Power(u1,2)) - q2*Power(u1,3)*(7*Power(t1,2) + 10*t1*u1 + 11*Power(u1,2))))/(Power(q2,2)*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*Power(t1 + u1,2)) + (4*Pi*(-4*Power(q2,5)*Power(t1 - u1,2) - 6*(t1 - u1)*Power(u1,4)*Power(t1 + u1,2) - 2*Power(q2,4)*(3*t1 - u1)*(Power(t1,2) + 3*Power(u1,2)) - q2*Power(u1,3)*(t1 + u1)*(5*Power(t1,2) - 10*t1*u1 + 17*Power(u1,2)) - 2*Power(q2,2)*Power(u1,2)*(2*Power(t1,3) + Power(t1,2)*u1 + 8*t1*Power(u1,2) - 7*Power(u1,3)) + Power(q2,3)*u1*(Power(t1,3) + Power(t1,2)*u1 + 27*t1*Power(u1,2) - 5*Power(u1,3))))/(Power(q2,2)*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (64*Pi*q2*s)/Power(t1 + u1,2) - (128*m2*Pi*q2)/(u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (64*Pi*q2*s)/Power(t1 + u1,2) - (128*m2*Pi*q2)/(t1*(t1 + u1));
r += c3*v3;
dbl v4 = Li2((2*beta)/(1 + beta)) - Li2(chi) + (ln(chi)*(4*ln(betaTil) - 2*ln(1 - chi) + 2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))))/2.;
dbl c4 = ((1024*Power(m2,2)*Pi*q2)/(s*t1*u1) + (512*Pi*q2*s)/Power(t1 + u1,2) + 512*m2*Pi*q2*(-(1/(t1*u1)) - 2/Power(t1 + u1,2)))/beta;
r += c4*v4;
dbl v5 = Li2(-chi) + (-2*Li2(-(chi/chiq)) - 2*Li2(-(chi*chiq)) - 2*(ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq)) + ln(chi)*(2*ln(1 + chi) + ln(-(t1/m2)) + ln(-(u1/m2))))/2.;
dbl c5 = ((512*m2*Pi*q2)/(t1*u1) - (1024*Power(m2,2)*Pi*q2)/(s*t1*u1) - (256*Pi*q2*s)/Power(t1 + u1,2))/beta;
r += c5*v5;
dbl v6 = ln(-(t1/m2));
dbl c6 = (128*m2*Pi*(-t1 + u1))/(t1*u1) + (64*Pi*q2*Power(t1,3)*(Power(t1,2) + (q2 + t1)*u1))/(Power(m2 + t1,2)*(q2 + t1)*u1*Power(t1 + u1,2)) + (64*Pi*q2*t1*(-2*q2*Power(t1,3)*(q2 + 2*t1) - t1*(Power(q2,3) + 3*Power(q2,2)*t1 - 2*Power(t1,3))*u1 + 2*Power(q2 + t1,3)*Power(u1,2)))/((m2 + t1)*Power(q2 + t1,3)*u1*Power(t1 + u1,2)) + (32*Pi*(Power(q2 - t1,3)*Power(t1,3)*(Power(q2,4) + 5*Power(q2,3)*t1 + 7*Power(q2,2)*Power(t1,2) - Power(t1,4)) - Power(q2 - t1,2)*Power(t1,2)*(q2 + t1)*(Power(q2,4) + 6*Power(q2,3)*t1 + 14*Power(q2,2)*Power(t1,2) + 2*q2*Power(t1,3) - Power(t1,4))*u1 - t1*Power(q2 + t1,3)*(Power(q2,4) - 5*Power(q2,3)*t1 + Power(q2,2)*Power(t1,2) + 2*q2*Power(t1,3) + Power(t1,4))*Power(u1,2) + Power(q2 + t1,3)*(Power(q2,2) - 2*q2*t1 - Power(t1,2))*(Power(q2,2) + Power(t1,2))*Power(u1,3)))/(q2*(-4*m2*q2 + Power(q2 - t1,2))*t1*Power(q2 + t1,3)*u1*Power(t1 + u1,2)) + (48*Pi*Power(q2 - t1,2)*Power(q2*(-t1 + u1) + t1*(t1 + u1),3))/(Power(-4*m2*q2 + Power(q2 - t1,2),2)*(q2 + t1)*u1*Power(t1 + u1,2)) - (16*Pi*(2*Power(t1,2)*(t1 - u1)*Power(t1 + u1,2) - q2*t1*(t1 + u1)*(5*Power(t1,2) - 6*t1*u1 + 5*Power(u1,2)) + 2*Power(q2,2)*(Power(t1,3) - Power(t1,2)*u1 + 7*t1*Power(u1,2) + Power(u1,3))))/(q2*t1*u1*Power(t1 + u1,2));
r += c6*v6;
dbl v7 = 2*ln(betaTil) + ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))/2.;
dbl c7 = (-512*m2*Pi*q2)/(t1*u1) + (512*Pi*q2*s)/Power(t1 + u1,2);
r += c7*v7;
dbl v8 = ln(-(u1/m2));
dbl c8 = (128*m2*Pi*(t1 - u1))/(t1*u1) + (64*Pi*q2*Power(u1,3)*(q2*t1 + u1*(t1 + u1)))/(t1*Power(m2 + u1,2)*(q2 + u1)*Power(t1 + u1,2)) + (48*Pi*Power(q2 - u1,2)*Power(q2*(t1 - u1) + u1*(t1 + u1),3))/(t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(q2 + u1)*Power(t1 + u1,2)) + (32*Pi*(q2*(t1 - u1) + u1*(t1 + u1))*(Power(q2,5)*(t1 - 3*u1)*Power(u1,2) - Power(t1,2)*Power(u1,6) + Power(u1,8) + Power(q2,6)*(t1 - u1)*(t1 + u1) - 2*q2*Power(u1,5)*(2*Power(t1,2) + t1*u1 + Power(u1,2)) + Power(q2,4)*Power(u1,2)*(-3*Power(t1,2) + 7*t1*u1 + 2*Power(u1,2)) - Power(q2,2)*Power(u1,4)*(5*Power(t1,2) + 7*t1*u1 + 6*Power(u1,2)) + Power(q2,3)*Power(u1,3)*(-4*Power(t1,2) + t1*u1 + 9*Power(u1,2))))/(q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(q2 + u1,3)*Power(t1 + u1,2)) - (16*Pi*(-2*(t1 - u1)*Power(u1,2)*Power(t1 + u1,2) - q2*u1*(t1 + u1)*(5*Power(t1,2) - 6*t1*u1 + 5*Power(u1,2)) + 2*Power(q2,2)*(Power(t1,3) + 7*Power(t1,2)*u1 - t1*Power(u1,2) + Power(u1,3))))/(q2*t1*u1*Power(t1 + u1,2)) + (64*Pi*q2*u1*(Power(q2,3)*t1*(2*t1 - u1) + 2*t1*Power(u1,3)*(t1 + u1) + Power(q2,2)*u1*(6*Power(t1,2) - 3*t1*u1 - 2*Power(u1,2)) + q2*(6*Power(t1,2)*Power(u1,2) - 4*Power(u1,4))))/(t1*(m2 + u1)*Power(q2 + u1,3)*Power(t1 + u1,2));
r += c8*v8;
dbl v9 = Power(ln(chi),2);
dbl c9 = (64*m2*Pi*q2)/(t1*u1) - (64*Pi*q2*s)/Power(t1 + u1,2) + ((256*Power(m2,2)*Pi*q2)/(s*t1*u1) + (192*Pi*q2*s)/Power(t1 + u1,2) + 128*m2*Pi*q2*(-(1/(t1*u1)) - 4/Power(t1 + u1,2)))/beta;
r += c9*v9;
dbl v10 = ln(chi);
dbl c10 = ((-256*m2*Pi*q2)/(t1*u1) + (256*Pi*q2*s)/Power(t1 + u1,2))/beta + beta*((64*Pi*q2*(q2 - t1 - u1))/(t1*u1) + (64*Pi*q2*Power(s,2)*Power(t1 - u1,2))/((4*m2 - s)*t1*u1*Power(t1 + u1,2)));
r += c10*v10;
dbl v11 = Power(ln(chiq),2);
dbl c11 = (-64*m2*Pi*q2)/(t1*u1) + (64*Pi*q2*s)/Power(t1 + u1,2) + ((256*m2*Pi*q2)/(t1*u1) - (512*Power(m2,2)*Pi*q2)/(s*t1*u1) - (128*Pi*q2*s)/Power(t1 + u1,2))/beta;
r += c11*v11;
dbl v12 = ln(chiq);
dbl c12 = (-32*betaq*m2*Pi*q2*(Power(t1,2) + 10*t1*u1 + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) - (16*betaq*Pi*(Power(t1,2) + 10*t1*u1 + Power(u1,2))*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)))/(Power(t1,2)*Power(u1,2)) + (8*betaq*Pi*(Power(q2 - t1,2)*(3*q2 - t1)*Power(t1,2)*(q2 + 2*t1) - 2*q2*t1*(Power(q2,3) + 2*q2*Power(t1,2) - 3*Power(t1,3))*u1 + (-Power(q2,4) + 5*Power(q2,3)*t1 - 3*Power(q2,2)*Power(t1,2) + 5*q2*Power(t1,3) + 2*Power(t1,4))*Power(u1,2))*(q2*(t1 - u1) - t1*(t1 + u1)))/(q2*(-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*u1*Power(t1 + u1,2)) + (24*betaq*Pi*Power(q2 - t1,2)*Power(q2*(-t1 + u1) + t1*(t1 + u1),3))/(Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*u1*Power(t1 + u1,2)) + (8*betaq*Pi*(Power(q2,4)*Power(t1,2) + Power(q2,3)*(2*q2 - 5*t1)*t1*u1 + 3*Power(q2,2)*(-Power(q2,2) + Power(t1,2))*Power(u1,2) + q2*(q2 - t1)*(q2 + 5*t1)*Power(u1,3) + (9*Power(q2,2) - 6*q2*t1 - 2*Power(t1,2))*Power(u1,4) - 9*q2*Power(u1,5) + 2*Power(u1,6))*(q2*(t1 - u1) + u1*(t1 + u1)))/(q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2)*Power(t1 + u1,2)) + (24*betaq*Pi*Power(q2 - u1,2)*Power(q2*(t1 - u1) + u1*(t1 + u1),3))/(t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*Power(t1 + u1,2)) + (8*betaq*Pi*(-2*t1*Power(t1 - u1,2)*u1*Power(t1 + u1,3) + 2*q2*Power(t1 + u1,2)*(Power(t1,2) + Power(u1,2))*(Power(t1,2) + 12*t1*u1 + Power(u1,2)) - 4*Power(q2,2)*(t1 + u1)*(Power(t1,4) + 12*Power(t1,3)*u1 + 30*Power(t1,2)*Power(u1,2) + 12*t1*Power(u1,3) + Power(u1,4)) + Power(q2,3)*(3*Power(t1,4) + 44*Power(t1,3)*u1 + 114*Power(t1,2)*Power(u1,2) + 44*t1*Power(u1,3) + 3*Power(u1,4))))/(q2*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2));
r += c12*v12;
dbl v13 = zeta2;
dbl c13 = (-256*m2*Pi*q2)/(t1*u1) + (256*Pi*q2*s)/Power(t1 + u1,2) + ((-1536*Power(m2,2)*Pi*q2)/(s*t1*u1) - (896*Pi*q2*s)/Power(t1 + u1,2) + 256*m2*Pi*q2*(3/(t1*u1) + 8/Power(t1 + u1,2)))/beta;
r += c13*v13;
dbl v14 = 1;
dbl c14 = (-512*m2*Pi*q2)/(t1*u1) - (64*Pi*q2*Power(t1,2)*(Power(t1,2) + (q2 + t1)*u1))/((m2 + t1)*(q2 + t1)*u1*Power(t1 + u1,2)) + 16*Pi*(2 + t1/u1 + u1/t1 + (32*q2*(q2 - t1 - u1))/Power(t1 + u1,2)) + (16*Pi*(q2 - t1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),3))/((-4*m2*q2 + Power(q2 - t1,2))*t1*(q2 + t1)*u1*Power(t1 + u1,2)) - (64*Pi*q2*Power(u1,2)*(q2*t1 + u1*(t1 + u1)))/(t1*(m2 + u1)*(q2 + u1)*Power(t1 + u1,2)) + (16*Pi*(q2 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),3))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(q2 + u1)*Power(t1 + u1,2));
r += c14*v14;

return r;
}
cdbl SVOKpScaleRL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;

return (-1408*Pi*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1))/(3.*Power(sp,2)*t1*u1);
}

cdbl SVOKpScaleFL(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;

return (128*Pi*q2*(-(m2*Power(sp,2)) + (q2 + sp)*t1*u1)*(11 + 24*ln(betaTil)))/(3.*Power(sp,2)*t1*u1);
}

cdbl SVOKpP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c0 = (-64*m2*Pi)/(t1*(t1 + u1)) + (8*Pi*(-(Power(q2,3)*Power(t1,2)) + Power(q2,2)*t1*(3*q2 + 2*t1)*u1 - 2*q2*(Power(q2,2) + q2*t1 + Power(t1,2))*Power(u1,2) + (6*Power(q2,2) - 7*q2*t1 + 3*Power(t1,2))*Power(u1,3) + (-7*q2 + 4*t1)*Power(u1,4) + 3*Power(u1,5)))/(q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(t1 + u1)) - (8*Pi*Power(q2 - u1,2)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(t1 + u1)) - (8*Pi*(4*Power(q2,2)*u1 - q2*(Power(t1,2) + 5*t1*u1 + 2*Power(u1,2)) + u1*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(q2*t1*u1*(t1 + u1));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c1 = (-64*m2*Pi)/(u1*(t1 + u1)) + (8*Pi*(t1*(-4*Power(q2,2) + 2*q2*t1 - 3*Power(t1,2)) + (5*q2 - 4*t1)*t1*u1 + (q2 - 3*t1)*Power(u1,2)))/(q2*t1*u1*(t1 + u1)) + (8*Pi*Power(q2 - t1,2)*(t1 - u1)*(q2*(-t1 + u1) + t1*(t1 + u1)))/(Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1*(t1 + u1)) - (8*Pi*(Power(q2,3)*(2*Power(t1,2) - 3*t1*u1 + Power(u1,2)) - 2*Power(q2,2)*t1*(3*Power(t1,2) - t1*u1 + Power(u1,2)) + q2*Power(t1,2)*(7*Power(t1,2) + 7*t1*u1 + 2*Power(u1,2)) - Power(t1,3)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(q2*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1*(t1 + u1));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (32*Power(m2,2)*Pi*(5*Power(t1,2) + 2*t1*u1 + Power(u1,2)))/(Power(t1,3)*u1) + 32*m2*Pi*(2/u1 + (q2*(t1 - u1))/(Power(t1,2)*(t1 + u1))) - (16*Pi*(2*Power(q2,2) - 2*q2*(t1 + 2*u1) + (t1 + u1)*(t1 + 2*u1)))/(u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (-16*Pi*(2*Power(q2 - t1,2) - 2*q2*u1 + 3*t1*u1 + Power(u1,2)))/(t1*(t1 + u1)) + (32*Power(m2,2)*Pi*(Power(t1,2) + 2*t1*u1 + 5*Power(u1,2)))/(t1*Power(u1,3)) + (32*m2*Pi*(q2*t1*(-t1 + u1) + 2*Power(u1,2)*(t1 + u1)))/(t1*Power(u1,2)*(t1 + u1));
r += c3*v3;
dbl v4 = (2*Li2(1 + (2*t1)/((-1 + beta)*(t1 + u1))) + 2*Li2(1 + (2*u1)/((-1 + beta)*(t1 + u1))) - 2*Li2(-(t1 - u1 + beta*(t1 + u1))/(2.*u1)) - 2*Li2(-(-t1 + u1 + beta*(t1 + u1))/(2.*t1)) + 8*ln(betaTil)*(ln(-(t1/m2)) + ln(-(u1/m2))) + Power(ln(-((-1 + beta)*(t1 + u1))/(2.*t1)),2) + Power(ln(-((-1 + beta)*(t1 + u1))/(2.*u1)),2) + (2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2)))*(2*(ln(-(t1/m2)) + ln(-(u1/m2)) - ln(-((t1 + u1)/m2))) + ln(-((-q2 + t1 + u1)/m2))))/2.;
dbl c4 = (-64*m2*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) - (32*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1));
r += c4*v4;
dbl v5 = Li2((2*beta)/(1 + beta)) - Li2(chi) + (ln(chi)*(4*ln(betaTil) - 2*ln(1 - chi) + 2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))))/2.;
dbl c5 = ((256*Power(m2,2)*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(s*Power(t1,2)*Power(u1,2)) - (64*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) + (128*m2*Pi*(Power(t1,2) + Power(u1,2))*((t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c5*v5;
dbl v6 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
dbl c6 = ((-256*Power(m2,2)*Pi*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (64*m2*Pi*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)) + (32*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(t1*u1*(t1 + u1)))/beta;
r += c6*v6;
dbl v7 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c7 = (32*m2*Pi*(t1 + u1))/(t1*u1) + (16*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1));
r += c7*v7;
dbl v8 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c8 = (32*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) + (64*m2*Pi*(t1 + u1)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2)))/(Power(t1,2)*Power(u1,2));
r += c8*v8;
dbl v9 = ln(chi)*ln(-(t1/m2));
dbl c9 = ((-256*Power(m2,2)*Pi*(2*q2*Power(t1,2) - Power(t1,3) + 2*t1*Power(u1,2) + Power(u1,3)))/(s*Power(t1,2)*u1*(t1 + u1)) + (32*Pi*(2*Power(q2 - t1,2)*t1 + 4*t1*(-q2 + t1)*u1 + (-2*q2 + 3*t1)*Power(u1,2) + Power(u1,3)))/(t1*u1*(t1 + u1)) - (64*m2*Pi*(2*Power(q2,2)*Power(t1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 2*Power(u1,2))))/(s*Power(t1,2)*u1*(t1 + u1)))/beta;
r += c9*v9;
dbl v10 = ln(-(t1/m2));
dbl c10 = 32*Pi*(2 + q2/t1 + (2*t1)/u1) - (32*m2*Pi*Power(t1 + u1,2))/(Power(t1,2)*u1) + (32*Pi*(-(Power(t1,3)*(q2 + 2*t1)) - t1*(Power(q2,2) + 5*q2*t1 + 3*Power(t1,2))*u1 - Power(q2 + t1,2)*Power(u1,2)))/((m2 + t1)*(q2 + t1)*u1*(t1 + u1)) - (32*Pi*q2*(q2 - t1)*(t1 - u1)*(q2*(t1 - u1) - t1*(t1 + u1)))/((-4*m2*q2 + Power(q2 - t1,2))*(q2 + t1)*u1*(t1 + u1));
r += c10*v10;
dbl v11 = ln(chi)*ln(-(u1/m2));
dbl c11 = ((-256*Power(m2,2)*Pi*(Power(t1,3) + 2*Power(t1,2)*u1 + (2*q2 - u1)*Power(u1,2)))/(s*t1*Power(u1,2)*(t1 + u1)) + (32*Pi*(2*Power(q2,2)*u1 - 2*q2*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2)) + (t1 + u1)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))))/(t1*u1*(t1 + u1)) - (64*m2*Pi*(2*Power(q2,2)*Power(u1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(2*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(s*t1*Power(u1,2)*(t1 + u1)))/beta;
r += c11*v11;
dbl v12 = ln(-(u1/m2));
dbl c12 = (-32*m2*Pi*Power(t1 + u1,2))/(t1*Power(u1,2)) + 32*Pi*(2 + q2/u1 + (2*u1)/t1) - (32*Pi*q2*(q2 - u1)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*(q2 + u1)*(t1 + u1)) - (32*Pi*(Power(q2,2)*t1*(t1 + u1) + Power(u1,2)*(t1 + u1)*(t1 + 2*u1) + q2*u1*(2*Power(t1,2) + 5*t1*u1 + Power(u1,2))))/(t1*(m2 + u1)*(q2 + u1)*(t1 + u1));
r += c12*v12;
dbl v13 = Power(ln(betaTil),2);
dbl c13 = (-512*m2*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) - (256*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1));
r += c13*v13;
dbl v14 = Power(ln(chi),2);
dbl c14 = (-192*Power(m2,2)*Pi)/(t1*u1) + (32*m2*Pi*(Power(t1,2) + Power(u1,2))*(Power(t1,3) + 3*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-q2 + 3*u1)))/(Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)) + (8*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) + (t1 + u1)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2))))/(t1*u1*(t1 + u1)) + ((64*Power(m2,2)*Pi*(Power(t1,3) + 2*Power(t1,2)*u1 + Power(u1,3) + 2*t1*u1*(-q2 + u1)))/(s*Power(t1,2)*Power(u1,2)) + (8*Pi*(2*Power(q2,2)*(t1 + u1) + 2*q2*(Power(t1,2) - 4*t1*u1 + Power(u1,2)) - (t1 + u1)*(Power(t1,2) - 4*t1*u1 + Power(u1,2))))/(t1*u1*(t1 + u1)) - (16*m2*Pi*(2*Power(q2,2)*t1*u1*(t1 + u1) - (t1 + u1)*(2*Power(t1,4) + 5*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 5*t1*Power(u1,3) + 2*Power(u1,4)) + q2*(2*Power(t1,4) + 7*Power(t1,3)*u1 - 6*Power(t1,2)*Power(u1,2) + 7*t1*Power(u1,3) + 2*Power(u1,4))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c14*v14;
dbl v15 = ln(chi);
dbl c15 = beta*((-64*m2*Pi*q2)/(t1*u1) - (16*Pi*Power(t1 - u1,2)*(2*Power(q2,2) - 3*q2*(t1 + u1) + Power(t1 + u1,2)))/((4*m2 - s)*t1*u1*(t1 + u1)) + (16*Pi*(4*Power(q2,2)*t1*u1 - 2*q2*Power(t1 + u1,3) + Power(t1 + u1,4)))/(t1*u1*Power(t1 + u1,2)));
r += c15*v15;
dbl v16 = Power(ln(chiq),2);
dbl c16 = (192*Power(m2,2)*Pi)/(t1*u1) + 32*m2*Pi*((-1 + q2/u1)/t1 - (2*t1)/Power(u1,2) - 1/u1 - (2*u1)/Power(t1,2) - (2*q2)/Power(t1 + u1,2)) - (8*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) + (t1 + u1)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2))))/(t1*u1*(t1 + u1)) + ((-128*Power(m2,2)*Pi*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (32*m2*Pi*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)) + (16*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(t1*u1*(t1 + u1)))/beta;
r += c16*v16;
dbl v17 = ln(chiq);
dbl c17 = (64*betaq*m2*Pi*q2)/(t1*u1) - (16*betaq*Pi*q2*(q2 - t1)*(t1 - u1)*(q2*(t1 - u1) - t1*(t1 + u1)))/((-4*m2*q2 + Power(q2 - t1,2))*t1*u1*(t1 + u1)) - (16*betaq*Pi*q2*(q2 - u1)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(t1 + u1)) + (32*betaq*Pi*q2*(Power(t1,3) + 3*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 3*u1)))/(t1*u1*Power(t1 + u1,2));
r += c17*v17;
dbl v18 = zeta2;
dbl c18 = (-32*Power(m2,2)*Pi*(Power(t1,4) + 2*Power(t1,3)*u1 - 26*Power(t1,2)*Power(u1,2) + 2*t1*Power(u1,3) + Power(u1,4)))/(Power(t1,3)*Power(u1,3)) - (32*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(t1*u1*(t1 + u1)) + (32*m2*Pi*(-4*Power(t1 + u1,3)*(Power(t1,2) - t1*u1 + Power(u1,2)) + q2*(Power(t1,4) + 6*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 6*t1*Power(u1,3) + Power(u1,4))))/(Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)) + ((-128*Power(m2,2)*Pi*(3*Power(t1,3) + 4*Power(t1,2)*u1 - 2*t1*(q2 - 2*u1)*u1 + 3*Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (16*Pi*(-2*Power(q2,2)*(t1 + u1) - 2*q2*(5*Power(t1,2) - 4*t1*u1 + 5*Power(u1,2)) + (t1 + u1)*(5*Power(t1,2) - 4*t1*u1 + 5*Power(u1,2))))/(t1*u1*(t1 + u1)) + (32*m2*Pi*(2*Power(q2,2)*t1*u1*(t1 + u1) - (t1 + u1)*(6*Power(t1,4) + 17*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 17*t1*Power(u1,3) + 6*Power(u1,4)) + q2*(6*Power(t1,4) + 23*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 23*t1*Power(u1,3) + 6*Power(u1,4))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c18*v18;
dbl v19 = 1;
dbl c19 = (32*Pi*q2*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) - (32*m2*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2));
r += c19*v19;

return r;
}

cdbl SVQEDpP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;

dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (-6*Pi*Power(q2 - t1,3)*(t1 - u1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(q2*Power(-4*m2*q2 + Power(q2 - t1,2),3)*u1*(t1 + u1)) + (32*m2*Pi*(2*q2*Power(t1,2) + u1*Power(t1 + u1,2)))/(q2*Power(t1,2)*u1*(t1 + u1)) - (2*Pi*(q2 - t1)*(2*Power(q2,4)*Power(t1 - u1,2)*(2*t1 - u1) - Power(q2,3)*t1*(t1 - u1)*(19*Power(t1,2) - 2*t1*u1 + 3*Power(u1,2)) + Power(t1,4)*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) - q2*Power(t1,3)*(21*Power(t1,3) + 29*Power(t1,2)*u1 + 11*t1*Power(u1,2) - 5*Power(u1,3)) + Power(q2,2)*Power(t1,2)*(31*Power(t1,3) + 7*Power(t1,2)*u1 - 15*t1*Power(u1,2) + Power(u1,3))))/(Power(q2,2)*Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*u1*(t1 + u1)) + (2*Pi*(16*Power(q2,3)*Power(t1,2) + 2*q2*t1*(t1 + u1)*(2*Power(t1,2) - t1*u1 + 3*Power(u1,2)) + Power(t1,2)*(t1 + u1)*(5*Power(t1,2) + 10*t1*u1 + 9*Power(u1,2)) - 4*Power(q2,2)*(5*Power(t1,3) + 6*Power(t1,2)*u1 + 4*t1*Power(u1,2) + Power(u1,3))))/(Power(q2,2)*Power(t1,2)*u1*(t1 + u1)) + (2*Pi*(-4*Power(q2,3)*t1*(t1 - u1)*(2*Power(t1,2) + t1*u1 - 2*Power(u1,2)) - Power(q2,2)*Power(t1,2)*(t1 + 3*u1)*(5*Power(t1,2) + 2*t1*u1 + Power(u1,2)) - 2*Power(t1,4)*(t1 + u1)*(5*Power(t1,2) + 8*t1*u1 + 7*Power(u1,2)) + 4*Power(q2,4)*(Power(t1,3) - 2*Power(t1,2)*u1 + Power(u1,3)) + q2*Power(t1,3)*(19*Power(t1,3) + 43*Power(t1,2)*u1 + 37*t1*Power(u1,2) + 5*Power(u1,3))))/(Power(q2,2)*(-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*u1*(t1 + u1));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (32*m2*Pi*(Power(t1,3) + 2*Power(t1,2)*u1 + (2*q2 + t1)*Power(u1,2)))/(q2*t1*Power(u1,2)*(t1 + u1)) + (6*Pi*Power(q2 - u1,3)*(t1 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(q2*t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)*(t1 + u1)) + (2*Pi*(16*Power(q2,3)*Power(u1,2) + 2*q2*u1*(t1 + u1)*(3*Power(t1,2) - t1*u1 + 2*Power(u1,2)) + Power(u1,2)*(t1 + u1)*(9*Power(t1,2) + 10*t1*u1 + 5*Power(u1,2)) - 4*Power(q2,2)*(Power(t1,3) + 4*Power(t1,2)*u1 + 6*t1*Power(u1,2) + 5*Power(u1,3))))/(Power(q2,2)*t1*Power(u1,2)*(t1 + u1)) + (2*Pi*(-(Power(q2,2)*Power(u1,2)*(3*t1 + u1)*(Power(t1,2) + 2*t1*u1 + 5*Power(u1,2))) - 2*Power(u1,4)*(t1 + u1)*(7*Power(t1,2) + 8*t1*u1 + 5*Power(u1,2)) + 4*Power(q2,3)*u1*(-2*Power(t1,3) + 3*Power(t1,2)*u1 + t1*Power(u1,2) - 2*Power(u1,3)) + 4*Power(q2,4)*(Power(t1,3) - 2*t1*Power(u1,2) + Power(u1,3)) + q2*Power(u1,3)*(5*Power(t1,3) + 37*Power(t1,2)*u1 + 43*t1*Power(u1,2) + 19*Power(u1,3))))/(Power(q2,2)*t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2)*(t1 + u1)) - (2*Pi*(q2 - u1)*(-2*Power(q2,4)*(t1 - 2*u1)*Power(t1 - u1,2) + Power(u1,4)*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) + Power(q2,3)*(t1 - u1)*u1*(3*Power(t1,2) - 2*t1*u1 + 19*Power(u1,2)) - q2*Power(u1,3)*(-5*Power(t1,3) + 11*Power(t1,2)*u1 + 29*t1*Power(u1,2) + 21*Power(u1,3)) + Power(q2,2)*Power(u1,2)*(Power(t1,3) - 15*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 31*Power(u1,3))))/(Power(q2,2)*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*(t1 + u1));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (-32*m2*Pi*(t1 - u1)*(Power(t1,2) + (q2 + t1)*u1))/(Power(t1,2)*u1*(t1 + u1)) - (32*Power(m2,2)*Pi*(5*Power(t1,2) + 2*t1*u1 + Power(u1,2)))/(Power(t1,3)*u1) + (16*Pi*(2*Power(q2 - t1,2)*t1 + 4*t1*(-q2 + t1)*u1 + (-2*q2 + 3*t1)*Power(u1,2) + Power(u1,3)))/(t1*u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (-32*Power(m2,2)*Pi*(Power(t1,2) + 2*t1*u1 + 5*Power(u1,2)))/(t1*Power(u1,3)) + (32*m2*Pi*(t1 - u1)*(q2*t1 + u1*(t1 + u1)))/(t1*Power(u1,2)*(t1 + u1)) + (16*Pi*(2*Power(q2,2)*u1 - 2*q2*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2)) + (t1 + u1)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))))/(t1*u1*(t1 + u1));
r += c3*v3;
dbl v4 = Li2((2*beta)/(1 + beta)) - Li2(chi) + (ln(chi)*(4*ln(betaTil) - 2*ln(1 - chi) + 2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))))/2.;
dbl c4 = ((-256*Power(m2,2)*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(s*Power(t1,2)*Power(u1,2)) + (64*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) - (128*m2*Pi*(Power(t1,2) + Power(u1,2))*((t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c4*v4;
dbl v5 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
dbl c5 = ((256*Power(m2,2)*Pi*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) - (64*m2*Pi*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)) - (32*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(t1*u1*(t1 + u1)))/beta;
r += c5*v5;
dbl v6 = ln(chi)*ln(-(t1/m2));
dbl c6 = ((32*Pi*(-2*Power(q2 - t1,2)*t1 + 4*(q2 - t1)*t1*u1 + (2*q2 - 3*t1)*Power(u1,2) - Power(u1,3)))/(t1*u1*(t1 + u1)) + (256*Power(m2,2)*Pi*(2*q2*Power(t1,2) - Power(t1,3) + 2*t1*Power(u1,2) + Power(u1,3)))/(s*Power(t1,2)*u1*(t1 + u1)) + (64*m2*Pi*(2*Power(q2,2)*Power(t1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 2*Power(u1,2))))/(s*Power(t1,2)*u1*(t1 + u1)))/beta;
r += c6*v6;
dbl v7 = ln(-(t1/m2));
dbl c7 = (-32*m2*Pi*Power(t1 + u1,2))/(Power(t1,2)*u1) + (16*Pi*t1*(Power(t1,3)*(q2 + 2*t1) + t1*(Power(q2,2) + 5*q2*t1 + 3*Power(t1,2))*u1 + Power(q2 + t1,2)*Power(u1,2)))/(Power(m2 + t1,2)*(q2 + t1)*u1*(t1 + u1)) + (16*Pi*(-(Power(t1,4)*(9*Power(q2,2) + 19*q2*t1 + 8*Power(t1,2))) + t1*(Power(q2,4) - 12*Power(q2,3)*t1 - 45*Power(q2,2)*Power(t1,2) - 47*q2*Power(t1,3) - 17*Power(t1,4))*u1 - (q2 + t1)*(3*Power(q2,3) + 14*Power(q2,2)*t1 + 21*q2*Power(t1,2) + 12*Power(t1,3))*Power(u1,2) - 3*Power(q2 + t1,3)*Power(u1,3)))/((m2 + t1)*Power(q2 + t1,3)*u1*(t1 + u1)) + (8*Pi*(-(Power(q2 - t1,2)*Power(t1,3)*(4*Power(q2,4) - 2*Power(q2,3)*t1 - 13*Power(q2,2)*Power(t1,2) + 2*q2*Power(t1,3) + 5*Power(t1,4))) + (q2 - t1)*Power(t1,2)*(10*Power(q2,5) + 12*Power(q2,4)*t1 - 29*Power(q2,3)*Power(t1,2) - 27*Power(q2,2)*Power(t1,3) + 7*q2*Power(t1,4) + 11*Power(t1,5))*u1 - t1*(q2 + t1)*(8*Power(q2,5) + 6*Power(q2,4)*t1 - 21*Power(q2,3)*Power(t1,2) - 17*Power(q2,2)*Power(t1,3) - 3*q2*Power(t1,4) + 11*Power(t1,5))*Power(u1,2) + Power(q2 + t1,3)*(2*Power(q2,3) - 4*Power(q2,2)*t1 + 3*q2*Power(t1,2) - 5*Power(t1,3))*Power(u1,3)))/(q2*(-4*m2*q2 + Power(q2 - t1,2))*t1*Power(q2 + t1,3)*u1*(t1 + u1)) - (24*Pi*Power(q2 - t1,2)*(t1 - u1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(Power(-4*m2*q2 + Power(q2 - t1,2),2)*(q2 + t1)*u1*(t1 + u1)) + (8*Pi*(4*Power(q2,2)*u1*(t1 + u1) + t1*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) + 2*q2*(Power(t1,3) + 6*Power(t1,2)*u1 + 3*t1*Power(u1,2) + 2*Power(u1,3))))/(q2*t1*u1*(t1 + u1));
r += c7*v7;
dbl v8 = 2*ln(betaTil) + ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))/2.;
dbl c8 = (128*m2*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) + (64*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1));
r += c8*v8;
dbl v9 = ln(chi)*ln(-(u1/m2));
dbl c9 = ((256*Power(m2,2)*Pi*(Power(t1,3) + 2*Power(t1,2)*u1 + (2*q2 - u1)*Power(u1,2)))/(s*t1*Power(u1,2)*(t1 + u1)) - (32*Pi*(2*Power(q2,2)*u1 - 2*q2*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2)) + (t1 + u1)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))))/(t1*u1*(t1 + u1)) + (64*m2*Pi*(2*Power(q2,2)*Power(u1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(2*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(s*t1*Power(u1,2)*(t1 + u1)))/beta;
r += c9*v9;
dbl v10 = ln(-(u1/m2));
dbl c10 = (-32*m2*Pi*Power(t1 + u1,2))/(t1*Power(u1,2)) + (24*Pi*Power(q2 - u1,2)*(t1 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(q2 + u1)*(t1 + u1)) + (16*Pi*u1*(Power(q2,2)*t1*(t1 + u1) + Power(u1,2)*(t1 + u1)*(t1 + 2*u1) + q2*u1*(2*Power(t1,2) + 5*t1*u1 + Power(u1,2))))/(t1*Power(m2 + u1,2)*(q2 + u1)*(t1 + u1)) + (8*Pi*(2*Power(q2,6)*(t1 - 2*u1)*Power(t1 - u1,2) - Power(u1,6)*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) + 2*Power(q2,3)*Power(u1,3)*(-3*Power(t1,3) + 19*Power(t1,2)*u1 + t1*Power(u1,2) - 13*Power(u1,3)) + 4*q2*Power(u1,5)*(-3*Power(t1,3) - 2*Power(t1,2)*u1 + t1*Power(u1,2) + 2*Power(u1,3)) + Power(q2,4)*Power(u1,2)*(-3*Power(t1,3) + 15*Power(t1,2)*u1 - 41*t1*Power(u1,2) + 5*Power(u1,3)) + 2*Power(q2,5)*u1*(Power(t1,3) - 7*Power(t1,2)*u1 + t1*Power(u1,2) + 5*Power(u1,3)) + 2*Power(q2,2)*Power(u1,4)*(-5*Power(t1,3) + 10*Power(t1,2)*u1 + 17*t1*Power(u1,2) + 6*Power(u1,3))))/(q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(q2 + u1,3)*(t1 + u1)) + (16*Pi*(Power(q2,4)*t1*(-3*t1 + u1) - Power(u1,3)*(t1 + u1)*(3*Power(t1,2) + 9*t1*u1 + 8*Power(u1,2)) - Power(q2,3)*t1*(3*Power(t1,2) + 17*t1*u1 + 12*Power(u1,2)) - Power(q2,2)*u1*(9*Power(t1,3) + 35*Power(t1,2)*u1 + 45*t1*Power(u1,2) + 9*Power(u1,3)) - q2*Power(u1,2)*(9*Power(t1,3) + 33*Power(t1,2)*u1 + 47*t1*Power(u1,2) + 19*Power(u1,3))))/(t1*(m2 + u1)*Power(q2 + u1,3)*(t1 + u1)) + 8*Pi*(10 + (4*q2)/u1 + (2*u1)/t1 + (5*t1 + 6*u1 + (5*Power(u1,2))/t1)/q2 + 4*t1*(1/u1 - 2/(t1 + u1)));
r += c10*v10;
dbl v11 = Power(ln(chi),2);
dbl c11 = (192*Power(m2,2)*Pi)/(t1*u1) + (32*m2*Pi*q2*(Power(t1,2) + Power(u1,2)))/(t1*u1*Power(t1 + u1,2)) - (8*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(t1*u1*(t1 + u1)) + ((-64*Power(m2,2)*Pi*(Power(t1,3) + 2*Power(t1,2)*u1 + Power(u1,3) + 2*t1*u1*(-q2 + u1)))/(s*Power(t1,2)*Power(u1,2)) + (8*Pi*(-2*Power(q2,2)*(t1 + u1) - 2*q2*(Power(t1,2) - 4*t1*u1 + Power(u1,2)) + (t1 + u1)*(Power(t1,2) - 4*t1*u1 + Power(u1,2))))/(t1*u1*(t1 + u1)) - (16*m2*Pi*(-2*Power(q2,2)*t1*u1*(t1 + u1) + (t1 + u1)*(2*Power(t1,4) + 5*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 5*t1*Power(u1,3) + 2*Power(u1,4)) - q2*(2*Power(t1,4) + 7*Power(t1,3)*u1 - 6*Power(t1,2)*Power(u1,2) + 7*t1*Power(u1,3) + 2*Power(u1,4))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c11*v11;
dbl v12 = ln(chi);
dbl c12 = ((64*m2*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) + (32*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)))/beta + beta*((64*m2*Pi*q2)/(t1*u1) + (16*Pi*Power(t1 - u1,2)*(2*Power(q2,2) - 3*q2*(t1 + u1) + Power(t1 + u1,2)))/((4*m2 - s)*t1*u1*(t1 + u1)) - (16*Pi*(4*Power(q2,2)*t1*u1 - 2*q2*Power(t1 + u1,3) + Power(t1 + u1,4)))/(t1*u1*Power(t1 + u1,2)));
r += c12*v12;
dbl v13 = Power(ln(chiq),2);
dbl c13 = (-192*Power(m2,2)*Pi)/(t1*u1) - (32*m2*Pi*q2*(Power(t1,2) + Power(u1,2)))/(t1*u1*Power(t1 + u1,2)) + (8*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(t1*u1*(t1 + u1)) + ((128*Power(m2,2)*Pi*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) - (32*m2*Pi*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)) - (16*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(t1*u1*(t1 + u1)))/beta;
r += c13*v13;
dbl v14 = ln(chiq);
dbl c14 = (-12*betaq*Pi*Power(q2 - t1,2)*(t1 - u1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*u1*(t1 + u1)) + (12*betaq*Pi*Power(q2 - u1,2)*(t1 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*(t1 + u1)) + (16*betaq*m2*Pi*(5*Power(t1,3) + 11*Power(t1,2)*u1 + 5*Power(u1,3) + t1*u1*(-4*q2 + 11*u1)))/(Power(t1,2)*Power(u1,2)) + (8*betaq*Pi*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1))*(5*Power(t1,3) + 11*Power(t1,2)*u1 + 5*Power(u1,3) + t1*u1*(-4*q2 + 11*u1)))/(q2*Power(t1,2)*Power(u1,2)) - (4*betaq*Pi*(Power(q2,4)*Power(t1 - u1,2)*(3*t1 - u1) - Power(q2,3)*t1*(t1 - u1)*(15*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2)) + Power(t1,4)*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) - q2*Power(t1,3)*(19*Power(t1,3) + 27*Power(t1,2)*u1 + 13*t1*Power(u1,2) - 3*Power(u1,3)) + 2*Power(q2,2)*Power(t1,2)*(13*Power(t1,3) + 5*Power(t1,2)*u1 - 5*t1*Power(u1,2) - Power(u1,3))))/(q2*(-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*u1*(t1 + u1)) + (4*betaq*Pi*(Power(q2,4)*(t1 - 3*u1)*Power(t1 - u1,2) - Power(u1,4)*(t1 + u1)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) - Power(q2,3)*(t1 - u1)*u1*(3*Power(t1,2) + 2*t1*u1 + 15*Power(u1,2)) + 2*Power(q2,2)*Power(u1,2)*(Power(t1,3) + 5*Power(t1,2)*u1 - 5*t1*Power(u1,2) - 13*Power(u1,3)) + q2*Power(u1,3)*(-3*Power(t1,3) + 13*Power(t1,2)*u1 + 27*t1*Power(u1,2) + 19*Power(u1,3))))/(q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2)*(t1 + u1)) + (4*betaq*Pi*(16*Power(q2,3)*t1*u1*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) + 4*q2*Power(t1 + u1,2)*(Power(t1,2) + 3*t1*u1 + Power(u1,2))*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) - Power(t1 + u1,3)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2))*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) - Power(q2,2)*(t1 + u1)*(21*Power(t1,4) + 96*Power(t1,3)*u1 + 134*Power(t1,2)*Power(u1,2) + 96*t1*Power(u1,3) + 21*Power(u1,4))))/(q2*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2));
r += c14*v14;
dbl v15 = zeta2;
dbl c15 = (32*Power(m2,2)*Pi*(Power(t1,4) + 2*Power(t1,3)*u1 - 26*Power(t1,2)*Power(u1,2) + 2*t1*Power(u1,3) + Power(u1,4)))/(Power(t1,3)*Power(u1,3)) - (32*m2*Pi*q2*(Power(t1,4) + 6*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 6*t1*Power(u1,3) + Power(u1,4)))/(Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)) + (32*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(t1*u1*(t1 + u1)) + ((128*Power(m2,2)*Pi*(3*Power(t1,3) + 4*Power(t1,2)*u1 - 2*t1*(q2 - 2*u1)*u1 + 3*Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) - (16*Pi*(-2*Power(q2,2)*(t1 + u1) - 2*q2*(5*Power(t1,2) - 4*t1*u1 + 5*Power(u1,2)) + (t1 + u1)*(5*Power(t1,2) - 4*t1*u1 + 5*Power(u1,2))))/(t1*u1*(t1 + u1)) - (32*m2*Pi*(2*Power(q2,2)*t1*u1*(t1 + u1) - (t1 + u1)*(6*Power(t1,4) + 17*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 17*t1*Power(u1,3) + 6*Power(u1,4)) + q2*(6*Power(t1,4) + 23*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 23*t1*Power(u1,3) + 6*Power(u1,4))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c15*v15;
dbl v16 = 1;
dbl c16 = (64*m2*Pi*(t1 + u1)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2)))/(Power(t1,2)*Power(u1,2)) + (16*Pi*(-(Power(t1,3)*(q2 + 2*t1)) - t1*(Power(q2,2) + 5*q2*t1 + 3*Power(t1,2))*u1 - Power(q2 + t1,2)*Power(u1,2)))/((m2 + t1)*(q2 + t1)*u1*(t1 + u1)) + 16*Pi*(2 - (8*q2)/t1 + (-8*q2 + 5*t1)/u1 + (5*u1)/t1 + (20*q2)/(t1 + u1)) - (8*Pi*(q2 - t1)*(t1 - u1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/((-4*m2*q2 + Power(q2 - t1,2))*t1*(q2 + t1)*u1*(t1 + u1)) + (8*Pi*(q2 - u1)*(t1 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(q2 + u1)*(t1 + u1)) - (16*Pi*(Power(q2,2)*t1*(t1 + u1) + Power(u1,2)*(t1 + u1)*(t1 + 2*u1) + q2*u1*(2*Power(t1,2) + 5*t1*u1 + Power(u1,2))))/(t1*(m2 + u1)*(q2 + u1)*(t1 + u1));
r += c16*v16;

return r;
}
cdbl SVOKpScaleRP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;

return (176*Pi*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2)))/(3.*sp*Power(t1,2)*Power(u1,2));
}

cdbl SVOKpScaleFP(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {
cdbl u1 = -sp-t1;

return (-16*Pi*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2))*(11 + 24*ln(betaTil)))/(3.*sp*Power(t1,2)*Power(u1,2));
}

} // namespace Exclusive