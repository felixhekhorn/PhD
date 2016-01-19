(* SET 2 FOR FINITE q2 *)
(* q is in the z direction parametrized as (w1,0,0,qz,.,.,) *)

eq1=w2^2-pvec^2-qz^2+2 pvec cos qz;

eq2=e2^2-pvec^2-m2; (* OK *)
eq3=w1+w2-w3-e1-e2; (* OK *)

eq4=w1 e2-qz pvec cos+u1/2-q2/2;   (* OK *)

eq6=w1 w2+qz^2-qz pvec cos-s/2+q2/2; (* OK *)
eq5=w2 e2-pvec^2+qz pvec cos + t1/2;  (* OK *)

eq7=(w3+e1)^2-m2-s4;  (* OK *)
eq8=e1^2-w3^2-m2;     (* OK *)


(* *)
e1=(s4+2m2)/2/Sqrt[m2+s4]; (* OK *)
w3=s4/2/Sqrt[m2+s4];       (* OK *)

e2=(-2m2+s-s4)/2/Sqrt[m2+s4];
pvec=Sqrt[(s-s4)^2-4m2 s]/2/Sqrt[m2+s4];

w2=(s+t1-q2)/2/Sqrt[m2+s4];
w1=(s+u1)/2/Sqrt[m2+s4];

cos= (Sqrt[m2 + s4]*(-q2 - s + ((s + s4)*(s + u1))/(2*(m2 + s4))))/
 (Sqrt[-4*m2*s + (s - s4)^2]*Sqrt[-q2 + (s + u1)^2/(4*(m2 + s4))]);

qz=Sqrt[-q2 + (s + u1)^2/(4*(m2 + s4))];


(*s5*)

As5=2(e1 e2+m2);
Bs5=2 pvec cos w3;
Cs5=2 pvec Sqrt[1-cos^2] w3;

(*u7*)

au7=-2 w1 e1 +q2;
bu7=-2 qz w3;

(* integral 1/u7/s5 *)

Xu7s5 = FullSimplify[(au7 As5 - bu7 Bs5)^2 - (As5^2-Bs5^2-Cs5^2)(au7^2-bu7^2)]; 
I11u7s5 = Pi/Sqrt[Xu7s5] Log[ (au7 As5 - bu7 Bs5 + Sqrt[Xu7s5])/
                              (au7 As5 - bu7 Bs5 - Sqrt[Xu7s5])];

(* NUMERICAL CHECK - PHYSICAL SET OF MANDELSTAM VARIABLES *)
rule = {s4 -> 75, q2 -> -5, u1 -> -25, t1 -> -15, s -> 110, sp -> 115, u1p->-20, m2 -> 0.5};