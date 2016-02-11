(* POLARIZED BORN CONTRIBUTION gamma(Q2) gluon -> Q QBAR up to O(eps^2) *)
(* EDIT FHe *)
SetDirectory["~/Physik/PhD/Marco/recalc/"]
<<tracer11.m

AntiCommute[off];
VectorDimension[n];
Spur[l1,l2,l3];
OnShell[on,{q,q,q2},{k1,k1,0},{p1,p1,m^2},{p2,p2,m^2},
           {q,k1,sp/2},{p1,p2,s/2-m^2},{k1,p2,-t1/2},{q,p2,-u1p/2},
           {k1,p1,-u1/2},{q,p1,-t1/2+q2/2}];
(* *)
tengam=I Eps[{mu},{al},q,k1]/(q.k1); 
tenglu=I Eps[{nu},{be},k1,q]/(k1.q);
(* *)
Print[START]
(*m1m1*)
zwi1=G[l1,{nu},(p1-k1+m U),{mu},(p2-m U),{al},(p1-k1+m U),{be},(p1+m U)]/u1^2;
Print[TRACE]
pgm1m1=ContractEpsGamma[tenglu*zwi1];

Print[m1m1]
(* *)
(*m2m2*)
zwi1=G[l2,{mu},(k1-p2+m U),{nu},(p2-m U),{be},(k1-p2+m U),{al},(p1+m U)]/t1^2;
Print[TRACE]
pgm2m2=ContractEpsGamma[tenglu*zwi1];
Print[m2m2]
(* *)
(*m1m2*)
zwi1=G[l3,{nu},(p1-k1+m U),{mu},(p2-m U),{be},(k1-p2+m U),{al},(p1+m U)]/t1/u1;
Print[TRACE]
pgm1m2=ContractEpsGamma[tenglu*zwi1];
Print[m1m2]
(* *)
res = (pgm1m1 + 2 * pgm1m2 + pgm2m2)/8;

zwi=ContractEpsGamma[tengam*res];
res=ContractEpsGamma[zwi];


(* EDIT FHe *)
(res/.{H[a_,b_]:>0}) >> "data/BPQED"
