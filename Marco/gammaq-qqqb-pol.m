(* TRACES FOR gamma q -> q Q QB - POLARIZED *)
(* BE CAREFUL WITH HAT MOMENTA *)
SetDirectory["/Users/marco/WORK/G1CHARM-NLO/GAMMAq-QQBq"]
<<tracer11.m

AntiCommute[off];
VectorDimension[n];

Spur[l11,l12,l21,l22,l31,l32,l41,l42];
OnShell[on,{q,q,q2},{k1,k1,0},{k2,k2,0},{p1,p1,m^2},{p2,p2,m^2},
        {q,k1,sp/2},{p1,p2,s/2-m^2},{k1,p2,-t1/2},{q,p2,-u1p/2},
        {k1,p1,-u1/2},{q,p1,-t1/2+q2/2},
        {k2,p2,s3/2},{k2,p1,s4/2},{p1,p2,s5/2-m^2},
        {k1,k2,-ts/2},{q,k2,-us/2+q2/2},{k1,p1,-u6/2},{q,p1,-u7/2+q2/2}];
(* *)
tengampol=I Eps[{mu},{nu},q,k1]/(q.k1);

(* CHOICE OF PROJECTOR *)
tengam=tengampol;
(* *)
Print["START"]

(*m1m1*)
zwi11=G[l11,{al},k1,U-h G5,{be},k2]/ts^2/u1^2
zwi12=G[l12,{al},q-p2+m U,{mu},p2-m U,{nu},q-p2+m U,{be},p1+m U];
zwi2=ContractEpsGamma[zwi11*zwi12];
zwi3=ContractEpsGamma[zwi2*tengam];
zwi4=RemoveHatMomenta[zwi3,q,k1,p2];
pqm1m1=ContractEpsGamma[zwi4] /. Eps[a_,b_,c_,d_]->0;
pqm1m1>>pqm1m1-pol;

(*m2m2*)
zwi11=G[l21,{al},k1,U-h G5,{be},k2]/ts^2/u7^2;
zwi12=G[l22,{mu},p1-q+m U,{al},p2-m U,{be},p1-q+m U,{nu},p1+m U];
zwi2=ContractEpsGamma[zwi11*zwi12];
zwi3=ContractEpsGamma[zwi2*tengam];
zwi4=RemoveHatMomenta[zwi3,q,k1,p2];
pqm2m2=ContractEpsGamma[zwi4] /. Eps[a_,b_,c_,d_]->0;
pqm2m2>>pqm2m2-pol;

(*m3m3*)
zwi11=G[l31,{mu},k2-q,{al},k1,U-h G5,{be},k2-q,{nu},k2];
zwi12=G[l32,{al},p2-m U,{be},p1+m U]/us^2/s5^2;
zwi2=ContractEpsGamma[zwi11*zwi12];
zwi3=ContractEpsGamma[zwi2*tengam];
zwi4=RemoveHatMomenta[zwi3,q,k1,p2];
pqm3m3=ContractEpsGamma[zwi4] /. Eps[a_,b_,c_,d_]->0;
pqm3m3>>pqm3m3-pol;

(*m4m4*)
zwi11=G[l41,{al},k1+q,{mu},k1,U-h G5,{nu},k1+q,{be},k2];
zwi12=G[l42,{al},p2-m U,{be},p1+m U]/s^2/s5^2;
zwi2=ContractEpsGamma[zwi11*zwi12];
zwi3=ContractEpsGamma[zwi2*tengam];
zwi4=RemoveHatMomenta[zwi3,q,k1,p2];
pqm4m4=ContractEpsGamma[zwi4] /. Eps[a_,b_,c_,d_]->0;
pqm4m4>>pqm4m4-pol;

(* INTERFERENCE TERMS *)

(*m1m2*)
zwi11=G[l11,{al},k1,U-h G5,{be},k2]/ts^2/u1/u7
zwi12=G[l12,{al},q-p2+m U,{mu},p2-m U,{be},p1-q+m U,{nu},p1+m U];
zwi2=ContractEpsGamma[zwi11*zwi12];
zwi3=ContractEpsGamma[zwi2*tengam];
zwi4=RemoveHatMomenta[zwi3,q,k1,p2];
pqm1m2=ContractEpsGamma[zwi4] /. Eps[a_,b_,c_,d_]->0;
pqm1m2>>pqm1m2-pol;

(*m1m3*)
zwi11=G[l11,{al},k1,U-h G5,{be},k2-q,{nu},k2]/ts/u1/us/s5
zwi12=G[l12,{al},q-p2+m U,{mu},p2-m U,{be},p1+m U];
zwi2=ContractEpsGamma[zwi11*zwi12];
zwi3=ContractEpsGamma[zwi2*tengam];
zwi4=RemoveHatMomenta[zwi3,q,k1,p2];
pqm1m3=ContractEpsGamma[zwi4] /. Eps[a_,b_,c_,d_]->0;
pqm1m3>>pqm1m3-pol;

(*m1m4*)
zwi11=G[l11,{al},k1,U-h G5,{nu},k1+q,{be},k2]/ts/u1/s/s5
zwi12=G[l12,{al},q-p2+m U,{mu},p2-m U,{be},p1+m U];
zwi2=ContractEpsGamma[zwi11*zwi12];
zwi3=ContractEpsGamma[zwi2*tengam];
zwi4=RemoveHatMomenta[zwi3,q,k1,p2];
pqm1m4=ContractEpsGamma[zwi4] /. Eps[a_,b_,c_,d_]->0;
pqm1m4>>pqm1m4-pol;

(*m2m3*)
zwi11=G[l21,{al},k1,U-h G5,{be},k2-q,{nu},k2]/ts/u7/us/s5;
zwi12=G[l22,{mu},p1-q+m U,{al},p2-m U,{be},p1+m U];
zwi2=ContractEpsGamma[zwi11*zwi12];
zwi3=ContractEpsGamma[zwi2*tengam];
zwi4=RemoveHatMomenta[zwi3,q,k1,p2];
pqm2m3=ContractEpsGamma[zwi4] /. Eps[a_,b_,c_,d_]->0;
pqm2m3>>pqm2m3-pol;

(*m2m4*)
zwi11=G[l21,{al},k1,U-h G5,{nu},k1+q,{be},k2]/ts/u7/s/s5;
zwi12=G[l22,{mu},p1-q+m U,{al},p2-m U,{be},p1+m U];
zwi2=ContractEpsGamma[zwi11*zwi12];
zwi3=ContractEpsGamma[zwi2*tengam];
zwi4=RemoveHatMomenta[zwi3,q,k1,p2];
pqm2m4=ContractEpsGamma[zwi4] /. Eps[a_,b_,c_,d_]->0;
pqm2m4>>pqm2m4-pol;

(*m3m4*)
zwi11=G[l31,{mu},k2-q,{al},k1,U-h G5,{nu},k1+q,{be},k2];
zwi12=G[l32,{al},p2-m U,{be},p1+m U]/us/s5^2/s;
zwi2=ContractEpsGamma[zwi11*zwi12];
zwi3=ContractEpsGamma[zwi2*tengam];
zwi4=RemoveHatMomenta[zwi3,q,k1,p2];
pqm3m4=ContractEpsGamma[zwi4] /. Eps[a_,b_,c_,d_]->0;
pqm3m4>>pqm3m4-pol;

Print["DONE"]

(*SUMMING UP TERMS WITH THE SAME QUARK CHARGES*)

sumeh2 = pqm1m1 + 2pqm1m2 + pqm2m2;