/// auto-generated by build.py on 2018/07/05 10:34:51
#include "RCounterXY.h"
#include "../../Common/ME/BQED.h"
#include "../../Common/Color.hpp"

#define init cdbl s = sp + q2;\
cdbl f = 4.*sp*sp/s * Color::CA;


cdbl FullyDiff::ME::RCounterXY_F2_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
init
return f * Common::ME::BQED_F2_VV(m2,q2,sp,t1);
}

cdbl FullyDiff::ME::RCounterXY_F2_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
init
return f * Common::ME::BQED_F2_AA(m2,q2,sp,t1);
}

cdbl FullyDiff::ME::RCounterXY_FL_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
init
return f * Common::ME::BQED_FL_VV(m2,q2,sp,t1);
}

cdbl FullyDiff::ME::RCounterXY_FL_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
init
return f * Common::ME::BQED_FL_AA(m2,q2,sp,t1);
}

cdbl FullyDiff::ME::RCounterXY_x2g1_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
init
return f * Common::ME::BQED_x2g1_VV(m2,q2,sp,t1);
}

cdbl FullyDiff::ME::RCounterXY_x2g1_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
init
return f * Common::ME::BQED_x2g1_AA(m2,q2,sp,t1);
}

cdbl FullyDiff::ME::RCounterXY_xF3_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
init
return f * Common::ME::BQED_xF3_VA(m2,q2,sp,t1);
}

cdbl FullyDiff::ME::RCounterXY_g4_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
init
return f * Common::ME::BQED_g4_VA(m2,q2,sp,t1);
}

cdbl FullyDiff::ME::RCounterXY_gL_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {
init
return f * Common::ME::BQED_gL_VA(m2,q2,sp,t1);
}
