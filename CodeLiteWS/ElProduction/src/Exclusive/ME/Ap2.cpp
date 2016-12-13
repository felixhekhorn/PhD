#include "Ap2.h"

namespace Exclusive {

cdbl Ap2G(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl s5 = sp + tp +up;
return (tp*(2*Power(q2,3) + 6*m2*q2*s5 + 3*q2*Power(s5,2) + 4*m2*s5*sp + 2*q2*s5*sp + 2*Power(s5,2)*sp - 4*Power(q2,2)*t1 + 4*q2*s5*t1 + 2*s5*sp*t1 + 2*q2*Power(t1,2) - 4*Power(q2,2)*u1 + 2*q2*s5*u1 + 4*q2*t1*u1 + 2*q2*Power(u1,2)))/(2.*Power(s5,2)*Power(q2 + sp,2)) + (q2*(2*m2*s5 + Power(s5,2) + 2*s5*t1 + 2*Power(t1,2))*tp)/(2.*Power(s5,2)*Power(up,2)) - (tp*(2*m2*Power(q2,2) + 3*Power(q2,2)*s5 + 4*m2*Power(s5,2) + 2*Power(s5,3) + 4*m2*q2*sp - 4*m2*s5*sp - 2*q2*s5*sp + 2*m2*Power(sp,2) + s5*Power(sp,2) + 4*Power(q2,2)*t1 - 6*q2*s5*t1 + 4*Power(s5,2)*t1 + 2*s5*sp*t1 - 4*q2*Power(t1,2) + 4*s5*Power(t1,2) - 4*q2*s5*u1 + 2*Power(s5,2)*u1 + 2*s5*sp*u1 - 4*q2*t1*u1 + 4*s5*t1*u1 + 2*s5*Power(u1,2)))/(2.*Power(s5,2)*(q2 + sp)*up) - ((2*m2 + s5)*tp*up)/(2.*Power(s5,2)*(q2 + sp));
}

cdbl Ap2L(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl s5 = sp + tp +up;
return (-2*q2*(-6*m2*s5 - 3*Power(s5,2) + 2*m2*sp + s5*sp - 2*s5*t1)*tp)/(Power(s5,2)*Power(sp,2)) + (2*(s5 - sp)*(2*m2*q2*s5*tp + q2*Power(s5,2)*tp + 2*q2*s5*t1*tp + 2*q2*Power(t1,2)*tp))/(s5*Power(sp,2)*Power(up,2)) - (2*(6*m2*q2*s5*tp + 3*q2*Power(s5,2)*tp - 4*m2*q2*sp*tp - 2*q2*s5*sp*tp + 4*q2*s5*t1*tp - 2*q2*sp*t1*tp + 2*q2*Power(t1,2)*tp))/(s5*Power(sp,2)*up) - (2*q2*(2*m2 + s5)*tp*up)/(Power(s5,2)*Power(sp,2));
}

cdbl Ap2P(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {
cdbl s5 = sp + tp +up;
return -((m2*(2*s5 - sp)*tp)/(Power(s5,2)*sp)) - (m2*q2*(2*q2 + sp)*tp)/(s5*sp*Power(q2 + sp,2)) - (m2*(2*q2 + sp)*tp)/(Power(s5,2)*(q2 + sp)) - (m2*q2*(2*q2 + sp)*tp)/(Power(s5,2)*sp*(q2 + sp)) - (tp*(2*Power(q2,3)*s5 + 4*Power(q2,2)*Power(s5,2) - 2*Power(q2,3)*sp + 4*Power(q2,2)*s5*sp + 5*q2*Power(s5,2)*sp + 2*Power(s5,2)*Power(sp,2) + 4*Power(q2,2)*s5*t1 + 4*Power(q2,2)*sp*t1 + 4*q2*s5*sp*t1 + 2*s5*Power(sp,2)*t1 - 2*q2*sp*Power(t1,2) + 4*Power(q2,2)*sp*u1 - 2*q2*s5*sp*u1 - 4*q2*sp*t1*u1 - 2*q2*sp*Power(u1,2)))/(2.*Power(s5,2)*sp*Power(q2 + sp,2)) - ((2*s5 - sp)*(2*m2*q2*s5 + q2*Power(s5,2) + 2*q2*s5*t1 + 2*q2*Power(t1,2))*tp)/(2.*Power(s5,2)*sp*Power(up,2)) + (tp*(8*m2*Power(q2,2)*s5 + 4*m2*q2*Power(s5,2) + 4*Power(q2,2)*Power(s5,2) + 2*q2*Power(s5,3) - 2*m2*Power(q2,2)*sp + 8*m2*q2*s5*sp - 3*Power(q2,2)*s5*sp + 4*q2*Power(s5,2)*sp - 4*m2*q2*Power(sp,2) + 4*m2*s5*Power(sp,2) + 2*q2*s5*Power(sp,2) - 2*m2*Power(sp,3) - s5*Power(sp,3) + 4*Power(q2,2)*s5*t1 + 4*q2*Power(s5,2)*t1 - 4*Power(q2,2)*sp*t1 + 10*q2*s5*sp*t1 - 2*s5*Power(sp,2)*t1 + 4*q2*s5*Power(t1,2) + 4*q2*sp*Power(t1,2) + 4*q2*s5*sp*u1 - 2*Power(s5,2)*sp*u1 - 2*s5*Power(sp,2)*u1 + 4*q2*sp*t1*u1 - 4*s5*sp*t1*u1 - 2*s5*sp*Power(u1,2)))/(2.*Power(s5,2)*sp*(q2 + sp)*up) + ((2*m2 + s5)*(2*q2 + sp)*tp*up)/(2.*Power(s5,2)*sp*(q2 + sp));
}

} // namespace Exclusive