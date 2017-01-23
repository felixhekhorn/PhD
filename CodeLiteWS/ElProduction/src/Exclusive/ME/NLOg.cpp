#include "NLOg.h"

#include "SVp.h"
#include "Rp.h"

using namespace Color;

namespace Exclusive {

#define SVp(proj) cdbl SVp##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTilde) {\
    return (CA * SVOKp##proj(m2,q2,sp,t1,betaTilde) + 2.*CF * SVQEDp##proj(m2,q2,sp,t1,betaTilde));\
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

#define RpxC(proj) cdbl RpxC##proj(cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2) {\
    return (CA * ROKpxC##proj(m2,q2,sp,y,Theta1,Theta2) + 2.*CF * RQEDpxC##proj(m2,q2,sp,y,Theta1,Theta2));\
}
RpxC(G)
RpxC(L)
RpxC(P)

} // namespace Exclusive