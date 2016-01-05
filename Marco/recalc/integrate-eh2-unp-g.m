(* ::Package:: *)

(* 2->3 CONTRIBUTION: gamma q -> q Q QB - eQ2 PART *)
(* g-munu PROJECTION *)

(* EDIT: FHe *)
SetDirectory["~/Physik/PhD/Marco/recalc"]
<<tracer11.m

color=CF/2;
n=4+eps;
heavy=color*(<<pqm1m1-unp-g + <<pqm2m2-unp-g +2* <<pqm1m2-unp-g );

Print[MANDELSTAM REDUCTION]

zwi=heavy /. {u6->-sp-t1-ts,us->-sp-u1p-u7,s5->ts-u1p-u7,s3->-ts+u7-t1,
              s4->sp+t1+u1,eh->1,CF->1,m^2->m2,m^4->m2^2,m^6->m2^3,m^8->m2^4};

unint=Expand[zwi /. {sp->s-q2,u1p->u1-q2}] ;

(* DEFINE INTEGRALS: (I) SINGULAR *)

I10=(-4*Pi*(m2 + s4))/(eps*s4*(sp + t1));

I11= (2*Pi*(m2 + s4))/(s4*t1*u1)*
(2/eps+Log[((m2 + s4)*t1^2*u1^2)/((-q2 + s + t1)^2*(q2*s4*t1 + m2*(-q2 + s + u1)^2))]);

I1M1=(2*Pi*(m2 + s4)*t1*u1)/(s4*(-q2 + s + t1)^2)*
    (2/eps - (s4*(2*m2*(q2 - s) - (2*q2 - s)*(q2 - s - t1) + (q2 - s + t1)*u1))/
    ((m2 + s4)*t1*u1));

I12=(2*Pi*(m2 + s4)*(q2 - s - t1))/(s4*t1^2*u1^2)*
(2/eps+Log[((m2 + s4)*t1^2*u1^2)/((-q2 + s + t1)^2*(q2*s4*t1 + m2*(-q2 + s + u1)^2))]+
(s4*(2*m2*(q2 - s)*(q2 - s - u1) + t1*(2*q2*s4 - u1*(s + u1))))/
 ((q2 - s - t1)*(q2*s4*t1 + m2*(-q2 + s + u1)^2)));

I21= (4*Pi*(m2 + s4)^2)/(s4^2*(q2 - s - t1)*t1*u1) * (
((s4*(q2 - s - t1)*(2*m2*(q2 - s)*(q2 - s - u1) + t1*(2*q2*s4 - u1*(s + u1))))/
 (2*(m2 + s4)*t1^2*u1^2))*(
 2/eps+Log[((m2 + s4)*t1^2*u1^2)/((-q2 + s + t1)^2*(q2*s4*t1 + m2*(-q2 + s + u1)^2))])+
(-1 + (2*s4^2*(m2*(q2 - s)^2 + t1*(q2*s4 - s*u1)))/((m2 + s4)*t1^2*u1^2)));

I22=(4*Pi*(m2 + s4)^2)/(s4^2*t1^2*u1^2) * (
((s4*(m2*(q2 - s)*(3*q2^2 + 3*s^2 + 2*t1*u1 + 3*s*(t1 + u1) - 
     3*q2*(2*s + t1 + u1)) + t1*(-3*q2^3 + q2^2*(6*s + 6*t1 + 4*u1) + 
     u1*(2*s^2 + t1*u1 + 2*s*(t1 + u1)) - 
     q2*(3*s^2 + 3*t1^2 + 4*t1*u1 + 2*u1^2 + 6*s*(t1 + u1)))))/
 ((m2 + s4)*t1^2*u1^2))*
 (2/eps+Log[((m2 + s4)*t1^2*u1^2)/((-q2 + s + t1)^2*(q2*s4*t1 + m2*(-q2 + s + u1)^2))])+
(-1 + (8*s4^2*(m2*(q2 - s)^2 + t1*(q2*s4 - s*u1)))/((m2 + s4)*t1^2*u1^2) + 
 (s4^2*(-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2))/
  (2*(q2*s4^2*t1 + m2^2*(-q2 + s + u1)^2 + 
    m2*(-q2^3 + 3*q2^2*(s + u1) + s4*(s + u1)^2 - 
      q2*(2*s^2 + s*t1 - t1^2 + 4*s*u1 + t1*u1 + 2*u1^2))))));

(* DEFINE INTEGRALS: (II) FINITE *)

I00=2 Pi;

I20=(-4*Pi*(m2 + s4)^2)/(s4^2*(sp + t1)^2);

I01=(2*Pi*(m2 + s4))/(s4*Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2])*
Log[(2*m2*(q2 - s - u1) + s4*(2*q2 - s - u1 + 
    Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2]))/
    (2*m2*(q2 - s - u1) - s4*(-2*q2 + s + u1 + 
    Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2]))];
    
I02=(2*Pi*(m2 + s4))/(q2*s4*t1 + m2*(-q2 + s + u1)^2);

IM11=Pi*((2*(2*m2*(q2 - s) - (2*q2 - s)*(q2 - s - t1) + (q2 - s + t1)*u1))/
 (4*q2*(m2 + s4) - (s + u1)^2)+
(2*(m2 + s4)*(2*m2*(q2 - s)*(q2 - s - u1) + t1*(2*q2*s4 - u1*(s + u1))))/
 (s4*(-4*q2*(m2 + s4) + (s + u1)^2)^(3/2))*
  Log[(2*m2*(q2 - s - u1) + s4*(2*q2 - s - u1 + 
    Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2]))/
    (2*m2*(q2 - s - u1) - s4*(-2*q2 + s + u1 + 
    Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2]))]);
   
   
IM12=Pi*( ((*!!*)2(*!!*)(m2 + s4)*(2*m2*(q2 - s)*(q2 - s - u1) + t1*(2*q2*s4 - u1*(s + u1))))/
 ((-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2)*
 (q2*s4*t1 + m2*(-q2 + s + u1)^2)) + 
  (2*(m2 + s4)*(2*q2^2 - 2*m2*(q2 - s) + s^2 + s*t1 + s*u1 - t1*u1 - 
   q2*(3*s + 2*t1 + u1)))/(s4*(-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2)^
   (3/2))*
   Log[(2*m2*(q2 - s - u1) + s4*(2*q2 - s - u1 + 
     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))/(2*m2*(q2 - s - u1) - 
   s4*(-2*q2 + s + u1 + Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))])

IM22=Pi*(  (2*(-q2 + s + t1)^2*((2*q2^2 + 2*m2*(-q2 + s) + s*(s + t1) + (s - t1)*u1 - 
      q2*(3*s + 2*t1 + u1))^2/(-q2 + s + t1)^2 - 
   (-4*m2*s + (-q2 + t1 + u1)^2)*
    (1 - (2*m2*q2 - q2^2 - 2*m2*s + q2*s + s*t1 + t1^2 + (q2 - s + t1)*u1)^2/
      ((-q2 + s + t1)^2*(-4*m2*s + (-q2 + t1 + u1)^2)))))/
 (-4*m2*q2 + 4*q2^2 + (s + u1)^2 - 4*q2*(s + t1 + u1))^2 +
 (2*(m2 + s4)*(2*m2*(q2 - s)*(q2 - s - u1) + t1*(2*q2*s4 - u1*(s + u1)))^2)/
 ((-4*q2*(m2 + s4) + (s + u1)^2)^2*(q2*s4*t1 + m2*(-q2 + s + u1)^2))+
 ( (4*(m2 + s4)*(2*q2^2 + 2*m2*(-q2 + s) + s*(s + t1) + (s - t1)*u1 - 
   q2*(3*s + 2*t1 + u1))*(2*m2*(q2 - s)*(q2 - s - u1) + 
   t1*(2*q2*s4 - u1*(s + u1))))/(s4*(-4*q2*(m2 + s4) + (s + u1)^2)^(5/2))+
  (4*(m2 + s4)*(m2*(q2 - s)^2 + q2*t1*(-q2 + s + t1) + (q2 - s)*t1*u1)*
  ((2*q2 - s - u1)*(q2 - s - t1 - u1) + 2*m2*(-q2 + s + u1)))/
 (s4*(-4*q2*(m2 + s4) + (s + u1)^2)^(5/2)))* Log[(2*m2*(q2 - s - u1) + s4*(2*q2 - s - u1 + 
     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))/(2*m2*(q2 - s - u1) - 
   s4*(-2*q2 + s + u1 + Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))])
    
(* INSERT INTEGRALS *)
Print[INTEGRALS]

zwi = Expand[unint I00];

help = zwi /. {1/ts^2/u7^2 -> I22/I00,
               1/ts^2/u7 -> I21/I00,
               1/ts/u7^2 -> I12/I00,
               1/ts/u7 -> I11/I00,
               u7/ts -> I1M1/I00,
               1/ts^2 -> I20/I00,
               1/ts -> I10/I00,
               ts^2/u7^2 -> IM22/I00,
               ts/u7^2 -> IM12/I00,
               ts/u7 -> IM11/I00,
               1/u7^2 -> I02/I00,
               1/u7 -> I01/I00};

intmarco = Expand[help];

(* EDIT: FHe *)
intmarco >> "intmarcoAG1"
(*
Module[{l,r},
l=CoefficientList[ts^2 u7^2 unint,{ts,u7}];
r=l[[1,1]]*I22+l[[1,2]]*I21+l[[1,3]]*I20
+l[[2,1]]*I12+l[[2,2]]*I11+l[[2,3]]*I10+l[[2,4]]*I1M1
+l[[3,1]]*I02+l[[3,2]]*I01+l[[3,3]]*I00+l[[4,2]]*IM11;
Simplify[r-intmarco]
]
*)

(* POLE PART *)
(*
pole = Coefficient[intmarco,1/eps] 1/eps;

willypole= (sp+t1)/u1^2 (s4^2+(sp+t1)^2)/(sp+t1)^2 (
-(t1^2+(sp+t1)^2)/t1/(sp+t1)+4m2 sp/t1/u1 (1-m2 sp/t1/u1) +
2sp q2/t1/u1 - 2q2^2 (sp+t1)/t1/u1^2 - 2m2 q2/t1^2/u1^2 (t1^2+(sp+t1)^2));

checkpole=FullSimplify[pole/willypole /. {s4->s-q2+t1+u1,sp->s-q2,u1p->u1-q2}];

(* finite piece *)
finite=Expand[Expand[intmarco]/. 1/eps->0] /. eps->0;
*)
(* final result *)
(* include spin average in n dimensions *)
(*
Print[FINITE LOGS]

zwi = finite /. {Log[((m2 + s4)*t1^2*u1^2)/((-q2 + s + t1)^2*(q2*s4*t1+ m2*(-q2 + s + u1)^2))] -> LLL1,
                 Log[(2*m2*(q2 - s - u1) + s4*(2*q2 - s - u1 + 
                     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))/
                     (2*m2*(q2 - s - u1) - s4*(-2*q2 + s + u1 + 
                     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))] -> LLL2};

log1 = Coefficient[Expand[zwi],LLL1];
log2 = Coefficient[Expand[zwi],LLL2];
nolog = zwi /. {LLL1->0,LLL2->0};

log11 = FullSimplify[FullSimplify[log1] /. {-q2+s -> sp, q2-s -> -sp}];
log22 = FullSimplify[log2];


LLL1 = Log[((m2 + s4)*t1^2*u1^2)/
           ((-q2 + s + t1)^2*(q2*s4*t1+ m2*(-q2 + s + u1)^2))];
LLL2 = Log[(2*m2*(q2 - s - u1) + s4*(2*q2 - s - u1 + 
                     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))/
                     (2*m2*(q2 - s - u1) - s4*(-2*q2 + s + u1 + 
                     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))]
                     
chkfin = finite - nolog - log11 LLL1 - log22 LLL2;


(* calculate factorized x-sec with correct normalization *)

(* 2 -> 3 *)

Print[POLE]

norm3 = 1/2 * 1/NC * AEM * ALPS^2 * EH^2 * NC * CF * 1/(4 Pi)^(eps/2) *
        1/Gamma[1+eps/2] * ( ((t1 u1p - sp m2)sp - q2 t1^2)/sp^2 mu^2)^(eps/2); 

factor = 1/(4 Pi)^(eps/2) Gamma[1+eps/2]/Gamma[1+eps] * mu^(-eps) * 
       s4^(1+eps)/(s4+m2)^(1+eps/2) 1/(1+eps/2) 1/Pi 1/16;
       
ageps = 1;          

res3 = Expand[Normal[Series[norm3*Expand[pole*factor*ageps],{eps,0,0}]]];

mepole = Factor[Coefficient[res3,1/eps]] 1/eps;

help = Factor[Expand[res3] /. 1/eps->0];
mefinite = Factor[help /. eps->0];

willyeq331 = -(sp+t1)/u1^2 (s4^2+(sp+t1)^2)/(sp+t1)^2 * (-2 +4m2 sp/t1/u1 *
(1-m2 sp/t1/u1) - 4m2 q2/t1/u1^2 (sp+t1)) - (t1^2+(sp+t1)^2)/t1/(sp+t1)^2;

bqed0=t1/u1 + u1/t1 + 4m2 sp/t1/u1 * (1- m2 sp/t1/u1) +
   2 sp q2/t1/u1 + 2 q2^2/t1/u1 + 2m2 q2/t1/u1 * (2-sp^2/t1/u1) +
   eps * (-1 + sp^2/t1/u1 + sp q2/t1/u1 + q2^2/t1/u1 - m2 q2 sp^2/t1^2/u1^2) +
   eps^2 * (sp^2/4/t1/u1);
*)
(*========factorization contribution=======*)
(*
Print[FACTORIZATION]

x2=-u1/(sp+t1);
pgq=CF (1+(1-x2)^2)/x2;
uu1=u1;
tt1=x2*t1;
ssp=x2*sp
ss=ssp+q2

bqed=tt1/uu1 + uu1/tt1 + 4m2 ssp/tt1/uu1 * (1- m2 ssp/tt1/uu1) +
   2ssp q2/tt1/uu1 + 2 q2^2/tt1/uu1 + 2m2 q2/tt1/uu1 * (2-ssp^2/tt1/uu1) +
   eps * (-1 + ssp^2/tt1/uu1 + ssp q2/tt1/uu1 + q2^2/tt1/uu1 - m2 q2 ssp^2/tt1^2/uu1^2) +
   eps^2 * (ssp^2/4/tt1/uu1);

normf = - AEM/2/Pi EH^2 *
      2* Pi * ALPS^2 * 1/(2 CF NC) * 1/(4 Pi)^(eps/2) 1/Gamma[1+eps/2] *
      (((t1 u1p - sp m2)sp -q2 t1^2)/sp^2 mu^2)^(eps/2) * NC * CF;

      
fact= Normal[Series[normf*Expand[1/x2 1/(sp+t1) * ageps * 1/(1+eps/2)^2 *
      (2/eps+EulerGamma-Log[4Pi]+Log[muf^2/mu^2]) pgq bqed],{eps,0,0}]];


factpole = Coefficient[Expand[fact],1/eps] 1/eps;

help = Expand[fact] /. 1/eps->0;
factfinite = Factor[help /. eps->0];
*)

(*----finite pieces of 2->3-----*)
(*
Print[FINITE]

me23factor = (norm3 * ageps * factor) /. eps->0;
*)


Module[{l,r},
l=CoefficientList[ts^2u7^2 unint,{ts,u7}];
r=l[[1,1]]*I22+l[[1,2]]*I21+l[[1,3]]*I20
+l[[2,1]]*I12+l[[2,2]]*I11+l[[2,3]]*I10+l[[2,4]]*I1M1
+l[[3,1]]*I02+l[[3,2]]*I01+l[[3,3]]*I00+l[[4,2]]*IM11;
Simplify[r-intmarco]
]


(*
me23log1 = Factor[me23factor * log1];
me23log2 = Factor[me23factor * log2];
me23nolog = Factor[me23factor * nolog];
*)


(* FINAL CROSS SECTION *)
(*
Print[FINAL RESULT]

zwifinal = Factor[mepole + factpole] + 
           Factor[PowerExpand[(mefinite + factfinite)]]; 

final = Expand[zwifinal /. {Log[m2+s4]->2Log[s4]-Log[s4^2/m2/(s4+m2)],
                            Log[muf] -> -1/2 Log[m2/muf^2]}];

factlog = Factor[Coefficient[final,Log[m2/muf^2]]] * Log[m2/muf^2];
polelog = Factor[Coefficient[final,Log[s4^2/m2/(s4+m2)]]] *
              Log[s4^2/m2/(s4+m2)];
polerest = Factor[final /. Log[a_]->0];

willychkrest = (sp+t1)/u1^2 * (s4^2 + (sp+t1)^2)/(sp+t1)^2 * 4 m2 sp/t1/u1 * (1-m2 sp/t1/u1) + 
               2 (sp+t1)/u1^2 * (s4^2+(sp+t1)^2)/(sp+t1)^2 *
               ( sp q2/t1/u1 - (m2 q2 (t1^2+(sp+t1)^2))/t1^2/u1^2 - q2^2 (sp+t1)/t1/u1^2) -
               (t1^2+(sp+t1)^2)/t1/(sp+t1)^2;
*)

(*

(* WRITE FINAL RESULTS *)

Print[OUTPUT]

FortranForm[factlog]>>qeh2unp.factlog;
FortranForm[polelog]>>qeh2unp.polelog;
FortranForm[polerest]>>qeh2unp.polerest;
FortranForm[me23log1]>>qeh2unp.log1;
FortranForm[me23log2]>>qeh2unp.log2;
FortranForm[me23nolog]>>qeh2unp.nolog;

(*
TeXForm[factlog]>>qeh2ufactlog.tex;
TeXForm[polelog]>>qeh2upolelog.tex;
TeXForm[polerest]>>qeh2upolerest.tex;
TeXForm[me23log1]>>qeh2ulog1.tex;
TeXForm[me23log2]>>qeh2ulog2.tex;
TeXForm[me23nolog]>>qeh2unolog.tex;
*)




*)
