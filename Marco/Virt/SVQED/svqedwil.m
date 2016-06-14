(* SOFT+VIRTUAL (QED) AS GIVEN BY SMITH ET AL. IN *)
(* PRD 40 (1989) 54, EQ. (D3)                     *)

BQED = t1/u1 + u1/t1 + 4m^2 s/t1/u1 (1-m^2 s/t1/u1) +
       eps (-1+s^2/t1/u1) +
       eps^2 s^2/4/t1/u1;

FQED = -4 BQED (1 + (s-2m^2) 1/sbar Log[x]) Log[delta]  +
     2 zeta2 + 2 + 3m^2 (s-2m^2) 1/t/u - 4m^2 (s-2m^2) (5s-8m^2)/s^2/t -
     (10s - 24m^2 -s(3s^2+10 s m^2 - 24 m^4)/t1/u1 +
     16s^2 m^4 (s-2m^2)/t1^2/u1^2) zeta2 1/sbar +
     (28 s m^2 +32 m^4 -(3s^2 + 8m^4) zeta2)/t1/u1 -
     8s m^2 (4s m^2 +8m^4 +s m^2 zeta2)/t1^2/u1^2 -
     4s^2 m^4(s^2-8s m^2-s^2 zeta2)/t1^3/u1^3 -
     8m^4 (s-8m^2)/t1^3 +
     (2s +52m^2- 72m^4/s +64m^6/s^2-(20s m^2-100m^4+136m^6/s-64m^8/s^2)/u)/t1-
     4m^2 (s-26m^2 +16m^4/s -s(s-m^2)/u)/t1^2  +
     (4s (1-s m^2/t1/u1)+2(s-2m^2)(2-s(s+4m^2)/t1/u1+4s^2 m^4/t1^2/u1^2))/sbar*
     Log[x] - (1- 1/2(3s^2-8m^4)/t1/u1 - (5s-12 m^2- 1/2 s/t1/u1 (
     3s^2+10 s m^2 - 24m^4)+8s^2 m^4(s-2m^2)/t1^2/u1^2)/sbar)Log[x]^2-
     2(1-(27s-32m^2)/t + (4s^2-22s m^2+15 m^4)/t^2 +
     6(5s -4m^2)/t1 -4m^2(s-4m^2)/t1^2 + 2(13s^2-18s m^2 +8m^4)/t1/u1-
     2(11s^2-18s m^2+8 m^4)/t/u1 +
     2(2s^3-13s^2 m^2 +18s m^4-8 m^6)/t^2/u1) Log[-t1/m^2] -
     4(s-(s+2m^2)(s-4m^2)/t1-2(s^3-12s m^4+8m^6)/t1/u1 +
     8m^4(s-2m^2)/t1^2)Log[x] Log[-t1/m^2] 1/sbar +
     4(1-(s+4m^2)/t1-2 m^4/t1^2+2s m^4/t1^3-
     2(s^2+s m^2-3m^4)/t1/u1)Li2[t/m^2]- 
     8(s-2m^2)(2-s(s+4m^2)/t1/u1+4s^2 m^4/t1^2/u1^2)(Log[x] Log[1-x]+Li2[x])/
     sbar - 2(s-4m^2)(2+s(s+2m^2)/t1/u1)(Log[x] Log[1+x]+Li2[-x])/sbar;

SVQEDW = Expand[FQED + (FQED /. {t1->u1,u1->t1,t->u,u->t})];

(* SORT *)

willy = SVQEDW;

