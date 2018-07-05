#ifndef Inclusive_ME_IntA1_H
#define Inclusive_ME_IntA1_H

#include "../../config.h"

namespace Inclusive {

namespace ME {
    
#define IntA1(proj) cdbl IntA1_##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4);

interateAllProj(IntA1)

} // namespace ME

} // namespace Inclusive

#endif // Inclusive_ME_IntA1_H