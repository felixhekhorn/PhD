#ifndef FullyDiff_ME_A1Counter_H
#define FullyDiff_ME_A1Counter_H

#include "../../config.h"

namespace FullyDiff {
    
namespace ME {
    
cdbl A1Counter_F2_VV(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);
cdbl A1Counter_F2_AA(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);
cdbl A1Counter_FL_VV(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);
cdbl A1Counter_FL_AA(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);
cdbl A1Counter_x2g1_VV(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);
cdbl A1Counter_x2g1_AA(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);

cdbl A1Counter_xF3_VA(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);
cdbl A1Counter_g4_VA(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);
cdbl A1Counter_gL_VA(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);
    
} // namespace ME

} // namespace FullyDiff

#endif // FullyDiff_ME_A1_H