#include "NLOg.h"

#include "SV.h"
#include "IntRFinite.h"
#include "RPole.h"

using namespace Color;

#define cg1SV(proj) dbl cg1SV##proj(dbl m2, dbl q2, dbl sp, dbl t1) {\
    dbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOK##proj(m2,q2,sp,t1) + 2.*CF * SVQED##proj(m2,q2,sp,t1))/(sp*sp);\
}
cg1SV(G)
cg1SV(L)
cg1SV(P)

#define cg1SVDelta1(proj) dbl cg1SVDelta1##proj(dbl m2, dbl q2, dbl sp, dbl t1) {\
    dbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOKDelta1##proj(m2,q2,sp,t1) + 2.*CF * SVQEDDelta1##proj(m2,q2,sp,t1))/(sp*sp);\
}
cg1SVDelta1(G)
cg1SVDelta1(L)
cg1SVDelta1(P)

#define cg1SVDelta2(proj) dbl cg1SVDelta2##proj(dbl m2, dbl q2, dbl sp, dbl t1) {\
    dbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOKDelta2##proj(m2,q2,sp,t1))/(sp*sp);\
}
cg1SVDelta2(G)
cg1SVDelta2(L)
cg1SVDelta2(P)

#define cgBarR1SV(proj) dbl cgBarR1SV##proj(dbl m2, dbl q2, dbl sp, dbl t1) {\
    dbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOKScaleR##proj(m2,q2,sp,t1))/(sp*sp);\
}
cgBarR1SV(G)
cgBarR1SV(L)
cgBarR1SV(P)

#define cgBarF1SV(proj) dbl cgBarF1SV##proj(dbl m2, dbl q2, dbl sp, dbl t1) {\
    dbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOKScaleF##proj(m2,q2,sp,t1))/(sp*sp);\
}
cgBarF1SV(G)
cgBarF1SV(L)
cgBarF1SV(P)

#define cgBarF1SVDelta1(proj) dbl cgBarF1SVDelta1##proj(dbl m2, dbl q2, dbl sp, dbl t1) {\
    dbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOKScaleFDelta1##proj(m2,q2,sp,t1))/(sp*sp);\
}
cgBarF1SVDelta1(G)
cgBarF1SVDelta1(L)
cgBarF1SVDelta1(P)

// Hard functions
dbl cg1HG(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
    dbl nG = 1./(4) * Kggg * NC * CF;
    dbl a = IntROKfiniteG(m2,q2,sp,s4,t1);
    dbl b = RPoleG(m2,q2,sp,s4,t1);
    dbl c = IntRQEDfiniteG(m2,q2,sp,s4,t1);
    return (m2/(4.*M_PI)) * nG * (CA * (a + b) + 2.*CF * c)/(sp*sp);
}
dbl cg1HL(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
    dbl nL = 1./(2) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nL * (CA * (IntROKfiniteL(m2,q2,sp,s4,t1) + RPoleL(m2,q2,sp,s4,t1)) + 2.*CF * IntRQEDfiniteL(m2,q2,sp,s4,t1))/(sp*sp);
}
dbl cg1HP(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
    dbl nP = 1./(2) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nP * (CA * (IntROKfiniteP(m2,q2,sp,s4,t1) + RPoleP(m2,q2,sp,s4,t1)) + 2.*CF * IntRQEDfiniteP(m2,q2,sp,s4,t1))/(sp*sp);
}

dbl cgBarF1HG(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
    dbl nG = 1./(4) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nG * (CA * (RPoleGScaleF(m2,q2,sp,s4,t1)))/(sp*sp);
}
dbl cgBarF1HL(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
    dbl nL = 1./(2) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nL * (CA * (RPoleLScaleF(m2,q2,sp,s4,t1)))/(sp*sp);
}
dbl cgBarF1HP(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
    dbl nP = 1./(2) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nP * (CA * (RPolePScaleF(m2,q2,sp,s4,t1)))/(sp*sp);
}