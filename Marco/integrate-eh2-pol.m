(* 2->3 CONTRIBUTION: gamma q -> q Q QB - eQ2 PART *)
(* LONG. POLARIZED PROJECTION *)

SetDirectory["/Users/marco/WORK/G1CHARM-NLO/GAMMAq-QQBq"]
<<tracer11.m

color=CF/2;
n=4+eps;
h=1;
heavy=color*(<<pqm1m1-pol + <<pqm2m2-pol +2* <<pqm1m2-pol );

Print[MANDELSTAM REDUCTION]

helphat=heavy /. {H[k2,p1]->khat2,H[k2,k2]->-khat2,H[p1,p1]->-khat2};    (*!!! WRONG SIGNS !!!*)
heavy=Expand[helphat];

zwi=heavy /. {u6->-sp-t1-ts,us->-sp-u1p-u7,s5->ts-u1p-u7,s3->-ts+u7-t1,
              s4->sp+t1+u1,eh->1,CF->1,m^2->m2,m^4->m2^2,m^6->m2^3};

unint=Expand[zwi /. {sp->s-q2,u1p->u1-q2}] ;

(* INSERT INTEGRALS *)
Print[INTEGRALS]

zwi = Expand[unint I00];

help = zwi /. {1/ts^2/u7^2 -> I22tsu7/I00,
               1/ts^2/u7 ->   I21tsu7/I00,
               1/ts/u7^2 -> I12tsu7/I00,
               1/ts/u7 ->   I11tsu7/I00,
               u7/ts ->  I1M1tsu7/I00,
               1/ts^2 -> I20ts/I00,
               1/ts ->   I10ts/I00,
               ts/u7 ->  IM11tsu7/I00,
               1/u7^2 -> I02u7/I00,
               1/u7 ->   I01u7/I00};

intmarco = Expand[help];

inthat = intmarco /. {khat2 I12tsu7 -> I12tsu7hat,
                      khat2 I21tsu7 -> I21tsu7hat,
                      khat2 I22tsu7 -> I22tsu7hat,
                      khat2 I11tsu7 -> I11tsu7hat,
                      khat2 I20ts   -> I20tshat};


(* DEFINE INTEGRALS: (I) SINGULAR *)

I10ts = (-4*Pi*(m2 + s4))/(eps*s4*(sp + t1));

I11tsu7 = (2*Pi*(m2 + s4))/(s4*t1*u1)*
          (2/eps+Log[((m2 + s4)*t1^2*u1^2)/((-q2 + s + t1)^2*(q2*s4*t1 + m2*(-q2 + s + u1)^2))]);

I1M1tsu7 = (2*Pi*(m2 + s4)*t1*u1)/(s4*(-q2 + s + t1)^2)*
           (2/eps - (s4*(2*m2*(q2 - s) - (2*q2 - s)*(q2 - s - t1) + (q2 - s + t1)*u1))/
           ((m2 + s4)*t1*u1));

I12tsu7 =  (2*Pi*(m2 + s4)*(q2 - s - t1))/(s4*t1^2*u1^2)*
           (2/eps+Log[((m2 + s4)*t1^2*u1^2)/((-q2 + s + t1)^2*(q2*s4*t1 + m2*(-q2 + s + u1)^2))]+
           (s4*(2*m2*(q2 - s)*(q2 - s - u1) + t1*(2*q2*s4 - u1*(s + u1))))/
           ((q2 - s - t1)*(q2*s4*t1 + m2*(-q2 + s + u1)^2)));

I21tsu7 =  (4*Pi*(m2 + s4)^2)/(s4^2*(q2 - s - t1)*t1*u1) * (
           ((s4*(q2 - s - t1)*(2*m2*(q2 - s)*(q2 - s - u1) + t1*(2*q2*s4 - u1*(s + u1))))/
           (2*(m2 + s4)*t1^2*u1^2))*(
           2/eps+Log[((m2 + s4)*t1^2*u1^2)/((-q2 + s + t1)^2*(q2*s4*t1 + m2*(-q2 + s + u1)^2))])+
           (-1 + (2*s4^2*(m2*(q2 - s)^2 + t1*(q2*s4 - s*u1)))/((m2 + s4)*t1^2*u1^2)));

I22tsu7 =  (4*Pi*(m2 + s4)^2)/(s4^2*t1^2*u1^2) * (
           ((s4*(m2*(q2 - s)*(3*q2^2 + 3*s^2 + 2*t1*u1 + 3*s*(t1 + u1) - 
           3*q2*(2*s + t1 + u1)) + t1*(-3*q2^3 + q2^2*(6*s + 6*t1 + 4*u1) + 
           u1*(2*s^2 + t1*u1 + 2*s*(t1 + u1)) - 
           q2*(3*s^2 + 3*t1^2 + 4*t1*u1 + 2*u1^2 + 6*s*(t1 + u1)))))/((m2 + s4)*t1^2*u1^2))*
              (2/eps+Log[((m2 + s4)*t1^2*u1^2)/((-q2 + s + t1)^2*(q2*s4*t1 + m2*(-q2 + s + u1)^2))])+
              (-1 + (8*s4^2*(m2*(q2 - s)^2 + t1*(q2*s4 - s*u1)))/((m2 + s4)*t1^2*u1^2) + 
              (s4^2*(-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2))/
              (2*(q2*s4^2*t1 + m2^2*(-q2 + s + u1)^2 + 
              m2*(-q2^3 + 3*q2^2*(s + u1) + s4*(s + u1)^2 - 
              q2*(2*s^2 + s*t1 - t1^2 + 4*s*u1 + t1*u1 + 2*u1^2))))));

(* DEFINE INTEGRALS: (II) FINITE *)

I00=2 Pi;

I20ts = (-4*Pi*(m^2 + s4)^2)/(s4^2*(sp + t1)^2);

I01u7 = (2*Pi*(m2 + s4))/(s4*Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2])*
         Log[(2*m2*(q2 - s - u1) + s4*(2*q2 - s - u1 + 
             Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2]))/
             (2*m2*(q2 - s - u1) - s4*(-2*q2 + s + u1 + 
             Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2]))];
    
I02u7 = (2*Pi*(m2 + s4))/(q2*s4*t1 + m2*(-q2 + s + u1)^2);

IM11tsu7 = Pi*((2*(2*m2*(q2 - s) - (2*q2 - s)*(q2 - s - t1) + (q2 - s + t1)*u1))/(4*q2*(m2 + s4) - 
              (s + u1)^2)+(2*(m2 + s4)*(2*m2*(q2 - s)*(q2 - s - u1) + t1*(2*q2*s4 - u1*(s + u1))))/
              (s4*(-4*q2*(m2 + s4) + (s + u1)^2)^(3/2))*
              Log[(2*m2*(q2 - s - u1) + s4*(2*q2 - s - u1 + 
                   Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2]))/
                   (2*m2*(q2 - s - u1) - s4*(-2*q2 + s + u1 + 
                   Sqrt[-4*m2*q2 + s^2 - 4*q2*s4 + 2*s*u1 + u1^2]))]);

(* DEFINE INTEGRALS WITH KHAT2 - ONLY POLE PART IS NEEDED HERE *)

I20tshat = 2Pi (s4+m2)/(s-q2+t1)^2;

I21tsu7hat = 2Pi (s4+m2)/t1/u1/(q2-s-t1);

I22tsu7hat = 2Pi (s4+m2)/t1^2/u1^2;

I11tsu7hat = 0;

I12tsu7hat = 0;


(* POLE PART *)

pole = Coefficient[inthat,1/eps] 1/eps;                   
                 
(* FINITE PART *)

finite=Expand[Expand[inthat]/. 1/eps->0] /. eps->0;
