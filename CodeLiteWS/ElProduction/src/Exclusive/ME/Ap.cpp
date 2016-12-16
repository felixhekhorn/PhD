#include "Ap.h"

namespace Exclusive {

cdbl Ap1G(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl u7 = q2 - sp - u1 - up;
return ((2*m2 + q2)*(m2 + sp + t1) + (2*m2 + q2 + t1)*u1)/Power(u1,2) + (((2*m2 + q2)*Power(sp + t1,2))/Power(u1,2) + ((2*m2 + q2)*Power(t1,2))/Power(u7,2) + (2*(2*m2 + q2)*t1*(sp + t1))/(u1*u7))/tp + tp*((2*m2 + q2 + 2*u1)/(2.*Power(u1,2)) + (m2 + q2/2.)/Power(u7,2) - (q2 + sp + 2*t1)/(u1*u7)) + ((2*m2 + q2)*(m2 + t1))/Power(u7,2) - Power(tp,2)/(u1*u7) - (-8*Power(m2,2) + 2*Power(q2,2) + 2*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2)) + 2*(sp + t1)*u1 + Power(u1,2) - 4*m2*(sp + 2*t1 + u1) - 2*q2*(sp + 2*t1 + u1))/(2.*u1*u7) - u7/(2.*u1);
}


cdbl Ap1L(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl u7 = q2 - sp - u1 - up;
return (2*q2*(sp + t1)*(2*t1*(m2 + sp + t1) - sp*u1))/(Power(sp,2)*Power(u1,2)) + ((4*q2*t1*Power(sp + t1,3))/(Power(sp,2)*Power(u1,2)) + (4*q2*Power(t1,3)*(sp + t1))/(Power(sp,2)*Power(u7,2)) + (8*q2*Power(t1,2)*Power(sp + t1,2))/(Power(sp,2)*u1*u7))/tp + Power(tp,2)*((2*q2*(2*m2 + sp + 4*t1))/(Power(sp,2)*Power(u7,2)) + (2*q2*(-q2 + sp + 2*t1))/(Power(sp,2)*u1*u7)) + tp*((2*q2*(t1*(sp + t1) - sp*u1))/(Power(sp,2)*Power(u1,2)) + (2*q2*(2*m2*(sp + 2*t1) + t1*(3*sp + 7*t1)))/(Power(sp,2)*Power(u7,2)) + (2*q2*(Power(sp,2) + 6*sp*t1 + 6*Power(t1,2) + 2*m2*(sp + 2*t1) - q2*(sp + 2*t1)))/(Power(sp,2)*u1*u7)) + (4*q2*t1*(m2*(sp + t1) + t1*(2*sp + 3*t1)))/(Power(sp,2)*Power(u7,2)) + (2*q2*Power(tp,3))/(Power(sp,2)*Power(u7,2)) + (2*q2*t1*(2*(sp + t1)*(2*m2 - q2 + 2*sp + 4*t1) + sp*u1))/(Power(sp,2)*u1*u7);
}


cdbl Ap1P(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl u7 = q2 - sp - u1 - up;
return (-(q2*(sp + t1)*(sp + 2*t1)) + (-q2 + sp)*t1*u1 - m2*sp*(2*sp + u1))/(sp*Power(u1,2)) + Power(tp,2)*(-(q2/(sp*Power(u7,2))) + q2/(sp*u1*u7)) + tp*(-(4*m2*q2 - 2*sp*u1 + q2*(sp + 2*(t1 + u1)))/(2.*sp*Power(u1,2)) - (q2*(4*m2 + sp + 6*t1))/(2.*sp*Power(u7,2)) + (Power(q2,2) + Power(sp,2))/(sp*u1*u7)) - (q2*t1*(sp + 2*t1) + m2*sp*(2*sp + u1))/(sp*Power(u7,2)) + (-m2 + ((q2 - sp)*(sp + t1))/sp + (q2*sp)/u1 - u1/2.)/u7 - ((2*m2 + u1)*u7)/(2.*Power(u1,2));
}


cdbl Ap2G(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl s5 = sp + tp +up;
return ((3*q2 + 2*sp)*tp)/(2.*Power(q2 + sp,2)) + (q2*tp)/(2.*Power(up,2)) - (s5*tp)/((q2 + sp)*up) - (tp*(2*(m2 + t1) + u1))/((q2 + sp)*up) + ((tp*(m2*(3*q2 + 2*sp) + sp*t1 + q2*(sp + 2*t1 + u1)))/Power(q2 + sp,2) + (q2*(m2 + t1)*tp)/Power(up,2) - (tp*(3*Power(q2,2) - 4*m2*sp + Power(sp,2) + 2*sp*(t1 + u1) - 2*q2*(sp + 3*t1 + 2*u1) + 2*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2))))/(2.*(q2 + sp)*up) - (tp*up)/(2.*(q2 + sp)))/s5 + ((q2*tp*Power(-q2 + t1 + u1,2))/Power(q2 + sp,2) + (q2*Power(t1,2)*tp)/Power(up,2) - (tp*(m2*Power(q2 + sp,2) + 2*q2*t1*(q2 - t1 - u1)))/((q2 + sp)*up) - (m2*tp*up)/(q2 + sp))/Power(s5,2);
}


cdbl Ap2L(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl s5 = sp + tp +up;
return (6*q2*tp)/Power(sp,2) + s5*((-2*q2*(-2*m2 + sp - 2*t1)*tp)/(Power(sp,2)*Power(up,2)) - (6*q2*tp)/(Power(sp,2)*up)) + (2*q2*Power(s5,2)*tp)/(Power(sp,2)*Power(up,2)) - (4*q2*(m2*sp + (sp - t1)*t1)*tp)/(Power(sp,2)*Power(up,2)) + (4*q2*(-3*m2 + sp - 2*t1)*tp)/(Power(sp,2)*up) + ((-2*q2*(-6*m2 + sp - 2*t1)*tp)/Power(sp,2) - (4*q2*Power(t1,2)*tp)/(sp*Power(up,2)) + (4*q2*(2*m2*sp + (sp - t1)*t1)*tp)/(Power(sp,2)*up) - (2*q2*tp*up)/Power(sp,2))/s5 + ((-4*m2*q2*tp)/sp - (4*m2*q2*tp*up)/Power(sp,2))/Power(s5,2);
}


cdbl Ap2P(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl s5 = sp + tp +up;
return -((4*Power(q2,2) + 5*q2*sp + 2*Power(sp,2))*tp)/(2.*sp*Power(q2 + sp,2)) + s5*(-((q2*tp)/(sp*Power(up,2))) + (q2*tp)/(sp*(q2 + sp)*up)) + (q2*(-4*m2 + sp - 4*t1)*tp)/(2.*sp*Power(up,2)) + (2*q2*(m2 + q2 + sp + t1)*tp - sp*tp*u1)/(sp*(q2 + sp)*up) + (-((tp*(Power(q2,3) + m2*(4*Power(q2,2) + 5*q2*sp + 2*Power(sp,2)) + Power(sp,2)*t1 + 2*Power(q2,2)*(sp + t1) + q2*sp*(2*t1 - u1)))/(sp*Power(q2 + sp,2))) + (q2*(m2*sp + (sp - 2*t1)*t1)*tp)/(sp*Power(up,2)) + (tp*(4*m2*(2*Power(q2,2) + 2*q2*sp + Power(sp,2)) + Power(q2,2)*(-3*sp + 4*t1) + 2*q2*(Power(sp,2) + 5*sp*t1 + 2*Power(t1,2) + 2*sp*u1) - sp*(Power(sp,2) + 2*sp*(t1 + u1) + 2*u1*(2*t1 + u1))))/(2.*sp*(q2 + sp)*up) + ((2*q2 + sp)*tp*up)/(2.*sp*(q2 + sp)))/s5 + ((q2*tp*(-2*m2*Power(q2 + sp,2) + sp*Power(-q2 + t1 + u1,2)))/(sp*Power(q2 + sp,2)) + (q2*Power(t1,2)*tp)/Power(up,2) - (tp*(m2*Power(q2 + sp,2) + 2*q2*t1*(q2 - t1 - u1)))/((q2 + sp)*up) + (m2*(2*q2 + sp)*tp*up)/(sp*(q2 + sp)))/Power(s5,2);
}


cdbl Ap3G(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl s5 = sp + tp +up;
cdbl u7 = q2 - sp - u1 - up;
return -((3*q2*sp + Power(sp,2) - 3*sp*t1 - 2*Power(t1,2) - 2*sp*u1 + t1*u1)/(2*q2*u1 + 2*sp*u1)) + Power(tp,2)*((-q2 + u1)/(2.*s5*(q2 + sp)*u1) + (1/(q2 + sp) + (2*m2 - q2 + t1 + u1)/(s5*(q2 + sp)))/u7) + u7*(-t1/(2.*(q2 + sp)*u1) + (-(t1*(-q2 + t1 + u1))/(2.*(q2 + sp)*u1) + (t1*(-q2 + t1 + u1))/(2.*u1*up))/s5 + t1/(2.*u1*up)) + s5*(sp/(2*q2*u1 + 2*sp*u1) + (sp + t1)/(u1*up)) + (2*m2*sp + Power(sp,2) + 7*sp*t1 + 6*Power(t1,2) - q2*(sp + 3*t1) + 4*sp*u1 + 5*t1*u1)/(2.*u1*up) + (-(Power(q2,2)*t1 - 4*Power(t1,2)*(sp + t1) - (3*Power(sp,2) + 10*sp*t1 + 4*Power(t1,2))*u1 - 3*sp*Power(u1,2) + 2*m2*((q2 + sp)*(3*sp + 2*t1) + sp*u1) + q2*(3*Power(sp,2) + 8*sp*t1 + 4*Power(t1,2) + 3*sp*u1 - 2*t1*u1))/(2.*(q2 + sp)*u1) + (Power(q2,2)*(sp + 2*t1) + t1*(sp + t1)*(sp + 4*t1) + (Power(sp,2) + 8*sp*t1 + 8*Power(t1,2))*u1 + 2*(sp + 2*t1)*Power(u1,2) + 2*m2*(q2*(sp + t1) + sp*(t1 + u1)) - q2*(Power(sp,2) + 3*sp*(t1 + u1) + 3*t1*(t1 + 2*u1)))/(2.*u1*up) + ((2*m2 - t1)*(sp + t1)*up)/(2.*(q2 + sp)*u1))/s5 + ((-2*m2*sp + 3*Power(sp,2) + 5*sp*t1 + 2*Power(t1,2) + q2*(sp + 3*t1) + sp*u1)/(2.*(q2 + sp)) + (-2*q2*(sp + t1) + (sp + 2*t1)*(sp + t1 + u1))/(2.*up) + ((2*m2*sp*(2*q2 + sp) - 4*Power(q2,2)*t1 - 4*m2*(q2 + sp)*t1 + 4*t1*Power(sp + t1,2) - 2*q2*sp*(sp + 3*t1) + (-((2*m2 + q2 - 2*sp)*sp) + (3*q2 + 8*sp)*t1 + 5*Power(t1,2))*u1 + (sp + t1)*Power(u1,2))/(2.*(q2 + sp)) + (-5*q2*t1*(sp + t1) + Power(q2,2)*(sp + 3*t1) - q2*(sp + 5*t1)*u1 + t1*(sp + t1 + u1)*(3*sp + 4*t1 + 3*u1) + 2*m2*(q2*(-sp + t1) + sp*(sp + t1 + u1)))/(2.*up) + (t1*(2*m2 + sp + t1)*up)/(2.*(q2 + sp)))/s5)/u7 + tp*(-((3*q2 + sp - 2*t1 + u1)/(2*q2*u1 + 2*sp*u1)) + s5/(u1*up) + (2*(m2 + t1 + u1))/(u1*up) + (-(2*q2*sp + 2*m2*(3*q2 + sp - 2*t1) + 4*q2*t1 + sp*t1 - 2*Power(t1,2) - (q2 + 2*sp + 3*t1)*u1 + Power(u1,2))/(2.*(q2 + sp)*u1) + (Power(q2,2) + sp*u1 + (t1 + u1)*(2*t1 + 3*u1) - q2*(sp + 2*t1 + 4*u1) + 2*m2*(q2 + 2*(t1 + u1)))/(2.*u1*up) - (t1*up)/(2.*(q2 + sp)*u1))/s5 + (2 + (2*t1)/(q2 + sp) + (-2*q2 + sp + t1 + u1)/up + ((-2*Power(q2,2) + 5*sp*t1 + 6*Power(t1,2) + 2*m2*(q2 + 2*(sp + t1)) + 4*sp*u1 + 7*t1*u1 + Power(u1,2) + q2*(-4*sp - 5*t1 + u1))/(2.*(q2 + sp)) + (2*Power(q2,2) + 4*m2*(-q2 + sp + t1 + u1) + (sp + t1 + u1)*(2*t1 + u1) - q2*(sp + 3*(t1 + u1)))/(2.*up) + ((2*m2 + t1)*up)/(2.*(q2 + sp)))/s5)/u7);
}


cdbl Ap3L(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl s5 = sp + tp +up;
cdbl u7 = q2 - sp - u1 - up;
return (((-4*q2*Power(t1,2)*(sp + t1))/Power(sp,2) + (2*q2*t1*((sp + t1)*(-2*sp*t1 + q2*(sp + 2*t1)) - sp*(sp + 2*t1)*u1))/(Power(sp,2)*up))/s5 - (2*q2*t1*(sp + t1))/(sp*up))/u7 + Power(tp,2)*((((-6*q2*t1)/Power(sp,2) - (2*q2*(6*m2*sp - 2*q2*sp + 4*m2*t1 - 5*q2*t1 + 5*sp*t1 + 6*Power(t1,2) + 2*sp*u1 + 4*t1*u1))/(Power(sp,2)*up))/s5 - (2*q2*(3*sp + 4*t1))/(Power(sp,2)*up))/u7 + ((2*q2*t1)/(Power(sp,2)*u1) - (2*q2*(sp*t1 + 2*Power(t1,2) - 3*q2*(sp + t1) + 2*m2*(sp + 2*t1) + 3*sp*u1 + 4*t1*u1))/(Power(sp,2)*u1*up))/s5 - (2*q2*(sp + 2*t1))/(Power(sp,2)*u1*up)) + Power(tp,3)*(((-4*q2)/(Power(sp,2)*up) - (2*q2*(4*m2 - q2 + 2*t1 + u1))/(s5*Power(sp,2)*up))/u7 + (2*q2*(q2 - u1))/(s5*Power(sp,2)*u1*up)) + ((-4*q2*t1*Power(sp + t1,2))/(Power(sp,2)*u1) + (2*q2*(sp + t1)*((sp + t1)*(-2*sp*t1 + q2*(sp + 2*t1)) - sp*(sp + 2*t1)*u1))/(Power(sp,2)*u1*up))/s5 + tp*((((-2*q2*t1*(3*sp + 5*t1))/Power(sp,2) - (2*q2*(2*m2*sp*(sp + 2*t1) + t1*(sp + 2*t1)*(3*sp + 2*t1) - q2*(sp + t1)*(sp + 5*t1) + (Power(sp,2) + 5*sp*t1 + 3*Power(t1,2))*u1))/(Power(sp,2)*up))/s5 - (2*q2*(Power(sp,2) + 4*sp*t1 + 2*Power(t1,2)))/(Power(sp,2)*up))/u7 + ((-2*q2*t1*(sp + t1))/(Power(sp,2)*u1) - (2*q2*(4*t1*Power(sp + t1,2) + 2*m2*sp*(sp + 2*t1) - q2*(sp + t1)*(3*sp + 5*t1) + (sp + 2*t1)*(3*sp + 2*t1)*u1))/(Power(sp,2)*u1*up))/s5 - (4*q2*Power(sp + t1,2))/(Power(sp,2)*u1*up) - (2*q2*t1*(sp + t1)*u7)/(s5*Power(sp,2)*u1*up)) - (2*q2*Power(sp + t1,2))/(sp*u1*up);
}


cdbl Ap3P(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl s5 = sp + tp +up;
cdbl u7 = q2 - sp - u1 - up;
return (s5*sp)/(2*q2*u1 + 2*sp*u1) + (-(q2*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))) + sp*(Power(sp,2) - t1*u1 + sp*(t1 + 2*u1)))/(2.*sp*(q2 + sp)*u1) + Power(tp,2)*((-(q2/(sp*(q2 + sp))) + ((q2*(-2*m2 + q2 - t1 - u1))/(sp*(q2 + sp)) + (q2*(2*m2 - q2 + t1 + u1))/(sp*up))/s5 + (2*q2)/(sp*up))/u7 + (((2*q2 + sp)*(q2 - u1))/(2.*sp*(q2 + sp)*u1) - (q2*(4*m2 + t1))/(sp*u1*up))/s5 - q2/(sp*u1*up)) + u7*(-t1/(2.*(q2 + sp)*u1) + (-(t1*(-q2 + t1 + u1))/(2.*(q2 + sp)*u1) - (t1*(-q2 + t1 + u1))/(2.*u1*up))/s5 - t1/(2.*u1*up)) + (-2*m2*Power(sp,2) - q2*(3*Power(sp,2) + 5*sp*t1 + 4*Power(t1,2)) + sp*(sp*(sp + t1) + (2*sp + t1)*u1))/(2.*sp*u1*up) + ((Power(q2,2)*(2*Power(sp,2) + 3*sp*t1 + 2*Power(t1,2)) + 2*m2*Power(sp,2)*(q2 + sp - u1) + Power(sp,2)*(2*t1*(sp + t1) + (sp + 2*t1)*u1 + 3*Power(u1,2)) - q2*(Power(sp,3) + 4*Power(t1,2)*(t1 + u1) + 2*sp*t1*(2*t1 + 3*u1) + Power(sp,2)*(2*t1 + 5*u1)))/(2.*sp*(q2 + sp)*u1) + (Power(q2,2)*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2)) - 2*m2*sp*(q2*(sp + t1) + sp*(t1 + u1)) + Power(sp,2)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2) + sp*(t1 + u1)) - q2*(Power(sp,3) + 4*Power(t1,2)*(t1 + u1) + Power(sp,2)*(5*t1 + 3*u1) + sp*t1*(7*t1 + 4*u1)))/(2.*sp*u1*up) + ((sp + t1)*(2*m2*sp + (2*q2 + sp)*t1)*up)/(2.*sp*(q2 + sp)*u1))/s5 + (-(2*m2*Power(sp,2) + q2*(3*Power(sp,2) + 3*sp*t1 + 2*Power(t1,2)) + Power(sp,2)*(sp + t1 - u1))/(2.*sp*(q2 + sp)) + (2*q2*(sp + t1) - sp*(sp + t1 + u1))/(2.*up) + ((2*Power(q2,2)*Power(sp + t1,2) - 4*q2*t1*Power(sp + t1,2) - q2*(3*Power(sp,2) + 5*sp*t1 + 4*Power(t1,2))*u1 + sp*(-2*sp*t1*(sp + t1) + Power(t1,2)*u1 + (sp + t1)*Power(u1,2) - 2*m2*sp*(sp + u1)))/(2.*sp*(q2 + sp)) - (Power(q2,2)*(sp - t1)*(sp + 2*t1) + sp*t1*(sp - u1)*(sp + t1 + u1) + 2*m2*sp*(q2*(-sp + t1) + sp*(sp + t1 + u1)) + q2*(Power(sp,2)*(t1 - u1) + 4*Power(t1,2)*(t1 + u1) + sp*t1*(5*t1 + u1)))/(2.*sp*up) - (t1*(-2*m2*sp + (2*q2 + sp)*(sp + t1))*up)/(2.*sp*(q2 + sp)))/s5)/u7 + tp*(-((q2*sp - Power(sp,2) + 2*q2*t1 + sp*u1)/(2*q2*sp*u1 + 2*Power(sp,2)*u1)) + (1 - (2*q2*(sp + t1))/(sp*u1))/up + ((2*m2*sp*(q2 + 3*sp) - 4*m2*q2*t1 + 4*Power(q2,2)*(sp + t1) + 2*q2*(Power(sp,2) + sp*t1 - Power(t1,2)) - 3*q2*(sp + 2*t1)*u1 + sp*(sp*(t1 - 2*u1) - u1*(3*t1 + u1)))/(2.*sp*(q2 + sp)*u1) + (Power(q2,2)*(sp + 2*t1) - 2*m2*q2*(5*sp + 2*t1) - q2*(Power(sp,2) + 8*sp*t1 + 8*Power(t1,2) + 4*(sp + t1)*u1) + sp*u1*(sp + 3*(t1 + u1)))/(2.*sp*u1*up) + ((2*q2*t1 + sp*t1)*up)/(2*q2*sp*u1 + 2*Power(sp,2)*u1))/s5 + (-1 - (2*q2*t1)/(sp*(q2 + sp)) + (2*q2*(sp + t1))/(sp*up) + ((2*Power(q2,2)*(sp + 3*t1) - 2*m2*(3*q2*sp + 2*Power(sp,2) + 2*q2*t1) + sp*(-(sp*t1) + u1*(t1 + u1)) - q2*(6*t1*(t1 + u1) + sp*(5*t1 + 3*u1)))/(2.*sp*(q2 + sp)) + (4*m2*q2*(sp - t1) - q2*(2*q2 + sp)*(sp + t1) + sp*(q2 + sp + t1)*u1 + sp*Power(u1,2))/(2.*sp*up) + ((2*m2*sp - (2*q2 + sp)*t1)*up)/(2.*sp*(q2 + sp)))/s5)/u7);
}


} // namespace Exclusive
