(* BOX 2 INSERT COEFFICIENTS *)

n = 4+eps;

D11 = ((-2*m^2*s + t1*u1)*c0[-k2, p1, 0, 0, m] - 
    (-2*m^2*s + t1*(t1 + 2*u1))*c0[-k2, -k1 + p1, 0, 0, m] + 
    t1*(t1*c0[p1, -k1, 0, m, m] + u1*c0[-k2 + p1, -k1, 0, m, m]) + 
    u1*(-2*m^2*s + t1*(t1 + 2*u1))*d0[-k2, p1, -k1, 0, 0, m, m])/
  (2*s*(-(m^2*s) + t1*u1));

D12 = (u1*c0[-k2, p1, 0, 0, m] - u1*c0[-k2 + p1, -k1, 0, m, m] - 
    t1*(-c0[-k2, -k1 + p1, 0, 0, m] + c0[p1, -k1, 0, m, m] + 
       u1*d0[-k2, p1, -k1, 0, 0, m, m]))/(-2*m^2*s + 2*t1*u1);

D13 = -(u1^2*c0[-k2, p1, 0, 0, m] + t1*u1*c0[-k2, -k1 + p1, 0, 0, m] + 
     2*m^2*t1*c0[p1, -k1, 0, m, m] + 2*m^2*u1*c0[p1, -k1, 0, m, m] + 
     t1*u1*c0[p1, -k1, 0, m, m] - 2*m^2*t1*c0[-k2 + p1, -k1, 0, m, m] - 
     2*m^2*u1*c0[-k2 + p1, -k1, 0, m, m] - 
     2*t1*u1*c0[-k2 + p1, -k1, 0, m, m] - u1^2*c0[-k2 + p1, -k1, 0, m, m] - 
     t1*u1^2*d0[-k2, p1, -k1, 0, 0, m, m])/(2*s*(-(m^2*s) + t1*u1));


(* INSERT SCALAR INTEGRALS *)
Print["Insert scalar integrals"];

(*
a0[0] = 0;
a0[m] = m^2 (-2/eps+1); 

b0[p1,0,m] = (-2/eps+2);
b0[-k2,0,0] = 0;                (* NOT SURE -> CHECK !!!! *)
b0[-k1+p1,0,m] = (-2/eps+2-t1/t Log[-t1/m^2]);
b0[-k2+p1,0,m] = (-2/eps+2-u1/u Log[-u1/m^2]);
b0[-k1-k2+p1,0,m] = (-2/eps+2);
b0[-k1,m,m] = (-2/eps);
*)

(* 
c0[-k2,p1,0,0,m] = 1/u1 (2/eps^2+2/eps Log[-u1/m^2] +
   Log[-u1/m^2]^2 + PolyLog[2,u/m^2] + 1/4 zeta2);

c0[-k2+p1,-k1,0,m,m] = 1/u1(zeta2-PolyLog[2,u/m^2]);

c0[-k2,-k1+p1,0,0,m] = 1/t1 (2/eps^2+2/eps Log[-t1/m^2] +
   Log[-t1/m^2]^2 + PolyLog[2,t/m^2] + 1/4 zeta2);

c0[p1,-k1,0,m,m] = 1/t1(zeta2-PolyLog[2,t/m^2]);

d0[-k2,p1,-k1,0,0,m,m] = 1/t1/u1(4/eps^2+2/eps (Log[-t1/m^2]+Log[-u1/m^2])+
      2 Log[-t1/m^2] Log[-u1/m^2] - 7/2 zeta2);

*)

c0[-k2,p1,0,0,m] = 1/u1 2/eps^2;

c0[-k2+p1,-k1,0,m,m] = 0;

c0[-k2,-k1+p1,0,0,m] = 1/t1 2/eps^2;

c0[p1,-k1,0,m,m] = 0;

d0[-k2,p1,-k1,0,0,m,m] = A/eps^2
(*
d0[-k2,p1,-k1,0,0,m,m] = 1/t1/u1 4/eps^2 ;
*)