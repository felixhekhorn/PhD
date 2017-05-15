#include "BpQED.h"

namespace Common {

cdbl BpQEDG(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = - sp - t1;
return (-(m2*q2) - (2*Power(m2,2)*Power(sp,2))/Power(u1,2))/Power(t1,2) + ((Power(q2,2) + (2*m2 + q2)*sp)/u1 + u1/2.)/t1 - (m2*q2)/Power(u1,2) + t1/(2.*u1);
}

cdbl BpQEDL(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = - sp - t1;
return (-4*Power(q2,2))/Power(sp,2) - (4*q2)/sp + (4*m2*q2)/(t1*u1);
}

cdbl BpQEDP(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
cdbl u1 = - sp - t1;
return (m2*sp)/Power(t1,2) + (m2*sp)/Power(u1,2) + ((-0.5 - q2/sp)*t1)/u1 + ((-0.5 - q2/sp)*u1)/t1;
}

} // namespace Common
