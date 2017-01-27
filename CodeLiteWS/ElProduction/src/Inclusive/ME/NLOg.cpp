#include "NLOg.h"

#include "../../Color.h"

#include "SV.h"
#include "IntRFinite.h"
#include "RPole.h"

using namespace Color;

#define cg1SV(proj) cdbl cg1SV##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {\
    cdbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOK##proj(m2,q2,sp,t1) + _fQED*2.*CF * SVQED##proj(m2,q2,sp,t1))/(sp*sp);\
}
cg1SV(G)
cg1SV(L)
cg1SV(P)

#define cg1SVDelta1(proj) cdbl cg1SVDelta1##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {\
    cdbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOKDelta1##proj(m2,q2,sp,t1) + _fQED*2.*CF * SVQEDDelta1##proj(m2,q2,sp,t1))/(sp*sp);\
}
cg1SVDelta1(G)
cg1SVDelta1(L)
cg1SVDelta1(P)

#define cg1SVDelta2(proj) cdbl cg1SVDelta2##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {\
    cdbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOKDelta2##proj(m2,q2,sp,t1))/(sp*sp);\
}
cg1SVDelta2(G)
cg1SVDelta2(L)
cg1SVDelta2(P)

#define cgBarR1SV(proj) cdbl cgBarR1SV##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {\
    cdbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOKScaleR##proj(m2,q2,sp,t1))/(sp*sp);\
}
cgBarR1SV(G)
cgBarR1SV(L)
cgBarR1SV(P)

#define cgBarF1SV(proj) cdbl cgBarF1SV##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {\
    cdbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOKScaleF##proj(m2,q2,sp,t1))/(sp*sp);\
}
cgBarF1SV(G)
cgBarF1SV(L)
cgBarF1SV(P)

#define cgBarF1SVDelta1(proj) cdbl cgBarF1SVDelta1##proj(cdbl m2, cdbl q2, cdbl sp, cdbl t1) {\
    cdbl n = Kggg * NC * CF;\
    return (m2/(4.*M_PI)) * n * (CA * SVOKScaleFDelta1##proj(m2,q2,sp,t1))/(sp*sp);\
}
cgBarF1SVDelta1(G)
cgBarF1SVDelta1(L)
cgBarF1SVDelta1(P)

// Hard functions
cdbl cg1HG(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
    cdbl nG = 1./(4) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nG * (CA * (IntROKfiniteG(m2,q2,sp,s4,t1) + RPoleG(m2,q2,sp,s4,t1)) + _fQED*2.*CF * IntRQEDfiniteG(m2,q2,sp,s4,t1))/(sp*sp);
}
cdbl cg1HL(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
    cdbl nL = 1./(2) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nL * (CA * (IntROKfiniteL(m2,q2,sp,s4,t1) + RPoleL(m2,q2,sp,s4,t1)) + _fQED*2.*CF * IntRQEDfiniteL(m2,q2,sp,s4,t1))/(sp*sp);
}
cdbl cg1HP(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
    cdbl nP = 1./(2) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nP * (CA * (IntROKfiniteP(m2,q2,sp,s4,t1) + RPoleP(m2,q2,sp,s4,t1)) + _fQED*2.*CF * IntRQEDfiniteP(m2,q2,sp,s4,t1))/(sp*sp);
}

cdbl cgBarF1HG(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
    cdbl nG = 1./(4) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nG * (CA * (RPoleGScaleF(m2,q2,sp,s4,t1)))/(sp*sp);
}
cdbl cgBarF1HL(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
    cdbl nL = 1./(2) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nL * (CA * (RPoleLScaleF(m2,q2,sp,s4,t1)))/(sp*sp);
}
cdbl cgBarF1HP(cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1) {
    cdbl nP = 1./(2) * Kggg * NC * CF;
    return (m2/(4.*M_PI)) * nP * (CA * (RPolePScaleF(m2,q2,sp,s4,t1)))/(sp*sp);
}