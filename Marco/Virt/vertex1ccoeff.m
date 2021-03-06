
(* QED LIKE VERTEX *)

a0[m] = I ceps m^2 (-2/eps+1);
a0[0] = 0;
b0[p2,0,m] = I ceps (-2/eps+2);
b0[p1,0,m] = I ceps (-2/eps+2);
b0[-k1+p2,0,m] = I ceps (-2/eps+2-u1/u Log[-u1/m^2]);
b0[-k1,m,m] = I ceps (-2/eps);
c0[p2,-k1,0,m,m]=I ceps  1/u1(zeta2-Li2[u/m^2]);


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
