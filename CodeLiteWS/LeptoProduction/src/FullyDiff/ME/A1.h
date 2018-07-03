#ifndef FullyDiff_ME_A1_H
#define FullyDiff_ME_A1_H

#include "../../config.h"

namespace FullyDiff {
    
namespace ME {
    
cdbl A1_F2_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
cdbl A1_F2_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
cdbl A1_FL_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
cdbl A1_FL_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
cdbl A1_x2g1_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
cdbl A1_x2g1_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

cdbl A1_xF3_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
cdbl A1_g4_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
cdbl A1_gL_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
} // namespace ME

} // namespace FullyDiff

#endif // FullyDiff_ME_A1_H