(* 2->3 CONTRIBUTION: gamma q -> q Q QB - eqeQ PART *)
(* g_munu PROJECTION *)

(* EDIT: FHe *)
SetDirectory["~/Physik/PhD/Marco/recalc"]
<<tracer11.m

color=1;
n=4+eps;
mixed=color*2*(<<pqm1m3-unp-g + <<pqm1m4-unp-g +
               <<pqm2m3-unp-g + <<pqm2m4-unp-g );

(* NUMERICAL CHECK - PHYSICAL SET OF MANDELSTAM VARIABLES *)
rule = {s4 -> 75, q2 -> -5, u1 -> -25, t1 -> -15, s -> 110, sp -> 115, u1p->-20, m2 -> 0.5};
               
               
Print[MANDELSTAM REDUCTION]

zwi=Expand[mixed /. {u6->-sp-t1-ts,s3->-s5-t1-u1p,s4->sp+t1+u1,m^2->m2,m^4->m2^2,m^6->m2^3}];
step1=Expand[zwi];

(* partial fractioning *)
(* reduce terms with 4 Mandelstams first *)
help=Expand[step1 /. (us u7/s5/ts)->(2-sp/s5+sp/ts-s5/ts-ts/s5+u1p/s5-u1p/ts+ 
                                   sp u1p/s5/ts)];
help2=Expand[help /. (u7/s5/ts/us)->(-sp/s5/ts/us-u1p/s5/ts/us-1/s5/ts)];
help3=Expand[help2 /. (us/s5/ts/u7)->(-sp/s5/ts/u7-1/s5/u7+1/ts/u7)];
help4=Expand[help3 /. (1/s5/ts/us/u7)-> (1/sp (1/ts/us/u7-1/s5/us/u7-1/s5/ts/u7))];    
step2=Expand[help4 /. {sp->s-q2,u1p->u1-q2}];

(* terms with 3 Mandelstams *)
help=Expand[step2 /. {u7/ts/us -> (-sp-u1p-us)/ts/us,
                      u7/s5/us -> (-sp-u1p-us)/s5/us,
                      u7/s5/ts -> (-s5-u1p+ts)/s5/ts,
                      us/s5/ts -> (s5-sp-ts)/s5/ts,
                      us/ts/u7 -> (-sp-u1p-u7)/ts/u7,
                      us/s5/u7 -> (-sp-u1p-u7)/s5/u7,
                      ts/s5/u7 -> (u1p+s5+u7)/s5/u7,
                      ts/s5/us -> (s5-sp-us)/s5/us,
                      s5/ts/us -> (sp+ts+us)/ts/us}]
step3=Expand[help /. {sp->s-q2,u1p->u1-q2}];
                
help=Expand[step3 /. {1/s5/ts/u7 -> 1/u1p (-s5-u7+ts)/(s5 ts u7),                 
                      1/s5/ts/us -> 1/sp (s5-ts-us)/(s5 ts us),
                      1/(s5 us u7) -> 1/(-sp-u1p) (1/s5/us+1/s5/u7),
                      1/(ts us u7) -> 1/(-sp-u1p) (1/ts/us+1/ts/u7)}]
step4=Expand[help /. {sp->s-q2,u1p->u1-q2}];

(* remaining expressions with two 'ABC' Mandelstams *)

help = Expand[step4 /. { s5/us -> (sp+ts+us)/us,
                         us/s5 -> (s5-sp-ts)/s5,
                         u7/us -> (-sp-u1p-us)/us,
                         us/u7 -> (-sp-u1p-u7)/u7,
                         u7/s5 -> (ts-u1p-s5)/s5,
                         s5/u7 -> (ts-u1p-u7)/u7}]
step5=Expand[help /. {sp->s-q2,u1p->u1-q2}];

help = Expand[step5 /. {1/us/u7 -> -1/(sp+u1p)(1/us+1/u7),
                        1/s5/us -> 1/(sp+ts)(1/us-1/s5)}];

step6=Expand[help /. {sp->s-q2,u1p->u1-q2}];                  


help = step6  /. { s-q2->sp,u1-q2->u1p,-q2+s+ts->sp+ts,2q2-s-u1->-sp-u1p,
                  -2q2+s+u1->sp+u1p,q2-u1->-u1p,q2+ts-u1->ts-u1p};

unint = help;


(* DEFINE INTEGRALS IN SET I (ALL FINITE FOR Q2.NE.0) *)

I00 = 2Pi;

(* ---- SINGULAR ONES INVOLVING 1/ts ---- *)

(* 1/ts *)

I10ts=(-4*Pi*(m2 + s4))/(eps*s4*(sp + t1));

(* 1/ts/u7 *)

I11tsu7= (2*Pi*(m2 + s4))/(s4*t1*u1)*
         (2/eps+Log[((m2 + s4)*t1^2*u1^2)/((-q2 + s + t1)^2*(q2*s4*t1 + m2*(-q2 + s + u1)^2))]);

(* u7/ts *)

I1M1tsu7=(2*Pi*(m2 + s4)*t1*u1)/(s4*(-q2 + s + t1)^2)*
    (2/eps - (s4*(2*m2*(q2 - s) - (2*q2 - s)*(q2 - s - t1) + (q2 - s + t1)*u1))/
    ((m2 + s4)*t1*u1));

(* 1/ts/s5 *)

I11tss5 = (-2*Pi*(m2 + s4)*(2 + eps*Log[((m2 + s4)*(q2*s4 - s*u1)^2)/
                                        (m2*s^2*(-q2 + s + t1)^2)]))/
          (eps*s4*(q2*s4 - s*u1));

(* 1/ts/us *)

I11tsus = (2*Pi*(m2 + s4)*(2 + eps*
                Log[((m2 + s4)*(2*q2^2 + s*s4 - q2*(2*(s + t1) + u1))^2)/
                    (q2*(-q2 + s + t1)^2*(m2*q2 + s4*t1))]))/
          (eps*s4*(2*q2^2 + s*s4 - q2*(2*(s + t1) + u1)));
  
(* us/ts *)

I1M1tsus = (4*Pi*(m2 + s4)*(2*q2^2 + s*s4 - q2*(2*(s + t1) + u1)))/(eps*s4*(s4 - u1)^2) +
           (2*Pi*(2*m2*(q2 - s) + 2*q2*s4 - s*s4 - q2*u1 + t1*u1))/(s4 - u1)^2;
          
(* s5/ts *)

I1M1tss5 = (-4*Pi*(m2 + s4)*(q2*s4 - s*u1))/(eps*s4*(s4 - u1)^2) +
           (2*Pi*(2*m2*(q2 - s) + s4*(q2 + t1) - s*u1))/(s4 - u1)^2;
                   
           
(* --- FINITE INTEGRALS --- *)    
    
(* 1/s5 CHECKED*)

I01s5 = (2*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*s4) *
        Log[(2*m2*s + (s + Sqrt[-4*m2*s + (s - s4)^2] - s4)*s4)/
            (2*m2*s - s4*(-s + Sqrt[-4*m2*s + (s - s4)^2] + s4))];
 
(* 1/us CHECKED*)
I01us = (2*Pi*(m2 + s4))/(s4*Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]) *
        Log[(2*m2*q2 + s4*(2*q2 - s - u1 + Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))/
            (2*m2*q2 - s4*(-2*q2 + s + u1 + Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))]; 
 
(* 1/u7*)
        
I01u7 = (2*Pi*(m2 + s4))/(s4*Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2])*
                 Log[(2*m2*(q2 - s - u1) + s4*(2*q2 - s - u1 + 
                     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))/
                     (2*m2*(q2 - s - u1) - s4*(-2*q2 + s + u1 + 
                     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))];       
        
(* ts/s5 CHECKED*)

IM11tss5 = Pi * (  (2*(2*m2*q2 - q2^2 - 2*m2*s + q2*s + s*t1 + t1^2 + (q2 - s + t1)*u1))/
        (-4*m2*s + (s - s4)^2) +
        (2*(m2 + s4)*(q2^3 - q2^2*(s + 2*(t1 + u1)) + s*(2*m2*s - u1*(t1 + u1)) + 
         q2*(-2*m2*s + (t1 + u1)^2 + s*(t1 + 2*u1))))/
        ((-4*m2*s + (s - s4)^2)^(3/2)*s4) * 
   Log[(2*m2*s + (s + Sqrt[-4*m2*s + (s - s4)^2] - s4)*s4)/
      (2*m2*s - s4*(-s + Sqrt[-4*m2*s + (s - s4)^2] + s4))]);
                     
(* ts/u7 *)

IM11tsu7 = Pi*((2*(2*m2*(q2 - s) - (2*q2 - s)*(q2 - s - t1) + (q2 - s + t1)*u1))/
            (4*q2*(m2 + s4) - (s + u1)^2)+
            (2*(m2 + s4)*(2*m2*(q2 - s)*(q2 - s - u1) + t1*(2*q2*s4 - u1*(s + u1))))/
            (s4*(-4*q2*(m2 + s4) + (s + u1)^2)^(3/2))*
                  Log[(2*m2*(q2 - s - u1) + s4*(2*q2 - s - u1 + 
                     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))/
                     (2*m2*(q2 - s - u1) - s4*(-2*q2 + s + u1 + 
                     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))]);

(* ts/us  NUMERICALLY CHECKED *)                     
                     
IM11tsus = Pi * (   (2*(2*q2^2 + 2*m2*(-q2 + s) + s*(s + t1) + (s - t1)*u1 - 
                     q2*(3*s + 2*t1 + u1)))/(4*q2*(m2 + s4) - (s + u1)^2)  +
                    (-2*(m2 + s4)*(-4*q2^3 + 2*m2*q2*(q2 - s) + s*s4*(s + u1) + 
                     q2^2*(8*s + 6*t1 + 4*u1) - q2*(4*s^2 + 6*s*t1 + 2*t1^2 + 5*s*u1 + 
                     2*t1*u1 + u1^2)))/(s4*(-4*q2*(m2 + s4) + (s + u1)^2)^(3/2)) *
                 Log[(2*m2*q2 + s4*(2*q2 - s - u1 + Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))/
                     (2*m2*q2 - s4*(-2*q2 + s + u1 + Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))] );

(* 1/s5/(sp+ts) NUMERICALLY CHECKED *)

I11stss5 = (2*Pi*(m2 + s4))/(s*s4*t1)*
           Log[(m2*(q2 - s))/(m2*(q2 - s) + s4*t1)];                 
                 
(* 1/(sp+ts)/us NUMERICALLY CHECKED *)

I11stsus =  Pi * ((2*(m2 + s4))/(s*s4*t1) *
                  Log[((q2 - s)*(m2*q2 + s4*t1))/(q2*(m2*(q2 - s) + s4*t1))]  );                 

                  
(* 1/u7/s5 CALCULATED IN SET II WHERE q IS IN THE z DIRECTION *)
(* EDIT FHe: Join logs *)
I11u7s5 = (2*Pi*(m2 + s4)*(Log[(2*m2*s*(-q2 + s + u1) + 
                s4*(-(q2*s) + 2*q2*s4 - s4*u1 - Sqrt[4*m2*s*(q2 - u1)*(-2*q2 + s + u1) + 
                (q2*s - 2*q2*s4 + s4*u1)^2]))/ 
            (2*m2*s*(-q2 + s + u1) + s4*(-(q2*s) + 2*q2*s4 - s4*u1 + 
               Sqrt[4*m2*s*(q2 - u1)*(-2*q2 + s + u1) + (q2*s - 2*q2*s4 + s4*u1)^2]))]))/
           (s4*Sqrt[4*m2*s*(q2 - u1)*(-2*q2 + s + u1) + (q2*(s - 2*s4) + s4*u1)^2]);




                  
(* REPLACE ALL INTEGRALS *)                   
help = Expand[I00 unint /. {1/s5/ts ->I11tss5/I00,
                    1/u7/ts ->I11tsu7/I00,
                    1/us/ts ->I11tsus/I00,
                    1/s5/u7 ->I11u7s5/I00,
                    s5/ts   ->I1M1tss5/I00,
                    ts/s5   ->IM11tss5/I00,
                    us/ts   ->I1M1tsus/I00,
                    ts/us   ->IM11tsus/I00,
                    u7/ts   ->I1M1tsu7/I00,
                    ts/u7   ->IM11tsu7/I00,
                    1/(sp+ts)/us ->I11stsus/I00,
                    1/(sp+ts)/s5 ->I11stss5/I00,
                    1/s5     -> I01s5/I00,
                    1/us     -> I01us/I00,
                    1/u7     -> I01u7/I00,
                    1/ts     -> I10ts/I00}];

int = help /. {eps IM11tss5->0, eps IM11tsus->0, eps IM11tsu7->0,
               eps I11stsus->0, eps I11stss5->0, 
               eps I11u7s5->0,
               eps I01s5->0, eps I01u7->0, eps I01us->0, eps I00->0};    (* REMOVE eps TERMS INFRONT OF FINITE INTEGRALS *)

int >> "data/IntAG3"
