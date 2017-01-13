#include "NLOg.h"

#include "SVp.h"
#include "Rp.h"

using namespace Color;

namespace Exclusive {

#define SVp(proj) cdbl SVp##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil) {\
    return (CA * SVOKp##proj(m2,q2,sp,t1,betaTil) + 2.*CF * SVQEDp##proj(m2,q2,sp,t1,betaTil));\
}
SVp(G)
SVp(L)
SVp(P)

#define Rp(proj) cdbl Rp##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {\
    return (CA * (ROK1p##proj(m2,q2,sp,t1,u1,tp,up) + ROK2p##proj(m2,q2,sp,t1,u1,tp,up)) + 2.*CF * RQEDp##proj(m2,q2,sp,t1,u1,tp,up));\
}
Rp(G)
Rp(L)
Rp(P)

} // namespace Exclusive