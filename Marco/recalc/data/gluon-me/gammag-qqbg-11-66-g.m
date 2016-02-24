(* TRACES FOR gamma g -> g Q QB - UNPOLARIZED *)
(* NEEDS TO BE RUN WITH BOTH PROJECTION OPERATIONS: G AND L PARTS *)

(* EDIT: FHe *)
SetDirectory["~/Physik/PhD/Marco/recalc/data/gluon-me"]
<<tracer11.m

AntiCommute[off];
VectorDimension[n];
Spur[l1];
OnShell[on,{q,q,q2},{k1,k1,0},{k2,k2,0},{p1,p1,m^2},{p2,p2,m^2},
        {q,k1,sp/2},{p1,p2,s/2-m^2},{k1,p2,-t1/2},{q,p2,-u1p/2},
        {k1,p1,-u1/2},{q,p1,-t1/2+q2/2},
        {k2,p2,s3/2},{k2,p1,s4/2},{p1,p2,s5/2-m^2},
        {k1,k2,-ts/2},{q,k2,-us/2+q2/2},{k1,p1,-u6/2},{q,p1,-u7/2+q2/2}];

(* VIRTUAL PHOTON *)
tengamg=(-{mu}.{al}) 
tengaml=-4 q2/sp^2 k1.{mu} k1.{al}

(* CHOICE OF PROJECTOR *)
tengam=tengamg;

(* INCOMING GLUON *)
tenglu=(-{nu}.{be});

(* RADIATED GLUON *)
tenrad=-{rho}.{si};

(*m1m1 - m6m6*)

Print["START"]

(*m1m1*)
zwi1=G[l1,{nu},(p1-k1+m U),{mu},(-p2-k2+m U),{rho},(p2-m U),{si},
          (-p2-k2+m U),{al},(p1-k1+m U),{be},(p1+m U)]/u6^2/s3^2;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
m1m1=ContractEpsGamma[zwi4];
m1m1>>pgm1m1-unp-g;

(*m2m2*)
zwi1=G[l1,{rho},(p1+k2+m U),{mu},(k1-p2+m U),{nu},(p2-m U),{be},
          (k1-p2+m U),{al},(p1+k2+m U),{si},(p1+m U)]/t1^2/s4^2;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
m2m2=ContractEpsGamma[zwi4];
m2m2>>pgm2m2-unp-g;

(*m3m3*)
zwi1=G[l1,{rho},(p1+k2+m U),{nu},(q-p2+m U),{mu},(p2-m U),{al},
          (q-p2+m U),{be},(p1+k2+m U),{si},(p1+m U)]/u1^2/s4^2;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
m3m3=ContractEpsGamma[zwi4];
m3m3>>pgm3m3-unp-g;

(*m4m4*)
zwi1=G[l1,{mu},(p1-q+m U),{nu},(-p2-k2+m U),{rho},(p2-m U),{si},
          (-p2-k2+m U),{be},(p1-q+m U),{al},(p1+m U)]/u7^2/s3^2;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
m4m4=ContractEpsGamma[zwi4];
m4m4>>pgm4m4-unp-g;

(*m5m5*)
zwi1=G[l1,{nu},(p1-k1+m U),{rho},(q-p2+m U),{mu},(p2-m U),{al},
          (q-p2+m U),{si},(p1-k1+m U),{be},(p1+m U)]/u6^2/u1^2;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
m5m5=ContractEpsGamma[zwi4];
m5m5>>pgm5m5-unp-g;

(*m6m6*)
zwi1=G[l1,{mu},(p1-q+m U),{rho},(k1-p2+m U),{nu},(p2-m U),{be},
          (k1-p2+m U),{si},(p1-q+m U),{al},(p1+m U)]/u7^2/t1^2;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
m6m6=ContractEpsGamma[zwi4];
m6m6>>pgm6m6-unp-g;

Print["DONE M1M1-M6M6"]

(*-----------------------------*)

(*m1m2*)
zwi1=G[l1,{nu},(p1-k1+m U),{mu},(-p2-k2+m U),{rho},(p2-m U),{be},
          (k1-p2+m U),{al},(p1+k2+m U),{si},(p1+m U)]/u6/s3/t1/s4;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm1m2= zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm1m2>>pgm1m2-unp-g;

(*m1m3*)
zwi1=G[l1,{nu},(p1-k1+m U),{mu},(-p2-k2+m U),{rho},(p2-m U),{al},
          (q-p2+m U),{be},(p1+k2+m U),{si},(p1+m U)]/u1/u6/s3/s4;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm1m3= zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm1m3>>pgm1m3-unp-g;

(*m1m4*)
zwi1=G[l1,{nu},(p1-k1+m U),{mu},(-p2-k2+m U),{rho},(p2-m U),{si},
          (-p2-k2+m U),{be},(p1-q+m U),{al},(p1+m U)]/u6/s3^2/u7;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm1m4= zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm1m4>>pgm1m4-unp-g;

(*m1m5*)
zwi1=G[l1,{nu},(p1-k1+m U),{mu},(-p2-k2+m U),{rho},(p2-m U),{al},
          (q-p2+m U),{si},(p1-k1+m U),{be},(p1+m U)]/u1/s3/u6^2;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm1m5=zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm1m5>>pgm1m5-unp-g;
  
(*m1m6*)
zwi1=G[l1,{nu},(p1-k1+m U),{mu},(-p2-k2+m U),{rho},(p2-m U),{be},
          (k1-p2+m U),{si},(p1-q+m U),{al},(p1+m U)]/u6/s3/t1/u7;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4]
pgm1m6=zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm1m6>>pgm1m6-unp-g;

Print["DONE M1M2-M1M6"]

(*-----------------------------*)

(*m2m3*)
zwi1=G[l1,{rho},(p1+k2+m U),{mu},(k1-p2+m U),{nu},(p2-m U),
          {al},(q-p2+m U),{be},(p1+k2+m U),{si},(p1+m U)]/s4^2/u1/t1;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm2m3=zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm2m3>>pgm2m3-unp-g;

(*m2m4*)
zwi1=G[l1,{rho},(p1+k2+m U),{mu},(k1-p2+m U),{nu},(p2-m U),{si},
          (-p2-k2+m U),{be},(p1-q+m U),{al},(p1+m U)]/s4/t1/u7/s3;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm2m4=zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm2m4>>pgm2m4-unp-g;

(*m2m5*)
zwi1=G[l1,{rho},(p1+k2+m U),{mu},(k1-p2+m U),{nu},(p2-m U),{al},
          (q-p2+m U),{si},(p1-k1+m U),{be},(p1+m U)]/s4/t1/u1/u6;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm2m5=zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm2m5>>pgm2m5-unp-g;

(*m2m6*)
zwi1=G[l1,{rho},(p1+k2+m U),{mu},(k1-p2+m U),{nu},(p2-m U),{be},
          (k1-p2+m U),{si},(p1-q+m U),{al},(p1+m U)]/s4/t1^2/u7;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm2m6=zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm2m6>>pgm2m6-unp-g;

Print["DONE M2M3-M2M6"]

(*-----------------------------*)

(*m3m4*)
zwi1=G[l1,{rho},(p1+k2+m U),{nu},(q-p2+m U),{mu},(p2-m U),{si},
          (-p2-k2+m U),{be},(p1-q+m U),{al},(p1+m U)]/s4/u1/u7/s3;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm3m4=zwi5 /. Eps[a_,b_,c_,d_] -> 0;
pgm3m4>>pgm3m4-unp-g;

(*m3m5*)
zwi1=G[l1,{rho},(p1+k2+m U),{nu},(q-p2+m U),{mu},(p2-m U),{al},
          (q-p2+m U),{si},(p1-k1+m U),{be},(p1+m U)]/s4/u1^2/u6;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm3m5=zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm3m5>>pgm3m5-unp-g;

(*m3m6*)
zwi1=G[l1,{rho},(p1+k2+m U),{nu},(q-p2+m U),{mu},(p2-m U),{be},
          (k1-p2+m U),{si},(p1-q+m U),{al},(p1+m U)]/s4/u1/t1/u7;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm3m6=zwi5 /. Eps[a_,b_,c_,d_] ->0;
pgm3m6>>pgm3m6-unp-g;

Print["DONE M3M4-M3M6"]

(*-----------------------------*)

(*m4m5*)
zwi1=G[l1,{mu},(p1-q+m U),{nu},(-p2-k2+m U),{rho},(p2-m U),{al},
          (q-p2+m U),{si},(p1-k1+m U),{be},(p1+m U)]/u7/s3/u1/u6;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm4m5=zwi5 /. Eps[a_,b_,c_,d_] -> 0;
pgm4m5>>pgm4m5-unp-g;

(*m4m6*)
zwi1=G[l1,{mu},(p1-q+m U),{nu},(-p2-k2+m U),{rho},(p2-m U),{be},
          (k1-p2+m U),{si},(p1-q+m U),{al},(p1+m U)]/u7^2/s3/t1;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm4m6=zwi5 /. Eps[a_,b_,c_,d_] -> 0;
pgm4m6>>pgm4m6-unp-g;

Print["DONE M4M5-M4M6"]

(*-----------------------------*)

(*m5m6*)
zwi1=G[l1,{nu},(p1-k1+m U),{rho},(q-p2+m U),{mu},(p2-m U),{be},
          (k1-p2+m U),{si},(p1-q+m U),{al},(p1+m U)]/u6/u7/u1/t1;
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm5m6=zwi5 /. Eps[a_,b_,c_,d_] -> 0;
pgm5m6>>pgm5m6-unp-g;

Print["DONE M5M6"]
