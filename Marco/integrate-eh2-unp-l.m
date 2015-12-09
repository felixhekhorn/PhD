(* 2->3 CONTRIBUTION: gamma q -> q Q QB - eQ2 PART *)
(* LONGITUDINAL PROJECTION *)

SetDirectory["/Users/marco/WORK/G1CHARM-NLO/GAMMAq-QQBq"]
<<tracer11.m

color=CF/2;
n=4+eps;
heavy=color*(<<pqm1m1-unp-l + <<pqm2m2-unp-l +2* <<pqm1m2-unp-l );

Print[MANDELSTAM REDUCTION]

zwi=heavy /. {u6->-sp-t1-ts,us->-sp-u1p-u7,s5->ts-u1p-u7,s3->-ts+u7-t1,
              s4->sp+t1+u1,eh->1,CF->1,m^2->m2,m^4->m2^2,m^6->m2^3};

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

I20=(-4*Pi*(m^2 + s4)^2)/(s4^2*(sp + t1)^2);

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
               ts/u7 -> IM11/I00,
               1/u7^2 -> I02/I00,
               1/u7 -> I01/I00};

intmarco = Expand[help];

(* POLE PART *)

pole = Coefficient[intmarco,1/eps] 1/eps;

willypole= (sp+t1)^3/u1^4 ( (s4^2+(sp+t1)^2)/(sp+t1)^2 * 
4 q2/sp^2 (sp t1 u1p - m2 sp^2 - q2 t1^2)/(t1 (sp+t1))); 



(*

(* finite piece *)
finite=Expand[Expand[intmarco]/. 1/eps->0] /. eps->0;



(* final result *)
(* include spin average in n dimensions *)

Print[FINITE LOGS]

zwi = finite /. {Log[m^2/(m^2 + s4)] -> ln1,
                 Log[((m^2 + s4)*t1^2*u1^2)/
                 (m^2*(s + t1)^2*(s + u1)^2)]-> ln2};

lll1 = Log[m^2/(m^2 + s4)];
lll2 = Log[((m^2 + s4)*t1^2*u1^2)/(m^2*(s + t1)^2*(s + u1)^2)];

log11 = Coefficient[zwi,ln1];
log12 = Factor[log11 /. s4->s+t1+u1];
log1 = Factor[log12 /. s+t1+u1->s4] lll1;


log21 = Coefficient[zwi,ln2] ;
log2=Factor[log21] lll2;

nolog = Factor[zwi /. {ln1 -> 0, ln2 -> 0}];

cccc=finite-log1-log2-nolog;

(* calculate factorized x-sec with correct normalization *)

(* 2 -> 3 *)

Print[POLE]

norm3 = 1/2 * 1/NC * AEM * ALPS^2 * EH^2 * NC * CF * 1/(4 Pi)^(eps/2) *
        1/Gamma[1+eps/2] * ((t1 u1 - s m^2)/s mu^2)^(eps/2); 

factor = 1/(4 Pi)^(eps/2) Gamma[1+eps/2]/Gamma[1+eps] * mu^(-eps) * 
       s4^(1+eps)/(s4+m^2)^(1+eps/2) 1/(1+eps/2) 1/Pi 1/16;

res3 = Expand[Normal[Series[Expand[pole*factor],{eps,0,1}]]];

mepole = norm3 Factor[Coefficient[res3,1/eps]] 1/eps;

help = Factor[Expand[res3] /. 1/eps->0];
mefinite = Factor[norm3 help /. eps->0];

(* check *)

willy= (s+t1)/u1^2 ((s4^2+(s+t1)^2)/(s+t1)^2) (
       -(t1^2+(s+t1)^2)/t1/(s+t1) + 4m^2 s/t1/u1(1-m^2 s/t1/u1));

(* factorization contribution *)

Print[FACTORIZATION]

x2=-u1/(s+t1);
pgq=CF(1+(1-x2)^2)/x2;
u=u1;
t=x2*t1;
ss=x2*s;
bqed=t/u+u/t+4m^2 ss/t/u (1-m^2 ss/t/u) + eps (-1+ss^2/t/u);

normf = - AEM/2/Pi EH^2 *
      2* Pi * ALPS^2 * 1/(2 CF NC) * 1/(4 Pi)^(eps/2) 1/Gamma[1+eps/2] *
      ((t1 u1 - s m^2)/s mu^2)^(eps/2) * NC * CF;

fact= normf * Normal[Series[Expand[1/x2 1/(s+t1) *  1/(1+eps/2)^2 *
      (2/eps+EulerGamma-Log[4Pi]+Log[muf^2/mu^2]) pgq bqed],{eps,0,1}]];

factpole = Coefficient[Expand[fact],1/eps] 1/eps;
help = Expand[fact] /. 1/eps->0;
factfinite = Factor[help /. eps->0];

(* finite pieces of 2->3 *)

Print[FINITE]

me23factor = (norm3 * factor) /. eps->0;
me23log1 = Factor[me23factor * log1];
me23log2 = Factor[me23factor * log2];
me23nolog = Factor[me23factor * nolog];

(* FINAL CROSS SECTION *)

Print[FINAL RESULT]

zwi = Factor[mepole + factpole] + 
      Factor[PowerExpand[(mefinite + factfinite)]]; 

final = Expand[zwi /. {Log[m^2+s4]->2Log[s4]-Log[s4^2/m^2/(s4+m^2)],
                        Log[muf] -> -1/2 Log[m^2/muf^2]}];

factlog = Factor[Coefficient[final,Log[m^2/muf^2]]] * Log[m^2/muf^2];
polelog = Factor[Coefficient[final,Log[s4^2/m^2/(s4+m^2)]]] *
              Log[s4^2/m^2/(s4+m^2)];
polerest = Factor[final /. Log[a_]->0];

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
