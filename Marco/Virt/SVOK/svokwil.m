(* SOFT + VIRTUAL AS GIVEN IN SMITH ET AL. 
   NPB 374, Eq. (A.1) AND (A.2)            *)

BQED = t1/u1 + u1/t1 + 4m^2 s/t1/u1 (1-m^2 s /t1/u1);

FOKS = BQED * (2(Log[delta]^2 + (-Log[Q^2/m^2] + (s-2m^2) 1/sbar Log[x]) *
           Log[delta]) +
    (s-2m^2)(Log[x]^2-4 Log[x] Log[1-x] - 4 Li2[x] -2 zeta2) 1/sbar -
    1/2 Log[x]^2 + Log[-t1/m^2]^2 - Log[-t1/m^2] Log[-u1/m^2] +
    2 Log[-t1/m^2] Log[Q^2/m^2] -3/2 zeta2) +
    (2 Log[x] Log[1+x] + 2 Li2[-x] + zeta2) *
    (-4m^4 s /t1 /u1 + m^2 (-s^2 /t1 /u1 -4) +s +1/2 s^3/t1/u1) 1/sbar +
    (32 m^6 s /t1^2 /u1 +m^4(48 s/t1/u1 -16 u1/t1^2) + 4m^2 s /t1 +
    4 t1^2/u1 + 2 u1^2/t1 + 8 t1 + 6u1) 1/sbar Log[x] Log[-t1/m^2] +
    (2m^4 s /t1/u1 + m^2(2+1/2 s^2/t1/u1)-1/2 s -1/4 s^3/t1/u1) *
    1/sbar Log[x]^2 + (2m^2 s^2 /t1/u1 -2s) 1/sbar Log[x]+
    (m^4 (-6/t1/u1+4/t1^2+2 u1/t1^3)+m^2(6/t1-2/u1)+4+2t1/u1)Li2[t/m^2] +
    (8m^4/t1/u1-4m^2 s /t1/u1+2-s^2/t1/u1) Log[-t1/m^2]^2+
    (m^4(-8/t1/u1+8s^2/t1^2/u1^2)-4m^2 s /t1/u1 +2 -s^2/t1/u1) *
    Log[-t1/m^2] Log[-u1/m^2] + (2m^4/t1/u1 +1/2 -3/4 s^2 /t1/u1) Log[x]^2 +
    (m^4(-s^4 /t1^3/u1^3 -12 s^2/t1^2/u1^2 + 20 /t1/u1) +
    4m^2 s/t1/u1 -6 +4s^2/t1/u1) zeta2 +
    (m^2(4/t1+2/u1+2u1/t1^2) +4s/u1 +4 t1^2/t/u1 +2 t1/t) Log[-t1/m^2] +
    m^2 s (1/t1^2+1/u1^2);

FOKA = 2 BQED (2 Log[-t1/m^2] Log[delta] + Log[x] Log[-u1/m^2] +
       Log[-u1/m^2] Log[Q^2/m^2] + Li2[1-t1/x/u1]);

willy = Expand[FOKS + (FOKS /. {t1->u1,u1->t1,t->u,u->t}) +
               FOKA - (FOKA /. {t1->u1,u1->t1,t->u,u->t}) ];
 
