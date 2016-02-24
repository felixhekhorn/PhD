(* TRACES FOR gamma g -> g Q QB - UNPOLARIZED *)
(* NEEDS TO BE RUN WITH BOTH PROJECTION OPERATIONS: G AND L PARTS *)

SetDirectory["/Users/marco/WORK/G1CHARM-NLO/GAMMAG-QQBG"]
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
tengam=tengaml;

(* INCOMING GLUON *)
tenglu=(-{nu}.{be});

(* RADIATED GLUON *)
tenrad=-{rho}.{si};

(* 3-GLUON VERTICES *)

mtens=((-k1-k2).{xi} {nu}.{rho}+(2k2-k1).{nu} {rho}.{xi}+
        (2 k1-k2).{rho} {xi}.{nu});
        
mtensconj=((-k1-k2).{tau} {be}.{si}+(2k2-k1).{be} {si}.{tau}+
        (2 k1-k2).{si} {tau}.{be});

        
Print["START"]

(*m7m7*)
zwi11=G[l1,{xi},(q-p2+m U),{mu},(p2-m U),{al},(q-p2+m U),{tau},(p1+m U)]/
       u1^2/ts^2;
zwihelp=ContractEpsGamma[zwi11*mtens];
zwi1=ContractEpsGamma[zwihelp*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
pgm7m7=ContractEpsGamma[tengam*zwi3];
pgm7m7>>pgm7m7-unp-l;

(*m8m8*)
zwi11=G[l1,{mu},(p1-q+m U),{xi},(p2-m U),{tau},(p1-q+m U),{al},(p1+m U)]/
       u7^2/ts^2;
zwihelp=ContractEpsGamma[zwi11*mtens];
zwi1=ContractEpsGamma[zwihelp*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
pgm8m8=ContractEpsGamma[tengam*zwi3];
pgm8m8>>pgm8m8-unp-l;

(*m7m8*)
zwi11=G[l1,{xi},(q-p2+m U),{mu},(p2-m U),{tau},(p1-q+m U),{al},(p1+m U)]/
       u1/u7/ts^2;
zwihelp=ContractEpsGamma[zwi11*mtens];
zwi1=ContractEpsGamma[zwihelp*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
pgm7m8=zwi4 /. Eps[a_,b_,c_,d_]->0;
pgm7m8>>pgm7m8-unp-l;

Print["DONE M7-M8"]

(*-----------------------------*)

(*m1m7*)
zwi11=(-I)*G[l1,{nu},(p1-k1+m U),{mu},(-p2-k2+m U),{rho},(p2-m U),{al},
             (q-p2+m U),{tau},(p1+m U)]/u1/u6/s3/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm1m7= zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm1m7>>pgm1m7-unp-l;

(*m1m8*)
zwi11=(-I)*G[l1,{nu},(p1-k1+m U),{mu},(-p2-k2+m U),{rho},(p2-m U),{tau},
            (p1-q+m U),{al},(p1+m U)]/u6/s3/u7/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
zwi5=ContractEpsGamma[zwi4];
pgm1m8=zwi5 /. Eps[a_,b_,c_,d_]->0;
pgm1m8>>pgm1m8-unp-l;

Print["DONE M1-M78"]

(*-----------------------------*)

(*m2m7*)
zwi11=(-I)*G[l1,{rho},(p1+k2+m U),{mu},(k1-p2+m U),{nu},(p2-m U),{al},
             (q-p2+m U),{tau},(p1+m U)]/s4/t1/u1/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
pgm2m7=zwi4 /. Eps[a_,b_,c_,d_]->0;
pgm2m7>>pgm2m7-unp-l;

(*m2m8*)
zwi11=(-I)*G[l1,{rho},(p1+k2+m U),{mu},(k1-p2+m U),{nu},(p2-m U),{tau},
            (p1-q+m U),{al},(p1+m U)]/s4/t1/u7/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
pgm2m8=zwi4 /. Eps[a_,b_,c_,d_]->0;
pgm2m8>>pgm2m8-unp-l;

Print["DONE M2-M78"]

(*-----------------------------*)

(*m3m7*)
zwi11=(-I)*G[l1,{rho},(p1+k2+m U),{nu},(q-p2+m U),{mu},(p2-m U),{al},
             (q-p2+m U),{tau},(p1+m U)]/s4/u1/u1/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
pgm3m7=zwi4 /. Eps[a_,b_,c_,d_]->0;
pgm3m7>>pgm3m7-unp-l;

(*m3m8*)
zwi11=(-I)*G[l1,{rho},(p1+k2+m U),{nu},(q-p2+m U),{mu},(p2-m U),{tau},
            (p1-q+m U),{al},(p1+m U)]/s4/u1/u7/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
pgm3m8=zwi4 /. Eps[a_,b_,c_,d_]->0;
pgm3m8>>pgm3m8-unp-l;

Print["DONE M3-M78"]

(*-----------------------------*)

(*m4m7*)
zwi11=(-I)*G[l1,{mu},(p1-q+m U),{nu},(-p2-k2+m U),{rho},(p2-m U),{al},
             (q-p2+m U),{tau},(p1+m U)]/u7/s3/u1/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
pgm4m7=zwi4 /. Eps[a_,b_,c_,d_]->0;
pgm4m7>>pgm4m7-unp-l;

(*m4m8*)
zwi11=(-I)*G[l1,{mu},(p1-q+m U),{nu},(-p2-k2+m U),{rho},(p2-m U),{tau},
            (p1-q+m U),{al},(p1+m U)]/u7/s3/u7/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
pgm4m8=zwi4 /. Eps[a_,b_,c_,d_]->0;
pgm4m8>>pgm4m8-unp-l;

Print["DONE M4-M78"]

(*-----------------------------*)

(*m5m7*)
zwi11=(-I)*G[l1,{nu},(p1-k1+m U),{rho},(q-p2+m U),{mu},(p2-m U),{al},
             (q-p2+m U),{tau},(p1+m U)]/u6/u1/u1/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
pgm5m7=zwi4 /. Eps[a_,b_,c_,d_]->0;
pgm5m7>>pgm5m7-unp-l;

(*m5m8*)
zwi11=(-I)*G[l1,{nu},(p1-k1+m U),{rho},(q-p2+m U),{mu},(p2-m U),{tau},
            (p1-q+m U),{al},(p1+m U)]/u6/u1/u7/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
pgm5m8=zwi4 /. Eps[a_,b_,c_,d_]->0;
pgm5m8>>pgm5m8-unp-l;

Print["DONE M5-M78"]

(*-----------------------------*)

(*m6m7*)
zwi11=(-I)*G[l1,{mu},(p1-q+m U),{rho},(k1-p2+m U),{nu},(p2-m U),{al},
             (q-p2+m U),{tau},(p1+m U)]/u7/t1/u1/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
pgm6m7=zwi4 /. Eps[a_,b_,c_,d_]->0;
pgm6m7>>pgm6m7-unp-l;

(*m6m8*)
zwi11=(-I)*G[l1,{mu},(p1-q+m U),{rho},(k1-p2+m U),{nu},(p2-m U),{tau},
            (p1-q+m U),{al},(p1+m U)]/u7/t1/u7/ts;
zwi1=ContractEpsGamma[zwi11*mtensconj];
zwi2=ContractEpsGamma[tenrad*zwi1];
zwi3=ContractEpsGamma[tenglu*zwi2];
zwi4=ContractEpsGamma[tengam*zwi3];
pgm6m8=zwi4 /. Eps[a_,b_,c_,d_]->0;
pgm6m8>>pgm6m8-unp-l;

Print["DONE M6-M78"]
