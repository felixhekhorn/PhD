#include "NLOq.h"

#include "../../Common/Color.h"

#include "IntA.h"

using namespace Color;

#define cq1(proj) cdbl Inclusive::cq1##proj(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {\
    cdbl n = Kqgg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (IntA##proj##1(m2,q2,sp,s4,t1))/(sp*sp);\
}

cq1(G)
cq1(L)
cq1(P)

#define cqBarF1(proj) cdbl Inclusive::cqBarF1##proj(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {\
    cdbl n = Kqgg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (IntA##proj##1ScaleF(m2,q2,sp,s4,t1))/(sp*sp);\
}

cqBarF1(G)
cqBarF1(L)
cqBarF1(P)


#define dq1(proj) cdbl Inclusive::dq1##proj(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {\
    cdbl n = Kqgg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (IntA##proj##2(m2,q2,sp,s4,t1))/(sp*sp);\
}

dq1(G)
dq1(L)
dq1(P)