#ifndef Inclusive_ME_IntR_H
#define Inclusive_ME_IntR_H

#include "../../config.h"

namespace Inclusive {

namespace ME {

cdbl IntR_F2_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntR_F2_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntR_FL_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntR_FL_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntR_x2g1_VV(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntR_x2g1_AA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);

cdbl IntR_xF3_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntR_g4_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);
cdbl IntR_gL_VA(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);

} // namespace ME

} // namespace Inclusive

#endif // Inclusive_ME_IntR_H