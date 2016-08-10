#include "config.h"

dbl RPoleG(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
dbl u1 = s4-sp-t1;
return (8*Power(Power(sp + t1,2) + (sp + t1)*u1 + Power(u1,2),2)*(2*q2*(sp + t1)*(m2*Power(sp,2) + q2*t1*(sp + t1)) - 2*q2*sp*t1*(sp + t1)*u1 + 2*t1*(Power(sp,2) + sp*t1 + Power(t1,2))*Power(u1,2) - (2*(2*m2 + q2)*(sp + t1)*(m2*Power(sp,2) + q2*t1*(sp + t1)) - 2*(2*m2 + q2)*sp*t1*(sp + t1)*u1 + t1*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*Power(u1,2))*Log(Power(s4,2)/(m2*(m2 + s4)))))/(s4*Power(t1,2)*Power(sp + t1,3)*Power(u1,4));
}

dbl RPoleL(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
dbl u1 = s4-sp-t1;
return (-32*q2*(m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*u1)*Power(Power(sp + t1,2) + (sp + t1)*u1 + Power(u1,2),2)*Log(Power(s4,2)/(m2*(m2 + s4))))/(s4*Power(sp,2)*t1*(sp + t1)*Power(u1,4));
}

dbl RPoleP(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
dbl u1 = s4-sp-t1;
return (8*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*(2*m2*Power(sp,2) + 2*q2*t1*(sp + t1) - sp*t1*u1)*(2*Power(sp + t1,2) + 3*(sp + t1)*u1 + 2*Power(u1,2))*Log(Power(s4,2)/(m2*(m2 + s4))))/(s4*sp*Power(t1,2)*Power(sp + t1,2)*Power(u1,2));
}

dbl RPoleGScaleF(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
dbl u1 = s4-sp-t1;
return (8*Power(Power(sp + t1,2) + (sp + t1)*u1 + Power(u1,2),2)*(4*Power(m2,2)*Power(sp,3) + 2*m2*q2*Power(sp,3) + 4*Power(m2,2)*Power(sp,2)*t1 + 6*m2*q2*Power(sp,2)*t1 + 2*Power(q2,2)*Power(sp,2)*t1 + 8*m2*q2*sp*Power(t1,2) + 4*Power(q2,2)*sp*Power(t1,2) + 4*m2*q2*Power(t1,3) + 2*Power(q2,2)*Power(t1,3) - 4*m2*Power(sp,2)*t1*u1 - 2*q2*Power(sp,2)*t1*u1 - 4*m2*sp*Power(t1,2)*u1 - 2*q2*sp*Power(t1,2)*u1 + Power(sp,2)*t1*Power(u1,2) + 2*sp*Power(t1,2)*Power(u1,2) + 2*Power(t1,3)*Power(u1,2)))/(s4*Power(t1,2)*Power(sp + t1,3)*Power(u1,4));
}

dbl RPoleLScaleF(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
dbl u1 = s4-sp-t1;
return (32*q2*(m2*Power(sp,2) + q2*t1*(sp + t1) - sp*t1*u1)*Power(Power(sp + t1,2) + (sp + t1)*u1 + Power(u1,2),2))/(s4*Power(sp,2)*t1*(sp + t1)*Power(u1,4));
}

dbl RPolePScaleF(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
dbl u1 = s4-sp-t1;
return (-8*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*(2*m2*Power(sp,2) + 2*q2*t1*(sp + t1) - sp*t1*u1)*(2*Power(sp + t1,2) + 3*(sp + t1)*u1 + 2*Power(u1,2)))/(s4*sp*Power(t1,2)*Power(sp + t1,2)*Power(u1,2));
}