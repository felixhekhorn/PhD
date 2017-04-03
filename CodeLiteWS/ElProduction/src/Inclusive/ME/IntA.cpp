#include "IntA.h"

#define Pi M_PI

cdbl Inclusive::IntAG1(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
cdbl u1 = s4-sp-t1;
cdbl t = t1 + m2;
cdbl u1p = u1 - q2;
return -(t1/Power(sp + t1,2)) - (2*(2*m2 + q2)*(m2 + s4))/(s4*Power(u1,2)) - (q2*(m2 + t1)*(sp + t1))/(Power(t1,2)*Power(u1,2)) + (s4*(2*m2 + q2 + 2*u1))/(2.*(m2 + s4)*Power(u1,2)) - (s4*(2*m2*sp + (-q2 + sp)*(sp + t1) + (sp - t1)*u1))/(2.*(m2 + s4)*Power(sp + t1,2)*u1) + ((2*m2 + q2)*s4)/(2.*(q2*s4*t1 + m2*Power(sp + u1,2))) - (m2*q2 - u1*(sp + u1) + q2*(sp + t1 + u1))/((sp + t1)*Power(u1,2)) - (-2*m2*q2 + Power(q2,2) + Power(sp,2) + sp*u1 + Power(u1,2) - q2*(sp + 2*t1 + u1))/(t1*Power(u1,2)) + (2*q2*(sp + t1)*(2*m2*sp*(sp + u1) + t1*(-(u1*(sp + u1)) + q2*(2*sp + 2*t1 + u1))))/(Power(t1,2)*Power(u1,4)) + (q2*(-2*m2*sp*(3*s4*sp + 2*t1*u1) + 2*t1*(u1*(2*s4*sp + t1*u1) - q2*(3*Power(s4,2) - 4*s4*u1 + Power(u1,2)))))/(Power(t1,2)*Power(u1,4)) + ((2*Power(sp + t1,2) + 2*(sp + t1)*u1 + Power(u1,2))*(-4*m2*(sp + t1)*(m2*Power(sp,2) + q2*t1*(sp + t1)) + 4*m2*sp*t1*(sp + t1)*u1 + Power(sp,2)*t1*Power(u1,2) - (2*(2*m2 + q2)*(sp + t1)*(m2*Power(sp,2) + q2*t1*(sp + t1)) - 2*(2*m2 + q2)*sp*t1*(sp + t1)*u1 + t1*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*Power(u1,2))*Log(Power(sp + t1 + u1,2)/(m2*(m2 + sp + t1 + u1)))))/(2.*Power(t1,2)*Power(sp + t1,2)*Power(u1,4)) - ((-8*Power(m2,2) + 2*Power(q2,2) + 2*Power(sp,2) + 4*sp*t1 + 4*Power(t1,2) + 2*sp*u1 + 2*t1*u1 + Power(u1,2) - 4*m2*(sp + 2*t1 + u1) - 2*q2*(sp + 2*t1 + u1))*Log(((m2 + s4)*Power(t1,2)*Power(u1,2))/(Power(sp + t1,2)*(q2*s4*t1 + m2*Power(sp + u1,2)))))/(2.*t1*Power(u1,2)) - ((2*m2 + q2)*(m2 + t1)*(sp + t1)*(-2 + (t1*u1*(-(q2*s4) + (2*m2 + s4)*(sp + u1)))/((sp + t1)*(q2*s4*t1 + m2*Power(sp + u1,2))) + Log(((m2 + s4)*Power(t1,2)*Power(u1,2))/(Power(sp + t1,2)*(q2*s4*t1 + m2*Power(sp + u1,2))))))/(Power(t1,2)*Power(u1,2)) + (2*(2*m2 + q2)*(-2*(m2*(2*Power(sp,4) - Power(t1,2)*Power(u1,2) + 4*Power(sp,3)*(t1 + u1) + 2*Power(sp,2)*Power(t1 + u1,2)) + s4*t1*(2*q2*s4*(sp + t1) - u1*(2*Power(sp,2) + t1*u1 + 2*sp*(t1 + u1)))) + s4*(sp + t1)*(2*m2*sp*(sp + u1) + t1*(-(u1*(sp + u1)) + q2*(2*sp + 2*t1 + u1)))*Log(((m2 + s4)*Power(t1,2)*Power(u1,2))/(Power(sp + t1,2)*(q2*s4*t1 + m2*Power(sp + u1,2))))))/(s4*Power(t1,2)*Power(u1,4)) + ((2*m2 + q2)*(2*Power(m2,2)*Power(sp + u1,2)*(8*Power(s4,2)*Power(sp,2) - Power(t1,2)*Power(u1,2)) + Power(s4,2)*Power(t1,2)*(Power(u1,2)*Power(sp + u1,2) + Power(q2,2)*(16*s4*(sp + t1) + Power(u1,2)) - 2*q2*u1*(8*s4*sp + u1*(sp + 3*t1 + u1))) + 2*m2*s4*t1*(-(u1*Power(sp + u1,2)*(8*s4*sp + t1*u1)) + q2*(8*Power(s4,2)*Power(sp,2) + 8*s4*(sp + t1)*Power(sp + u1,2) - t1*Power(u1,2)*(2*sp + 3*t1 + 2*u1))) - 2*s4*(Power(m2,2)*sp*Power(sp + u1,2)*(3*s4*sp + 2*t1*u1) + q2*s4*Power(t1,2)*(-(u1*(2*s4*sp + t1*u1)) + q2*(3*Power(s4,2) - 4*s4*u1 + Power(u1,2))) + m2*t1*(-(u1*Power(sp + u1,2)*(2*s4*sp + t1*u1)) + q2*(Power(u1,2)*Power(sp + u1,2) + 3*Power(s4,2)*(2*Power(sp,2) + 2*sp*u1 + Power(u1,2)) - 2*s4*u1*(2*Power(sp,2) - sp*t1 + 4*sp*u1 + 2*Power(u1,2)))))*Log(((m2 + s4)*Power(t1,2)*Power(u1,2))/(Power(sp + t1,2)*(q2*s4*t1 + m2*Power(sp + u1,2))))))/(s4*Power(t1,2)*Power(u1,4)*(q2*s4*t1 + m2*Power(sp + u1,2))) - ((q2 + sp + 2*t1)*Log((2*m2*(sp + u1) + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(2*m2*(sp + u1) + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))))/(u1*Sqrt(-4*q2*t + Power(sp + u1p,2))) - ((s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*Sqrt(-4*q2*t + Power(sp + u1p,2)))/(m2 + s4) + (2*m2*sp*(sp + u1) + t1*(-(u1*(sp + u1)) + q2*(2*(sp + t1) + u1)))*Log((2*m2*(sp + u1) + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(2*m2*(sp + u1) + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))))/(u1*Power(-4*q2*t + Power(sp + u1p,2),1.5));
}

cdbl Inclusive::IntAG1ScaleF(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
cdbl u1 = s4-sp-t1;
return ((2*Power(sp + t1,2) + 2*(sp + t1)*u1 + Power(u1,2))*(2*(2*m2 + q2)*(sp + t1)*(m2*Power(sp,2) + q2*t1*(sp + t1)) - 2*(2*m2 + q2)*sp*t1*(sp + t1)*u1 + t1*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*Power(u1,2)))/(2.*Power(t1,2)*Power(sp + t1,2)*Power(u1,4));
}

cdbl Inclusive::IntAG2(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
cdbl u1 = s4-sp-t1;
cdbl t = t1 + m2;
cdbl u1p = u1 - q2;
cdbl s = sp + q2;
return (s4*(3*q2 + 2*sp))/(2.*(m2 + s4)*Power(q2 + sp,2)) + (q2*s4)/(2*m2*Power(q2,2) + 2*q2*s4*t1) + (q2*s4*Power(-q2 + t1 + u1,2))/(m2*Power(s,2)*Power(q2 + sp,2)) - ((3*Power(q2,2) - 4*m2*sp + Power(sp,2) + 2*sp*t1 + 4*Power(t1,2) + 2*sp*u1 + 4*t1*u1 + 2*Power(u1,2) - 2*q2*(sp + 3*t1 + 2*u1))*(Log(1 - (s4*t1)/(m2*sp)) - Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1))))/(2.*s*(q2 + sp)*t1) - ((m2*Power(q2 + sp,2) + 2*q2*t1*(q2 - t1 - u1))*((s4*t1*(2*m2*sp + (s - s4)*t1))/m2 + (s4*(q2 + sp)*t1*(2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(sp + t1 + 2*u1)))/(sp*(m2*sp - s4*t1)) + (2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(s4 + u1))*Log(1 - (s4*t1)/(m2*sp)) - s*(-((s4*t1*(2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(s4 + u1)))/(sp*(-(m2*sp) + s4*t1))) + (2*m2*sp + (s - s4)*t1)*Log(1 - (s4*t1)/(m2*sp))) + (2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1)))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1))))/(Power(s,3)*(q2 + sp)*Power(t1,3)) - (q2*(m2 + t1)*((s4*(q2 + sp)*t1*(2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(sp + t1 + 2*u1)))/(sp*(m2*sp - s4*t1)) + (s*s4*t1*(2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1))))/(q2*(m2*q2 + s4*t1)) - s*(-((s4*t1*(2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(s4 + u1)))/(sp*(-(m2*sp) + s4*t1))) + (2*m2*sp + (s - s4)*t1)*Log(1 - (s4*t1)/(m2*sp))) + (2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(s4 + u1))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1)) + (2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1)))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1))))/(Power(s,3)*Power(t1,3)) + (q2*(-((s4*(q2 + sp)*t1*(-12*Power(m2,3)*q2*Power(sp,5) + s4*Power(t1,3)*((-q2 + sp)*(sp + t1)*(-3*sp*(Power(q2,2) + Power(sp,2)) + (Power(q2,2) + 8*q2*sp + Power(sp,2))*t1) - 2*sp*(Power(q2,2)*(5*sp + t1) + Power(sp,2)*(5*sp + t1) - 2*q2*sp*(sp + 5*t1))*u1 + 6*(q2 - sp)*Power(sp,2)*Power(u1,2)) + 2*m2*sp*Power(t1,2)*((sp + t1)*(Power(sp,3)*(5*sp - t1) + Power(q2,3)*(-sp + t1) + Power(q2,2)*sp*(9*sp + 7*t1) - q2*Power(sp,2)*(3*sp + 13*t1)) + sp*(Power(q2,2)*(11*sp + 3*t1) + Power(sp,2)*(11*sp + 3*t1) - 2*q2*sp*(7*sp + 15*t1))*u1 + 6*Power(sp,2)*(-2*q2 + sp)*Power(u1,2)) + 2*Power(m2,2)*Power(sp,3)*t1*(-2*Power(q2,2)*(3*sp + t1) + Power(sp,2)*(-3*sp + t1 - 3*u1) + q2*sp*(9*sp + 17*t1 + 15*u1))))/(Power(sp,2)*Power(m2*sp - s4*t1,2))) + (s*s4*t1*(12*Power(m2,3)*Power(q2,2)*Power(sp,4) + 4*Power(m2,2)*q2*Power(sp,2)*t1*(Power(q2,2)*(3*sp + 2*t1) + Power(sp,2)*(3*sp + 2*t1 + 3*u1) - q2*sp*(3*sp + 5*t1 + 6*u1)) + s4*Power(t1,3)*(-(Power(q2,4)*sp) - Power(sp,3)*Power(sp + u1,2) + Power(q2,3)*(Power(sp,2) + 6*sp*t1 + Power(t1,2) + 2*sp*u1) - Power(q2,2)*sp*(8*Power(sp,2) + 12*sp*t1 + 10*Power(t1,2) + 10*sp*u1 + 12*t1*u1 + Power(u1,2)) + q2*Power(sp,2)*(Power(sp,2) + 6*sp*t1 + Power(t1,2) + 10*sp*u1 + 12*t1*u1 + 10*Power(u1,2))) + m2*Power(t1,2)*(Power(q2,4)*(2*Power(sp,2) + 2*sp*t1 + Power(t1,2)) + Power(sp,4)*Power(sp + u1,2) - 2*Power(q2,3)*sp*(5*Power(sp,2) + 10*sp*t1 + 3*Power(t1,2) + 7*sp*u1 + 4*t1*u1) - 2*q2*Power(sp,3)*(6*Power(sp,2) + 12*sp*t1 + 4*Power(t1,2) + 17*sp*u1 + 16*t1*u1 + 11*Power(u1,2)) + Power(q2,2)*Power(sp,2)*(11*Power(sp,2) + 26*sp*t1 + 21*Power(t1,2) + 22*sp*u1 + 32*t1*u1 + 13*Power(u1,2)))))/(q2*sp*(m2*sp - s4*t1)*(m2*q2 + s4*t1)) - Power(s,2)*((s4*t1*(12*Power(m2,3)*Power(sp,5) + s4*Power(t1,3)*((sp + t1)*(Power(sp,2)*(sp - 3*t1) + Power(q2,2)*(-3*sp + t1) + 4*q2*sp*(sp + t1)) - 2*sp*(-(q2*(5*sp + t1)) + sp*(sp + 5*t1))*u1 - 6*Power(sp,2)*Power(u1,2)) + 2*m2*sp*Power(t1,2)*((sp + t1)*(Power(q2,2)*(sp - t1) + 2*Power(sp,2)*(sp + 4*t1) - q2*sp*(9*sp + 5*t1)) + sp*(-11*q2*sp + 13*Power(sp,2) - 3*q2*t1 + 21*sp*t1)*u1 + 12*Power(sp,2)*Power(u1,2)) - 2*Power(m2,2)*Power(sp,3)*t1*(-2*q2*(3*sp + t1) + sp*(9*sp + 13*t1 + 15*u1))))/(Power(sp,2)*Power(m2*sp - s4*t1,2)) + 2*(6*Power(m2,2)*Power(sp,2) + Power(t1,2)*Power(-q2 + t1 + u1,2) + 2*m2*t1*(3*q2*sp + q2*t1 - 2*sp*t1 - 3*sp*u1))*Log(1 - (s4*t1)/(m2*sp))) + s*((s4*t1*(12*Power(m2,3)*Power(sp,4) - s4*sp*Power(t1,3)*Power(-q2 + t1 + u1,2) + 4*Power(m2,2)*Power(sp,2)*t1*(q2*(3*sp + 2*t1) - sp*(3*sp + 4*t1 + 6*u1)) + m2*Power(t1,2)*(Power(q2,2)*(2*Power(sp,2) + 2*sp*t1 + Power(t1,2)) - 2*q2*sp*(5*Power(sp,2) + 9*sp*t1 + 3*Power(t1,2) + 7*sp*u1 + 4*t1*u1) + Power(sp,2)*(Power(sp,2) + 6*Power(t1,2) + 18*t1*u1 + 13*Power(u1,2) + 6*sp*(t1 + 2*u1)))))/(m2*sp*(m2*sp - s4*t1)) + 2*(6*Power(m2,2)*Power(sp,3) + Power(t1,2)*((sp + t1)*(Power(q2,2) + sp*t1 - 2*q2*(sp + t1)) + 2*(-(q2*(2*sp + t1)) + sp*(sp + 2*t1))*u1 + 3*sp*Power(u1,2)) + m2*sp*t1*(q2*(6*sp + 4*t1) - sp*(3*sp + 5*t1 + 9*u1)))*Log(1 - (s4*t1)/(m2*sp))) + 2*(6*Power(m2,2)*q2*Power(sp,3) + Power(t1,2)*((q2 - sp)*(sp + t1)*(Power(q2,2) + Power(sp,2) - q2*(sp + 3*t1)) - 2*(Power(q2,2)*(2*sp + t1) + Power(sp,2)*(2*sp + t1) - 2*q2*sp*(sp + 2*t1))*u1 + 3*(q2 - sp)*sp*Power(u1,2)) + m2*sp*t1*(Power(q2,2)*(6*sp + 4*t1) + Power(sp,2)*(3*sp + t1 + 3*u1) - q2*sp*(3*sp + 7*t1 + 9*u1)))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1)) + 2*(6*Power(m2,2)*Power(q2,2)*Power(sp,2) + 2*m2*q2*t1*(Power(q2,2)*(3*sp + t1) + Power(sp,2)*(3*sp + t1 + 3*u1) - q2*sp*(4*t1 + 3*u1)) + Power(t1,2)*(Power(q2,4) + Power(sp,2)*Power(sp + u1,2) - 2*Power(q2,3)*(2*t1 + u1) + Power(q2,2)*(4*Power(sp,2) + 6*Power(t1,2) + 6*t1*u1 + Power(u1,2) + 4*sp*(t1 + u1)) - 2*q2*sp*(2*sp*(t1 + u1) + u1*(3*t1 + 2*u1))))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1))))/(Power(s,5)*Power(t1,3)) + ((m2*(3*q2 + 2*sp) + sp*t1 + q2*(sp + 2*t1 + u1))*Log((2*m2*(q2 + sp) + s4*(q2 - t1 - u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))/(2*m2*(q2 + sp) - s4*(-q2 + t1 + u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))))/(Sqrt(-4*m2*s + Power(s - s4,2))*Power(q2 + sp,2)) - (Sqrt(-4*m2*s + Power(s - s4,2))*s4*(2*m2*sp + (s - s4)*t1) - m2*s*(4*m2*s - Power(s,2) + 2*s*s4 - Power(s4,2) - 2*m2*sp + q2*sp + q2*t1 + sp*t1 + Power(t1,2) - sp*u1 + t1*u1)*Log((2*m2*(q2 + sp) + s4*(q2 - t1 - u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))/(2*m2*(q2 + sp) - s4*(-q2 + t1 + u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))))/(s*Power(-4*m2*s + Power(s - s4,2),1.5)*(q2 + sp)) - (s4*(2*Pi + (2*Pi*(m2 + s4)*(-((Sqrt(-4*m2*s + Power(s - s4,2))*s4*(-2*m2*sp + (q2 + t1)*(sp + t1) + (-sp + t1)*u1))/(m2 + s4)) + s*(2*m2*sp + (s - s4)*t1)*Log((2*m2*(q2 + sp) + s4*(q2 - t1 - u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))/(2*m2*(q2 + sp) - s4*(-q2 + t1 + u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2)))))))/(Power(-4*m2*s + Power(s - s4,2),1.5)*s4)))/(4.*Pi*(m2 + s4)*(q2 + sp)) - ((2*m2 + 2*t1 + u1)*Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))))/((q2 + sp)*Sqrt(-4*q2*t + Power(sp + u1p,2))) - (s4*(2*Pi - (2*Pi*(m2 + s4)*((s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*Sqrt(-4*q2*t + Power(sp + u1p,2)))/(m2 + s4) + (2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1)))*Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))))/(s4*Power(-4*q2*t + Power(sp + u1p,2),1.5))))/(2.*Pi*(m2 + s4)*(q2 + sp));
}

cdbl Inclusive::IntAL1(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
cdbl u1 = s4-sp-t1;
cdbl t = t1 + m2;
cdbl u1p = u1 - q2;
return (-8*q2*(m2 + s4)*t1*(sp + t1))/(s4*Power(sp,2)*Power(u1,2)) + (2*q2*s4*(Power(t1,2) + sp*(t1 - u1)))/((m2 + s4)*Power(sp,2)*Power(u1,2)) + (2*q2*s4*(2*m2*(sp + 2*t1) + t1*(3*sp + 7*t1)))/(Power(sp,2)*(q2*s4*t1 + m2*Power(sp + u1,2))) - (4*q2*(m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*u1)*(2*Power(sp + t1,2) + 2*(sp + t1)*u1 + Power(u1,2))*(1 + Log(Power(sp + t1 + u1,2)/(m2*(m2 + sp + t1 + u1)))))/(Power(sp,2)*t1*Power(u1,4)) + (2*q2*(4*Power(sp,2) + 12*sp*t1 + 8*Power(t1,2) + 4*m2*(sp + t1) - 2*q2*(sp + t1) + sp*u1)*Log(((m2 + s4)*Power(t1,2)*Power(u1,2))/(Power(sp + t1,2)*(q2*s4*t1 + m2*Power(sp + u1,2)))))/(Power(sp,2)*Power(u1,2)) - (4*q2*(sp + t1)*(m2*(sp + t1) + t1*(2*sp + 3*t1))*(-2 + (t1*u1*(-(q2*s4) + (2*m2 + s4)*(sp + u1)))/((sp + t1)*(q2*s4*t1 + m2*Power(sp + u1,2))) + Log(((m2 + s4)*Power(t1,2)*Power(u1,2))/(Power(sp + t1,2)*(q2*s4*t1 + m2*Power(sp + u1,2))))))/(Power(sp,2)*t1*Power(u1,2)) + (8*q2*(sp + t1)*(-2*(m2*(2*Power(sp,4) - Power(t1,2)*Power(u1,2) + 4*Power(sp,3)*(t1 + u1) + 2*Power(sp,2)*Power(t1 + u1,2)) + s4*t1*(2*q2*s4*(sp + t1) - u1*(2*Power(sp,2) + t1*u1 + 2*sp*(t1 + u1)))) + s4*(sp + t1)*(2*m2*sp*(sp + u1) + t1*(-(u1*(sp + u1)) + q2*(2*sp + 2*t1 + u1)))*Log(((m2 + s4)*Power(t1,2)*Power(u1,2))/(Power(sp + t1,2)*(q2*s4*t1 + m2*Power(sp + u1,2))))))/(s4*Power(sp,2)*t1*Power(u1,4)) + (4*q2*(sp + t1)*(2*Power(m2,2)*Power(sp + u1,2)*(8*Power(s4,2)*Power(sp,2) - Power(t1,2)*Power(u1,2)) + Power(s4,2)*Power(t1,2)*(Power(u1,2)*Power(sp + u1,2) + Power(q2,2)*(16*s4*(sp + t1) + Power(u1,2)) - 2*q2*u1*(8*s4*sp + u1*(sp + 3*t1 + u1))) + 2*m2*s4*t1*(-(u1*Power(sp + u1,2)*(8*s4*sp + t1*u1)) + q2*(8*Power(s4,2)*Power(sp,2) + 8*s4*(sp + t1)*Power(sp + u1,2) - t1*Power(u1,2)*(2*sp + 3*t1 + 2*u1))) - 2*s4*(Power(m2,2)*sp*Power(sp + u1,2)*(3*s4*sp + 2*t1*u1) + q2*s4*Power(t1,2)*(-(u1*(2*s4*sp + t1*u1)) + q2*(3*Power(s4,2) - 4*s4*u1 + Power(u1,2))) + m2*t1*(-(u1*Power(sp + u1,2)*(2*s4*sp + t1*u1)) + q2*(Power(u1,2)*Power(sp + u1,2) + 3*Power(s4,2)*(2*Power(sp,2) + 2*sp*u1 + Power(u1,2)) - 2*s4*u1*(2*Power(sp,2) - sp*t1 + 4*sp*u1 + 2*Power(u1,2)))))*Log(((m2 + s4)*Power(t1,2)*Power(u1,2))/(Power(sp + t1,2)*(q2*s4*t1 + m2*Power(sp + u1,2))))))/(s4*Power(sp,2)*t1*Power(u1,4)*(q2*s4*t1 + m2*Power(sp + u1,2))) + (2*q2*(Power(sp,2) + 6*sp*t1 + 6*Power(t1,2) + 2*m2*(sp + 2*t1) - q2*(sp + 2*t1))*Log((2*m2*(sp + u1) + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(2*m2*(sp + u1) + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))))/(Power(sp,2)*u1*Sqrt(-4*q2*t + Power(sp + u1p,2))) + (2*q2*(2*m2 + sp + 4*t1)*(s4*(2*m2*sp*(sp + u1) + t1*(-(u1*(sp + u1)) + q2*(2*(sp + t1) + u1)))*Sqrt(-4*q2*t + Power(sp + u1p,2)) + (2*m2*sp + (-q2 + sp)*(sp + t1) + (sp - t1)*u1)*(q2*s4*t1 + m2*Power(sp + u1,2))*Log((2*m2*(sp + u1) + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(2*m2*(sp + u1) + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))))/(Power(sp,2)*(q2*s4*t1 + m2*Power(sp + u1,2))*Power(-4*q2*t + Power(sp + u1p,2),1.5)) + (2*q2*(-q2 + sp + 2*t1)*((s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*Sqrt(-4*q2*t + Power(sp + u1p,2)))/(m2 + s4) + (2*m2*sp*(sp + u1) + t1*(-(u1*(sp + u1)) + q2*(2*(sp + t1) + u1)))*Log((2*m2*(sp + u1) + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(2*m2*(sp + u1) + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))))/(Power(sp,2)*u1*Power(-4*q2*t + Power(sp + u1p,2),1.5)) + (2*q2*((s4*(12*Power(m2,3)*Power(sp,2)*Power(sp + u1,2) + s4*t1*(q2*Power(sp + t1,2)*(Power(q2 - sp,2) + 8*q2*t1) - 2*q2*(q2 - sp)*(sp - 5*t1)*(sp + t1)*u1 + (q2*Power(sp,2) + (Power(q2,2) - 12*q2*sp + Power(sp,2))*t1 - 3*q2*Power(t1,2))*Power(u1,2) + 2*(-q2 + sp)*t1*Power(u1,3) + t1*Power(u1,4)) + 4*Power(m2,2)*(3*sp*Power(sp + u1,2)*(Power(sp,2) - t1*u1 + sp*(t1 + u1)) + q2*(-Power(sp,4) + Power(sp,3)*(4*t1 - 2*u1) + Power(t1,2)*Power(u1,2) + sp*t1*u1*(4*t1 + u1) + Power(sp,2)*(5*Power(t1,2) + 5*t1*u1 - Power(u1,2)))) + m2*(Power(sp + u1,2)*(Power(sp,2)*Power(sp + t1,2) + 2*sp*(sp - 5*t1)*(sp + t1)*u1 + (Power(sp,2) - 10*sp*t1 + 2*Power(t1,2))*Power(u1,2)) + 2*q2*(-(Power(sp,2)*(sp - 10*t1)*Power(sp + t1,2)) - sp*(sp + t1)*(3*Power(sp,2) - 23*sp*t1 - 2*Power(t1,2))*u1 + sp*(-3*Power(sp,2) + 16*sp*t1 + 8*Power(t1,2))*Power(u1,2) + (-Power(sp,2) + 4*sp*t1 + 2*Power(t1,2))*Power(u1,3)) + Power(q2,2)*(Power(sp,4) + 2*Power(sp,3)*(-t1 + u1) + 2*Power(t1,2)*Power(2*t1 + u1,2) + Power(sp,2)*(Power(t1,2) + Power(u1,2)) + 2*sp*t1*(6*Power(t1,2) + 3*t1*u1 + Power(u1,2)))))*Sqrt(-4*q2*t + Power(sp + u1p,2)))/(m2 + s4) + 2*(q2*s4*t1 + m2*Power(sp + u1,2))*(6*Power(m2,2)*Power(sp,2)*(sp + u1) - Power(q2,2)*t1*(sp + t1)*(3*sp + 3*t1 + 2*u1) + 3*m2*sp*(sp + u1)*(Power(sp,2) - 2*t1*u1 + sp*(t1 + u1)) - t1*u1*(sp + u1)*(2*Power(sp,2) - t1*u1 + 2*sp*(t1 + u1)) + q2*(t1*(3*sp*Power(sp + t1,2) + (7*sp - t1)*(sp + t1)*u1 + (4*sp + t1)*Power(u1,2)) + m2*(-3*Power(sp,3) + 3*Power(sp,2)*(t1 - u1) + 2*Power(t1,2)*u1 + 2*sp*t1*(3*t1 + u1))))*Log((2*m2*(sp + u1) + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(2*m2*(sp + u1) + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))))/(Power(sp,2)*(q2*s4*t1 + m2*Power(sp + u1,2))*Power(-4*q2*t + Power(sp + u1p,2),2.5));
}

cdbl Inclusive::IntAL2(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
cdbl u1 = s4-sp-t1;
cdbl t = t1 + m2;
cdbl u1p = u1 - q2;
cdbl s = sp + q2;
return (6*q2*s4)/((m2 + s4)*Power(sp,2)) - (4*q2*s4)/(Power(s,2)*sp) - (4*q2*s4*(m2*sp + (sp - t1)*t1))/(Power(sp,2)*(m2*Power(q2,2) + q2*s4*t1)) + (4*q2*(2*m2*sp + (sp - t1)*t1)*(Log(1 - (s4*t1)/(m2*sp)) - Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1))))/(s*Power(sp,2)*t1) + (4*q2*((s4*(q2 + sp)*t1*(2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(sp + t1 + 2*u1)))/(sp*(m2*sp - s4*t1)) + (s*s4*t1*(2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1))))/(q2*(m2*q2 + s4*t1)) - s*(-((s4*t1*(2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(s4 + u1)))/(sp*(-(m2*sp) + s4*t1))) + (2*m2*sp + (s - s4)*t1)*Log(1 - (s4*t1)/(m2*sp))) + (2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(s4 + u1))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1)) + (2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1)))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1))))/(Power(s,3)*sp*t1) - (2*q2*(-6*m2 + sp - 2*t1)*Log((2*m2*(q2 + sp) + s4*(q2 - t1 - u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))/(2*m2*(q2 + sp) - s4*(-q2 + t1 + u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))))/(Sqrt(-4*m2*s + Power(s - s4,2))*Power(sp,2)) - (4*q2*(Sqrt(-4*m2*s + Power(s - s4,2))*s4*(2*m2*sp + (s - s4)*t1) - m2*s*(4*m2*s - Power(s,2) + 2*s*s4 - Power(s4,2) - 2*m2*sp + q2*sp + q2*t1 + sp*t1 + Power(t1,2) - sp*u1 + t1*u1)*Log((2*m2*(q2 + sp) + s4*(q2 - t1 - u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))/(2*m2*(q2 + sp) - s4*(-q2 + t1 + u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2)))))))/(s*Power(-4*m2*s + Power(s - s4,2),1.5)*Power(sp,2)) - (q2*s4*(2*Pi + (2*Pi*(m2 + s4)*(-((Sqrt(-4*m2*s + Power(s - s4,2))*s4*(-2*m2*sp + (q2 + t1)*(sp + t1) + (-sp + t1)*u1))/(m2 + s4)) + s*(2*m2*sp + (s - s4)*t1)*Log((2*m2*(q2 + sp) + s4*(q2 - t1 - u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))/(2*m2*(q2 + sp) - s4*(-q2 + t1 + u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2)))))))/(Power(-4*m2*s + Power(s - s4,2),1.5)*s4)))/(Pi*(m2 + s4)*Power(sp,2)) + (4*q2*(-3*m2 + sp - 2*t1)*Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))))/(Power(sp,2)*Sqrt(-4*q2*t + Power(sp + u1p,2))) - (2*q2*(-2*m2 + sp - 2*t1)*(Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))/Sqrt(-4*q2*t + Power(sp + u1p,2)) - ((s4*(2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1)))*Sqrt(-4*q2*t + Power(sp + u1p,2)))/(q2*(m2*q2 + s4*t1)) + (2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))))/Power(-4*q2*(m2 + t1) + Power(-q2 + sp + u1,2),1.5)))/Power(sp,2) - (3*q2*s4*(2*Pi - (2*Pi*(m2 + s4)*((s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*Sqrt(-4*q2*t + Power(sp + u1p,2)))/(m2 + s4) + (2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1)))*Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))))/(s4*Power(-4*q2*t + Power(sp + u1p,2),1.5))))/(Pi*(m2 + s4)*Power(sp,2)) + (2*q2*s4*(1 - (2*(m2 + s4)*((s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*Sqrt(-4*q2*t + Power(sp + u1p,2)))/(m2 + s4) + (2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1)))*Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))))/(s4*Power(-4*q2*t + Power(sp + u1p,2),1.5)) + ((m2 + s4)*((s4*(12*Power(m2,3)*Power(q2,2)*Power(sp,2) + 4*Power(m2,2)*q2*(Power(q2,2)*(-Power(sp,2) + sp*t1 + Power(t1,2)) + Power(sp,2)*t1*(3*sp + 2*t1 + 3*u1) + q2*sp*(3*Power(sp,2) + 3*sp*(t1 + u1) - t1*(2*t1 + 3*u1))) + s4*t1*(Power(q2,4)*t1 + Power(sp,2)*t1*Power(sp + u1,2) + Power(q2,3)*(Power(sp,2) + 2*sp*t1 - t1*(3*t1 + 2*u1)) + q2*(Power(sp,4) + Power(t1,2)*Power(u1,2) + 2*Power(sp,3)*(t1 + u1) - 2*sp*t1*u1*(5*t1 + 4*u1) + Power(sp,2)*(-3*Power(t1,2) - 6*t1*u1 + Power(u1,2))) + Power(q2,2)*(-2*Power(sp,3) + 2*Power(sp,2)*(t1 - u1) + 6*sp*t1*(t1 + u1) + t1*(8*Power(t1,2) + 10*t1*u1 + Power(u1,2)))) + m2*(Power(q2,4)*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2)) + Power(sp,2)*Power(t1,2)*Power(sp + u1,2) - 2*Power(q2,3)*(Power(sp,3) - 2*Power(t1,2)*u1 + Power(sp,2)*(-2*t1 + u1) - sp*t1*(5*t1 + 4*u1)) + Power(q2,2)*(Power(sp,4) + 2*Power(sp,3)*(-t1 + u1) + 2*Power(t1,2)*Power(2*t1 + u1,2) + Power(sp,2)*(-9*Power(t1,2) - 12*t1*u1 + Power(u1,2)) - 2*sp*t1*(2*Power(t1,2) + 8*t1*u1 + 5*Power(u1,2))) + 2*q2*sp*t1*(6*Power(sp,3) - t1*u1*(6*t1 + 5*u1) + 2*Power(sp,2)*(5*t1 + 6*u1) + sp*(2*Power(t1,2) + 5*t1*u1 + 6*Power(u1,2)))))*Sqrt(-4*q2*t + Power(sp + u1p,2)))/(q2*(m2 + s4)*(m2*q2 + s4*t1)) + 2*(2*Power(m2,2)*q2*Power(sp,2) + m2*(-2*Power(q2,2)*(Power(sp,2) + sp*t1 + Power(t1,2)) + Power(sp,2)*(sp + u1)*(sp + 3*t1 + u1) + q2*sp*(Power(sp,2) + sp*(t1 + u1) - 2*t1*(2*t1 + u1))) + t1*(-(Power(q2,3)*(sp + t1)) + q2*(-(sp*t1*(sp + t1)) + (Power(sp,2) + 3*Power(t1,2))*u1 + (sp + 2*t1)*Power(u1,2)) + Power(q2,2)*(t1*(t1 - u1) + sp*(t1 + u1)) + sp*(sp + u1)*(Power(sp,2) + sp*t1 - u1*(2*t1 + u1))))*Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))))/(s4*Power(-4*q2*(m2 + t1) + Power(-q2 + sp + u1,2),2.5))))/((m2 + s4)*Power(sp,2));
}

cdbl Inclusive::IntAL1ScaleF(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
cdbl u1 = s4-sp-t1;
return (4*q2*(m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*u1)*(2*Power(sp + t1,2) + 2*(sp + t1)*u1 + Power(u1,2)))/(Power(sp,2)*t1*Power(u1,4));
}

cdbl Inclusive::IntAP1(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
cdbl u1 = s4-sp-t1;
cdbl t = t1 + m2;
cdbl u1p = u1 - q2;
return (s4*((-4*m2*sp)/Power(u1,2) - (2*q2*sp)/Power(u1,2) - (6*q2*t1)/Power(u1,2) - (4*q2*Power(t1,2))/(sp*Power(u1,2)) + (2*t1)/u1))/(2.*Power(sp + t1,2)) - (q2*s4*sp)/(t1*(sp + t1)*Power(u1,2)) - (s4*(2*m2 + u1)*(2*m2*sp + (-q2 + sp)*(sp + t1) + (sp - t1)*u1))/(2.*(m2 + s4)*Power(sp + t1,2)*Power(u1,2)) + (s4*(-4*m2*sp - 2*q2*t1 - (4*q2*Power(t1,2))/sp + 2*t1*u1))/(2.*Power(t1,2)*Power(u1,2)) - (q2*s4*(4*m2 + sp + 6*t1))/(2.*sp*(q2*s4*t1 + m2*Power(sp + u1,2))) - (s4*(4*m2*q2 - 2*sp*u1 + q2*(sp + 2*(t1 + u1))))/(2.*(m2 + s4)*sp*Power(u1,2)) + ((Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*(2*(sp + t1) + u1)*(2*m2*Power(sp,2) + 2*q2*t1*(sp + t1) - sp*t1*u1)*Log(Power(sp + t1 + u1,2)/(m2*(m2 + sp + t1 + u1))))/(2.*sp*Power(t1,2)*Power(sp + t1,2)*Power(u1,2)) + ((-m2 + q2 - sp - t1 + (q2*t1)/sp + (q2*sp)/u1 - u1/2.)*Log(((m2 + s4)*Power(t1,2)*Power(u1,2))/(Power(sp + t1,2)*(q2*s4*t1 + m2*Power(sp + u1,2)))))/(t1*u1) + ((sp + t1)*(q2*t1*(sp + 2*t1) + m2*sp*(2*sp + u1))*(-2 + (t1*u1*(-(q2*s4) + (2*m2 + s4)*(sp + u1)))/((sp + t1)*(q2*s4*t1 + m2*Power(sp + u1,2))) + Log(((m2 + s4)*Power(t1,2)*Power(u1,2))/(Power(sp + t1,2)*(q2*s4*t1 + m2*Power(sp + u1,2))))))/(sp*Power(t1,2)*Power(u1,2)) + ((Power(q2,2) + Power(sp,2))*Log((2*m2*(sp + u1) + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(2*m2*(sp + u1) + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))))/(sp*u1*Sqrt(-4*q2*t + Power(sp + u1p,2))) - (q2*(s4*(2*m2*sp*(sp + u1) + t1*(-(u1*(sp + u1)) + q2*(2*(sp + t1) + u1)))*Sqrt(-4*q2*t + Power(sp + u1p,2)) + (2*m2*sp + (-q2 + sp)*(sp + t1) + (sp - t1)*u1)*(q2*s4*t1 + m2*Power(sp + u1,2))*Log((2*m2*(sp + u1) + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(2*m2*(sp + u1) + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))))/(sp*(q2*s4*t1 + m2*Power(sp + u1,2))*Power(-4*q2*t + Power(sp + u1p,2),1.5)) + (q2*((s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*Sqrt(-4*q2*t + Power(sp + u1p,2)))/(m2 + s4) + (2*m2*sp*(sp + u1) + t1*(-(u1*(sp + u1)) + q2*(2*(sp + t1) + u1)))*Log((2*m2*(sp + u1) + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(2*m2*(sp + u1) + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))))/(sp*u1*Power(-4*q2*t + Power(sp + u1p,2),1.5));
}

cdbl Inclusive::IntAP2(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
cdbl u1 = s4-sp-t1;
cdbl t = t1 + m2;
cdbl u1p = u1 - q2;
cdbl s = sp + q2;
return -(s4*(4*Power(q2,2) + 5*q2*sp + 2*Power(sp,2)))/(2.*(m2 + s4)*sp*Power(q2 + sp,2)) + (q2*s4*(-4*m2 + sp - 4*t1))/(2.*sp*(m2*Power(q2,2) + q2*s4*t1)) + (q2*s4*(-2*m2*Power(q2 + sp,2) + sp*Power(-q2 + t1 + u1,2)))/(m2*Power(s,2)*sp*Power(q2 + sp,2)) + ((4*m2*(2*Power(q2,2) + 2*q2*sp + Power(sp,2)) + Power(q2,2)*(-3*sp + 4*t1) + 2*q2*(Power(sp,2) + 5*sp*t1 + 2*Power(t1,2) + 2*sp*u1) - sp*(Power(sp,2) + 2*sp*(t1 + u1) + 2*u1*(2*t1 + u1)))*(Log(1 - (s4*t1)/(m2*sp)) - Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1))))/(2.*s*sp*(q2 + sp)*t1) + ((-(m2*Power(q2 + sp,2)) + 2*q2*t1*(-q2 + t1 + u1))*((s4*t1*(2*m2*sp + (s - s4)*t1))/m2 + (s4*(q2 + sp)*t1*(2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(sp + t1 + 2*u1)))/(sp*(m2*sp - s4*t1)) + (2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(s4 + u1))*Log(1 - (s4*t1)/(m2*sp)) - s*(-((s4*t1*(2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(s4 + u1)))/(sp*(-(m2*sp) + s4*t1))) + (2*m2*sp + (s - s4)*t1)*Log(1 - (s4*t1)/(m2*sp))) + (2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1)))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1))))/(Power(s,3)*(q2 + sp)*Power(t1,3)) - (q2*(m2 + t1 - (2*Power(t1,2))/sp)*((s4*(q2 + sp)*t1*(2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(sp + t1 + 2*u1)))/(sp*(m2*sp - s4*t1)) + (s*s4*t1*(2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1))))/(q2*(m2*q2 + s4*t1)) - s*(-((s4*t1*(2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(s4 + u1)))/(sp*(-(m2*sp) + s4*t1))) + (2*m2*sp + (s - s4)*t1)*Log(1 - (s4*t1)/(m2*sp))) + (2*m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*(s4 + u1))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1)) + (2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1)))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1))))/(Power(s,3)*Power(t1,3)) + (q2*(-((s4*(q2 + sp)*t1*(-12*Power(m2,3)*q2*Power(sp,5) + s4*Power(t1,3)*((-q2 + sp)*(sp + t1)*(-3*sp*(Power(q2,2) + Power(sp,2)) + (Power(q2,2) + 8*q2*sp + Power(sp,2))*t1) - 2*sp*(Power(q2,2)*(5*sp + t1) + Power(sp,2)*(5*sp + t1) - 2*q2*sp*(sp + 5*t1))*u1 + 6*(q2 - sp)*Power(sp,2)*Power(u1,2)) + 2*m2*sp*Power(t1,2)*((sp + t1)*(Power(sp,3)*(5*sp - t1) + Power(q2,3)*(-sp + t1) + Power(q2,2)*sp*(9*sp + 7*t1) - q2*Power(sp,2)*(3*sp + 13*t1)) + sp*(Power(q2,2)*(11*sp + 3*t1) + Power(sp,2)*(11*sp + 3*t1) - 2*q2*sp*(7*sp + 15*t1))*u1 + 6*Power(sp,2)*(-2*q2 + sp)*Power(u1,2)) + 2*Power(m2,2)*Power(sp,3)*t1*(-2*Power(q2,2)*(3*sp + t1) + Power(sp,2)*(-3*sp + t1 - 3*u1) + q2*sp*(9*sp + 17*t1 + 15*u1))))/(Power(sp,2)*Power(m2*sp - s4*t1,2))) + (s*s4*t1*(12*Power(m2,3)*Power(q2,2)*Power(sp,4) + 4*Power(m2,2)*q2*Power(sp,2)*t1*(Power(q2,2)*(3*sp + 2*t1) + Power(sp,2)*(3*sp + 2*t1 + 3*u1) - q2*sp*(3*sp + 5*t1 + 6*u1)) + s4*Power(t1,3)*(-(Power(q2,4)*sp) - Power(sp,3)*Power(sp + u1,2) + Power(q2,3)*(Power(sp,2) + 6*sp*t1 + Power(t1,2) + 2*sp*u1) - Power(q2,2)*sp*(8*Power(sp,2) + 12*sp*t1 + 10*Power(t1,2) + 10*sp*u1 + 12*t1*u1 + Power(u1,2)) + q2*Power(sp,2)*(Power(sp,2) + 6*sp*t1 + Power(t1,2) + 10*sp*u1 + 12*t1*u1 + 10*Power(u1,2))) + m2*Power(t1,2)*(Power(q2,4)*(2*Power(sp,2) + 2*sp*t1 + Power(t1,2)) + Power(sp,4)*Power(sp + u1,2) - 2*Power(q2,3)*sp*(5*Power(sp,2) + 10*sp*t1 + 3*Power(t1,2) + 7*sp*u1 + 4*t1*u1) - 2*q2*Power(sp,3)*(6*Power(sp,2) + 12*sp*t1 + 4*Power(t1,2) + 17*sp*u1 + 16*t1*u1 + 11*Power(u1,2)) + Power(q2,2)*Power(sp,2)*(11*Power(sp,2) + 26*sp*t1 + 21*Power(t1,2) + 22*sp*u1 + 32*t1*u1 + 13*Power(u1,2)))))/(q2*sp*(m2*sp - s4*t1)*(m2*q2 + s4*t1)) - Power(s,2)*((s4*t1*(12*Power(m2,3)*Power(sp,5) + s4*Power(t1,3)*((sp + t1)*(Power(sp,2)*(sp - 3*t1) + Power(q2,2)*(-3*sp + t1) + 4*q2*sp*(sp + t1)) - 2*sp*(-(q2*(5*sp + t1)) + sp*(sp + 5*t1))*u1 - 6*Power(sp,2)*Power(u1,2)) + 2*m2*sp*Power(t1,2)*((sp + t1)*(Power(q2,2)*(sp - t1) + 2*Power(sp,2)*(sp + 4*t1) - q2*sp*(9*sp + 5*t1)) + sp*(-11*q2*sp + 13*Power(sp,2) - 3*q2*t1 + 21*sp*t1)*u1 + 12*Power(sp,2)*Power(u1,2)) - 2*Power(m2,2)*Power(sp,3)*t1*(-2*q2*(3*sp + t1) + sp*(9*sp + 13*t1 + 15*u1))))/(Power(sp,2)*Power(m2*sp - s4*t1,2)) + 2*(6*Power(m2,2)*Power(sp,2) + Power(t1,2)*Power(-q2 + t1 + u1,2) + 2*m2*t1*(3*q2*sp + q2*t1 - 2*sp*t1 - 3*sp*u1))*Log(1 - (s4*t1)/(m2*sp))) + s*((s4*t1*(12*Power(m2,3)*Power(sp,4) - s4*sp*Power(t1,3)*Power(-q2 + t1 + u1,2) + 4*Power(m2,2)*Power(sp,2)*t1*(q2*(3*sp + 2*t1) - sp*(3*sp + 4*t1 + 6*u1)) + m2*Power(t1,2)*(Power(q2,2)*(2*Power(sp,2) + 2*sp*t1 + Power(t1,2)) - 2*q2*sp*(5*Power(sp,2) + 9*sp*t1 + 3*Power(t1,2) + 7*sp*u1 + 4*t1*u1) + Power(sp,2)*(Power(sp,2) + 6*Power(t1,2) + 18*t1*u1 + 13*Power(u1,2) + 6*sp*(t1 + 2*u1)))))/(m2*sp*(m2*sp - s4*t1)) + 2*(6*Power(m2,2)*Power(sp,3) + Power(t1,2)*((sp + t1)*(Power(q2,2) + sp*t1 - 2*q2*(sp + t1)) + 2*(-(q2*(2*sp + t1)) + sp*(sp + 2*t1))*u1 + 3*sp*Power(u1,2)) + m2*sp*t1*(q2*(6*sp + 4*t1) - sp*(3*sp + 5*t1 + 9*u1)))*Log(1 - (s4*t1)/(m2*sp))) + 2*(6*Power(m2,2)*q2*Power(sp,3) + Power(t1,2)*((q2 - sp)*(sp + t1)*(Power(q2,2) + Power(sp,2) - q2*(sp + 3*t1)) - 2*(Power(q2,2)*(2*sp + t1) + Power(sp,2)*(2*sp + t1) - 2*q2*sp*(sp + 2*t1))*u1 + 3*(q2 - sp)*sp*Power(u1,2)) + m2*sp*t1*(Power(q2,2)*(6*sp + 4*t1) + Power(sp,2)*(3*sp + t1 + 3*u1) - q2*sp*(3*sp + 7*t1 + 9*u1)))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1)) + 2*(6*Power(m2,2)*Power(q2,2)*Power(sp,2) + 2*m2*q2*t1*(Power(q2,2)*(3*sp + t1) + Power(sp,2)*(3*sp + t1 + 3*u1) - q2*sp*(4*t1 + 3*u1)) + Power(t1,2)*(Power(q2,4) + Power(sp,2)*Power(sp + u1,2) - 2*Power(q2,3)*(2*t1 + u1) + Power(q2,2)*(4*Power(sp,2) + 6*Power(t1,2) + 6*t1*u1 + Power(u1,2) + 4*sp*(t1 + u1)) - 2*q2*sp*(2*sp*(t1 + u1) + u1*(3*t1 + 2*u1))))*Log((m2*q2*sp - q2*s4*t1)/(m2*q2*sp + s4*sp*t1))))/(Power(s,5)*Power(t1,3)) - ((Power(q2,3) + m2*(4*Power(q2,2) + 5*q2*sp + 2*Power(sp,2)) + Power(sp,2)*t1 + 2*Power(q2,2)*(sp + t1) + q2*sp*(2*t1 - u1))*Log((2*m2*(q2 + sp) + s4*(q2 - t1 - u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))/(2*m2*(q2 + sp) - s4*(-q2 + t1 + u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))))/(Sqrt(-4*m2*s + Power(s - s4,2))*sp*Power(q2 + sp,2)) + ((2*q2 + sp)*(Sqrt(-4*m2*s + Power(s - s4,2))*s4*(2*m2*sp + (s - s4)*t1) - m2*s*(4*m2*s - Power(s,2) + 2*s*s4 - Power(s4,2) - 2*m2*sp + q2*sp + q2*t1 + sp*t1 + Power(t1,2) - sp*u1 + t1*u1)*Log((2*m2*(q2 + sp) + s4*(q2 - t1 - u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))/(2*m2*(q2 + sp) - s4*(-q2 + t1 + u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2)))))))/(s*Power(-4*m2*s + Power(s - s4,2),1.5)*sp*(q2 + sp)) + (s4*(2*q2 + sp)*(2*Pi + (2*Pi*(m2 + s4)*(-((Sqrt(-4*m2*s + Power(s - s4,2))*s4*(-2*m2*sp + (q2 + t1)*(sp + t1) + (-sp + t1)*u1))/(m2 + s4)) + s*(2*m2*sp + (s - s4)*t1)*Log((2*m2*(q2 + sp) + s4*(q2 - t1 - u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2))))/(2*m2*(q2 + sp) - s4*(-q2 + t1 + u1 + Sqrt(-4*m2*(q2 + sp) + Power(-q2 + t1 + u1,2)))))))/(Power(-4*m2*s + Power(s - s4,2),1.5)*s4)))/(2.*Pi*(m2 + s4)*(2*q2*sp + 2*Power(sp,2))) + ((2*m2*q2 + 2*Power(q2,2) + 2*q2*(sp + t1) - sp*u1)*Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))))/(sp*(q2 + sp)*Sqrt(-4*q2*t + Power(sp + u1p,2))) - (q2*(Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))/Sqrt(-4*q2*t + Power(sp + u1p,2)) - ((s4*(2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1)))*Sqrt(-4*q2*t + Power(sp + u1p,2)))/(q2*(m2*q2 + s4*t1)) + (2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))))/Power(-4*q2*(m2 + t1) + Power(-q2 + sp + u1,2),1.5)))/sp + (q2*s4*(2*Pi - (2*Pi*(m2 + s4)*((s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*Sqrt(-4*q2*t + Power(sp + u1p,2)))/(m2 + s4) + (2*m2*q2*sp + t1*(Power(q2,2) + sp*(sp + u1) - q2*(2*t1 + u1)))*Log((-2*m2*q2 + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(-2*m2*q2 + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))))))/(s4*Power(-4*q2*t + Power(sp + u1p,2),1.5))))/(2.*Pi*(m2 + s4)*sp*(q2 + sp));
}

cdbl Inclusive::IntAP1ScaleF(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
cdbl u1 = s4-sp-t1;
return -((Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*(2*(sp + t1) + u1)*(2*m2*Power(sp,2) + 2*q2*t1*(sp + t1) - sp*t1*u1))/(2.*sp*Power(t1,2)*Power(sp + t1,2)*Power(u1,2));
}
