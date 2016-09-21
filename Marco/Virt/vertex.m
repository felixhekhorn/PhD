(* VERTEX CONTRIBUTIONS gamma gluon -> Q QBAR up to O(eps^2) *)

<<tracer11.m
AntiCommute[off];
VectorDimension[n];

Spur[l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16,l17,l18,
     l19,l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l30,l31,l32];

OnShell[on,{k1,k1,0},{k2,k2,0},{p1,p1,m^2},{p2,p2,m^2},
           {k1,k2,s/2},{p1,p2,s/2-m^2},{k2,p2,-t1/2},{k1,p2,-u1/2},
           {k2,p1,-u1/2},{k1,p1,-t1/2}];

(* *)

tengam=(-{mu}.{al}) (* +I lgam Eps[{mu},{al},k1,k2]/(k1.k2)); *)
tenglu=(-{nu}.{be}) (* +I lglu Eps[{nu},{be},k2,k1]/(k1.k2)); *)

(* general definitions *)
cepsp = Exp[eps/2(EulerGamma-Log[4 Pi])] (m^2/mur^2)^(eps/2);
ceps = 1/(16 Pi^2) cepsp;

zpsi = 2/eps+EulerGamma-Log[4Pi]+Log[m^2/mur^2];
zvertex = 2/eps+EulerGamma-Log[4Pi]+Log[m^2/mur^2];

norm = I G^2 EH;
normv = -G^2 CF;
normc= I G^3/16/Pi^2 (CF);

(* QED LIKE VERTEX *)

a0[m] = I ceps m^2 (-2/eps+1);
a0[0] = 0;
b0[p2,0,m] = I ceps (-2/eps+2);
b0[p1,0,m] = I ceps (-2/eps+2);
b0[-k1+p2,0,m] = I ceps (-2/eps+2-u1/u Log[-u1/m^2]);
b0[-k1,m,m] = I ceps (-2/eps);
c0[p2,-k1,0,m,m]=I ceps  1/u1(Z2-PolyLog[2,u/m^2]);


(* VE 11 *)

c11 = b0[p2, 0, m]/u1 - b0[-k1 + p2, 0, m]/u1 - c0[p2, -k1, 0, m, m];
c12 = -(b0[-k1, m, m]/u1) - (2*m^2*b0[p2, 0, m])/u1^2 + 
  (2*m^2*b0[-k1 + p2, 0, m])/u1^2 + b0[-k1 + p2, 0, m]/u1 + 
  (2*m^2*c0[p2, -k1, 0, m, m])/u1;
c21 = -a0[m]/(2*m^2*u1) + a0[m]/(2*u1*(m^2 + u1)) - b0[p2, 0, m]/u1 + 
  b0[-k1 + p2, 0, m]/u1 + b0[-k1 + p2, 0, m]/(2*(m^2 + u1)) + 
  c0[p2, -k1, 0, m, m];
c22 = -((m^2*a0[m])/(u1^2*(m^2 + u1))) - a0[m]/(2*u1*(m^2 + u1)) - 
  (2*m^2*b0[-k1, m, m])/u1^2 + b0[-k1, m, m]/(2*u1) - 
  (4*m^4*b0[p2, 0, m])/u1^3 - (4*m^4*b0[p2, 0, m])/((-2 + n)*u1^3) + 
  (4*m^4*b0[-k1 + p2, 0, m])/u1^3 + 
  (4*m^4*b0[-k1 + p2, 0, m])/((-2 + n)*u1^3) + 
  (2*m^2*b0[-k1 + p2, 0, m])/u1^2 + 
  (2*m^2*b0[-k1 + p2, 0, m])/((-2 + n)*u1^2) - 
  b0[-k1 + p2, 0, m]/(2*(m^2 + u1)) - 
  (m^2*b0[-k1 + p2, 0, m])/(u1*(m^2 + u1)) + 
  (4*m^4*c0[p2, -k1, 0, m, m])/u1^2 + 
  (4*m^4*c0[p2, -k1, 0, m, m])/((-2 + n)*u1^2);
c23 = a0[m]/u1^2 - (m^2*a0[m])/(u1^2*(m^2 + u1)) - a0[m]/(2*u1*(m^2 + u1)) + 
  b0[-k1, m, m]/u1 + (2*m^2*b0[p2, 0, m])/u1^2 + 
  (2*m^2*b0[p2, 0, m])/((-2 + n)*u1^2) - (2*m^2*b0[-k1 + p2, 0, m])/u1^2 - 
  (2*m^2*b0[-k1 + p2, 0, m])/((-2 + n)*u1^2) - 
  b0[-k1 + p2, 0, m]/((-2 + n)*u1) - b0[-k1 + p2, 0, m]/(2*(m^2 + u1)) - 
  (m^2*b0[-k1 + p2, 0, m])/(u1*(m^2 + u1)) - 
  (2*m^2*c0[p2, -k1, 0, m, m])/u1 - (2*m^2*c0[p2, -k1, 0, m, m])/((-2 + n)*u1);
c24 = -((m^2*b0[p2, 0, m])/((-2 + n)*u1)) + b0[-k1 + p2, 0, m]/(2*(-2 + n)) + 
  (m^2*b0[-k1 + p2, 0, m])/((-2 + n)*u1) + (m^2*c0[p2, -k1, 0, m, m])/(-2 + n);

Print[VE11]

Print[BARE C24]
zwi1=G[l1,{nu},(p1-k2+m U),{rho},{tau},{mu},{tau},{rho},(p2-m U),{al},
       (p1-k2+m U),{be},(p1+m U)]/u1^2 c24;

Print[TRACE]
se1 = zwi1;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2) /. n->4+eps)],{eps,0,0}]]; 
ve11bare=Expand[(help2 /. {s->-t1-u1})];

Print[COUNTERTERM]
zwi1=G[l2,{nu},(p1-k2+m U),{mu},(p2-m U),{al},
       (p1-k2+m U),{be},(p1+m U)]/u1^2 zvertex;

Print[TRACE]
se1 = zwi1;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normc*norm*help2) /. n->4+eps)],{eps,0,0}]]; 
ve11counter=Expand[(help2 /. {s->-t1-u1})];

(* EDIT: *)
ve11c24=ve11bare;
(*+ve11counter;*)

Print[BARE C21]
zwi1=G[l3,{nu},(p1-k2+m U),{rho},p2,{mu},p2,{rho},(p2-m U),{al},
       (p1-k2+m U),{be},(p1+m U)]/u1^2;

Print[TRACE]
se1 = zwi1;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2*c21) /. n->4+eps)],{eps,0,0}]]; 
ve11c21=Expand[(help2 /. {s->-t1-u1})];

Print[BARE C22]
zwi1=G[l4,{nu},(p1-k2+m U),{rho},k1,{mu},k1,{rho},(p2-m U),{al},
       (p1-k2+m U),{be},(p1+m U)]/u1^2;

Print[TRACE]
se1 = zwi1;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2*c22) /. n->4+eps)],{eps,0,0}]]; 
ve11c22=Expand[(help2 /. {s->-t1-u1})];

Print[BARE C23]
zwi1=G[l5,{nu},(p1-k2+m U),{rho},p2,{mu},k1,{rho},(p2-m U),{al},
       (p1-k2+m U),{be},(p1+m U)]/u1^2 (-1);

zwi2=G[l6,{nu},(p1-k2+m U),{rho},k1,{mu},p2,{rho},(p2-m U),{al},
       (p1-k2+m U),{be},(p1+m U)]/u1^2 (-1);

Print[TRACES]
se1 = zwi1+zwi2;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2*c23) /. n->4+eps)],{eps,0,0}]]; 
ve11c23=Expand[(help2 /. {s->-t1-u1})];


Print[BARE C0]
zwi1=G[l7,{nu},(p1-k2+m U),{rho},(k1-p2+m U),{mu},(-p2+m U),{rho},
       (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)]/u1^2;

Print[TRACE]
se1 = zwi1;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2*c0[p2,-k1,0,m,m]) /. n->4+eps)],
            {eps,0,0}]]; 
ve11c0=Expand[(help2 /. {s->-t1-u1})];

Print["BARE C11 + C12"]

zwi1=G[l8,{nu},(p1-k2+m U),{rho},p2,{mu},(-p2+m U),{rho},
       (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)]/u1^2 (-1);

zwi2=G[l9,{nu},(p1-k2+m U),{rho},k1,{mu},(-p2+m U),{rho},
       (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)]/u1^2 ;

zwi3=G[l10,{nu},(p1-k2+m U),{rho},(k1-p2+m U),{mu},p2,{rho},
       (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)]/u1^2 (-1);

zwi4=G[l11,{nu},(p1-k2+m U),{rho},(k1-p2+m U),{mu},k1,{rho},
       (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)]/u1^2;

Print["TRACES"]
se1 = (zwi1+zwi3)*c11+(zwi3+zwi4)*c12;

help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2) /. n->4+eps)],
            {eps,0,0}]];
ve11c1=Expand[(help2 /. {s->-t1-u1})];

ve11= Expand[ve11c0+ve11c1+ve11c21+ve11c22+ve11c23+ve11c24];

Print["---------------------------------------------"]

Print[VE12]

Print[BARE C24]
zwi1=G[l12,{nu},(p1-k2+m U),{rho},{tau},{mu},{tau},{rho},(p2-m U),{be},
       (k2-p2+m U),{al},(p1+m U)]/u1/t1 c24;

Print[TRACE]
se1 = zwi1;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2) /. n->4+eps)],{eps,0,0}]]; 
ve12bare=Expand[(help2 /. {s->-t1-u1})];

Print[COUNTERTERM]
zwi1=G[l13,{nu},(p1-k2+m U),{mu},(p2-m U),{be},
       (k2-p2+m U),{al},(p1+m U)]/u1/t1 zvertex;

Print[TRACE]
se1 = zwi1;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normc*norm*help2) /. n->4+eps)],{eps,0,0}]]; 
ve12counter=Expand[(help2 /. {s->-t1-u1})];

ve12c24=ve12bare+ve12counter;

Print[BARE C21]
zwi1=G[l14,{nu},(p1-k2+m U),{rho},p2,{mu},p2,{rho},(p2-m U),{be},
       (k2-p2+m U),{al},(p1+m U)]/u1/t1;

Print[TRACE]
se1 = zwi1;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2*c21) /. n->4+eps)],{eps,0,0}]]; 
ve12c21=Expand[(help2 /. {s->-t1-u1})];

Print[BARE C22]
zwi1=G[l15,{nu},(p1-k2+m U),{rho},k1,{mu},k1,{rho},(p2-m U),{be},
       (k2-p2+m U),{al},(p1+m U)]/u1/t1;

Print[TRACE]
se1 = zwi1;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2*c22) /. n->4+eps)],{eps,0,0}]]; 
ve12c22=Expand[(help2 /. {s->-t1-u1})];

Print[BARE C23]
zwi1=G[l16,{nu},(p1-k2+m U),{rho},p2,{mu},k1,{rho},(p2-m U),{be},
       (k2-p2+m U),{al},(p1+m U)]/u1/t1 (-1);

zwi2=G[l17,{nu},(p1-k2+m U),{rho},k1,{mu},p2,{rho},(p2-m U),{be},
       (k2-p2+m U),{al},(p1+m U)]/u1/t1 (-1);

Print[TRACES]
se1 = zwi1+zwi2;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2*c23) /. n->4+eps)],{eps,0,0}]]; 
ve12c23=Expand[(help2 /. {s->-t1-u1})];


Print[BARE C0]
zwi1=G[l18,{nu},(p1-k2+m U),{rho},(k1-p2+m U),{mu},(-p2+m U),{rho},
       (p2-m U),{be},(k2-p2+m U),{al},(p1+m U)]/u1/t1;

Print[TRACE]
se1 = zwi1;
help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2*c0[p2,-k1,0,m,m]) /. n->4+eps)],
            {eps,0,0}]]; 
ve12c0=Expand[(help2 /. {s->-t1-u1})];

Print["BARE C11 + C12"]

zwi1=G[l19,{nu},(p1-k2+m U),{rho},p2,{mu},(-p2+m U),{rho},
       (p2-m U),{be},(k2-p2+m U),{al},(p1+m U)]/u1/t1 (-1);

zwi2=G[l20,{nu},(p1-k2+m U),{rho},k1,{mu},(-p2+m U),{rho},
       (p2-m U),{be},(k2-p2+m U),{al},(p1+m U)]/u1/t1 ;

zwi3=G[l21,{nu},(p1-k2+m U),{rho},(k1-p2+m U),{mu},p2,{rho},
       (p2-m U),{be},(k2-p2+m U),{al},(p1+m U)]/u1/t1 (-1);

zwi4=G[l22,{nu},(p1-k2+m U),{rho},(k1-p2+m U),{mu},k1,{rho},
       (p2-m U),{be},(k2-p2+m U),{al},(p1+m U)]/u1/t1;

Print["TRACES"]
se1 = (zwi1+zwi3)*c11+(zwi3+zwi4)*c12;

help1 = ContractEpsGamma[tenglu*se1];
help2 = ContractEpsGamma[tengam*help1];
Print[CONTRACTIONS]
help2=Normal[Series[Expand[((normv*norm*help2) /. n->4+eps)],
            {eps,0,0}]]; 
ve12c1=Expand[(help2 /. {s->-t1-u1})];

ve12= Expand[ve12c0+ve12c1+ve12c21+ve12c22+ve12c23+ve12c24];

Print["---------------------------------------------"]
