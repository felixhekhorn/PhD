(* BOX 1 INSERT COEFFICIENTS *)
Print["BOX I : GENERATE SIMPLIFIED FINAL RESULT "]
Print[" "]
Print["        (POLARIZED CASE) "]
Print[" "]
Print["========================================="]

n = 4+eps;
H[a_,b_]=0;

Print["Reading input :"]
box11=<<box11;
box12=<<box12;
box13=<<box13;
box14=<<box14;
box15=<<box15;
box16=<<box16;
box17=<<box17;
box18=<<box18;
box1cr1=<<box1cr1;
box1cr2=<<box1cr2;
box1cr3=<<box1cr3;
box1cr4=<<box1cr4;
box1cr5=<<box1cr5;
box1cr6=<<box1cr6;
box1cr7=<<box1cr7;
box1cr8=<<box1cr8;

Print["Insert D-coefficients :"]

D12 = -(-2*(4*m^2 - s)*((-2*m^2*s + 3*t1*u1)*zeta2 + 2*m^2*s*Li2[u/m^2]) + 
     (4*m^2 - s)*t1*u1*Log[x]^2 - 
     Sqrt[1 - (4*m^2)/s]*s*(2*m^2 + t1)*u1*
      (2*zeta2 + 4*Li2[-x] - Log[x]*
         (4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x])))/
  (4*(4*m^2 - s)*s*u1*(-(m^2*s) + t1*u1));

D13 = -(2*(4*m^2 - s)*((-2*m^2*s + (2*t1 - u1)*u1)*zeta2 + 
        2*s*(m^2 + u1)*Li2[u/m^2]) + (4*m^2 - s)*u1^2*Log[x]^2 + 
     Sqrt[1 - (4*m^2)/s]*s*u1*(2*m^2 + u1)*
      (2*zeta2 + 4*Li2[-x] - Log[x]*
         (4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x])))/
  (4*(4*m^2 - s)*s*u1*(-(m^2*s) + t1*u1));
 
D21 = (2*(4*m^2 - s)*u1*(u*(t1 - u1)*(zeta2 + 2*Li2[u/m^2]) + 
       2*(-(m^2*s) + t1*u1)*Log[-(u1/m^2)]) + 
    (4*m^2 - s)*u*u1*(-t1 + u1)*Log[x]^2 + 
    Sqrt[1 - (4*m^2)/s]*u*(-2*u1*(-2*m^2*s + t1^2 + u1^2)*zeta2 - 
       4*u1*(-2*m^2*s + t1^2 + u1^2)*Li2[-x] + 
       Log[x]*(-4*(t1 - u1)*(-(m^2*s) + t1*u1) + 
          u1*(-2*m^2*s + t1^2 + u1^2)*
           (4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x]))))/
  (4*(4*m^2 - s)*u*(-(m^2*s) + t1*u1)^2);

D22 = -(2*(4*m^2 - s)*(-4*u*u1*(-(m^2*s) + t1*u1)^2 - 
        u*(4*m^6*s^2 - 2*m^4*s*(3*t1 - u1)*u1 - 6*m^2*t1*u1^3 - 
           3*t1^2*u1^3)*zeta2 - 
        2*m^4*s*u*(-2*m^2*s + (3*t1 - u1)*u1)*Li2[u/m^2] + 
        2*u1*(-(m^2*s) + t1*u1)*(-2*m^4*s + t1*u1^2 + m^2*u1*(2*t1 + u1))*
         Log[-(u1/m^2)]) - (4*m^2 - s)*t1*(2*m^2 + t1)*u*u1^3*Log[x]^2 + 
     Sqrt[1 - (4*m^2)/s]*u*u1^2*
      (-2*u1*(-2*m^4*s - s*t1^2 + 2*m^2*t1*(2*t1 + u1))*zeta2 - 
        4*u1*(-2*m^4*s - s*t1^2 + 2*m^2*t1*(2*t1 + u1))*Li2[-x] + 
        Log[x]*(-4*(-(m^2*s) + t1*u1)*(-(s*t1) + m^2*(3*t1 + u1)) + 
           u1*(-2*m^4*s - s*t1^2 + 2*m^2*t1*(2*t1 + u1))*
            (4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x]))))/
  (4*(4*m^2 - s)*s*u*u1^2*(-(m^2*s) + t1*u1)^2);

D23 = -(2*(4*m^2 - s)*(-4*u*u1*(-(m^2*s) + t1*u1)^2 - 
        u*(2*m^2 + u1)*(2*m^4*s^2 - 4*m^2*s*t1*u1 + 2*t1^2*u1^2 + u1^4)*
         zeta2 + 2*(m^2 + u1)*(-(s*u*(2*m^2 + u1)*
              (-(m^2*s) + (t1 - u1)*u1)*Li2[u/m^2]) + 
           u1*(-(m^2*s) + t1*u1)*(-2*m^2*s + 
   	u1*(2*t1 + u1))*Log[-(u1/m^2)])) + 
   	(4*m^2 - s)*u*u1^4*(2*m^2 + u1)*Log[x]^2 + 
     Sqrt[1 - (4*m^2)/s]*u*u1^2*
      (-2*u1*(-2*m^4*s - s*u1^2 + 2*m^2*u1*(t1 + 2*u1))*zeta2 - 
        4*u1*(-2*m^4*s - s*u1^2 + 2*m^2*u1*(t1 + 2*u1))*Li2[-x] + 
        Log[x]*(4*(-(m^2*s) + t1*u1)*(m^2*t1 + 3*m^2*u1 + t1*u1 + u1^2) + 
           u1*(-2*m^4*s - s*u1^2 + 2*m^2*u1*(t1 + 2*u1))*
            (4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x]))))/
  (4*(4*m^2 - s)*s*u*u1^2*(-(m^2*s) + t1*u1)^2);

D26 = -(2*(4*m^2 - s)*(-(u*(-2*m^4*s*t1 - 2*m^2*s*(2*t1 - u1)*u1 + 
             t1*(2*t1 - u1)*u1^2)*zeta2) - 
        2*s*u*(-2*m^2*s*u1 + t1*u1^2 + m^4*(t1 + 3*u1))*Li2[u/m^2] + 
        2*t1*u1*(m^2 + u1)*(-(m^2*s) + t1*u1)*Log[-(u1/m^2)]) - 
     (4*m^2 - s)*u*u1*(-2*m^4*s - 2*m^2*s*u1 + t1*u1^2)*Log[x]^2 + 
     Sqrt[1 - (4*m^2)/s]*u*u1*(2*u1*
         (-6*m^4*s - s*t1*u1 + 2*m^2*(t1^2 + 3*t1*u1 + u1^2))*zeta2 + 
        4*u1*(-6*m^4*s - s*t1*u1 + 2*m^2*(t1^2 + 3*t1*u1 + u1^2))*Li2[-x] + 
        Log[x]*(4*m^2*(t1 - u1)*(-(m^2*s) + t1*u1) - 
           u1*(-6*m^4*s - s*t1*u1 + 2*m^2*(t1^2 + 3*t1*u1 + u1^2))*
            (4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x]))))/
  (4*(4*m^2 - s)*s*u*u1*(-(m^2*s) + t1*u1)^2);

D27 = (2*(2*m^2 + u1)*(zeta2 + 2*Li2[u/m^2]) - (2*m^2 + u1)*Log[x]^2 + 
    Sqrt[1 - (4*m^2)/s]*u1*(2*zeta2 + 4*Li2[-x] - 
       Log[x]*(4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x])))/
  (8*(-(m^2*s) + t1*u1));

D32 = (2*(4*m^2 - s)*(-(s*u*u1*(-(m^2*s) + t1*u1)^2*
          (12*m^6*s + 7*t1*u1^3 - m^4*u1*(15*t1 + 4*u1) + 
            m^2*u1^2*(3*t1 + 7*u1))) - 
       u*(m^2 + u1)*(12*m^10*s^4 - 2*m^8*s^3*(15*t1 - 2*u1)*u1 - 
          9*m^4*s*t1*u1^5 - 3*s*t1^3*u1^5 + 
          3*m^2*t1^2*u1^5*(4*t1 + 3*u1) + 
          2*m^6*s^2*u1^2*(10*t1^2 - 4*t1*u1 + u1^2))*zeta2 + 
       2*m^6*s^2*u*(m^2 + u1)*(6*m^4*s^2 - m^2*s*(15*t1 - 2*u1)*u1 + 
          u1^2*(10*t1^2 - 4*t1*u1 + u1^2))*Li2[u/m^2] - 
       s*u1*(-(m^2*s) + t1*u1)*
        (12*m^10*s^2 + 6*m^2*s*t1*u1^4 - 3*t1^2*u1^5 - 
          2*m^8*s*u1*(18*t1 + 7*u1) + 
          m^6*u1^2*(33*t1^2 + 25*t1*u1 - 2*u1^2) - 
          3*m^4*u1^3*(-2*t1^2 + 2*t1*u1 + u1^2))*Log[-(u1/m^2)]) + 
    (4*m^2 - s)*t1*u*u1^5*(m^2 + u1)*
     (-3*m^4*s - s*t1^2 + m^2*t1*(4*t1 + 3*u1))*Log[x]^2 - 
    Sqrt[1 - (4*m^2)/s]*s*u*u1^3*(m^2 + u1)*
     (2*(2*m^2 + t1)*u1^2*(-(m^4*s) - s*t1^2 + m^2*t1*(4*t1 + u1))*zeta2 + 
       4*(2*m^2 + t1)*u1^2*(-(m^4*s) - s*t1^2 + m^2*t1*(4*t1 + u1))*
        Li2[-x] + Log[x]*(2*(-(m^2*s) + t1*u1)*
           (-2*m^6*s - 3*s*t1^2*u1 + m^4*(4*t1^2 + 17*t1*u1 + 3*u1^2) + 
             m^2*t1*(t1^2 + 16*t1*u1 + 6*u1^2)) - 
          (2*m^2 + t1)*u1^2*(-(m^4*s) - s*t1^2 + m^2*t1*(4*t1 + u1))*
           (4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x]))))/
  (4*(4*m^2 - s)*s^2*u*u1^3*(m^2 + u1)*(-(m^2*s) + t1*u1)^3);

D33 = (2*(4*m^2 - s)*(-(s*u*u1*(-(m^2*s) + t1*u1)^2*
          (-12*m^4*s + u1^2*(9*t1 + u1) + m^2*u1*(21*t1 + 10*u1))) + 
       u*(12*m^10*s^4 - 2*m^8*s^3*u1*(24*t1 + 7*u1) + 
          2*m^6*s^2*u1^2*(37*t1^2 + 23*t1*u1 + u1^2) - 
          3*m^4*s*u1^3*(18*t1^3 + 18*t1^2*u1 + 2*t1*u1^2 - u1^3) + 
          s*u1^5*(-2*t1^3 + u1^3) + 
          m^2*u1^4*(18*t1^4 + 26*t1^3*u1 + 6*t1^2*u1^2 - 3*t1*u1^3 - 
             4*u1^4))*zeta2 - s*(m^2 + u1)*
        (2*s*u*(6*m^8*s^2 - m^6*s*u1*(18*t1 + u1) + 
             m^4*t1*u1^2*(19*t1 + 4*u1) + u1^4*(t1^2 - t1*u1 + u1^2) + 
             m^2*u1^3*(8*t1^2 - 4*t1*u1 + 3*u1^2))*Li2[u/m^2] - 
          u1*(2*m^2 + u1)*(-(m^2*s) + t1*u1)*(-2*m^2*s + (2*t1 - u1)*u1)*
           (-3*m^2*s + u1*(3*t1 + 2*u1))*Log[-(u1/m^2)])) + 
    (4*m^2 - s)*u*u1^6*(-3*m^4*s - s*u1^2 + m^2*u1*(3*t1 + 4*u1))*Log[x]^2 - 
    Sqrt[1 - (4*m^2)/s]*s*u*u1^3*
     (-2*u1^2*(2*m^2 + u1)*(-(m^4*s) - s*u1^2 + m^2*u1*(t1 + 4*u1))*zeta2 - 
       4*u1^2*(2*m^2 + u1)*(-(m^4*s) - s*u1^2 + m^2*u1*(t1 + 4*u1))*
        Li2[-x] + Log[x]*(-2*(-(m^2*s) + t1*u1)*
           (-2*m^6*s - s*(t1 - 2*u1)*u1^2 + m^4*(t1 - u1)*(t1 + 6*u1) + 
             m^2*u1*(2*t1^2 + 2*t1*u1 - 9*u1^2)) + 
          u1^2*(2*m^2 + u1)*(-(m^4*s) - s*u1^2 + m^2*u1*(t1 + 4*u1))*
           (4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x]))))/
  (4*(4*m^2 - s)*s^2*u*u1^3*(-(m^2*s) + t1*u1)^3);

D36 = -(2*(4*m^2 - s)*(u*u1*(-(m^2*s) + t1*u1)^2*
         (-6*m^4*s + 5*t1*u1^2 + 5*m^2*u1*(2*t1 + u1)) + 
        u*(m^2 + u1)*(-6*m^8*s^3 + 2*m^6*s^2*(8*t1 - u1)*u1 - 
           9*m^2*t1^2*u1^4 - 3*t1^3*u1^4 + 
           m^4*s*u1^2*(-12*t1^2 + 6*t1*u1 + u1^2))*zeta2 + 
        2*m^4*s*u*(m^2 + u1)*(3*m^4*s^2 - m^2*s*(8*t1 - u1)*u1 + 
           u1^2*(6*t1^2 - 3*t1*u1 + u1^2))*Li2[u/m^2] - 
        u1*(-(m^2*s) + t1*u1)*(6*m^8*s^2 + 2*t1^2*u1^4 + 
           4*m^2*t1*u1^3*(2*t1 + u1) - m^6*s*u1*(19*t1 + 7*u1) + 
           m^4*t1*u1^2*(19*t1 + 17*u1))*Log[-(u1/m^2)]) + 
     (4*m^2 - s)*(-(m^4*s) + 3*m^2*t1^2 + t1^3)*u*u1^4*(m^2 + u1)*Log[x]^2 + 
     Sqrt[1 - (4*m^2)/s]*u*u1^2*(m^2 + u1)*
      (2*u1^2*(-(s*t1^3) - m^4*s*(5*t1 - u1) + m^2*t1^2*(5*t1 + 3*u1))*
         (zeta2 + 2*Li2[-x]) - 
        u1^2*(-(s*t1^3) - m^4*s*(5*t1 - u1) + m^2*t1^2*(5*t1 + 3*u1))*
         Log[x]^2 + 2*Log[x]*((-(m^2*s) + t1*u1)*
            (m^2*t1^2*(3*m^2 + t1) + t1*(8*m^4 + 13*m^2*t1 + 3*t1^2)*u1 + 
              (5*m^4 + 6*m^2*t1 + 3*t1^2)*u1^2) + 
           2*u1^2*(-(s*t1^3) - m^4*s*(5*t1 - u1) + m^2*t1^2*(5*t1 + 3*u1))*
            (-Log[-(u1/m^2)] + Log[1 + x]))))/
  (4*(4*m^2 - s)*s*u*u1^2*(m^2 + u1)*(-(m^2*s) + t1*u1)^3);

D37 = -(2*(4*m^2 - s)*(u*u1*(-(m^2*s) + t1*u1)^2*
        (-6*m^2*s + u1*(6*t1 + u1)) + 
        u*(-6*m^8*s^3 + 2*t1^3*u1^4 - u1^7 + 2*m^6*s^2*u1*(10*t1 + u1) - 
           m^4*s*u1^2*(24*t1^2 + 6*t1*u1 - u1^2) - 
           3*m^2*u1^3*(-4*t1^3 - 2*t1^2*u1 + u1^3))*zeta2 - 
        2*u*(-3*m^8*s^3 + t1^3*u1^4 + u1^7 + m^6*s^2*u1*(10*t1 + u1) - 
           m^4*s*u1^2*(12*t1^2 + 3*t1*u1 + u1^2) + 
           3*m^2*u1^3*(2*t1^3 + t1^2*u1 + u1^3))*Li2[u/m^2] - 
        u1*(m^2 + u1)*(-(m^2*s) + t1*u1)*
         (6*m^4*s^2 - m^2*s*(11*t1 - u1)*u1 + 
           u1^2*(5*t1^2 + t1*u1 - 2*u1^2))*Log[-(u1/m^2)]) + 
     (4*m^2 - s)*u*u1^4*(-(m^4*s) + 3*m^2*u1^2 + u1^3)*Log[x]^2 + 
     Sqrt[1 - (4*m^2)/s]*u*u1^2*
      (-2*u1^2*(m^4*s*(t1 - 5*u1) - s*u1^3 + m^2*u1^2*(3*t1 + 5*u1))*zeta2 - 
        4*u1^2*(m^4*s*(t1 - 5*u1) - s*u1^3 + m^2*u1^2*(3*t1 + 5*u1))*
         Li2[-x] + Log[x]*(-2*(-(m^2*s) + t1*u1)*
            (m^4*t1^2 + 2*m^2*t1^2*u1 - (m^4 - m^2*t1 - t1^2)*u1^2 - 
              (7*m^2 + t1)*u1^3 - 2*u1^4) + 
           u1^2*(m^4*s*(t1 - 5*u1) - s*u1^3 + m^2*u1^2*(3*t1 + 5*u1))*
            (4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x]))))/
  (4*(4*m^2 - s)*s*u*u1^2*(-(m^2*s) + t1*u1)^3);

D38 = (2*(4*m^2 - s)*(-(s*(m^2 + t1)*u*u1*(-(m^2*s) + t1*u1)^2) - 
       u*(-2*m^8*s^3 + s*t1^2*(2*t1 - u1)*u1^3 - 
          2*m^6*s^2*(t1^2 - 2*t1*u1 - u1^2) - 
          3*m^4*s*u1*(-2*t1^3 + u1^3) + 
          3*m^2*t1*u1^2*(-2*t1^3 - 2*t1^2*u1 + u1^3))*zeta2 - 
       2*s^2*u*(m^8*s + 3*m^4*s^2*u1 - 3*m^2*s*t1*u1^2 + t1^2*u1^3 + 
          m^6*(t1^2 + t1*u1 + 5*u1^2))*Li2[u/m^2] - 
       s*u1*(-(m^2*s) + t1*u1)*
        (-2*m^6*s - 3*t1^2*u1^2 - m^2*t1*u1*(5*t1 + 4*u1) + 
          m^4*(-2*t1^2 - 3*t1*u1 + u1^2))*Log[-(u1/m^2)]) + 
    (4*m^2 - s)*u*u1*(-(s*t1^2*u1^3) + 2*m^6*s^2*(t1 + 2*u1) - 
       3*m^4*s*u1*(2*t1^2 + 2*t1*u1 + u1^2) + 
       m^2*t1*u1^2*(4*t1^2 + 6*t1*u1 + 3*u1^2))*Log[x]^2 - 
    Sqrt[1 - (4*m^2)/s]*s*u*u1*
     (-2*u1^2*(-10*m^6*s - s*t1^2*u1 + 
          m^2*t1*(2*t1^2 + 8*t1*u1 + 3*u1^2) + 
          m^4*(10*t1^2 + 15*t1*u1 + 3*u1^2))*zeta2 - 
       4*u1^2*(-10*m^6*s - s*t1^2*u1 + 
          m^2*t1*(2*t1^2 + 8*t1*u1 + 3*u1^2) + 
          m^4*(10*t1^2 + 15*t1*u1 + 3*u1^2))*Li2[-x] + 
       Log[x]*(2*m^2*(-(m^2*s) + t1*u1)*
           (-6*m^4*s - t1*(t1 - 2*u1)*u1 + m^2*(t1^2 + 3*t1*u1 + 4*u1^2)) + 
          u1^2*(-10*m^6*s - s*t1^2*u1 + 
             m^2*t1*(2*t1^2 + 8*t1*u1 + 3*u1^2) + 
             m^4*(10*t1^2 + 15*t1*u1 + 3*u1^2))*
           (4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x]))))/
  (4*(4*m^2 - s)*s^2*u*u1*(-(m^2*s) + t1*u1)^3);

D39 = (2*(4*m^2 - s)*(-(s*u*u1*(-(m^2*s) + t1*u1)^2*
          (6*t1*u1 + m^2*(6*t1 + 5*u1))) + 
       u*(-2*m^8*s^3*(3*t1 + 4*u1) - s*t1*u1^4*(2*t1^2 + u1^2) + 
          4*m^6*s^2*u1*(5*t1^2 + 7*t1*u1 + u1^2) - 
          3*m^4*s*u1^2*(8*t1^3 + 12*t1^2*u1 + 3*t1*u1^2 + 2*u1^3) + 
          m^2*u1^3*(12*t1^4 + 20*t1^3*u1 + 9*t1^2*u1^2 + 6*t1*u1^3 + 
             2*u1^4))*zeta2 - 2*s^2*u*
        (-6*m^4*s*(2*t1 - u1)*u1^2 + t1*(t1 - u1)*u1^4 - 
          m^8*s*(3*t1 + 4*u1) + m^6*u1*(10*t1^2 + 14*t1*u1 - u1^2) - 
          2*m^2*u1^3*(-3*t1^2 + t1*u1 + u1^2))*Li2[u/m^2] + 
       s*u1*(m^2 + u1)*(-(m^2*s) + t1*u1)*
        (t1*u1^2*(5*t1 + 2*u1) - 2*m^4*s*(3*t1 + 4*u1) + 
          m^2*u1*(11*t1^2 + 13*t1*u1 + 4*u1^2))*Log[-(u1/m^2)]) - 
    (4*m^2 - s)*u*u1^3*(2*m^6*s^2 - s*t1*u1^3 - 3*m^4*s*u1*(t1 + 2*u1) + 
       m^2*u1^2*(3*t1^2 + 6*t1*u1 + 2*u1^2))*Log[x]^2 - 
    Sqrt[1 - (4*m^2)/s]*s*u*u1^2*
     (2*u1^2*(-10*m^6*s - s*t1*u1^2 + m^2*u1*(3*t1^2 + 8*t1*u1 + 2*u1^2) + 
          m^4*(3*t1^2 + 15*t1*u1 + 10*u1^2))*zeta2 + 
       4*u1^2*(-10*m^6*s - s*t1*u1^2 + 
          m^2*u1*(3*t1^2 + 8*t1*u1 + 2*u1^2) + 
          m^4*(3*t1^2 + 15*t1*u1 + 10*u1^2))*Li2[-x] + 
       Log[x]*(-2*(-(m^2*s) + t1*u1)*
           (-6*m^6*s - 2*s*t1*u1^2 + m^2*u1*(4*t1^2 + 13*t1*u1 + 4*u1^2) + 
             m^4*(2*t1^2 + 15*t1*u1 + 15*u1^2)) - 
          u1^2*(-10*m^6*s - s*t1*u1^2 + 
             m^2*u1*(3*t1^2 + 8*t1*u1 + 2*u1^2) + 
             m^4*(3*t1^2 + 15*t1*u1 + 10*u1^2))*
           (4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x]))))/
  (4*(4*m^2 - s)*s^2*u*u1^2*(-(m^2*s) + t1*u1)^3);

D312 = -(-2*u*(4*m^6*s^2 - s*t1*u1^3 - 2*m^4*s*u1*(5*t1 + 2*u1) + 
        2*m^2*u1^2*(4*t1^2 + 2*t1*u1 + u1^2))*zeta2 - 
     4*s*(u*(-2*m^6*s + 2*m^4*(t1 - 2*u1)*u1 + 2*m^2*s*u1^2 - t1*u1^3)*
         Li2[u/m^2] + 
    m^2*u1*(2*m^2 + u1)*(-(m^2*s) + t1*u1)*Log[-(u1/m^2)]) + 
   u*u1*(-(s*t1*u1^2)- 2*m^4*s*(t1 + 2*u1) + 
        2*m^2*u1*(2*t1^2 + 2*t1*u1 + u1^2))*Log[x]^2 - 
     Sqrt[1 - (4*m^2)/s]*s*u*u1*
      (-2*(2*m^2 + t1)*u1^2*(zeta2 + 2*Li2[-x]) + 
        (2*m^2 + t1)*u1^2*Log[x]^2 + 
        4*Log[x]*(-(m^4*s) + m^2*t1*u1 + 
           (2*m^2 + t1)*u1^2*(Log[-(u1/m^2)] - Log[1 + x]))))/
  (16*s*u*u1*(-(m^2*s) + t1*u1)^2);

D313 = -(2*u*(4*m^6*s^2 - s*u1^4 - 2*m^4*s*u1*(4*t1 + u1) + 
        2*m^2*u1^2*(2*t1^2 + t1*u1 + 2*u1^2))*zeta2 + 
     4*s*u*(-2*m^6*s + 2*m^4*(2*t1 - u1)*u1 + 2*m^2*(t1 - 2*u1)*u1^2 - 
        u1^4)*Li2[u/m^2] + 4*s*u1*(m^2 + u1)*(2*m^2 + u1)*
      (-(m^2*s) + t1*u1)*Log[-(u1/m^2)] - 
     u*u1^2*(-2*m^4*s - s*u1^2 + 2*m^2*u1*(t1 + 2*u1))*Log[x]^2 - 
     Sqrt[1 - (4*m^2)/s]*s*u*u1*
      (2*u1^2*(2*m^2 + u1)*zeta2 + 4*u1^2*(2*m^2 + u1)*Li2[-x] + 
        Log[x]*(-4*(m^2 + u1)*(-(m^2*s) + t1*u1) - 
           u1^2*(2*m^2 + u1)*(4*Log[-(u1/m^2)] + Log[x] - 4*Log[1 + x]))))/
  (16*s*u*u1*(-(m^2*s) + t1*u1)^2);

(*
(* INSERT SCALAR INTEGRALS *)
Print["Insert scalar integrals"];

a0[0] = 0;
a0[m] = m^2 (-2/eps+1);

b0[-k1-k2+p1,0,m] = (-2/eps+2);
b0[-k1-k2,m,m] = (-2/eps+2+Sqrt[1-4m^2/s] Log[x]);
b0[p1,0,m] = (-2/eps+2);
b0[-k2+p1,0,m] = (-2/eps+2-u1/u Log[-u1/m^2]);
b0[-k1,m,m] = (-2/eps);
b0[-k2,m,m] = (-2/eps);


c0[p1,-k1-k2,0,m,m] = 1/s 1/Sqrt[1-4m^2/s](-2/eps Log[x]-2Log[x] Log[1-x]-
     2 PolyLog[2,x]+1/2Log[x]^2-4 zeta2);
c0[-k2,-k1,m,m,m] = 1/s ( 1/2 Log[x]^2-3 zeta2);
c0[p1,-k2,0,m,m] = 1/u1 (zeta2 - PolyLog[2,u/m^2]);
c0[-k2+p1,-k1,0,m,m] = 1/u1 (zeta2 - PolyLog[2,u/m^2]);
*)

D0 = d0[p1,-k2,-k1,0,m,m,m];
d0[p1,-k2,-k1,0,m,m,m] = 1/s/u1 1/Sqrt[1-4 m^2/s] (-2/eps Log[x]-
     2 Log[x] Log[1-x] + 2 Log[x] Log[1+x] -2 Log[x] Log[-u1/m^2]-
     2 Li2[x] + 2 Li2[-x]-3 zeta2);


(* n->4 Limit *)
Print["eps -> 0 limit:"];

lim1 = Expand[box11/u1+box1cr1/t1];
Print["1"]
lim2 = Expand[box12/u1+box1cr2/t1];
Print["2"]
lim3 = Expand[box13/u1+box1cr3/t1];
Print["3"]
lim4 = Expand[box14/u1+box1cr4/t1];
Print["4"]
lim5 = Expand[box15/u1+box1cr5/t1];
Print["5"]
lim6 = Expand[box16/u1+box1cr6/t1];
Print["6"]
lim7 = Expand[box17/u1+box1cr7/t1];
Print["7"]
lim8 = Expand[box18/u1+box1cr8/t1];
Print["8"]

Print["Collecting 1/eps poles:"]

p11 = Coefficient[lim1,1/eps];
p12 = Coefficient[lim2,1/eps];
p13 = Coefficient[lim3,1/eps];
p14 = Coefficient[lim4,1/eps];
p15 = Coefficient[lim5,1/eps];
p16 = Coefficient[lim6,1/eps];
p17 = Coefficient[lim7,1/eps];
p18 = Coefficient[lim8,1/eps];

Print["Finite pieces:"]

r1 = (lim1 /. {1/eps^2->0,1/eps->0}) /. eps->0;
r2 = (lim2 /. {1/eps^2->0,1/eps->0}) /. eps->0; 
r3 = (lim3 /. {1/eps^2->0,1/eps->0}) /. eps->0;
r4 = (lim4 /. {1/eps^2->0,1/eps->0}) /. eps->0; 
r5 = (lim5 /. {1/eps^2->0,1/eps->0}) /. eps->0;
r6 = (lim6 /. {1/eps^2->0,1/eps->0}) /. eps->0; 
r7 = (lim7 /. {1/eps^2->0,1/eps->0}) /. eps->0;
r8 = (lim8 /. {1/eps^2->0,1/eps->0}) /. eps->0; 

Print["1/eps Pole:"] 

pole1sum=Expand[2 (p11+p12+p13+p14+p15+p16+p17+p18) ];
pole1help=Expand[pole1sum + (pole1sum /. {t1->u1,u1->t1,t->u,u->t})];
pole=FullSimplify[pole1help /. s->-t1-u1] /. t1+u1->-s;
pole>>box1pol.pole;

Print["Sort finite pieces:"]

finite=Expand[2 (r1+r2+r3+r4+r5+r6+r7+r8)];
finhelp=Expand[finite +  (finite /. {t1->u1,u1->t1,t->u,u->t})];

Print["Li2(t/m^2)"]
fin1h=Coefficient[finhelp,Li2[t/m^2]];
fin1=(FullSimplify[fin1h /. s->-t1-u1] /. t1+u1->-s) Li2[t/m^2];

Print["Li2(u/m^2)"]
fin2h=Coefficient[finhelp,Li2[u/m^2]];
fin2=(FullSimplify[fin2h /. s->-t1-u1] /. t1+u1->-s) Li2[u/m^2];

help = finhelp /. {Li2[t/m^2]->0, Li2[u/m^2]->0};
finhelp = help;

Print["Zeta2"]
fin3h=Coefficient[finhelp,zeta2];
fin3=(FullSimplify[fin3h /. s->-t1-u1] /. t1+u1->-s) zeta2;

help = finhelp /. {zeta2 ->0};
finhelp = help;

Print["Li2(x)"]
fin4h=Coefficient[finhelp,Li2[x]];
fin4=(FullSimplify[fin4h /. s->-t1-u1] /. t1+u1->-s) Li2[x];

help = finhelp /. {Li2[x] ->0};
finhelp = help;

Print["Li2(-x)"]
fin5h=Coefficient[finhelp,Li2[-x]];
fin5=(FullSimplify[fin5h /. s->-t1-u1] /. t1+u1->-s) Li2[-x];

help = finhelp /. {Li2[-x] ->0};
finhelp = help;

Print["Log(x)^2"]
fin6h=Coefficient[finhelp,Log[x]^2];
fin6=(FullSimplify[fin6h /. s->-t1-u1] /. t1+u1->-s) Log[x]^2;

help = finhelp /. {Log[x]^2 ->0};
finhelp = help;

Print["Log(-t1/m^2) Log(x)"]
fin7h=Coefficient[finhelp,Log[-t1/m^2] Log[x]];
fin7=(FullSimplify[fin7h /. s->-t1-u1] /. t1+u1->-s) Log[-t1/m^2] Log[x];

help = finhelp /. {Log[-t1/m^2] Log[x] ->0};
finhelp = help;

Print["Log(-u1/m^2) Log(x)"]

fin8h=Coefficient[finhelp,Log[-u1/m^2] Log[x]];
fin8=(FullSimplify[fin8h /. s->-t1-u1] /. t1+u1->-s) Log[-u1/m^2] Log[x];

help = finhelp /. {Log[-u1/m^2] Log[x] ->0};
finhelp = help;

Print["Log(-t1/m^2)"]
fin9h=Coefficient[finhelp,Log[-t1/m^2]];
fin9=(FullSimplify[fin9h /. s->-t1-u1] /. t1+u1->-s) Log[-t1/m^2];

help = finhelp /. {Log[-t1/m^2]->0};
finhelp = help;

Print["Log(-u1/m^2)"]

fin10h=Coefficient[finhelp,Log[-u1/m^2]];
fin10=(FullSimplify[fin10h /. s->-t1-u1] /. t1+u1->-s) Log[-u1/m^2];

help = finhelp /. {Log[-u1/m^2]->0};
finhelp = help;

Print["Log[1+x] Log(x)"]
fin11h=Coefficient[finhelp,Log[1+x] Log[x]];
fin11=(FullSimplify[fin11h /. s->-t1-u1] /. t1+u1->-s) Log[1+x] Log[x];

help = finhelp /. {Log[1+x] ->0};
finhelp = help;

Print["Log[1-x] Log(x)"]
fin12h=Coefficient[finhelp,Log[1-x] Log[x]];
fin12=(FullSimplify[fin12h /. s->-t1-u1] /. t1+u1->-s) Log[1-x] Log[x];

help = finhelp /. {Log[1-x] ->0};
finhelp = help;

Print["Log(x)"]
fin13h=Coefficient[finhelp,Log[x]];
fin13=(FullSimplify[fin13h /. s->-t1-u1] /. t1+u1->-s) Log[x];

help = finhelp /. {Log[x] ->0};
finhelp = help;

rest = (FullSimplify[finhelp /. s->-t1-u1] /. t1+u1->-s);

Print["Output finite pieces:"]
fin1>>box1pol.fin1;
fin2>>box1pol.fin2;
fin3>>box1pol.fin3;
fin4>>box1pol.fin4;
fin5>>box1pol.fin5;
fin6>>box1pol.fin6;
fin7>>box1pol.fin7;
fin8>>box1pol.fin8;
fin9>>box1pol.fin9;
fin10>>box1pol.fin10;
fin11>>box1pol.fin11;
fin12>>box1pol.fin12;
fin13>>box1pol.fin13;
rest>>box1pol.rest;
