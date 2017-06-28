#include "NLOg.h"

#include "../../Common/Color.h"

#include "SVp.h"
#include "Rp.h"
#include "../IntKers/KinematicVars.hpp"

using namespace Color;

namespace Exclusive {

#define SVp(proj) cdbl SVp##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTilde) {\
    return (CA * SVOKp##proj(m2,q2,sp,t1,betaTilde) + _fQED*2.*CF * SVQEDp##proj(m2,q2,sp,t1,betaTilde));\
}
SVp(G)
SVp(L)
SVp(P)


#define Rp(proj) cdbl Rp##proj(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl y, cdbl Theta1, cdbl Theta2) {\
    if (1. - x < 1e-7) return RpxC##proj(m2,q2,sp,y,Theta1,Theta2);\
    if (1. + y < 1e-7) return CA*ROKpyC##proj(m2,q2,sp,x,Theta1,Theta2);\
    const KinematicVars vs(m2,q2,sp,x,y,Theta1,Theta2);\
    return (CA * (ROK1p##proj(m2,q2,sp,vs.t1,vs.u1,vs.tp,vs.up) + ROK2p##proj(m2,q2,sp,vs.t1,vs.u1,vs.tp,vs.up)) + _fQED*2.*CF * RQEDp##proj(m2,q2,sp,vs.t1,vs.u1,vs.tp,vs.up));\
}
Rp(G)
Rp(L)
Rp(P)

#define RpxC(proj) cdbl RpxC##proj(cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2) {\
    if (1. + y < 1e-7) {\
        cdbl t1sc = -sp/2.*(1. - sqrt(1.-4.*m2/(sp+q2))*cos(Theta1));\
        return CA*ROKpyxC##proj(m2,q2,sp,t1sc);\
    }\
    return (CA * ROKpxC##proj(m2,q2,sp,y,Theta1,Theta2) + _fQED*2.*CF* RQEDpxC##proj(m2,q2,sp,y,Theta1,Theta2));\
}
RpxC(G)
RpxC(L)
RpxC(P)

} // namespace Exclusive