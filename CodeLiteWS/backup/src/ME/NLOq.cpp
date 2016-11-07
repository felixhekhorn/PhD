#include "NLOq.h"

#include "IntA.h"

using namespace Color;

#define cq1(proj) dbl cq1##proj(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {\
    dbl n = Kqgg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (IntA##proj##1(m2,q2,sp,s4,t1))/(sp*sp);\
}

cq1(G)
cq1(L)
cq1(P)

#define cqBarF1(proj) dbl cqBarF1##proj(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {\
    dbl n = Kqgg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (IntA##proj##1ScaleF(m2,q2,sp,s4,t1))/(sp*sp);\
}

cqBarF1(G)
cqBarF1(L)
cqBarF1(P)


#define dq1(proj) dbl dq1##proj(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {\
    dbl n = Kqgg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (IntA##proj##2(m2,q2,sp,s4,t1))/(sp*sp);\
}

dq1(G)
dq1(L)
dq1(P)