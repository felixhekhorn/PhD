#ifndef Inclusive_ME_IntA1_H
#define Inclusive_ME_IntA1_H

#include "../../config.h"

namespace Inclusive {

namespace ME {

cdbl IntA1_F2_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntA1_F2_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntA1_FL_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntA1_FL_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntA1_x2g1_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntA1_x2g1_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);

cdbl IntA1_xF3_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntA1_g4_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntA1_gL_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);

} // namespace ME

} // namespace Inclusive

#endif // Inclusive_ME_IntA1_H