#include "NLOg.h"

#include "SV.h"
#include "IntRFinite.h"
#include "RPole.h"

using namespace Color;

#define cg1SV(proj) dbl cg1SV##proj(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1) {\
    dbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOK##proj(m2,q2,sp,Delta,t1) + 2.*CF * SVQED##proj(m2,q2,sp,Delta,t1))/(sp*sp);\
}

cg1SV(G)
cg1SV(L)
cg1SV(P)

#define cgBarF1SV(proj) dbl cgBarF1SV##proj(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1) {\
    dbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOK##proj##ScaleF(m2,q2,sp,Delta,t1))/(sp*sp);\
}

cgBarF1SV(G)
cgBarF1SV(L)
cgBarF1SV(P)

#define cgBarR1SV(proj) dbl cgBarR1SV##proj(dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1) {\
    dbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOK##proj##ScaleR(m2,q2,sp,Delta,t1))/(sp*sp);\
}

cgBarR1SV(G)
cgBarR1SV(L)
cgBarR1SV(P)

dbl cg1HG(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
    dbl nG = 1./(4) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nG * (CA * (IntROKfiniteG(m2,q2,sp,s4,t1) + RPoleG(m2,q2,sp,s4,t1)) + 2.*CF * IntRQEDfiniteG(m2,q2,sp,s4,t1))/(sp*sp);
}
dbl cg1HL(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
    dbl nL = 1./(2) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nL * (CA * (IntROKfiniteL(m2,q2,sp,s4,t1) + RPoleL(m2,q2,sp,s4,t1)) + 2.*CF * IntRQEDfiniteL(m2,q2,sp,s4,t1))/(sp*sp);
}
dbl cg1HP(dbl m2, dbl q2, dbl sp, dbl s4, dbl t1) {
    dbl nP = 1./(4) * Kggg * NC * CF;
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
    dbl nP = 1./(4) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nP * (CA * (RPolePScaleF(m2,q2,sp,s4,t1)))/(sp*sp);
}