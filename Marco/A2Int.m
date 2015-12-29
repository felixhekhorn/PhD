int = noeps /. {1/s5^2/(sp+ts)^2 -> I22stss5/I00,
                1/s5^2/(sp+ts) -> I12stss5/I00,
                1/s5/(sp+ts)^3 -> I31stss5/I00,
                1/s5/(sp+ts)^2 -> I21stss5/I00,
                1/s5/(sp+ts)   -> I11stss5/I00,
                1/us^2/(sp+ts)^2 -> I22stsus/I00,
                1/us^2/(sp+ts) -> I12stsus/I00,
                1/us/(sp+ts)^3 -> I31stsus/I00,
                1/us/(sp+ts)^2 -> I21stsus/I00,
                1/us/(sp+ts)   -> I11stsus/I00,
                ts/s5^2        -> IM12tss5/I00,
                ts/s5          -> IM11tss5/I00,
                ts/us          -> IM11tsus/I00,
                1/s5^2         -> I02s5/I00,
                1/s5           -> I01s5/I00,
                1/us^2         -> I02us/I00,
                1/us           -> I01us/I00};


(* DEFINE INTEGRALS IN SET I (ALL INTEGRALS ARE FINITE FOR Q2.NE.0) *)

I00 = 2Pi;

(* 1/s5 CHECKED*)

I01s5 = (2*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*s4) *
        Log[(2*m2*s + (s + Sqrt[-4*m2*s + (s - s4)^2] - s4)*s4)/
            (2*m2*s - s4*(-s + Sqrt[-4*m2*s + (s - s4)^2] + s4))];

(* 1/s5^2 CHECKED *)
I02s5 = (2*Pi*(m2 + s4))/(m2*s^2);

(* 1/us^2 CHECKED *)
I02us = (2*Pi*(m2 + s4))/(q2*(m2*q2 + s4*t1));

(* 1/us CHECKED*)
I01us = (2*Pi*(m2 + s4))/(s4*Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]) *
        Log[(2*m2*q2 + s4*(2*q2 - s - u1 + Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))/
            (2*m2*q2 - s4*(-2*q2 + s + u1 + Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))];

(* ts/s5 CHECKED*)

IM11tss5 = Pi * (  (2*(2*m2*q2 - q2^2 - 2*m2*s + q2*s + s*t1 + t1^2 + (q2 - s + t1)*u1))/
        (-4*m2*s + (s - s4)^2) +
        (2*(m2 + s4)*(q2^3 - q2^2*(s + 2*(t1 + u1)) + s*(2*m2*s - u1*(t1 + u1)) +
         q2*(-2*m2*s + (t1 + u1)^2 + s*(t1 + 2*u1))))/
 ((-4*m2*s + (s - s4)^2)^(3/2)*s4) *
  Log[(2*m2*s + (s + Sqrt[-4*m2*s + (s - s4)^2] - s4)*s4)/
      (2*m2*s - s4*(-s + Sqrt[-4*m2*s + (s - s4)^2] + s4))]);

(* ts/s5^2 CHECKED *)

IM12tss5 = Pi * ( -(((m2 + s4)*(q2^3 - q2^2*(s + 2*(t1 + u1)) + s*(2*m2*s - u1*(t1 + u1)) +
    q2*(-2*m2*s + (t1 + u1)^2 + s*(t1 + 2*u1))))/
  (m2*s^2*(4*m2*s - (s - s4)^2))) +
  (2*(m2 + s4)*(2*m2*(q2 - s) + s4*(q2 + t1) - s*u1))/
 ((-4*m2*s + (s - s4)^2)^(3/2)*s4) *
  Log[(2*m2*s + (s + Sqrt[-4*m2*s + (s - s4)^2] - s4)*s4)/
      (2*m2*s - s4*(-s + Sqrt[-4*m2*s + (s - s4)^2] + s4))]);

(* 1/s5/(sp+ts) NUMERICALLY CHECKED *)

I11stss5 = (2*Pi*(m2 + s4))/(s*s4*t1)*
           Log[(m2*(q2 - s))/(m2*(q2 - s) + s4*t1)];

(* 1/s5^2/(sp+ts) NUMERICALLY CHECKED *)

I12stss5 = Pi * ( (2*(m2 + s4)*(2*m2*(q2 - s) + (-s + s4)*t1))/(m2*s^3*t1^2) +
              (2*(m2 + s4)*(2*m2*(q2 - s)^2 + (2*q2 - s)*t1*(-q2 + s + t1) +
               2*(q2 - s)*t1*u1))/(s^3*s4*t1^3)*
               Log[(m2*(q2 - s))/(m2*(q2 - s) + s4*t1)]);

(* 1/s5^2/(sp+ts)^2 NUMERICALLY CHECKED *)

I22stss5 = Pi * ( (2*(m2 + s4)*(-q2 + s + t1)^2)/((q2 - s)*s^2*t1^2*(m2*(q2 - s) + s4*t1)) +
                  (-2*(4*m2*s - (s - s4)^2)*(m2 + s4))/(m2*s^4*t1^2) -
                  (-24*(m2 + s4)*(m2*(q2 - s)^2 + q2*t1*(-q2 + s + t1) + (q2 - s)*t1*u1))/(s^4*t1^4) +
                  ( (2*(m2 + s4)*(2*m2*q2 - q2^2 - 2*m2*s + q2*s + s*t1 + t1^2 + (q2 - s + t1)*u1))/(s^3*s4*t1^3) +
                    (6*(m2 + s4)*(2*m2*(q2 - s) + (-s + s4)*t1)*(2*m2*(q2 - s)^2 +
                    (2*q2 - s)*t1*(-q2 + s + t1) + 2*(q2 - s)*t1*u1))/(s^4*s4*t1^5) ) *
                   Log[(m2*(q2 - s))/(m2*(q2 - s) + s4*t1)]);

(* 1/s5/(sp+ts)^2 NUMERICALLY CHECKED *)

I21stss5 = Pi * ( (2*(m2 + s4)*(2*m2*(q2 - s)^2 + (2*q2 - s)*t1*(-q2 + s + t1) +
                   2*(q2 - s)*t1*u1))/((q2 - s)*s^2*t1^2*(m2*(q2 - s) + s4*t1)) +
                   (2*(m2 + s4)*(2*m2*(q2 - s) + (-s + s4)*t1))/(s^2*s4*t1^3) *
                  Log[(m2*(q2 - s))/(m2*(q2 - s) + s4*t1)]);

(* 1/s5/(sp+ts)^3 NUMERICALLY CHECKED *)
(* THIS INTEGRAL IS NOT GIVEN IN SMITH ET AL. -> OBTAIN AS -1/2 d/da I4(2,1) *)

I31stss5 = (-1/2) * Pi * ( (2*(m2 + s4)*(2*m2*(q2 - s)^2 + (2*q2 - s)*t1*(-q2 + s + t1) +
                           2*(q2 - s)*t1*u1)*((q2 - s)*(2*m2 - q2 + s) + t1^2 + (q2 - s + t1)*u1))/
                          ((q2 - s)^2*s^2*t1^2*(m2*(q2 - s) + s4*t1)^2) -
                            (2*(m2 + s4)*(2*m2*q2 - q2^2 - 2*m2*s + q2*s + s*t1 + t1^2 +
                               (q2 - s + t1)*u1))/((q2 - s)*s^2*t1^2*(m2*(q2 - s) + s4*t1)) +
                            (6*(m2 + s4)*(2*m2*(q2 - s) + (-s + s4)*t1)*(2*m2*(q2 - s)^2 +
                               (2*q2 - s)*t1*(-q2 + s + t1) + 2*(q2 - s)*t1*u1))/
                               (s^3*(-q2 + s)*t1^4*(m2*(q2 - s) + s4*t1)) +
                          (  (2*(-4*m2*s + (s - s4)^2)*(m2 + s4))/(s^3*s4*t1^3) -
                            (6*(m2 + s4)*(2*m2*(q2 - s) + (-s + s4)*t1)^2)/(s^3*s4*t1^5) ) *
                           Log[(m2*(q2 - s))/(m2*(q2 - s) + s4*t1)]);

(* INTEGRALS INVOLVING US *)

(* ts/us  NUMERICALLY CHECKED *)

IM11tsus = Pi * (   (2*(2*q2^2 + 2*m2*(-q2 + s) + s*(s + t1) + (s - t1)*u1 -
                     q2*(3*s + 2*t1 + u1)))/(4*q2*(m2 + s4) - (s + u1)^2)  +
                    (-2*(m2 + s4)*(-4*q2^3 + 2*m2*q2*(q2 - s) + s*s4*(s + u1) +
                     q2^2*(8*s + 6*t1 + 4*u1) - q2*(4*s^2 + 6*s*t1 + 2*t1^2 + 5*s*u1 +
                     2*t1*u1 + u1^2)))/(s4*(-4*q2*(m2 + s4) + (s + u1)^2)^(3/2)) *
                 Log[(2*m2*q2 + s4*(2*q2 - s - u1 + Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))/
                     (2*m2*q2 - s4*(-2*q2 + s + u1 + Sqrt[-4*q2*(m2 + s4) + (s + u1)^2]))] );

(* 1/(sp+ts)/us NUMERICALLY CHECKED *)

I11stsus =  Pi * ((2*(m2 + s4))/(s*s4*t1) *
                  Log[((q2 - s)*(m2*q2 + s4*t1))/(q2*(m2*(q2 - s) + s4*t1))]  );

(* 1/(sp+ts)^2/us NUMERICALLY CHECKED *)

I21stsus = Pi * ((2*(m2 + s4)*(2*m2*(q2 - s)^2 + (2*q2 - s)*t1*(-q2 + s + t1) +
                  2*(q2 - s)*t1*u1))/((q2 - s)*s^2*t1^2*(m2*(q2 - s) + s4*t1))  +
                  (-2*(m2 + s4)*(2*m2*q2*(-q2 + s) +
                   t1*(2*q2^2 + s*(s + u1) - 2*q2*(s + t1 + u1))))/(s^3*s4*t1^3) *
                 Log[((q2 - s)*(m2*q2 + s4*t1))/(q2*(m2*(q2 - s) + s4*t1))]  );

(* 1/(sp+ts)^3/us NUMERICALLY CHECKED *)

I31stsus = (-1/2) Pi * ( (2*(m2 + s4)*(2*m2*(q2 - s)^2 + (2*q2 - s)*t1*(-q2 + s + t1) +
                            2*(q2 - s)*t1*u1)*((q2 - s)*(2*m2 - q2 + s) + t1^2 + (q2 - s + t1)*u1))/
                            ((q2 - s)^2*s^2*t1^2*(m2*(q2 - s) + s4*t1)^2) -
                         (2*(m2 + s4)*(2*q2^2 + 2*m2*(-q2 + s) + s*(s + t1) + (s - t1)*u1 -
                            q2*(3*s + 2*t1 + u1)))/(s^2*(-q2 + s)*t1^2*(m2*(q2 - s) + s4*t1)) +
                         (6*(m2 + s4)*(2*m2*(q2 - s)^2 + (2*q2 - s)*t1*(-q2 + s + t1) +
                             2*(q2 - s)*t1*u1)*(2*m2*q2*(-q2 + s) +
                             t1*(2*q2^2 + s*(s + u1) - 2*q2*(s + t1 + u1))))/((q2 - s)*s^4*t1^4*(m2*(q2 - s) + s4*t1)) +
                       ( (2*(m2 + s4)*(-4*q2*(m2 + s4) + (s + u1)^2))/(s^3*s4*t1^3) -
                         (6*(m2 + s4)*(2*m2*q2*(-q2 + s) + t1*(-2*q2*s4 + s*(s + u1)))^2)/(s^5*s4*t1^5) ) *
                         Log[((q2 - s)*(m2*q2 + s4*t1))/(q2*(m2*(q2 - s) + s4*t1))]  );

(* 1/(sp+ts)/us^2 NUMERICALLY CHECKED *)

I12stsus = Pi * (  (2*(m2 + s4)*(2*m2*q2*(q2 - s) - t1*(-2*q2*s4 + s*(s + u1))))/
                    (q2*s^2*t1^2*(m2*q2 + s4*t1)) +
                   ((m2 + s4)*(4*m2*(q2 - s)^2 + 2*(2*q2 - s)*t1*(-q2 + s + t1) +
                    4*(q2 - s)*t1*u1))/(s^3*s4*t1^3) *
                  Log[((q2 - s)*(m2*q2 + s4*t1))/(q2*(m2*(q2 - s) + s4*t1))]  );

(* 1/(sp+ts)^2/us^2 NUMERICALLY CHECKED *)

I22stsus = Pi * (  (2*(m2 + s4)*(-q2 + s + t1)^2)/((q2 - s)*s^2*t1^2*(m2*(q2 - s) + s4*t1)) +
                    (-2*(m2 + s4)*(4*q2*(m2 + s4) - (s + u1)^2))/(q2*s^2*t1^2*(m2*q2 + s4*t1)) -
                    (6*(-4*m2*s + (s - s4)^2)*(-q2 + s + t1)^2*
                       (1 + (2*m2*(q2 - s) + s4*(q2 + t1) - s*u1)^2/((4*m2*s - (s - s4)^2)*(-q2 + s + t1)^2)))/(s^4*t1^4) +
                  ( (-2*(m2 + s4)*(2*q2^2 + 2*m2*(-q2 + s) + s*(s + t1) + (s - t1)*u1 -
                        q2*(3*s + 2*t1 + u1)))/(s^3*s4*t1^3)  +
                    (-6*(m2 + s4)*(2*m2*(q2 - s)^2 + (2*q2 - s)*t1*(-q2 + s + t1) +
                        2*(q2 - s)*t1*u1)*(2*m2*q2*(-q2 + s) + t1*(-2*q2*s4 + s*(s + u1))))/(s^5*s4*t1^5) ) *
                    Log[((q2 - s)*(m2*q2 + s4*t1))/(q2*(m2*(q2 - s) + s4*t1))]  );


