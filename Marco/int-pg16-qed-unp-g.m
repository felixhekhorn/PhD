Print["GENERATE SIMPLIFIED RESULTS FOR gamma* g -> Q Qbar g"]
Print["          QED - PART : (M1,...,M6) "]
Print["       (UNPOLARIZED - gmunu PROJECTION)"]
Print["==================================================="]
Print[" "]

SetDirectory["/Users/marco/WORK/G1CHARM-NLO/GAMMAg-QQBg"]
<<tracer11.m

c1=CF/2;
c2=1/2 (CF-NC/2);
NC = 0;

me1=(<<pgm1m1-unp-g + <<pgm2m2-unp-g + <<pgm3m3-unp-g + <<pgm4m4-unp-g + <<pgm5m5-unp-g + <<pgm6m6-unp-g)*c1+
    (<<pgm1m4-unp-g + <<pgm1m5-unp-g)*2*c1+
    (<<pgm1m2-unp-g + <<pgm1m3-unp-g + <<pgm1m6-unp-g)*2*c2+
    (<<pgm2m3-unp-g + <<pgm2m6-unp-g)*2*c1+
    (<<pgm2m4-unp-g + <<pgm2m5-unp-g)*2*c2+
    (<<pgm3m6-unp-g)*2*c1+
    (<<pgm3m4-unp-g + <<pgm3m5-unp-g)*2*c2+
    (<<pgm4m5-unp-g)*2*c1+
    (<<pgm4m6-unp-g)*2*c2+
    (<<pgm5m6-unp-g)*2*c2

res = me1 /. {m^2->m2,m^4->m2^2,m^6->m2^3,m^8->m2^4,m^10->m2^5}; 

(* unpolarized *)

glu = Expand[res /. {CF->1,d->4+eps,n->4+eps,lglu->0}];


(* reduce Mandelstams and separate different color factors *)

help = Expand[glu /. s5->sp+ts+us];
zwi = Expand[help /. {ts->-sp-t1-u6,
                      us->-sp-u1-u7}];

help = zwi /. {eps->0};  (* ALL eps pieces removed : NO collinear
                            poles and soft poles (1/s4) are introduced
                            via soft cross section !! *)
zwi = Expand[help];

decompcf = zwi;
savecf=decompcf;

(* ---  CF PART --- *)

zwi = Expand[decompcf];

(* REDUCTION: KEEP (u6,s3) and (u6,u7) in SET I *)
(*            KEEP ONLY 1/s3^a/u7^b in SET II *)

help = Expand[zwi /. {u7^3/s3/u6   -> (s3-sp-u6)^3/s3/u6,
		      u7^3/u6      -> (s3-sp-u6)^3/u6,
                      u7^2/s3/u6^2 -> (s3-sp-u6)^2/s3/u6^2,
                      u7^2/s3/u6   -> (s3-sp-u6)^2/s3/u6,
                      s3 u7^2/u6   -> (s3-sp-u6)^2 s3/u6,
                      s3 u7/u6     -> (s3-sp-u6) s3/u6,
                    
                      s3 u6^2/u7   -> (sp+u6+u7) u6^2/u7,
	              s3 u6/u7     -> (sp+u6+u7) u6/u7,
                      
                      u7/s3^2/u6^2 -> (s3-sp-u6)/s3^2/u6^2,
                      u7/s3/u6^2   -> (s3-sp-u6)/s3/u6^2,
                      u7/s3^2/u6   -> (s3-sp-u6)/s3^2/u6,
                      u7/s3/u6     -> (s3-sp-u6)/s3/u6,
              	      
                      u6^3/s3/u7   -> (s3-sp-u7)^3/s3/u7,
                      u6^2/s3/u7^2 -> (s3-sp-u7)^2/s3/u7^2,
                      u6^2/s3/u7   -> (s3-sp-u7)^2/s3/u7,
                      u6/s3^2/u7^2 -> (s3-sp-u7)/s3^2/u7^2,
                      u6/s3/u7^2   -> (s3-sp-u7)/s3/u7^2,
                      u6/s3^2/u7   -> (s3-sp-u7)/s3^2/u7,
                      u6/s3/u7     -> (s3-sp-u7)/s3/u7,
                    
                      1/s3^2/u6/u7 -> 1/sp (1/s3/u6/u7-1/s3^2/u6-1/s3^2/u7)}];

zwi = Expand[help /.  1/s3/u6/u7   -> 1/sp (1/u6/u7-1/s3/u6-1/s3/u7)];

(* terms with 2 Mandelstams *)

help = Expand[zwi /. {u7^2/u6 -> (s3-sp-u6)^2/u6,
                      u7/u6^2 -> (s3-sp-u6)/u6^2,
                      u7/u6   -> (s3-sp-u6)/u6,
                    
                      u7^3/s3 -> (s3-sp-u6)^3/s3,
                      u7^2/s3 -> (s3-sp-u6)^2/s3,
                      u7/s3^2 -> (s3-sp-u6)/s3^2,
                      u7/s3   -> (s3-sp-u6)/s3,
                    
                      u6 u7   -> u6 (s3-sp-u6),
                      s3^2/u7 -> (sp+u6+u7)^2/u7,
                      s3/u7^2 -> (sp+u6+u7)/u7^2,
                      s3/u7   -> (sp+u6+u7)/u7,
                      u7^2    -> (s3-sp-u6)^2,
                      s3 u7   -> s3 (s3-sp-u6)}];

decompcf = Expand[Together[help]];

Print["PHASE SPACE INTEGRATION"]


(* insert integrals *)

(* ---  CF PART --- *)

zwi = Expand[decompcf * I00];

help = zwi /. {s3^2/u6 -> I1m2u6s3/I00,
               u6^2/u7 -> Im21u6u7/I00,
               
               s3/u6^2 -> I2m1u6s3/I00,
               s3/u6   -> I1m1u6s3/I00,
               
               u6/u7^2 -> Im12u6u7/I00,
               u6/u7   -> Im11u6u7/I00,
               u6/s3   -> Im11u6s3/I00,
               
               1/s3^2/u6^2 -> I22u6s3/I00,
               1/s3/u6^2   -> I21u6s3/I00,
               1/s3^2/u6   -> I12u6s3/I00,
               1/s3/u6     -> I11u6s3/I00,
               
               1/u6/u7 -> I11u6u7/I00,
               
               1/s3^2/u7^2 -> I22u7s3/I00,   (* IN SET II *)
               1/s3/u7^2   -> I21u7s3/I00,   (* IN SET II *)
               1/s3^2/u7   -> I12u7s3/I00,   (* IN SET II *)
               1/s3/u7     -> I11u7s3/I00,   (* IN SET II *)
               
               1/u7^2 -> I02u7/I00,
               1/u6^2 -> I20u6/I00,
	       1/s3^2 -> I02s3/I00,
               
               1/u7 -> I01u7/I00,
               1/s3 -> I01s3/I00,
               1/u6 -> I10u6/I00};
               
zwi = Expand[help /. u7 ->s3-sp-u6];

help = zwi /. {s3 -> I0m1s3/I00,
               u6 -> Im10u6/I00};

glu16cf = Expand[help /. eps->0];

Print[READY]

(*INSERT INTEGRALS *)

I00 = 2 Pi;

(* 1/u7 *)
        
I01u7 = (2*Pi*(m2 + s4))/(s4*Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2])*
                 Log[(2*m2*(q2 - s - u1) + s4*(2*q2 - s - u1 + 
                     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))/
                     (2*m2*(q2 - s - u1) - s4*(-2*q2 + s + u1 + 
                     Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))];      

(* 1/u7^2 *)

I02u7 = (2*Pi*(m2 + s4))/(q2*s4*t1 + m2*(-q2 + s + u1)^2);


(* 1/u6 *)

I10u6 = (2*Pi*(m2 + s4)*Log[(m2 + s4)/m2])/(s4*(q2 - s - t1));


(* 1/u6^2 *)

I20u6 = (2*Pi*(m2 + s4))/(m2*(-q2 + s + t1)^2);


(* 1/s3 *)

I01s3 =  (2*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*s4) * 
               Log[(2*m2 - s - Sqrt[-4*m2*s + (s - s4)^2] + s4)/
                   (2*m2 - s + Sqrt[-4*m2*s + (s - s4)^2] + s4)];

(* 1/s3^2 *)

I02s3 = (2*Pi*(m2 + s4))/(m2*s4^2);


(* u6 *)

Im10u6 = -((Pi*(2*m2 + s4)*(-q2 + s + t1))/(m2 + s4));


(* s3 *)

I0m1s3 = -((Pi*s4*(2*m2 - s + s4))/(m2 + s4));


(* 1/u6 s3 *)

I11u6s3 = (2*Pi*(m2 + s4))/(s4*Sqrt[q2*s4 - s*u1]*Sqrt[q2*s4 - s*u1 + 4*m2*(-s4 + u1)]) *
           Log[(q2*s4 + 2*m2*(q2 - s - t1) - s*u1 - Sqrt[q2*s4 - s*u1]*
               Sqrt[q2*s4 + 4*m2*(q2 - s - t1) - s*u1])/(q2*s4 + 2*m2*(q2 - s - t1) - 
               s*u1 + Sqrt[q2*s4 - s*u1]*Sqrt[q2*s4 + 4*m2*(q2 - s - t1) - s*u1])];
               
(* 1/u6^2 s3 *)

I21u6s3 = Pi * ( (-2*(m2 + s4)*(2*m2*(q2 - s) + q2*s4 - s*u1))/
                     (m2*(q2 - s - t1)*((4*m2 - q2)*(q2 - s - t1) + (q2 - s)*u1)*(q2*s4 - s*u1))  +
                 (2*(m2 + s4)*(-((q2 - t1 - u1)*(q2*s4 - s*u1)) + 
                    2*m2*(-q2^2 + s*(s + t1 - u1) + q2*(t1 + u1))))/
                    (s4*(q2*s4 - s*u1)^(3/2)*(q2*s4 + 4*m2*(q2 - s - t1) - s*u1)^(3/2)) *
            Log[(q2*s4 + 2*m2*(q2 - s - t1) - s*u1 - Sqrt[q2*s4 - s*u1]*
               Sqrt[q2*s4 + 4*m2*(q2 - s - t1) - s*u1])/(q2*s4 + 2*m2*(q2 - s - t1) - 
               s*u1 + Sqrt[q2*s4 - s*u1]*Sqrt[q2*s4 + 4*m2*(q2 - s - t1) - s*u1])]  );
 
(* 1/u6 s3^2 *)

I12u6s3 = Pi (   (-2*(m2 + s4)*((q2 - t1 - u1)*(q2*s4 - s*u1) + 
                      2*m2*(q2^2 - s*(s + t1 - u1) - q2*(t1 + u1))))/
                      (m2*s4^2*((4*m2 - q2)*(q2 - s - t1) + (q2 - s)*u1)*(q2*s4 - s*u1)) +
                  (-2*(m2 + s4)*(q2 - s - t1)*(2*m2*(q2 - s) + q2*s4 - s*u1))/
                      (s4*(q2*s4 - s*u1)^(3/2)*(q2*s4 + 4*m2*(q2 - s - t1) - s*u1)^(3/2)) *
                   Log[(q2*s4 + 2*m2*(q2 - s - t1) - s*u1 - Sqrt[q2*s4 - s*u1]*
                         Sqrt[q2*s4 + 4*m2*(q2 - s - t1) - s*u1])/(q2*s4 + 2*m2*(q2 - s - t1) - 
                         s*u1 + Sqrt[q2*s4 - s*u1]*Sqrt[q2*s4 + 4*m2*(q2 - s - t1) - s*u1])]  );

(* 1/u6^2 s3^2 *)

I22u6s3 = Pi (   (2*(m2 + s4))/(m2*((4*m2 - q2)*(q2 - s - t1) + (q2 - s)*u1)*(q2*s4 - s*u1)) +
                 (2*(m2 + s4)*(4*m2*s - (-q2 + t1 + u1)^2))/
                        (m2*s4^2*((4*m2 - q2)*(q2 - s - t1) + (q2 - s)*u1)*(-(q2*s4) + s*u1)) -
                 (-24*(m2 + s4)*(m2*(q2 - s)^2 + q2*t1*(-q2 + s + t1) + (q2 - s)*t1*u1))/
                        ((q2*s4 - s*u1)^2*(q2*s4 + 4*m2*(q2 - s - t1) - s*u1)^2) +
               (  (2*(m2 + s4)*(2*m2*q2 - q2^2 - 2*m2*s + q2*s + s*t1 + t1^2 + 
                        (q2 - s + t1)*u1))/(s4*(q2*s4 - s*u1)^(3/2)*
                        (q2*s4 + 4*m2*(q2 - s - t1) - s*u1)^(3/2))   +
                  (6*(m2 + s4)*(q2 - s - t1)*(2*m2*(q2 - s) + q2*s4 - s*u1)*
                        ((q2 - t1 - u1)*(q2*s4 - s*u1) + 2*m2*(q2^2 - s*(s + t1 - u1) - 
                        q2*(t1 + u1))))/(s4*(q2*s4 - s*u1)^(5/2)*
                         (q2*s4 + 4*m2*(q2 - s - t1) - s*u1)^(5/2))    ) *
                    Log[(q2*s4 + 2*m2*(q2 - s - t1) - s*u1 - Sqrt[q2*s4 - s*u1]*
                         Sqrt[q2*s4 + 4*m2*(q2 - s - t1) - s*u1])/(q2*s4 + 2*m2*(q2 - s - t1) - 
                         s*u1 + Sqrt[q2*s4 - s*u1]*Sqrt[q2*s4 + 4*m2*(q2 - s - t1) - s*u1])]  );

(* u6/s3 *)

IM11u6s3 = Pi (  (2*(2*m2*q2 - q2^2 - 2*m2*s + q2*s + s*t1 + t1^2 + (q2 - s + t1)*u1))/
                       (-4*m2*s + (s - s4)^2)  +
                  (2*(m2 + s4)*((s - s4)*(-(q2*s4) + s*u1) + 
                        2*m2*(-q2^2 + s*(s + t1 - u1) + q2*(t1 + u1))))/
                        ((-4*m2*s + (s - s4)^2)^(3/2)*s4)*
                Log[(2*m2 - s - Sqrt[-4*m2*s + (s - s4)^2] + s4)/
                    (2*m2 - s + Sqrt[-4*m2*s + (s - s4)^2] + s4)] ) ;

                         
                         
                         
                         

(*

Print["SIMPLIFY : 1. STEP"]

finite = FullSimplify[glu16cf /. s4->sp+t1+u1] /. sp+t1+u1->s4;

(*INSERT INTEGRALS *)


 

I0m1s3 = -((Pi*s4*(2*m^2 + t1 + u1))/(m^2 + s4));

Im10u6 = -((Pi*(2*m^2 + s4)*(s + t1))/(m^2 + s4));



Im20u6 =  (2*Pi*(3*m^4 + 3*m^2*s4 + s4^2)*(s4 - u1)^2)/(3*(m^2 + s4)^2);

I0m2s3 = s4^2*((2*Pi*(3*m^4 + (s - s4)^2 + 
     m^2*(-4*s + 3*s4)))/(3*(m^2 + s4)^2));

Im1m1u6s3 = s4 * ((Pi*(3*(2*m^2 + s4)*(2*m^2 - s + s4)*(s4 - u1) + 
       s4*(s4*t1 - s*(2*m^2 + u1))))/(6*(m^2 + s4)^2));
 
I11u6u7 = (-4*Pi*(m^2 + s4)*Log[1 + (s4*(s*s4 - 
           s^(1/2)*(s*s4^2 + 4*m^2*(s*s4 + t1*u1))^(1/2)))/
       (2*m^2*(s*s4 + t1*u1))])/
       (s4*(s*(s*s4^2 + 4*m^2*(s*s4 + t1*u1)))^(1/2));

Im11u6u7 = (-2*Pi*(2*m^2*s + s*s4 - t1*u1))/(s4 - t1)^2 + 
  (2*Pi*s*(m^2 + s4)*(2*m^2 + s4)*Log[1 + s4/m^2])/(s4*(s4 - t1)^2);

l6 = Log[(2*m^2*s4 + (-2*m^2 + s)*u1 - 
         Sqrt[s*u1*(4*m^2*s4 + (-4*m^2 + s)*u1)])/
       (2*m^2*s4 + (-2*m^2 + s)*u1 + 
       Sqrt[s*u1*(4*m^2*s4 + (-4*m^2 + s)*u1)])];

I11u6s3 = 1/s4 ((-2*l6*Pi*(m^2 + s4))/Sqrt[s*u1*(4*m^2*s4 + 
                                           (-4*m^2 + s)*u1)]);

l1 = -Log[1 + s4/m^2];

I1m1u6s3 = s4 * ((-2*l1*Pi*s*(m^2 + s4)*(2*m^2 + u1))/(s4^2*(s4 - u1)^2) + 
   (2*Pi*(s4*t1 - s*(2*m^2 + u1)))/(s4*(s4 - u1)^2));

Im11u6s3 = (1/s4) *((-2*l3*Pi*s*(m^2 + s4)*(2*m^2*(s4 - 2*u1) + 
    (s - s4)*u1))/(-4*m^2*s + (s - s4)^2)^(3/2) + 
   (2*Pi*s4*(s4*t1 - s*(2*m^2 + u1)))/(-4*m^2*s + (s - s4)^2));

Im21u6s3 = (1/s4) * ((-2*l3*Pi*s*(m^2 + s4)*(6*m^4*s*s4^2 - 
        2*m^2*s4*(8*m^2*s + (2*s + s4)*t1)*u1 + 
        s*((-4*m^2 + s)^2 + 4*m^2*s4 - 2*s*s4 + s4^2)*u1^2))/
    (-4*m^2*s + (s - s4)^2)^(5/2) + 
   (Pi*s4*(-2*(-4*m^2*s + (s - s4)^2)*(2*m^2 + s4)*(s4 - u1)*
         (s4*t1 - s*(2*m^2 + u1)) + 
        s4*(2*m^2 - s + s4)*((2*m^2*s - s4*t1 + s*u1)^2 + 
           2*s*(m^2 + s4)*(m^2*s - t1*u1))))/
    ((-4*m^2*s + (s - s4)^2)^2*(m^2 + s4)));

I02u7 = (2*Pi*(m^2 + s4))/(m^2*(s4 - t1)^2) + 
   eps*((2*l1*m^2*Pi)/(s4*t1^2) + 
      (l1*Pi*(-2*m^4*s4 + 4*m^4*t1 + (3*m^2 + s4)*t1^2))/
       (m^2*(s4 - t1)^2*t1^2));

Im12u6u7 =   (-2*Pi*s*(m^2 + s4)*(2*m^2 + s4))/(m^2*(s4 - t1)^3) - 
   (2*l1*Pi*(m^2 + s4)*(2*m^2*s + s*s4 - t1*u1))/(s4*(s4 - t1)^3);

Im21u6u7 =   (Pi*(2*m^2 + s4)*(s^2*(6*m^4 + 10*m^2*s4 + 3*s4^2) - 
        2*s*(m^2 + 2*s4)*t1*u1 - t1^2*u1^2))/((m^2 + s4)*(s4 - t1)^3) + 
   (2*l1*Pi*s*(m^2 + s4)*(6*m^4*s + s*s4^2 + m^2*(4*s*s4 - 2*t1*u1)))/
    (s4*(s4 - t1)^3);

l6 = Log[(2*m^2*s4 + (-2*m^2 + s)*u1 - 
      Sqrt[s*u1*(4*m^2*s4 + (-4*m^2 + s)*u1)])/
      (2*m^2*s4 + (-2*m^2 + s)*u1 + 
      Sqrt[s*u1*(4*m^2*s4 + (-4*m^2 + s)*u1)])];

I21u6s3 = (1/s4) (  (-2*Pi*s4*(m^2 + s4)*(2*m^2 + u1))/
    (m^2*(s4 - u1)*u1*(4*m^2*s4 + (-4*m^2 + s)*u1)) - 
   (2*l6*Pi*s*(m^2 + s4)*(2*m^2*(s4 - 2*u1) + (s - s4)*u1))/
    (s*u1*(4*m^2*s4 + (-4*m^2 + s)*u1))^(3/2));

I12u6s3 =  (1/s4^2) * (Pi*((2*l6*s*s4*(m^2 + s4)*(s4 - u1)*(2*m^2 + u1))/
      (s*u1*(4*m^2*s4 + (-4*m^2 + s)*u1))^(3/2) + 
     (2*(m^2 + s4)*(2*m^2*(s4 - 2*u1) + (s - s4)*u1))/
      (m^2*u1*(4*m^2*s4 + (-4*m^2 + s)*u1))));

I22u6s3 = (1/s4^2) * ((2*Pi*(m^2 + s4)*(12*m^4*s*s4^2 - 
        4*m^2*s4*(4*m^2*s - s^2 + 2*s*s4 + s4*(-2*s4 + 3*t1))*u1 + 
        (4*m^2 - s)*(4*m^2*s - s^2 + 2*s*s4 - 2*s4^2)*u1^2))/
    (m^2*s*u1^2*(4*m^2*s4 + (-4*m^2 + s)*u1)^2) + 
   (4*l6*Pi*s*s4*(m^2 + s4)*(2*m^4*s*(3*s4 - 4*u1)*(s4 - u1) - 
        s*u1^2*(2*s4*t1 + s*u1) + 
        m^2*u1*(3*s^3 - 2*s4*t1^2 + s^2*(t1 - 3*u1) - 2*s*t1*(t1 + 3*u1))))/
    (s*u1*(4*m^2*s4 + (-4*m^2 + s)*u1))^(5/2));

I1m2u6s3 = s4^2 (  (2*Pi*(2*m^2 - s + s4)*(2*m^2*s - s4*t1 + s*u1))/
    (s4*(m^2 + s4)*(s4 - u1)^2) + 
   (2*l1*Pi*s*(m^2 + s4)*(6*m^4*s + s*u1^2 + m^2*(4*s*u1 - 2*t1*u1)))/
    (s4^3*(s4 - u1)^3) + (Pi*(2*m^2 + s4)*
      ((2*m^2*s - s4*t1 + s*u1)^2 + 2*s*(m^2 + s4)*(m^2*s - t1*u1)))/
    (s4^2*(m^2 + s4)*(s4 - u1)^3));

I11u7s3 = (2*Pi*(m^2 + s4)*Log[(2*m^2*s + s*t1 + 2*m^2*u1 + 
        s^(1/2)*t1^(1/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(1/2))/
      (2*m^2*s + s*t1 + 2*m^2*u1 - 
        s^(1/2)*t1^(1/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(1/2))])/
  (s^(1/2)*s4*t1^(1/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(1/2));

I12u7s3 = (2*Pi*(m^2 + s4)*(2*m^2*s - 2*m^2*t1 - t1^2 + 2*m^2*u1 - t1*u1))/
   (m^2*s4^2*t1*(4*m^2*s + s*t1 + 4*m^2*u1)) - 
  (2*Pi*(m^2 + s4)*(2*m^2 + t1)*(s + u1)*
     Log[(2*m^2*s + s*t1 + 2*m^2*u1 + 
         s^(1/2)*t1^(1/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(1/2))/
       (2*m^2*s + s*t1 + 2*m^2*u1 - 
         s^(1/2)*t1^(1/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(1/2))])/
   (s^(1/2)*s4*t1^(3/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(3/2));

I21u7s3 = (-2*Pi*(m^2 + s4)*(2*m^2 + t1))/
   (m^2*t1*(s + u1)*(4*m^2*s + s*t1 + 4*m^2*u1)) + 
  (2*Pi*(m^2 + s4)*(2*m^2*s - 2*m^2*t1 - t1^2 + 2*m^2*u1 - t1*u1)*
     Log[(2*m^2*s + s*t1 + 2*m^2*u1 + 
         s^(1/2)*t1^(1/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(1/2))/
       (2*m^2*s + s*t1 + 2*m^2*u1 - 
         s^(1/2)*t1^(1/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(1/2))])/
   (s^(1/2)*s4*t1^(3/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(3/2));

I22u7s3 = (24*Pi*(m^2 + s4)*(m^2*s - t1*u1))/
       (s*t1^2*(4*m^2*s + s*t1 + 4*m^2*u1)^2) + 
  (2*Pi*(m^2 + s4)*(-4*m^2*s + s^2 + 2*s*t1 + 2*t1^2 + 2*s*u1 + 4*t1*u1 + 
       2*u1^2))/(m^2*s*s4^2*t1*(4*m^2*s + s*t1 + 4*m^2*u1)) + 
  ((2*Pi*(m^2 + s4)*(-2*m^2*s - s*t1 + s4*u1))/
      (s^(3/2)*s4*t1^(3/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(3/2)) + 
     (6*Pi*(m^2 + s4)*(2*m^2 + t1)*(s + u1)*
        (-2*m^2*s + 2*m^2*t1 + t1^2 - 2*m^2*u1 + t1*u1))/
      (s^(1/2)*s4*t1^(5/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(5/2)))*
   Log[(2*m^2*s + s*t1 + 2*m^2*u1 + 
       s^(1/2)*t1^(1/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(1/2))/
     (2*m^2*s + s*t1 + 2*m^2*u1 - 
       s^(1/2)*t1^(1/2)*(4*m^2*s + s*t1 + 4*m^2*u1)^(1/2))];

Im1m1u7s3 = (Pi*s4*(6*m^4*s + 2*m^2*s*s4 + 3*m^2*s*t1 + s^2*t1 + 
      s*t1^2 + 6*m^4*u1 + 
      2*s^2*u1 + 6*m^2*s4*u1 + 5*s*t1*u1 + 2*t1^2*u1 + 4*s*u1^2 + 
      4*t1*u1^2 + 2*u1^3))/(3*(m^2 + s4)^2);

I2m1u6s3 = s4 * (
  (-2*Pi*s*(m^2 + s4)*(2*m^2 + u1))/(m^2*s4*(s4 - u1)^3) - 
   (2*l1*Pi*(m^2 + s4)*(2*m^2*s - s4*t1 + s*u1))/(s4^2*(s4 - u1)^3));


Print["FINITE PIECES CONTAINING NO LOG"]

nologh = (finite /. Log[a_]->0) /. s4->s+t1+u1;
(* nolog =  FullSimplify[nologh] /. s+t1+u1->s4; *)
nolog = Factor[nologh] /. s+t1+u1->s4;

rest = Expand[finite - (finite /. Log[a_]->0)];

Print["FINITE PIECES CONTAINING LOG's"]

log11h = Coefficient[rest,Log[m^2/(m^2+s4)]];
log12h = Coefficient[rest,Log[1+s4/m^2]];
log1h = log11h-log12h;
log2h = Coefficient[rest,Log[(m^2+s4) t1^2 u1^2/m^2/(s+t1)^2/(s+u1)^2]];
log3h = Coefficient[rest,Log[(m^2+s4)t1^2/m^2/(s+t1)^2]];

log1 = (FullSimplify[log1h /. s4->s+t1+u1] /. s+t1+u1->s4) Log[m^2/(m^2+s4)];
Print["1"]

log2 = (FullSimplify[log2h /. s4->s+t1+u1] /. s+t1+u1->s4) *
        Log[(m^2+s4) t1^2 u1^2/m^2/(s+t1)^2/(s+u1)^2];
Print["2"]

log3 = (FullSimplify[log3h /. s4->s+t1+u1] /. s+t1+u1->s4) *
        Log[(m^2+s4)t1^2/m^2/(s+t1)^2];
Print["3"]

resth = rest /. { Log[m^2/(m^2+s4)] -> 0, Log[1+s4/m^2]->0,
                  Log[(m^2+s4) t1^2 u1^2/m^2/(s+t1)^2/(s+u1)^2] ->0,
                  Log[(m^2+s4)t1^2/m^2/(s+t1)^2] ->0 };

log4h = Coefficient[resth,Log[(2m^2+t1+u1-(-4m^2 s+(t1+u1)^2)^(1/2))/
                              (2m^2+t1+u1+(-4m^2 s+(t1+u1)^2)^(1/2))]];
log4 =  (FullSimplify[log4h /. s4->s+t1+u1] /. s+t1+u1->s4) *
         Log[(2m^2+t1+u1-(-4m^2 s+(t1+u1)^2)^(1/2))/
             (2m^2+t1+u1+(-4m^2 s+(t1+u1)^2)^(1/2))];
Print["4"]

rest = resth /. Log[(2m^2+t1+u1-(-4m^2 s+(t1+u1)^2)^(1/2))/
             (2m^2+t1+u1+(-4m^2 s+(t1+u1)^2)^(1/2))] ->0 ;

log5h = Coefficient[rest,Log[1 + (s4*(s*s4 - Sqrt[s]*
         Sqrt[s*s4^2 + 4*m^2*(s*s4 + t1*u1)]))/(2*m^2*(s*s4 + t1*u1))]]; 
log5 =  (FullSimplify[log5h /. s4->s+t1+u1] /. s+t1+u1->s4) *
         Log[1 + (s4*(s*s4 - Sqrt[s]*Sqrt[s*s4^2 + 4*m^2*(s*s4 + t1*u1)]))/
             (2*m^2*(s*s4 + t1*u1))];
Print["5"]

resth = rest /. Log[1 + (s4*(s*s4 - Sqrt[s]*
           Sqrt[s*s4^2 + 4*m^2*(s*s4 + t1*u1)]))/(2*m^2*(s*s4 + t1*u1))] ->0;

lll = Log[(2*m^2*s4 + (-2*m^2 + s)*u1 - 
         (s*u1*(4*m^2*s4 + (-4*m^2 + s)*u1))^(1/2))/
         (2*m^2*s4 + (-2*m^2 + s)*u1 + 
         (s*u1*(4*m^2*s4 + (-4*m^2 + s)*u1))^(1/2))];

rest = resth /. Log[(2*m^2*s4 + (-2*m^2 + s)*u1 - 
         (s*u1*(4*m^2*s4 + (-4*m^2 + s)*u1))^(1/2))/
         (2*m^2*s4 + (-2*m^2 + s)*u1 + 
         (s*u1*(4*m^2*s4 + (-4*m^2 + s)*u1))^(1/2))] -> LLL;

log6h = Coefficient[rest,LLL];
log6 =  (FullSimplify[log6h /. s4->s+t1+u1] /. s+t1+u1->s4) * lll;
Print["6"]

resth = rest /. LLL->0;

lll2 = Log[(2*m^2*s + s*t1 + 2*m^2*u1 + 
        Sqrt[s]*Sqrt[t1]*Sqrt[4*m^2*s + s*t1 + 4*m^2*u1])/
      (2*m^2*s + s*t1 + 2*m^2*u1 - 
        Sqrt[s]*Sqrt[t1]*Sqrt[4*m^2*s + s*t1 + 4*m^2*u1])];

rest = resth /. Log[(2*m^2*s + s*t1 + 2*m^2*u1 + 
        Sqrt[s]*Sqrt[t1]*Sqrt[4*m^2*s + s*t1 + 4*m^2*u1])/
      (2*m^2*s + s*t1 + 2*m^2*u1 - 
        Sqrt[s]*Sqrt[t1]*Sqrt[4*m^2*s + s*t1 + 4*m^2*u1])] -> LLL2;
log7h =  Coefficient[rest,LLL2];
log7 =  (FullSimplify[log7h /. s4->s+t1+u1] /. s+t1+u1->s4) * lll2;
Print["7"]

resth = Expand[rest] /. LLL2->0;

lll3 =  Log[(-2*m^2 + s - Sqrt[-4*m^2*s + (s - s4)^2] - s4)/
      (-2*m^2 + s + Sqrt[-4*m^2*s + (s - s4)^2] - s4)];

rest = resth /.  Log[(-2*m^2 + s - Sqrt[-4*m^2*s + (s - s4)^2] - s4)/
      (-2*m^2 + s + Sqrt[-4*m^2*s + (s - s4)^2] - s4)] -> LLL3;
log8h =  Coefficient[rest,LLL3];
log8 =  (FullSimplify[log8h /. s4->s+t1+u1] /. s+t1+u1->s4) * lll3;
Print["8"]

resth = rest /. LLL3->0;

Print["REMAINING TERMS = ", resth] 

Print["OUTPUT"]

(*
log1 >> g16qedunp.ln1;
log2 >> g16qedunp.ln2;
log3 >> g16qedunp.ln3;
log4 >> g16qedunp.ln4;
log5 >> g16qedunp.ln5;
log6 >> g16qedunp.ln6;
log7 >> g16qedunp.ln7;
log8 >> g16qedunp.ln8;
nolog >> g16qedunp.fin;
*)


log1 >> g16qedpol.ln1;
log2 >> g16qedpol.ln2;
log3 >> g16qedpol.ln3;
log4 >> g16qedpol.ln4;
log5 >> g16qedpol.ln5;
log6 >> g16qedpol.ln6;
log7 >> g16qedpol.ln7;
log8 >> g16qedpol.ln8;
nolog >> g16qedpol.fin;



*)

















