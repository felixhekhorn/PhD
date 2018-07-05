#ifndef FullyDiff_ME_R_H
#define FullyDiff_ME_R_H

#include "../../config.h"

namespace FullyDiff {
    
namespace ME {

#define R(proj) cdbl R_##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);

interateAllProj(R)

} // namespace ME

} // namespace FullyDiff

#endif // FullyDiff_ME_R_H