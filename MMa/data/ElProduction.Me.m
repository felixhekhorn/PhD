BGQED = (-16*m2^2*(t1 + u1)^2 + (-2 + Dim)*t1*u1*(4*q2^2 + 4*sp^2 - 2*t1^2 + 
        Dim*t1^2 - 8*t1*u1 + 2*Dim*t1*u1 - 2*u1^2 + Dim*u1^2 + 
        4*sp*(t1 + u1) + 4*q2*(2*sp + t1 + u1)) - 
      4*m2*((-2 + Dim)*(t1 + u1)^3 + q2*((-2 + Dim)*t1^2 + 
          2*(-4 + Dim)*t1*u1 + (-2 + Dim)*u1^2) + 
        sp*((-2 + Dim)*t1^2 + 2*(-4 + Dim)*t1*u1 + (-2 + Dim)*u1^2)))/
     (4*t1^2*u1^2)
 
Dim /: Dim::usage = "Dim is the default dimension of Lorentz vectors"
 
BLQED = (-4*q2*((q2 + sp)*t1*u1 - m2*(t1 + u1)^2))/(sp^2*t1*u1)
 
\[CapitalDelta]BQED = (-2*m2*sp*(t1^3 + t1^2*u1 + t1*u1^2 + u1^3) + 
      t1*u1*(sp^2*(t1 + u1) + (t1 - u1)^2*(t1 + u1) + sp*(t1^2 + u1^2) + 
        q2*(-(t1 - u1)^2 + sp*(t1 + u1))))/(sp*t1^2*u1^2)
 
CoeffAG1 = {{4*m2*t1^2 + 2*q2*t1^2 + q2*t1^2*\[Epsilon], 
      (8*m2*sp*t1)/u1 + (4*q2*sp*t1)/u1 + (8*m2*t1^2)/u1 + (4*q2*t1^2)/u1 + 
       (2*q2*sp*t1*\[Epsilon])/u1 + (2*q2*t1^2*\[Epsilon])/u1, 
      (4*m2*sp^2)/u1^2 + (2*q2*sp^2)/u1^2 + (8*m2*sp*t1)/u1^2 + 
       (4*q2*sp*t1)/u1^2 + (4*m2*t1^2)/u1^2 + (2*q2*t1^2)/u1^2 + 
       (q2*sp^2*\[Epsilon])/u1^2 + (2*q2*sp*t1*\[Epsilon])/u1^2 + 
       (q2*t1^2*\[Epsilon])/u1^2, 0}, {4*m2^2 + 2*m2*q2 + 4*m2*t1 + 2*q2*t1 + 
       m2*q2*\[Epsilon] + q2*t1*\[Epsilon], 4*m2 + 2*q2 - 2*sp - 2*t1 + 
       (8*m2^2)/u1 - (2*q2^2)/u1 + (4*m2*sp)/u1 + (2*q2*sp)/u1 - 
       (2*sp^2)/u1 + (8*m2*t1)/u1 + (4*q2*t1)/u1 - (4*sp*t1)/u1 - 
       (4*t1^2)/u1 - u1 + q2*\[Epsilon] - sp*\[Epsilon] + 
       (2*m2*q2*\[Epsilon])/u1 - (q2^2*\[Epsilon])/u1 + 
       (q2*sp*\[Epsilon])/u1 - (sp^2*\[Epsilon])/u1 + 
       (2*q2*t1*\[Epsilon])/u1 - u1*\[Epsilon] - (u1*\[Epsilon]^2)/4, 
      (4*m2^2)/u1^2 + (2*m2*q2)/u1^2 + (4*m2*sp)/u1^2 + (2*q2*sp)/u1^2 + 
       (4*m2*t1)/u1^2 + (2*q2*t1)/u1^2 + (4*m2)/u1 + (2*q2)/u1 + (2*t1)/u1 - 
       \[Epsilon] + (m2*q2*\[Epsilon])/u1^2 + (q2*sp*\[Epsilon])/u1^2 + 
       (q2*t1*\[Epsilon])/u1^2 + (q2*\[Epsilon])/u1 - (sp*\[Epsilon])/u1 - 
       \[Epsilon]^2/2, -u1^(-1) - \[Epsilon]/u1 - \[Epsilon]^2/(4*u1)}, 
     {2*m2 + q2 + m2*\[Epsilon] + q2*\[Epsilon] + (q2*\[Epsilon]^2)/4, 
      (-2*q2)/u1 - (2*sp)/u1 - (4*t1)/u1 + \[Epsilon] + 
       (2*m2*\[Epsilon])/u1 - (q2*\[Epsilon])/u1 + (q2*\[Epsilon]^2)/(2*u1), 
      (2*m2)/u1^2 + q2/u1^2 + 2/u1 + (m2*\[Epsilon])/u1^2 + 
       (q2*\[Epsilon])/u1^2 + \[Epsilon]/u1 + (q2*\[Epsilon]^2)/(4*u1^2), 0}, 
     {0, -2/u1 - \[Epsilon]/u1, 0, 0}}
 
CoeffAL1 = {{(4*q2*t1^3)/sp + (4*q2*t1^4)/sp^2, (8*q2*t1^2)/u1 + 
       (16*q2*t1^3)/(sp*u1) + (8*q2*t1^4)/(sp^2*u1), 
      (4*q2*sp*t1)/u1^2 + (12*q2*t1^2)/u1^2 + (12*q2*t1^3)/(sp*u1^2) + 
       (4*q2*t1^4)/(sp^2*u1^2)}, {(4*m2*q2*t1)/sp + (4*m2*q2*t1^2)/sp^2 + 
       (8*q2*t1^2)/sp + (12*q2*t1^3)/sp^2, (2*q2*t1)/sp + (8*q2*t1)/u1 + 
       (8*m2*q2*t1)/(sp*u1) - (4*q2^2*t1)/(sp*u1) + 
       (8*m2*q2*t1^2)/(sp^2*u1) - (4*q2^2*t1^2)/(sp^2*u1) + 
       (24*q2*t1^2)/(sp*u1) + (16*q2*t1^3)/(sp^2*u1), 
      (4*q2*t1)/u1^2 + (4*m2*q2*t1)/(sp*u1^2) + (4*m2*q2*t1^2)/(sp^2*u1^2) + 
       (8*q2*t1^2)/(sp*u1^2) + (4*q2*t1^3)/(sp^2*u1^2) - (2*q2)/u1 - 
       (2*q2*t1)/(sp*u1)}, {(4*m2*q2)/sp + (8*m2*q2*t1)/sp^2 + (6*q2*t1)/sp + 
       (14*q2*t1^2)/sp^2 + (q2*t1*\[Epsilon])/sp + (q2*t1^2*\[Epsilon])/sp^2, 
      (2*q2)/u1 + (4*m2*q2)/(sp*u1) - (2*q2^2)/(sp*u1) + 
       (8*m2*q2*t1)/(sp^2*u1) - (4*q2^2*t1)/(sp^2*u1) + (12*q2*t1)/(sp*u1) + 
       (12*q2*t1^2)/(sp^2*u1) - (q2*\[Epsilon])/sp + (2*q2*t1*\[Epsilon])/
        (sp*u1) + (2*q2*t1^2*\[Epsilon])/(sp^2*u1), (2*q2*t1)/(sp*u1^2) + 
       (2*q2*t1^2)/(sp^2*u1^2) - (2*q2)/(sp*u1) + (q2*t1*\[Epsilon])/
        (sp*u1^2) + (q2*t1^2*\[Epsilon])/(sp^2*u1^2) - 
       (q2*\[Epsilon])/(sp*u1)}, {(4*m2*q2)/sp^2 + (2*q2)/sp + 
       (8*q2*t1)/sp^2 + (q2*\[Epsilon])/sp + (2*q2*t1*\[Epsilon])/sp^2, 
      (-2*q2^2)/(sp^2*u1) + (2*q2)/(sp*u1) + (4*q2*t1)/(sp^2*u1) - 
       (q2^2*\[Epsilon])/(sp^2*u1) + (q2*\[Epsilon])/(sp*u1) + 
       (2*q2*t1*\[Epsilon])/(sp^2*u1), 0}, 
     {(2*q2)/sp^2 + (q2*\[Epsilon])/sp^2, 0, 0}}
 
CoeffAP1k0 = {{0, 0, 0, 0}, {-4*h*m2*sp - 2*h*q2*t1 - (4*h*q2*t1^2)/sp - 
       2*h*m2*u1, -2*h*m2 + 2*h*q2 - 2*h*sp - 2*h*t1 + (2*h*q2*t1)/sp + 
       (2*h*q2*sp)/u1 - h*u1, (-4*h*m2*sp)/u1^2 - (2*h*q2*sp)/u1^2 - 
       (6*h*q2*t1)/u1^2 - (4*h*q2*t1^2)/(sp*u1^2) - (2*h*m2)/u1 + 
       (2*h*t1)/u1 - (2*h*q2*t1)/(sp*u1), (-2*h*m2)/u1^2 - h/u1}, 
     {-(h*q2) - (4*h*m2*q2)/sp - (6*h*q2*t1)/sp, (2*h*q2^2)/(sp*u1) + 
       (2*h*sp)/u1, -((h*q2)/u1^2) - (4*h*m2*q2)/(sp*u1^2) - 
       (2*h*q2*t1)/(sp*u1^2) + (2*h)/u1 - (2*h*q2)/(sp*u1), 0}, 
     {(-2*h*q2)/sp, (2*h*q2)/(sp*u1), 0, 0}}
 
CoeffAP1k2 = {{4*h*m2*sp + 2*h*q2*t1 + (4*h*q2*t1^2)/sp - 2*h*t1*u1, 
      (-2*h*q2*sp)/u1, (4*h*m2*sp)/u1^2 + (2*h*q2*sp)/u1^2 + 
       (6*h*q2*t1)/u1^2 + (4*h*q2*t1^2)/(sp*u1^2) - (2*h*t1)/u1, 0}}
 
AG1List = {{2, 2}, {2, 1}, {2, 0}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, 
     {0, 1}, {0, 0}, {-1, 1}}
 
AL1List = {{2, 2}, {2, 1}, {2, 0}, {1, 2}, {1, 1}, {1, 0}, {0, 2}, {0, 1}, 
     {0, 0}, {-1, 2}, {-1, 1}, {-2, 2}}
 
AP1k0List = {{1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, {0, 1}, {0, 0}, {-1, 
     2}, {-1, 1}}
 
AP1k2List = {{2, 2}, {2, 1}, {2, 0}}
 
CoeffAG2 = {{2*q2*t1^2 + q2*t1^2*\[Epsilon], -2*m2*q2 - 2*q2^2 + 2*m2*sp + 
       (2*q2^3)/(q2 + sp) - (4*m2*q2*sp)/(q2 + sp) + (2*q2^2*sp)/(q2 + sp) - 
       (4*m2*sp^2)/(q2 + sp) + 4*q2*t1 - (8*q2^2*t1)/(q2 + sp) - 
       (4*q2*sp*t1)/(q2 + sp) - 4*t1^2 + (8*q2*t1^2)/(q2 + sp) + 
       (4*sp*t1^2)/(q2 + sp) + 4*q2*u1 - (4*q2^2*u1)/(q2 + sp) - 
       (4*q2*sp*u1)/(q2 + sp) - 4*t1*u1 + (8*q2*t1*u1)/(q2 + sp) + 
       (4*sp*t1*u1)/(q2 + sp) - 2*u1^2 + (2*q2*u1^2)/(q2 + sp) + 
       (2*sp*u1^2)/(q2 + sp) + m2*q2*\[Epsilon] - q2^2*\[Epsilon] - 
       m2*sp*\[Epsilon] - (2*m2*q2^2*\[Epsilon])/(q2 + sp) + 
       (q2^3*\[Epsilon])/(q2 + sp) - (2*m2*q2*sp*\[Epsilon])/(q2 + sp) + 
       (q2^2*sp*\[Epsilon])/(q2 + sp) - (2*q2^2*t1*\[Epsilon])/(q2 + sp) + 
       (2*q2*t1^2*\[Epsilon])/(q2 + sp) + 2*q2*u1*\[Epsilon] - 
       (2*q2^2*u1*\[Epsilon])/(q2 + sp) - (2*q2*sp*u1*\[Epsilon])/(q2 + sp) + 
       (2*q2*t1*u1*\[Epsilon])/(q2 + sp) - u1^2*\[Epsilon] + 
       (q2*u1^2*\[Epsilon])/(q2 + sp) + (sp*u1^2*\[Epsilon])/(q2 + sp), 
      4*m2 - (2*m2*q2^2)/(q2 + sp)^2 + (2*q2^3)/(q2 + sp)^2 - 
       (2*m2*q2*sp)/(q2 + sp)^2 - (2*m2*q2)/(q2 + sp) - (4*m2*sp)/(q2 + sp) - 
       (4*q2^2*t1)/(q2 + sp)^2 + (2*q2*t1^2)/(q2 + sp)^2 - 
       (4*q2^2*u1)/(q2 + sp)^2 + (4*q2*t1*u1)/(q2 + sp)^2 + 
       (2*q2*u1^2)/(q2 + sp)^2 - 2*m2*\[Epsilon] - (m2*q2^2*\[Epsilon])/
        (q2 + sp)^2 + (q2^3*\[Epsilon])/(q2 + sp)^2 - (m2*q2*sp*\[Epsilon])/
        (q2 + sp)^2 + (m2*q2*\[Epsilon])/(q2 + sp) - (2*q2^2*t1*\[Epsilon])/
        (q2 + sp)^2 + (q2*t1^2*\[Epsilon])/(q2 + sp)^2 - 
       (2*q2^2*u1*\[Epsilon])/(q2 + sp)^2 + (2*q2*t1*u1*\[Epsilon])/
        (q2 + sp)^2 + (q2*u1^2*\[Epsilon])/(q2 + sp)^2, 
      (-2*m2)/(q2 + sp) - (m2*\[Epsilon])/(q2 + sp)}, 
     {2*m2*q2 + 2*q2*t1 + m2*q2*\[Epsilon] + q2*t1*\[Epsilon], 
      -4*m2 + 3*q2 + sp + (4*m2*q2)/(q2 + sp) - (6*q2^2)/(q2 + sp) + 
       (8*m2*sp)/(q2 + sp) - (2*q2*sp)/(q2 + sp) - (2*sp^2)/(q2 + sp) - 
       6*t1 + (12*q2*t1)/(q2 + sp) + (4*sp*t1)/(q2 + sp) - 
       (4*t1^2)/(q2 + sp) - 4*u1 + (8*q2*u1)/(q2 + sp) + 
       (2*sp*u1)/(q2 + sp) - (4*t1*u1)/(q2 + sp) - (2*u1^2)/(q2 + sp) + 
       q2*\[Epsilon] + (2*m2*q2*\[Epsilon])/(q2 + sp) - 
       (3*q2^2*\[Epsilon])/(q2 + sp) - (q2*sp*\[Epsilon])/(q2 + sp) - 
       (sp^2*\[Epsilon])/(q2 + sp) + (2*q2*t1*\[Epsilon])/(q2 + sp) - 
       u1*\[Epsilon] + (3*q2*u1*\[Epsilon])/(q2 + sp) - 
       (u1^2*\[Epsilon])/(q2 + sp) + (q2*\[Epsilon]^2)/4 - 
       (sp*\[Epsilon]^2)/4 - (q2^2*\[Epsilon]^2)/(2*(q2 + sp)) - 
       (q2*sp*\[Epsilon]^2)/(2*(q2 + sp)), 2 + (2*m2*q2)/(q2 + sp)^2 - 
       (3*q2^2)/(q2 + sp)^2 - (q2*sp)/(q2 + sp)^2 + (4*m2)/(q2 + sp) + 
       q2/(q2 + sp) - (2*sp)/(q2 + sp) + (2*q2*t1)/(q2 + sp)^2 + 
       (2*t1)/(q2 + sp) + (2*q2*u1)/(q2 + sp)^2 + (m2*q2*\[Epsilon])/
        (q2 + sp)^2 - (2*q2^2*\[Epsilon])/(q2 + sp)^2 - 
       (q2*sp*\[Epsilon])/(q2 + sp)^2 + (2*q2*\[Epsilon])/(q2 + sp) - 
       (sp*\[Epsilon])/(q2 + sp) + (q2*t1*\[Epsilon])/(q2 + sp)^2 + 
       (q2*u1*\[Epsilon])/(q2 + sp)^2 - (u1*\[Epsilon])/(q2 + sp) - 
       \[Epsilon]^2/2 - (q2^2*\[Epsilon]^2)/(4*(q2 + sp)^2) - 
       (q2*sp*\[Epsilon]^2)/(4*(q2 + sp)^2) + (q2*\[Epsilon]^2)/
        (4*(q2 + sp)), -(q2 + sp)^(-1) - \[Epsilon]/(q2 + sp) - 
       \[Epsilon]^2/(4*(q2 + sp))}, {q2 + q2*\[Epsilon] + 
       (q2*\[Epsilon]^2)/4, -4 - (4*m2)/(q2 + sp) + (4*q2)/(q2 + sp) + 
       (4*sp)/(q2 + sp) - (4*t1)/(q2 + sp) - (2*u1)/(q2 + sp) - \[Epsilon] + 
       (q2*\[Epsilon])/(q2 + sp) + (2*sp*\[Epsilon])/(q2 + sp) + 
       (q2*\[Epsilon]^2)/(2*(q2 + sp)), q2/(q2 + sp)^2 + 2/(q2 + sp) + 
       (q2*\[Epsilon])/(q2 + sp)^2 + \[Epsilon]/(q2 + sp) + 
       (q2*\[Epsilon]^2)/(4*(q2 + sp)^2), 0}, 
     {0, -2/(q2 + sp) - \[Epsilon]/(q2 + sp), 0, 0}}
 
CoeffAL2 = {{0, 0, (-4*m2*q2)/sp, (-4*m2*q2)/sp^2}, 
     {(-4*q2*t1^2)/sp, (8*m2*q2)/sp + (4*q2*t1)/sp - (4*q2*t1^2)/sp^2, 
      (12*m2*q2)/sp^2 - (2*q2)/sp + (4*q2*t1)/sp^2 - (q2*\[Epsilon])/sp, 
      (-2*q2)/sp^2 - (q2*\[Epsilon])/sp^2}, 
     {(-4*m2*q2)/sp - (4*q2*t1)/sp + (4*q2*t1^2)/sp^2, 
      (-12*m2*q2)/sp^2 + (4*q2)/sp - (8*q2*t1)/sp^2 + (2*q2*\[Epsilon])/sp, 
      (6*q2)/sp^2 + (3*q2*\[Epsilon])/sp^2, 0}, 
     {(4*m2*q2)/sp^2 - (2*q2)/sp + (4*q2*t1)/sp^2 - (q2*\[Epsilon])/sp, 
      (-6*q2)/sp^2 - (3*q2*\[Epsilon])/sp^2, 0, 0}, 
     {(2*q2)/sp^2 + (q2*\[Epsilon])/sp^2, 0, 0, 0}}
 
CoeffAP2 = {{-2*h*q2*t1^2, 2*h*m2*q2 + h*q2^2 + 2*h*m2*sp - h*q2*sp - 
       (h*q2^3)/(q2 + sp) + (h*q2*sp^2)/(q2 + sp) + (2*h*q2^2*t1)/sp + 
       (2*h*q2^2*t1)/(q2 + sp) - (2*h*q2^3*t1)/(sp*(q2 + sp)) - 
       (2*h*q2*t1^2)/sp - (2*h*q2*t1^2)/(q2 + sp) + (2*h*q2^2*t1^2)/
        (sp*(q2 + sp)) - 3*h*q2*u1 + h*sp*u1 + (3*h*q2^2*u1)/(q2 + sp) + 
       (2*h*q2*sp*u1)/(q2 + sp) - (h*sp^2*u1)/(q2 + sp) + 2*h*t1*u1 - 
       (6*h*q2*t1*u1)/(q2 + sp) - (2*h*sp*t1*u1)/(q2 + sp) + 2*h*u1^2 - 
       (2*h*q2*u1^2)/(q2 + sp) - (2*h*sp*u1^2)/(q2 + sp), 
      4*h*m2 - 2*h*q2 + (4*h*m2*q2)/sp - (h*q2^2)/sp + 
       (2*h*m2*q2^2)/(q2 + sp)^2 - (2*h*q2^3)/(q2 + sp)^2 + 
       (2*h*m2*q2*sp)/(q2 + sp)^2 - (6*h*m2*q2)/(q2 + sp) + 
       (3*h*q2^2)/(q2 + sp) + (h*q2^3)/(sp*(q2 + sp)) - 
       (4*h*m2*sp)/(q2 + sp) + (2*h*q2*sp)/(q2 + sp) + h*t1 + 
       (2*h*q2*t1)/sp + (4*h*q2^2*t1)/(q2 + sp)^2 - (3*h*q2*t1)/(q2 + sp) - 
       (2*h*q2^2*t1)/(sp*(q2 + sp)) - (h*sp*t1)/(q2 + sp) - (2*h*t1^2)/sp - 
       (2*h*q2*t1^2)/(q2 + sp)^2 + (2*h*t1^2)/(q2 + sp) + 
       (2*h*q2*t1^2)/(sp*(q2 + sp)) + 2*h*u1 + (h*q2*u1)/sp + 
       (4*h*q2^2*u1)/(q2 + sp)^2 - (3*h*q2*u1)/(q2 + sp) - 
       (h*q2^2*u1)/(sp*(q2 + sp)) - (2*h*sp*u1)/(q2 + sp) - (2*h*t1*u1)/sp - 
       (4*h*q2*t1*u1)/(q2 + sp)^2 + (2*h*t1*u1)/(q2 + sp) + 
       (2*h*q2*t1*u1)/(sp*(q2 + sp)) - (2*h*q2*u1^2)/(q2 + sp)^2, 
      -((h*q2)/sp) - (2*h*m2)/(q2 + sp) + (h*q2)/(q2 + sp) - 
       (4*h*m2*q2)/(sp*(q2 + sp)) + (h*q2^2)/(sp*(q2 + sp)) + (h*t1)/sp - 
       (h*t1)/(q2 + sp) - (h*q2*t1)/(sp*(q2 + sp)) + (h*u1)/sp - 
       (h*u1)/(q2 + sp) - (h*q2*u1)/(sp*(q2 + sp))}, 
     {-2*h*m2*q2 - 2*h*q2*t1 + (4*h*q2*t1^2)/sp, -4*h*m2 + h*q2 - 
       (8*h*m2*q2)/sp + (h*q2^2)/sp + h*sp + (4*h*m2*q2)/(q2 + sp) + 
       (h*q2^2)/(q2 + sp) - (h*q2^3)/(sp*(q2 + sp)) - (4*h*q2*sp)/(q2 + sp) + 
       2*h*t1 - (8*h*q2*t1)/sp - (4*h*q2*t1)/(q2 + sp) + 
       (4*h*q2^2*t1)/(sp*(q2 + sp)) - (4*h*q2*t1^2)/(sp*(q2 + sp)) + 2*h*u1 - 
       (h*q2*u1)/sp - (5*h*q2*u1)/(q2 + sp) + (h*q2^2*u1)/(sp*(q2 + sp)) + 
       (2*h*t1*u1)/sp + (2*h*t1*u1)/(q2 + sp) - (2*h*q2*t1*u1)/
        (sp*(q2 + sp)) + (2*h*u1^2)/(q2 + sp) - (3*h*q2*\[Epsilon])/2 - 
       (h*sp*\[Epsilon])/2 + (h*q2^2*\[Epsilon])/(q2 + sp) + 
       (h*q2*sp*\[Epsilon])/(q2 + sp), 2*h + (6*h*q2)/sp - 
       (2*h*m2*q2)/(q2 + sp)^2 + (3*h*q2^2)/(q2 + sp)^2 + 
       (h*q2*sp)/(q2 + sp)^2 + (4*h*m2)/(q2 + sp) - (9*h*q2)/(q2 + sp) + 
       (8*h*m2*q2)/(sp*(q2 + sp)) - (4*h*q2^2)/(sp*(q2 + sp)) - 
       (2*h*sp)/(q2 + sp) - (h*t1)/sp - (2*h*q2*t1)/(q2 + sp)^2 + 
       (3*h*t1)/(q2 + sp) + (5*h*q2*t1)/(sp*(q2 + sp)) - (2*h*u1)/sp - 
       (2*h*q2*u1)/(q2 + sp)^2 + (2*h*u1)/(q2 + sp) + 
       (2*h*q2*u1)/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/sp + 
       (h*q2^2*\[Epsilon])/(2*(q2 + sp)^2) + (h*q2*sp*\[Epsilon])/
        (2*(q2 + sp)^2) - (3*h*q2*\[Epsilon])/(2*(q2 + sp)) - 
       (h*sp*\[Epsilon])/(q2 + sp), -(h/(q2 + sp)) - 
       (2*h*q2)/(sp*(q2 + sp)) - (h*\[Epsilon])/(2*(q2 + sp)) - 
       (h*q2*\[Epsilon])/(sp*(q2 + sp))}, 
     {-(h*q2) + (4*h*m2*q2)/sp + (4*h*q2*t1)/sp + (h*q2*\[Epsilon])/2, 
      (-7*h*q2)/sp + (3*h*q2)/(q2 + sp) - (4*h*m2*q2)/(sp*(q2 + sp)) + 
       (3*h*q2^2)/(sp*(q2 + sp)) - (4*h*q2*t1)/(sp*(q2 + sp)) + (h*u1)/sp + 
       (h*u1)/(q2 + sp) - (h*q2*u1)/(sp*(q2 + sp)) + h*\[Epsilon] + 
       (2*h*q2*\[Epsilon])/sp, -((h*q2)/(q2 + sp)^2) + (2*h)/(q2 + sp) + 
       (4*h*q2)/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/(2*(q2 + sp)^2) + 
       (h*\[Epsilon])/(q2 + sp) + (2*h*q2*\[Epsilon])/(sp*(q2 + sp)), 0}, 
     {(2*h*q2)/sp - (h*q2*\[Epsilon])/sp, (-2*h*q2)/(sp*(q2 + sp)) - 
       (h*q2*\[Epsilon])/(sp*(q2 + sp)), 0, 0}}
 
AG2List = {{2, 2}, {2, 1}, {2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, 
     {0, 2}, {0, 1}, {0, 0}, {-1, 1}}
 
AL2List = {{2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, {0, 1}, 
     {0, 0}, {-1, 2}, {-1, 1}, {-2, 2}}
 
AP2List = {{2, 2}, {2, 1}, {2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, 
     {0, 2}, {0, 1}, {0, 0}, {-1, 2}, {-1, 1}}
 
CoeffAG3 = {{{{-2*m2*q2*sp + q2^2*sp + 2*m2*sp^2 + 2*m2*q2*t1 + 3*q2^2*t1 + 
         2*m2*sp*t1 - 5*q2*sp*t1 + 3*sp^2*t1 - 5*q2*t1^2 + 7*sp*t1^2 + 
         4*t1^3 + 2*m2*sp*u1 - q2*sp*u1 - 5*q2*t1*u1 + 6*sp*t1*u1 + 
         7*t1^2*u1 + 3*t1*u1^2 + (q2^2*sp*\[Epsilon])/2 + 
         (q2*sp^2*\[Epsilon])/4 + q2^2*t1*\[Epsilon] - (q2*sp*u1*\[Epsilon])/
          4 - (sp^2*u1*\[Epsilon])/4 - (q2*t1*u1*\[Epsilon])/4 - 
         (sp*t1*u1*\[Epsilon])/4 - (sp*u1^2*\[Epsilon])/4, 
        2*m2*q2 + q2^2 + 2*m2*sp - 2*q2*sp - (2*m2*q2^2)/(q2 + sp) - 
         q2^3/(q2 + sp) + (q2^2*sp)/(q2 + sp) - 4*m2*t1 - 8*q2*t1 + 4*sp*t1 + 
         (4*q2^2*t1)/(q2 + sp) - (2*q2*sp*t1)/(q2 + sp) + 6*t1^2 - 
         (6*q2*t1^2)/(q2 + sp) + (2*sp*t1^2)/(q2 + sp) + (4*t1^3)/(q2 + sp) - 
         2*m2*u1 - 2*q2*u1 + 2*sp*u1 + (2*m2*q2*u1)/(q2 + sp) + 
         (2*q2^2*u1)/(q2 + sp) - (q2*sp*u1)/(q2 + sp) + 7*t1*u1 - 
         (4*q2*t1*u1)/(q2 + sp) + (sp*t1*u1)/(q2 + sp) + 
         (5*t1^2*u1)/(q2 + sp) + u1^2 - (q2*u1^2)/(q2 + sp) + 
         (t1*u1^2)/(q2 + sp) + (q2^2*\[Epsilon])/2 - (q2*sp*\[Epsilon])/2 - 
         (q2^3*\[Epsilon])/(2*(q2 + sp)) + (q2^2*sp*\[Epsilon])/
          (4*(q2 + sp)) - 2*q2*t1*\[Epsilon] + (q2^2*t1*\[Epsilon])/
          (q2 + sp) - (3*q2*u1*\[Epsilon])/4 + (sp*u1*\[Epsilon])/2 + 
         (3*q2^2*u1*\[Epsilon])/(4*(q2 + sp)) - (q2*sp*u1*\[Epsilon])/
          (4*(q2 + sp)) + (t1*u1*\[Epsilon])/2 + (u1^2*\[Epsilon])/4 - 
         (q2*u1^2*\[Epsilon])/(4*(q2 + sp)), t1 + (2*m2*t1)/(q2 + sp) - 
         (q2*t1)/(q2 + sp) + t1^2/(q2 + sp) + (q2*\[Epsilon])/4 - 
         (q2^2*\[Epsilon])/(4*(q2 + sp)) - (u1*\[Epsilon])/4 + 
         (q2*u1*\[Epsilon])/(4*(q2 + sp)) - (t1*u1*\[Epsilon])/
          (4*(q2 + sp))}, {-2*q2*sp + sp^2 - 2*q2*t1 + 3*sp*t1 + 2*t1^2 + 
         sp*u1 + 2*t1*u1 - (5*q2*sp*\[Epsilon])/4 + (sp^2*\[Epsilon])/2 - 
         (q2*t1*\[Epsilon])/2 + (sp*t1*\[Epsilon])/2 + (sp*u1*\[Epsilon])/2, 
        -2*m2 - q2 + 3*sp + (2*m2*q2)/(q2 + sp) + q2^2/(q2 + sp) - 
         (q2*sp)/(q2 + sp) + 5*t1 - (2*q2*t1)/(q2 + sp) + 
         (2*t1^2)/(q2 + sp) + u1 - (q2*u1)/(q2 + sp) - (3*q2*\[Epsilon])/4 + 
         (3*sp*\[Epsilon])/2 + (3*q2^2*\[Epsilon])/(4*(q2 + sp)) - 
         (q2*sp*\[Epsilon])/(2*(q2 + sp)) + t1*\[Epsilon] - 
         (q2*t1*\[Epsilon])/(q2 + sp) + (u1*\[Epsilon])/2 - 
         (q2*u1*\[Epsilon])/(2*(q2 + sp)), (t1*\[Epsilon])/(2*(q2 + sp))}, 
       {0, 0, 0}}, {{2*m2*sp - 3*q2*sp + sp^2 - 6*q2*t1 + 8*sp*t1 + 8*t1^2 + 
         (2*m2*q2*sp)/u1 + (q2^2*sp)/u1 - (q2*sp^2)/u1 + (2*m2*q2*t1)/u1 + 
         (2*q2^2*t1)/u1 + (2*m2*sp*t1)/u1 - (3*q2*sp*t1)/u1 + (sp^2*t1)/u1 - 
         (3*q2*t1^2)/u1 + (5*sp*t1^2)/u1 + (4*t1^3)/u1 + 2*sp*u1 + 4*t1*u1 - 
         q2*sp*\[Epsilon] + (sp^2*\[Epsilon])/4 - (3*q2*t1*\[Epsilon])/2 + 
         (sp*t1*\[Epsilon])/2 + (q2^2*sp*\[Epsilon])/(2*u1) - 
         (q2*sp^2*\[Epsilon])/(4*u1) + (q2^2*t1*\[Epsilon])/u1 + 
         (sp*u1*\[Epsilon])/2, -2*m2 - 4*q2 + 3*sp + (2*m2*q2)/(q2 + sp) + 
         (4*q2^2)/(q2 + sp) - (2*q2*sp)/(q2 + sp) + 9*t1 - 
         (7*q2*t1)/(q2 + sp) + (sp*t1)/(q2 + sp) + (4*t1^2)/(q2 + sp) - 
         (2*m2*q2)/u1 + q2^2/u1 - (6*m2*sp)/u1 - (3*q2*sp)/u1 + 
         (2*m2*q2^2)/((q2 + sp)*u1) - q2^3/((q2 + sp)*u1) + 
         (2*m2*q2*sp)/((q2 + sp)*u1) + (2*q2^2*sp)/((q2 + sp)*u1) - 
         (4*m2*t1)/u1 - (5*q2*t1)/u1 + (4*q2^2*t1)/((q2 + sp)*u1) - 
         (3*q2*sp*t1)/((q2 + sp)*u1) + (2*t1^2)/u1 - 
         (6*q2*t1^2)/((q2 + sp)*u1) + (2*sp*t1^2)/((q2 + sp)*u1) + 
         (4*t1^3)/((q2 + sp)*u1) + 3*u1 - (3*q2*u1)/(q2 + sp) - 
         2*q2*\[Epsilon] + (3*sp*\[Epsilon])/2 + (2*q2^2*\[Epsilon])/
          (q2 + sp) - (3*q2*sp*\[Epsilon])/(4*(q2 + sp)) + 3*t1*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/(q2 + sp) + (q2^2*\[Epsilon])/(2*u1) - 
         (3*q2*sp*\[Epsilon])/(2*u1) - (q2^3*\[Epsilon])/(2*(q2 + sp)*u1) + 
         (3*q2^2*sp*\[Epsilon])/(4*(q2 + sp)*u1) - (2*q2*t1*\[Epsilon])/u1 + 
         (q2^2*t1*\[Epsilon])/((q2 + sp)*u1) + (3*u1*\[Epsilon])/2 - 
         (3*q2*u1*\[Epsilon])/(2*(q2 + sp)), (2*m2)/u1 - 
         (2*m2*q2)/((q2 + sp)*u1) - t1/u1 + (2*m2*t1)/((q2 + sp)*u1) + 
         (q2*t1)/((q2 + sp)*u1) - t1^2/((q2 + sp)*u1) + \[Epsilon]/4 - 
         (q2*\[Epsilon])/(4*(q2 + sp)) + (t1*\[Epsilon])/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*u1) + (q2^2*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {4*sp + 5*t1 + (2*m2*sp)/u1 - (q2*sp)/u1 + sp^2/u1 - (3*q2*t1)/u1 + 
         (7*sp*t1)/u1 + (6*t1^2)/u1 + (3*sp*\[Epsilon])/4 + 
         (q2*sp*\[Epsilon])/(4*u1) - (q2*t1*\[Epsilon])/(2*u1) + 
         (sp*t1*\[Epsilon])/(2*u1), 2 - (2*q2)/(q2 + sp) - t1/(q2 + sp) - 
         (2*q2)/u1 - sp/u1 + (2*q2^2)/((q2 + sp)*u1) + (3*t1)/u1 - 
         (3*q2*t1)/((q2 + sp)*u1) + (2*t1^2)/((q2 + sp)*u1) + 
         (5*\[Epsilon])/4 - (5*q2*\[Epsilon])/(4*(q2 + sp)) - 
         (5*q2*\[Epsilon])/(4*u1) - (sp*\[Epsilon])/(2*u1) + 
         (5*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + (t1*\[Epsilon])/u1 - 
         (q2*t1*\[Epsilon])/((q2 + sp)*u1), \[Epsilon]/(2*u1) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/
          (2*(q2 + sp)*u1)}, {(2*sp)/u1 + (2*t1)/u1 + (sp*\[Epsilon])/(2*u1), 
        u1^(-1) - q2/((q2 + sp)*u1) + \[Epsilon]/(2*u1) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}}, 
      {{t1 - (q2*t1)/u1 + t1^2/u1 - (sp*\[Epsilon])/4 + (q2*sp*\[Epsilon])/
          (4*u1) - (q2*t1*\[Epsilon])/(4*u1) - (sp*t1*\[Epsilon])/(4*u1), 
        -(t1/(q2 + sp)) + (q2*t1)/((q2 + sp)*u1) - t1^2/((q2 + sp)*u1) + 
         \[Epsilon]/4 - (q2*\[Epsilon])/(4*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*u1) + (q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + 
         (t1*\[Epsilon])/(2*u1), -(t1*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {t1/u1 - (sp*\[Epsilon])/(4*u1), -(t1/((q2 + sp)*u1)) + 
         \[Epsilon]/(4*u1) - (q2*\[Epsilon])/(4*(q2 + sp)*u1), 0}, 
       {0, 0, 0}}}, {{{-4*m2*q2 + 2*q2^2 + 4*m2*sp - q2*sp + 4*m2*t1 - 
         3*q2*t1 + 2*sp*t1 + 2*t1^2 + 4*m2*u1 - 3*q2*u1 + sp*u1 + 3*t1*u1 + 
         u1^2 + (5*q2^2*\[Epsilon])/4 - (q2*sp*\[Epsilon])/2 - 
         q2*t1*\[Epsilon] - (7*q2*u1*\[Epsilon])/4 + (sp*u1*\[Epsilon])/2 + 
         (t1*u1*\[Epsilon])/2 + (u1^2*\[Epsilon])/2, 
        4*m2 - 3*q2 - (2*m2*q2)/(q2 + sp) + q2^2/(q2 + sp) - 
         (q2*sp)/(q2 + sp) + 3*t1 + (4*m2*t1)/(q2 + sp) - 
         (8*q2*t1)/(q2 + sp) + (2*sp*t1)/(q2 + sp) + (6*t1^2)/(q2 + sp) + 
         3*u1 - (2*q2*u1)/(q2 + sp) + (sp*u1)/(q2 + sp) + 
         (7*t1*u1)/(q2 + sp) + u1^2/(q2 + sp) - (3*q2*\[Epsilon])/4 - 
         (q2^2*\[Epsilon])/(4*(q2 + sp)) - (q2*t1*\[Epsilon])/(q2 + sp) + 
         (3*u1*\[Epsilon])/4 + (q2*u1*\[Epsilon])/(4*(q2 + sp)) + 
         (t1*u1*\[Epsilon])/(2*(q2 + sp)), (2*m2)/(q2 + sp) + t1/(q2 + sp) + 
         (q2*\[Epsilon])/(4*(q2 + sp)) - (u1*\[Epsilon])/(4*(q2 + sp))}, 
       {-4*q2 + 2*sp + 2*t1 + 2*u1 - (5*q2*\[Epsilon])/2 + sp*\[Epsilon] + 
         t1*\[Epsilon] + u1*\[Epsilon], 4 + (4*t1)/(q2 + sp) + 
         (3*\[Epsilon])/2 + (t1*\[Epsilon])/(q2 + sp), 
        \[Epsilon]/(2*(q2 + sp))}, {0, 0, 0}}, 
      {{4*m2 - 4*q2 + sp + 5*t1 + (2*m2*q2)/u1 + q2^2/u1 - (q2*sp)/u1 + 
         (4*m2*t1)/u1 - (2*q2*t1)/u1 + (2*t1^2)/u1 + 3*u1 - 
         (9*q2*\[Epsilon])/4 + (sp*\[Epsilon])/2 + t1*\[Epsilon] + 
         (3*q2^2*\[Epsilon])/(4*u1) - (q2*sp*\[Epsilon])/(2*u1) - 
         (q2*t1*\[Epsilon])/u1 + (3*u1*\[Epsilon])/2, 2 - q2/(q2 + sp) + 
         (3*t1)/(q2 + sp) - (2*m2)/u1 - (2*q2)/u1 - 
         (4*m2*q2)/((q2 + sp)*u1) + (2*q2^2)/((q2 + sp)*u1) - t1/u1 + 
         (4*m2*t1)/((q2 + sp)*u1) - (3*q2*t1)/((q2 + sp)*u1) + 
         (2*t1^2)/((q2 + sp)*u1) - u1/(q2 + sp) + (5*\[Epsilon])/4 - 
         (3*q2*\[Epsilon])/(4*(q2 + sp)) + (t1*\[Epsilon])/(q2 + sp) - 
         (5*q2*\[Epsilon])/(4*u1) + (5*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) - 
         (q2*t1*\[Epsilon])/((q2 + sp)*u1) - (u1*\[Epsilon])/(2*(q2 + sp)), 
        -(t1/((q2 + sp)*u1)) + \[Epsilon]/(4*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*(q2 + sp)*u1)}, {4 + (4*m2)/u1 + (4*t1)/u1 + 
         (3*\[Epsilon])/2 + (t1*\[Epsilon])/u1, -(q2 + sp)^(-1) - u1^(-1) - 
         (2*q2)/((q2 + sp)*u1) + (2*t1)/((q2 + sp)*u1) - 
         (3*q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/((q2 + sp)*u1), 
        0}, {2/u1 + \[Epsilon]/u1, 0, 0}}, 
      {{(t1*\[Epsilon])/(2*u1), \[Epsilon]/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/(2*(q2 + sp)*u1), 
        0}, {\[Epsilon]/(2*u1), 0, 0}, {0, 0, 0}}}, 
     {{{0, (4*m2)/(q2 + sp) - (2*q2)/(q2 + sp) + (2*t1)/(q2 + sp) + 
         (2*u1)/(q2 + sp) - (q2*\[Epsilon])/(2*(q2 + sp)) + 
         (u1*\[Epsilon])/(2*(q2 + sp)), 0}, 
       {0, 2/(q2 + sp) + \[Epsilon]/(q2 + sp), 0}, {0, 0, 0}}, 
      {{0, (q2 + sp)^(-1) - q2/((q2 + sp)*u1) + \[Epsilon]/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}}
 
CoeffAL3 = {{{{2*q2^2*t1 - 4*q2*t1^2 + (6*q2^2*t1^2)/sp + 
         (4*q2^2*t1^3)/sp^2 - (4*q2*t1^3)/sp - 2*q2*t1*u1 - 
         (4*q2*t1^2*u1)/sp, (-4*q2*t1^2)/sp - (4*q2*t1^3)/sp^2}, 
       {-2*q2*t1 - (2*q2*t1^2)/sp, 0}}, 
      {{-2*q2*sp - 6*q2*t1 - (4*q2*t1^2)/sp + (2*q2^2*sp)/u1 + 
         (8*q2^2*t1)/u1 - (4*q2*sp*t1)/u1 - (8*q2*t1^2)/u1 + 
         (10*q2^2*t1^2)/(sp*u1) + (4*q2^2*t1^3)/(sp^2*u1) - 
         (4*q2*t1^3)/(sp*u1), (-4*q2*t1)/u1 - (8*q2*t1^2)/(sp*u1) - 
         (4*q2*t1^3)/(sp^2*u1)}, {(-2*q2*sp)/u1 - (4*q2*t1)/u1 - 
         (2*q2*t1^2)/(sp*u1), 0}}, {{0, 0}, {0, 0}}}, 
     {{{-4*m2*q2 + 2*q2^2 - 6*q2*t1 - (8*m2*q2*t1)/sp + (12*q2^2*t1)/sp + 
         (10*q2^2*t1^2)/sp^2 - (16*q2*t1^2)/sp - (8*q2*t1^3)/sp^2 - 2*q2*u1 - 
         (10*q2*t1*u1)/sp - (6*q2*t1^2*u1)/sp^2 + q2^2*\[Epsilon] + 
         (2*q2^2*t1*\[Epsilon])/sp - q2*u1*\[Epsilon] - (q2*t1*u1*\[Epsilon])/
          sp, (-6*q2*t1)/sp - (10*q2*t1^2)/sp^2}, 
       {-2*q2 - (8*q2*t1)/sp - (4*q2*t1^2)/sp^2 - q2*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/sp, 0}}, 
      {{-6*q2 - (16*q2*t1)/sp - (8*q2*t1^2)/sp^2 - (4*m2*q2)/u1 + 
         (6*q2^2)/u1 - (8*q2*t1)/u1 - (8*m2*q2*t1)/(sp*u1) + 
         (16*q2^2*t1)/(sp*u1) + (10*q2^2*t1^2)/(sp^2*u1) - 
         (16*q2*t1^2)/(sp*u1) - (8*q2*t1^3)/(sp^2*u1) - q2*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/sp + (q2^2*\[Epsilon])/u1 + 
         (2*q2^2*t1*\[Epsilon])/(sp*u1), (-2*q2*t1)/(sp*u1) - 
         (2*q2*t1^2)/(sp^2*u1)}, {(-4*q2)/u1 - (8*q2*t1)/(sp*u1) - 
         (4*q2*t1^2)/(sp^2*u1) - (q2*\[Epsilon])/u1 - (2*q2*t1*\[Epsilon])/
          (sp*u1), 0}}, {{(-2*q2*t1)/(sp*u1) - (2*q2*t1^2)/(sp^2*u1) - 
         (q2*t1*\[Epsilon])/(sp*u1), 0}, {0, 0}}}, 
     {{{(-12*m2*q2)/sp + (4*q2^2)/sp - (8*m2*q2*t1)/sp^2 + 
         (10*q2^2*t1)/sp^2 - (10*q2*t1)/sp - (12*q2*t1^2)/sp^2 - 
         (4*q2*u1)/sp - (8*q2*t1*u1)/sp^2 + (2*q2^2*\[Epsilon])/sp + 
         (2*q2^2*t1*\[Epsilon])/sp^2 - (2*q2*u1*\[Epsilon])/sp - 
         (q2*t1*u1*\[Epsilon])/sp^2, (-6*q2*t1)/sp^2}, 
       {(-6*q2)/sp - (8*q2*t1)/sp^2 - (3*q2*\[Epsilon])/sp - 
         (2*q2*t1*\[Epsilon])/sp^2, 0}}, 
      {{(-6*q2)/sp - (8*q2*t1)/sp^2 - (4*m2*q2)/(sp*u1) + (6*q2^2)/(sp*u1) - 
         (8*m2*q2*t1)/(sp^2*u1) + (6*q2^2*t1)/(sp^2*u1) - (2*q2*t1)/(sp*u1) - 
         (4*q2*t1^2)/(sp^2*u1) - (2*q2*\[Epsilon])/sp - (2*q2*t1*\[Epsilon])/
          sp^2 + (2*q2^2*\[Epsilon])/(sp*u1) + (2*q2^2*t1*\[Epsilon])/
          (sp^2*u1), (2*q2*t1)/(sp^2*u1)}, 
       {(-2*q2)/(sp*u1) - (4*q2*t1)/(sp^2*u1) - (q2*\[Epsilon])/(sp*u1) - 
         (2*q2*t1*\[Epsilon])/(sp^2*u1), 0}}, 
      {{-((q2*t1*\[Epsilon])/(sp^2*u1)), 0}, {0, 0}}}, 
     {{{(-8*m2*q2)/sp^2 + (2*q2^2)/sp^2 - (4*q2*t1)/sp^2 - (2*q2*u1)/sp^2 + 
         (q2^2*\[Epsilon])/sp^2 - (q2*u1*\[Epsilon])/sp^2, 0}, 
       {(-4*q2)/sp^2 - (2*q2*\[Epsilon])/sp^2, 0}}, 
      {{(-2*q2)/sp^2 + (2*q2^2)/(sp^2*u1) - (q2*\[Epsilon])/sp^2 + 
         (q2^2*\[Epsilon])/(sp^2*u1), 0}, {0, 0}}, {{0, 0}, {0, 0}}}}
 
CoeffAP3 = {{{{-4*h*m2*q2*sp + 2*h*q2^2*sp + 4*h*m2*sp^2 + 4*h*m2*q2*t1 + 
         2*h*q2^2*t1 + 4*h*m2*sp*t1 + 2*h*q2*sp*t1 + 2*h*sp^2*t1 + 
         10*h*q2*t1^2 - (4*h*q2^2*t1^2)/sp + 2*h*sp*t1^2 + (8*h*q2*t1^3)/sp + 
         4*h*m2*sp*u1 - 2*h*q2*sp*u1 + 2*h*q2*t1*u1 - 2*h*t1^2*u1 + 
         (8*h*q2*t1^2*u1)/sp - 2*h*t1*u1^2 - h*q2^2*sp*\[Epsilon] + 
         (h*q2*sp^2*\[Epsilon])/2 - h*q2^2*t1*\[Epsilon] + 
         h*q2*sp*t1*\[Epsilon] + (3*h*q2*sp*u1*\[Epsilon])/2 - 
         (h*sp^2*u1*\[Epsilon])/2 + (h*q2*t1*u1*\[Epsilon])/2 - 
         (h*sp*t1*u1*\[Epsilon])/2 - (h*sp*u1^2*\[Epsilon])/2, 
        -4*h*m2*q2 - 2*h*q2^2 + (4*h*q2^3)/sp + 4*h*m2*sp + 
         (4*h*m2*q2^2)/(q2 + sp) - (2*h*q2^3)/(q2 + sp) - 
         (4*h*q2^4)/(sp*(q2 + sp)) - (2*h*q2^2*sp)/(q2 + sp) + 4*h*q2*t1 - 
         (14*h*q2^2*t1)/sp + 4*h*sp*t1 + (2*h*q2^2*t1)/(q2 + sp) + 
         (14*h*q2^3*t1)/(sp*(q2 + sp)) + 4*h*t1^2 + (14*h*q2*t1^2)/sp - 
         (2*h*q2*t1^2)/(q2 + sp) - (18*h*q2^2*t1^2)/(sp*(q2 + sp)) + 
         (8*h*q2*t1^3)/(sp*(q2 + sp)) + 4*h*m2*u1 + 4*h*q2*u1 - 
         (4*h*q2^2*u1)/sp - (4*h*m2*q2*u1)/(q2 + sp) + 
         (4*h*q2^3*u1)/(sp*(q2 + sp)) + (2*h*q2*sp*u1)/(q2 + sp) + 
         2*h*t1*u1 + (12*h*q2*t1*u1)/sp - (4*h*q2*t1*u1)/(q2 + sp) - 
         (12*h*q2^2*t1*u1)/(sp*(q2 + sp)) - (2*h*sp*t1*u1)/(q2 + sp) - 
         (2*h*t1^2*u1)/(q2 + sp) + (8*h*q2*t1^2*u1)/(sp*(q2 + sp)) - 
         2*h*u1^2 + (2*h*q2*u1^2)/(q2 + sp) - (2*h*t1*u1^2)/(q2 + sp) - 
         h*q2^2*\[Epsilon] + h*q2*sp*\[Epsilon] + (h*q2^3*\[Epsilon])/
          (q2 + sp) - (h*q2^2*sp*\[Epsilon])/(2*(q2 + sp)) + 
         2*h*q2*t1*\[Epsilon] - (2*h*q2^2*t1*\[Epsilon])/(q2 + sp) + 
         (3*h*q2*u1*\[Epsilon])/2 - h*sp*u1*\[Epsilon] - 
         (3*h*q2^2*u1*\[Epsilon])/(2*(q2 + sp)) + (h*q2*sp*u1*\[Epsilon])/
          (2*(q2 + sp)) - h*t1*u1*\[Epsilon] + (h*q2*t1*u1*\[Epsilon])/
          (q2 + sp) - (h*u1^2*\[Epsilon])/2 + (h*q2*u1^2*\[Epsilon])/
          (2*(q2 + sp)), 2*h*t1 + (2*h*q2*t1)/sp - (4*h*m2*t1)/(q2 + sp) - 
         (2*h*q2^2*t1)/(sp*(q2 + sp)) + (2*h*t1^2)/sp + 
         (2*h*q2*t1^2)/(sp*(q2 + sp)) + (h*q2*\[Epsilon])/2 - 
         (h*q2^2*\[Epsilon])/(2*(q2 + sp)) + (h*q2*t1*\[Epsilon])/(q2 + sp) - 
         (h*u1*\[Epsilon])/2 + (h*q2*u1*\[Epsilon])/(2*(q2 + sp)) - 
         (h*t1*u1*\[Epsilon])/(2*(q2 + sp))}, 
       {-4*h*q2*sp + 2*h*sp^2 - 4*h*q2*t1 + 2*h*sp*t1 + 2*h*sp*u1 + 
         (3*h*q2*sp*\[Epsilon])/2 - h*sp^2*\[Epsilon] + h*q2*t1*\[Epsilon] - 
         h*sp*t1*\[Epsilon] - h*sp*u1*\[Epsilon], 4*h*m2 + 2*h*q2 - 
         (4*h*q2^2)/sp + 2*h*sp - (4*h*m2*q2)/(q2 + sp) + 
         (2*h*q2^2)/(q2 + sp) + (4*h*q2^3)/(sp*(q2 + sp)) + 
         (2*h*q2*sp)/(q2 + sp) + 2*h*t1 + (8*h*q2*t1)/sp - 
         (4*h*q2*t1)/(q2 + sp) - (8*h*q2^2*t1)/(sp*(q2 + sp)) + 
         (4*h*q2*t1^2)/(sp*(q2 + sp)) - 2*h*u1 + (2*h*q2*u1)/(q2 + sp) + 
         (3*h*q2*\[Epsilon])/2 - 2*h*sp*\[Epsilon] - (3*h*q2^2*\[Epsilon])/
          (2*(q2 + sp)) + (h*q2*sp*\[Epsilon])/(q2 + sp) - 
         2*h*t1*\[Epsilon] + (2*h*q2*t1*\[Epsilon])/(q2 + sp) - 
         h*u1*\[Epsilon] + (h*q2*u1*\[Epsilon])/(q2 + sp), 
        -(h*\[Epsilon]) + (h*q2*\[Epsilon])/(q2 + sp) - 
         (h*t1*\[Epsilon])/(q2 + sp)}, {0, 0, 0}}, 
      {{4*h*m2*sp + 6*h*q2*sp - 2*h*sp^2 + 8*h*q2*t1 - 4*h*sp*t1 + 
         (8*h*q2*t1^2)/sp + (4*h*m2*q2*sp)/u1 - (2*h*q2^2*sp)/u1 + 
         (2*h*q2*sp^2)/u1 + (4*h*m2*q2*t1)/u1 - (4*h*q2^2*t1)/u1 + 
         (4*h*m2*sp*t1)/u1 + (10*h*q2*sp*t1)/u1 - (2*h*sp^2*t1)/u1 + 
         (14*h*q2*t1^2)/u1 - (4*h*q2^2*t1^2)/(sp*u1) - (2*h*sp*t1^2)/u1 + 
         (8*h*q2*t1^3)/(sp*u1) - 4*h*sp*u1 + 2*h*q2*sp*\[Epsilon] - 
         (h*sp^2*\[Epsilon])/2 + h*q2*t1*\[Epsilon] - h*sp*t1*\[Epsilon] - 
         (h*q2^2*sp*\[Epsilon])/u1 + (h*q2*sp^2*\[Epsilon])/(2*u1) - 
         (h*q2^2*t1*\[Epsilon])/u1 + (h*q2*sp*t1*\[Epsilon])/u1 - 
         h*sp*u1*\[Epsilon], 4*h*m2 + 8*h*q2 - 2*h*sp - 
         (4*h*m2*q2)/(q2 + sp) - (8*h*q2^2)/(q2 + sp) + 
         (4*h*q2*sp)/(q2 + sp) - 2*h*t1 + (4*h*q2*t1)/sp + 
         (10*h*q2*t1)/(q2 + sp) - (4*h*q2^2*t1)/(sp*(q2 + sp)) - 
         (2*h*sp*t1)/(q2 + sp) + (8*h*q2*t1^2)/(sp*(q2 + sp)) + 
         (4*h*m2*q2)/u1 - (2*h*q2^2)/u1 - (4*h*m2*sp)/u1 + (2*h*q2*sp)/u1 - 
         (4*h*m2*q2^2)/((q2 + sp)*u1) + (2*h*q2^3)/((q2 + sp)*u1) - 
         (4*h*m2*q2*sp)/((q2 + sp)*u1) - (4*h*q2^2*sp)/((q2 + sp)*u1) + 
         (2*h*q2*t1)/u1 - (2*h*q2^2*t1)/(sp*u1) - (4*h*sp*t1)/u1 - 
         (6*h*q2^2*t1)/((q2 + sp)*u1) + (2*h*q2^3*t1)/(sp*(q2 + sp)*u1) + 
         (6*h*q2*sp*t1)/((q2 + sp)*u1) - (4*h*t1^2)/u1 + 
         (2*h*q2*t1^2)/(sp*u1) + (10*h*q2*t1^2)/((q2 + sp)*u1) - 
         (6*h*q2^2*t1^2)/(sp*(q2 + sp)*u1) + (8*h*q2*t1^3)/
          (sp*(q2 + sp)*u1) - 6*h*u1 + (6*h*q2*u1)/(q2 + sp) + 
         2*h*q2*\[Epsilon] - h*sp*\[Epsilon] - (2*h*q2^2*\[Epsilon])/
          (q2 + sp) + (h*q2*sp*\[Epsilon])/(2*(q2 + sp)) - 
         2*h*t1*\[Epsilon] + (2*h*q2*t1*\[Epsilon])/(q2 + sp) - 
         (h*q2^2*\[Epsilon])/u1 + (h*q2*sp*\[Epsilon])/u1 + 
         (h*q2^3*\[Epsilon])/((q2 + sp)*u1) - (h*q2^2*sp*\[Epsilon])/
          (2*(q2 + sp)*u1) + (2*h*q2*t1*\[Epsilon])/u1 - 
         (2*h*q2^2*t1*\[Epsilon])/((q2 + sp)*u1) - h*u1*\[Epsilon] + 
         (h*q2*u1*\[Epsilon])/(q2 + sp), (-4*h*m2)/u1 + 
         (4*h*m2*q2)/((q2 + sp)*u1) - (2*h*t1)/u1 - (2*h*q2*t1)/(sp*u1) - 
         (4*h*m2*t1)/((q2 + sp)*u1) + (2*h*q2^2*t1)/(sp*(q2 + sp)*u1) - 
         (2*h*t1^2)/(sp*u1) - (2*h*q2*t1^2)/(sp*(q2 + sp)*u1) - 
         (h*\[Epsilon])/2 + (h*q2*\[Epsilon])/(2*(q2 + sp)) - 
         (h*t1*\[Epsilon])/(q2 + sp) + (h*q2*\[Epsilon])/(2*u1) - 
         (h*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) + (h*q2*t1*\[Epsilon])/
          ((q2 + sp)*u1)}, {-4*h*sp - 2*h*t1 + (4*h*m2*sp)/u1 + 
         (6*h*q2*sp)/u1 - (2*h*sp^2)/u1 + (10*h*q2*t1)/u1 - (2*h*sp*t1)/u1 + 
         (8*h*q2*t1^2)/(sp*u1) - (3*h*sp*\[Epsilon])/2 + 
         (3*h*q2*sp*\[Epsilon])/(2*u1) + (h*q2*t1*\[Epsilon])/u1 - 
         (h*sp*t1*\[Epsilon])/u1, -4*h + (4*h*q2)/(q2 + sp) + 
         (2*h*t1)/(q2 + sp) + (4*h*q2)/u1 - (2*h*sp)/u1 - 
         (4*h*q2^2)/((q2 + sp)*u1) - (2*h*t1)/u1 + (4*h*q2*t1)/(sp*u1) + 
         (2*h*q2*t1)/((q2 + sp)*u1) - (4*h*q2^2*t1)/(sp*(q2 + sp)*u1) + 
         (4*h*q2*t1^2)/(sp*(q2 + sp)*u1) - (3*h*\[Epsilon])/2 + 
         (3*h*q2*\[Epsilon])/(2*(q2 + sp)) + (3*h*q2*\[Epsilon])/(2*u1) - 
         (3*h*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) - (2*h*t1*\[Epsilon])/u1 + 
         (2*h*q2*t1*\[Epsilon])/((q2 + sp)*u1), 
        -((h*t1*\[Epsilon])/((q2 + sp)*u1))}, {-((h*sp*\[Epsilon])/u1), 
        (-2*h)/u1 + (2*h*q2)/((q2 + sp)*u1) - (h*\[Epsilon])/u1 + 
         (h*q2*\[Epsilon])/((q2 + sp)*u1), 0}}, 
      {{2*h*t1 - (2*h*q2*t1)/u1 + (2*h*t1^2)/u1 - (h*sp*\[Epsilon])/2 + 
         (h*q2*sp*\[Epsilon])/(2*u1) + (h*q2*t1*\[Epsilon])/(2*u1) - 
         (h*sp*t1*\[Epsilon])/(2*u1), (2*h*t1)/(q2 + sp) - 
         (2*h*q2*t1)/((q2 + sp)*u1) + (2*h*t1^2)/((q2 + sp)*u1) - 
         (h*\[Epsilon])/2 + (h*q2*\[Epsilon])/(2*(q2 + sp)) + 
         (h*q2*\[Epsilon])/(2*u1) - (h*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) - 
         (h*t1*\[Epsilon])/u1 + (h*q2*t1*\[Epsilon])/((q2 + sp)*u1), 
        -(h*t1*\[Epsilon])/(2*(q2 + sp)*u1)}, 
       {(2*h*t1)/u1 - (h*sp*\[Epsilon])/(2*u1), (2*h*t1)/((q2 + sp)*u1) - 
         (h*\[Epsilon])/(2*u1) + (h*q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}, 
       {0, 0, 0}}}, {{{-8*h*m2*q2 + 4*h*q2^2 + 2*h*q2*sp + 2*h*q2*t1 + 
         (8*h*m2*q2*t1)/sp + (4*h*q2^2*t1)/sp - 2*h*q2*u1 - 2*h*sp*u1 - 
         2*h*t1*u1 - 2*h*u1^2 - (3*h*q2^2*\[Epsilon])/2 - 
         (2*h*q2^2*t1*\[Epsilon])/sp + (3*h*q2*u1*\[Epsilon])/2 + 
         (h*q2*t1*u1*\[Epsilon])/sp, 8*h*m2 - 2*h*q2 + (8*h*m2*q2)/sp - 
         (8*h*q2^2)/sp - (4*h*m2*q2)/(q2 + sp) + (6*h*q2^2)/(q2 + sp) - 
         (8*h*m2*q2^2)/(sp*(q2 + sp)) + (8*h*q2^3)/(sp*(q2 + sp)) + 
         (2*h*q2*sp)/(q2 + sp) + 2*h*t1 + (8*h*q2*t1)/sp + 
         (8*h*m2*q2*t1)/(sp*(q2 + sp)) - (20*h*q2^2*t1)/(sp*(q2 + sp)) + 
         (12*h*q2*t1^2)/(sp*(q2 + sp)) + 2*h*u1 + (8*h*q2*u1)/sp - 
         (4*h*q2*u1)/(q2 + sp) - (8*h*q2^2*u1)/(sp*(q2 + sp)) - 
         (2*h*sp*u1)/(q2 + sp) - (2*h*t1*u1)/(q2 + sp) + 
         (12*h*q2*t1*u1)/(sp*(q2 + sp)) - (2*h*u1^2)/(q2 + sp) + 
         (h*q2*\[Epsilon])/2 - (h*q2^2*\[Epsilon])/sp - (h*q2^2*\[Epsilon])/
          (2*(q2 + sp)) + (h*q2^3*\[Epsilon])/(sp*(q2 + sp)) - 
         (2*h*q2^2*t1*\[Epsilon])/(sp*(q2 + sp)) - (h*u1*\[Epsilon])/2 + 
         (h*q2*u1*\[Epsilon])/sp + (h*q2*u1*\[Epsilon])/(2*(q2 + sp)) - 
         (h*q2^2*u1*\[Epsilon])/(sp*(q2 + sp)) + (h*q2*t1*u1*\[Epsilon])/
          (sp*(q2 + sp)), (-4*h*m2)/(q2 + sp) + (2*h*t1)/sp + 
         (2*h*q2*t1)/(sp*(q2 + sp)) + (h*q2*\[Epsilon])/(2*(q2 + sp)) - 
         (h*u1*\[Epsilon])/(2*(q2 + sp))}, {-8*h*q2 - (8*h*q2*t1)/sp + 
         2*h*q2*\[Epsilon] + (2*h*q2*t1*\[Epsilon])/sp, 
        4*h + (8*h*q2)/sp - (8*h*q2)/(q2 + sp) - (8*h*q2^2)/(sp*(q2 + sp)) + 
         (8*h*q2*t1)/(sp*(q2 + sp)) - h*\[Epsilon] + (2*h*q2*\[Epsilon])/sp - 
         (2*h*q2^2*\[Epsilon])/(sp*(q2 + sp)) + (2*h*q2*t1*\[Epsilon])/
          (sp*(q2 + sp)), -((h*\[Epsilon])/(q2 + sp))}, {0, 0, 0}}, 
      {{8*h*q2 - 2*h*sp - 6*h*t1 + (8*h*q2*t1)/sp + (20*h*m2*q2)/u1 - 
         (2*h*q2^2)/u1 + (2*h*q2*sp)/u1 + (16*h*q2*t1)/u1 + 
         (8*h*m2*q2*t1)/(sp*u1) - (4*h*q2^2*t1)/(sp*u1) + 
         (16*h*q2*t1^2)/(sp*u1) - 6*h*u1 + (3*h*q2*\[Epsilon])/2 + 
         (2*h*q2*t1*\[Epsilon])/sp - (3*h*q2^2*\[Epsilon])/(2*u1) - 
         (2*h*q2^2*t1*\[Epsilon])/(sp*u1), 4*h + (2*h*q2)/sp - 
         (2*h*q2^2)/(sp*(q2 + sp)) + (4*h*t1)/sp + (2*h*t1)/(q2 + sp) + 
         (8*h*q2*t1)/(sp*(q2 + sp)) - (12*h*m2)/u1 - (4*h*q2)/u1 - 
         (2*h*q2^2)/(sp*u1) + (8*h*m2*q2)/((q2 + sp)*u1) - 
         (2*h*q2^2)/((q2 + sp)*u1) + (2*h*q2^3)/(sp*(q2 + sp)*u1) - 
         (2*h*t1)/u1 - (4*h*q2*t1)/(sp*u1) + (2*h*q2*t1)/((q2 + sp)*u1) + 
         (8*h*m2*q2*t1)/(sp*(q2 + sp)*u1) - (4*h*q2^2*t1)/(sp*(q2 + sp)*u1) + 
         (4*h*q2*t1^2)/(sp*(q2 + sp)*u1) + (2*h*u1)/(q2 + sp) - 
         (h*\[Epsilon])/2 + (h*q2*\[Epsilon])/sp + (h*q2*\[Epsilon])/
          (2*(q2 + sp)) - (h*q2^2*\[Epsilon])/(sp*(q2 + sp)) + 
         (2*h*q2*t1*\[Epsilon])/(sp*(q2 + sp)) + (h*q2*\[Epsilon])/(2*u1) - 
         (h*q2^2*\[Epsilon])/(sp*u1) - (h*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) + 
         (h*q2^3*\[Epsilon])/(sp*(q2 + sp)*u1) - (2*h*q2^2*t1*\[Epsilon])/
          (sp*(q2 + sp)*u1), (-2*h*t1)/(sp*u1) - (2*h*q2*t1)/
          (sp*(q2 + sp)*u1) - (h*\[Epsilon])/(2*(q2 + sp)) + 
         (h*q2*\[Epsilon])/(2*(q2 + sp)*u1)}, 
       {-4*h + (8*h*q2)/u1 + (8*h*q2*t1)/(sp*u1) + (h*q2*\[Epsilon])/u1 + 
         (2*h*q2*t1*\[Epsilon])/(sp*u1), (2*h)/(q2 + sp) - (2*h)/u1 + 
         (4*h*q2)/((q2 + sp)*u1) + (4*h*q2*t1)/(sp*(q2 + sp)*u1) + 
         (h*q2*\[Epsilon])/((q2 + sp)*u1) + (2*h*q2*t1*\[Epsilon])/
          (sp*(q2 + sp)*u1), 0}, {0, 0, 0}}, 
      {{(h*q2*t1*\[Epsilon])/(sp*u1), (h*q2*t1*\[Epsilon])/(sp*(q2 + sp)*u1), 
        0}, {0, 0, 0}, {0, 0, 0}}}, 
     {{{(-8*h*m2*q2)/sp + (4*h*q2^2)/sp - (4*h*q2*t1)/sp - (4*h*q2*u1)/sp - 
         (h*q2^2*\[Epsilon])/sp + (h*q2*u1*\[Epsilon])/sp, 
        (8*h*m2*q2)/(sp*(q2 + sp)) - (4*h*q2^2)/(sp*(q2 + sp)) + 
         (4*h*q2*t1)/(sp*(q2 + sp)) + (4*h*q2*u1)/(sp*(q2 + sp)) - 
         (h*q2^2*\[Epsilon])/(sp*(q2 + sp)) + (h*q2*u1*\[Epsilon])/
          (sp*(q2 + sp)), 0}, {(-8*h*q2)/sp + (2*h*q2*\[Epsilon])/sp, 
        (4*h*q2)/(sp*(q2 + sp)) + (2*h*q2*\[Epsilon])/(sp*(q2 + sp)), 0}, 
       {0, 0, 0}}, {{(16*h*m2*q2)/(sp*u1) + (4*h*q2*t1)/(sp*u1) + 
         (h*q2*\[Epsilon])/sp - (h*q2^2*\[Epsilon])/(sp*u1), 
        (2*h)/sp + (2*h*q2)/(sp*(q2 + sp)) - (2*h*q2)/(sp*u1) - 
         (2*h*q2^2)/(sp*(q2 + sp)*u1) + (h*q2*\[Epsilon])/(sp*(q2 + sp)) - 
         (h*q2^2*\[Epsilon])/(sp*(q2 + sp)*u1), 0}, {(4*h*q2)/(sp*u1), 0, 0}, 
       {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}}
 
AG3List = {{1, 1, 1, 1}, {1, -1, 1, 1}, {1, 1, 1, -1}, {1, -1, 1, -1}, {0, 1, 
     1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 1, 1, 0}, {0, -1, 
     1, 1}, {0, 1, 1, -1}, {1, -1, 0, 1}, {1, -1, 1, 0}, {1, 0, -1, 1}, {1, 
     0, 1, -1}, {1, 1, 0, -1}, {0, 0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 
     0, 0, 1}, {1, 0, 1, 0}, {1, 1, 0, 0}, {-1, 0, 1, 0}, {-1, 1, 0, 0}, {0, 
     -1, 0, 1}, {0, -1, 1, 0}, {0, 0, -1, 1}, {0, 0, 1, -1}, {0, 1, 0, -1}, 
     {1, -1, 0, 0}, {1, 0, -1, 0}, {1, 0, 0, -1}, {0, 0, 0, 1}, {0, 0, 1, 0}, 
     {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 0}}
 
AL3List = {{1, 1, 1, 1}, {-1, 1, 1, 1}, {-2, 1, 1, 1}, {-1, -1, 1, 1}, {0, 1, 
     1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 0, 1, 1}, {-1, 1, 
     0, 1}, {-1, 1, 1, 0}, {0, -1, 1, 1}, {-2, 0, 1, 1}, {-2, 1, 0, 1}, {0, 
     0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 0, 0, 1}, {1, 0, 1, 0}, {-1, 
     0, 0, 1}, {-1, 0, 1, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}
 
AP3List = {{1, 1, 1, 1}, {-1, 1, 1, 1}, {1, -1, 1, 1}, {1, 1, 1, -1}, {1, -1, 
     1, -1}, {0, 1, 1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 0, 
     1, 1}, {-1, 1, 0, 1}, {-1, 1, 1, 0}, {0, -1, 1, 1}, {0, 1, 1, -1}, {1, 
     -1, 0, 1}, {1, -1, 1, 0}, {1, 0, -1, 1}, {1, 0, 1, -1}, {1, 1, 0, -1}, 
     {0, 0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 0, 0, 1}, {1, 0, 1, 0}, 
     {1, 1, 0, 0}, {-1, 0, 0, 1}, {-1, 0, 1, 0}, {-1, 1, 0, 0}, {0, -1, 1, 
     0}, {0, 0, 1, -1}, {0, 1, 0, -1}, {1, -1, 0, 0}, {1, 0, -1, 0}, {1, 0, 
     0, -1}, {0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 
     0, 0}}
BGQED = (-16*m2^2*(t1 + u1)^2 + (-2 + Dim)*t1*u1*(4*q2^2 + 4*sp^2 - 2*t1^2 + 
        Dim*t1^2 - 8*t1*u1 + 2*Dim*t1*u1 - 2*u1^2 + Dim*u1^2 + 
        4*sp*(t1 + u1) + 4*q2*(2*sp + t1 + u1)) - 
      4*m2*((-2 + Dim)*(t1 + u1)^3 + q2*((-2 + Dim)*t1^2 + 
          2*(-4 + Dim)*t1*u1 + (-2 + Dim)*u1^2) + 
        sp*((-2 + Dim)*t1^2 + 2*(-4 + Dim)*t1*u1 + (-2 + Dim)*u1^2)))/
     (4*t1^2*u1^2)
 
Dim /: Dim::usage = "Dim is the default dimension of Lorentz vectors"
 
BLQED = (-4*q2*((q2 + sp)*t1*u1 - m2*(t1 + u1)^2))/(sp^2*t1*u1)
 
BPQED = (-2*m2*sp*(t1^3 + t1^2*u1 + t1*u1^2 + u1^3) + 
      t1*u1*(sp^2*(t1 + u1) + (t1 - u1)^2*(t1 + u1) + sp*(t1^2 + u1^2) + 
        q2*(-(t1 - u1)^2 + sp*(t1 + u1))))/(sp*t1^2*u1^2)
 
CoeffAG1 = {{4*m2*t1^2 + 2*q2*t1^2 + q2*t1^2*\[Epsilon], 
      (8*m2*sp*t1)/u1 + (4*q2*sp*t1)/u1 + (8*m2*t1^2)/u1 + (4*q2*t1^2)/u1 + 
       (2*q2*sp*t1*\[Epsilon])/u1 + (2*q2*t1^2*\[Epsilon])/u1, 
      (4*m2*sp^2)/u1^2 + (2*q2*sp^2)/u1^2 + (8*m2*sp*t1)/u1^2 + 
       (4*q2*sp*t1)/u1^2 + (4*m2*t1^2)/u1^2 + (2*q2*t1^2)/u1^2 + 
       (q2*sp^2*\[Epsilon])/u1^2 + (2*q2*sp*t1*\[Epsilon])/u1^2 + 
       (q2*t1^2*\[Epsilon])/u1^2, 0}, {4*m2^2 + 2*m2*q2 + 4*m2*t1 + 2*q2*t1 + 
       m2*q2*\[Epsilon] + q2*t1*\[Epsilon], 4*m2 + 2*q2 - 2*sp - 2*t1 + 
       (8*m2^2)/u1 - (2*q2^2)/u1 + (4*m2*sp)/u1 + (2*q2*sp)/u1 - 
       (2*sp^2)/u1 + (8*m2*t1)/u1 + (4*q2*t1)/u1 - (4*sp*t1)/u1 - 
       (4*t1^2)/u1 - u1 + q2*\[Epsilon] - sp*\[Epsilon] + 
       (2*m2*q2*\[Epsilon])/u1 - (q2^2*\[Epsilon])/u1 + 
       (q2*sp*\[Epsilon])/u1 - (sp^2*\[Epsilon])/u1 + 
       (2*q2*t1*\[Epsilon])/u1 - u1*\[Epsilon] - (u1*\[Epsilon]^2)/4, 
      (4*m2^2)/u1^2 + (2*m2*q2)/u1^2 + (4*m2*sp)/u1^2 + (2*q2*sp)/u1^2 + 
       (4*m2*t1)/u1^2 + (2*q2*t1)/u1^2 + (4*m2)/u1 + (2*q2)/u1 + (2*t1)/u1 - 
       \[Epsilon] + (m2*q2*\[Epsilon])/u1^2 + (q2*sp*\[Epsilon])/u1^2 + 
       (q2*t1*\[Epsilon])/u1^2 + (q2*\[Epsilon])/u1 - (sp*\[Epsilon])/u1 - 
       \[Epsilon]^2/2, -u1^(-1) - \[Epsilon]/u1 - \[Epsilon]^2/(4*u1)}, 
     {2*m2 + q2 + m2*\[Epsilon] + q2*\[Epsilon] + (q2*\[Epsilon]^2)/4, 
      (-2*q2)/u1 - (2*sp)/u1 - (4*t1)/u1 + \[Epsilon] + 
       (2*m2*\[Epsilon])/u1 - (q2*\[Epsilon])/u1 + (q2*\[Epsilon]^2)/(2*u1), 
      (2*m2)/u1^2 + q2/u1^2 + 2/u1 + (m2*\[Epsilon])/u1^2 + 
       (q2*\[Epsilon])/u1^2 + \[Epsilon]/u1 + (q2*\[Epsilon]^2)/(4*u1^2), 0}, 
     {0, -2/u1 - \[Epsilon]/u1, 0, 0}}
 
CoeffAL1 = {{(4*q2*t1^3)/sp + (4*q2*t1^4)/sp^2, (8*q2*t1^2)/u1 + 
       (16*q2*t1^3)/(sp*u1) + (8*q2*t1^4)/(sp^2*u1), 
      (4*q2*sp*t1)/u1^2 + (12*q2*t1^2)/u1^2 + (12*q2*t1^3)/(sp*u1^2) + 
       (4*q2*t1^4)/(sp^2*u1^2)}, {(4*m2*q2*t1)/sp + (4*m2*q2*t1^2)/sp^2 + 
       (8*q2*t1^2)/sp + (12*q2*t1^3)/sp^2, (2*q2*t1)/sp + (8*q2*t1)/u1 + 
       (8*m2*q2*t1)/(sp*u1) - (4*q2^2*t1)/(sp*u1) + 
       (8*m2*q2*t1^2)/(sp^2*u1) - (4*q2^2*t1^2)/(sp^2*u1) + 
       (24*q2*t1^2)/(sp*u1) + (16*q2*t1^3)/(sp^2*u1), 
      (4*q2*t1)/u1^2 + (4*m2*q2*t1)/(sp*u1^2) + (4*m2*q2*t1^2)/(sp^2*u1^2) + 
       (8*q2*t1^2)/(sp*u1^2) + (4*q2*t1^3)/(sp^2*u1^2) - (2*q2)/u1 - 
       (2*q2*t1)/(sp*u1)}, {(4*m2*q2)/sp + (8*m2*q2*t1)/sp^2 + (6*q2*t1)/sp + 
       (14*q2*t1^2)/sp^2 + (q2*t1*\[Epsilon])/sp + (q2*t1^2*\[Epsilon])/sp^2, 
      (2*q2)/u1 + (4*m2*q2)/(sp*u1) - (2*q2^2)/(sp*u1) + 
       (8*m2*q2*t1)/(sp^2*u1) - (4*q2^2*t1)/(sp^2*u1) + (12*q2*t1)/(sp*u1) + 
       (12*q2*t1^2)/(sp^2*u1) - (q2*\[Epsilon])/sp + (2*q2*t1*\[Epsilon])/
        (sp*u1) + (2*q2*t1^2*\[Epsilon])/(sp^2*u1), (2*q2*t1)/(sp*u1^2) + 
       (2*q2*t1^2)/(sp^2*u1^2) - (2*q2)/(sp*u1) + (q2*t1*\[Epsilon])/
        (sp*u1^2) + (q2*t1^2*\[Epsilon])/(sp^2*u1^2) - 
       (q2*\[Epsilon])/(sp*u1)}, {(4*m2*q2)/sp^2 + (2*q2)/sp + 
       (8*q2*t1)/sp^2 + (q2*\[Epsilon])/sp + (2*q2*t1*\[Epsilon])/sp^2, 
      (-2*q2^2)/(sp^2*u1) + (2*q2)/(sp*u1) + (4*q2*t1)/(sp^2*u1) - 
       (q2^2*\[Epsilon])/(sp^2*u1) + (q2*\[Epsilon])/(sp*u1) + 
       (2*q2*t1*\[Epsilon])/(sp^2*u1), 0}, 
     {(2*q2)/sp^2 + (q2*\[Epsilon])/sp^2, 0, 0}}
 
CoeffAP1k0 = {{0, 0, 0, 0}, {-4*h*m2*sp - 2*h*q2*t1 - (4*h*q2*t1^2)/sp - 
       2*h*m2*u1, -2*h*m2 + 2*h*q2 - 2*h*sp - 2*h*t1 + (2*h*q2*t1)/sp + 
       (2*h*q2*sp)/u1 - h*u1, (-4*h*m2*sp)/u1^2 - (2*h*q2*sp)/u1^2 - 
       (6*h*q2*t1)/u1^2 - (4*h*q2*t1^2)/(sp*u1^2) - (2*h*m2)/u1 + 
       (2*h*t1)/u1 - (2*h*q2*t1)/(sp*u1), (-2*h*m2)/u1^2 - h/u1}, 
     {-(h*q2) - (4*h*m2*q2)/sp - (6*h*q2*t1)/sp, (2*h*q2^2)/(sp*u1) + 
       (2*h*sp)/u1, -((h*q2)/u1^2) - (4*h*m2*q2)/(sp*u1^2) - 
       (2*h*q2*t1)/(sp*u1^2) + (2*h)/u1 - (2*h*q2)/(sp*u1), 0}, 
     {(-2*h*q2)/sp, (2*h*q2)/(sp*u1), 0, 0}}
 
CoeffAP1k2 = {{4*h*m2*sp + 2*h*q2*t1 + (4*h*q2*t1^2)/sp - 2*h*t1*u1, 
      (-2*h*q2*sp)/u1, (4*h*m2*sp)/u1^2 + (2*h*q2*sp)/u1^2 + 
       (6*h*q2*t1)/u1^2 + (4*h*q2*t1^2)/(sp*u1^2) - (2*h*t1)/u1, 0}, 
     {2*h*sp, (-2*h*sp)/u1, 0, 0}}
 
AG1List = {{2, 2}, {2, 1}, {2, 0}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, 
     {0, 1}, {0, 0}, {-1, 1}}
 
AL1List = {{2, 2}, {2, 1}, {2, 0}, {1, 2}, {1, 1}, {1, 0}, {0, 2}, {0, 1}, 
     {0, 0}, {-1, 2}, {-1, 1}, {-2, 2}}
 
AP1k0List = {{1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, {0, 1}, {0, 0}, {-1, 
     2}, {-1, 1}}
 
AP1k2List = {{2, 2}, {2, 1}, {2, 0}, {1, 2}, {1, 1}}
 
CoeffAG2 = {{2*q2*t1^2 + q2*t1^2*\[Epsilon], -2*m2*q2 - 2*q2^2 + 2*m2*sp + 
       (2*q2^3)/(q2 + sp) - (4*m2*q2*sp)/(q2 + sp) + (2*q2^2*sp)/(q2 + sp) - 
       (4*m2*sp^2)/(q2 + sp) + 4*q2*t1 - (8*q2^2*t1)/(q2 + sp) - 
       (4*q2*sp*t1)/(q2 + sp) - 4*t1^2 + (8*q2*t1^2)/(q2 + sp) + 
       (4*sp*t1^2)/(q2 + sp) + 4*q2*u1 - (4*q2^2*u1)/(q2 + sp) - 
       (4*q2*sp*u1)/(q2 + sp) - 4*t1*u1 + (8*q2*t1*u1)/(q2 + sp) + 
       (4*sp*t1*u1)/(q2 + sp) - 2*u1^2 + (2*q2*u1^2)/(q2 + sp) + 
       (2*sp*u1^2)/(q2 + sp) + m2*q2*\[Epsilon] - q2^2*\[Epsilon] - 
       m2*sp*\[Epsilon] - (2*m2*q2^2*\[Epsilon])/(q2 + sp) + 
       (q2^3*\[Epsilon])/(q2 + sp) - (2*m2*q2*sp*\[Epsilon])/(q2 + sp) + 
       (q2^2*sp*\[Epsilon])/(q2 + sp) - (2*q2^2*t1*\[Epsilon])/(q2 + sp) + 
       (2*q2*t1^2*\[Epsilon])/(q2 + sp) + 2*q2*u1*\[Epsilon] - 
       (2*q2^2*u1*\[Epsilon])/(q2 + sp) - (2*q2*sp*u1*\[Epsilon])/(q2 + sp) + 
       (2*q2*t1*u1*\[Epsilon])/(q2 + sp) - u1^2*\[Epsilon] + 
       (q2*u1^2*\[Epsilon])/(q2 + sp) + (sp*u1^2*\[Epsilon])/(q2 + sp), 
      4*m2 - (2*m2*q2^2)/(q2 + sp)^2 + (2*q2^3)/(q2 + sp)^2 - 
       (2*m2*q2*sp)/(q2 + sp)^2 - (2*m2*q2)/(q2 + sp) - (4*m2*sp)/(q2 + sp) - 
       (4*q2^2*t1)/(q2 + sp)^2 + (2*q2*t1^2)/(q2 + sp)^2 - 
       (4*q2^2*u1)/(q2 + sp)^2 + (4*q2*t1*u1)/(q2 + sp)^2 + 
       (2*q2*u1^2)/(q2 + sp)^2 - 2*m2*\[Epsilon] - (m2*q2^2*\[Epsilon])/
        (q2 + sp)^2 + (q2^3*\[Epsilon])/(q2 + sp)^2 - (m2*q2*sp*\[Epsilon])/
        (q2 + sp)^2 + (m2*q2*\[Epsilon])/(q2 + sp) - (2*q2^2*t1*\[Epsilon])/
        (q2 + sp)^2 + (q2*t1^2*\[Epsilon])/(q2 + sp)^2 - 
       (2*q2^2*u1*\[Epsilon])/(q2 + sp)^2 + (2*q2*t1*u1*\[Epsilon])/
        (q2 + sp)^2 + (q2*u1^2*\[Epsilon])/(q2 + sp)^2, 
      (-2*m2)/(q2 + sp) - (m2*\[Epsilon])/(q2 + sp)}, 
     {2*m2*q2 + 2*q2*t1 + m2*q2*\[Epsilon] + q2*t1*\[Epsilon], 
      -4*m2 + 3*q2 + sp + (4*m2*q2)/(q2 + sp) - (6*q2^2)/(q2 + sp) + 
       (8*m2*sp)/(q2 + sp) - (2*q2*sp)/(q2 + sp) - (2*sp^2)/(q2 + sp) - 
       6*t1 + (12*q2*t1)/(q2 + sp) + (4*sp*t1)/(q2 + sp) - 
       (4*t1^2)/(q2 + sp) - 4*u1 + (8*q2*u1)/(q2 + sp) + 
       (2*sp*u1)/(q2 + sp) - (4*t1*u1)/(q2 + sp) - (2*u1^2)/(q2 + sp) + 
       q2*\[Epsilon] + (2*m2*q2*\[Epsilon])/(q2 + sp) - 
       (3*q2^2*\[Epsilon])/(q2 + sp) - (q2*sp*\[Epsilon])/(q2 + sp) - 
       (sp^2*\[Epsilon])/(q2 + sp) + (2*q2*t1*\[Epsilon])/(q2 + sp) - 
       u1*\[Epsilon] + (3*q2*u1*\[Epsilon])/(q2 + sp) - 
       (u1^2*\[Epsilon])/(q2 + sp) + (q2*\[Epsilon]^2)/4 - 
       (sp*\[Epsilon]^2)/4 - (q2^2*\[Epsilon]^2)/(2*(q2 + sp)) - 
       (q2*sp*\[Epsilon]^2)/(2*(q2 + sp)), 2 + (2*m2*q2)/(q2 + sp)^2 - 
       (3*q2^2)/(q2 + sp)^2 - (q2*sp)/(q2 + sp)^2 + (4*m2)/(q2 + sp) + 
       q2/(q2 + sp) - (2*sp)/(q2 + sp) + (2*q2*t1)/(q2 + sp)^2 + 
       (2*t1)/(q2 + sp) + (2*q2*u1)/(q2 + sp)^2 + (m2*q2*\[Epsilon])/
        (q2 + sp)^2 - (2*q2^2*\[Epsilon])/(q2 + sp)^2 - 
       (q2*sp*\[Epsilon])/(q2 + sp)^2 + (2*q2*\[Epsilon])/(q2 + sp) - 
       (sp*\[Epsilon])/(q2 + sp) + (q2*t1*\[Epsilon])/(q2 + sp)^2 + 
       (q2*u1*\[Epsilon])/(q2 + sp)^2 - (u1*\[Epsilon])/(q2 + sp) - 
       \[Epsilon]^2/2 - (q2^2*\[Epsilon]^2)/(4*(q2 + sp)^2) - 
       (q2*sp*\[Epsilon]^2)/(4*(q2 + sp)^2) + (q2*\[Epsilon]^2)/
        (4*(q2 + sp)), -(q2 + sp)^(-1) - \[Epsilon]/(q2 + sp) - 
       \[Epsilon]^2/(4*(q2 + sp))}, {q2 + q2*\[Epsilon] + 
       (q2*\[Epsilon]^2)/4, -4 - (4*m2)/(q2 + sp) + (4*q2)/(q2 + sp) + 
       (4*sp)/(q2 + sp) - (4*t1)/(q2 + sp) - (2*u1)/(q2 + sp) - \[Epsilon] + 
       (q2*\[Epsilon])/(q2 + sp) + (2*sp*\[Epsilon])/(q2 + sp) + 
       (q2*\[Epsilon]^2)/(2*(q2 + sp)), q2/(q2 + sp)^2 + 2/(q2 + sp) + 
       (q2*\[Epsilon])/(q2 + sp)^2 + \[Epsilon]/(q2 + sp) + 
       (q2*\[Epsilon]^2)/(4*(q2 + sp)^2), 0}, 
     {0, -2/(q2 + sp) - \[Epsilon]/(q2 + sp), 0, 0}}
 
CoeffAL2 = {{0, 0, (-4*m2*q2)/sp, (-4*m2*q2)/sp^2}, 
     {(-4*q2*t1^2)/sp, (8*m2*q2)/sp + (4*q2*t1)/sp - (4*q2*t1^2)/sp^2, 
      (12*m2*q2)/sp^2 - (2*q2)/sp + (4*q2*t1)/sp^2 - (q2*\[Epsilon])/sp, 
      (-2*q2)/sp^2 - (q2*\[Epsilon])/sp^2}, 
     {(-4*m2*q2)/sp - (4*q2*t1)/sp + (4*q2*t1^2)/sp^2, 
      (-12*m2*q2)/sp^2 + (4*q2)/sp - (8*q2*t1)/sp^2 + (2*q2*\[Epsilon])/sp, 
      (6*q2)/sp^2 + (3*q2*\[Epsilon])/sp^2, 0}, 
     {(4*m2*q2)/sp^2 - (2*q2)/sp + (4*q2*t1)/sp^2 - (q2*\[Epsilon])/sp, 
      (-6*q2)/sp^2 - (3*q2*\[Epsilon])/sp^2, 0, 0}, 
     {(2*q2)/sp^2 + (q2*\[Epsilon])/sp^2, 0, 0, 0}}
 
CoeffAP2 = {{-2*h*q2*t1^2, 2*h*m2*q2 + h*q2^2 + 2*h*m2*sp - h*q2*sp - 
       (h*q2^3)/(q2 + sp) + (h*q2*sp^2)/(q2 + sp) + (2*h*q2^2*t1)/sp + 
       (2*h*q2^2*t1)/(q2 + sp) - (2*h*q2^3*t1)/(sp*(q2 + sp)) - 
       (2*h*q2*t1^2)/sp - (2*h*q2*t1^2)/(q2 + sp) + (2*h*q2^2*t1^2)/
        (sp*(q2 + sp)) - 3*h*q2*u1 + h*sp*u1 + (3*h*q2^2*u1)/(q2 + sp) + 
       (2*h*q2*sp*u1)/(q2 + sp) - (h*sp^2*u1)/(q2 + sp) + 2*h*t1*u1 - 
       (6*h*q2*t1*u1)/(q2 + sp) - (2*h*sp*t1*u1)/(q2 + sp) + 2*h*u1^2 - 
       (2*h*q2*u1^2)/(q2 + sp) - (2*h*sp*u1^2)/(q2 + sp), 
      4*h*m2 - 2*h*q2 + (4*h*m2*q2)/sp - (h*q2^2)/sp + 
       (2*h*m2*q2^2)/(q2 + sp)^2 - (2*h*q2^3)/(q2 + sp)^2 + 
       (2*h*m2*q2*sp)/(q2 + sp)^2 - (6*h*m2*q2)/(q2 + sp) + 
       (3*h*q2^2)/(q2 + sp) + (h*q2^3)/(sp*(q2 + sp)) - 
       (4*h*m2*sp)/(q2 + sp) + (2*h*q2*sp)/(q2 + sp) + h*t1 + 
       (2*h*q2*t1)/sp + (4*h*q2^2*t1)/(q2 + sp)^2 - (3*h*q2*t1)/(q2 + sp) - 
       (2*h*q2^2*t1)/(sp*(q2 + sp)) - (h*sp*t1)/(q2 + sp) - (2*h*t1^2)/sp - 
       (2*h*q2*t1^2)/(q2 + sp)^2 + (2*h*t1^2)/(q2 + sp) + 
       (2*h*q2*t1^2)/(sp*(q2 + sp)) + 2*h*u1 + (h*q2*u1)/sp + 
       (4*h*q2^2*u1)/(q2 + sp)^2 - (3*h*q2*u1)/(q2 + sp) - 
       (h*q2^2*u1)/(sp*(q2 + sp)) - (2*h*sp*u1)/(q2 + sp) - (2*h*t1*u1)/sp - 
       (4*h*q2*t1*u1)/(q2 + sp)^2 + (2*h*t1*u1)/(q2 + sp) + 
       (2*h*q2*t1*u1)/(sp*(q2 + sp)) - (2*h*q2*u1^2)/(q2 + sp)^2, 
      -((h*q2)/sp) - (2*h*m2)/(q2 + sp) + (h*q2)/(q2 + sp) - 
       (4*h*m2*q2)/(sp*(q2 + sp)) + (h*q2^2)/(sp*(q2 + sp)) + (h*t1)/sp - 
       (h*t1)/(q2 + sp) - (h*q2*t1)/(sp*(q2 + sp)) + (h*u1)/sp - 
       (h*u1)/(q2 + sp) - (h*q2*u1)/(sp*(q2 + sp))}, 
     {-2*h*m2*q2 - 2*h*q2*t1 + (4*h*q2*t1^2)/sp, -4*h*m2 + h*q2 - 
       (8*h*m2*q2)/sp + (h*q2^2)/sp + h*sp + (4*h*m2*q2)/(q2 + sp) + 
       (h*q2^2)/(q2 + sp) - (h*q2^3)/(sp*(q2 + sp)) - (4*h*q2*sp)/(q2 + sp) + 
       2*h*t1 - (8*h*q2*t1)/sp - (4*h*q2*t1)/(q2 + sp) + 
       (4*h*q2^2*t1)/(sp*(q2 + sp)) - (4*h*q2*t1^2)/(sp*(q2 + sp)) + 2*h*u1 - 
       (h*q2*u1)/sp - (5*h*q2*u1)/(q2 + sp) + (h*q2^2*u1)/(sp*(q2 + sp)) + 
       (2*h*t1*u1)/sp + (2*h*t1*u1)/(q2 + sp) - (2*h*q2*t1*u1)/
        (sp*(q2 + sp)) + (2*h*u1^2)/(q2 + sp) - (3*h*q2*\[Epsilon])/2 - 
       (h*sp*\[Epsilon])/2 + (h*q2^2*\[Epsilon])/(q2 + sp) + 
       (h*q2*sp*\[Epsilon])/(q2 + sp), 2*h + (6*h*q2)/sp - 
       (2*h*m2*q2)/(q2 + sp)^2 + (3*h*q2^2)/(q2 + sp)^2 + 
       (h*q2*sp)/(q2 + sp)^2 + (4*h*m2)/(q2 + sp) - (9*h*q2)/(q2 + sp) + 
       (8*h*m2*q2)/(sp*(q2 + sp)) - (4*h*q2^2)/(sp*(q2 + sp)) - 
       (2*h*sp)/(q2 + sp) - (h*t1)/sp - (2*h*q2*t1)/(q2 + sp)^2 + 
       (3*h*t1)/(q2 + sp) + (5*h*q2*t1)/(sp*(q2 + sp)) - (2*h*u1)/sp - 
       (2*h*q2*u1)/(q2 + sp)^2 + (2*h*u1)/(q2 + sp) + 
       (2*h*q2*u1)/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/sp + 
       (h*q2^2*\[Epsilon])/(2*(q2 + sp)^2) + (h*q2*sp*\[Epsilon])/
        (2*(q2 + sp)^2) - (3*h*q2*\[Epsilon])/(2*(q2 + sp)) - 
       (h*sp*\[Epsilon])/(q2 + sp), -(h/(q2 + sp)) - 
       (2*h*q2)/(sp*(q2 + sp)) - (h*\[Epsilon])/(2*(q2 + sp)) - 
       (h*q2*\[Epsilon])/(sp*(q2 + sp))}, 
     {-(h*q2) + (4*h*m2*q2)/sp + (4*h*q2*t1)/sp + (h*q2*\[Epsilon])/2, 
      (-7*h*q2)/sp + (3*h*q2)/(q2 + sp) - (4*h*m2*q2)/(sp*(q2 + sp)) + 
       (3*h*q2^2)/(sp*(q2 + sp)) - (4*h*q2*t1)/(sp*(q2 + sp)) + (h*u1)/sp + 
       (h*u1)/(q2 + sp) - (h*q2*u1)/(sp*(q2 + sp)) + h*\[Epsilon] + 
       (2*h*q2*\[Epsilon])/sp, -((h*q2)/(q2 + sp)^2) + (2*h)/(q2 + sp) + 
       (4*h*q2)/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/(2*(q2 + sp)^2) + 
       (h*\[Epsilon])/(q2 + sp) + (2*h*q2*\[Epsilon])/(sp*(q2 + sp)), 0}, 
     {(2*h*q2)/sp - (h*q2*\[Epsilon])/sp, (-2*h*q2)/(sp*(q2 + sp)) - 
       (h*q2*\[Epsilon])/(sp*(q2 + sp)), 0, 0}}
 
AG2List = {{2, 2}, {2, 1}, {2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, 
     {0, 2}, {0, 1}, {0, 0}, {-1, 1}}
 
AL2List = {{2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, {0, 1}, 
     {0, 0}, {-1, 2}, {-1, 1}, {-2, 2}}
 
AP2List = {{2, 2}, {2, 1}, {2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, 
     {0, 2}, {0, 1}, {0, 0}, {-1, 2}, {-1, 1}}
 
CoeffAG3 = {{{{-2*m2*q2*sp + q2^2*sp + 2*m2*sp^2 + 2*m2*q2*t1 + 3*q2^2*t1 + 
         2*m2*sp*t1 - 5*q2*sp*t1 + 3*sp^2*t1 - 5*q2*t1^2 + 7*sp*t1^2 + 
         4*t1^3 + 2*m2*sp*u1 - q2*sp*u1 - 5*q2*t1*u1 + 6*sp*t1*u1 + 
         7*t1^2*u1 + 3*t1*u1^2 + (q2^2*sp*\[Epsilon])/2 + 
         (q2*sp^2*\[Epsilon])/4 + q2^2*t1*\[Epsilon] - (q2*sp*u1*\[Epsilon])/
          4 - (sp^2*u1*\[Epsilon])/4 - (q2*t1*u1*\[Epsilon])/4 - 
         (sp*t1*u1*\[Epsilon])/4 - (sp*u1^2*\[Epsilon])/4, 
        2*m2*q2 + q2^2 + 2*m2*sp - 2*q2*sp - (2*m2*q2^2)/(q2 + sp) - 
         q2^3/(q2 + sp) + (q2^2*sp)/(q2 + sp) - 4*m2*t1 - 8*q2*t1 + 4*sp*t1 + 
         (4*q2^2*t1)/(q2 + sp) - (2*q2*sp*t1)/(q2 + sp) + 6*t1^2 - 
         (6*q2*t1^2)/(q2 + sp) + (2*sp*t1^2)/(q2 + sp) + (4*t1^3)/(q2 + sp) - 
         2*m2*u1 - 2*q2*u1 + 2*sp*u1 + (2*m2*q2*u1)/(q2 + sp) + 
         (2*q2^2*u1)/(q2 + sp) - (q2*sp*u1)/(q2 + sp) + 7*t1*u1 - 
         (4*q2*t1*u1)/(q2 + sp) + (sp*t1*u1)/(q2 + sp) + 
         (5*t1^2*u1)/(q2 + sp) + u1^2 - (q2*u1^2)/(q2 + sp) + 
         (t1*u1^2)/(q2 + sp) + (q2^2*\[Epsilon])/2 - (q2*sp*\[Epsilon])/2 - 
         (q2^3*\[Epsilon])/(2*(q2 + sp)) + (q2^2*sp*\[Epsilon])/
          (4*(q2 + sp)) - 2*q2*t1*\[Epsilon] + (q2^2*t1*\[Epsilon])/
          (q2 + sp) - (3*q2*u1*\[Epsilon])/4 + (sp*u1*\[Epsilon])/2 + 
         (3*q2^2*u1*\[Epsilon])/(4*(q2 + sp)) - (q2*sp*u1*\[Epsilon])/
          (4*(q2 + sp)) + (t1*u1*\[Epsilon])/2 + (u1^2*\[Epsilon])/4 - 
         (q2*u1^2*\[Epsilon])/(4*(q2 + sp)), t1 + (2*m2*t1)/(q2 + sp) - 
         (q2*t1)/(q2 + sp) + t1^2/(q2 + sp) + (q2*\[Epsilon])/4 - 
         (q2^2*\[Epsilon])/(4*(q2 + sp)) - (u1*\[Epsilon])/4 + 
         (q2*u1*\[Epsilon])/(4*(q2 + sp)) - (t1*u1*\[Epsilon])/
          (4*(q2 + sp))}, {-2*q2*sp + sp^2 - 2*q2*t1 + 3*sp*t1 + 2*t1^2 + 
         sp*u1 + 2*t1*u1 - (5*q2*sp*\[Epsilon])/4 + (sp^2*\[Epsilon])/2 - 
         (q2*t1*\[Epsilon])/2 + (sp*t1*\[Epsilon])/2 + (sp*u1*\[Epsilon])/2, 
        -2*m2 - q2 + 3*sp + (2*m2*q2)/(q2 + sp) + q2^2/(q2 + sp) - 
         (q2*sp)/(q2 + sp) + 5*t1 - (2*q2*t1)/(q2 + sp) + 
         (2*t1^2)/(q2 + sp) + u1 - (q2*u1)/(q2 + sp) - (3*q2*\[Epsilon])/4 + 
         (3*sp*\[Epsilon])/2 + (3*q2^2*\[Epsilon])/(4*(q2 + sp)) - 
         (q2*sp*\[Epsilon])/(2*(q2 + sp)) + t1*\[Epsilon] - 
         (q2*t1*\[Epsilon])/(q2 + sp) + (u1*\[Epsilon])/2 - 
         (q2*u1*\[Epsilon])/(2*(q2 + sp)), (t1*\[Epsilon])/(2*(q2 + sp))}, 
       {0, 0, 0}}, {{2*m2*sp - 3*q2*sp + sp^2 - 6*q2*t1 + 8*sp*t1 + 8*t1^2 + 
         (2*m2*q2*sp)/u1 + (q2^2*sp)/u1 - (q2*sp^2)/u1 + (2*m2*q2*t1)/u1 + 
         (2*q2^2*t1)/u1 + (2*m2*sp*t1)/u1 - (3*q2*sp*t1)/u1 + (sp^2*t1)/u1 - 
         (3*q2*t1^2)/u1 + (5*sp*t1^2)/u1 + (4*t1^3)/u1 + 2*sp*u1 + 4*t1*u1 - 
         q2*sp*\[Epsilon] + (sp^2*\[Epsilon])/4 - (3*q2*t1*\[Epsilon])/2 + 
         (sp*t1*\[Epsilon])/2 + (q2^2*sp*\[Epsilon])/(2*u1) - 
         (q2*sp^2*\[Epsilon])/(4*u1) + (q2^2*t1*\[Epsilon])/u1 + 
         (sp*u1*\[Epsilon])/2, -2*m2 - 4*q2 + 3*sp + (2*m2*q2)/(q2 + sp) + 
         (4*q2^2)/(q2 + sp) - (2*q2*sp)/(q2 + sp) + 9*t1 - 
         (7*q2*t1)/(q2 + sp) + (sp*t1)/(q2 + sp) + (4*t1^2)/(q2 + sp) - 
         (2*m2*q2)/u1 + q2^2/u1 - (6*m2*sp)/u1 - (3*q2*sp)/u1 + 
         (2*m2*q2^2)/((q2 + sp)*u1) - q2^3/((q2 + sp)*u1) + 
         (2*m2*q2*sp)/((q2 + sp)*u1) + (2*q2^2*sp)/((q2 + sp)*u1) - 
         (4*m2*t1)/u1 - (5*q2*t1)/u1 + (4*q2^2*t1)/((q2 + sp)*u1) - 
         (3*q2*sp*t1)/((q2 + sp)*u1) + (2*t1^2)/u1 - 
         (6*q2*t1^2)/((q2 + sp)*u1) + (2*sp*t1^2)/((q2 + sp)*u1) + 
         (4*t1^3)/((q2 + sp)*u1) + 3*u1 - (3*q2*u1)/(q2 + sp) - 
         2*q2*\[Epsilon] + (3*sp*\[Epsilon])/2 + (2*q2^2*\[Epsilon])/
          (q2 + sp) - (3*q2*sp*\[Epsilon])/(4*(q2 + sp)) + 3*t1*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/(q2 + sp) + (q2^2*\[Epsilon])/(2*u1) - 
         (3*q2*sp*\[Epsilon])/(2*u1) - (q2^3*\[Epsilon])/(2*(q2 + sp)*u1) + 
         (3*q2^2*sp*\[Epsilon])/(4*(q2 + sp)*u1) - (2*q2*t1*\[Epsilon])/u1 + 
         (q2^2*t1*\[Epsilon])/((q2 + sp)*u1) + (3*u1*\[Epsilon])/2 - 
         (3*q2*u1*\[Epsilon])/(2*(q2 + sp)), (2*m2)/u1 - 
         (2*m2*q2)/((q2 + sp)*u1) - t1/u1 + (2*m2*t1)/((q2 + sp)*u1) + 
         (q2*t1)/((q2 + sp)*u1) - t1^2/((q2 + sp)*u1) + \[Epsilon]/4 - 
         (q2*\[Epsilon])/(4*(q2 + sp)) + (t1*\[Epsilon])/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*u1) + (q2^2*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {4*sp + 5*t1 + (2*m2*sp)/u1 - (q2*sp)/u1 + sp^2/u1 - (3*q2*t1)/u1 + 
         (7*sp*t1)/u1 + (6*t1^2)/u1 + (3*sp*\[Epsilon])/4 + 
         (q2*sp*\[Epsilon])/(4*u1) - (q2*t1*\[Epsilon])/(2*u1) + 
         (sp*t1*\[Epsilon])/(2*u1), 2 - (2*q2)/(q2 + sp) - t1/(q2 + sp) - 
         (2*q2)/u1 - sp/u1 + (2*q2^2)/((q2 + sp)*u1) + (3*t1)/u1 - 
         (3*q2*t1)/((q2 + sp)*u1) + (2*t1^2)/((q2 + sp)*u1) + 
         (5*\[Epsilon])/4 - (5*q2*\[Epsilon])/(4*(q2 + sp)) - 
         (5*q2*\[Epsilon])/(4*u1) - (sp*\[Epsilon])/(2*u1) + 
         (5*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + (t1*\[Epsilon])/u1 - 
         (q2*t1*\[Epsilon])/((q2 + sp)*u1), \[Epsilon]/(2*u1) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/
          (2*(q2 + sp)*u1)}, {(2*sp)/u1 + (2*t1)/u1 + (sp*\[Epsilon])/(2*u1), 
        u1^(-1) - q2/((q2 + sp)*u1) + \[Epsilon]/(2*u1) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}}, 
      {{t1 - (q2*t1)/u1 + t1^2/u1 - (sp*\[Epsilon])/4 + (q2*sp*\[Epsilon])/
          (4*u1) - (q2*t1*\[Epsilon])/(4*u1) - (sp*t1*\[Epsilon])/(4*u1), 
        -(t1/(q2 + sp)) + (q2*t1)/((q2 + sp)*u1) - t1^2/((q2 + sp)*u1) + 
         \[Epsilon]/4 - (q2*\[Epsilon])/(4*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*u1) + (q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + 
         (t1*\[Epsilon])/(2*u1), -(t1*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {t1/u1 - (sp*\[Epsilon])/(4*u1), -(t1/((q2 + sp)*u1)) + 
         \[Epsilon]/(4*u1) - (q2*\[Epsilon])/(4*(q2 + sp)*u1), 0}, 
       {0, 0, 0}}}, {{{-4*m2*q2 + 2*q2^2 + 4*m2*sp - q2*sp + 4*m2*t1 - 
         3*q2*t1 + 2*sp*t1 + 2*t1^2 + 4*m2*u1 - 3*q2*u1 + sp*u1 + 3*t1*u1 + 
         u1^2 + (5*q2^2*\[Epsilon])/4 - (q2*sp*\[Epsilon])/2 - 
         q2*t1*\[Epsilon] - (7*q2*u1*\[Epsilon])/4 + (sp*u1*\[Epsilon])/2 + 
         (t1*u1*\[Epsilon])/2 + (u1^2*\[Epsilon])/2, 
        4*m2 - 3*q2 - (2*m2*q2)/(q2 + sp) + q2^2/(q2 + sp) - 
         (q2*sp)/(q2 + sp) + 3*t1 + (4*m2*t1)/(q2 + sp) - 
         (8*q2*t1)/(q2 + sp) + (2*sp*t1)/(q2 + sp) + (6*t1^2)/(q2 + sp) + 
         3*u1 - (2*q2*u1)/(q2 + sp) + (sp*u1)/(q2 + sp) + 
         (7*t1*u1)/(q2 + sp) + u1^2/(q2 + sp) - (3*q2*\[Epsilon])/4 - 
         (q2^2*\[Epsilon])/(4*(q2 + sp)) - (q2*t1*\[Epsilon])/(q2 + sp) + 
         (3*u1*\[Epsilon])/4 + (q2*u1*\[Epsilon])/(4*(q2 + sp)) + 
         (t1*u1*\[Epsilon])/(2*(q2 + sp)), (2*m2)/(q2 + sp) + t1/(q2 + sp) + 
         (q2*\[Epsilon])/(4*(q2 + sp)) - (u1*\[Epsilon])/(4*(q2 + sp))}, 
       {-4*q2 + 2*sp + 2*t1 + 2*u1 - (5*q2*\[Epsilon])/2 + sp*\[Epsilon] + 
         t1*\[Epsilon] + u1*\[Epsilon], 4 + (4*t1)/(q2 + sp) + 
         (3*\[Epsilon])/2 + (t1*\[Epsilon])/(q2 + sp), 
        \[Epsilon]/(2*(q2 + sp))}, {0, 0, 0}}, 
      {{4*m2 - 4*q2 + sp + 5*t1 + (2*m2*q2)/u1 + q2^2/u1 - (q2*sp)/u1 + 
         (4*m2*t1)/u1 - (2*q2*t1)/u1 + (2*t1^2)/u1 + 3*u1 - 
         (9*q2*\[Epsilon])/4 + (sp*\[Epsilon])/2 + t1*\[Epsilon] + 
         (3*q2^2*\[Epsilon])/(4*u1) - (q2*sp*\[Epsilon])/(2*u1) - 
         (q2*t1*\[Epsilon])/u1 + (3*u1*\[Epsilon])/2, 2 - q2/(q2 + sp) + 
         (3*t1)/(q2 + sp) - (2*m2)/u1 - (2*q2)/u1 - 
         (4*m2*q2)/((q2 + sp)*u1) + (2*q2^2)/((q2 + sp)*u1) - t1/u1 + 
         (4*m2*t1)/((q2 + sp)*u1) - (3*q2*t1)/((q2 + sp)*u1) + 
         (2*t1^2)/((q2 + sp)*u1) - u1/(q2 + sp) + (5*\[Epsilon])/4 - 
         (3*q2*\[Epsilon])/(4*(q2 + sp)) + (t1*\[Epsilon])/(q2 + sp) - 
         (5*q2*\[Epsilon])/(4*u1) + (5*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) - 
         (q2*t1*\[Epsilon])/((q2 + sp)*u1) - (u1*\[Epsilon])/(2*(q2 + sp)), 
        -(t1/((q2 + sp)*u1)) + \[Epsilon]/(4*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*(q2 + sp)*u1)}, {4 + (4*m2)/u1 + (4*t1)/u1 + 
         (3*\[Epsilon])/2 + (t1*\[Epsilon])/u1, -(q2 + sp)^(-1) - u1^(-1) - 
         (2*q2)/((q2 + sp)*u1) + (2*t1)/((q2 + sp)*u1) - 
         (3*q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/((q2 + sp)*u1), 
        0}, {2/u1 + \[Epsilon]/u1, 0, 0}}, 
      {{(t1*\[Epsilon])/(2*u1), \[Epsilon]/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/(2*(q2 + sp)*u1), 
        0}, {\[Epsilon]/(2*u1), 0, 0}, {0, 0, 0}}}, 
     {{{0, (4*m2)/(q2 + sp) - (2*q2)/(q2 + sp) + (2*t1)/(q2 + sp) + 
         (2*u1)/(q2 + sp) - (q2*\[Epsilon])/(2*(q2 + sp)) + 
         (u1*\[Epsilon])/(2*(q2 + sp)), 0}, 
       {0, 2/(q2 + sp) + \[Epsilon]/(q2 + sp), 0}, {0, 0, 0}}, 
      {{0, (q2 + sp)^(-1) - q2/((q2 + sp)*u1) + \[Epsilon]/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}}
 
CoeffAL3 = {{{{2*q2^2*t1 - 4*q2*t1^2 + (6*q2^2*t1^2)/sp + 
         (4*q2^2*t1^3)/sp^2 - (4*q2*t1^3)/sp - 2*q2*t1*u1 - 
         (4*q2*t1^2*u1)/sp, (-4*q2*t1^2)/sp - (4*q2*t1^3)/sp^2}, 
       {-2*q2*t1 - (2*q2*t1^2)/sp, 0}}, 
      {{-2*q2*sp - 6*q2*t1 - (4*q2*t1^2)/sp + (2*q2^2*sp)/u1 + 
         (8*q2^2*t1)/u1 - (4*q2*sp*t1)/u1 - (8*q2*t1^2)/u1 + 
         (10*q2^2*t1^2)/(sp*u1) + (4*q2^2*t1^3)/(sp^2*u1) - 
         (4*q2*t1^3)/(sp*u1), (-4*q2*t1)/u1 - (8*q2*t1^2)/(sp*u1) - 
         (4*q2*t1^3)/(sp^2*u1)}, {(-2*q2*sp)/u1 - (4*q2*t1)/u1 - 
         (2*q2*t1^2)/(sp*u1), 0}}, {{0, 0}, {0, 0}}}, 
     {{{-4*m2*q2 + 2*q2^2 - 6*q2*t1 - (8*m2*q2*t1)/sp + (12*q2^2*t1)/sp + 
         (10*q2^2*t1^2)/sp^2 - (16*q2*t1^2)/sp - (8*q2*t1^3)/sp^2 - 2*q2*u1 - 
         (10*q2*t1*u1)/sp - (6*q2*t1^2*u1)/sp^2 + q2^2*\[Epsilon] + 
         (2*q2^2*t1*\[Epsilon])/sp - q2*u1*\[Epsilon] - (q2*t1*u1*\[Epsilon])/
          sp, (-6*q2*t1)/sp - (10*q2*t1^2)/sp^2}, 
       {-2*q2 - (8*q2*t1)/sp - (4*q2*t1^2)/sp^2 - q2*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/sp, 0}}, 
      {{-6*q2 - (16*q2*t1)/sp - (8*q2*t1^2)/sp^2 - (4*m2*q2)/u1 + 
         (6*q2^2)/u1 - (8*q2*t1)/u1 - (8*m2*q2*t1)/(sp*u1) + 
         (16*q2^2*t1)/(sp*u1) + (10*q2^2*t1^2)/(sp^2*u1) - 
         (16*q2*t1^2)/(sp*u1) - (8*q2*t1^3)/(sp^2*u1) - q2*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/sp + (q2^2*\[Epsilon])/u1 + 
         (2*q2^2*t1*\[Epsilon])/(sp*u1), (-2*q2*t1)/(sp*u1) - 
         (2*q2*t1^2)/(sp^2*u1)}, {(-4*q2)/u1 - (8*q2*t1)/(sp*u1) - 
         (4*q2*t1^2)/(sp^2*u1) - (q2*\[Epsilon])/u1 - (2*q2*t1*\[Epsilon])/
          (sp*u1), 0}}, {{(-2*q2*t1)/(sp*u1) - (2*q2*t1^2)/(sp^2*u1) - 
         (q2*t1*\[Epsilon])/(sp*u1), 0}, {0, 0}}}, 
     {{{(-12*m2*q2)/sp + (4*q2^2)/sp - (8*m2*q2*t1)/sp^2 + 
         (10*q2^2*t1)/sp^2 - (10*q2*t1)/sp - (12*q2*t1^2)/sp^2 - 
         (4*q2*u1)/sp - (8*q2*t1*u1)/sp^2 + (2*q2^2*\[Epsilon])/sp + 
         (2*q2^2*t1*\[Epsilon])/sp^2 - (2*q2*u1*\[Epsilon])/sp - 
         (q2*t1*u1*\[Epsilon])/sp^2, (-6*q2*t1)/sp^2}, 
       {(-6*q2)/sp - (8*q2*t1)/sp^2 - (3*q2*\[Epsilon])/sp - 
         (2*q2*t1*\[Epsilon])/sp^2, 0}}, 
      {{(-6*q2)/sp - (8*q2*t1)/sp^2 - (4*m2*q2)/(sp*u1) + (6*q2^2)/(sp*u1) - 
         (8*m2*q2*t1)/(sp^2*u1) + (6*q2^2*t1)/(sp^2*u1) - (2*q2*t1)/(sp*u1) - 
         (4*q2*t1^2)/(sp^2*u1) - (2*q2*\[Epsilon])/sp - (2*q2*t1*\[Epsilon])/
          sp^2 + (2*q2^2*\[Epsilon])/(sp*u1) + (2*q2^2*t1*\[Epsilon])/
          (sp^2*u1), (2*q2*t1)/(sp^2*u1)}, 
       {(-2*q2)/(sp*u1) - (4*q2*t1)/(sp^2*u1) - (q2*\[Epsilon])/(sp*u1) - 
         (2*q2*t1*\[Epsilon])/(sp^2*u1), 0}}, 
      {{-((q2*t1*\[Epsilon])/(sp^2*u1)), 0}, {0, 0}}}, 
     {{{(-8*m2*q2)/sp^2 + (2*q2^2)/sp^2 - (4*q2*t1)/sp^2 - (2*q2*u1)/sp^2 + 
         (q2^2*\[Epsilon])/sp^2 - (q2*u1*\[Epsilon])/sp^2, 0}, 
       {(-4*q2)/sp^2 - (2*q2*\[Epsilon])/sp^2, 0}}, 
      {{(-2*q2)/sp^2 + (2*q2^2)/(sp^2*u1) - (q2*\[Epsilon])/sp^2 + 
         (q2^2*\[Epsilon])/(sp^2*u1), 0}, {0, 0}}, {{0, 0}, {0, 0}}}}
 
CoeffAP3 = {{{{-4*h*m2*q2*sp + 2*h*q2^2*sp + 4*h*m2*sp^2 + 4*h*m2*q2*t1 + 
         2*h*q2^2*t1 + 4*h*m2*sp*t1 + 2*h*q2*sp*t1 + 2*h*sp^2*t1 + 
         10*h*q2*t1^2 - (4*h*q2^2*t1^2)/sp + 2*h*sp*t1^2 + (8*h*q2*t1^3)/sp + 
         4*h*m2*sp*u1 - 2*h*q2*sp*u1 + 2*h*q2*t1*u1 - 2*h*t1^2*u1 + 
         (8*h*q2*t1^2*u1)/sp - 2*h*t1*u1^2 - h*q2^2*sp*\[Epsilon] + 
         (h*q2*sp^2*\[Epsilon])/2 - h*q2^2*t1*\[Epsilon] + 
         h*q2*sp*t1*\[Epsilon] + (3*h*q2*sp*u1*\[Epsilon])/2 - 
         (h*sp^2*u1*\[Epsilon])/2 + (h*q2*t1*u1*\[Epsilon])/2 - 
         (h*sp*t1*u1*\[Epsilon])/2 - (h*sp*u1^2*\[Epsilon])/2, 
        -4*h*m2*q2 - 2*h*q2^2 + (4*h*q2^3)/sp + 4*h*m2*sp + 
         (4*h*m2*q2^2)/(q2 + sp) - (2*h*q2^3)/(q2 + sp) - 
         (4*h*q2^4)/(sp*(q2 + sp)) - (2*h*q2^2*sp)/(q2 + sp) + 4*h*q2*t1 - 
         (14*h*q2^2*t1)/sp + 4*h*sp*t1 + (2*h*q2^2*t1)/(q2 + sp) + 
         (14*h*q2^3*t1)/(sp*(q2 + sp)) + 4*h*t1^2 + (14*h*q2*t1^2)/sp - 
         (2*h*q2*t1^2)/(q2 + sp) - (18*h*q2^2*t1^2)/(sp*(q2 + sp)) + 
         (8*h*q2*t1^3)/(sp*(q2 + sp)) + 4*h*m2*u1 + 4*h*q2*u1 - 
         (4*h*q2^2*u1)/sp - (4*h*m2*q2*u1)/(q2 + sp) + 
         (4*h*q2^3*u1)/(sp*(q2 + sp)) + (2*h*q2*sp*u1)/(q2 + sp) + 
         2*h*t1*u1 + (12*h*q2*t1*u1)/sp - (4*h*q2*t1*u1)/(q2 + sp) - 
         (12*h*q2^2*t1*u1)/(sp*(q2 + sp)) - (2*h*sp*t1*u1)/(q2 + sp) - 
         (2*h*t1^2*u1)/(q2 + sp) + (8*h*q2*t1^2*u1)/(sp*(q2 + sp)) - 
         2*h*u1^2 + (2*h*q2*u1^2)/(q2 + sp) - (2*h*t1*u1^2)/(q2 + sp) - 
         h*q2^2*\[Epsilon] + h*q2*sp*\[Epsilon] + (h*q2^3*\[Epsilon])/
          (q2 + sp) - (h*q2^2*sp*\[Epsilon])/(2*(q2 + sp)) + 
         2*h*q2*t1*\[Epsilon] - (2*h*q2^2*t1*\[Epsilon])/(q2 + sp) + 
         (3*h*q2*u1*\[Epsilon])/2 - h*sp*u1*\[Epsilon] - 
         (3*h*q2^2*u1*\[Epsilon])/(2*(q2 + sp)) + (h*q2*sp*u1*\[Epsilon])/
          (2*(q2 + sp)) - h*t1*u1*\[Epsilon] + (h*q2*t1*u1*\[Epsilon])/
          (q2 + sp) - (h*u1^2*\[Epsilon])/2 + (h*q2*u1^2*\[Epsilon])/
          (2*(q2 + sp)), 2*h*t1 + (2*h*q2*t1)/sp - (4*h*m2*t1)/(q2 + sp) - 
         (2*h*q2^2*t1)/(sp*(q2 + sp)) + (2*h*t1^2)/sp + 
         (2*h*q2*t1^2)/(sp*(q2 + sp)) + (h*q2*\[Epsilon])/2 - 
         (h*q2^2*\[Epsilon])/(2*(q2 + sp)) + (h*q2*t1*\[Epsilon])/(q2 + sp) - 
         (h*u1*\[Epsilon])/2 + (h*q2*u1*\[Epsilon])/(2*(q2 + sp)) - 
         (h*t1*u1*\[Epsilon])/(2*(q2 + sp))}, 
       {-4*h*q2*sp + 2*h*sp^2 - 4*h*q2*t1 + 2*h*sp*t1 + 2*h*sp*u1 + 
         (3*h*q2*sp*\[Epsilon])/2 - h*sp^2*\[Epsilon] + h*q2*t1*\[Epsilon] - 
         h*sp*t1*\[Epsilon] - h*sp*u1*\[Epsilon], 4*h*m2 + 2*h*q2 - 
         (4*h*q2^2)/sp + 2*h*sp - (4*h*m2*q2)/(q2 + sp) + 
         (2*h*q2^2)/(q2 + sp) + (4*h*q2^3)/(sp*(q2 + sp)) + 
         (2*h*q2*sp)/(q2 + sp) + 2*h*t1 + (8*h*q2*t1)/sp - 
         (4*h*q2*t1)/(q2 + sp) - (8*h*q2^2*t1)/(sp*(q2 + sp)) + 
         (4*h*q2*t1^2)/(sp*(q2 + sp)) - 2*h*u1 + (2*h*q2*u1)/(q2 + sp) + 
         (3*h*q2*\[Epsilon])/2 - 2*h*sp*\[Epsilon] - (3*h*q2^2*\[Epsilon])/
          (2*(q2 + sp)) + (h*q2*sp*\[Epsilon])/(q2 + sp) - 
         2*h*t1*\[Epsilon] + (2*h*q2*t1*\[Epsilon])/(q2 + sp) - 
         h*u1*\[Epsilon] + (h*q2*u1*\[Epsilon])/(q2 + sp), 
        -(h*\[Epsilon]) + (h*q2*\[Epsilon])/(q2 + sp) - 
         (h*t1*\[Epsilon])/(q2 + sp)}, {0, 0, 0}}, 
      {{4*h*m2*sp + 6*h*q2*sp - 2*h*sp^2 + 8*h*q2*t1 - 4*h*sp*t1 + 
         (8*h*q2*t1^2)/sp + (4*h*m2*q2*sp)/u1 - (2*h*q2^2*sp)/u1 + 
         (2*h*q2*sp^2)/u1 + (4*h*m2*q2*t1)/u1 - (4*h*q2^2*t1)/u1 + 
         (4*h*m2*sp*t1)/u1 + (10*h*q2*sp*t1)/u1 - (2*h*sp^2*t1)/u1 + 
         (14*h*q2*t1^2)/u1 - (4*h*q2^2*t1^2)/(sp*u1) - (2*h*sp*t1^2)/u1 + 
         (8*h*q2*t1^3)/(sp*u1) - 4*h*sp*u1 + 2*h*q2*sp*\[Epsilon] - 
         (h*sp^2*\[Epsilon])/2 + h*q2*t1*\[Epsilon] - h*sp*t1*\[Epsilon] - 
         (h*q2^2*sp*\[Epsilon])/u1 + (h*q2*sp^2*\[Epsilon])/(2*u1) - 
         (h*q2^2*t1*\[Epsilon])/u1 + (h*q2*sp*t1*\[Epsilon])/u1 - 
         h*sp*u1*\[Epsilon], 4*h*m2 + 8*h*q2 - 2*h*sp - 
         (4*h*m2*q2)/(q2 + sp) - (8*h*q2^2)/(q2 + sp) + 
         (4*h*q2*sp)/(q2 + sp) - 2*h*t1 + (4*h*q2*t1)/sp + 
         (10*h*q2*t1)/(q2 + sp) - (4*h*q2^2*t1)/(sp*(q2 + sp)) - 
         (2*h*sp*t1)/(q2 + sp) + (8*h*q2*t1^2)/(sp*(q2 + sp)) + 
         (4*h*m2*q2)/u1 - (2*h*q2^2)/u1 - (4*h*m2*sp)/u1 + (2*h*q2*sp)/u1 - 
         (4*h*m2*q2^2)/((q2 + sp)*u1) + (2*h*q2^3)/((q2 + sp)*u1) - 
         (4*h*m2*q2*sp)/((q2 + sp)*u1) - (4*h*q2^2*sp)/((q2 + sp)*u1) + 
         (2*h*q2*t1)/u1 - (2*h*q2^2*t1)/(sp*u1) - (4*h*sp*t1)/u1 - 
         (6*h*q2^2*t1)/((q2 + sp)*u1) + (2*h*q2^3*t1)/(sp*(q2 + sp)*u1) + 
         (6*h*q2*sp*t1)/((q2 + sp)*u1) - (4*h*t1^2)/u1 + 
         (2*h*q2*t1^2)/(sp*u1) + (10*h*q2*t1^2)/((q2 + sp)*u1) - 
         (6*h*q2^2*t1^2)/(sp*(q2 + sp)*u1) + (8*h*q2*t1^3)/
          (sp*(q2 + sp)*u1) - 6*h*u1 + (6*h*q2*u1)/(q2 + sp) + 
         2*h*q2*\[Epsilon] - h*sp*\[Epsilon] - (2*h*q2^2*\[Epsilon])/
          (q2 + sp) + (h*q2*sp*\[Epsilon])/(2*(q2 + sp)) - 
         2*h*t1*\[Epsilon] + (2*h*q2*t1*\[Epsilon])/(q2 + sp) - 
         (h*q2^2*\[Epsilon])/u1 + (h*q2*sp*\[Epsilon])/u1 + 
         (h*q2^3*\[Epsilon])/((q2 + sp)*u1) - (h*q2^2*sp*\[Epsilon])/
          (2*(q2 + sp)*u1) + (2*h*q2*t1*\[Epsilon])/u1 - 
         (2*h*q2^2*t1*\[Epsilon])/((q2 + sp)*u1) - h*u1*\[Epsilon] + 
         (h*q2*u1*\[Epsilon])/(q2 + sp), (-4*h*m2)/u1 + 
         (4*h*m2*q2)/((q2 + sp)*u1) - (2*h*t1)/u1 - (2*h*q2*t1)/(sp*u1) - 
         (4*h*m2*t1)/((q2 + sp)*u1) + (2*h*q2^2*t1)/(sp*(q2 + sp)*u1) - 
         (2*h*t1^2)/(sp*u1) - (2*h*q2*t1^2)/(sp*(q2 + sp)*u1) - 
         (h*\[Epsilon])/2 + (h*q2*\[Epsilon])/(2*(q2 + sp)) - 
         (h*t1*\[Epsilon])/(q2 + sp) + (h*q2*\[Epsilon])/(2*u1) - 
         (h*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) + (h*q2*t1*\[Epsilon])/
          ((q2 + sp)*u1)}, {-4*h*sp - 2*h*t1 + (4*h*m2*sp)/u1 + 
         (6*h*q2*sp)/u1 - (2*h*sp^2)/u1 + (10*h*q2*t1)/u1 - (2*h*sp*t1)/u1 + 
         (8*h*q2*t1^2)/(sp*u1) - (3*h*sp*\[Epsilon])/2 + 
         (3*h*q2*sp*\[Epsilon])/(2*u1) + (h*q2*t1*\[Epsilon])/u1 - 
         (h*sp*t1*\[Epsilon])/u1, -4*h + (4*h*q2)/(q2 + sp) + 
         (2*h*t1)/(q2 + sp) + (4*h*q2)/u1 - (2*h*sp)/u1 - 
         (4*h*q2^2)/((q2 + sp)*u1) - (2*h*t1)/u1 + (4*h*q2*t1)/(sp*u1) + 
         (2*h*q2*t1)/((q2 + sp)*u1) - (4*h*q2^2*t1)/(sp*(q2 + sp)*u1) + 
         (4*h*q2*t1^2)/(sp*(q2 + sp)*u1) - (3*h*\[Epsilon])/2 + 
         (3*h*q2*\[Epsilon])/(2*(q2 + sp)) + (3*h*q2*\[Epsilon])/(2*u1) - 
         (3*h*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) - (2*h*t1*\[Epsilon])/u1 + 
         (2*h*q2*t1*\[Epsilon])/((q2 + sp)*u1), 
        -((h*t1*\[Epsilon])/((q2 + sp)*u1))}, {-((h*sp*\[Epsilon])/u1), 
        (-2*h)/u1 + (2*h*q2)/((q2 + sp)*u1) - (h*\[Epsilon])/u1 + 
         (h*q2*\[Epsilon])/((q2 + sp)*u1), 0}}, 
      {{2*h*t1 - (2*h*q2*t1)/u1 + (2*h*t1^2)/u1 - (h*sp*\[Epsilon])/2 + 
         (h*q2*sp*\[Epsilon])/(2*u1) + (h*q2*t1*\[Epsilon])/(2*u1) - 
         (h*sp*t1*\[Epsilon])/(2*u1), (2*h*t1)/(q2 + sp) - 
         (2*h*q2*t1)/((q2 + sp)*u1) + (2*h*t1^2)/((q2 + sp)*u1) - 
         (h*\[Epsilon])/2 + (h*q2*\[Epsilon])/(2*(q2 + sp)) + 
         (h*q2*\[Epsilon])/(2*u1) - (h*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) - 
         (h*t1*\[Epsilon])/u1 + (h*q2*t1*\[Epsilon])/((q2 + sp)*u1), 
        -(h*t1*\[Epsilon])/(2*(q2 + sp)*u1)}, 
       {(2*h*t1)/u1 - (h*sp*\[Epsilon])/(2*u1), (2*h*t1)/((q2 + sp)*u1) - 
         (h*\[Epsilon])/(2*u1) + (h*q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}, 
       {0, 0, 0}}}, {{{-8*h*m2*q2 + 4*h*q2^2 + 2*h*q2*sp + 2*h*q2*t1 + 
         (8*h*m2*q2*t1)/sp + (4*h*q2^2*t1)/sp - 2*h*q2*u1 - 2*h*sp*u1 - 
         2*h*t1*u1 - 2*h*u1^2 - (3*h*q2^2*\[Epsilon])/2 - 
         (2*h*q2^2*t1*\[Epsilon])/sp + (3*h*q2*u1*\[Epsilon])/2 + 
         (h*q2*t1*u1*\[Epsilon])/sp, 8*h*m2 - 2*h*q2 + (8*h*m2*q2)/sp - 
         (8*h*q2^2)/sp - (4*h*m2*q2)/(q2 + sp) + (6*h*q2^2)/(q2 + sp) - 
         (8*h*m2*q2^2)/(sp*(q2 + sp)) + (8*h*q2^3)/(sp*(q2 + sp)) + 
         (2*h*q2*sp)/(q2 + sp) + 2*h*t1 + (8*h*q2*t1)/sp + 
         (8*h*m2*q2*t1)/(sp*(q2 + sp)) - (20*h*q2^2*t1)/(sp*(q2 + sp)) + 
         (12*h*q2*t1^2)/(sp*(q2 + sp)) + 2*h*u1 + (8*h*q2*u1)/sp - 
         (4*h*q2*u1)/(q2 + sp) - (8*h*q2^2*u1)/(sp*(q2 + sp)) - 
         (2*h*sp*u1)/(q2 + sp) - (2*h*t1*u1)/(q2 + sp) + 
         (12*h*q2*t1*u1)/(sp*(q2 + sp)) - (2*h*u1^2)/(q2 + sp) + 
         (h*q2*\[Epsilon])/2 - (h*q2^2*\[Epsilon])/sp - (h*q2^2*\[Epsilon])/
          (2*(q2 + sp)) + (h*q2^3*\[Epsilon])/(sp*(q2 + sp)) - 
         (2*h*q2^2*t1*\[Epsilon])/(sp*(q2 + sp)) - (h*u1*\[Epsilon])/2 + 
         (h*q2*u1*\[Epsilon])/sp + (h*q2*u1*\[Epsilon])/(2*(q2 + sp)) - 
         (h*q2^2*u1*\[Epsilon])/(sp*(q2 + sp)) + (h*q2*t1*u1*\[Epsilon])/
          (sp*(q2 + sp)), (-4*h*m2)/(q2 + sp) + (2*h*t1)/sp + 
         (2*h*q2*t1)/(sp*(q2 + sp)) + (h*q2*\[Epsilon])/(2*(q2 + sp)) - 
         (h*u1*\[Epsilon])/(2*(q2 + sp))}, {-8*h*q2 - (8*h*q2*t1)/sp + 
         2*h*q2*\[Epsilon] + (2*h*q2*t1*\[Epsilon])/sp, 
        4*h + (8*h*q2)/sp - (8*h*q2)/(q2 + sp) - (8*h*q2^2)/(sp*(q2 + sp)) + 
         (8*h*q2*t1)/(sp*(q2 + sp)) - h*\[Epsilon] + (2*h*q2*\[Epsilon])/sp - 
         (2*h*q2^2*\[Epsilon])/(sp*(q2 + sp)) + (2*h*q2*t1*\[Epsilon])/
          (sp*(q2 + sp)), -((h*\[Epsilon])/(q2 + sp))}, {0, 0, 0}}, 
      {{8*h*q2 - 2*h*sp - 6*h*t1 + (8*h*q2*t1)/sp + (20*h*m2*q2)/u1 - 
         (2*h*q2^2)/u1 + (2*h*q2*sp)/u1 + (16*h*q2*t1)/u1 + 
         (8*h*m2*q2*t1)/(sp*u1) - (4*h*q2^2*t1)/(sp*u1) + 
         (16*h*q2*t1^2)/(sp*u1) - 6*h*u1 + (3*h*q2*\[Epsilon])/2 + 
         (2*h*q2*t1*\[Epsilon])/sp - (3*h*q2^2*\[Epsilon])/(2*u1) - 
         (2*h*q2^2*t1*\[Epsilon])/(sp*u1), 4*h + (2*h*q2)/sp - 
         (2*h*q2^2)/(sp*(q2 + sp)) + (4*h*t1)/sp + (2*h*t1)/(q2 + sp) + 
         (8*h*q2*t1)/(sp*(q2 + sp)) - (12*h*m2)/u1 - (4*h*q2)/u1 - 
         (2*h*q2^2)/(sp*u1) + (8*h*m2*q2)/((q2 + sp)*u1) - 
         (2*h*q2^2)/((q2 + sp)*u1) + (2*h*q2^3)/(sp*(q2 + sp)*u1) - 
         (2*h*t1)/u1 - (4*h*q2*t1)/(sp*u1) + (2*h*q2*t1)/((q2 + sp)*u1) + 
         (8*h*m2*q2*t1)/(sp*(q2 + sp)*u1) - (4*h*q2^2*t1)/(sp*(q2 + sp)*u1) + 
         (4*h*q2*t1^2)/(sp*(q2 + sp)*u1) + (2*h*u1)/(q2 + sp) - 
         (h*\[Epsilon])/2 + (h*q2*\[Epsilon])/sp + (h*q2*\[Epsilon])/
          (2*(q2 + sp)) - (h*q2^2*\[Epsilon])/(sp*(q2 + sp)) + 
         (2*h*q2*t1*\[Epsilon])/(sp*(q2 + sp)) + (h*q2*\[Epsilon])/(2*u1) - 
         (h*q2^2*\[Epsilon])/(sp*u1) - (h*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) + 
         (h*q2^3*\[Epsilon])/(sp*(q2 + sp)*u1) - (2*h*q2^2*t1*\[Epsilon])/
          (sp*(q2 + sp)*u1), (-2*h*t1)/(sp*u1) - (2*h*q2*t1)/
          (sp*(q2 + sp)*u1) - (h*\[Epsilon])/(2*(q2 + sp)) + 
         (h*q2*\[Epsilon])/(2*(q2 + sp)*u1)}, 
       {-4*h + (8*h*q2)/u1 + (8*h*q2*t1)/(sp*u1) + (h*q2*\[Epsilon])/u1 + 
         (2*h*q2*t1*\[Epsilon])/(sp*u1), (2*h)/(q2 + sp) - (2*h)/u1 + 
         (4*h*q2)/((q2 + sp)*u1) + (4*h*q2*t1)/(sp*(q2 + sp)*u1) + 
         (h*q2*\[Epsilon])/((q2 + sp)*u1) + (2*h*q2*t1*\[Epsilon])/
          (sp*(q2 + sp)*u1), 0}, {0, 0, 0}}, 
      {{(h*q2*t1*\[Epsilon])/(sp*u1), (h*q2*t1*\[Epsilon])/(sp*(q2 + sp)*u1), 
        0}, {0, 0, 0}, {0, 0, 0}}}, 
     {{{(-8*h*m2*q2)/sp + (4*h*q2^2)/sp - (4*h*q2*t1)/sp - (4*h*q2*u1)/sp - 
         (h*q2^2*\[Epsilon])/sp + (h*q2*u1*\[Epsilon])/sp, 
        (8*h*m2*q2)/(sp*(q2 + sp)) - (4*h*q2^2)/(sp*(q2 + sp)) + 
         (4*h*q2*t1)/(sp*(q2 + sp)) + (4*h*q2*u1)/(sp*(q2 + sp)) - 
         (h*q2^2*\[Epsilon])/(sp*(q2 + sp)) + (h*q2*u1*\[Epsilon])/
          (sp*(q2 + sp)), 0}, {(-8*h*q2)/sp + (2*h*q2*\[Epsilon])/sp, 
        (4*h*q2)/(sp*(q2 + sp)) + (2*h*q2*\[Epsilon])/(sp*(q2 + sp)), 0}, 
       {0, 0, 0}}, {{(16*h*m2*q2)/(sp*u1) + (4*h*q2*t1)/(sp*u1) + 
         (h*q2*\[Epsilon])/sp - (h*q2^2*\[Epsilon])/(sp*u1), 
        (2*h)/sp + (2*h*q2)/(sp*(q2 + sp)) - (2*h*q2)/(sp*u1) - 
         (2*h*q2^2)/(sp*(q2 + sp)*u1) + (h*q2*\[Epsilon])/(sp*(q2 + sp)) - 
         (h*q2^2*\[Epsilon])/(sp*(q2 + sp)*u1), 0}, {(4*h*q2)/(sp*u1), 0, 0}, 
       {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}}
 
AG3List = {{1, 1, 1, 1}, {1, -1, 1, 1}, {1, 1, 1, -1}, {1, -1, 1, -1}, {0, 1, 
     1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 1, 1, 0}, {0, -1, 
     1, 1}, {0, 1, 1, -1}, {1, -1, 0, 1}, {1, -1, 1, 0}, {1, 0, -1, 1}, {1, 
     0, 1, -1}, {1, 1, 0, -1}, {0, 0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 
     0, 0, 1}, {1, 0, 1, 0}, {1, 1, 0, 0}, {-1, 0, 1, 0}, {-1, 1, 0, 0}, {0, 
     -1, 0, 1}, {0, -1, 1, 0}, {0, 0, -1, 1}, {0, 0, 1, -1}, {0, 1, 0, -1}, 
     {1, -1, 0, 0}, {1, 0, -1, 0}, {1, 0, 0, -1}, {0, 0, 0, 1}, {0, 0, 1, 0}, 
     {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 0}}
 
AL3List = {{1, 1, 1, 1}, {-1, 1, 1, 1}, {-2, 1, 1, 1}, {-1, -1, 1, 1}, {0, 1, 
     1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 0, 1, 1}, {-1, 1, 
     0, 1}, {-1, 1, 1, 0}, {0, -1, 1, 1}, {-2, 0, 1, 1}, {-2, 1, 0, 1}, {0, 
     0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 0, 0, 1}, {1, 0, 1, 0}, {-1, 
     0, 0, 1}, {-1, 0, 1, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}
 
AP3List = {{1, 1, 1, 1}, {-1, 1, 1, 1}, {1, -1, 1, 1}, {1, 1, 1, -1}, {1, -1, 
     1, -1}, {0, 1, 1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 0, 
     1, 1}, {-1, 1, 0, 1}, {-1, 1, 1, 0}, {0, -1, 1, 1}, {0, 1, 1, -1}, {1, 
     -1, 0, 1}, {1, -1, 1, 0}, {1, 0, -1, 1}, {1, 0, 1, -1}, {1, 1, 0, -1}, 
     {0, 0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 0, 0, 1}, {1, 0, 1, 0}, 
     {1, 1, 0, 0}, {-1, 0, 0, 1}, {-1, 0, 1, 0}, {-1, 1, 0, 0}, {0, -1, 1, 
     0}, {0, 0, 1, -1}, {0, 1, 0, -1}, {1, -1, 0, 0}, {1, 0, -1, 0}, {1, 0, 
     0, -1}, {0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 
     0, 0}}
BGQED = (-16*m2^2*(t1 + u1)^2 + (-2 + Dim)*t1*u1*(4*q2^2 + 4*sp^2 - 2*t1^2 + 
        Dim*t1^2 - 8*t1*u1 + 2*Dim*t1*u1 - 2*u1^2 + Dim*u1^2 + 
        4*sp*(t1 + u1) + 4*q2*(2*sp + t1 + u1)) - 
      4*m2*((-2 + Dim)*(t1 + u1)^3 + q2*((-2 + Dim)*t1^2 + 
          2*(-4 + Dim)*t1*u1 + (-2 + Dim)*u1^2) + 
        sp*((-2 + Dim)*t1^2 + 2*(-4 + Dim)*t1*u1 + (-2 + Dim)*u1^2)))/
     (4*t1^2*u1^2)
 
Dim /: Dim::usage = "Dim is the default dimension of Lorentz vectors"
 
BLQED = (-4*q2*((q2 + sp)*t1*u1 - m2*(t1 + u1)^2))/(sp^2*t1*u1)
 
BPQED = (-2*m2*sp*(t1^3 + t1^2*u1 + t1*u1^2 + u1^3) + 
      t1*u1*(sp^2*(t1 + u1) + (t1 - u1)^2*(t1 + u1) + sp*(t1^2 + u1^2) + 
        q2*(-(t1 - u1)^2 + sp*(t1 + u1))))/(sp*t1^2*u1^2)
 
CoeffAG1 = {{4*m2*t1^2 + 2*q2*t1^2 + q2*t1^2*\[Epsilon], 
      (8*m2*sp*t1)/u1 + (4*q2*sp*t1)/u1 + (8*m2*t1^2)/u1 + (4*q2*t1^2)/u1 + 
       (2*q2*sp*t1*\[Epsilon])/u1 + (2*q2*t1^2*\[Epsilon])/u1, 
      (4*m2*sp^2)/u1^2 + (2*q2*sp^2)/u1^2 + (8*m2*sp*t1)/u1^2 + 
       (4*q2*sp*t1)/u1^2 + (4*m2*t1^2)/u1^2 + (2*q2*t1^2)/u1^2 + 
       (q2*sp^2*\[Epsilon])/u1^2 + (2*q2*sp*t1*\[Epsilon])/u1^2 + 
       (q2*t1^2*\[Epsilon])/u1^2, 0}, {4*m2^2 + 2*m2*q2 + 4*m2*t1 + 2*q2*t1 + 
       m2*q2*\[Epsilon] + q2*t1*\[Epsilon], 4*m2 + 2*q2 - 2*sp - 2*t1 + 
       (8*m2^2)/u1 - (2*q2^2)/u1 + (4*m2*sp)/u1 + (2*q2*sp)/u1 - 
       (2*sp^2)/u1 + (8*m2*t1)/u1 + (4*q2*t1)/u1 - (4*sp*t1)/u1 - 
       (4*t1^2)/u1 - u1 + q2*\[Epsilon] - sp*\[Epsilon] + 
       (2*m2*q2*\[Epsilon])/u1 - (q2^2*\[Epsilon])/u1 + 
       (q2*sp*\[Epsilon])/u1 - (sp^2*\[Epsilon])/u1 + 
       (2*q2*t1*\[Epsilon])/u1 - u1*\[Epsilon] - (u1*\[Epsilon]^2)/4, 
      (4*m2^2)/u1^2 + (2*m2*q2)/u1^2 + (4*m2*sp)/u1^2 + (2*q2*sp)/u1^2 + 
       (4*m2*t1)/u1^2 + (2*q2*t1)/u1^2 + (4*m2)/u1 + (2*q2)/u1 + (2*t1)/u1 - 
       \[Epsilon] + (m2*q2*\[Epsilon])/u1^2 + (q2*sp*\[Epsilon])/u1^2 + 
       (q2*t1*\[Epsilon])/u1^2 + (q2*\[Epsilon])/u1 - (sp*\[Epsilon])/u1 - 
       \[Epsilon]^2/2, -u1^(-1) - \[Epsilon]/u1 - \[Epsilon]^2/(4*u1)}, 
     {2*m2 + q2 + m2*\[Epsilon] + q2*\[Epsilon] + (q2*\[Epsilon]^2)/4, 
      (-2*q2)/u1 - (2*sp)/u1 - (4*t1)/u1 + \[Epsilon] + 
       (2*m2*\[Epsilon])/u1 - (q2*\[Epsilon])/u1 + (q2*\[Epsilon]^2)/(2*u1), 
      (2*m2)/u1^2 + q2/u1^2 + 2/u1 + (m2*\[Epsilon])/u1^2 + 
       (q2*\[Epsilon])/u1^2 + \[Epsilon]/u1 + (q2*\[Epsilon]^2)/(4*u1^2), 0}, 
     {0, -2/u1 - \[Epsilon]/u1, 0, 0}}
 
CoeffAL1 = {{(4*q2*t1^3)/sp + (4*q2*t1^4)/sp^2, (8*q2*t1^2)/u1 + 
       (16*q2*t1^3)/(sp*u1) + (8*q2*t1^4)/(sp^2*u1), 
      (4*q2*sp*t1)/u1^2 + (12*q2*t1^2)/u1^2 + (12*q2*t1^3)/(sp*u1^2) + 
       (4*q2*t1^4)/(sp^2*u1^2)}, {(4*m2*q2*t1)/sp + (4*m2*q2*t1^2)/sp^2 + 
       (8*q2*t1^2)/sp + (12*q2*t1^3)/sp^2, (2*q2*t1)/sp + (8*q2*t1)/u1 + 
       (8*m2*q2*t1)/(sp*u1) - (4*q2^2*t1)/(sp*u1) + 
       (8*m2*q2*t1^2)/(sp^2*u1) - (4*q2^2*t1^2)/(sp^2*u1) + 
       (24*q2*t1^2)/(sp*u1) + (16*q2*t1^3)/(sp^2*u1), 
      (4*q2*t1)/u1^2 + (4*m2*q2*t1)/(sp*u1^2) + (4*m2*q2*t1^2)/(sp^2*u1^2) + 
       (8*q2*t1^2)/(sp*u1^2) + (4*q2*t1^3)/(sp^2*u1^2) - (2*q2)/u1 - 
       (2*q2*t1)/(sp*u1)}, {(4*m2*q2)/sp + (8*m2*q2*t1)/sp^2 + (6*q2*t1)/sp + 
       (14*q2*t1^2)/sp^2 + (q2*t1*\[Epsilon])/sp + (q2*t1^2*\[Epsilon])/sp^2, 
      (2*q2)/u1 + (4*m2*q2)/(sp*u1) - (2*q2^2)/(sp*u1) + 
       (8*m2*q2*t1)/(sp^2*u1) - (4*q2^2*t1)/(sp^2*u1) + (12*q2*t1)/(sp*u1) + 
       (12*q2*t1^2)/(sp^2*u1) - (q2*\[Epsilon])/sp + (2*q2*t1*\[Epsilon])/
        (sp*u1) + (2*q2*t1^2*\[Epsilon])/(sp^2*u1), (2*q2*t1)/(sp*u1^2) + 
       (2*q2*t1^2)/(sp^2*u1^2) - (2*q2)/(sp*u1) + (q2*t1*\[Epsilon])/
        (sp*u1^2) + (q2*t1^2*\[Epsilon])/(sp^2*u1^2) - 
       (q2*\[Epsilon])/(sp*u1)}, {(4*m2*q2)/sp^2 + (2*q2)/sp + 
       (8*q2*t1)/sp^2 + (q2*\[Epsilon])/sp + (2*q2*t1*\[Epsilon])/sp^2, 
      (-2*q2^2)/(sp^2*u1) + (2*q2)/(sp*u1) + (4*q2*t1)/(sp^2*u1) - 
       (q2^2*\[Epsilon])/(sp^2*u1) + (q2*\[Epsilon])/(sp*u1) + 
       (2*q2*t1*\[Epsilon])/(sp^2*u1), 0}, 
     {(2*q2)/sp^2 + (q2*\[Epsilon])/sp^2, 0, 0}}
 
CoeffAP1k0 = {{0, 0, 0, 0}, {-4*h*m2*sp - 2*h*q2*t1 - (4*h*q2*t1^2)/sp - 
       2*h*m2*u1, -2*h*m2 + 2*h*q2 - 2*h*sp - 2*h*t1 + (2*h*q2*t1)/sp + 
       (2*h*q2*sp)/u1 - h*u1, (-4*h*m2*sp)/u1^2 - (2*h*q2*sp)/u1^2 - 
       (6*h*q2*t1)/u1^2 - (4*h*q2*t1^2)/(sp*u1^2) - (2*h*m2)/u1 + 
       (2*h*t1)/u1 - (2*h*q2*t1)/(sp*u1), (-2*h*m2)/u1^2 - h/u1}, 
     {-(h*q2) - (4*h*m2*q2)/sp - (6*h*q2*t1)/sp, (2*h*q2^2)/(sp*u1) + 
       (2*h*sp)/u1, -((h*q2)/u1^2) - (4*h*m2*q2)/(sp*u1^2) - 
       (2*h*q2*t1)/(sp*u1^2) + (2*h)/u1 - (2*h*q2)/(sp*u1), 0}, 
     {(-2*h*q2)/sp, (2*h*q2)/(sp*u1), 0, 0}}
 
CoeffAP1k2 = {{4*h*m2*sp + 2*h*q2*t1 + (4*h*q2*t1^2)/sp - 2*h*t1*u1, 
      (-2*h*q2*sp)/u1, (4*h*m2*sp)/u1^2 + (2*h*q2*sp)/u1^2 + 
       (6*h*q2*t1)/u1^2 + (4*h*q2*t1^2)/(sp*u1^2) - (2*h*t1)/u1, 0}}
 
AG1List = {{2, 2}, {2, 1}, {2, 0}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, 
     {0, 1}, {0, 0}, {-1, 1}}
 
AL1List = {{2, 2}, {2, 1}, {2, 0}, {1, 2}, {1, 1}, {1, 0}, {0, 2}, {0, 1}, 
     {0, 0}, {-1, 2}, {-1, 1}, {-2, 2}}
 
AP1k0List = {{1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, {0, 1}, {0, 0}, {-1, 
     2}, {-1, 1}}
 
AP1k2List = {{2, 2}, {2, 1}, {2, 0}}
 
CoeffAG2 = {{2*q2*t1^2 + q2*t1^2*\[Epsilon], -2*m2*q2 - 2*q2^2 + 2*m2*sp + 
       (2*q2^3)/(q2 + sp) - (4*m2*q2*sp)/(q2 + sp) + (2*q2^2*sp)/(q2 + sp) - 
       (4*m2*sp^2)/(q2 + sp) + 4*q2*t1 - (8*q2^2*t1)/(q2 + sp) - 
       (4*q2*sp*t1)/(q2 + sp) - 4*t1^2 + (8*q2*t1^2)/(q2 + sp) + 
       (4*sp*t1^2)/(q2 + sp) + 4*q2*u1 - (4*q2^2*u1)/(q2 + sp) - 
       (4*q2*sp*u1)/(q2 + sp) - 4*t1*u1 + (8*q2*t1*u1)/(q2 + sp) + 
       (4*sp*t1*u1)/(q2 + sp) - 2*u1^2 + (2*q2*u1^2)/(q2 + sp) + 
       (2*sp*u1^2)/(q2 + sp) + m2*q2*\[Epsilon] - q2^2*\[Epsilon] - 
       m2*sp*\[Epsilon] - (2*m2*q2^2*\[Epsilon])/(q2 + sp) + 
       (q2^3*\[Epsilon])/(q2 + sp) - (2*m2*q2*sp*\[Epsilon])/(q2 + sp) + 
       (q2^2*sp*\[Epsilon])/(q2 + sp) - (2*q2^2*t1*\[Epsilon])/(q2 + sp) + 
       (2*q2*t1^2*\[Epsilon])/(q2 + sp) + 2*q2*u1*\[Epsilon] - 
       (2*q2^2*u1*\[Epsilon])/(q2 + sp) - (2*q2*sp*u1*\[Epsilon])/(q2 + sp) + 
       (2*q2*t1*u1*\[Epsilon])/(q2 + sp) - u1^2*\[Epsilon] + 
       (q2*u1^2*\[Epsilon])/(q2 + sp) + (sp*u1^2*\[Epsilon])/(q2 + sp), 
      4*m2 - (2*m2*q2^2)/(q2 + sp)^2 + (2*q2^3)/(q2 + sp)^2 - 
       (2*m2*q2*sp)/(q2 + sp)^2 - (2*m2*q2)/(q2 + sp) - (4*m2*sp)/(q2 + sp) - 
       (4*q2^2*t1)/(q2 + sp)^2 + (2*q2*t1^2)/(q2 + sp)^2 - 
       (4*q2^2*u1)/(q2 + sp)^2 + (4*q2*t1*u1)/(q2 + sp)^2 + 
       (2*q2*u1^2)/(q2 + sp)^2 - 2*m2*\[Epsilon] - (m2*q2^2*\[Epsilon])/
        (q2 + sp)^2 + (q2^3*\[Epsilon])/(q2 + sp)^2 - (m2*q2*sp*\[Epsilon])/
        (q2 + sp)^2 + (m2*q2*\[Epsilon])/(q2 + sp) - (2*q2^2*t1*\[Epsilon])/
        (q2 + sp)^2 + (q2*t1^2*\[Epsilon])/(q2 + sp)^2 - 
       (2*q2^2*u1*\[Epsilon])/(q2 + sp)^2 + (2*q2*t1*u1*\[Epsilon])/
        (q2 + sp)^2 + (q2*u1^2*\[Epsilon])/(q2 + sp)^2, 
      (-2*m2)/(q2 + sp) - (m2*\[Epsilon])/(q2 + sp)}, 
     {2*m2*q2 + 2*q2*t1 + m2*q2*\[Epsilon] + q2*t1*\[Epsilon], 
      -4*m2 + 3*q2 + sp + (4*m2*q2)/(q2 + sp) - (6*q2^2)/(q2 + sp) + 
       (8*m2*sp)/(q2 + sp) - (2*q2*sp)/(q2 + sp) - (2*sp^2)/(q2 + sp) - 
       6*t1 + (12*q2*t1)/(q2 + sp) + (4*sp*t1)/(q2 + sp) - 
       (4*t1^2)/(q2 + sp) - 4*u1 + (8*q2*u1)/(q2 + sp) + 
       (2*sp*u1)/(q2 + sp) - (4*t1*u1)/(q2 + sp) - (2*u1^2)/(q2 + sp) + 
       q2*\[Epsilon] + (2*m2*q2*\[Epsilon])/(q2 + sp) - 
       (3*q2^2*\[Epsilon])/(q2 + sp) - (q2*sp*\[Epsilon])/(q2 + sp) - 
       (sp^2*\[Epsilon])/(q2 + sp) + (2*q2*t1*\[Epsilon])/(q2 + sp) - 
       u1*\[Epsilon] + (3*q2*u1*\[Epsilon])/(q2 + sp) - 
       (u1^2*\[Epsilon])/(q2 + sp) + (q2*\[Epsilon]^2)/4 - 
       (sp*\[Epsilon]^2)/4 - (q2^2*\[Epsilon]^2)/(2*(q2 + sp)) - 
       (q2*sp*\[Epsilon]^2)/(2*(q2 + sp)), 2 + (2*m2*q2)/(q2 + sp)^2 - 
       (3*q2^2)/(q2 + sp)^2 - (q2*sp)/(q2 + sp)^2 + (4*m2)/(q2 + sp) + 
       q2/(q2 + sp) - (2*sp)/(q2 + sp) + (2*q2*t1)/(q2 + sp)^2 + 
       (2*t1)/(q2 + sp) + (2*q2*u1)/(q2 + sp)^2 + (m2*q2*\[Epsilon])/
        (q2 + sp)^2 - (2*q2^2*\[Epsilon])/(q2 + sp)^2 - 
       (q2*sp*\[Epsilon])/(q2 + sp)^2 + (2*q2*\[Epsilon])/(q2 + sp) - 
       (sp*\[Epsilon])/(q2 + sp) + (q2*t1*\[Epsilon])/(q2 + sp)^2 + 
       (q2*u1*\[Epsilon])/(q2 + sp)^2 - (u1*\[Epsilon])/(q2 + sp) - 
       \[Epsilon]^2/2 - (q2^2*\[Epsilon]^2)/(4*(q2 + sp)^2) - 
       (q2*sp*\[Epsilon]^2)/(4*(q2 + sp)^2) + (q2*\[Epsilon]^2)/
        (4*(q2 + sp)), -(q2 + sp)^(-1) - \[Epsilon]/(q2 + sp) - 
       \[Epsilon]^2/(4*(q2 + sp))}, {q2 + q2*\[Epsilon] + 
       (q2*\[Epsilon]^2)/4, -4 - (4*m2)/(q2 + sp) + (4*q2)/(q2 + sp) + 
       (4*sp)/(q2 + sp) - (4*t1)/(q2 + sp) - (2*u1)/(q2 + sp) - \[Epsilon] + 
       (q2*\[Epsilon])/(q2 + sp) + (2*sp*\[Epsilon])/(q2 + sp) + 
       (q2*\[Epsilon]^2)/(2*(q2 + sp)), q2/(q2 + sp)^2 + 2/(q2 + sp) + 
       (q2*\[Epsilon])/(q2 + sp)^2 + \[Epsilon]/(q2 + sp) + 
       (q2*\[Epsilon]^2)/(4*(q2 + sp)^2), 0}, 
     {0, -2/(q2 + sp) - \[Epsilon]/(q2 + sp), 0, 0}}
 
CoeffAL2 = {{0, 0, (-4*m2*q2)/sp, (-4*m2*q2)/sp^2}, 
     {(-4*q2*t1^2)/sp, (8*m2*q2)/sp + (4*q2*t1)/sp - (4*q2*t1^2)/sp^2, 
      (12*m2*q2)/sp^2 - (2*q2)/sp + (4*q2*t1)/sp^2 - (q2*\[Epsilon])/sp, 
      (-2*q2)/sp^2 - (q2*\[Epsilon])/sp^2}, 
     {(-4*m2*q2)/sp - (4*q2*t1)/sp + (4*q2*t1^2)/sp^2, 
      (-12*m2*q2)/sp^2 + (4*q2)/sp - (8*q2*t1)/sp^2 + (2*q2*\[Epsilon])/sp, 
      (6*q2)/sp^2 + (3*q2*\[Epsilon])/sp^2, 0}, 
     {(4*m2*q2)/sp^2 - (2*q2)/sp + (4*q2*t1)/sp^2 - (q2*\[Epsilon])/sp, 
      (-6*q2)/sp^2 - (3*q2*\[Epsilon])/sp^2, 0, 0}, 
     {(2*q2)/sp^2 + (q2*\[Epsilon])/sp^2, 0, 0, 0}}
 
CoeffAP2 = {{2*h*q2*t1^2, -2*h*m2*q2 - h*q2^2 - 2*h*m2*sp + h*q2*sp + 
       (h*q2^3)/(q2 + sp) - (h*q2*sp^2)/(q2 + sp) - (2*h*q2^2*t1)/sp - 
       (2*h*q2^2*t1)/(q2 + sp) + (2*h*q2^3*t1)/(sp*(q2 + sp)) + 
       (2*h*q2*t1^2)/sp + (2*h*q2*t1^2)/(q2 + sp) - (2*h*q2^2*t1^2)/
        (sp*(q2 + sp)) + 3*h*q2*u1 - h*sp*u1 - (3*h*q2^2*u1)/(q2 + sp) - 
       (2*h*q2*sp*u1)/(q2 + sp) + (h*sp^2*u1)/(q2 + sp) - 2*h*t1*u1 + 
       (6*h*q2*t1*u1)/(q2 + sp) + (2*h*sp*t1*u1)/(q2 + sp) - 2*h*u1^2 + 
       (2*h*q2*u1^2)/(q2 + sp) + (2*h*sp*u1^2)/(q2 + sp), 
      -4*h*m2 + 2*h*q2 - (4*h*m2*q2)/sp + (h*q2^2)/sp - 
       (2*h*m2*q2^2)/(q2 + sp)^2 + (2*h*q2^3)/(q2 + sp)^2 - 
       (2*h*m2*q2*sp)/(q2 + sp)^2 + (6*h*m2*q2)/(q2 + sp) - 
       (3*h*q2^2)/(q2 + sp) - (h*q2^3)/(sp*(q2 + sp)) + 
       (4*h*m2*sp)/(q2 + sp) - (2*h*q2*sp)/(q2 + sp) - h*t1 - 
       (2*h*q2*t1)/sp - (4*h*q2^2*t1)/(q2 + sp)^2 + (3*h*q2*t1)/(q2 + sp) + 
       (2*h*q2^2*t1)/(sp*(q2 + sp)) + (h*sp*t1)/(q2 + sp) + (2*h*t1^2)/sp + 
       (2*h*q2*t1^2)/(q2 + sp)^2 - (2*h*t1^2)/(q2 + sp) - 
       (2*h*q2*t1^2)/(sp*(q2 + sp)) - 2*h*u1 - (h*q2*u1)/sp - 
       (4*h*q2^2*u1)/(q2 + sp)^2 + (3*h*q2*u1)/(q2 + sp) + 
       (h*q2^2*u1)/(sp*(q2 + sp)) + (2*h*sp*u1)/(q2 + sp) + (2*h*t1*u1)/sp + 
       (4*h*q2*t1*u1)/(q2 + sp)^2 - (2*h*t1*u1)/(q2 + sp) - 
       (2*h*q2*t1*u1)/(sp*(q2 + sp)) + (2*h*q2*u1^2)/(q2 + sp)^2, 
      (h*q2)/sp + (2*h*m2)/(q2 + sp) - (h*q2)/(q2 + sp) + 
       (4*h*m2*q2)/(sp*(q2 + sp)) - (h*q2^2)/(sp*(q2 + sp)) - (h*t1)/sp + 
       (h*t1)/(q2 + sp) + (h*q2*t1)/(sp*(q2 + sp)) - (h*u1)/sp + 
       (h*u1)/(q2 + sp) + (h*q2*u1)/(sp*(q2 + sp))}, 
     {2*h*m2*q2 + 2*h*q2*t1 - (4*h*q2*t1^2)/sp, 4*h*m2 - h*q2 + 
       (8*h*m2*q2)/sp - (h*q2^2)/sp - h*sp - (4*h*m2*q2)/(q2 + sp) - 
       (h*q2^2)/(q2 + sp) + (h*q2^3)/(sp*(q2 + sp)) + (4*h*q2*sp)/(q2 + sp) - 
       2*h*t1 + (8*h*q2*t1)/sp + (4*h*q2*t1)/(q2 + sp) - 
       (4*h*q2^2*t1)/(sp*(q2 + sp)) + (4*h*q2*t1^2)/(sp*(q2 + sp)) - 2*h*u1 + 
       (h*q2*u1)/sp + (5*h*q2*u1)/(q2 + sp) - (h*q2^2*u1)/(sp*(q2 + sp)) - 
       (2*h*t1*u1)/sp - (2*h*t1*u1)/(q2 + sp) + (2*h*q2*t1*u1)/
        (sp*(q2 + sp)) - (2*h*u1^2)/(q2 + sp) + (3*h*q2*\[Epsilon])/2 + 
       (h*sp*\[Epsilon])/2 - (h*q2^2*\[Epsilon])/(q2 + sp) - 
       (h*q2*sp*\[Epsilon])/(q2 + sp), -2*h - (6*h*q2)/sp + 
       (2*h*m2*q2)/(q2 + sp)^2 - (3*h*q2^2)/(q2 + sp)^2 - 
       (h*q2*sp)/(q2 + sp)^2 - (4*h*m2)/(q2 + sp) + (9*h*q2)/(q2 + sp) - 
       (8*h*m2*q2)/(sp*(q2 + sp)) + (4*h*q2^2)/(sp*(q2 + sp)) + 
       (2*h*sp)/(q2 + sp) + (h*t1)/sp + (2*h*q2*t1)/(q2 + sp)^2 - 
       (3*h*t1)/(q2 + sp) - (5*h*q2*t1)/(sp*(q2 + sp)) + (2*h*u1)/sp + 
       (2*h*q2*u1)/(q2 + sp)^2 - (2*h*u1)/(q2 + sp) - 
       (2*h*q2*u1)/(sp*(q2 + sp)) + (h*q2*\[Epsilon])/sp - 
       (h*q2^2*\[Epsilon])/(2*(q2 + sp)^2) - (h*q2*sp*\[Epsilon])/
        (2*(q2 + sp)^2) + (3*h*q2*\[Epsilon])/(2*(q2 + sp)) + 
       (h*sp*\[Epsilon])/(q2 + sp), h/(q2 + sp) + (2*h*q2)/(sp*(q2 + sp)) + 
       (h*\[Epsilon])/(2*(q2 + sp)) + (h*q2*\[Epsilon])/(sp*(q2 + sp))}, 
     {h*q2 - (4*h*m2*q2)/sp - (4*h*q2*t1)/sp - (h*q2*\[Epsilon])/2, 
      (7*h*q2)/sp - (3*h*q2)/(q2 + sp) + (4*h*m2*q2)/(sp*(q2 + sp)) - 
       (3*h*q2^2)/(sp*(q2 + sp)) + (4*h*q2*t1)/(sp*(q2 + sp)) - (h*u1)/sp - 
       (h*u1)/(q2 + sp) + (h*q2*u1)/(sp*(q2 + sp)) - h*\[Epsilon] - 
       (2*h*q2*\[Epsilon])/sp, (h*q2)/(q2 + sp)^2 - (2*h)/(q2 + sp) - 
       (4*h*q2)/(sp*(q2 + sp)) + (h*q2*\[Epsilon])/(2*(q2 + sp)^2) - 
       (h*\[Epsilon])/(q2 + sp) - (2*h*q2*\[Epsilon])/(sp*(q2 + sp)), 0}, 
     {(-2*h*q2)/sp + (h*q2*\[Epsilon])/sp, (2*h*q2)/(sp*(q2 + sp)) + 
       (h*q2*\[Epsilon])/(sp*(q2 + sp)), 0, 0}}
 
AG2List = {{2, 2}, {2, 1}, {2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, 
     {0, 2}, {0, 1}, {0, 0}, {-1, 1}}
 
AL2List = {{2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, {0, 1}, 
     {0, 0}, {-1, 2}, {-1, 1}, {-2, 2}}
 
AP2List = {{2, 2}, {2, 1}, {2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, 
     {0, 2}, {0, 1}, {0, 0}, {-1, 2}, {-1, 1}}
 
CoeffAG3 = {{{{-2*m2*q2*sp + q2^2*sp + 2*m2*sp^2 + 2*m2*q2*t1 + 3*q2^2*t1 + 
         2*m2*sp*t1 - 5*q2*sp*t1 + 3*sp^2*t1 - 5*q2*t1^2 + 7*sp*t1^2 + 
         4*t1^3 + 2*m2*sp*u1 - q2*sp*u1 - 5*q2*t1*u1 + 6*sp*t1*u1 + 
         7*t1^2*u1 + 3*t1*u1^2 + (q2^2*sp*\[Epsilon])/2 + 
         (q2*sp^2*\[Epsilon])/4 + q2^2*t1*\[Epsilon] - (q2*sp*u1*\[Epsilon])/
          4 - (sp^2*u1*\[Epsilon])/4 - (q2*t1*u1*\[Epsilon])/4 - 
         (sp*t1*u1*\[Epsilon])/4 - (sp*u1^2*\[Epsilon])/4, 
        2*m2*q2 + q2^2 + 2*m2*sp - 2*q2*sp - (2*m2*q2^2)/(q2 + sp) - 
         q2^3/(q2 + sp) + (q2^2*sp)/(q2 + sp) - 4*m2*t1 - 8*q2*t1 + 4*sp*t1 + 
         (4*q2^2*t1)/(q2 + sp) - (2*q2*sp*t1)/(q2 + sp) + 6*t1^2 - 
         (6*q2*t1^2)/(q2 + sp) + (2*sp*t1^2)/(q2 + sp) + (4*t1^3)/(q2 + sp) - 
         2*m2*u1 - 2*q2*u1 + 2*sp*u1 + (2*m2*q2*u1)/(q2 + sp) + 
         (2*q2^2*u1)/(q2 + sp) - (q2*sp*u1)/(q2 + sp) + 7*t1*u1 - 
         (4*q2*t1*u1)/(q2 + sp) + (sp*t1*u1)/(q2 + sp) + 
         (5*t1^2*u1)/(q2 + sp) + u1^2 - (q2*u1^2)/(q2 + sp) + 
         (t1*u1^2)/(q2 + sp) + (q2^2*\[Epsilon])/2 - (q2*sp*\[Epsilon])/2 - 
         (q2^3*\[Epsilon])/(2*(q2 + sp)) + (q2^2*sp*\[Epsilon])/
          (4*(q2 + sp)) - 2*q2*t1*\[Epsilon] + (q2^2*t1*\[Epsilon])/
          (q2 + sp) - (3*q2*u1*\[Epsilon])/4 + (sp*u1*\[Epsilon])/2 + 
         (3*q2^2*u1*\[Epsilon])/(4*(q2 + sp)) - (q2*sp*u1*\[Epsilon])/
          (4*(q2 + sp)) + (t1*u1*\[Epsilon])/2 + (u1^2*\[Epsilon])/4 - 
         (q2*u1^2*\[Epsilon])/(4*(q2 + sp)), t1 + (2*m2*t1)/(q2 + sp) - 
         (q2*t1)/(q2 + sp) + t1^2/(q2 + sp) + (q2*\[Epsilon])/4 - 
         (q2^2*\[Epsilon])/(4*(q2 + sp)) - (u1*\[Epsilon])/4 + 
         (q2*u1*\[Epsilon])/(4*(q2 + sp)) - (t1*u1*\[Epsilon])/
          (4*(q2 + sp))}, {-2*q2*sp + sp^2 - 2*q2*t1 + 3*sp*t1 + 2*t1^2 + 
         sp*u1 + 2*t1*u1 - (5*q2*sp*\[Epsilon])/4 + (sp^2*\[Epsilon])/2 - 
         (q2*t1*\[Epsilon])/2 + (sp*t1*\[Epsilon])/2 + (sp*u1*\[Epsilon])/2, 
        -2*m2 - q2 + 3*sp + (2*m2*q2)/(q2 + sp) + q2^2/(q2 + sp) - 
         (q2*sp)/(q2 + sp) + 5*t1 - (2*q2*t1)/(q2 + sp) + 
         (2*t1^2)/(q2 + sp) + u1 - (q2*u1)/(q2 + sp) - (3*q2*\[Epsilon])/4 + 
         (3*sp*\[Epsilon])/2 + (3*q2^2*\[Epsilon])/(4*(q2 + sp)) - 
         (q2*sp*\[Epsilon])/(2*(q2 + sp)) + t1*\[Epsilon] - 
         (q2*t1*\[Epsilon])/(q2 + sp) + (u1*\[Epsilon])/2 - 
         (q2*u1*\[Epsilon])/(2*(q2 + sp)), (t1*\[Epsilon])/(2*(q2 + sp))}, 
       {0, 0, 0}}, {{2*m2*sp - 3*q2*sp + sp^2 - 6*q2*t1 + 8*sp*t1 + 8*t1^2 + 
         (2*m2*q2*sp)/u1 + (q2^2*sp)/u1 - (q2*sp^2)/u1 + (2*m2*q2*t1)/u1 + 
         (2*q2^2*t1)/u1 + (2*m2*sp*t1)/u1 - (3*q2*sp*t1)/u1 + (sp^2*t1)/u1 - 
         (3*q2*t1^2)/u1 + (5*sp*t1^2)/u1 + (4*t1^3)/u1 + 2*sp*u1 + 4*t1*u1 - 
         q2*sp*\[Epsilon] + (sp^2*\[Epsilon])/4 - (3*q2*t1*\[Epsilon])/2 + 
         (sp*t1*\[Epsilon])/2 + (q2^2*sp*\[Epsilon])/(2*u1) - 
         (q2*sp^2*\[Epsilon])/(4*u1) + (q2^2*t1*\[Epsilon])/u1 + 
         (sp*u1*\[Epsilon])/2, -2*m2 - 4*q2 + 3*sp + (2*m2*q2)/(q2 + sp) + 
         (4*q2^2)/(q2 + sp) - (2*q2*sp)/(q2 + sp) + 9*t1 - 
         (7*q2*t1)/(q2 + sp) + (sp*t1)/(q2 + sp) + (4*t1^2)/(q2 + sp) - 
         (2*m2*q2)/u1 + q2^2/u1 - (6*m2*sp)/u1 - (3*q2*sp)/u1 + 
         (2*m2*q2^2)/((q2 + sp)*u1) - q2^3/((q2 + sp)*u1) + 
         (2*m2*q2*sp)/((q2 + sp)*u1) + (2*q2^2*sp)/((q2 + sp)*u1) - 
         (4*m2*t1)/u1 - (5*q2*t1)/u1 + (4*q2^2*t1)/((q2 + sp)*u1) - 
         (3*q2*sp*t1)/((q2 + sp)*u1) + (2*t1^2)/u1 - 
         (6*q2*t1^2)/((q2 + sp)*u1) + (2*sp*t1^2)/((q2 + sp)*u1) + 
         (4*t1^3)/((q2 + sp)*u1) + 3*u1 - (3*q2*u1)/(q2 + sp) - 
         2*q2*\[Epsilon] + (3*sp*\[Epsilon])/2 + (2*q2^2*\[Epsilon])/
          (q2 + sp) - (3*q2*sp*\[Epsilon])/(4*(q2 + sp)) + 3*t1*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/(q2 + sp) + (q2^2*\[Epsilon])/(2*u1) - 
         (3*q2*sp*\[Epsilon])/(2*u1) - (q2^3*\[Epsilon])/(2*(q2 + sp)*u1) + 
         (3*q2^2*sp*\[Epsilon])/(4*(q2 + sp)*u1) - (2*q2*t1*\[Epsilon])/u1 + 
         (q2^2*t1*\[Epsilon])/((q2 + sp)*u1) + (3*u1*\[Epsilon])/2 - 
         (3*q2*u1*\[Epsilon])/(2*(q2 + sp)), (2*m2)/u1 - 
         (2*m2*q2)/((q2 + sp)*u1) - t1/u1 + (2*m2*t1)/((q2 + sp)*u1) + 
         (q2*t1)/((q2 + sp)*u1) - t1^2/((q2 + sp)*u1) + \[Epsilon]/4 - 
         (q2*\[Epsilon])/(4*(q2 + sp)) + (t1*\[Epsilon])/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*u1) + (q2^2*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {4*sp + 5*t1 + (2*m2*sp)/u1 - (q2*sp)/u1 + sp^2/u1 - (3*q2*t1)/u1 + 
         (7*sp*t1)/u1 + (6*t1^2)/u1 + (3*sp*\[Epsilon])/4 + 
         (q2*sp*\[Epsilon])/(4*u1) - (q2*t1*\[Epsilon])/(2*u1) + 
         (sp*t1*\[Epsilon])/(2*u1), 2 - (2*q2)/(q2 + sp) - t1/(q2 + sp) - 
         (2*q2)/u1 - sp/u1 + (2*q2^2)/((q2 + sp)*u1) + (3*t1)/u1 - 
         (3*q2*t1)/((q2 + sp)*u1) + (2*t1^2)/((q2 + sp)*u1) + 
         (5*\[Epsilon])/4 - (5*q2*\[Epsilon])/(4*(q2 + sp)) - 
         (5*q2*\[Epsilon])/(4*u1) - (sp*\[Epsilon])/(2*u1) + 
         (5*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + (t1*\[Epsilon])/u1 - 
         (q2*t1*\[Epsilon])/((q2 + sp)*u1), \[Epsilon]/(2*u1) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/
          (2*(q2 + sp)*u1)}, {(2*sp)/u1 + (2*t1)/u1 + (sp*\[Epsilon])/(2*u1), 
        u1^(-1) - q2/((q2 + sp)*u1) + \[Epsilon]/(2*u1) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}}, 
      {{t1 - (q2*t1)/u1 + t1^2/u1 - (sp*\[Epsilon])/4 + (q2*sp*\[Epsilon])/
          (4*u1) - (q2*t1*\[Epsilon])/(4*u1) - (sp*t1*\[Epsilon])/(4*u1), 
        -(t1/(q2 + sp)) + (q2*t1)/((q2 + sp)*u1) - t1^2/((q2 + sp)*u1) + 
         \[Epsilon]/4 - (q2*\[Epsilon])/(4*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*u1) + (q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + 
         (t1*\[Epsilon])/(2*u1), -(t1*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {t1/u1 - (sp*\[Epsilon])/(4*u1), -(t1/((q2 + sp)*u1)) + 
         \[Epsilon]/(4*u1) - (q2*\[Epsilon])/(4*(q2 + sp)*u1), 0}, 
       {0, 0, 0}}}, {{{-4*m2*q2 + 2*q2^2 + 4*m2*sp - q2*sp + 4*m2*t1 - 
         3*q2*t1 + 2*sp*t1 + 2*t1^2 + 4*m2*u1 - 3*q2*u1 + sp*u1 + 3*t1*u1 + 
         u1^2 + (5*q2^2*\[Epsilon])/4 - (q2*sp*\[Epsilon])/2 - 
         q2*t1*\[Epsilon] - (7*q2*u1*\[Epsilon])/4 + (sp*u1*\[Epsilon])/2 + 
         (t1*u1*\[Epsilon])/2 + (u1^2*\[Epsilon])/2, 
        4*m2 - 3*q2 - (2*m2*q2)/(q2 + sp) + q2^2/(q2 + sp) - 
         (q2*sp)/(q2 + sp) + 3*t1 + (4*m2*t1)/(q2 + sp) - 
         (8*q2*t1)/(q2 + sp) + (2*sp*t1)/(q2 + sp) + (6*t1^2)/(q2 + sp) + 
         3*u1 - (2*q2*u1)/(q2 + sp) + (sp*u1)/(q2 + sp) + 
         (7*t1*u1)/(q2 + sp) + u1^2/(q2 + sp) - (3*q2*\[Epsilon])/4 - 
         (q2^2*\[Epsilon])/(4*(q2 + sp)) - (q2*t1*\[Epsilon])/(q2 + sp) + 
         (3*u1*\[Epsilon])/4 + (q2*u1*\[Epsilon])/(4*(q2 + sp)) + 
         (t1*u1*\[Epsilon])/(2*(q2 + sp)), (2*m2)/(q2 + sp) + t1/(q2 + sp) + 
         (q2*\[Epsilon])/(4*(q2 + sp)) - (u1*\[Epsilon])/(4*(q2 + sp))}, 
       {-4*q2 + 2*sp + 2*t1 + 2*u1 - (5*q2*\[Epsilon])/2 + sp*\[Epsilon] + 
         t1*\[Epsilon] + u1*\[Epsilon], 4 + (4*t1)/(q2 + sp) + 
         (3*\[Epsilon])/2 + (t1*\[Epsilon])/(q2 + sp), 
        \[Epsilon]/(2*(q2 + sp))}, {0, 0, 0}}, 
      {{4*m2 - 4*q2 + sp + 5*t1 + (2*m2*q2)/u1 + q2^2/u1 - (q2*sp)/u1 + 
         (4*m2*t1)/u1 - (2*q2*t1)/u1 + (2*t1^2)/u1 + 3*u1 - 
         (9*q2*\[Epsilon])/4 + (sp*\[Epsilon])/2 + t1*\[Epsilon] + 
         (3*q2^2*\[Epsilon])/(4*u1) - (q2*sp*\[Epsilon])/(2*u1) - 
         (q2*t1*\[Epsilon])/u1 + (3*u1*\[Epsilon])/2, 2 - q2/(q2 + sp) + 
         (3*t1)/(q2 + sp) - (2*m2)/u1 - (2*q2)/u1 - 
         (4*m2*q2)/((q2 + sp)*u1) + (2*q2^2)/((q2 + sp)*u1) - t1/u1 + 
         (4*m2*t1)/((q2 + sp)*u1) - (3*q2*t1)/((q2 + sp)*u1) + 
         (2*t1^2)/((q2 + sp)*u1) - u1/(q2 + sp) + (5*\[Epsilon])/4 - 
         (3*q2*\[Epsilon])/(4*(q2 + sp)) + (t1*\[Epsilon])/(q2 + sp) - 
         (5*q2*\[Epsilon])/(4*u1) + (5*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) - 
         (q2*t1*\[Epsilon])/((q2 + sp)*u1) - (u1*\[Epsilon])/(2*(q2 + sp)), 
        -(t1/((q2 + sp)*u1)) + \[Epsilon]/(4*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*(q2 + sp)*u1)}, {4 + (4*m2)/u1 + (4*t1)/u1 + 
         (3*\[Epsilon])/2 + (t1*\[Epsilon])/u1, -(q2 + sp)^(-1) - u1^(-1) - 
         (2*q2)/((q2 + sp)*u1) + (2*t1)/((q2 + sp)*u1) - 
         (3*q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/((q2 + sp)*u1), 
        0}, {2/u1 + \[Epsilon]/u1, 0, 0}}, 
      {{(t1*\[Epsilon])/(2*u1), \[Epsilon]/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/(2*(q2 + sp)*u1), 
        0}, {\[Epsilon]/(2*u1), 0, 0}, {0, 0, 0}}}, 
     {{{0, (4*m2)/(q2 + sp) - (2*q2)/(q2 + sp) + (2*t1)/(q2 + sp) + 
         (2*u1)/(q2 + sp) - (q2*\[Epsilon])/(2*(q2 + sp)) + 
         (u1*\[Epsilon])/(2*(q2 + sp)), 0}, 
       {0, 2/(q2 + sp) + \[Epsilon]/(q2 + sp), 0}, {0, 0, 0}}, 
      {{0, (q2 + sp)^(-1) - q2/((q2 + sp)*u1) + \[Epsilon]/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}}
 
CoeffAL3 = {{{{2*q2^2*t1 - 4*q2*t1^2 + (6*q2^2*t1^2)/sp + 
         (4*q2^2*t1^3)/sp^2 - (4*q2*t1^3)/sp - 2*q2*t1*u1 - 
         (4*q2*t1^2*u1)/sp, (-4*q2*t1^2)/sp - (4*q2*t1^3)/sp^2}, 
       {-2*q2*t1 - (2*q2*t1^2)/sp, 0}}, 
      {{-2*q2*sp - 6*q2*t1 - (4*q2*t1^2)/sp + (2*q2^2*sp)/u1 + 
         (8*q2^2*t1)/u1 - (4*q2*sp*t1)/u1 - (8*q2*t1^2)/u1 + 
         (10*q2^2*t1^2)/(sp*u1) + (4*q2^2*t1^3)/(sp^2*u1) - 
         (4*q2*t1^3)/(sp*u1), (-4*q2*t1)/u1 - (8*q2*t1^2)/(sp*u1) - 
         (4*q2*t1^3)/(sp^2*u1)}, {(-2*q2*sp)/u1 - (4*q2*t1)/u1 - 
         (2*q2*t1^2)/(sp*u1), 0}}, {{0, 0}, {0, 0}}}, 
     {{{-4*m2*q2 + 2*q2^2 - 6*q2*t1 - (8*m2*q2*t1)/sp + (12*q2^2*t1)/sp + 
         (10*q2^2*t1^2)/sp^2 - (16*q2*t1^2)/sp - (8*q2*t1^3)/sp^2 - 2*q2*u1 - 
         (10*q2*t1*u1)/sp - (6*q2*t1^2*u1)/sp^2 + q2^2*\[Epsilon] + 
         (2*q2^2*t1*\[Epsilon])/sp - q2*u1*\[Epsilon] - (q2*t1*u1*\[Epsilon])/
          sp, (-6*q2*t1)/sp - (10*q2*t1^2)/sp^2}, 
       {-2*q2 - (8*q2*t1)/sp - (4*q2*t1^2)/sp^2 - q2*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/sp, 0}}, 
      {{-6*q2 - (16*q2*t1)/sp - (8*q2*t1^2)/sp^2 - (4*m2*q2)/u1 + 
         (6*q2^2)/u1 - (8*q2*t1)/u1 - (8*m2*q2*t1)/(sp*u1) + 
         (16*q2^2*t1)/(sp*u1) + (10*q2^2*t1^2)/(sp^2*u1) - 
         (16*q2*t1^2)/(sp*u1) - (8*q2*t1^3)/(sp^2*u1) - q2*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/sp + (q2^2*\[Epsilon])/u1 + 
         (2*q2^2*t1*\[Epsilon])/(sp*u1), (-2*q2*t1)/(sp*u1) - 
         (2*q2*t1^2)/(sp^2*u1)}, {(-4*q2)/u1 - (8*q2*t1)/(sp*u1) - 
         (4*q2*t1^2)/(sp^2*u1) - (q2*\[Epsilon])/u1 - (2*q2*t1*\[Epsilon])/
          (sp*u1), 0}}, {{(-2*q2*t1)/(sp*u1) - (2*q2*t1^2)/(sp^2*u1) - 
         (q2*t1*\[Epsilon])/(sp*u1), 0}, {0, 0}}}, 
     {{{(-12*m2*q2)/sp + (4*q2^2)/sp - (8*m2*q2*t1)/sp^2 + 
         (10*q2^2*t1)/sp^2 - (10*q2*t1)/sp - (12*q2*t1^2)/sp^2 - 
         (4*q2*u1)/sp - (8*q2*t1*u1)/sp^2 + (2*q2^2*\[Epsilon])/sp + 
         (2*q2^2*t1*\[Epsilon])/sp^2 - (2*q2*u1*\[Epsilon])/sp - 
         (q2*t1*u1*\[Epsilon])/sp^2, (-6*q2*t1)/sp^2}, 
       {(-6*q2)/sp - (8*q2*t1)/sp^2 - (3*q2*\[Epsilon])/sp - 
         (2*q2*t1*\[Epsilon])/sp^2, 0}}, 
      {{(-6*q2)/sp - (8*q2*t1)/sp^2 - (4*m2*q2)/(sp*u1) + (6*q2^2)/(sp*u1) - 
         (8*m2*q2*t1)/(sp^2*u1) + (6*q2^2*t1)/(sp^2*u1) - (2*q2*t1)/(sp*u1) - 
         (4*q2*t1^2)/(sp^2*u1) - (2*q2*\[Epsilon])/sp - (2*q2*t1*\[Epsilon])/
          sp^2 + (2*q2^2*\[Epsilon])/(sp*u1) + (2*q2^2*t1*\[Epsilon])/
          (sp^2*u1), (2*q2*t1)/(sp^2*u1)}, 
       {(-2*q2)/(sp*u1) - (4*q2*t1)/(sp^2*u1) - (q2*\[Epsilon])/(sp*u1) - 
         (2*q2*t1*\[Epsilon])/(sp^2*u1), 0}}, 
      {{-((q2*t1*\[Epsilon])/(sp^2*u1)), 0}, {0, 0}}}, 
     {{{(-8*m2*q2)/sp^2 + (2*q2^2)/sp^2 - (4*q2*t1)/sp^2 - (2*q2*u1)/sp^2 + 
         (q2^2*\[Epsilon])/sp^2 - (q2*u1*\[Epsilon])/sp^2, 0}, 
       {(-4*q2)/sp^2 - (2*q2*\[Epsilon])/sp^2, 0}}, 
      {{(-2*q2)/sp^2 + (2*q2^2)/(sp^2*u1) - (q2*\[Epsilon])/sp^2 + 
         (q2^2*\[Epsilon])/(sp^2*u1), 0}, {0, 0}}, {{0, 0}, {0, 0}}}}
 
CoeffAP3 = {{{{2*h*m2*q2*sp - h*q2^2*sp - 2*h*m2*sp^2 - 2*h*m2*q2*t1 - 
         h*q2^2*t1 - 2*h*m2*sp*t1 - h*q2*sp*t1 - h*sp^2*t1 - 5*h*q2*t1^2 + 
         (2*h*q2^2*t1^2)/sp - h*sp*t1^2 - (4*h*q2*t1^3)/sp - 2*h*m2*sp*u1 + 
         h*q2*sp*u1 - h*q2*t1*u1 + h*t1^2*u1 - (4*h*q2*t1^2*u1)/sp + 
         h*t1*u1^2 + (h*q2^2*sp*\[Epsilon])/2 - (h*q2*sp^2*\[Epsilon])/4 + 
         (h*q2^2*t1*\[Epsilon])/2 - (h*q2*sp*t1*\[Epsilon])/2 - 
         (3*h*q2*sp*u1*\[Epsilon])/4 + (h*sp^2*u1*\[Epsilon])/4 - 
         (h*q2*t1*u1*\[Epsilon])/4 + (h*sp*t1*u1*\[Epsilon])/4 + 
         (h*sp*u1^2*\[Epsilon])/4, 2*h*m2*q2 + h*q2^2 - (2*h*q2^3)/sp - 
         2*h*m2*sp - (2*h*m2*q2^2)/(q2 + sp) + (h*q2^3)/(q2 + sp) + 
         (2*h*q2^4)/(sp*(q2 + sp)) + (h*q2^2*sp)/(q2 + sp) - 2*h*q2*t1 + 
         (7*h*q2^2*t1)/sp - 2*h*sp*t1 - (h*q2^2*t1)/(q2 + sp) - 
         (7*h*q2^3*t1)/(sp*(q2 + sp)) - 2*h*t1^2 - (7*h*q2*t1^2)/sp + 
         (h*q2*t1^2)/(q2 + sp) + (9*h*q2^2*t1^2)/(sp*(q2 + sp)) - 
         (4*h*q2*t1^3)/(sp*(q2 + sp)) - 2*h*m2*u1 - 2*h*q2*u1 + 
         (2*h*q2^2*u1)/sp + (2*h*m2*q2*u1)/(q2 + sp) - 
         (2*h*q2^3*u1)/(sp*(q2 + sp)) - (h*q2*sp*u1)/(q2 + sp) - h*t1*u1 - 
         (6*h*q2*t1*u1)/sp + (2*h*q2*t1*u1)/(q2 + sp) + 
         (6*h*q2^2*t1*u1)/(sp*(q2 + sp)) + (h*sp*t1*u1)/(q2 + sp) + 
         (h*t1^2*u1)/(q2 + sp) - (4*h*q2*t1^2*u1)/(sp*(q2 + sp)) + h*u1^2 - 
         (h*q2*u1^2)/(q2 + sp) + (h*t1*u1^2)/(q2 + sp) + 
         (h*q2^2*\[Epsilon])/2 - (h*q2*sp*\[Epsilon])/2 - 
         (h*q2^3*\[Epsilon])/(2*(q2 + sp)) + (h*q2^2*sp*\[Epsilon])/
          (4*(q2 + sp)) - h*q2*t1*\[Epsilon] + (h*q2^2*t1*\[Epsilon])/
          (q2 + sp) - (3*h*q2*u1*\[Epsilon])/4 + (h*sp*u1*\[Epsilon])/2 + 
         (3*h*q2^2*u1*\[Epsilon])/(4*(q2 + sp)) - (h*q2*sp*u1*\[Epsilon])/
          (4*(q2 + sp)) + (h*t1*u1*\[Epsilon])/2 - (h*q2*t1*u1*\[Epsilon])/
          (2*(q2 + sp)) + (h*u1^2*\[Epsilon])/4 - (h*q2*u1^2*\[Epsilon])/
          (4*(q2 + sp)), -(h*t1) - (h*q2*t1)/sp + (2*h*m2*t1)/(q2 + sp) + 
         (h*q2^2*t1)/(sp*(q2 + sp)) - (h*t1^2)/sp - (h*q2*t1^2)/
          (sp*(q2 + sp)) - (h*q2*\[Epsilon])/4 + (h*q2^2*\[Epsilon])/
          (4*(q2 + sp)) - (h*q2*t1*\[Epsilon])/(2*(q2 + sp)) + 
         (h*u1*\[Epsilon])/4 - (h*q2*u1*\[Epsilon])/(4*(q2 + sp)) + 
         (h*t1*u1*\[Epsilon])/(4*(q2 + sp))}, 
       {2*h*q2*sp - h*sp^2 + 2*h*q2*t1 - h*sp*t1 - h*sp*u1 - 
         (3*h*q2*sp*\[Epsilon])/4 + (h*sp^2*\[Epsilon])/2 - 
         (h*q2*t1*\[Epsilon])/2 + (h*sp*t1*\[Epsilon])/2 + 
         (h*sp*u1*\[Epsilon])/2, -2*h*m2 - h*q2 + (2*h*q2^2)/sp - h*sp + 
         (2*h*m2*q2)/(q2 + sp) - (h*q2^2)/(q2 + sp) - 
         (2*h*q2^3)/(sp*(q2 + sp)) - (h*q2*sp)/(q2 + sp) - h*t1 - 
         (4*h*q2*t1)/sp + (2*h*q2*t1)/(q2 + sp) + (4*h*q2^2*t1)/
          (sp*(q2 + sp)) - (2*h*q2*t1^2)/(sp*(q2 + sp)) + h*u1 - 
         (h*q2*u1)/(q2 + sp) - (3*h*q2*\[Epsilon])/4 + h*sp*\[Epsilon] + 
         (3*h*q2^2*\[Epsilon])/(4*(q2 + sp)) - (h*q2*sp*\[Epsilon])/
          (2*(q2 + sp)) + h*t1*\[Epsilon] - (h*q2*t1*\[Epsilon])/(q2 + sp) + 
         (h*u1*\[Epsilon])/2 - (h*q2*u1*\[Epsilon])/(2*(q2 + sp)), 
        (h*\[Epsilon])/2 - (h*q2*\[Epsilon])/(2*(q2 + sp)) + 
         (h*t1*\[Epsilon])/(2*(q2 + sp))}, {0, 0, 0}}, 
      {{-2*h*m2*sp - 3*h*q2*sp + h*sp^2 - 4*h*q2*t1 + 2*h*sp*t1 - 
         (4*h*q2*t1^2)/sp - (2*h*m2*q2*sp)/u1 + (h*q2^2*sp)/u1 - 
         (h*q2*sp^2)/u1 - (2*h*m2*q2*t1)/u1 + (2*h*q2^2*t1)/u1 - 
         (2*h*m2*sp*t1)/u1 - (5*h*q2*sp*t1)/u1 + (h*sp^2*t1)/u1 - 
         (7*h*q2*t1^2)/u1 + (2*h*q2^2*t1^2)/(sp*u1) + (h*sp*t1^2)/u1 - 
         (4*h*q2*t1^3)/(sp*u1) + 2*h*sp*u1 - h*q2*sp*\[Epsilon] + 
         (h*sp^2*\[Epsilon])/4 - (h*q2*t1*\[Epsilon])/2 + 
         (h*sp*t1*\[Epsilon])/2 + (h*q2^2*sp*\[Epsilon])/(2*u1) - 
         (h*q2*sp^2*\[Epsilon])/(4*u1) + (h*q2^2*t1*\[Epsilon])/(2*u1) - 
         (h*q2*sp*t1*\[Epsilon])/(2*u1) + (h*sp*u1*\[Epsilon])/2, 
        -2*h*m2 - 4*h*q2 + h*sp + (2*h*m2*q2)/(q2 + sp) + 
         (4*h*q2^2)/(q2 + sp) - (2*h*q2*sp)/(q2 + sp) + h*t1 - 
         (2*h*q2*t1)/sp - (5*h*q2*t1)/(q2 + sp) + (2*h*q2^2*t1)/
          (sp*(q2 + sp)) + (h*sp*t1)/(q2 + sp) - (4*h*q2*t1^2)/
          (sp*(q2 + sp)) - (2*h*m2*q2)/u1 + (h*q2^2)/u1 + (2*h*m2*sp)/u1 - 
         (h*q2*sp)/u1 + (2*h*m2*q2^2)/((q2 + sp)*u1) - 
         (h*q2^3)/((q2 + sp)*u1) + (2*h*m2*q2*sp)/((q2 + sp)*u1) + 
         (2*h*q2^2*sp)/((q2 + sp)*u1) - (h*q2*t1)/u1 + (h*q2^2*t1)/(sp*u1) + 
         (2*h*sp*t1)/u1 + (3*h*q2^2*t1)/((q2 + sp)*u1) - 
         (h*q2^3*t1)/(sp*(q2 + sp)*u1) - (3*h*q2*sp*t1)/((q2 + sp)*u1) + 
         (2*h*t1^2)/u1 - (h*q2*t1^2)/(sp*u1) - (5*h*q2*t1^2)/((q2 + sp)*u1) + 
         (3*h*q2^2*t1^2)/(sp*(q2 + sp)*u1) - (4*h*q2*t1^3)/
          (sp*(q2 + sp)*u1) + 3*h*u1 - (3*h*q2*u1)/(q2 + sp) - 
         h*q2*\[Epsilon] + (h*sp*\[Epsilon])/2 + (h*q2^2*\[Epsilon])/
          (q2 + sp) - (h*q2*sp*\[Epsilon])/(4*(q2 + sp)) + h*t1*\[Epsilon] - 
         (h*q2*t1*\[Epsilon])/(q2 + sp) + (h*q2^2*\[Epsilon])/(2*u1) - 
         (h*q2*sp*\[Epsilon])/(2*u1) - (h*q2^3*\[Epsilon])/(2*(q2 + sp)*u1) + 
         (h*q2^2*sp*\[Epsilon])/(4*(q2 + sp)*u1) - (h*q2*t1*\[Epsilon])/u1 + 
         (h*q2^2*t1*\[Epsilon])/((q2 + sp)*u1) + (h*u1*\[Epsilon])/2 - 
         (h*q2*u1*\[Epsilon])/(2*(q2 + sp)), (2*h*m2)/u1 - 
         (2*h*m2*q2)/((q2 + sp)*u1) + (h*t1)/u1 + (h*q2*t1)/(sp*u1) + 
         (2*h*m2*t1)/((q2 + sp)*u1) - (h*q2^2*t1)/(sp*(q2 + sp)*u1) + 
         (h*t1^2)/(sp*u1) + (h*q2*t1^2)/(sp*(q2 + sp)*u1) + 
         (h*\[Epsilon])/4 - (h*q2*\[Epsilon])/(4*(q2 + sp)) + 
         (h*t1*\[Epsilon])/(2*(q2 + sp)) - (h*q2*\[Epsilon])/(4*u1) + 
         (h*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) - (h*q2*t1*\[Epsilon])/
          (2*(q2 + sp)*u1)}, {2*h*sp + h*t1 - (2*h*m2*sp)/u1 - 
         (3*h*q2*sp)/u1 + (h*sp^2)/u1 - (5*h*q2*t1)/u1 + (h*sp*t1)/u1 - 
         (4*h*q2*t1^2)/(sp*u1) + (3*h*sp*\[Epsilon])/4 - 
         (3*h*q2*sp*\[Epsilon])/(4*u1) - (h*q2*t1*\[Epsilon])/(2*u1) + 
         (h*sp*t1*\[Epsilon])/(2*u1), 2*h - (2*h*q2)/(q2 + sp) - 
         (h*t1)/(q2 + sp) - (2*h*q2)/u1 + (h*sp)/u1 + 
         (2*h*q2^2)/((q2 + sp)*u1) + (h*t1)/u1 - (2*h*q2*t1)/(sp*u1) - 
         (h*q2*t1)/((q2 + sp)*u1) + (2*h*q2^2*t1)/(sp*(q2 + sp)*u1) - 
         (2*h*q2*t1^2)/(sp*(q2 + sp)*u1) + (3*h*\[Epsilon])/4 - 
         (3*h*q2*\[Epsilon])/(4*(q2 + sp)) - (3*h*q2*\[Epsilon])/(4*u1) + 
         (3*h*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + (h*t1*\[Epsilon])/u1 - 
         (h*q2*t1*\[Epsilon])/((q2 + sp)*u1), (h*t1*\[Epsilon])/
         (2*(q2 + sp)*u1)}, {(h*sp*\[Epsilon])/(2*u1), 
        h/u1 - (h*q2)/((q2 + sp)*u1) + (h*\[Epsilon])/(2*u1) - 
         (h*q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}}, 
      {{-(h*t1) + (h*q2*t1)/u1 - (h*t1^2)/u1 + (h*sp*\[Epsilon])/4 - 
         (h*q2*sp*\[Epsilon])/(4*u1) - (h*q2*t1*\[Epsilon])/(4*u1) + 
         (h*sp*t1*\[Epsilon])/(4*u1), -((h*t1)/(q2 + sp)) + 
         (h*q2*t1)/((q2 + sp)*u1) - (h*t1^2)/((q2 + sp)*u1) + 
         (h*\[Epsilon])/4 - (h*q2*\[Epsilon])/(4*(q2 + sp)) - 
         (h*q2*\[Epsilon])/(4*u1) + (h*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + 
         (h*t1*\[Epsilon])/(2*u1) - (h*q2*t1*\[Epsilon])/(2*(q2 + sp)*u1), 
        (h*t1*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {-((h*t1)/u1) + (h*sp*\[Epsilon])/(4*u1), -((h*t1)/((q2 + sp)*u1)) + 
         (h*\[Epsilon])/(4*u1) - (h*q2*\[Epsilon])/(4*(q2 + sp)*u1), 0}, 
       {0, 0, 0}}}, {{{4*h*m2*q2 - 2*h*q2^2 - h*q2*sp - h*q2*t1 - 
         (4*h*m2*q2*t1)/sp - (2*h*q2^2*t1)/sp + h*q2*u1 + h*sp*u1 + h*t1*u1 + 
         h*u1^2 + (3*h*q2^2*\[Epsilon])/4 + (h*q2^2*t1*\[Epsilon])/sp - 
         (3*h*q2*u1*\[Epsilon])/4 - (h*q2*t1*u1*\[Epsilon])/(2*sp), 
        -4*h*m2 + h*q2 - (4*h*m2*q2)/sp + (4*h*q2^2)/sp + 
         (2*h*m2*q2)/(q2 + sp) - (3*h*q2^2)/(q2 + sp) + 
         (4*h*m2*q2^2)/(sp*(q2 + sp)) - (4*h*q2^3)/(sp*(q2 + sp)) - 
         (h*q2*sp)/(q2 + sp) - h*t1 - (4*h*q2*t1)/sp - 
         (4*h*m2*q2*t1)/(sp*(q2 + sp)) + (10*h*q2^2*t1)/(sp*(q2 + sp)) - 
         (6*h*q2*t1^2)/(sp*(q2 + sp)) - h*u1 - (4*h*q2*u1)/sp + 
         (2*h*q2*u1)/(q2 + sp) + (4*h*q2^2*u1)/(sp*(q2 + sp)) + 
         (h*sp*u1)/(q2 + sp) + (h*t1*u1)/(q2 + sp) - (6*h*q2*t1*u1)/
          (sp*(q2 + sp)) + (h*u1^2)/(q2 + sp) - (h*q2*\[Epsilon])/4 + 
         (h*q2^2*\[Epsilon])/(2*sp) + (h*q2^2*\[Epsilon])/(4*(q2 + sp)) - 
         (h*q2^3*\[Epsilon])/(2*sp*(q2 + sp)) + (h*q2^2*t1*\[Epsilon])/
          (sp*(q2 + sp)) + (h*u1*\[Epsilon])/4 - (h*q2*u1*\[Epsilon])/
          (2*sp) - (h*q2*u1*\[Epsilon])/(4*(q2 + sp)) + 
         (h*q2^2*u1*\[Epsilon])/(2*sp*(q2 + sp)) - (h*q2*t1*u1*\[Epsilon])/
          (2*sp*(q2 + sp)), (2*h*m2)/(q2 + sp) - (h*t1)/sp - 
         (h*q2*t1)/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/(4*(q2 + sp)) + 
         (h*u1*\[Epsilon])/(4*(q2 + sp))}, {4*h*q2 + (4*h*q2*t1)/sp - 
         h*q2*\[Epsilon] - (h*q2*t1*\[Epsilon])/sp, -2*h - (4*h*q2)/sp + 
         (4*h*q2)/(q2 + sp) + (4*h*q2^2)/(sp*(q2 + sp)) - 
         (4*h*q2*t1)/(sp*(q2 + sp)) + (h*\[Epsilon])/2 - 
         (h*q2*\[Epsilon])/sp + (h*q2^2*\[Epsilon])/(sp*(q2 + sp)) - 
         (h*q2*t1*\[Epsilon])/(sp*(q2 + sp)), (h*\[Epsilon])/(2*(q2 + sp))}, 
       {0, 0, 0}}, {{-4*h*q2 + h*sp + 3*h*t1 - (4*h*q2*t1)/sp - 
         (10*h*m2*q2)/u1 + (h*q2^2)/u1 - (h*q2*sp)/u1 - (8*h*q2*t1)/u1 - 
         (4*h*m2*q2*t1)/(sp*u1) + (2*h*q2^2*t1)/(sp*u1) - 
         (8*h*q2*t1^2)/(sp*u1) + 3*h*u1 - (3*h*q2*\[Epsilon])/4 - 
         (h*q2*t1*\[Epsilon])/sp + (3*h*q2^2*\[Epsilon])/(4*u1) + 
         (h*q2^2*t1*\[Epsilon])/(sp*u1), -2*h - (h*q2)/sp + 
         (h*q2^2)/(sp*(q2 + sp)) - (2*h*t1)/sp - (h*t1)/(q2 + sp) - 
         (4*h*q2*t1)/(sp*(q2 + sp)) + (6*h*m2)/u1 + (2*h*q2)/u1 + 
         (h*q2^2)/(sp*u1) - (4*h*m2*q2)/((q2 + sp)*u1) + 
         (h*q2^2)/((q2 + sp)*u1) - (h*q2^3)/(sp*(q2 + sp)*u1) + (h*t1)/u1 + 
         (2*h*q2*t1)/(sp*u1) - (h*q2*t1)/((q2 + sp)*u1) - 
         (4*h*m2*q2*t1)/(sp*(q2 + sp)*u1) + (2*h*q2^2*t1)/(sp*(q2 + sp)*u1) - 
         (2*h*q2*t1^2)/(sp*(q2 + sp)*u1) - (h*u1)/(q2 + sp) + 
         (h*\[Epsilon])/4 - (h*q2*\[Epsilon])/(2*sp) - (h*q2*\[Epsilon])/
          (4*(q2 + sp)) + (h*q2^2*\[Epsilon])/(2*sp*(q2 + sp)) - 
         (h*q2*t1*\[Epsilon])/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/(4*u1) + 
         (h*q2^2*\[Epsilon])/(2*sp*u1) + (h*q2^2*\[Epsilon])/
          (4*(q2 + sp)*u1) - (h*q2^3*\[Epsilon])/(2*sp*(q2 + sp)*u1) + 
         (h*q2^2*t1*\[Epsilon])/(sp*(q2 + sp)*u1), (h*t1)/(sp*u1) + 
         (h*q2*t1)/(sp*(q2 + sp)*u1) + (h*\[Epsilon])/(4*(q2 + sp)) - 
         (h*q2*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {2*h - (4*h*q2)/u1 - (4*h*q2*t1)/(sp*u1) - (h*q2*\[Epsilon])/(2*u1) - 
         (h*q2*t1*\[Epsilon])/(sp*u1), -(h/(q2 + sp)) + h/u1 - 
         (2*h*q2)/((q2 + sp)*u1) - (2*h*q2*t1)/(sp*(q2 + sp)*u1) - 
         (h*q2*\[Epsilon])/(2*(q2 + sp)*u1) - (h*q2*t1*\[Epsilon])/
          (sp*(q2 + sp)*u1), 0}, {0, 0, 0}}, 
      {{-(h*q2*t1*\[Epsilon])/(2*sp*u1), -(h*q2*t1*\[Epsilon])/
         (2*sp*(q2 + sp)*u1), 0}, {0, 0, 0}, {0, 0, 0}}}, 
     {{{(4*h*m2*q2)/sp - (2*h*q2^2)/sp + (2*h*q2*t1)/sp + (2*h*q2*u1)/sp + 
         (h*q2^2*\[Epsilon])/(2*sp) - (h*q2*u1*\[Epsilon])/(2*sp), 
        (-4*h*m2*q2)/(sp*(q2 + sp)) + (2*h*q2^2)/(sp*(q2 + sp)) - 
         (2*h*q2*t1)/(sp*(q2 + sp)) - (2*h*q2*u1)/(sp*(q2 + sp)) + 
         (h*q2^2*\[Epsilon])/(2*sp*(q2 + sp)) - (h*q2*u1*\[Epsilon])/
          (2*sp*(q2 + sp)), 0}, {(4*h*q2)/sp - (h*q2*\[Epsilon])/sp, 
        (-2*h*q2)/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/(sp*(q2 + sp)), 0}, 
       {0, 0, 0}}, {{(-8*h*m2*q2)/(sp*u1) - (2*h*q2*t1)/(sp*u1) - 
         (h*q2*\[Epsilon])/(2*sp) + (h*q2^2*\[Epsilon])/(2*sp*u1), 
        -(h/sp) - (h*q2)/(sp*(q2 + sp)) + (h*q2)/(sp*u1) + 
         (h*q2^2)/(sp*(q2 + sp)*u1) - (h*q2*\[Epsilon])/(2*sp*(q2 + sp)) + 
         (h*q2^2*\[Epsilon])/(2*sp*(q2 + sp)*u1), 0}, {(-2*h*q2)/(sp*u1), 0, 
        0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}}
 
AG3List = {{1, 1, 1, 1}, {1, -1, 1, 1}, {1, 1, 1, -1}, {1, -1, 1, -1}, {0, 1, 
     1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 1, 1, 0}, {0, -1, 
     1, 1}, {0, 1, 1, -1}, {1, -1, 0, 1}, {1, -1, 1, 0}, {1, 0, -1, 1}, {1, 
     0, 1, -1}, {1, 1, 0, -1}, {0, 0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 
     0, 0, 1}, {1, 0, 1, 0}, {1, 1, 0, 0}, {-1, 0, 1, 0}, {-1, 1, 0, 0}, {0, 
     -1, 0, 1}, {0, -1, 1, 0}, {0, 0, -1, 1}, {0, 0, 1, -1}, {0, 1, 0, -1}, 
     {1, -1, 0, 0}, {1, 0, -1, 0}, {1, 0, 0, -1}, {0, 0, 0, 1}, {0, 0, 1, 0}, 
     {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 0}}
 
AL3List = {{1, 1, 1, 1}, {-1, 1, 1, 1}, {-2, 1, 1, 1}, {-1, -1, 1, 1}, {0, 1, 
     1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 0, 1, 1}, {-1, 1, 
     0, 1}, {-1, 1, 1, 0}, {0, -1, 1, 1}, {-2, 0, 1, 1}, {-2, 1, 0, 1}, {0, 
     0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 0, 0, 1}, {1, 0, 1, 0}, {-1, 
     0, 0, 1}, {-1, 0, 1, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}
 
AP3List = {{1, 1, 1, 1}, {-1, 1, 1, 1}, {1, -1, 1, 1}, {1, 1, 1, -1}, {1, -1, 
     1, -1}, {0, 1, 1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 0, 
     1, 1}, {-1, 1, 0, 1}, {-1, 1, 1, 0}, {0, -1, 1, 1}, {0, 1, 1, -1}, {1, 
     -1, 0, 1}, {1, -1, 1, 0}, {1, 0, -1, 1}, {1, 0, 1, -1}, {1, 1, 0, -1}, 
     {0, 0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 0, 0, 1}, {1, 0, 1, 0}, 
     {1, 1, 0, 0}, {-1, 0, 0, 1}, {-1, 0, 1, 0}, {-1, 1, 0, 0}, {0, -1, 1, 
     0}, {0, 0, 1, -1}, {0, 1, 0, -1}, {1, -1, 0, 0}, {1, 0, -1, 0}, {1, 0, 
     0, -1}, {0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 
     0, 0}}
BGQED = (-16*m2^2*(t1 + u1)^2 + (-2 + Dim)*t1*u1*(4*q2^2 + 4*sp^2 - 2*t1^2 + 
        Dim*t1^2 - 8*t1*u1 + 2*Dim*t1*u1 - 2*u1^2 + Dim*u1^2 + 
        4*sp*(t1 + u1) + 4*q2*(2*sp + t1 + u1)) - 
      4*m2*((-2 + Dim)*(t1 + u1)^3 + q2*((-2 + Dim)*t1^2 + 
          2*(-4 + Dim)*t1*u1 + (-2 + Dim)*u1^2) + 
        sp*((-2 + Dim)*t1^2 + 2*(-4 + Dim)*t1*u1 + (-2 + Dim)*u1^2)))/
     (4*t1^2*u1^2)
 
Dim /: Dim::usage = "Dim is the default dimension of Lorentz vectors"
 
BLQED = (-4*q2*((q2 + sp)*t1*u1 - m2*(t1 + u1)^2))/(sp^2*t1*u1)
 
BPQED = (-2*m2*sp*(t1^3 + t1^2*u1 + t1*u1^2 + u1^3) + 
      t1*u1*(sp^2*(t1 + u1) + (t1 - u1)^2*(t1 + u1) + sp*(t1^2 + u1^2) + 
        q2*(-(t1 - u1)^2 + sp*(t1 + u1))))/(sp*t1^2*u1^2)
 
CoeffAG1 = {{4*m2*t1^2 + 2*q2*t1^2 + q2*t1^2*\[Epsilon], 
      (8*m2*sp*t1)/u1 + (4*q2*sp*t1)/u1 + (8*m2*t1^2)/u1 + (4*q2*t1^2)/u1 + 
       (2*q2*sp*t1*\[Epsilon])/u1 + (2*q2*t1^2*\[Epsilon])/u1, 
      (4*m2*sp^2)/u1^2 + (2*q2*sp^2)/u1^2 + (8*m2*sp*t1)/u1^2 + 
       (4*q2*sp*t1)/u1^2 + (4*m2*t1^2)/u1^2 + (2*q2*t1^2)/u1^2 + 
       (q2*sp^2*\[Epsilon])/u1^2 + (2*q2*sp*t1*\[Epsilon])/u1^2 + 
       (q2*t1^2*\[Epsilon])/u1^2, 0}, {4*m2^2 + 2*m2*q2 + 4*m2*t1 + 2*q2*t1 + 
       m2*q2*\[Epsilon] + q2*t1*\[Epsilon], 4*m2 + 2*q2 - 2*sp - 2*t1 + 
       (8*m2^2)/u1 - (2*q2^2)/u1 + (4*m2*sp)/u1 + (2*q2*sp)/u1 - 
       (2*sp^2)/u1 + (8*m2*t1)/u1 + (4*q2*t1)/u1 - (4*sp*t1)/u1 - 
       (4*t1^2)/u1 - u1 + q2*\[Epsilon] - sp*\[Epsilon] + 
       (2*m2*q2*\[Epsilon])/u1 - (q2^2*\[Epsilon])/u1 + 
       (q2*sp*\[Epsilon])/u1 - (sp^2*\[Epsilon])/u1 + 
       (2*q2*t1*\[Epsilon])/u1 - u1*\[Epsilon] - (u1*\[Epsilon]^2)/4, 
      (4*m2^2)/u1^2 + (2*m2*q2)/u1^2 + (4*m2*sp)/u1^2 + (2*q2*sp)/u1^2 + 
       (4*m2*t1)/u1^2 + (2*q2*t1)/u1^2 + (4*m2)/u1 + (2*q2)/u1 + (2*t1)/u1 - 
       \[Epsilon] + (m2*q2*\[Epsilon])/u1^2 + (q2*sp*\[Epsilon])/u1^2 + 
       (q2*t1*\[Epsilon])/u1^2 + (q2*\[Epsilon])/u1 - (sp*\[Epsilon])/u1 - 
       \[Epsilon]^2/2, -u1^(-1) - \[Epsilon]/u1 - \[Epsilon]^2/(4*u1)}, 
     {2*m2 + q2 + m2*\[Epsilon] + q2*\[Epsilon] + (q2*\[Epsilon]^2)/4, 
      (-2*q2)/u1 - (2*sp)/u1 - (4*t1)/u1 + \[Epsilon] + 
       (2*m2*\[Epsilon])/u1 - (q2*\[Epsilon])/u1 + (q2*\[Epsilon]^2)/(2*u1), 
      (2*m2)/u1^2 + q2/u1^2 + 2/u1 + (m2*\[Epsilon])/u1^2 + 
       (q2*\[Epsilon])/u1^2 + \[Epsilon]/u1 + (q2*\[Epsilon]^2)/(4*u1^2), 0}, 
     {0, -2/u1 - \[Epsilon]/u1, 0, 0}}
 
CoeffAL1 = {{(4*q2*t1^3)/sp + (4*q2*t1^4)/sp^2, (8*q2*t1^2)/u1 + 
       (16*q2*t1^3)/(sp*u1) + (8*q2*t1^4)/(sp^2*u1), 
      (4*q2*sp*t1)/u1^2 + (12*q2*t1^2)/u1^2 + (12*q2*t1^3)/(sp*u1^2) + 
       (4*q2*t1^4)/(sp^2*u1^2)}, {(4*m2*q2*t1)/sp + (4*m2*q2*t1^2)/sp^2 + 
       (8*q2*t1^2)/sp + (12*q2*t1^3)/sp^2, (2*q2*t1)/sp + (8*q2*t1)/u1 + 
       (8*m2*q2*t1)/(sp*u1) - (4*q2^2*t1)/(sp*u1) + 
       (8*m2*q2*t1^2)/(sp^2*u1) - (4*q2^2*t1^2)/(sp^2*u1) + 
       (24*q2*t1^2)/(sp*u1) + (16*q2*t1^3)/(sp^2*u1), 
      (4*q2*t1)/u1^2 + (4*m2*q2*t1)/(sp*u1^2) + (4*m2*q2*t1^2)/(sp^2*u1^2) + 
       (8*q2*t1^2)/(sp*u1^2) + (4*q2*t1^3)/(sp^2*u1^2) - (2*q2)/u1 - 
       (2*q2*t1)/(sp*u1)}, {(4*m2*q2)/sp + (8*m2*q2*t1)/sp^2 + (6*q2*t1)/sp + 
       (14*q2*t1^2)/sp^2 + (q2*t1*\[Epsilon])/sp + (q2*t1^2*\[Epsilon])/sp^2, 
      (2*q2)/u1 + (4*m2*q2)/(sp*u1) - (2*q2^2)/(sp*u1) + 
       (8*m2*q2*t1)/(sp^2*u1) - (4*q2^2*t1)/(sp^2*u1) + (12*q2*t1)/(sp*u1) + 
       (12*q2*t1^2)/(sp^2*u1) - (q2*\[Epsilon])/sp + (2*q2*t1*\[Epsilon])/
        (sp*u1) + (2*q2*t1^2*\[Epsilon])/(sp^2*u1), (2*q2*t1)/(sp*u1^2) + 
       (2*q2*t1^2)/(sp^2*u1^2) - (2*q2)/(sp*u1) + (q2*t1*\[Epsilon])/
        (sp*u1^2) + (q2*t1^2*\[Epsilon])/(sp^2*u1^2) - 
       (q2*\[Epsilon])/(sp*u1)}, {(4*m2*q2)/sp^2 + (2*q2)/sp + 
       (8*q2*t1)/sp^2 + (q2*\[Epsilon])/sp + (2*q2*t1*\[Epsilon])/sp^2, 
      (-2*q2^2)/(sp^2*u1) + (2*q2)/(sp*u1) + (4*q2*t1)/(sp^2*u1) - 
       (q2^2*\[Epsilon])/(sp^2*u1) + (q2*\[Epsilon])/(sp*u1) + 
       (2*q2*t1*\[Epsilon])/(sp^2*u1), 0}, 
     {(2*q2)/sp^2 + (q2*\[Epsilon])/sp^2, 0, 0}}
 
CoeffAP1k0 = {{0, 0, 0, 0}, {-4*h*m2*sp - 2*h*q2*t1 - (4*h*q2*t1^2)/sp - 
       2*h*m2*u1, -2*h*m2 + 2*h*q2 - 2*h*sp - 2*h*t1 + (2*h*q2*t1)/sp + 
       (2*h*q2*sp)/u1 - h*u1, (-4*h*m2*sp)/u1^2 - (2*h*q2*sp)/u1^2 - 
       (6*h*q2*t1)/u1^2 - (4*h*q2*t1^2)/(sp*u1^2) - (2*h*m2)/u1 + 
       (2*h*t1)/u1 - (2*h*q2*t1)/(sp*u1), (-2*h*m2)/u1^2 - h/u1}, 
     {-(h*q2) - (4*h*m2*q2)/sp - (6*h*q2*t1)/sp, (2*h*q2^2)/(sp*u1) + 
       (2*h*sp)/u1, -((h*q2)/u1^2) - (4*h*m2*q2)/(sp*u1^2) - 
       (2*h*q2*t1)/(sp*u1^2) + (2*h)/u1 - (2*h*q2)/(sp*u1), 0}, 
     {(-2*h*q2)/sp, (2*h*q2)/(sp*u1), 0, 0}}
 
CoeffAP1k2 = {{-4*h*m2*sp - 2*h*q2*t1 - (4*h*q2*t1^2)/sp + 2*h*t1*u1, 
      (2*h*q2*sp)/u1, (-4*h*m2*sp)/u1^2 - (2*h*q2*sp)/u1^2 - 
       (6*h*q2*t1)/u1^2 - (4*h*q2*t1^2)/(sp*u1^2) + (2*h*t1)/u1, 0}}
 
AG1List = {{2, 2}, {2, 1}, {2, 0}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, 
     {0, 1}, {0, 0}, {-1, 1}}
 
AL1List = {{2, 2}, {2, 1}, {2, 0}, {1, 2}, {1, 1}, {1, 0}, {0, 2}, {0, 1}, 
     {0, 0}, {-1, 2}, {-1, 1}, {-2, 2}}
 
AP1k0List = {{1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, {0, 1}, {0, 0}, {-1, 
     2}, {-1, 1}}
 
AP1k2List = {{2, 2}, {2, 1}, {2, 0}}
 
CoeffAG2 = {{2*q2*t1^2 + q2*t1^2*\[Epsilon], -2*m2*q2 - 2*q2^2 + 2*m2*sp + 
       (2*q2^3)/(q2 + sp) - (4*m2*q2*sp)/(q2 + sp) + (2*q2^2*sp)/(q2 + sp) - 
       (4*m2*sp^2)/(q2 + sp) + 4*q2*t1 - (8*q2^2*t1)/(q2 + sp) - 
       (4*q2*sp*t1)/(q2 + sp) - 4*t1^2 + (8*q2*t1^2)/(q2 + sp) + 
       (4*sp*t1^2)/(q2 + sp) + 4*q2*u1 - (4*q2^2*u1)/(q2 + sp) - 
       (4*q2*sp*u1)/(q2 + sp) - 4*t1*u1 + (8*q2*t1*u1)/(q2 + sp) + 
       (4*sp*t1*u1)/(q2 + sp) - 2*u1^2 + (2*q2*u1^2)/(q2 + sp) + 
       (2*sp*u1^2)/(q2 + sp) + m2*q2*\[Epsilon] - q2^2*\[Epsilon] - 
       m2*sp*\[Epsilon] - (2*m2*q2^2*\[Epsilon])/(q2 + sp) + 
       (q2^3*\[Epsilon])/(q2 + sp) - (2*m2*q2*sp*\[Epsilon])/(q2 + sp) + 
       (q2^2*sp*\[Epsilon])/(q2 + sp) - (2*q2^2*t1*\[Epsilon])/(q2 + sp) + 
       (2*q2*t1^2*\[Epsilon])/(q2 + sp) + 2*q2*u1*\[Epsilon] - 
       (2*q2^2*u1*\[Epsilon])/(q2 + sp) - (2*q2*sp*u1*\[Epsilon])/(q2 + sp) + 
       (2*q2*t1*u1*\[Epsilon])/(q2 + sp) - u1^2*\[Epsilon] + 
       (q2*u1^2*\[Epsilon])/(q2 + sp) + (sp*u1^2*\[Epsilon])/(q2 + sp), 
      4*m2 - (2*m2*q2^2)/(q2 + sp)^2 + (2*q2^3)/(q2 + sp)^2 - 
       (2*m2*q2*sp)/(q2 + sp)^2 - (2*m2*q2)/(q2 + sp) - (4*m2*sp)/(q2 + sp) - 
       (4*q2^2*t1)/(q2 + sp)^2 + (2*q2*t1^2)/(q2 + sp)^2 - 
       (4*q2^2*u1)/(q2 + sp)^2 + (4*q2*t1*u1)/(q2 + sp)^2 + 
       (2*q2*u1^2)/(q2 + sp)^2 - 2*m2*\[Epsilon] - (m2*q2^2*\[Epsilon])/
        (q2 + sp)^2 + (q2^3*\[Epsilon])/(q2 + sp)^2 - (m2*q2*sp*\[Epsilon])/
        (q2 + sp)^2 + (m2*q2*\[Epsilon])/(q2 + sp) - (2*q2^2*t1*\[Epsilon])/
        (q2 + sp)^2 + (q2*t1^2*\[Epsilon])/(q2 + sp)^2 - 
       (2*q2^2*u1*\[Epsilon])/(q2 + sp)^2 + (2*q2*t1*u1*\[Epsilon])/
        (q2 + sp)^2 + (q2*u1^2*\[Epsilon])/(q2 + sp)^2, 
      (-2*m2)/(q2 + sp) - (m2*\[Epsilon])/(q2 + sp)}, 
     {2*m2*q2 + 2*q2*t1 + m2*q2*\[Epsilon] + q2*t1*\[Epsilon], 
      -4*m2 + 3*q2 + sp + (4*m2*q2)/(q2 + sp) - (6*q2^2)/(q2 + sp) + 
       (8*m2*sp)/(q2 + sp) - (2*q2*sp)/(q2 + sp) - (2*sp^2)/(q2 + sp) - 
       6*t1 + (12*q2*t1)/(q2 + sp) + (4*sp*t1)/(q2 + sp) - 
       (4*t1^2)/(q2 + sp) - 4*u1 + (8*q2*u1)/(q2 + sp) + 
       (2*sp*u1)/(q2 + sp) - (4*t1*u1)/(q2 + sp) - (2*u1^2)/(q2 + sp) + 
       q2*\[Epsilon] + (2*m2*q2*\[Epsilon])/(q2 + sp) - 
       (3*q2^2*\[Epsilon])/(q2 + sp) - (q2*sp*\[Epsilon])/(q2 + sp) - 
       (sp^2*\[Epsilon])/(q2 + sp) + (2*q2*t1*\[Epsilon])/(q2 + sp) - 
       u1*\[Epsilon] + (3*q2*u1*\[Epsilon])/(q2 + sp) - 
       (u1^2*\[Epsilon])/(q2 + sp) + (q2*\[Epsilon]^2)/4 - 
       (sp*\[Epsilon]^2)/4 - (q2^2*\[Epsilon]^2)/(2*(q2 + sp)) - 
       (q2*sp*\[Epsilon]^2)/(2*(q2 + sp)), 2 + (2*m2*q2)/(q2 + sp)^2 - 
       (3*q2^2)/(q2 + sp)^2 - (q2*sp)/(q2 + sp)^2 + (4*m2)/(q2 + sp) + 
       q2/(q2 + sp) - (2*sp)/(q2 + sp) + (2*q2*t1)/(q2 + sp)^2 + 
       (2*t1)/(q2 + sp) + (2*q2*u1)/(q2 + sp)^2 + (m2*q2*\[Epsilon])/
        (q2 + sp)^2 - (2*q2^2*\[Epsilon])/(q2 + sp)^2 - 
       (q2*sp*\[Epsilon])/(q2 + sp)^2 + (2*q2*\[Epsilon])/(q2 + sp) - 
       (sp*\[Epsilon])/(q2 + sp) + (q2*t1*\[Epsilon])/(q2 + sp)^2 + 
       (q2*u1*\[Epsilon])/(q2 + sp)^2 - (u1*\[Epsilon])/(q2 + sp) - 
       \[Epsilon]^2/2 - (q2^2*\[Epsilon]^2)/(4*(q2 + sp)^2) - 
       (q2*sp*\[Epsilon]^2)/(4*(q2 + sp)^2) + (q2*\[Epsilon]^2)/
        (4*(q2 + sp)), -(q2 + sp)^(-1) - \[Epsilon]/(q2 + sp) - 
       \[Epsilon]^2/(4*(q2 + sp))}, {q2 + q2*\[Epsilon] + 
       (q2*\[Epsilon]^2)/4, -4 - (4*m2)/(q2 + sp) + (4*q2)/(q2 + sp) + 
       (4*sp)/(q2 + sp) - (4*t1)/(q2 + sp) - (2*u1)/(q2 + sp) - \[Epsilon] + 
       (q2*\[Epsilon])/(q2 + sp) + (2*sp*\[Epsilon])/(q2 + sp) + 
       (q2*\[Epsilon]^2)/(2*(q2 + sp)), q2/(q2 + sp)^2 + 2/(q2 + sp) + 
       (q2*\[Epsilon])/(q2 + sp)^2 + \[Epsilon]/(q2 + sp) + 
       (q2*\[Epsilon]^2)/(4*(q2 + sp)^2), 0}, 
     {0, -2/(q2 + sp) - \[Epsilon]/(q2 + sp), 0, 0}}
 
CoeffAL2 = {{0, 0, (-4*m2*q2)/sp, (-4*m2*q2)/sp^2}, 
     {(-4*q2*t1^2)/sp, (8*m2*q2)/sp + (4*q2*t1)/sp - (4*q2*t1^2)/sp^2, 
      (12*m2*q2)/sp^2 - (2*q2)/sp + (4*q2*t1)/sp^2 - (q2*\[Epsilon])/sp, 
      (-2*q2)/sp^2 - (q2*\[Epsilon])/sp^2}, 
     {(-4*m2*q2)/sp - (4*q2*t1)/sp + (4*q2*t1^2)/sp^2, 
      (-12*m2*q2)/sp^2 + (4*q2)/sp - (8*q2*t1)/sp^2 + (2*q2*\[Epsilon])/sp, 
      (6*q2)/sp^2 + (3*q2*\[Epsilon])/sp^2, 0}, 
     {(4*m2*q2)/sp^2 - (2*q2)/sp + (4*q2*t1)/sp^2 - (q2*\[Epsilon])/sp, 
      (-6*q2)/sp^2 - (3*q2*\[Epsilon])/sp^2, 0, 0}, 
     {(2*q2)/sp^2 + (q2*\[Epsilon])/sp^2, 0, 0, 0}}
 
CoeffAP2 = {{2*h*q2*t1^2, -2*h*m2*q2 - h*q2^2 - 2*h*m2*sp + h*q2*sp + 
       (h*q2^3)/(q2 + sp) - (h*q2*sp^2)/(q2 + sp) - (2*h*q2^2*t1)/sp - 
       (2*h*q2^2*t1)/(q2 + sp) + (2*h*q2^3*t1)/(sp*(q2 + sp)) + 
       (2*h*q2*t1^2)/sp + (2*h*q2*t1^2)/(q2 + sp) - (2*h*q2^2*t1^2)/
        (sp*(q2 + sp)) + 3*h*q2*u1 - h*sp*u1 - (3*h*q2^2*u1)/(q2 + sp) - 
       (2*h*q2*sp*u1)/(q2 + sp) + (h*sp^2*u1)/(q2 + sp) - 2*h*t1*u1 + 
       (6*h*q2*t1*u1)/(q2 + sp) + (2*h*sp*t1*u1)/(q2 + sp) - 2*h*u1^2 + 
       (2*h*q2*u1^2)/(q2 + sp) + (2*h*sp*u1^2)/(q2 + sp), 
      -4*h*m2 + 2*h*q2 - (4*h*m2*q2)/sp + (h*q2^2)/sp - 
       (2*h*m2*q2^2)/(q2 + sp)^2 + (2*h*q2^3)/(q2 + sp)^2 - 
       (2*h*m2*q2*sp)/(q2 + sp)^2 + (6*h*m2*q2)/(q2 + sp) - 
       (3*h*q2^2)/(q2 + sp) - (h*q2^3)/(sp*(q2 + sp)) + 
       (4*h*m2*sp)/(q2 + sp) - (2*h*q2*sp)/(q2 + sp) - h*t1 - 
       (2*h*q2*t1)/sp - (4*h*q2^2*t1)/(q2 + sp)^2 + (3*h*q2*t1)/(q2 + sp) + 
       (2*h*q2^2*t1)/(sp*(q2 + sp)) + (h*sp*t1)/(q2 + sp) + (2*h*t1^2)/sp + 
       (2*h*q2*t1^2)/(q2 + sp)^2 - (2*h*t1^2)/(q2 + sp) - 
       (2*h*q2*t1^2)/(sp*(q2 + sp)) - 2*h*u1 - (h*q2*u1)/sp - 
       (4*h*q2^2*u1)/(q2 + sp)^2 + (3*h*q2*u1)/(q2 + sp) + 
       (h*q2^2*u1)/(sp*(q2 + sp)) + (2*h*sp*u1)/(q2 + sp) + (2*h*t1*u1)/sp + 
       (4*h*q2*t1*u1)/(q2 + sp)^2 - (2*h*t1*u1)/(q2 + sp) - 
       (2*h*q2*t1*u1)/(sp*(q2 + sp)) + (2*h*q2*u1^2)/(q2 + sp)^2, 
      (h*q2)/sp + (2*h*m2)/(q2 + sp) - (h*q2)/(q2 + sp) + 
       (4*h*m2*q2)/(sp*(q2 + sp)) - (h*q2^2)/(sp*(q2 + sp)) - (h*t1)/sp + 
       (h*t1)/(q2 + sp) + (h*q2*t1)/(sp*(q2 + sp)) - (h*u1)/sp + 
       (h*u1)/(q2 + sp) + (h*q2*u1)/(sp*(q2 + sp))}, 
     {2*h*m2*q2 + 2*h*q2*t1 - (4*h*q2*t1^2)/sp, 4*h*m2 - h*q2 + 
       (8*h*m2*q2)/sp - (h*q2^2)/sp - h*sp - (4*h*m2*q2)/(q2 + sp) - 
       (h*q2^2)/(q2 + sp) + (h*q2^3)/(sp*(q2 + sp)) + (4*h*q2*sp)/(q2 + sp) - 
       2*h*t1 + (8*h*q2*t1)/sp + (4*h*q2*t1)/(q2 + sp) - 
       (4*h*q2^2*t1)/(sp*(q2 + sp)) + (4*h*q2*t1^2)/(sp*(q2 + sp)) - 2*h*u1 + 
       (h*q2*u1)/sp + (5*h*q2*u1)/(q2 + sp) - (h*q2^2*u1)/(sp*(q2 + sp)) - 
       (2*h*t1*u1)/sp - (2*h*t1*u1)/(q2 + sp) + (2*h*q2*t1*u1)/
        (sp*(q2 + sp)) - (2*h*u1^2)/(q2 + sp) + (3*h*q2*\[Epsilon])/2 + 
       (h*sp*\[Epsilon])/2 - (h*q2^2*\[Epsilon])/(q2 + sp) - 
       (h*q2*sp*\[Epsilon])/(q2 + sp), -2*h - (6*h*q2)/sp + 
       (2*h*m2*q2)/(q2 + sp)^2 - (3*h*q2^2)/(q2 + sp)^2 - 
       (h*q2*sp)/(q2 + sp)^2 - (4*h*m2)/(q2 + sp) + (9*h*q2)/(q2 + sp) - 
       (8*h*m2*q2)/(sp*(q2 + sp)) + (4*h*q2^2)/(sp*(q2 + sp)) + 
       (2*h*sp)/(q2 + sp) + (h*t1)/sp + (2*h*q2*t1)/(q2 + sp)^2 - 
       (3*h*t1)/(q2 + sp) - (5*h*q2*t1)/(sp*(q2 + sp)) + (2*h*u1)/sp + 
       (2*h*q2*u1)/(q2 + sp)^2 - (2*h*u1)/(q2 + sp) - 
       (2*h*q2*u1)/(sp*(q2 + sp)) + (h*q2*\[Epsilon])/sp - 
       (h*q2^2*\[Epsilon])/(2*(q2 + sp)^2) - (h*q2*sp*\[Epsilon])/
        (2*(q2 + sp)^2) + (3*h*q2*\[Epsilon])/(2*(q2 + sp)) + 
       (h*sp*\[Epsilon])/(q2 + sp), h/(q2 + sp) + (2*h*q2)/(sp*(q2 + sp)) + 
       (h*\[Epsilon])/(2*(q2 + sp)) + (h*q2*\[Epsilon])/(sp*(q2 + sp))}, 
     {h*q2 - (4*h*m2*q2)/sp - (4*h*q2*t1)/sp - (h*q2*\[Epsilon])/2, 
      (7*h*q2)/sp - (3*h*q2)/(q2 + sp) + (4*h*m2*q2)/(sp*(q2 + sp)) - 
       (3*h*q2^2)/(sp*(q2 + sp)) + (4*h*q2*t1)/(sp*(q2 + sp)) - (h*u1)/sp - 
       (h*u1)/(q2 + sp) + (h*q2*u1)/(sp*(q2 + sp)) - h*\[Epsilon] - 
       (2*h*q2*\[Epsilon])/sp, (h*q2)/(q2 + sp)^2 - (2*h)/(q2 + sp) - 
       (4*h*q2)/(sp*(q2 + sp)) + (h*q2*\[Epsilon])/(2*(q2 + sp)^2) - 
       (h*\[Epsilon])/(q2 + sp) - (2*h*q2*\[Epsilon])/(sp*(q2 + sp)), 0}, 
     {(-2*h*q2)/sp + (h*q2*\[Epsilon])/sp, (2*h*q2)/(sp*(q2 + sp)) + 
       (h*q2*\[Epsilon])/(sp*(q2 + sp)), 0, 0}}
 
AG2List = {{2, 2}, {2, 1}, {2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, 
     {0, 2}, {0, 1}, {0, 0}, {-1, 1}}
 
AL2List = {{2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, {0, 2}, {0, 1}, 
     {0, 0}, {-1, 2}, {-1, 1}, {-2, 2}}
 
AP2List = {{2, 2}, {2, 1}, {2, 0}, {2, -1}, {1, 2}, {1, 1}, {1, 0}, {1, -1}, 
     {0, 2}, {0, 1}, {0, 0}, {-1, 2}, {-1, 1}}
 
CoeffAG3 = {{{{-2*m2*q2*sp + q2^2*sp + 2*m2*sp^2 + 2*m2*q2*t1 + 3*q2^2*t1 + 
         2*m2*sp*t1 - 5*q2*sp*t1 + 3*sp^2*t1 - 5*q2*t1^2 + 7*sp*t1^2 + 
         4*t1^3 + 2*m2*sp*u1 - q2*sp*u1 - 5*q2*t1*u1 + 6*sp*t1*u1 + 
         7*t1^2*u1 + 3*t1*u1^2 + (q2^2*sp*\[Epsilon])/2 + 
         (q2*sp^2*\[Epsilon])/4 + q2^2*t1*\[Epsilon] - (q2*sp*u1*\[Epsilon])/
          4 - (sp^2*u1*\[Epsilon])/4 - (q2*t1*u1*\[Epsilon])/4 - 
         (sp*t1*u1*\[Epsilon])/4 - (sp*u1^2*\[Epsilon])/4, 
        2*m2*q2 + q2^2 + 2*m2*sp - 2*q2*sp - (2*m2*q2^2)/(q2 + sp) - 
         q2^3/(q2 + sp) + (q2^2*sp)/(q2 + sp) - 4*m2*t1 - 8*q2*t1 + 4*sp*t1 + 
         (4*q2^2*t1)/(q2 + sp) - (2*q2*sp*t1)/(q2 + sp) + 6*t1^2 - 
         (6*q2*t1^2)/(q2 + sp) + (2*sp*t1^2)/(q2 + sp) + (4*t1^3)/(q2 + sp) - 
         2*m2*u1 - 2*q2*u1 + 2*sp*u1 + (2*m2*q2*u1)/(q2 + sp) + 
         (2*q2^2*u1)/(q2 + sp) - (q2*sp*u1)/(q2 + sp) + 7*t1*u1 - 
         (4*q2*t1*u1)/(q2 + sp) + (sp*t1*u1)/(q2 + sp) + 
         (5*t1^2*u1)/(q2 + sp) + u1^2 - (q2*u1^2)/(q2 + sp) + 
         (t1*u1^2)/(q2 + sp) + (q2^2*\[Epsilon])/2 - (q2*sp*\[Epsilon])/2 - 
         (q2^3*\[Epsilon])/(2*(q2 + sp)) + (q2^2*sp*\[Epsilon])/
          (4*(q2 + sp)) - 2*q2*t1*\[Epsilon] + (q2^2*t1*\[Epsilon])/
          (q2 + sp) - (3*q2*u1*\[Epsilon])/4 + (sp*u1*\[Epsilon])/2 + 
         (3*q2^2*u1*\[Epsilon])/(4*(q2 + sp)) - (q2*sp*u1*\[Epsilon])/
          (4*(q2 + sp)) + (t1*u1*\[Epsilon])/2 + (u1^2*\[Epsilon])/4 - 
         (q2*u1^2*\[Epsilon])/(4*(q2 + sp)), t1 + (2*m2*t1)/(q2 + sp) - 
         (q2*t1)/(q2 + sp) + t1^2/(q2 + sp) + (q2*\[Epsilon])/4 - 
         (q2^2*\[Epsilon])/(4*(q2 + sp)) - (u1*\[Epsilon])/4 + 
         (q2*u1*\[Epsilon])/(4*(q2 + sp)) - (t1*u1*\[Epsilon])/
          (4*(q2 + sp))}, {-2*q2*sp + sp^2 - 2*q2*t1 + 3*sp*t1 + 2*t1^2 + 
         sp*u1 + 2*t1*u1 - (5*q2*sp*\[Epsilon])/4 + (sp^2*\[Epsilon])/2 - 
         (q2*t1*\[Epsilon])/2 + (sp*t1*\[Epsilon])/2 + (sp*u1*\[Epsilon])/2, 
        -2*m2 - q2 + 3*sp + (2*m2*q2)/(q2 + sp) + q2^2/(q2 + sp) - 
         (q2*sp)/(q2 + sp) + 5*t1 - (2*q2*t1)/(q2 + sp) + 
         (2*t1^2)/(q2 + sp) + u1 - (q2*u1)/(q2 + sp) - (3*q2*\[Epsilon])/4 + 
         (3*sp*\[Epsilon])/2 + (3*q2^2*\[Epsilon])/(4*(q2 + sp)) - 
         (q2*sp*\[Epsilon])/(2*(q2 + sp)) + t1*\[Epsilon] - 
         (q2*t1*\[Epsilon])/(q2 + sp) + (u1*\[Epsilon])/2 - 
         (q2*u1*\[Epsilon])/(2*(q2 + sp)), (t1*\[Epsilon])/(2*(q2 + sp))}, 
       {0, 0, 0}}, {{2*m2*sp - 3*q2*sp + sp^2 - 6*q2*t1 + 8*sp*t1 + 8*t1^2 + 
         (2*m2*q2*sp)/u1 + (q2^2*sp)/u1 - (q2*sp^2)/u1 + (2*m2*q2*t1)/u1 + 
         (2*q2^2*t1)/u1 + (2*m2*sp*t1)/u1 - (3*q2*sp*t1)/u1 + (sp^2*t1)/u1 - 
         (3*q2*t1^2)/u1 + (5*sp*t1^2)/u1 + (4*t1^3)/u1 + 2*sp*u1 + 4*t1*u1 - 
         q2*sp*\[Epsilon] + (sp^2*\[Epsilon])/4 - (3*q2*t1*\[Epsilon])/2 + 
         (sp*t1*\[Epsilon])/2 + (q2^2*sp*\[Epsilon])/(2*u1) - 
         (q2*sp^2*\[Epsilon])/(4*u1) + (q2^2*t1*\[Epsilon])/u1 + 
         (sp*u1*\[Epsilon])/2, -2*m2 - 4*q2 + 3*sp + (2*m2*q2)/(q2 + sp) + 
         (4*q2^2)/(q2 + sp) - (2*q2*sp)/(q2 + sp) + 9*t1 - 
         (7*q2*t1)/(q2 + sp) + (sp*t1)/(q2 + sp) + (4*t1^2)/(q2 + sp) - 
         (2*m2*q2)/u1 + q2^2/u1 - (6*m2*sp)/u1 - (3*q2*sp)/u1 + 
         (2*m2*q2^2)/((q2 + sp)*u1) - q2^3/((q2 + sp)*u1) + 
         (2*m2*q2*sp)/((q2 + sp)*u1) + (2*q2^2*sp)/((q2 + sp)*u1) - 
         (4*m2*t1)/u1 - (5*q2*t1)/u1 + (4*q2^2*t1)/((q2 + sp)*u1) - 
         (3*q2*sp*t1)/((q2 + sp)*u1) + (2*t1^2)/u1 - 
         (6*q2*t1^2)/((q2 + sp)*u1) + (2*sp*t1^2)/((q2 + sp)*u1) + 
         (4*t1^3)/((q2 + sp)*u1) + 3*u1 - (3*q2*u1)/(q2 + sp) - 
         2*q2*\[Epsilon] + (3*sp*\[Epsilon])/2 + (2*q2^2*\[Epsilon])/
          (q2 + sp) - (3*q2*sp*\[Epsilon])/(4*(q2 + sp)) + 3*t1*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/(q2 + sp) + (q2^2*\[Epsilon])/(2*u1) - 
         (3*q2*sp*\[Epsilon])/(2*u1) - (q2^3*\[Epsilon])/(2*(q2 + sp)*u1) + 
         (3*q2^2*sp*\[Epsilon])/(4*(q2 + sp)*u1) - (2*q2*t1*\[Epsilon])/u1 + 
         (q2^2*t1*\[Epsilon])/((q2 + sp)*u1) + (3*u1*\[Epsilon])/2 - 
         (3*q2*u1*\[Epsilon])/(2*(q2 + sp)), (2*m2)/u1 - 
         (2*m2*q2)/((q2 + sp)*u1) - t1/u1 + (2*m2*t1)/((q2 + sp)*u1) + 
         (q2*t1)/((q2 + sp)*u1) - t1^2/((q2 + sp)*u1) + \[Epsilon]/4 - 
         (q2*\[Epsilon])/(4*(q2 + sp)) + (t1*\[Epsilon])/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*u1) + (q2^2*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {4*sp + 5*t1 + (2*m2*sp)/u1 - (q2*sp)/u1 + sp^2/u1 - (3*q2*t1)/u1 + 
         (7*sp*t1)/u1 + (6*t1^2)/u1 + (3*sp*\[Epsilon])/4 + 
         (q2*sp*\[Epsilon])/(4*u1) - (q2*t1*\[Epsilon])/(2*u1) + 
         (sp*t1*\[Epsilon])/(2*u1), 2 - (2*q2)/(q2 + sp) - t1/(q2 + sp) - 
         (2*q2)/u1 - sp/u1 + (2*q2^2)/((q2 + sp)*u1) + (3*t1)/u1 - 
         (3*q2*t1)/((q2 + sp)*u1) + (2*t1^2)/((q2 + sp)*u1) + 
         (5*\[Epsilon])/4 - (5*q2*\[Epsilon])/(4*(q2 + sp)) - 
         (5*q2*\[Epsilon])/(4*u1) - (sp*\[Epsilon])/(2*u1) + 
         (5*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + (t1*\[Epsilon])/u1 - 
         (q2*t1*\[Epsilon])/((q2 + sp)*u1), \[Epsilon]/(2*u1) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/
          (2*(q2 + sp)*u1)}, {(2*sp)/u1 + (2*t1)/u1 + (sp*\[Epsilon])/(2*u1), 
        u1^(-1) - q2/((q2 + sp)*u1) + \[Epsilon]/(2*u1) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}}, 
      {{t1 - (q2*t1)/u1 + t1^2/u1 - (sp*\[Epsilon])/4 + (q2*sp*\[Epsilon])/
          (4*u1) - (q2*t1*\[Epsilon])/(4*u1) - (sp*t1*\[Epsilon])/(4*u1), 
        -(t1/(q2 + sp)) + (q2*t1)/((q2 + sp)*u1) - t1^2/((q2 + sp)*u1) + 
         \[Epsilon]/4 - (q2*\[Epsilon])/(4*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*u1) + (q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + 
         (t1*\[Epsilon])/(2*u1), -(t1*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {t1/u1 - (sp*\[Epsilon])/(4*u1), -(t1/((q2 + sp)*u1)) + 
         \[Epsilon]/(4*u1) - (q2*\[Epsilon])/(4*(q2 + sp)*u1), 0}, 
       {0, 0, 0}}}, {{{-4*m2*q2 + 2*q2^2 + 4*m2*sp - q2*sp + 4*m2*t1 - 
         3*q2*t1 + 2*sp*t1 + 2*t1^2 + 4*m2*u1 - 3*q2*u1 + sp*u1 + 3*t1*u1 + 
         u1^2 + (5*q2^2*\[Epsilon])/4 - (q2*sp*\[Epsilon])/2 - 
         q2*t1*\[Epsilon] - (7*q2*u1*\[Epsilon])/4 + (sp*u1*\[Epsilon])/2 + 
         (t1*u1*\[Epsilon])/2 + (u1^2*\[Epsilon])/2, 
        4*m2 - 3*q2 - (2*m2*q2)/(q2 + sp) + q2^2/(q2 + sp) - 
         (q2*sp)/(q2 + sp) + 3*t1 + (4*m2*t1)/(q2 + sp) - 
         (8*q2*t1)/(q2 + sp) + (2*sp*t1)/(q2 + sp) + (6*t1^2)/(q2 + sp) + 
         3*u1 - (2*q2*u1)/(q2 + sp) + (sp*u1)/(q2 + sp) + 
         (7*t1*u1)/(q2 + sp) + u1^2/(q2 + sp) - (3*q2*\[Epsilon])/4 - 
         (q2^2*\[Epsilon])/(4*(q2 + sp)) - (q2*t1*\[Epsilon])/(q2 + sp) + 
         (3*u1*\[Epsilon])/4 + (q2*u1*\[Epsilon])/(4*(q2 + sp)) + 
         (t1*u1*\[Epsilon])/(2*(q2 + sp)), (2*m2)/(q2 + sp) + t1/(q2 + sp) + 
         (q2*\[Epsilon])/(4*(q2 + sp)) - (u1*\[Epsilon])/(4*(q2 + sp))}, 
       {-4*q2 + 2*sp + 2*t1 + 2*u1 - (5*q2*\[Epsilon])/2 + sp*\[Epsilon] + 
         t1*\[Epsilon] + u1*\[Epsilon], 4 + (4*t1)/(q2 + sp) + 
         (3*\[Epsilon])/2 + (t1*\[Epsilon])/(q2 + sp), 
        \[Epsilon]/(2*(q2 + sp))}, {0, 0, 0}}, 
      {{4*m2 - 4*q2 + sp + 5*t1 + (2*m2*q2)/u1 + q2^2/u1 - (q2*sp)/u1 + 
         (4*m2*t1)/u1 - (2*q2*t1)/u1 + (2*t1^2)/u1 + 3*u1 - 
         (9*q2*\[Epsilon])/4 + (sp*\[Epsilon])/2 + t1*\[Epsilon] + 
         (3*q2^2*\[Epsilon])/(4*u1) - (q2*sp*\[Epsilon])/(2*u1) - 
         (q2*t1*\[Epsilon])/u1 + (3*u1*\[Epsilon])/2, 2 - q2/(q2 + sp) + 
         (3*t1)/(q2 + sp) - (2*m2)/u1 - (2*q2)/u1 - 
         (4*m2*q2)/((q2 + sp)*u1) + (2*q2^2)/((q2 + sp)*u1) - t1/u1 + 
         (4*m2*t1)/((q2 + sp)*u1) - (3*q2*t1)/((q2 + sp)*u1) + 
         (2*t1^2)/((q2 + sp)*u1) - u1/(q2 + sp) + (5*\[Epsilon])/4 - 
         (3*q2*\[Epsilon])/(4*(q2 + sp)) + (t1*\[Epsilon])/(q2 + sp) - 
         (5*q2*\[Epsilon])/(4*u1) + (5*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) - 
         (q2*t1*\[Epsilon])/((q2 + sp)*u1) - (u1*\[Epsilon])/(2*(q2 + sp)), 
        -(t1/((q2 + sp)*u1)) + \[Epsilon]/(4*(q2 + sp)) - 
         (q2*\[Epsilon])/(4*(q2 + sp)*u1)}, {4 + (4*m2)/u1 + (4*t1)/u1 + 
         (3*\[Epsilon])/2 + (t1*\[Epsilon])/u1, -(q2 + sp)^(-1) - u1^(-1) - 
         (2*q2)/((q2 + sp)*u1) + (2*t1)/((q2 + sp)*u1) - 
         (3*q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/((q2 + sp)*u1), 
        0}, {2/u1 + \[Epsilon]/u1, 0, 0}}, 
      {{(t1*\[Epsilon])/(2*u1), \[Epsilon]/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1) + (t1*\[Epsilon])/(2*(q2 + sp)*u1), 
        0}, {\[Epsilon]/(2*u1), 0, 0}, {0, 0, 0}}}, 
     {{{0, (4*m2)/(q2 + sp) - (2*q2)/(q2 + sp) + (2*t1)/(q2 + sp) + 
         (2*u1)/(q2 + sp) - (q2*\[Epsilon])/(2*(q2 + sp)) + 
         (u1*\[Epsilon])/(2*(q2 + sp)), 0}, 
       {0, 2/(q2 + sp) + \[Epsilon]/(q2 + sp), 0}, {0, 0, 0}}, 
      {{0, (q2 + sp)^(-1) - q2/((q2 + sp)*u1) + \[Epsilon]/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}}
 
CoeffAL3 = {{{{2*q2^2*t1 - 4*q2*t1^2 + (6*q2^2*t1^2)/sp + 
         (4*q2^2*t1^3)/sp^2 - (4*q2*t1^3)/sp - 2*q2*t1*u1 - 
         (4*q2*t1^2*u1)/sp, (-4*q2*t1^2)/sp - (4*q2*t1^3)/sp^2}, 
       {-2*q2*t1 - (2*q2*t1^2)/sp, 0}}, 
      {{-2*q2*sp - 6*q2*t1 - (4*q2*t1^2)/sp + (2*q2^2*sp)/u1 + 
         (8*q2^2*t1)/u1 - (4*q2*sp*t1)/u1 - (8*q2*t1^2)/u1 + 
         (10*q2^2*t1^2)/(sp*u1) + (4*q2^2*t1^3)/(sp^2*u1) - 
         (4*q2*t1^3)/(sp*u1), (-4*q2*t1)/u1 - (8*q2*t1^2)/(sp*u1) - 
         (4*q2*t1^3)/(sp^2*u1)}, {(-2*q2*sp)/u1 - (4*q2*t1)/u1 - 
         (2*q2*t1^2)/(sp*u1), 0}}, {{0, 0}, {0, 0}}}, 
     {{{-4*m2*q2 + 2*q2^2 - 6*q2*t1 - (8*m2*q2*t1)/sp + (12*q2^2*t1)/sp + 
         (10*q2^2*t1^2)/sp^2 - (16*q2*t1^2)/sp - (8*q2*t1^3)/sp^2 - 2*q2*u1 - 
         (10*q2*t1*u1)/sp - (6*q2*t1^2*u1)/sp^2 + q2^2*\[Epsilon] + 
         (2*q2^2*t1*\[Epsilon])/sp - q2*u1*\[Epsilon] - (q2*t1*u1*\[Epsilon])/
          sp, (-6*q2*t1)/sp - (10*q2*t1^2)/sp^2}, 
       {-2*q2 - (8*q2*t1)/sp - (4*q2*t1^2)/sp^2 - q2*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/sp, 0}}, 
      {{-6*q2 - (16*q2*t1)/sp - (8*q2*t1^2)/sp^2 - (4*m2*q2)/u1 + 
         (6*q2^2)/u1 - (8*q2*t1)/u1 - (8*m2*q2*t1)/(sp*u1) + 
         (16*q2^2*t1)/(sp*u1) + (10*q2^2*t1^2)/(sp^2*u1) - 
         (16*q2*t1^2)/(sp*u1) - (8*q2*t1^3)/(sp^2*u1) - q2*\[Epsilon] - 
         (2*q2*t1*\[Epsilon])/sp + (q2^2*\[Epsilon])/u1 + 
         (2*q2^2*t1*\[Epsilon])/(sp*u1), (-2*q2*t1)/(sp*u1) - 
         (2*q2*t1^2)/(sp^2*u1)}, {(-4*q2)/u1 - (8*q2*t1)/(sp*u1) - 
         (4*q2*t1^2)/(sp^2*u1) - (q2*\[Epsilon])/u1 - (2*q2*t1*\[Epsilon])/
          (sp*u1), 0}}, {{(-2*q2*t1)/(sp*u1) - (2*q2*t1^2)/(sp^2*u1) - 
         (q2*t1*\[Epsilon])/(sp*u1), 0}, {0, 0}}}, 
     {{{(-12*m2*q2)/sp + (4*q2^2)/sp - (8*m2*q2*t1)/sp^2 + 
         (10*q2^2*t1)/sp^2 - (10*q2*t1)/sp - (12*q2*t1^2)/sp^2 - 
         (4*q2*u1)/sp - (8*q2*t1*u1)/sp^2 + (2*q2^2*\[Epsilon])/sp + 
         (2*q2^2*t1*\[Epsilon])/sp^2 - (2*q2*u1*\[Epsilon])/sp - 
         (q2*t1*u1*\[Epsilon])/sp^2, (-6*q2*t1)/sp^2}, 
       {(-6*q2)/sp - (8*q2*t1)/sp^2 - (3*q2*\[Epsilon])/sp - 
         (2*q2*t1*\[Epsilon])/sp^2, 0}}, 
      {{(-6*q2)/sp - (8*q2*t1)/sp^2 - (4*m2*q2)/(sp*u1) + (6*q2^2)/(sp*u1) - 
         (8*m2*q2*t1)/(sp^2*u1) + (6*q2^2*t1)/(sp^2*u1) - (2*q2*t1)/(sp*u1) - 
         (4*q2*t1^2)/(sp^2*u1) - (2*q2*\[Epsilon])/sp - (2*q2*t1*\[Epsilon])/
          sp^2 + (2*q2^2*\[Epsilon])/(sp*u1) + (2*q2^2*t1*\[Epsilon])/
          (sp^2*u1), (2*q2*t1)/(sp^2*u1)}, 
       {(-2*q2)/(sp*u1) - (4*q2*t1)/(sp^2*u1) - (q2*\[Epsilon])/(sp*u1) - 
         (2*q2*t1*\[Epsilon])/(sp^2*u1), 0}}, 
      {{-((q2*t1*\[Epsilon])/(sp^2*u1)), 0}, {0, 0}}}, 
     {{{(-8*m2*q2)/sp^2 + (2*q2^2)/sp^2 - (4*q2*t1)/sp^2 - (2*q2*u1)/sp^2 + 
         (q2^2*\[Epsilon])/sp^2 - (q2*u1*\[Epsilon])/sp^2, 0}, 
       {(-4*q2)/sp^2 - (2*q2*\[Epsilon])/sp^2, 0}}, 
      {{(-2*q2)/sp^2 + (2*q2^2)/(sp^2*u1) - (q2*\[Epsilon])/sp^2 + 
         (q2^2*\[Epsilon])/(sp^2*u1), 0}, {0, 0}}, {{0, 0}, {0, 0}}}}
 
CoeffAP3 = {{{{2*h*m2*q2*sp - h*q2^2*sp - 2*h*m2*sp^2 - 2*h*m2*q2*t1 - 
         h*q2^2*t1 - 2*h*m2*sp*t1 - h*q2*sp*t1 - h*sp^2*t1 - 5*h*q2*t1^2 + 
         (2*h*q2^2*t1^2)/sp - h*sp*t1^2 - (4*h*q2*t1^3)/sp - 2*h*m2*sp*u1 + 
         h*q2*sp*u1 - h*q2*t1*u1 + h*t1^2*u1 - (4*h*q2*t1^2*u1)/sp + 
         h*t1*u1^2 + (h*q2^2*sp*\[Epsilon])/2 - (h*q2*sp^2*\[Epsilon])/4 + 
         (h*q2^2*t1*\[Epsilon])/2 - (h*q2*sp*t1*\[Epsilon])/2 - 
         (3*h*q2*sp*u1*\[Epsilon])/4 + (h*sp^2*u1*\[Epsilon])/4 - 
         (h*q2*t1*u1*\[Epsilon])/4 + (h*sp*t1*u1*\[Epsilon])/4 + 
         (h*sp*u1^2*\[Epsilon])/4, 2*h*m2*q2 + h*q2^2 - (2*h*q2^3)/sp - 
         2*h*m2*sp - (2*h*m2*q2^2)/(q2 + sp) + (h*q2^3)/(q2 + sp) + 
         (2*h*q2^4)/(sp*(q2 + sp)) + (h*q2^2*sp)/(q2 + sp) - 2*h*q2*t1 + 
         (7*h*q2^2*t1)/sp - 2*h*sp*t1 - (h*q2^2*t1)/(q2 + sp) - 
         (7*h*q2^3*t1)/(sp*(q2 + sp)) - 2*h*t1^2 - (7*h*q2*t1^2)/sp + 
         (h*q2*t1^2)/(q2 + sp) + (9*h*q2^2*t1^2)/(sp*(q2 + sp)) - 
         (4*h*q2*t1^3)/(sp*(q2 + sp)) - 2*h*m2*u1 - 2*h*q2*u1 + 
         (2*h*q2^2*u1)/sp + (2*h*m2*q2*u1)/(q2 + sp) - 
         (2*h*q2^3*u1)/(sp*(q2 + sp)) - (h*q2*sp*u1)/(q2 + sp) - h*t1*u1 - 
         (6*h*q2*t1*u1)/sp + (2*h*q2*t1*u1)/(q2 + sp) + 
         (6*h*q2^2*t1*u1)/(sp*(q2 + sp)) + (h*sp*t1*u1)/(q2 + sp) + 
         (h*t1^2*u1)/(q2 + sp) - (4*h*q2*t1^2*u1)/(sp*(q2 + sp)) + h*u1^2 - 
         (h*q2*u1^2)/(q2 + sp) + (h*t1*u1^2)/(q2 + sp) + 
         (h*q2^2*\[Epsilon])/2 - (h*q2*sp*\[Epsilon])/2 - 
         (h*q2^3*\[Epsilon])/(2*(q2 + sp)) + (h*q2^2*sp*\[Epsilon])/
          (4*(q2 + sp)) - h*q2*t1*\[Epsilon] + (h*q2^2*t1*\[Epsilon])/
          (q2 + sp) - (3*h*q2*u1*\[Epsilon])/4 + (h*sp*u1*\[Epsilon])/2 + 
         (3*h*q2^2*u1*\[Epsilon])/(4*(q2 + sp)) - (h*q2*sp*u1*\[Epsilon])/
          (4*(q2 + sp)) + (h*t1*u1*\[Epsilon])/2 - (h*q2*t1*u1*\[Epsilon])/
          (2*(q2 + sp)) + (h*u1^2*\[Epsilon])/4 - (h*q2*u1^2*\[Epsilon])/
          (4*(q2 + sp)), -(h*t1) - (h*q2*t1)/sp + (2*h*m2*t1)/(q2 + sp) + 
         (h*q2^2*t1)/(sp*(q2 + sp)) - (h*t1^2)/sp - (h*q2*t1^2)/
          (sp*(q2 + sp)) - (h*q2*\[Epsilon])/4 + (h*q2^2*\[Epsilon])/
          (4*(q2 + sp)) - (h*q2*t1*\[Epsilon])/(2*(q2 + sp)) + 
         (h*u1*\[Epsilon])/4 - (h*q2*u1*\[Epsilon])/(4*(q2 + sp)) + 
         (h*t1*u1*\[Epsilon])/(4*(q2 + sp))}, 
       {2*h*q2*sp - h*sp^2 + 2*h*q2*t1 - h*sp*t1 - h*sp*u1 - 
         (3*h*q2*sp*\[Epsilon])/4 + (h*sp^2*\[Epsilon])/2 - 
         (h*q2*t1*\[Epsilon])/2 + (h*sp*t1*\[Epsilon])/2 + 
         (h*sp*u1*\[Epsilon])/2, -2*h*m2 - h*q2 + (2*h*q2^2)/sp - h*sp + 
         (2*h*m2*q2)/(q2 + sp) - (h*q2^2)/(q2 + sp) - 
         (2*h*q2^3)/(sp*(q2 + sp)) - (h*q2*sp)/(q2 + sp) - h*t1 - 
         (4*h*q2*t1)/sp + (2*h*q2*t1)/(q2 + sp) + (4*h*q2^2*t1)/
          (sp*(q2 + sp)) - (2*h*q2*t1^2)/(sp*(q2 + sp)) + h*u1 - 
         (h*q2*u1)/(q2 + sp) - (3*h*q2*\[Epsilon])/4 + h*sp*\[Epsilon] + 
         (3*h*q2^2*\[Epsilon])/(4*(q2 + sp)) - (h*q2*sp*\[Epsilon])/
          (2*(q2 + sp)) + h*t1*\[Epsilon] - (h*q2*t1*\[Epsilon])/(q2 + sp) + 
         (h*u1*\[Epsilon])/2 - (h*q2*u1*\[Epsilon])/(2*(q2 + sp)), 
        (h*\[Epsilon])/2 - (h*q2*\[Epsilon])/(2*(q2 + sp)) + 
         (h*t1*\[Epsilon])/(2*(q2 + sp))}, {0, 0, 0}}, 
      {{-2*h*m2*sp - 3*h*q2*sp + h*sp^2 - 4*h*q2*t1 + 2*h*sp*t1 - 
         (4*h*q2*t1^2)/sp - (2*h*m2*q2*sp)/u1 + (h*q2^2*sp)/u1 - 
         (h*q2*sp^2)/u1 - (2*h*m2*q2*t1)/u1 + (2*h*q2^2*t1)/u1 - 
         (2*h*m2*sp*t1)/u1 - (5*h*q2*sp*t1)/u1 + (h*sp^2*t1)/u1 - 
         (7*h*q2*t1^2)/u1 + (2*h*q2^2*t1^2)/(sp*u1) + (h*sp*t1^2)/u1 - 
         (4*h*q2*t1^3)/(sp*u1) + 2*h*sp*u1 - h*q2*sp*\[Epsilon] + 
         (h*sp^2*\[Epsilon])/4 - (h*q2*t1*\[Epsilon])/2 + 
         (h*sp*t1*\[Epsilon])/2 + (h*q2^2*sp*\[Epsilon])/(2*u1) - 
         (h*q2*sp^2*\[Epsilon])/(4*u1) + (h*q2^2*t1*\[Epsilon])/(2*u1) - 
         (h*q2*sp*t1*\[Epsilon])/(2*u1) + (h*sp*u1*\[Epsilon])/2, 
        -2*h*m2 - 4*h*q2 + h*sp + (2*h*m2*q2)/(q2 + sp) + 
         (4*h*q2^2)/(q2 + sp) - (2*h*q2*sp)/(q2 + sp) + h*t1 - 
         (2*h*q2*t1)/sp - (5*h*q2*t1)/(q2 + sp) + (2*h*q2^2*t1)/
          (sp*(q2 + sp)) + (h*sp*t1)/(q2 + sp) - (4*h*q2*t1^2)/
          (sp*(q2 + sp)) - (2*h*m2*q2)/u1 + (h*q2^2)/u1 + (2*h*m2*sp)/u1 - 
         (h*q2*sp)/u1 + (2*h*m2*q2^2)/((q2 + sp)*u1) - 
         (h*q2^3)/((q2 + sp)*u1) + (2*h*m2*q2*sp)/((q2 + sp)*u1) + 
         (2*h*q2^2*sp)/((q2 + sp)*u1) - (h*q2*t1)/u1 + (h*q2^2*t1)/(sp*u1) + 
         (2*h*sp*t1)/u1 + (3*h*q2^2*t1)/((q2 + sp)*u1) - 
         (h*q2^3*t1)/(sp*(q2 + sp)*u1) - (3*h*q2*sp*t1)/((q2 + sp)*u1) + 
         (2*h*t1^2)/u1 - (h*q2*t1^2)/(sp*u1) - (5*h*q2*t1^2)/((q2 + sp)*u1) + 
         (3*h*q2^2*t1^2)/(sp*(q2 + sp)*u1) - (4*h*q2*t1^3)/
          (sp*(q2 + sp)*u1) + 3*h*u1 - (3*h*q2*u1)/(q2 + sp) - 
         h*q2*\[Epsilon] + (h*sp*\[Epsilon])/2 + (h*q2^2*\[Epsilon])/
          (q2 + sp) - (h*q2*sp*\[Epsilon])/(4*(q2 + sp)) + h*t1*\[Epsilon] - 
         (h*q2*t1*\[Epsilon])/(q2 + sp) + (h*q2^2*\[Epsilon])/(2*u1) - 
         (h*q2*sp*\[Epsilon])/(2*u1) - (h*q2^3*\[Epsilon])/(2*(q2 + sp)*u1) + 
         (h*q2^2*sp*\[Epsilon])/(4*(q2 + sp)*u1) - (h*q2*t1*\[Epsilon])/u1 + 
         (h*q2^2*t1*\[Epsilon])/((q2 + sp)*u1) + (h*u1*\[Epsilon])/2 - 
         (h*q2*u1*\[Epsilon])/(2*(q2 + sp)), (2*h*m2)/u1 - 
         (2*h*m2*q2)/((q2 + sp)*u1) + (h*t1)/u1 + (h*q2*t1)/(sp*u1) + 
         (2*h*m2*t1)/((q2 + sp)*u1) - (h*q2^2*t1)/(sp*(q2 + sp)*u1) + 
         (h*t1^2)/(sp*u1) + (h*q2*t1^2)/(sp*(q2 + sp)*u1) + 
         (h*\[Epsilon])/4 - (h*q2*\[Epsilon])/(4*(q2 + sp)) + 
         (h*t1*\[Epsilon])/(2*(q2 + sp)) - (h*q2*\[Epsilon])/(4*u1) + 
         (h*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) - (h*q2*t1*\[Epsilon])/
          (2*(q2 + sp)*u1)}, {2*h*sp + h*t1 - (2*h*m2*sp)/u1 - 
         (3*h*q2*sp)/u1 + (h*sp^2)/u1 - (5*h*q2*t1)/u1 + (h*sp*t1)/u1 - 
         (4*h*q2*t1^2)/(sp*u1) + (3*h*sp*\[Epsilon])/4 - 
         (3*h*q2*sp*\[Epsilon])/(4*u1) - (h*q2*t1*\[Epsilon])/(2*u1) + 
         (h*sp*t1*\[Epsilon])/(2*u1), 2*h - (2*h*q2)/(q2 + sp) - 
         (h*t1)/(q2 + sp) - (2*h*q2)/u1 + (h*sp)/u1 + 
         (2*h*q2^2)/((q2 + sp)*u1) + (h*t1)/u1 - (2*h*q2*t1)/(sp*u1) - 
         (h*q2*t1)/((q2 + sp)*u1) + (2*h*q2^2*t1)/(sp*(q2 + sp)*u1) - 
         (2*h*q2*t1^2)/(sp*(q2 + sp)*u1) + (3*h*\[Epsilon])/4 - 
         (3*h*q2*\[Epsilon])/(4*(q2 + sp)) - (3*h*q2*\[Epsilon])/(4*u1) + 
         (3*h*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + (h*t1*\[Epsilon])/u1 - 
         (h*q2*t1*\[Epsilon])/((q2 + sp)*u1), (h*t1*\[Epsilon])/
         (2*(q2 + sp)*u1)}, {(h*sp*\[Epsilon])/(2*u1), 
        h/u1 - (h*q2)/((q2 + sp)*u1) + (h*\[Epsilon])/(2*u1) - 
         (h*q2*\[Epsilon])/(2*(q2 + sp)*u1), 0}}, 
      {{-(h*t1) + (h*q2*t1)/u1 - (h*t1^2)/u1 + (h*sp*\[Epsilon])/4 - 
         (h*q2*sp*\[Epsilon])/(4*u1) - (h*q2*t1*\[Epsilon])/(4*u1) + 
         (h*sp*t1*\[Epsilon])/(4*u1), -((h*t1)/(q2 + sp)) + 
         (h*q2*t1)/((q2 + sp)*u1) - (h*t1^2)/((q2 + sp)*u1) + 
         (h*\[Epsilon])/4 - (h*q2*\[Epsilon])/(4*(q2 + sp)) - 
         (h*q2*\[Epsilon])/(4*u1) + (h*q2^2*\[Epsilon])/(4*(q2 + sp)*u1) + 
         (h*t1*\[Epsilon])/(2*u1) - (h*q2*t1*\[Epsilon])/(2*(q2 + sp)*u1), 
        (h*t1*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {-((h*t1)/u1) + (h*sp*\[Epsilon])/(4*u1), -((h*t1)/((q2 + sp)*u1)) + 
         (h*\[Epsilon])/(4*u1) - (h*q2*\[Epsilon])/(4*(q2 + sp)*u1), 0}, 
       {0, 0, 0}}}, {{{4*h*m2*q2 - 2*h*q2^2 - h*q2*sp - h*q2*t1 - 
         (4*h*m2*q2*t1)/sp - (2*h*q2^2*t1)/sp + h*q2*u1 + h*sp*u1 + h*t1*u1 + 
         h*u1^2 + (3*h*q2^2*\[Epsilon])/4 + (h*q2^2*t1*\[Epsilon])/sp - 
         (3*h*q2*u1*\[Epsilon])/4 - (h*q2*t1*u1*\[Epsilon])/(2*sp), 
        -4*h*m2 + h*q2 - (4*h*m2*q2)/sp + (4*h*q2^2)/sp + 
         (2*h*m2*q2)/(q2 + sp) - (3*h*q2^2)/(q2 + sp) + 
         (4*h*m2*q2^2)/(sp*(q2 + sp)) - (4*h*q2^3)/(sp*(q2 + sp)) - 
         (h*q2*sp)/(q2 + sp) - h*t1 - (4*h*q2*t1)/sp - 
         (4*h*m2*q2*t1)/(sp*(q2 + sp)) + (10*h*q2^2*t1)/(sp*(q2 + sp)) - 
         (6*h*q2*t1^2)/(sp*(q2 + sp)) - h*u1 - (4*h*q2*u1)/sp + 
         (2*h*q2*u1)/(q2 + sp) + (4*h*q2^2*u1)/(sp*(q2 + sp)) + 
         (h*sp*u1)/(q2 + sp) + (h*t1*u1)/(q2 + sp) - (6*h*q2*t1*u1)/
          (sp*(q2 + sp)) + (h*u1^2)/(q2 + sp) - (h*q2*\[Epsilon])/4 + 
         (h*q2^2*\[Epsilon])/(2*sp) + (h*q2^2*\[Epsilon])/(4*(q2 + sp)) - 
         (h*q2^3*\[Epsilon])/(2*sp*(q2 + sp)) + (h*q2^2*t1*\[Epsilon])/
          (sp*(q2 + sp)) + (h*u1*\[Epsilon])/4 - (h*q2*u1*\[Epsilon])/
          (2*sp) - (h*q2*u1*\[Epsilon])/(4*(q2 + sp)) + 
         (h*q2^2*u1*\[Epsilon])/(2*sp*(q2 + sp)) - (h*q2*t1*u1*\[Epsilon])/
          (2*sp*(q2 + sp)), (2*h*m2)/(q2 + sp) - (h*t1)/sp - 
         (h*q2*t1)/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/(4*(q2 + sp)) + 
         (h*u1*\[Epsilon])/(4*(q2 + sp))}, {4*h*q2 + (4*h*q2*t1)/sp - 
         h*q2*\[Epsilon] - (h*q2*t1*\[Epsilon])/sp, -2*h - (4*h*q2)/sp + 
         (4*h*q2)/(q2 + sp) + (4*h*q2^2)/(sp*(q2 + sp)) - 
         (4*h*q2*t1)/(sp*(q2 + sp)) + (h*\[Epsilon])/2 - 
         (h*q2*\[Epsilon])/sp + (h*q2^2*\[Epsilon])/(sp*(q2 + sp)) - 
         (h*q2*t1*\[Epsilon])/(sp*(q2 + sp)), (h*\[Epsilon])/(2*(q2 + sp))}, 
       {0, 0, 0}}, {{-4*h*q2 + h*sp + 3*h*t1 - (4*h*q2*t1)/sp - 
         (10*h*m2*q2)/u1 + (h*q2^2)/u1 - (h*q2*sp)/u1 - (8*h*q2*t1)/u1 - 
         (4*h*m2*q2*t1)/(sp*u1) + (2*h*q2^2*t1)/(sp*u1) - 
         (8*h*q2*t1^2)/(sp*u1) + 3*h*u1 - (3*h*q2*\[Epsilon])/4 - 
         (h*q2*t1*\[Epsilon])/sp + (3*h*q2^2*\[Epsilon])/(4*u1) + 
         (h*q2^2*t1*\[Epsilon])/(sp*u1), -2*h - (h*q2)/sp + 
         (h*q2^2)/(sp*(q2 + sp)) - (2*h*t1)/sp - (h*t1)/(q2 + sp) - 
         (4*h*q2*t1)/(sp*(q2 + sp)) + (6*h*m2)/u1 + (2*h*q2)/u1 + 
         (h*q2^2)/(sp*u1) - (4*h*m2*q2)/((q2 + sp)*u1) + 
         (h*q2^2)/((q2 + sp)*u1) - (h*q2^3)/(sp*(q2 + sp)*u1) + (h*t1)/u1 + 
         (2*h*q2*t1)/(sp*u1) - (h*q2*t1)/((q2 + sp)*u1) - 
         (4*h*m2*q2*t1)/(sp*(q2 + sp)*u1) + (2*h*q2^2*t1)/(sp*(q2 + sp)*u1) - 
         (2*h*q2*t1^2)/(sp*(q2 + sp)*u1) - (h*u1)/(q2 + sp) + 
         (h*\[Epsilon])/4 - (h*q2*\[Epsilon])/(2*sp) - (h*q2*\[Epsilon])/
          (4*(q2 + sp)) + (h*q2^2*\[Epsilon])/(2*sp*(q2 + sp)) - 
         (h*q2*t1*\[Epsilon])/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/(4*u1) + 
         (h*q2^2*\[Epsilon])/(2*sp*u1) + (h*q2^2*\[Epsilon])/
          (4*(q2 + sp)*u1) - (h*q2^3*\[Epsilon])/(2*sp*(q2 + sp)*u1) + 
         (h*q2^2*t1*\[Epsilon])/(sp*(q2 + sp)*u1), (h*t1)/(sp*u1) + 
         (h*q2*t1)/(sp*(q2 + sp)*u1) + (h*\[Epsilon])/(4*(q2 + sp)) - 
         (h*q2*\[Epsilon])/(4*(q2 + sp)*u1)}, 
       {2*h - (4*h*q2)/u1 - (4*h*q2*t1)/(sp*u1) - (h*q2*\[Epsilon])/(2*u1) - 
         (h*q2*t1*\[Epsilon])/(sp*u1), -(h/(q2 + sp)) + h/u1 - 
         (2*h*q2)/((q2 + sp)*u1) - (2*h*q2*t1)/(sp*(q2 + sp)*u1) - 
         (h*q2*\[Epsilon])/(2*(q2 + sp)*u1) - (h*q2*t1*\[Epsilon])/
          (sp*(q2 + sp)*u1), 0}, {0, 0, 0}}, 
      {{-(h*q2*t1*\[Epsilon])/(2*sp*u1), -(h*q2*t1*\[Epsilon])/
         (2*sp*(q2 + sp)*u1), 0}, {0, 0, 0}, {0, 0, 0}}}, 
     {{{(4*h*m2*q2)/sp - (2*h*q2^2)/sp + (2*h*q2*t1)/sp + (2*h*q2*u1)/sp + 
         (h*q2^2*\[Epsilon])/(2*sp) - (h*q2*u1*\[Epsilon])/(2*sp), 
        (-4*h*m2*q2)/(sp*(q2 + sp)) + (2*h*q2^2)/(sp*(q2 + sp)) - 
         (2*h*q2*t1)/(sp*(q2 + sp)) - (2*h*q2*u1)/(sp*(q2 + sp)) + 
         (h*q2^2*\[Epsilon])/(2*sp*(q2 + sp)) - (h*q2*u1*\[Epsilon])/
          (2*sp*(q2 + sp)), 0}, {(4*h*q2)/sp - (h*q2*\[Epsilon])/sp, 
        (-2*h*q2)/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/(sp*(q2 + sp)), 0}, 
       {0, 0, 0}}, {{(-8*h*m2*q2)/(sp*u1) - (2*h*q2*t1)/(sp*u1) - 
         (h*q2*\[Epsilon])/(2*sp) + (h*q2^2*\[Epsilon])/(2*sp*u1), 
        -(h/sp) - (h*q2)/(sp*(q2 + sp)) + (h*q2)/(sp*u1) + 
         (h*q2^2)/(sp*(q2 + sp)*u1) - (h*q2*\[Epsilon])/(2*sp*(q2 + sp)) + 
         (h*q2^2*\[Epsilon])/(2*sp*(q2 + sp)*u1), 0}, {(-2*h*q2)/(sp*u1), 0, 
        0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}}
 
AG3List = {{1, 1, 1, 1}, {1, -1, 1, 1}, {1, 1, 1, -1}, {1, -1, 1, -1}, {0, 1, 
     1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 1, 1, 0}, {0, -1, 
     1, 1}, {0, 1, 1, -1}, {1, -1, 0, 1}, {1, -1, 1, 0}, {1, 0, -1, 1}, {1, 
     0, 1, -1}, {1, 1, 0, -1}, {0, 0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 
     0, 0, 1}, {1, 0, 1, 0}, {1, 1, 0, 0}, {-1, 0, 1, 0}, {-1, 1, 0, 0}, {0, 
     -1, 0, 1}, {0, -1, 1, 0}, {0, 0, -1, 1}, {0, 0, 1, -1}, {0, 1, 0, -1}, 
     {1, -1, 0, 0}, {1, 0, -1, 0}, {1, 0, 0, -1}, {0, 0, 0, 1}, {0, 0, 1, 0}, 
     {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 0}}
 
AL3List = {{1, 1, 1, 1}, {-1, 1, 1, 1}, {-2, 1, 1, 1}, {-1, -1, 1, 1}, {0, 1, 
     1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 0, 1, 1}, {-1, 1, 
     0, 1}, {-1, 1, 1, 0}, {0, -1, 1, 1}, {-2, 0, 1, 1}, {-2, 1, 0, 1}, {0, 
     0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 0, 0, 1}, {1, 0, 1, 0}, {-1, 
     0, 0, 1}, {-1, 0, 1, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}
 
AP3List = {{1, 1, 1, 1}, {-1, 1, 1, 1}, {1, -1, 1, 1}, {1, 1, 1, -1}, {1, -1, 
     1, -1}, {0, 1, 1, 1}, {1, 0, 1, 1}, {1, 1, 0, 1}, {1, 1, 1, 0}, {-1, 0, 
     1, 1}, {-1, 1, 0, 1}, {-1, 1, 1, 0}, {0, -1, 1, 1}, {0, 1, 1, -1}, {1, 
     -1, 0, 1}, {1, -1, 1, 0}, {1, 0, -1, 1}, {1, 0, 1, -1}, {1, 1, 0, -1}, 
     {0, 0, 1, 1}, {0, 1, 0, 1}, {0, 1, 1, 0}, {1, 0, 0, 1}, {1, 0, 1, 0}, 
     {1, 1, 0, 0}, {-1, 0, 0, 1}, {-1, 0, 1, 0}, {-1, 1, 0, 0}, {0, -1, 1, 
     0}, {0, 0, 1, -1}, {0, 1, 0, -1}, {1, -1, 0, 0}, {1, 0, -1, 0}, {1, 0, 
     0, -1}, {0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 
     0, 0}}
CoeffRQED[G] = {{{{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}, 
     {{{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}, 
     {{{0, 0, 4*m2^3 + 2*m2^2*q2 + m2^2*q2*\[Epsilon]}, 
       {0, 0, 3*m2^2 + m2*q2 + (4*m2^3)/u1 - (m2*q2^2)/u1 - m2*u1 + 
         (m2*q2*\[Epsilon])/2 + (m2^2*q2*\[Epsilon])/u1 - 
         (m2*q2^2*\[Epsilon])/(2*u1) - m2*u1*\[Epsilon] - 
         (m2*u1*\[Epsilon]^2)/4}, {0, 0, (4*m2^3)/u1^2 + (2*m2^2*q2)/u1^2 + 
         (3*m2^2)/u1 + (m2*q2)/u1 - (m2*\[Epsilon])/2 + (m2^2*q2*\[Epsilon])/
          u1^2 + (m2*q2*\[Epsilon])/(2*u1) - (m2*\[Epsilon]^2)/4}, 
       {0, 0, -(m2/u1) - (m2*\[Epsilon])/u1 - (m2*\[Epsilon]^2)/(4*u1)}, 
       {0, 0, 0}}, {{0, 4*m2^3 - m2*q2^2 - m2^2*sp + m2*sp^2 + 
         m2^2*q2*\[Epsilon] - (m2*q2^2*\[Epsilon])/2 - (m2^2*sp*\[Epsilon])/
          2 + (m2*sp^2*\[Epsilon])/4 - (m2*sp^2*\[Epsilon]^2)/8, 
        2*m2^2 + m2*q2 + 2*m2*sp - (m2^2*\[Epsilon])/2 + 
         (m2*q2*\[Epsilon])/2 + (5*m2*sp*\[Epsilon])/4 + 
         (m2*sp*\[Epsilon]^2)/8}, {0, 5*m2^2 + m2*q2 - q2^2/2 - (5*m2*sp)/2 + 
         (q2*sp)/2 + (4*m2^3)/t1 - (m2*q2^2)/t1 - (2*m2^2*sp)/t1 + 
         (m2*q2*sp)/t1 + (m2*sp^2)/(4*t1) - (q2*sp^2)/(4*t1) - (m2*t1)/2 + 
         (q2*t1)/2 - (3*sp*t1)/4 + (4*m2^3)/u1 - (2*m2^2*q2)/u1 - 
         (m2*q2^2)/u1 + q2^3/(2*u1) + (m2^2*sp)/u1 + (m2*q2*sp)/(2*u1) + 
         (m2*sp^2)/(4*u1) - (q2*sp^2)/(4*u1) + (2*m2^2*t1)/u1 + 
         (3*m2*q2*t1)/(2*u1) - (q2^2*t1)/(2*u1) + (q2*sp*t1)/(4*u1) + 
         (sp^2*t1)/(4*u1) + (q2*t1^2)/(4*u1) - (m2*u1)/2 + (q2*u1)/4 - 
         (sp*u1)/2 + (2*m2^2*u1)/t1 + (m2*q2*u1)/t1 - (m2*sp*u1)/(2*t1) - 
         (q2*sp*u1)/(4*t1) + (sp^2*u1)/(4*t1) + (sp*u1^2)/(4*t1) + 
         (m2^2*\[Epsilon])/2 + m2*q2*\[Epsilon] - (q2^2*\[Epsilon])/4 - 
         (5*m2*sp*\[Epsilon])/4 + (q2*sp*\[Epsilon])/2 + 
         (m2^2*q2*\[Epsilon])/t1 - (m2*q2^2*\[Epsilon])/(2*t1) - 
         (m2^2*sp*\[Epsilon])/(2*t1) + (m2*q2*sp*\[Epsilon])/(4*t1) + 
         (m2*sp^2*\[Epsilon])/(4*t1) - (m2*t1*\[Epsilon])/2 + 
         (3*q2*t1*\[Epsilon])/8 - (5*sp*t1*\[Epsilon])/8 + 
         (m2^2*q2*\[Epsilon])/u1 - (m2*q2^2*\[Epsilon])/u1 + 
         (q2^3*\[Epsilon])/(4*u1) + (m2*q2*sp*\[Epsilon])/(4*u1) + 
         (m2*sp^2*\[Epsilon])/(2*u1) - (q2*sp^2*\[Epsilon])/(4*u1) + 
         (m2*sp*t1*\[Epsilon])/(4*u1) + (q2*sp*t1*\[Epsilon])/(8*u1) + 
         (sp^2*t1*\[Epsilon])/(8*u1) + (q2*t1^2*\[Epsilon])/(4*u1) - 
         (m2*u1*\[Epsilon])/2 + (q2*u1*\[Epsilon])/4 - (3*sp*u1*\[Epsilon])/
          8 + (m2*q2*u1*\[Epsilon])/(2*t1) + (m2*sp*u1*\[Epsilon])/(4*t1) - 
         (q2*sp*u1*\[Epsilon])/(4*t1) + (sp*u1^2*\[Epsilon])/(4*t1) - 
         (3*m2*sp*\[Epsilon]^2)/8 + (q2*sp*\[Epsilon]^2)/8 - 
         (m2*sp^2*\[Epsilon]^2)/(4*t1) + (q2*sp^2*\[Epsilon]^2)/(8*t1) - 
         (m2*t1*\[Epsilon]^2)/8 - (sp*t1*\[Epsilon]^2)/16 + 
         (m2*sp^2*\[Epsilon]^2)/(8*u1) - (q2*sp^2*\[Epsilon]^2)/(16*u1) + 
         (m2*sp*t1*\[Epsilon]^2)/(8*u1) - (q2*sp*t1*\[Epsilon]^2)/(16*u1) + 
         (q2*t1^2*\[Epsilon]^2)/(16*u1) - (m2*u1*\[Epsilon]^2)/8 + 
         (q2*u1*\[Epsilon]^2)/16 + (m2*sp*u1*\[Epsilon]^2)/(8*t1) - 
         (q2*sp*u1*\[Epsilon]^2)/(16*t1) - (sp^2*u1*\[Epsilon]^2)/(8*t1) + 
         (sp*u1^2*\[Epsilon]^2)/(16*t1) - (q2*sp*\[Epsilon]^3)/16 - 
         (q2*sp^2*\[Epsilon]^3)/(32*t1) - (q2*t1*\[Epsilon]^3)/32 + 
         (sp*t1*\[Epsilon]^3)/32 + (q2*sp^2*\[Epsilon]^3)/(32*u1) + 
         (q2*sp*t1*\[Epsilon]^3)/(32*u1) + (sp*u1*\[Epsilon]^3)/32 + 
         (sp^2*u1*\[Epsilon]^3)/(32*t1), (13*m2)/4 + q2/4 - (3*sp)/4 - 
         (m2*q2)/t1 + q2^2/(2*t1) - (m2*sp)/(4*t1) - (5*t1)/4 + (2*m2^2)/u1 - 
         (3*m2*q2)/(4*u1) - q2^2/(4*u1) - (3*m2*t1)/(4*u1) + 
         (3*q2*t1)/(4*u1) - t1^2/(4*u1) - u1/4 + (m2*u1)/t1 - (q2*u1)/t1 + 
         u1^2/(2*t1) + m2^2/(sp + t1 + u1) + (5*m2*q2)/(4*(sp + t1 + u1)) - 
         (3*q2^2)/(4*(sp + t1 + u1)) + (m2*sp)/(sp + t1 + u1) - 
         (3*q2*sp)/(4*(sp + t1 + u1)) + sp^2/(4*(sp + t1 + u1)) + 
         (4*m2^3)/(t1*(sp + t1 + u1)) - (2*m2^2*q2)/(t1*(sp + t1 + u1)) - 
         (m2*q2^2)/(t1*(sp + t1 + u1)) + q2^3/(2*t1*(sp + t1 + u1)) - 
         (4*m2^2*sp)/(t1*(sp + t1 + u1)) + (m2*q2*sp)/(2*t1*(sp + t1 + u1)) + 
         (m2*sp^2)/(2*t1*(sp + t1 + u1)) + (m2*t1)/(sp + t1 + u1) - 
         (q2*t1)/(4*(sp + t1 + u1)) + (sp*t1)/(sp + t1 + u1) + 
         t1^2/(2*(sp + t1 + u1)) + (4*m2^3)/(u1*(sp + t1 + u1)) - 
         (m2*q2^2)/(u1*(sp + t1 + u1)) - (m2^2*sp)/(u1*(sp + t1 + u1)) - 
         (m2*q2*sp)/(4*u1*(sp + t1 + u1)) + (q2^2*sp)/(4*u1*(sp + t1 + u1)) + 
         (m2*sp^2)/(4*u1*(sp + t1 + u1)) - (q2*sp^2)/(4*u1*(sp + t1 + u1)) + 
         (m2^2*t1)/(u1*(sp + t1 + u1)) + (3*m2*q2*t1)/(4*u1*(sp + t1 + u1)) + 
         (q2^2*t1)/(4*u1*(sp + t1 + u1)) + (m2*sp*t1)/(2*u1*(sp + t1 + u1)) - 
         (3*q2*sp*t1)/(4*u1*(sp + t1 + u1)) + (sp^2*t1)/
          (4*u1*(sp + t1 + u1)) + (m2*t1^2)/(4*u1*(sp + t1 + u1)) - 
         (q2*t1^2)/(2*u1*(sp + t1 + u1)) + (sp*t1^2)/(2*u1*(sp + t1 + u1)) + 
         t1^3/(4*u1*(sp + t1 + u1)) - (m2*u1)/(4*(sp + t1 + u1)) + 
         (3*q2*u1)/(2*(sp + t1 + u1)) + (sp*u1)/(2*(sp + t1 + u1)) + 
         (2*m2^2*u1)/(t1*(sp + t1 + u1)) + (2*m2*q2*u1)/(t1*(sp + t1 + u1)) - 
         (3*q2^2*u1)/(2*t1*(sp + t1 + u1)) - (m2*sp*u1)/
          (2*t1*(sp + t1 + u1)) - (3*u1^2)/(4*(sp + t1 + u1)) - 
         (m2*u1^2)/(t1*(sp + t1 + u1)) + (3*q2*u1^2)/(2*t1*(sp + t1 + u1)) - 
         u1^3/(2*t1*(sp + t1 + u1)) + (3*m2*\[Epsilon])/2 + 
         (q2*\[Epsilon])/8 - (sp*\[Epsilon])/2 + (m2^2*\[Epsilon])/(2*t1) - 
         (3*m2*q2*\[Epsilon])/(4*t1) + (q2^2*\[Epsilon])/(4*t1) + 
         (m2*sp*\[Epsilon])/(4*t1) - (7*t1*\[Epsilon])/8 + 
         (m2*q2*\[Epsilon])/u1 - (3*q2^2*\[Epsilon])/(8*u1) - 
         (q2*sp*\[Epsilon])/(4*u1) - (m2*t1*\[Epsilon])/(2*u1) + 
         (q2*t1*\[Epsilon])/(4*u1) - (t1^2*\[Epsilon])/(8*u1) - 
         (u1*\[Epsilon])/8 + (3*m2*u1*\[Epsilon])/(4*t1) - 
         (q2*u1*\[Epsilon])/(2*t1) + (u1^2*\[Epsilon])/(4*t1) - 
         (m2^2*\[Epsilon])/(sp + t1 + u1) + (9*m2*q2*\[Epsilon])/
          (4*(sp + t1 + u1)) - (5*q2^2*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (m2*sp*\[Epsilon])/(4*(sp + t1 + u1)) + (3*q2*sp*\[Epsilon])/
          (8*(sp + t1 + u1)) - (sp^2*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (m2^2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (q2^3*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (m2^2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         (q2*sp^2*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/
          (2*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (t1^2*\[Epsilon])/(8*(sp + t1 + u1)) + (m2^2*q2*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (m2*q2*sp*\[Epsilon])/(4*u1*(sp + t1 + u1)) + (q2^2*sp*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (3*m2*sp*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (3*q2*sp*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (sp^2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (m2*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (sp*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (t1^3*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (7*m2*u1*\[Epsilon])/(4*(sp + t1 + u1)) + (5*q2*u1*\[Epsilon])/
          (4*(sp + t1 + u1)) - (sp*u1*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (m2^2*u1*\[Epsilon])/(t1*(sp + t1 + u1)) + (2*m2*q2*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (3*q2^2*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (m2*sp*u1*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (q2*sp*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) - (sp^2*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (5*t1*u1*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (5*u1^2*\[Epsilon])/(8*(sp + t1 + u1)) - (m2*u1^2*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (3*q2*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (sp*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (u1^3*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         (m2*\[Epsilon]^2)/4 - (sp*\[Epsilon]^2)/16 + (m2*sp*\[Epsilon]^2)/
          (8*t1) - (5*t1*\[Epsilon]^2)/16 - (3*q2*sp*\[Epsilon]^2)/(16*u1) - 
         (3*q2*t1*\[Epsilon]^2)/(16*u1) - (u1*\[Epsilon]^2)/8 - 
         (m2*sp*\[Epsilon]^2)/(8*(sp + t1 + u1)) + (3*q2*sp*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) - (3*sp^2*\[Epsilon]^2)/(16*(sp + t1 + u1)) - 
         (3*m2*sp^2*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) + 
         (3*q2*sp^2*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)) + 
         (q2*t1*\[Epsilon]^2)/(16*(sp + t1 + u1)) - (3*sp*t1*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) - (t1^2*\[Epsilon]^2)/(16*(sp + t1 + u1)) + 
         (m2*sp^2*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) + 
         (m2*sp*t1*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) - 
         (3*sp*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) - 
         (3*sp^2*u1*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)) - 
         (t1*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) - (sp*\[Epsilon]^3)/16 - 
         (t1*\[Epsilon]^3)/32 - (q2*sp*\[Epsilon]^3)/(32*(sp + t1 + u1)) + 
         (sp^2*\[Epsilon]^3)/(32*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1)) + (sp*t1*\[Epsilon]^3)/(32*(sp + t1 + u1)) + 
         (sp*u1*\[Epsilon]^3)/(32*(sp + t1 + u1)) + (sp^2*u1*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1))}, {0, m2/2 + (3*q2)/2 - (3*sp)/2 + 
         (8*m2^2)/t1 - q2^2/t1 + (m2*sp)/(4*t1) + (9*q2*sp)/(4*t1) - 
         sp^2/t1 + (5*m2^2)/u1 + (3*m2*q2)/(2*u1) - (2*q2^2)/u1 + 
         (m2*sp)/(4*u1) + (11*q2*sp)/(4*u1) - sp^2/u1 + (4*m2^3)/(t1*u1) - 
         (2*m2^2*q2)/(t1*u1) - (m2*q2^2)/(t1*u1) + q2^3/(2*t1*u1) + 
         (6*m2^2*sp)/(t1*u1) + (3*m2*q2*sp)/(2*t1*u1) - 
         (3*q2^2*sp)/(2*t1*u1) + (3*q2*sp^2)/(2*t1*u1) - sp^3/(2*t1*u1) + 
         (m2*t1)/(2*u1) + (q2*t1)/u1 - (sp*t1)/u1 - t1^2/(4*u1) - u1/4 + 
         (m2*u1)/t1 + (q2*u1)/t1 - (sp*u1)/t1 - u1^2/(2*t1) + 
         (3*q2*\[Epsilon])/8 - (7*sp*\[Epsilon])/8 + (m2^2*\[Epsilon])/
          (2*t1) + (5*m2*q2*\[Epsilon])/(4*t1) - (q2^2*\[Epsilon])/(2*t1) - 
         (3*m2*sp*\[Epsilon])/(4*t1) + (3*q2*sp*\[Epsilon])/(4*t1) - 
         (sp^2*\[Epsilon])/(2*t1) + (m2*q2*\[Epsilon])/(4*u1) - 
         (q2^2*\[Epsilon])/(2*u1) - (m2*sp*\[Epsilon])/u1 + 
         (q2*sp*\[Epsilon])/u1 - (sp^2*\[Epsilon])/(2*u1) + 
         (m2^2*q2*\[Epsilon])/(t1*u1) - (m2*q2^2*\[Epsilon])/(t1*u1) + 
         (q2^3*\[Epsilon])/(4*t1*u1) + (m2*q2*sp*\[Epsilon])/(t1*u1) - 
         (q2^2*sp*\[Epsilon])/(2*t1*u1) + (q2*sp^2*\[Epsilon])/(2*t1*u1) - 
         (sp^3*\[Epsilon])/(4*t1*u1) - (3*m2*t1*\[Epsilon])/(4*u1) + 
         (3*q2*t1*\[Epsilon])/(8*u1) - (5*sp*t1*\[Epsilon])/(8*u1) - 
         (t1^2*\[Epsilon])/(4*u1) - (u1*\[Epsilon])/4 - (3*m2*u1*\[Epsilon])/
          (4*t1) + (3*q2*u1*\[Epsilon])/(4*t1) - (sp*u1*\[Epsilon])/(2*t1) - 
         (u1^2*\[Epsilon])/(2*t1) - (m2*\[Epsilon]^2)/8 + 
         (q2*\[Epsilon]^2)/16 - (3*sp*\[Epsilon]^2)/8 - (m2*sp*\[Epsilon]^2)/
          (4*t1) + (q2*sp*\[Epsilon]^2)/(16*t1) - (3*sp^2*\[Epsilon]^2)/
          (8*t1) - (5*m2*sp*\[Epsilon]^2)/(8*u1) + (7*q2*sp*\[Epsilon]^2)/
          (16*u1) - (3*sp^2*\[Epsilon]^2)/(8*u1) - (3*m2*sp^2*\[Epsilon]^2)/
          (8*t1*u1) + (3*q2*sp^2*\[Epsilon]^2)/(16*t1*u1) - 
         (3*sp^3*\[Epsilon]^2)/(16*t1*u1) - (m2*t1*\[Epsilon]^2)/(4*u1) + 
         (5*q2*t1*\[Epsilon]^2)/(16*u1) - (sp*t1*\[Epsilon]^2)/(4*u1) - 
         (t1^2*\[Epsilon]^2)/(16*u1) - (u1*\[Epsilon]^2)/16 - 
         (m2*u1*\[Epsilon]^2)/(4*t1) + (q2*u1*\[Epsilon]^2)/(8*t1) - 
         (sp*u1*\[Epsilon]^2)/(8*t1) - (u1^2*\[Epsilon]^2)/(8*t1) + 
         (3*sp*\[Epsilon]^3)/32 + (sp^2*\[Epsilon]^3)/(16*t1) - 
         (3*q2*sp*\[Epsilon]^3)/(32*u1) + (sp^2*\[Epsilon]^3)/(16*u1) - 
         (q2*sp^2*\[Epsilon]^3)/(32*t1*u1) + (sp^3*\[Epsilon]^3)/(32*t1*u1) - 
         (q2*t1*\[Epsilon]^3)/(16*u1) + (sp*t1*\[Epsilon]^3)/(32*u1), 
        -3/4 + (7*m2)/(2*t1) - q2/(2*t1) - (5*sp)/(4*t1) + (2*m2^2)/u1^2 + 
         (m2*q2)/u1^2 - (2*m2*sp)/u1^2 - (q2*sp)/u1^2 - (2*m2*t1)/u1^2 - 
         (q2*t1)/u1^2 + (15*m2)/(4*u1) + (9*q2)/(4*u1) - sp/(2*u1) + 
         (2*m2^2)/(t1*u1) + (m2*q2)/(2*t1*u1) - (3*q2^2)/(4*t1*u1) - 
         (m2*sp)/(4*t1*u1) + (3*q2*sp)/(2*t1*u1) - sp^2/(2*t1*u1) - t1/u1 + 
         (3*u1)/(4*t1) + (3*m2)/(4*(sp + t1 + u1)) + q2/(sp + t1 + u1) + 
         (5*sp)/(4*(sp + t1 + u1)) + (8*m2^2)/(t1*(sp + t1 + u1)) + 
         (m2*q2)/(2*t1*(sp + t1 + u1)) - (5*q2^2)/(4*t1*(sp + t1 + u1)) + 
         (m2*sp)/(4*t1*(sp + t1 + u1)) + (q2*sp)/(4*t1*(sp + t1 + u1)) + 
         sp^2/(4*t1*(sp + t1 + u1)) + t1/(sp + t1 + u1) + 
         (4*m2^3)/(u1^2*(sp + t1 + u1)) + (2*m2^2*q2)/(u1^2*(sp + t1 + u1)) + 
         (m2^2*sp)/(u1^2*(sp + t1 + u1)) + (m2*q2*sp)/
          (2*u1^2*(sp + t1 + u1)) + (m2*sp^2)/(u1^2*(sp + t1 + u1)) + 
         (q2*sp^2)/(2*u1^2*(sp + t1 + u1)) + (m2^2*t1)/
          (u1^2*(sp + t1 + u1)) + (m2*q2*t1)/(2*u1^2*(sp + t1 + u1)) + 
         (2*m2*sp*t1)/(u1^2*(sp + t1 + u1)) + (q2*sp*t1)/
          (u1^2*(sp + t1 + u1)) + (m2*t1^2)/(u1^2*(sp + t1 + u1)) + 
         (q2*t1^2)/(2*u1^2*(sp + t1 + u1)) + (7*m2^2)/(u1*(sp + t1 + u1)) + 
         (2*m2*q2)/(u1*(sp + t1 + u1)) - q2^2/(4*u1*(sp + t1 + u1)) + 
         (3*m2*sp)/(u1*(sp + t1 + u1)) - (3*q2*sp)/(4*u1*(sp + t1 + u1)) + 
         (4*m2^3)/(t1*u1*(sp + t1 + u1)) - (m2*q2^2)/(t1*u1*(sp + t1 + u1)) + 
         (2*m2^2*sp)/(t1*u1*(sp + t1 + u1)) - (m2*q2*sp)/
          (2*t1*u1*(sp + t1 + u1)) - (q2^2*sp)/(4*t1*u1*(sp + t1 + u1)) + 
         (m2*sp^2)/(4*t1*u1*(sp + t1 + u1)) - (q2*sp^2)/
          (4*t1*u1*(sp + t1 + u1)) + (9*m2*t1)/(4*u1*(sp + t1 + u1)) - 
         (q2*t1)/(2*u1*(sp + t1 + u1)) + (3*sp*t1)/(4*u1*(sp + t1 + u1)) + 
         (3*t1^2)/(4*u1*(sp + t1 + u1)) - (3*u1)/(4*(sp + t1 + u1)) + 
         (m2*u1)/(2*t1*(sp + t1 + u1)) + (5*q2*u1)/(2*t1*(sp + t1 + u1)) - 
         (5*u1^2)/(4*t1*(sp + t1 + u1)) - \[Epsilon]/2 + 
         (m2*\[Epsilon])/(4*t1) - (sp*\[Epsilon])/(4*t1) - 
         (m2^2*\[Epsilon])/(2*u1^2) + (m2*q2*\[Epsilon])/(4*u1^2) - 
         (5*m2*sp*\[Epsilon])/(4*u1^2) - (9*q2*sp*\[Epsilon])/(8*u1^2) - 
         (5*m2*t1*\[Epsilon])/(4*u1^2) - (9*q2*t1*\[Epsilon])/(8*u1^2) + 
         (m2*\[Epsilon])/(2*u1) + (q2*\[Epsilon])/(2*u1) + 
         (sp*\[Epsilon])/(8*u1) - (m2^2*\[Epsilon])/(2*t1*u1) + 
         (3*m2*q2*\[Epsilon])/(4*t1*u1) - (q2^2*\[Epsilon])/(4*t1*u1) - 
         (m2*sp*\[Epsilon])/(4*t1*u1) + (q2*sp*\[Epsilon])/(4*t1*u1) - 
         (sp^2*\[Epsilon])/(4*t1*u1) - (3*t1*\[Epsilon])/(4*u1) - 
         (u1*\[Epsilon])/(4*t1) - (m2*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (5*q2*\[Epsilon])/(4*(sp + t1 + u1)) - (sp*\[Epsilon])/
          (8*(sp + t1 + u1)) + (m2^2*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (7*m2*q2*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (3*q2*sp*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (sp^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (t1*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (m2^2*q2*\[Epsilon])/(u1^2*(sp + t1 + u1)) + (m2^2*sp*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) + (3*q2*sp^2*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) + (m2^2*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) + (m2*sp*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) + (3*q2*sp*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) + (m2*t1^2*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) + (3*q2*t1^2*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) + (m2^2*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (7*m2*q2*\[Epsilon])/(4*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (7*m2*sp*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (m2^2*q2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) + (m2^2*sp*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (5*sp*t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) + (5*t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (u1*\[Epsilon])/(sp + t1 + u1) - 
         (5*m2*u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) + (3*q2*u1*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (sp*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) - 
         (3*u1^2*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (5*\[Epsilon]^2)/16 - 
         (3*m2*\[Epsilon]^2)/(8*t1) + (q2*\[Epsilon]^2)/(8*t1) - 
         (sp*\[Epsilon]^2)/(16*t1) - (m2*q2*\[Epsilon]^2)/(8*u1^2) - 
         (m2*sp*\[Epsilon]^2)/(8*u1^2) - (3*q2*sp*\[Epsilon]^2)/(8*u1^2) - 
         (m2*t1*\[Epsilon]^2)/(8*u1^2) - (3*q2*t1*\[Epsilon]^2)/(8*u1^2) + 
         (m2*\[Epsilon]^2)/(8*u1) - (q2*\[Epsilon]^2)/(16*u1) - 
         (sp*\[Epsilon]^2)/(8*u1) - (m2*q2*\[Epsilon]^2)/(8*t1*u1) + 
         (q2^2*\[Epsilon]^2)/(16*t1*u1) - (m2*sp*\[Epsilon]^2)/(8*t1*u1) - 
         (3*sp^2*\[Epsilon]^2)/(16*t1*u1) - (5*t1*\[Epsilon]^2)/(16*u1) - 
         (5*u1*\[Epsilon]^2)/(16*t1) + (q2*\[Epsilon]^2)/(8*(sp + t1 + u1)) - 
         (5*sp*\[Epsilon]^2)/(16*(sp + t1 + u1)) + (m2*q2*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) + (m2*sp*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (5*sp^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) - (m2*sp*t1*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)) - (m2*t1^2*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (5*q2*sp*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon]^2)/
          (8*t1*u1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon]^2)/
          (4*t1*u1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon]^2)/
          (8*t1*u1*(sp + t1 + u1)) + (3*q2*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (sp*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (t1^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) - 
         (m2*u1*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) + (q2*u1*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) - (u1^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^3)/(32*u1^2) - 
         (q2*t1*\[Epsilon]^3)/(32*u1^2) + (3*sp*\[Epsilon]^3)/(32*u1) + 
         (sp^2*\[Epsilon]^3)/(32*t1*u1) + (t1*\[Epsilon]^3)/(32*u1) + 
         (sp*\[Epsilon]^3)/(32*(sp + t1 + u1)) + (sp^2*\[Epsilon]^3)/
          (16*t1*(sp + t1 + u1)) - (t1*\[Epsilon]^3)/(32*(sp + t1 + u1)) - 
         (q2*sp^2*\[Epsilon]^3)/(32*u1^2*(sp + t1 + u1)) - 
         (q2*sp*t1*\[Epsilon]^3)/(16*u1^2*(sp + t1 + u1)) - 
         (q2*t1^2*\[Epsilon]^3)/(32*u1^2*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon]^3)/(16*u1*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon]^3)/
          (32*t1*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) - (sp*t1*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1))}, {0, 0, 3/(4*t1) - u1^(-1) + q2/(4*t1*u1) - 
         sp/(2*t1*u1) - 1/(2*(sp + t1 + u1)) + m2/(t1*(sp + t1 + u1)) + 
         (5*q2)/(4*t1*(sp + t1 + u1)) - sp/(4*t1*(sp + t1 + u1)) + 
         q2/(2*u1*(sp + t1 + u1)) + sp/(u1*(sp + t1 + u1)) + 
         (2*m2^2)/(t1*u1*(sp + t1 + u1)) + (m2*q2)/(t1*u1*(sp + t1 + u1)) + 
         (m2*sp)/(2*t1*u1*(sp + t1 + u1)) + (q2*sp)/
          (2*t1*u1*(sp + t1 + u1)) + sp^2/(4*t1*u1*(sp + t1 + u1)) + 
         (3*t1)/(4*u1*(sp + t1 + u1)) - (5*u1)/(4*t1*(sp + t1 + u1)) - 
         \[Epsilon]/(2*u1) - (m2*\[Epsilon])/(4*t1*u1) - 
         (3*\[Epsilon])/(4*(sp + t1 + u1)) - (3*m2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (q2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) - (3*m2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(2*u1*(sp + t1 + u1)) + 
         (3*sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) + (3*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (u1*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (3*\[Epsilon]^2)/(16*t1) - \[Epsilon]^2/(8*u1) - 
         (q2*\[Epsilon]^2)/(16*t1*u1) - \[Epsilon]^2/(8*(sp + t1 + u1)) - 
         (m2*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) + (3*q2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (sp*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)) - 
         (m2*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (sp*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) - 
         (m2*sp*\[Epsilon]^2)/(8*t1*u1*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon]^2)/(8*t1*u1*(sp + t1 + u1)) - 
         (sp^2*\[Epsilon]^2)/(8*t1*u1*(sp + t1 + u1)) - 
         (t1*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) - (3*u1*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) + (sp*\[Epsilon]^3)/(32*u1*(sp + t1 + u1)) + 
         (sp^2*\[Epsilon]^3)/(32*t1*u1*(sp + t1 + u1))}, 
       {0, 0, -1/(2*t1*(sp + t1 + u1)) - 1/(4*u1*(sp + t1 + u1)) - 
         sp/(4*t1*u1*(sp + t1 + u1)) - \[Epsilon]/(2*t1*(sp + t1 + u1)) - 
         \[Epsilon]/(4*u1*(sp + t1 + u1)) - (sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - \[Epsilon]^2/(8*t1*(sp + t1 + u1)) - 
         \[Epsilon]^2/(16*u1*(sp + t1 + u1)) - (sp*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1))}}, 
      {{4*m2^3 + 2*m2^2*q2 + m2^2*q2*\[Epsilon], 2*m2^2 + m2*q2 + 2*m2*sp - 
         (m2^2*\[Epsilon])/2 + (m2*q2*\[Epsilon])/2 + (5*m2*sp*\[Epsilon])/
          4 + (m2*sp*\[Epsilon]^2)/8, 2*m2 + (3*m2*\[Epsilon])/2 + 
         (m2*\[Epsilon]^2)/4}, {3*m2^2 + (3*m2*q2)/2 + (4*m2^3)/t1 + 
         (2*m2^2*q2)/t1 - m2*t1 - (q2*t1)/2 + (3*m2*q2*\[Epsilon])/4 + 
         (m2^2*q2*\[Epsilon])/t1 - m2*t1*\[Epsilon] - (3*q2*t1*\[Epsilon])/
          4 - (m2*t1*\[Epsilon]^2)/4 - (3*q2*t1*\[Epsilon]^2)/8 - 
         (q2*t1*\[Epsilon]^3)/16, (13*m2)/4 + q2/2 - (3*sp)/4 - m2^2/t1 + 
         (5*m2*q2)/(4*t1) - q2^2/(4*t1) - t1/2 + (3*m2^2)/u1 - (m2*q2)/u1 - 
         (m2*sp)/(4*u1) - (q2*sp)/(4*u1) + (3*m2*t1)/(2*u1) - 
         (q2*t1)/(2*u1) + t1^2/(4*u1) - u1 - (5*m2*u1)/(4*t1) + 
         (q2*u1)/(4*t1) + m2^2/(sp + t1 + u1) + (5*m2*q2)/
          (4*(sp + t1 + u1)) - (3*q2^2)/(4*(sp + t1 + u1)) + 
         (m2*sp)/(sp + t1 + u1) - (3*q2*sp)/(4*(sp + t1 + u1)) + 
         sp^2/(4*(sp + t1 + u1)) + (4*m2^3)/(t1*(sp + t1 + u1)) - 
         (m2*q2^2)/(t1*(sp + t1 + u1)) - (m2^2*sp)/(t1*(sp + t1 + u1)) - 
         (m2*q2*sp)/(4*t1*(sp + t1 + u1)) + (q2^2*sp)/(4*t1*(sp + t1 + u1)) + 
         (m2*sp^2)/(4*t1*(sp + t1 + u1)) - (q2*sp^2)/(4*t1*(sp + t1 + u1)) - 
         (m2*t1)/(4*(sp + t1 + u1)) + (3*q2*t1)/(2*(sp + t1 + u1)) + 
         (sp*t1)/(2*(sp + t1 + u1)) - (3*t1^2)/(4*(sp + t1 + u1)) + 
         (4*m2^3)/(u1*(sp + t1 + u1)) - (2*m2^2*q2)/(u1*(sp + t1 + u1)) - 
         (m2*q2^2)/(u1*(sp + t1 + u1)) + q2^3/(2*u1*(sp + t1 + u1)) - 
         (4*m2^2*sp)/(u1*(sp + t1 + u1)) + (m2*q2*sp)/(2*u1*(sp + t1 + u1)) + 
         (m2*sp^2)/(2*u1*(sp + t1 + u1)) + (2*m2^2*t1)/(u1*(sp + t1 + u1)) + 
         (2*m2*q2*t1)/(u1*(sp + t1 + u1)) - (3*q2^2*t1)/
          (2*u1*(sp + t1 + u1)) - (m2*sp*t1)/(2*u1*(sp + t1 + u1)) - 
         (m2*t1^2)/(u1*(sp + t1 + u1)) + (3*q2*t1^2)/(2*u1*(sp + t1 + u1)) - 
         t1^3/(2*u1*(sp + t1 + u1)) + (m2*u1)/(sp + t1 + u1) - 
         (q2*u1)/(4*(sp + t1 + u1)) + (sp*u1)/(sp + t1 + u1) + 
         (m2^2*u1)/(t1*(sp + t1 + u1)) + (3*m2*q2*u1)/(4*t1*(sp + t1 + u1)) + 
         (q2^2*u1)/(4*t1*(sp + t1 + u1)) + (m2*sp*u1)/(2*t1*(sp + t1 + u1)) - 
         (3*q2*sp*u1)/(4*t1*(sp + t1 + u1)) + (sp^2*u1)/
          (4*t1*(sp + t1 + u1)) + u1^2/(2*(sp + t1 + u1)) + 
         (m2*u1^2)/(4*t1*(sp + t1 + u1)) - (q2*u1^2)/(2*t1*(sp + t1 + u1)) + 
         (sp*u1^2)/(2*t1*(sp + t1 + u1)) + u1^3/(4*t1*(sp + t1 + u1)) + 
         (3*m2*\[Epsilon])/2 + (3*q2*\[Epsilon])/8 - (sp*\[Epsilon])/2 - 
         (m2^2*\[Epsilon])/(2*t1) + (m2*q2*\[Epsilon])/(2*t1) - 
         (q2^2*\[Epsilon])/(8*t1) - (m2*sp*\[Epsilon])/(4*t1) + 
         (q2*sp*\[Epsilon])/(8*t1) - (3*t1*\[Epsilon])/8 + 
         (m2^2*\[Epsilon])/u1 - (3*m2*q2*\[Epsilon])/(4*u1) + 
         (m2*sp*\[Epsilon])/(2*u1) - (q2*sp*\[Epsilon])/(2*u1) + 
         (3*m2*t1*\[Epsilon])/(4*u1) - (3*q2*t1*\[Epsilon])/(8*u1) + 
         (sp*t1*\[Epsilon])/(8*u1) - (5*u1*\[Epsilon])/8 - 
         (m2*u1*\[Epsilon])/(2*t1) - (sp*u1*\[Epsilon])/(8*t1) + 
         (u1^2*\[Epsilon])/(8*t1) - (m2^2*\[Epsilon])/(sp + t1 + u1) + 
         (7*m2*q2*\[Epsilon])/(4*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (8*(sp + t1 + u1)) + (m2*sp*\[Epsilon])/(4*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon])/(8*(sp + t1 + u1)) - (sp^2*\[Epsilon])/
          (8*(sp + t1 + u1)) + (m2^2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (m2*q2^2*\[Epsilon])/(2*t1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (q2^2*sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (7*m2*t1*\[Epsilon])/(4*(sp + t1 + u1)) + 
         (3*q2*t1*\[Epsilon])/(4*(sp + t1 + u1)) - (sp*t1*\[Epsilon])/
          (2*(sp + t1 + u1)) - (5*t1^2*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (m2^2*q2*\[Epsilon])/(u1*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (q2^3*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (m2^2*sp*\[Epsilon])/(u1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (m2^2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (3*m2*q2*t1*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (q2^2*t1*\[Epsilon])/(2*u1*(sp + t1 + u1)) - (m2*sp*t1*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (q2*sp*t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (sp^2*t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) - (m2*t1^2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (sp*t1^2*\[Epsilon])/(4*u1*(sp + t1 + u1)) - (t1^3*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (m2*u1*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (q2*u1*\[Epsilon])/(4*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (q2^2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (3*m2*sp*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (3*q2*sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (sp^2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (5*t1*u1*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (u1^2*\[Epsilon])/(8*(sp + t1 + u1)) + (m2*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (sp*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (u1^3*\[Epsilon])/(8*t1*(sp + t1 + u1)) + 
         (m2*\[Epsilon]^2)/4 + (q2*\[Epsilon]^2)/2 - (sp*\[Epsilon]^2)/16 - 
         (3*m2*sp*\[Epsilon]^2)/(8*t1) + (q2*sp*\[Epsilon]^2)/(8*t1) - 
         (3*t1*\[Epsilon]^2)/16 + (m2*q2*\[Epsilon]^2)/(4*u1) - 
         (q2^2*\[Epsilon]^2)/(8*u1) + (m2*sp*\[Epsilon]^2)/(2*u1) - 
         (q2*sp*\[Epsilon]^2)/(4*u1) + (3*q2*t1*\[Epsilon]^2)/(16*u1) + 
         (sp*t1*\[Epsilon]^2)/(8*u1) - (t1^2*\[Epsilon]^2)/(16*u1) - 
         (u1*\[Epsilon]^2)/4 - (q2*u1*\[Epsilon]^2)/(16*t1) - 
         (sp*u1*\[Epsilon]^2)/(8*t1) + (u1^2*\[Epsilon]^2)/(16*t1) - 
         (m2*q2*\[Epsilon]^2)/(4*(sp + t1 + u1)) + (q2^2*\[Epsilon]^2)/
          (8*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/(8*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon]^2)/(16*(sp + t1 + u1)) - (3*sp^2*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/(4*(sp + t1 + u1)) - 
         (3*sp*t1*\[Epsilon]^2)/(16*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) + (q2^2*sp*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (3*m2*sp^2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (3*q2*sp^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (3*sp^2*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) - 
         (3*sp*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) + (m2*sp*u1*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) - (t1*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) - 
         (u1^2*\[Epsilon]^2)/(16*(sp + t1 + u1)) + (q2*\[Epsilon]^3)/32 - 
         (sp*\[Epsilon]^3)/16 - (q2*sp*\[Epsilon]^3)/(32*t1) + 
         (q2*sp*\[Epsilon]^3)/(16*u1) - (sp*t1*\[Epsilon]^3)/(32*u1) - 
         (u1*\[Epsilon]^3)/32 + (sp*u1*\[Epsilon]^3)/(32*t1) - 
         (q2*sp*\[Epsilon]^3)/(32*(sp + t1 + u1)) + (sp^2*\[Epsilon]^3)/
          (32*(sp + t1 + u1)) + (sp*t1*\[Epsilon]^3)/(32*(sp + t1 + u1)) - 
         (q2*sp^2*\[Epsilon]^3)/(32*u1*(sp + t1 + u1)) + 
         (sp^2*t1*\[Epsilon]^3)/(32*u1*(sp + t1 + u1)) + 
         (sp*u1*\[Epsilon]^3)/(32*(sp + t1 + u1)), -2 - (5*m2)/(2*t1) + 
         (3*q2)/(4*t1) - (5*m2)/(2*u1) + q2/(2*u1) - (3*t1)/(4*u1) - 
         (3*u1)/(4*t1) + (5*m2)/(sp + t1 + u1) - (5*q2)/(2*(sp + t1 + u1)) + 
         (3*sp)/(4*(sp + t1 + u1)) - (2*m2^2)/(t1*(sp + t1 + u1)) - 
         (3*m2*q2)/(2*t1*(sp + t1 + u1)) + q2^2/(2*t1*(sp + t1 + u1)) + 
         (m2*sp)/(t1*(sp + t1 + u1)) - (q2*sp)/(4*t1*(sp + t1 + u1)) + 
         (9*t1)/(4*(sp + t1 + u1)) - (2*m2^2)/(u1*(sp + t1 + u1)) - 
         (3*m2*q2)/(2*u1*(sp + t1 + u1)) + q2^2/(2*u1*(sp + t1 + u1)) + 
         (m2*sp)/(u1*(sp + t1 + u1)) - (q2*sp)/(2*u1*(sp + t1 + u1)) + 
         (3*m2*t1)/(2*u1*(sp + t1 + u1)) - (5*q2*t1)/(4*u1*(sp + t1 + u1)) + 
         (sp*t1)/(2*u1*(sp + t1 + u1)) + (3*t1^2)/(4*u1*(sp + t1 + u1)) + 
         (9*u1)/(4*(sp + t1 + u1)) + (3*m2*u1)/(2*t1*(sp + t1 + u1)) - 
         (5*q2*u1)/(4*t1*(sp + t1 + u1)) + (sp*u1)/(4*t1*(sp + t1 + u1)) + 
         (3*u1^2)/(4*t1*(sp + t1 + u1)) - (3*\[Epsilon])/4 - 
         (m2*\[Epsilon])/(4*t1) - (m2*\[Epsilon])/(4*u1) - 
         (q2*\[Epsilon])/(4*u1) + (3*m2*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (3*q2*\[Epsilon])/(4*(sp + t1 + u1)) - (sp*\[Epsilon])/
          (2*(sp + t1 + u1)) + (3*m2*sp*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         (3*q2*sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) - (7*t1*\[Epsilon])/
          (8*(sp + t1 + u1)) + (3*m2*sp*\[Epsilon])/(4*u1*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (sp*t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (7*u1*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (m2*u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (3*sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (u1^2*\[Epsilon])/(8*t1*(sp + t1 + u1)) + 
         (3*\[Epsilon]^2)/8 + (m2*\[Epsilon]^2)/(4*t1) - 
         (3*q2*\[Epsilon]^2)/(8*t1) + (m2*\[Epsilon]^2)/(4*u1) - 
         (7*q2*\[Epsilon]^2)/(16*u1) + (3*t1*\[Epsilon]^2)/(8*u1) + 
         (3*u1*\[Epsilon]^2)/(8*t1) - (m2*\[Epsilon]^2)/(2*(sp + t1 + u1)) + 
         (5*q2*\[Epsilon]^2)/(8*(sp + t1 + u1)) - (11*sp*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/(2*t1*(sp + t1 + u1)) + 
         (3*q2*sp*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) - (13*t1*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) + 
         (5*q2*sp*\[Epsilon]^2)/(16*u1*(sp + t1 + u1)) - 
         (m2*t1*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) + (3*q2*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (5*sp*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (3*t1^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (13*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) - 
         (m2*u1*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) + (3*q2*u1*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (3*sp*u1*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) - (3*u1^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - \[Epsilon]^3/8 + (q2*\[Epsilon]^3)/
          (32*t1) + (q2*\[Epsilon]^3)/(32*u1) - (t1*\[Epsilon]^3)/(32*u1) - 
         (u1*\[Epsilon]^3)/(32*t1) - (q2*\[Epsilon]^3)/(16*(sp + t1 + u1)) + 
         (sp*\[Epsilon]^3)/(8*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^3)/
          (16*t1*(sp + t1 + u1)) + (3*t1*\[Epsilon]^3)/(32*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon]^3)/(16*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) + (sp*t1*\[Epsilon]^3)/
          (16*u1*(sp + t1 + u1)) + (t1^2*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) + (3*u1*\[Epsilon]^3)/(32*(sp + t1 + u1)) - 
         (q2*u1*\[Epsilon]^3)/(32*t1*(sp + t1 + u1)) + (sp*u1*\[Epsilon]^3)/
          (16*t1*(sp + t1 + u1)) + (u1^2*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1))}, {(4*m2^3)/t1^2 + (2*m2^2*q2)/t1^2 + 
         (3*m2^2)/t1 + (3*m2*q2)/(2*t1) - (m2*sp)/t1 - (q2*sp)/(2*t1) - 
         (m2*\[Epsilon])/2 - (q2*\[Epsilon])/4 + (m2^2*q2*\[Epsilon])/t1^2 + 
         (3*m2*q2*\[Epsilon])/(4*t1) - (m2*sp*\[Epsilon])/t1 - 
         (3*q2*sp*\[Epsilon])/(4*t1) - (m2*\[Epsilon]^2)/4 - 
         (q2*\[Epsilon]^2)/4 - (m2*sp*\[Epsilon]^2)/(4*t1) - 
         (3*q2*sp*\[Epsilon]^2)/(8*t1) - (q2*\[Epsilon]^3)/16 - 
         (q2*sp*\[Epsilon]^3)/(16*t1), -3/4 + (2*m2^2)/t1^2 + (m2*q2)/t1^2 - 
         (2*m2*sp)/t1^2 + (11*m2)/(4*t1) + (7*q2)/(4*t1) - (3*sp)/(2*t1) + 
         (7*m2)/(2*u1) + (3*q2)/(2*u1) - sp/(2*u1) + (2*m2^2)/(t1*u1) + 
         (5*m2*q2)/(4*t1*u1) - (5*q2^2)/(4*t1*u1) - (m2*sp)/(4*t1*u1) + 
         (9*q2*sp)/(4*t1*u1) - sp^2/(t1*u1) + (3*t1)/(4*u1) - 
         (2*m2*u1)/t1^2 - u1/t1 + (3*m2)/(4*(sp + t1 + u1)) + 
         (7*q2)/(4*(sp + t1 + u1)) + (3*sp)/(4*(sp + t1 + u1)) + 
         (4*m2^3)/(t1^2*(sp + t1 + u1)) - (m2*q2^2)/(t1^2*(sp + t1 + u1)) + 
         (m2^2*sp)/(t1^2*(sp + t1 + u1)) + (m2*sp^2)/(t1^2*(sp + t1 + u1)) + 
         (7*m2^2)/(t1*(sp + t1 + u1)) + (m2*q2)/(4*t1*(sp + t1 + u1)) - 
         (3*q2^2)/(4*t1*(sp + t1 + u1)) + (3*m2*sp)/(t1*(sp + t1 + u1)) - 
         (q2*sp)/(4*t1*(sp + t1 + u1)) + (3*sp^2)/(4*t1*(sp + t1 + u1)) - 
         (3*t1)/(4*(sp + t1 + u1)) + (8*m2^2)/(u1*(sp + t1 + u1)) + 
         (5*m2*q2)/(4*u1*(sp + t1 + u1)) - (9*q2^2)/(4*u1*(sp + t1 + u1)) + 
         (5*m2*sp)/(4*u1*(sp + t1 + u1)) + (7*q2*sp)/(4*u1*(sp + t1 + u1)) - 
         sp^2/(2*u1*(sp + t1 + u1)) + (4*m2^3)/(t1*u1*(sp + t1 + u1)) - 
         (2*m2^2*q2)/(t1*u1*(sp + t1 + u1)) - (m2*q2^2)/
          (t1*u1*(sp + t1 + u1)) + q2^3/(2*t1*u1*(sp + t1 + u1)) + 
         (4*m2^2*sp)/(t1*u1*(sp + t1 + u1)) + (3*m2*q2*sp)/
          (4*t1*u1*(sp + t1 + u1)) - (3*q2^2*sp)/(4*t1*u1*(sp + t1 + u1)) + 
         (3*m2*sp^2)/(4*t1*u1*(sp + t1 + u1)) + (q2*sp^2)/
          (4*t1*u1*(sp + t1 + u1)) + (m2*t1)/(2*u1*(sp + t1 + u1)) + 
         (3*q2*t1)/(u1*(sp + t1 + u1)) - (5*sp*t1)/(4*u1*(sp + t1 + u1)) - 
         (5*t1^2)/(4*u1*(sp + t1 + u1)) + u1/(sp + t1 + u1) + 
         (m2^2*u1)/(t1^2*(sp + t1 + u1)) + (2*m2*sp*u1)/
          (t1^2*(sp + t1 + u1)) + (9*m2*u1)/(4*t1*(sp + t1 + u1)) - 
         (q2*u1)/(2*t1*(sp + t1 + u1)) + (3*sp*u1)/(2*t1*(sp + t1 + u1)) + 
         (m2*u1^2)/(t1^2*(sp + t1 + u1)) + (3*u1^2)/(4*t1*(sp + t1 + u1)) - 
         \[Epsilon]/2 - (m2^2*\[Epsilon])/(2*t1^2) + (m2*q2*\[Epsilon])/
          (4*t1^2) - (5*m2*sp*\[Epsilon])/(4*t1^2) - (m2*\[Epsilon])/(2*t1) + 
         (5*q2*\[Epsilon])/(8*t1) - (3*sp*\[Epsilon])/(8*t1) + 
         (m2*\[Epsilon])/(4*u1) + (3*q2*\[Epsilon])/(4*u1) - 
         (sp*\[Epsilon])/(4*u1) - (m2^2*\[Epsilon])/(2*t1*u1) + 
         (3*m2*q2*\[Epsilon])/(4*t1*u1) - (3*q2^2*\[Epsilon])/(8*t1*u1) - 
         (m2*sp*\[Epsilon])/(2*t1*u1) + (5*q2*sp*\[Epsilon])/(8*t1*u1) - 
         (sp^2*\[Epsilon])/(4*t1*u1) - (t1*\[Epsilon])/(4*u1) - 
         (5*m2*u1*\[Epsilon])/(4*t1^2) - (3*u1*\[Epsilon])/(4*t1) - 
         (m2*\[Epsilon])/(2*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (8*(sp + t1 + u1)) - (7*sp*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (m2^2*q2*\[Epsilon])/(t1^2*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (2*t1^2*(sp + t1 + u1)) + (m2^2*sp*\[Epsilon])/
          (2*t1^2*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (4*t1^2*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon])/
          (4*t1^2*(sp + t1 + u1)) + (m2^2*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (m2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (m2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (sp^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (t1*\[Epsilon])/(sp + t1 + u1) + 
         (m2^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (5*q2^2*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (5*m2*sp*\[Epsilon])/(4*u1*(sp + t1 + u1)) + (3*q2*sp*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (5*sp^2*\[Epsilon])/(4*u1*(sp + t1 + u1)) + 
         (m2^2*q2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (m2^2*sp*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) - (sp^3*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (5*m2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (3*q2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (3*sp*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (3*t1^2*\[Epsilon])/(4*u1*(sp + t1 + u1)) + 
         (u1*\[Epsilon])/(8*(sp + t1 + u1)) + (m2^2*u1*\[Epsilon])/
          (2*t1^2*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (4*t1^2*(sp + t1 + u1)) + (m2*sp*u1*\[Epsilon])/
          (2*t1^2*(sp + t1 + u1)) + (m2*u1*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (q2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (sp*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (m2*u1^2*\[Epsilon])/
          (4*t1^2*(sp + t1 + u1)) + (5*u1^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (5*\[Epsilon]^2)/16 - (m2*q2*\[Epsilon]^2)/
          (8*t1^2) - (m2*sp*\[Epsilon]^2)/(8*t1^2) - (m2*\[Epsilon]^2)/
          (8*t1) + (q2*\[Epsilon]^2)/(8*t1) - (sp*\[Epsilon]^2)/(4*t1) - 
         (3*m2*\[Epsilon]^2)/(8*u1) + (13*q2*\[Epsilon]^2)/(16*u1) - 
         (sp*\[Epsilon]^2)/(4*u1) - (m2*q2*\[Epsilon]^2)/(8*t1*u1) + 
         (q2^2*\[Epsilon]^2)/(16*t1*u1) - (m2*sp*\[Epsilon]^2)/(8*t1*u1) + 
         (q2*sp*\[Epsilon]^2)/(8*t1*u1) - (3*sp^2*\[Epsilon]^2)/(16*t1*u1) - 
         (5*t1*\[Epsilon]^2)/(16*u1) - (m2*u1*\[Epsilon]^2)/(8*t1^2) - 
         (5*u1*\[Epsilon]^2)/(16*t1) - (3*q2*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) - (7*sp*\[Epsilon]^2)/(16*(sp + t1 + u1)) + 
         (m2*q2*sp*\[Epsilon]^2)/(8*t1^2*(sp + t1 + u1)) - 
         (m2*sp^2*\[Epsilon]^2)/(8*t1^2*(sp + t1 + u1)) + 
         (m2*q2*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (3*m2*sp*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) - (5*sp^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (t1*\[Epsilon]^2)/(16*(sp + t1 + u1)) + 
         (m2*q2*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (sp^2*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) + 
         (m2*q2*sp*\[Epsilon]^2)/(8*t1*u1*(sp + t1 + u1)) - 
         (q2^2*sp*\[Epsilon]^2)/(16*t1*u1*(sp + t1 + u1)) - 
         (3*m2*sp^2*\[Epsilon]^2)/(8*t1*u1*(sp + t1 + u1)) + 
         (q2*sp^2*\[Epsilon]^2)/(4*t1*u1*(sp + t1 + u1)) - 
         (3*sp^3*\[Epsilon]^2)/(16*t1*u1*(sp + t1 + u1)) - 
         (m2*t1*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (3*sp*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon]^2)/
          (8*t1^2*(sp + t1 + u1)) - (m2*sp*u1*\[Epsilon]^2)/
          (4*t1^2*(sp + t1 + u1)) - (sp*u1*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (m2*u1^2*\[Epsilon]^2)/
          (8*t1^2*(sp + t1 + u1)) + (u1^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (q2*\[Epsilon]^3)/(32*t1) + 
         (3*sp*\[Epsilon]^3)/(32*t1) - (3*q2*\[Epsilon]^3)/(32*u1) - 
         (q2*sp*\[Epsilon]^3)/(32*t1*u1) + (sp^2*\[Epsilon]^3)/(32*t1*u1) + 
         (u1*\[Epsilon]^3)/(32*t1) + (sp*\[Epsilon]^3)/(32*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon]^3)/(32*t1*(sp + t1 + u1)) + (sp^2*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) + (sp^2*\[Epsilon]^3)/
          (16*u1*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon]^3)/
          (32*t1*u1*(sp + t1 + u1)) + (sp^3*\[Epsilon]^3)/
          (32*t1*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) - (u1*\[Epsilon]^3)/(32*(sp + t1 + u1)) + 
         (q2*u1*\[Epsilon]^3)/(32*t1*(sp + t1 + u1)) - (sp*u1*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1)) - (u1^2*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1)), -(m2/t1^2) - 2/t1 - m2/u1^2 - q2/(2*u1^2) - 
         1/(4*u1) - (2*m2)/(t1*u1) + (3*q2)/(2*t1*u1) - sp/(2*t1*u1) + 
         (4*m2^3)/(t1^2*(sp + t1 + u1)^2) + (2*m2^2*q2)/
          (t1^2*(sp + t1 + u1)^2) - (2*m2^2*sp)/(t1^2*(sp + t1 + u1)^2) + 
         (2*m2^2)/(t1*(sp + t1 + u1)^2) + (2*m2*q2)/(t1*(sp + t1 + u1)^2) + 
         (4*m2^3)/(u1^2*(sp + t1 + u1)^2) + (2*m2^2*q2)/
          (u1^2*(sp + t1 + u1)^2) - (2*m2^2*sp)/(u1^2*(sp + t1 + u1)^2) - 
         (m2*q2*sp)/(u1^2*(sp + t1 + u1)^2) - (2*m2^2*t1)/
          (u1^2*(sp + t1 + u1)^2) - (m2*q2*t1)/(u1^2*(sp + t1 + u1)^2) + 
         (2*m2^2)/(u1*(sp + t1 + u1)^2) + (m2*q2)/(u1*(sp + t1 + u1)^2) + 
         (4*m2^3)/(t1*u1*(sp + t1 + u1)^2) - (m2*q2^2)/
          (t1*u1*(sp + t1 + u1)^2) + (m2^2*sp)/(t1*u1*(sp + t1 + u1)^2) + 
         (m2*q2*sp)/(t1*u1*(sp + t1 + u1)^2) - 
         (m2*t1)/(u1*(sp + t1 + u1)^2) - (2*m2^2*u1)/
          (t1^2*(sp + t1 + u1)^2) - (m2*u1)/(t1*(sp + t1 + u1)^2) + 
         7/(4*(sp + t1 + u1)) + (5*m2^2)/(t1^2*(sp + t1 + u1)) + 
         (m2*q2)/(t1^2*(sp + t1 + u1)) + (2*m2*sp)/(t1^2*(sp + t1 + u1)) + 
         (15*m2)/(2*t1*(sp + t1 + u1)) - (5*q2)/(4*t1*(sp + t1 + u1)) + 
         sp/(t1*(sp + t1 + u1)) + (5*m2^2)/(u1^2*(sp + t1 + u1)) + 
         (5*m2*q2)/(2*u1^2*(sp + t1 + u1)) + (m2*sp)/(u1^2*(sp + t1 + u1)) + 
         (q2*sp)/(2*u1^2*(sp + t1 + u1)) + (m2*t1)/(u1^2*(sp + t1 + u1)) + 
         (q2*t1)/(2*u1^2*(sp + t1 + u1)) + (17*m2)/(2*u1*(sp + t1 + u1)) + 
         q2/(2*u1*(sp + t1 + u1)) + m2^2/(t1*u1*(sp + t1 + u1)) - 
         (m2*q2)/(t1*u1*(sp + t1 + u1)) - q2^2/(2*t1*u1*(sp + t1 + u1)) + 
         (m2*sp)/(t1*u1*(sp + t1 + u1)) - (q2*sp)/(2*t1*u1*(sp + t1 + u1)) + 
         (m2*u1)/(t1^2*(sp + t1 + u1)) + (9*u1)/(4*t1*(sp + t1 + u1)) - 
         (m2*\[Epsilon])/(2*t1^2) - (5*\[Epsilon])/(8*t1) - 
         (m2*\[Epsilon])/(2*u1^2) - (q2*\[Epsilon])/(2*u1^2) - 
         \[Epsilon]/(8*u1) - (3*m2*\[Epsilon])/(4*t1*u1) + 
         (3*q2*\[Epsilon])/(8*t1*u1) + (m2*\[Epsilon])/(2*(sp + t1 + u1)^2) + 
         (m2^2*q2*\[Epsilon])/(t1^2*(sp + t1 + u1)^2) - (m2^2*sp*\[Epsilon])/
          (t1^2*(sp + t1 + u1)^2) - (m2^2*\[Epsilon])/(t1*(sp + t1 + u1)^2) + 
         (m2*q2*\[Epsilon])/(t1*(sp + t1 + u1)^2) + (m2*sp*\[Epsilon])/
          (2*t1*(sp + t1 + u1)^2) + (m2^2*q2*\[Epsilon])/
          (u1^2*(sp + t1 + u1)^2) - (m2^2*sp*\[Epsilon])/
          (u1^2*(sp + t1 + u1)^2) - (m2*q2*sp*\[Epsilon])/
          (u1^2*(sp + t1 + u1)^2) - (m2^2*t1*\[Epsilon])/
          (u1^2*(sp + t1 + u1)^2) - (m2*q2*t1*\[Epsilon])/
          (u1^2*(sp + t1 + u1)^2) - (m2^2*\[Epsilon])/(u1*(sp + t1 + u1)^2) + 
         (m2*sp*\[Epsilon])/(2*u1*(sp + t1 + u1)^2) + (m2^2*q2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)^2) - (m2*q2^2*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)^2) + (m2*q2*sp*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)^2) - (m2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)^2) - (m2^2*u1*\[Epsilon])/
          (t1^2*(sp + t1 + u1)^2) - (m2*u1*\[Epsilon])/
          (2*t1*(sp + t1 + u1)^2) - (5*\[Epsilon])/(4*(sp + t1 + u1)) + 
         (m2^2*\[Epsilon])/(t1^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*t1^2*(sp + t1 + u1)) + (m2*sp*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (3*m2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (3*q2*\[Epsilon])/(8*t1*(sp + t1 + u1)) - (3*sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (m2^2*\[Epsilon])/(u1^2*(sp + t1 + u1)) + 
         (7*m2*q2*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) + (q2*sp*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) + (3*m2*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (5*q2*\[Epsilon])/(8*u1*(sp + t1 + u1)) - (7*sp*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (3*m2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (sp^2*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (3*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (7*u1*\[Epsilon])/(8*t1*(sp + t1 + u1)) + 
         (3*\[Epsilon]^2)/(16*t1) - (q2*\[Epsilon]^2)/(8*u1^2) + 
         \[Epsilon]^2/(8*u1) - (q2*\[Epsilon]^2)/(16*t1*u1) + 
         (m2*\[Epsilon]^2)/(4*(sp + t1 + u1)^2) + (m2*sp*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1)^2) - (m2*q2*sp*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)^2) - (m2*q2*t1*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)^2) - (m2*q2*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)^2) + (m2*sp*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)^2) - (13*\[Epsilon]^2)/(16*(sp + t1 + u1)) + 
         (m2*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) - (11*sp*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) + (m2*q2*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) - (m2*t1*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) + (m2*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) + 
         (3*q2*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) - (5*sp*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (3*m2*sp*\[Epsilon]^2)/
          (8*t1*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/
          (8*t1*u1*(sp + t1 + u1)) - (3*sp^2*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1)) - (t1*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (m2*u1*\[Epsilon]^2)/
          (4*t1^2*(sp + t1 + u1)) - (u1*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) - 
         \[Epsilon]^3/(16*(sp + t1 + u1)) + (sp*\[Epsilon]^3)/
          (16*t1*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^3)/
          (16*u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^3)/
          (16*u1^2*(sp + t1 + u1)) - (q2*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) + (sp*\[Epsilon]^3)/(16*u1*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon]^3)/(16*t1*u1*(sp + t1 + u1)) + 
         (sp^2*\[Epsilon]^3)/(32*t1*u1*(sp + t1 + u1))}, 
       {0, 0, -1/(2*t1*u1) - m2/(t1^2*(sp + t1 + u1)) + 
         3/(4*t1*(sp + t1 + u1)) - m2/(2*t1*u1*(sp + t1 + u1)) + 
         q2/(4*t1*u1*(sp + t1 + u1)) + sp/(4*t1*u1*(sp + t1 + u1)) - 
         \[Epsilon]/(4*t1*u1) - (m2*\[Epsilon])/(t1^2*(sp + t1 + u1)) + 
         \[Epsilon]/(2*t1*(sp + t1 + u1)) - (3*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*\[Epsilon])/(2*t1*u1*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(4*t1*u1*(sp + t1 + u1)) + (sp*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) - (m2*\[Epsilon]^2)/
          (4*t1^2*(sp + t1 + u1)) + \[Epsilon]^2/(16*t1*(sp + t1 + u1)) - 
         \[Epsilon]^2/(4*u1*(sp + t1 + u1)) - (m2*\[Epsilon]^2)/
          (8*t1*u1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1)) + (sp*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1)) - \[Epsilon]^3/(32*u1*(sp + t1 + u1)) + 
         (sp*\[Epsilon]^3)/(32*t1*u1*(sp + t1 + u1))}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, q2/(4*t1*(sp + t1 + u1)) - 
         q2/(4*u1*(sp + t1 + u1)) + t1/(4*u1*(sp + t1 + u1)) - 
         u1/(4*t1*(sp + t1 + u1)) + (q2*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/(4*u1*(sp + t1 + u1)) + (t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         (q2*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (t1*\[Epsilon]^2)/(16*u1*(sp + t1 + u1)) - 
         (u1*\[Epsilon]^2)/(16*t1*(sp + t1 + u1))}, 
       {-(m2/t1) - q2/(2*t1) - (m2*\[Epsilon])/t1 - (3*q2*\[Epsilon])/
          (4*t1) - (m2*\[Epsilon]^2)/(4*t1) - (3*q2*\[Epsilon]^2)/(8*t1) - 
         (q2*\[Epsilon]^3)/(16*t1), -t1^(-1) + 3/(4*u1) + q2/(2*t1*u1) - 
         sp/(2*t1*u1) - 1/(2*(sp + t1 + u1)) + (3*q2)/(4*t1*(sp + t1 + u1)) + 
         sp/(2*t1*(sp + t1 + u1)) + m2/(u1*(sp + t1 + u1)) + 
         (3*q2)/(2*u1*(sp + t1 + u1)) - (5*sp)/(4*u1*(sp + t1 + u1)) + 
         (2*m2^2)/(t1*u1*(sp + t1 + u1)) + (3*m2*q2)/
          (2*t1*u1*(sp + t1 + u1)) - q2^2/(2*t1*u1*(sp + t1 + u1)) + 
         (m2*sp)/(2*t1*u1*(sp + t1 + u1)) + (3*q2*sp)/
          (4*t1*u1*(sp + t1 + u1)) - sp^2/(4*t1*u1*(sp + t1 + u1)) - 
         (5*t1)/(4*u1*(sp + t1 + u1)) + (3*u1)/(4*t1*(sp + t1 + u1)) - 
         \[Epsilon]/(2*t1) - (m2*\[Epsilon])/(4*t1*u1) - 
         (3*\[Epsilon])/(4*(sp + t1 + u1)) - (3*m2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (3*q2*\[Epsilon])/(8*t1*(sp + t1 + u1)) - 
         (sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) - (3*m2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (3*sp*\[Epsilon])/(2*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (sp^2*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (t1*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (3*u1*\[Epsilon])/(8*t1*(sp + t1 + u1)) - \[Epsilon]^2/(8*t1) - 
         (3*\[Epsilon]^2)/(16*u1) - \[Epsilon]^2/(8*(sp + t1 + u1)) - 
         (m2*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) - (3*sp*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) - 
         (m2*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) + (3*q2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (5*sp*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/
          (8*t1*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/
          (4*t1*u1*(sp + t1 + u1)) - (sp^2*\[Epsilon]^2)/
          (4*t1*u1*(sp + t1 + u1)) - (3*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (u1*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon]^3)/(16*t1*(sp + t1 + u1)) + (sp*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1)) - (q2*\[Epsilon]^3)/(16*u1*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon]^3)/(32*t1*u1*(sp + t1 + u1)) + 
         (sp^2*\[Epsilon]^3)/(32*t1*u1*(sp + t1 + u1)), 
        m2/(t1^2*(sp + t1 + u1)) - 3/(4*t1*(sp + t1 + u1)) - 
         m2/(u1^2*(sp + t1 + u1)) - q2/(2*u1^2*(sp + t1 + u1)) + 
         q2/(4*t1*u1*(sp + t1 + u1)) - sp/(4*t1*u1*(sp + t1 + u1)) + 
         (m2*\[Epsilon])/(t1^2*(sp + t1 + u1)) - (7*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (m2*\[Epsilon])/(u1^2*(sp + t1 + u1)) - 
         (3*q2*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) + 
         \[Epsilon]/(8*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) - (sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (m2*\[Epsilon]^2)/
          (4*t1^2*(sp + t1 + u1)) - (5*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)) - 
         (m2*\[Epsilon]^2)/(4*u1^2*(sp + t1 + u1)) - (3*q2*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) + \[Epsilon]^2/(8*u1*(sp + t1 + u1)) - 
         (q2*\[Epsilon]^2)/(16*t1*u1*(sp + t1 + u1)) - (sp*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1)) - \[Epsilon]^3/(32*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon]^3)/(16*u1^2*(sp + t1 + u1)) + 
         \[Epsilon]^3/(32*u1*(sp + t1 + u1)) - (q2*\[Epsilon]^3)/
          (32*t1*u1*(sp + t1 + u1))}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, -1/(4*t1*(sp + t1 + u1)) - 
         1/(2*u1*(sp + t1 + u1)) + q2/(4*t1*u1*(sp + t1 + u1)) - 
         sp/(4*t1*u1*(sp + t1 + u1)) - \[Epsilon]/(4*t1*(sp + t1 + u1)) - 
         \[Epsilon]/(2*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - \[Epsilon]^2/(16*t1*(sp + t1 + u1)) - 
         \[Epsilon]^2/(8*u1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1)) - (sp*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1)), 0}, {0, 0, 0}, {0, 0, 0}}}}
 
CoeffRQED[L] = {{{{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, 
       {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, 
       {0, 0, 0}, {0, 0, 0}}}, {{{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, 
       {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, 
       {0, 0, 0}, {0, 0, 0}}}, 
     {{{0, 0, 0}, {0, 0, (m2*q2*t1)/sp - (2*m2^2*q2)/u1 - 
         (2*m2^2*q2*t1)/(sp*u1) - (m2*q2^2*t1)/(sp*u1) - 
         (m2*q2^2*t1^2)/(sp^2*u1) + (m2*q2*\[Epsilon])/2 + 
         (m2*q2*t1*\[Epsilon])/(2*sp) - (m2*q2^2*\[Epsilon])/(2*u1) - 
         (m2*q2^2*t1*\[Epsilon])/(sp*u1) - (m2*q2^2*t1^2*\[Epsilon])/
          (2*sp^2*u1)}, {0, 0, (4*m2^2*q2*t1)/(sp*u1^2) + 
         (4*m2^2*q2*t1^2)/(sp^2*u1^2) - (m2*q2*t1)/(sp*u1) - 
         (m2*q2*t1^2)/(sp^2*u1) + (m2*q2*\[Epsilon])/(2*u1) - 
         (m2*q2*t1^2*\[Epsilon])/(2*sp^2*u1)}, {0, 0, 0}}, 
      {{0, 0, (4*m2^2*q2)/sp}, {0, (q2*t1)/2 + (m2*q2*t1)/sp - 
         (q2^2*t1)/(2*sp) - (2*m2^2*q2)/u1 + (m2*q2^2)/u1 - 
         (m2*q2*sp)/(2*u1) - (2*m2^2*q2*t1)/(sp*u1) + (q2^3*t1)/(2*sp*u1) - 
         (q2*sp*t1)/(2*u1) - (m2*q2^2*t1^2)/(sp^2*u1) + 
         (q2^3*t1^2)/(2*sp^2*u1) + (m2*q2*t1^2)/(2*sp*u1) - 
         (q2^2*t1^2)/(2*sp*u1) + (m2*q2*\[Epsilon])/2 - (q2^2*\[Epsilon])/4 + 
         (q2*sp*\[Epsilon])/4 + (q2*t1*\[Epsilon])/4 + (m2*q2*t1*\[Epsilon])/
          (2*sp) - (q2^2*t1*\[Epsilon])/(4*sp) - (m2*q2^2*\[Epsilon])/
          (2*u1) + (q2^3*\[Epsilon])/(4*u1) + (m2*q2*sp*\[Epsilon])/(4*u1) - 
         (q2^2*sp*\[Epsilon])/(4*u1) + (m2*q2*t1*\[Epsilon])/(2*u1) - 
         (q2^2*t1*\[Epsilon])/(2*u1) - (m2*q2^2*t1*\[Epsilon])/(sp*u1) + 
         (q2^3*t1*\[Epsilon])/(2*sp*u1) - (m2*q2^2*t1^2*\[Epsilon])/
          (2*sp^2*u1) + (q2^3*t1^2*\[Epsilon])/(4*sp^2*u1) + 
         (m2*q2*t1^2*\[Epsilon])/(4*sp*u1) - (q2^2*t1^2*\[Epsilon])/
          (4*sp*u1), -((m2*q2)/sp) - (2*m2*q2*t1)/sp^2 + (q2^2*t1)/(2*sp^2) + 
         (q2*t1)/(2*sp) - (q2*t1^2)/sp^2 - (2*m2*q2)/u1 - 
         (2*m2^2*q2)/(sp*u1) - (m2*q2^2)/(sp*u1) - (q2*t1)/(2*u1) - 
         (4*m2^2*q2*t1)/(sp^2*u1) - (3*m2*q2*t1)/(sp*u1) - 
         (3*m2*q2*t1^2)/(2*sp^2*u1) - (q2^2*t1^2)/(2*sp^2*u1) - 
         (q2*t1^2)/(2*sp*u1) - (q2*t1^3)/(2*sp^2*u1) - (q2*t1*u1)/(2*sp^2) - 
         (3*m2*q2)/(2*(sp + t1 + u1)) - (2*m2^2*q2)/(sp*(sp + t1 + u1)) + 
         q2^3/(2*sp*(sp + t1 + u1)) - (2*m2^2*q2)/(t1*(sp + t1 + u1)) + 
         (m2*q2^2)/(t1*(sp + t1 + u1)) + (q2*t1)/(2*(sp + t1 + u1)) - 
         (m2*q2^2*t1)/(sp^2*(sp + t1 + u1)) + (q2^3*t1)/
          (2*sp^2*(sp + t1 + u1)) + (m2*q2*t1)/(sp*(sp + t1 + u1)) - 
         (3*q2^2*t1)/(2*sp*(sp + t1 + u1)) + (3*m2*q2*t1^2)/
          (sp^2*(sp + t1 + u1)) - (3*q2^2*t1^2)/(2*sp^2*(sp + t1 + u1)) + 
         (2*q2*t1^2)/(sp*(sp + t1 + u1)) + (3*q2*t1^3)/
          (2*sp^2*(sp + t1 + u1)) - (2*m2^2*q2)/(u1*(sp + t1 + u1)) - 
         (m2*q2*sp)/(2*u1*(sp + t1 + u1)) - (m2*q2*t1)/
          (2*u1*(sp + t1 + u1)) - (q2^2*t1)/(2*u1*(sp + t1 + u1)) - 
         (2*m2^2*q2*t1)/(sp*u1*(sp + t1 + u1)) - (m2*q2^2*t1)/
          (sp*u1*(sp + t1 + u1)) + (q2*t1^2)/(2*u1*(sp + t1 + u1)) - 
         (m2*q2^2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + (2*m2*q2*t1^2)/
          (sp*u1*(sp + t1 + u1)) - (q2^2*t1^2)/(sp*u1*(sp + t1 + u1)) + 
         (2*m2*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) - (q2^2*t1^3)/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2*t1^3)/(sp*u1*(sp + t1 + u1)) + 
         (q2*t1^4)/(2*sp^2*u1*(sp + t1 + u1)) - (q2^2*u1)/
          (sp*(sp + t1 + u1)) - (m2*q2*u1)/(t1*(sp + t1 + u1)) + 
         (m2*q2*t1*u1)/(sp^2*(sp + t1 + u1)) - (q2^2*t1*u1)/
          (sp^2*(sp + t1 + u1)) + (3*q2*t1*u1)/(2*sp*(sp + t1 + u1)) + 
         (3*q2*t1^2*u1)/(2*sp^2*(sp + t1 + u1)) + 
         (q2*u1^2)/(2*sp*(sp + t1 + u1)) + (q2*t1*u1^2)/
          (2*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon])/2 - (m2*q2*\[Epsilon])/
          (2*sp) + (q2^2*\[Epsilon])/(4*sp) - (m2*q2*t1*\[Epsilon])/sp^2 + 
         (q2^2*t1*\[Epsilon])/(4*sp^2) + (q2*t1*\[Epsilon])/(4*sp) - 
         (q2*t1^2*\[Epsilon])/(4*sp^2) - (q2^2*\[Epsilon])/(2*u1) - 
         (m2*q2^2*\[Epsilon])/(sp*u1) - (m2*q2^2*t1*\[Epsilon])/(sp^2*u1) + 
         (m2*q2*t1*\[Epsilon])/(4*sp*u1) - (q2^2*t1*\[Epsilon])/(sp*u1) + 
         (m2*q2*t1^2*\[Epsilon])/(4*sp^2*u1) - (q2^2*t1^2*\[Epsilon])/
          (2*sp^2*u1) - (q2*u1*\[Epsilon])/(4*sp) - (q2*t1*u1*\[Epsilon])/
          (4*sp^2) + (3*m2*q2*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (q2^2*\[Epsilon])/(2*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (sp*(sp + t1 + u1)) + (q2^3*\[Epsilon])/(2*sp*(sp + t1 + u1)) - 
         (m2*q2^2*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (m2*q2^2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + 
         (q2^3*t1*\[Epsilon])/(4*sp^2*(sp + t1 + u1)) + 
         (5*m2*q2*t1*\[Epsilon])/(4*sp*(sp + t1 + u1)) - 
         (q2^2*t1*\[Epsilon])/(sp*(sp + t1 + u1)) + (m2*q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2^2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (q2*t1^3*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (m2*q2^2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) - (m2*q2^2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (m2*q2*t1^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (m2*q2*u1*\[Epsilon])/(sp*(sp + t1 + u1)) - (q2^2*u1*\[Epsilon])/
          (sp*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) - 
         (q2^2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (m2*q2*t1*u1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) - 
         (q2^2*t1*u1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + 
         (q2*t1*u1*\[Epsilon])/(sp*(sp + t1 + u1)) + (q2*t1^2*u1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (q2*t1*u1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1))}, {0, q2 - q2^2/sp - (m2*q2)/t1 - 
         (q2^2*t1)/(2*sp^2) + (q2*t1)/(2*sp) - (m2*q2)/(2*u1) - q2^2/u1 - 
         (2*m2^2*q2)/(sp*u1) + q2^3/(2*sp*u1) + (q2*sp)/(2*u1) - 
         (2*m2^2*q2)/(t1*u1) + (m2*q2^2)/(t1*u1) - (m2*q2*sp)/(t1*u1) + 
         (3*q2*t1)/(2*u1) - (m2*q2^2*t1)/(sp^2*u1) + (q2^3*t1)/(2*sp^2*u1) - 
         (2*q2^2*t1)/(sp*u1) - (m2*q2*t1^2)/(2*sp^2*u1) - 
         (q2^2*t1^2)/(2*sp^2*u1) + (q2*t1^2)/(2*sp*u1) + (q2*u1)/(2*sp) + 
         (3*q2*\[Epsilon])/4 + (m2*q2*\[Epsilon])/(2*sp) - 
         (3*q2^2*\[Epsilon])/(4*sp) + (m2*q2*\[Epsilon])/(2*t1) - 
         (q2^2*\[Epsilon])/(2*t1) + (q2*sp*\[Epsilon])/(2*t1) - 
         (q2^2*t1*\[Epsilon])/(4*sp^2) + (q2*t1*\[Epsilon])/(4*sp) + 
         (3*m2*q2*\[Epsilon])/(4*u1) - (5*q2^2*\[Epsilon])/(4*u1) - 
         (m2*q2^2*\[Epsilon])/(sp*u1) + (q2^3*\[Epsilon])/(2*sp*u1) + 
         (3*q2*sp*\[Epsilon])/(4*u1) - (m2*q2^2*\[Epsilon])/(2*t1*u1) + 
         (q2^3*\[Epsilon])/(4*t1*u1) + (m2*q2*sp*\[Epsilon])/(2*t1*u1) - 
         (q2^2*sp*\[Epsilon])/(2*t1*u1) + (q2*sp^2*\[Epsilon])/(4*t1*u1) + 
         (3*q2*t1*\[Epsilon])/(4*u1) - (m2*q2^2*t1*\[Epsilon])/(2*sp^2*u1) + 
         (q2^3*t1*\[Epsilon])/(4*sp^2*u1) - (q2^2*t1*\[Epsilon])/(sp*u1) - 
         (m2*q2*t1^2*\[Epsilon])/(4*sp^2*u1) - (q2^2*t1^2*\[Epsilon])/
          (4*sp^2*u1) + (q2*t1^2*\[Epsilon])/(4*sp*u1) + 
         (q2*u1*\[Epsilon])/(4*sp) + (q2*u1*\[Epsilon])/(4*t1), 
        q2/(2*sp) - (q2*t1)/(2*sp^2) - (2*q2*t1)/u1^2 + 
         (2*m2*q2*t1)/(sp*u1^2) + (2*m2*q2*t1^2)/(sp^2*u1^2) - 
         (4*q2*t1^2)/(sp*u1^2) - (2*q2*t1^3)/(sp^2*u1^2) + q2/(2*u1) - 
         q2^2/(2*sp*u1) - (m2*q2)/(t1*u1) - (m2*q2*t1)/(sp^2*u1) - 
         (q2^2*t1)/(2*sp^2*u1) - (q2*t1)/(2*sp*u1) - (q2*t1^2)/(sp^2*u1) + 
         (m2*q2)/(sp*(sp + t1 + u1)) - q2^2/(2*sp*(sp + t1 + u1)) - 
         (m2*q2)/(t1*(sp + t1 + u1)) + (2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) - 
         (q2^2*t1)/(2*sp^2*(sp + t1 + u1)) + (3*q2*t1)/
          (2*sp*(sp + t1 + u1)) + (3*q2*t1^2)/(2*sp^2*(sp + t1 + u1)) + 
         (m2*q2*t1)/(u1^2*(sp + t1 + u1)) + (4*m2^2*q2*t1)/
          (sp*u1^2*(sp + t1 + u1)) + (q2*sp*t1)/(u1^2*(sp + t1 + u1)) + 
         (3*q2*t1^2)/(u1^2*(sp + t1 + u1)) + (4*m2^2*q2*t1^2)/
          (sp^2*u1^2*(sp + t1 + u1)) + (2*m2*q2*t1^2)/
          (sp*u1^2*(sp + t1 + u1)) + (m2*q2*t1^3)/(sp^2*u1^2*
           (sp + t1 + u1)) + (3*q2*t1^3)/(sp*u1^2*(sp + t1 + u1)) + 
         (q2*t1^4)/(sp^2*u1^2*(sp + t1 + u1)) + (4*m2^2*q2)/
          (sp*u1*(sp + t1 + u1)) - (2*m2*q2^2)/(sp*u1*(sp + t1 + u1)) + 
         (2*q2*t1)/(u1*(sp + t1 + u1)) + (4*m2^2*q2*t1)/
          (sp^2*u1*(sp + t1 + u1)) - (2*m2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (3*m2*q2*t1)/(sp*u1*(sp + t1 + u1)) + 
         (3*m2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + (4*q2*t1^2)/
          (sp*u1*(sp + t1 + u1)) + (2*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) + 
         (q2*u1)/(2*sp*(sp + t1 + u1)) + (q2*t1*u1)/(2*sp^2*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(4*sp) + (q2*\[Epsilon])/(2*t1) - 
         (q2*t1*\[Epsilon])/(4*sp^2) - (5*q2*t1*\[Epsilon])/(4*u1^2) - 
         (m2*q2*t1*\[Epsilon])/(2*sp*u1^2) - (m2*q2*t1^2*\[Epsilon])/
          (2*sp^2*u1^2) - (5*q2*t1^2*\[Epsilon])/(2*sp*u1^2) - 
         (5*q2*t1^3*\[Epsilon])/(4*sp^2*u1^2) + (q2*\[Epsilon])/u1 + 
         (m2*q2*\[Epsilon])/(sp*u1) - (3*q2^2*\[Epsilon])/(4*sp*u1) + 
         (m2*q2*\[Epsilon])/(2*t1*u1) - (q2^2*\[Epsilon])/(2*t1*u1) + 
         (q2*sp*\[Epsilon])/(4*t1*u1) - (m2*q2*t1*\[Epsilon])/(2*sp^2*u1) - 
         (q2^2*t1*\[Epsilon])/(4*sp^2*u1) + (3*q2*t1*\[Epsilon])/(4*sp*u1) + 
         (q2*\[Epsilon])/(2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/(4*sp*(sp + t1 + u1)) + 
         (m2*q2*\[Epsilon])/(2*t1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (3*q2*t1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) + (q2*sp*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) + (3*q2*t1^2*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) + (m2*q2*t1^2*\[Epsilon])/
          (sp*u1^2*(sp + t1 + u1)) + (m2*q2*t1^3*\[Epsilon])/
          (2*sp^2*u1^2*(sp + t1 + u1)) + (3*q2*t1^3*\[Epsilon])/
          (4*sp*u1^2*(sp + t1 + u1)) + (q2*t1^4*\[Epsilon])/
          (4*sp^2*u1^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) + 
         (m2*q2*t1*\[Epsilon])/(sp*u1*(sp + t1 + u1)) + 
         (m2*q2*t1^2*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) + 
         (q2*t1^2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) + 
         (q2*t1^3*\[Epsilon])/(4*sp^2*u1*(sp + t1 + u1)) + 
         (3*q2*u1*\[Epsilon])/(4*sp*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + (q2*t1*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/(8*u1^2) - 
         (q2*t1^2*\[Epsilon]^2)/(4*sp*u1^2) - (q2*t1^3*\[Epsilon]^2)/
          (8*sp^2*u1^2) - (q2*sp*t1*\[Epsilon]^2)/(8*u1^2*(sp + t1 + u1)) - 
         (3*q2*t1^2*\[Epsilon]^2)/(8*u1^2*(sp + t1 + u1)) - 
         (3*q2*t1^3*\[Epsilon]^2)/(8*sp*u1^2*(sp + t1 + u1)) - 
         (q2*t1^4*\[Epsilon]^2)/(8*sp^2*u1^2*(sp + t1 + u1)) - 
         (q2*t1*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (4*sp*u1*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon]^2)/
          (8*sp^2*u1*(sp + t1 + u1))}, 
       {0, 0, (2*m2*q2)/(sp*u1*(sp + t1 + u1)) + (2*m2*q2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(4*sp*u1) + 
         (q2*\[Epsilon])/(4*t1*u1) + (q2*\[Epsilon])/(4*sp*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(4*t1*(sp + t1 + u1))}}, 
      {{0, (4*m2^2*q2)/sp, (4*m2^2*q2)/sp^2 + (2*m2*q2^2)/sp^2 + 
         (2*m2*q2)/sp}, {(-4*m2^2*q2)/sp, (-4*m2^2*q2)/sp^2 - 
         (2*m2*q2^2)/sp^2 + (5*m2*q2)/(2*sp) - q2^2/(2*sp) - (m2*q2)/(2*t1) + 
         (4*m2^2*q2)/(sp*t1) + (3*q2*t1)/(2*sp) + (m2*q2)/(2*u1) - 
         (2*m2^2*q2)/(sp*u1) + (m2*q2^2)/(sp*u1) - (q2*t1)/(2*u1) - 
         (4*m2^2*q2*t1)/(sp^2*u1) + (2*m2*q2^2*t1)/(sp^2*u1) + 
         (3*m2*q2*t1)/(2*sp*u1) - (q2^2*t1)/(2*sp*u1) + 
         (m2*q2*t1^2)/(2*sp^2*u1) - (q2^2*t1^2)/(sp^2*u1) + (q2*u1)/(2*sp) - 
         (2*m2*q2)/(sp + t1 + u1) + q2^2/(2*(sp + t1 + u1)) + 
         (2*m2^2*q2)/(sp*(sp + t1 + u1)) - (m2*q2^2)/(sp*(sp + t1 + u1)) + 
         (m2*q2*sp)/(2*t1*(sp + t1 + u1)) - (q2*t1)/(sp + t1 + u1) - 
         (m2*q2^2*t1)/(sp^2*(sp + t1 + u1)) - (2*m2*q2*t1)/
          (sp*(sp + t1 + u1)) - (q2^2*t1^2)/(2*sp^2*(sp + t1 + u1)) - 
         (q2*t1^2)/(sp*(sp + t1 + u1)) - (m2*q2*sp)/(u1*(sp + t1 + u1)) - 
         (7*m2*q2*t1)/(2*u1*(sp + t1 + u1)) + (q2^2*t1)/
          (2*u1*(sp + t1 + u1)) + (2*m2^2*q2*t1)/(sp*u1*(sp + t1 + u1)) - 
         (2*m2*q2^2*t1)/(sp*u1*(sp + t1 + u1)) + (q2^3*t1)/
          (2*sp*u1*(sp + t1 + u1)) - (q2*t1^2)/(2*u1*(sp + t1 + u1)) - 
         (m2*q2^2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + (q2^3*t1^2)/
          (2*sp^2*u1*(sp + t1 + u1)) - (3*m2*q2*t1^2)/
          (2*sp*u1*(sp + t1 + u1)) - (q2^2*t1^3)/(2*sp^2*u1*(sp + t1 + u1)) - 
         (q2*t1^3)/(2*sp*u1*(sp + t1 + u1)) - (q2*u1)/(2*(sp + t1 + u1)) - 
         (m2*q2*u1)/(2*sp*(sp + t1 + u1)) + (q2^2*u1)/(2*sp*(sp + t1 + u1)) + 
         (m2*q2*u1)/(2*t1*(sp + t1 + u1)) - (q2*t1*u1)/(sp*(sp + t1 + u1)) - 
         (q2*u1^2)/(2*sp*(sp + t1 + u1)) + (q2*\[Epsilon])/4 + 
         (3*m2*q2*\[Epsilon])/(4*sp) - (q2^2*\[Epsilon])/(4*sp) + 
         (q2*t1*\[Epsilon])/(4*sp) + (m2*q2*\[Epsilon])/(4*u1) - 
         (q2^2*\[Epsilon])/(4*u1) - (m2*q2^2*\[Epsilon])/(2*sp*u1) + 
         (q2^3*\[Epsilon])/(4*sp*u1) - (q2*t1*\[Epsilon])/(4*u1) - 
         (m2*q2^2*t1*\[Epsilon])/(sp^2*u1) + (q2^3*t1*\[Epsilon])/
          (2*sp^2*u1) + (m2*q2*t1*\[Epsilon])/(2*sp*u1) - 
         (q2^2*t1*\[Epsilon])/(2*sp*u1) + (m2*q2*t1^2*\[Epsilon])/
          (4*sp^2*u1) - (q2^2*t1^2*\[Epsilon])/(4*sp^2*u1) + 
         (m2*q2*\[Epsilon])/(4*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (2*(sp + t1 + u1)) - (m2*q2^2*t1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (q2^2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2*sp*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (m2*q2^2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2^3*t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (m2*q2*t1^2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) - (q2^2*t1^3*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (q2*t1*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/(8*sp) + 
         (q2*t1*\[Epsilon]^2)/(8*u1) - (q2^2*t1^2*\[Epsilon]^2)/(8*sp^2*u1) - 
         (q2*t1*\[Epsilon]^2)/(4*(sp + t1 + u1)) + (q2^2*t1^2*\[Epsilon]^2)/
          (8*sp^2*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (q2^2*t1^2*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) + (q2^2*t1^3*\[Epsilon]^2)/
          (8*sp^2*u1*(sp + t1 + u1)) - (q2*t1*u1*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1)), -((m2*q2)/sp^2) - q2^2/(2*sp^2) - 
         q2/(2*sp) + (2*m2*q2^2)/(sp^2*t1) - (3*m2*q2)/(2*sp*t1) + 
         q2^2/(2*sp*t1) - q2^3/(2*sp^2*u1) - (m2*q2)/(2*sp*u1) - 
         q2^2/(2*sp*u1) - (m2*q2*t1)/(sp^2*u1) + (q2^2*t1)/(2*sp^2*u1) - 
         (q2*t1^2)/(2*sp^2*u1) + (q2*u1)/(2*sp^2) - (2*m2*q2*u1)/(sp^2*t1) - 
         (q2*u1)/(2*sp*t1) + (2*m2*q2^2)/(sp^2*(sp + t1 + u1)) - 
         (m2*q2)/(sp*(sp + t1 + u1)) - q2^2/(2*sp*(sp + t1 + u1)) + 
         (m2*q2)/(2*t1*(sp + t1 + u1)) + q2^3/(2*sp*t1*(sp + t1 + u1)) - 
         (4*m2*q2*t1)/(sp^2*(sp + t1 + u1)) + (q2*t1)/(2*sp*(sp + t1 + u1)) + 
         (q2*t1^2)/(2*sp^2*(sp + t1 + u1)) - (5*m2*q2)/
          (2*u1*(sp + t1 + u1)) - (2*m2*q2^2)/(sp*u1*(sp + t1 + u1)) - 
         (2*m2*q2^2*t1)/(sp^2*u1*(sp + t1 + u1)) - (7*m2*q2*t1)/
          (2*sp*u1*(sp + t1 + u1)) - (q2^2*t1)/(2*sp*u1*(sp + t1 + u1)) - 
         (m2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) - (q2^2*t1^2)/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2*t1^2)/(2*sp*u1*(sp + t1 + u1)) + 
         (q2*t1^3)/(2*sp^2*u1*(sp + t1 + u1)) - (3*m2*q2*u1)/
          (sp^2*(sp + t1 + u1)) + (q2^2*u1)/(2*sp^2*(sp + t1 + u1)) + 
         (q2*u1)/(2*sp*(sp + t1 + u1)) + (m2*q2*u1)/
          (2*sp*t1*(sp + t1 + u1)) - (q2^2*u1)/(sp*t1*(sp + t1 + u1)) - 
         (q2*t1*u1)/(2*sp^2*(sp + t1 + u1)) - (q2*u1^2)/
          (2*sp^2*(sp + t1 + u1)) + (q2*u1^2)/(2*sp*t1*(sp + t1 + u1)) - 
         (3*m2*q2*\[Epsilon])/(2*sp^2) + (q2^2*\[Epsilon])/(2*sp^2) + 
         (q2*\[Epsilon])/(2*sp) - (3*m2*q2*\[Epsilon])/(4*sp*t1) + 
         (q2^2*\[Epsilon])/(4*sp*t1) - (q2^3*\[Epsilon])/(4*sp^2*u1) + 
         (3*m2*q2*\[Epsilon])/(4*sp*u1) - (q2^2*\[Epsilon])/(sp*u1) + 
         (m2*q2*t1*\[Epsilon])/(sp^2*u1) - (q2^2*t1*\[Epsilon])/(sp^2*u1) + 
         (q2*t1*\[Epsilon])/(4*sp*u1) + (q2*t1^2*\[Epsilon])/(2*sp^2*u1) - 
         (q2*u1*\[Epsilon])/(2*sp^2) - (q2*u1*\[Epsilon])/(4*sp*t1) - 
         (q2*\[Epsilon])/(2*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/(sp*(sp + t1 + u1)) + 
         (m2*q2*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (5*m2*q2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (q2^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (m2*q2^2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) - 
         (q2^3*\[Epsilon])/(4*sp*u1*(sp + t1 + u1)) - (q2^3*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (7*m2*q2*t1*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (3*q2^2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) - (m2*q2*t1^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (3*q2^2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) - (q2^2*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/(4*sp*(sp + t1 + u1)) + 
         (3*m2*q2*u1*\[Epsilon])/(4*sp*t1*(sp + t1 + u1)) - 
         (q2^2*u1*\[Epsilon])/(sp*t1*(sp + t1 + u1)) + (q2*t1*u1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/(8*sp) + 
         (q2^2*\[Epsilon]^2)/(8*sp*u1) + (q2^2*t1*\[Epsilon]^2)/(4*sp^2*u1) + 
         (q2*t1*\[Epsilon]^2)/(8*sp*u1) + (q2*\[Epsilon]^2)/
          (8*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/(8*sp*(sp + t1 + u1)) - 
         (q2^2*t1*\[Epsilon]^2)/(4*sp^2*(sp + t1 + u1)) - 
         (q2^2*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (3*q2^2*t1*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) - (q2^2*t1^2*\[Epsilon]^2)/
          (4*sp^2*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1))}, {(4*m2^2*q2)/sp^2, (-2*m2*q2)/sp^2 + 
         q2^2/(2*sp^2) + (3*q2)/(2*sp) + q2/(2*t1) - (2*m2*q2^2)/(sp^2*t1) + 
         (5*m2*q2)/(2*sp*t1) - q2^2/(2*sp*t1) - (q2*t1)/sp^2 + 
         (3*q2)/(2*u1) - (4*m2^2*q2)/(sp^2*u1) + (m2*q2^2)/(sp^2*u1) + 
         q2^3/(2*sp^2*u1) - (3*m2*q2)/(sp*u1) - (5*q2^2)/(2*sp*u1) - 
         q2^2/(t1*u1) - (2*m2^2*q2)/(sp*t1*u1) + q2^3/(2*sp*t1*u1) + 
         (q2*sp)/(2*t1*u1) - (4*m2*q2*t1)/(sp^2*u1) - 
         (3*q2^2*t1)/(2*sp^2*u1) + (q2*t1)/(sp*u1) - (q2*u1)/(2*sp^2) + 
         (2*m2*q2*u1)/(sp^2*t1) - q2/(sp + t1 + u1) - 
         (4*m2^2*q2)/(sp^2*(sp + t1 + u1)) - (m2*q2^2)/
          (sp^2*(sp + t1 + u1)) - (7*m2*q2)/(2*sp*(sp + t1 + u1)) - 
         q2^2/(2*sp*(sp + t1 + u1)) - (2*m2^2*q2)/(t1^2*(sp + t1 + u1)) - 
         (7*m2*q2)/(2*t1*(sp + t1 + u1)) - (4*m2^2*q2)/
          (sp*t1*(sp + t1 + u1)) - (m2*q2^2)/(sp*t1*(sp + t1 + u1)) + 
         (m2*q2*t1)/(sp^2*(sp + t1 + u1)) - (q2^2*t1)/
          (2*sp^2*(sp + t1 + u1)) + (q2*t1)/(sp*(sp + t1 + u1)) + 
         (2*q2*t1^2)/(sp^2*(sp + t1 + u1)) - (3*m2*q2)/(u1*(sp + t1 + u1)) + 
         q2^2/(2*u1*(sp + t1 + u1)) - (4*m2^2*q2)/(sp*u1*(sp + t1 + u1)) + 
         (m2*q2^2)/(sp*u1*(sp + t1 + u1)) + q2^3/(2*sp*u1*(sp + t1 + u1)) - 
         (q2*sp)/(2*u1*(sp + t1 + u1)) - (2*m2^2*q2)/(t1*u1*(sp + t1 + u1)) + 
         (m2*q2^2)/(t1*u1*(sp + t1 + u1)) - (m2*q2*sp)/
          (t1*u1*(sp + t1 + u1)) - (q2*t1)/(2*u1*(sp + t1 + u1)) - 
         (4*m2^2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) + (m2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (q2^3*t1)/(2*sp^2*u1*(sp + t1 + u1)) - 
         (m2*q2*t1)/(sp*u1*(sp + t1 + u1)) - (q2^2*t1^2)/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2*t1^2)/(sp*u1*(sp + t1 + u1)) + 
         (q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) + (m2*q2*u1)/
          (sp^2*(sp + t1 + u1)) - (q2^2*u1)/(2*sp^2*(sp + t1 + u1)) - 
         (m2*q2*u1)/(2*sp*t1*(sp + t1 + u1)) + (3*q2*t1*u1)/
          (2*sp^2*(sp + t1 + u1)) + (q2*u1^2)/(2*sp^2*(sp + t1 + u1)) - 
         (q2^2*\[Epsilon])/(2*sp^2) + (q2*\[Epsilon])/(4*sp) + 
         (3*q2*\[Epsilon])/(4*t1) + (3*m2*q2*\[Epsilon])/(4*sp*t1) - 
         (3*q2^2*\[Epsilon])/(4*sp*t1) - (q2*t1*\[Epsilon])/(2*sp^2) + 
         (q2*\[Epsilon])/(2*u1) - (3*m2*q2^2*\[Epsilon])/(2*sp^2*u1) + 
         (3*q2^3*\[Epsilon])/(4*sp^2*u1) - (m2*q2*\[Epsilon])/(4*sp*u1) - 
         (7*q2^2*\[Epsilon])/(4*sp*u1) + (3*m2*q2*\[Epsilon])/(4*t1*u1) - 
         (q2^2*\[Epsilon])/(t1*u1) - (m2*q2^2*\[Epsilon])/(sp*t1*u1) + 
         (q2^3*\[Epsilon])/(2*sp*t1*u1) + (q2*sp*\[Epsilon])/(2*t1*u1) - 
         (m2*q2*t1*\[Epsilon])/(sp^2*u1) - (3*q2^2*t1*\[Epsilon])/
          (4*sp^2*u1) + (3*q2*t1*\[Epsilon])/(4*sp*u1) + 
         (q2*t1^2*\[Epsilon])/(2*sp^2*u1) + (q2*u1*\[Epsilon])/(4*sp*t1) + 
         (3*q2*\[Epsilon])/(sp + t1 + u1) - (3*m2*q2^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/(sp*(sp + t1 + u1)) - 
         (9*q2^2*\[Epsilon])/(4*sp*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (2*t1^2*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (2*t1^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (3*q2^2*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (3*m2*q2^2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (3*q2*sp*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) - (2*q2^2*t1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (11*q2*t1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (9*q2^2*\[Epsilon])/(4*u1*(sp + t1 + u1)) - (3*m2*q2^2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (3*q2^3*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (3*q2*sp*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (9*q2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (3*m2*q2^2*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (3*q2^3*t1*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (5*m2*q2*t1*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (7*q2^2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (m2*q2*t1^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) - (9*q2^2*t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (5*q2*t1^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (q2*t1^3*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (5*q2*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (2*t1^2*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + (3*m2*q2*u1*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) + (q2*t1*u1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/(8*sp) + 
         (q2*\[Epsilon]^2)/(4*u1) - (q2^2*\[Epsilon]^2)/(8*sp*u1) - 
         (q2^2*t1*\[Epsilon]^2)/(4*sp^2*u1) + (3*q2*t1*\[Epsilon]^2)/
          (8*sp*u1) + (q2*t1^2*\[Epsilon]^2)/(4*sp^2*u1) - 
         (q2*\[Epsilon]^2)/(8*(sp + t1 + u1)) + (q2^2*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon]^2)/
          (4*sp^2*(sp + t1 + u1)) + (q2^2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (3*q2^2*t1*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) + (q2^2*t1^2*\[Epsilon]^2)/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1)), q2/(2*sp^2) - (q2*t1)/(sp*u1^2) - 
         (q2*t1^2)/(sp^2*u1^2) - (m2*q2)/(sp^2*u1) - q2^2/(2*sp^2*u1) + 
         (3*q2)/(2*sp*u1) + q2/(2*t1*u1) - q2^2/(sp*t1*u1) - 
         (q2*t1)/(2*sp^2*u1) + (4*m2^2*q2)/(sp^2*(sp + t1 + u1)^2) + 
         (2*m2*q2)/(sp*(sp + t1 + u1)^2) + (4*m2^2*q2)/
          (sp*t1*(sp + t1 + u1)^2) - (2*m2*q2*t1)/(u1^2*(sp + t1 + u1)^2) + 
         (4*m2^2*q2*t1)/(sp*u1^2*(sp + t1 + u1)^2) + (4*m2^2*q2*t1^2)/
          (sp^2*u1^2*(sp + t1 + u1)^2) - (4*m2*q2*t1^2)/
          (sp*u1^2*(sp + t1 + u1)^2) - (2*m2*q2*t1^3)/
          (sp^2*u1^2*(sp + t1 + u1)^2) + (4*m2^2*q2)/
          (sp*u1*(sp + t1 + u1)^2) - (2*m2*q2^2)/(sp*u1*(sp + t1 + u1)^2) + 
         (4*m2^2*q2*t1)/(sp^2*u1*(sp + t1 + u1)^2) - (2*m2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)^2) - (2*m2*q2*t1)/
          (sp*u1*(sp + t1 + u1)^2) - (2*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)^2) - (4*m2*q2)/(sp^2*(sp + t1 + u1)) + 
         q2^2/(2*sp^2*(sp + t1 + u1)) - (m2*q2)/(sp*t1*(sp + t1 + u1)) - 
         q2^2/(sp*t1*(sp + t1 + u1)) + (q2*t1)/(u1^2*(sp + t1 + u1)) + 
         (5*m2*q2*t1)/(sp*u1^2*(sp + t1 + u1)) + (5*m2*q2*t1^2)/
          (sp^2*u1^2*(sp + t1 + u1)) + (2*q2*t1^2)/(sp*u1^2*(sp + t1 + u1)) + 
         (q2*t1^3)/(sp^2*u1^2*(sp + t1 + u1)) - q2/(2*u1*(sp + t1 + u1)) + 
         q2^2/(2*sp*u1*(sp + t1 + u1)) + (m2*q2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (q2^2*t1)/(2*sp^2*u1*(sp + t1 + u1)) + 
         (q2*t1)/(sp*u1*(sp + t1 + u1)) + (3*q2*t1^2)/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2*u1)/(2*sp^2*(sp + t1 + u1)) + 
         (q2*u1)/(sp*t1*(sp + t1 + u1)) - (q2*\[Epsilon])/(4*sp^2) + 
         (q2*\[Epsilon])/(4*sp*t1) - (q2*t1*\[Epsilon])/(2*sp*u1^2) - 
         (q2*t1^2*\[Epsilon])/(2*sp^2*u1^2) + (m2*q2*\[Epsilon])/
          (2*sp^2*u1) - (3*q2^2*\[Epsilon])/(4*sp^2*u1) + 
         (3*q2*\[Epsilon])/(4*sp*u1) + (q2*\[Epsilon])/(4*t1*u1) + 
         (m2*q2*\[Epsilon])/(2*sp*t1*u1) - (3*q2^2*\[Epsilon])/(4*sp*t1*u1) - 
         (m2*q2*t1*\[Epsilon])/(u1^2*(sp + t1 + u1)^2) - 
         (2*m2*q2*t1^2*\[Epsilon])/(sp*u1^2*(sp + t1 + u1)^2) - 
         (m2*q2*t1^3*\[Epsilon])/(sp^2*u1^2*(sp + t1 + u1)^2) - 
         (m2*q2*t1*\[Epsilon])/(sp*u1*(sp + t1 + u1)^2) - 
         (m2*q2*t1^2*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)^2) - 
         (m2*q2*\[Epsilon])/(sp^2*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon])/(sp*(sp + t1 + u1)) + 
         (m2*q2*\[Epsilon])/(2*t1^2*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (sp*u1^2*(sp + t1 + u1)) + (m2*q2*t1^2*\[Epsilon])/
          (sp^2*u1^2*(sp + t1 + u1)) + (3*q2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (3*q2*u1*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (2*sp*u1^2*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon]^2)/
          (4*sp^2*u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (4*sp*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (4*sp^2*u1*(sp + t1 + u1))}, {0, 0, q2/(2*sp^2*u1) + 
         q2/(2*sp*t1*u1) - q2/(2*sp^2*(sp + t1 + u1)) + 
         q2/(2*sp*t1*(sp + t1 + u1)) - q2/(2*sp*u1*(sp + t1 + u1)) - 
         (q2*t1)/(2*sp^2*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(4*sp^2*u1) + 
         (q2*\[Epsilon])/(4*sp*t1*u1) - (q2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) - (q2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1))}}, {{0, 0, 0}, 
       {0, 0, (m2*q2)/(sp^2*t1) + q2^2/(2*sp^2*t1) - q2^2/(2*sp^2*u1) + 
         (q2*t1)/(2*sp^2*u1) - (q2*u1)/(2*sp^2*t1) - 
         (m2*q2)/(sp^2*(sp + t1 + u1)) + q2^3/(2*sp^2*t1*(sp + t1 + u1)) - 
         (m2*q2)/(sp*t1*(sp + t1 + u1)) - (q2*t1)/(2*sp^2*(sp + t1 + u1)) - 
         q2^3/(2*sp^2*u1*(sp + t1 + u1)) + (q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) - (q2*t1^2)/(2*sp^2*u1*(sp + t1 + u1)) + 
         (q2*u1)/(2*sp^2*(sp + t1 + u1)) - (m2*q2*u1)/
          (sp^2*t1*(sp + t1 + u1)) - (q2^2*u1)/(sp^2*t1*(sp + t1 + u1)) + 
         (q2*u1^2)/(2*sp^2*t1*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*sp^2*t1) + (q2^2*\[Epsilon])/(4*sp^2*t1) - 
         (q2^2*\[Epsilon])/(4*sp^2*u1) + (q2*t1*\[Epsilon])/(4*sp^2*u1) - 
         (q2*u1*\[Epsilon])/(4*sp^2*t1) + (m2*q2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (q2^3*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) - (q2^2*u1*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/(8*sp^2) + 
         (q2^2*\[Epsilon]^2)/(8*sp^2*u1) - (q2*t1*\[Epsilon]^2)/(8*sp^2*u1) - 
         (q2^2*\[Epsilon]^2)/(8*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (4*sp^2*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon]^2)/
          (8*sp^2*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (8*sp^2*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon]^2)/
          (8*sp^2*(sp + t1 + u1))}, {(3*m2*q2)/sp^2 + (4*m2^2*q2)/(sp*t1^2) - 
         q2/t1 + (4*m2^2*q2)/(sp^2*t1) + (3*m2*q2)/(sp*t1) - (q2*t1)/sp^2 - 
         (q2*\[Epsilon])/(2*sp) - (q2*\[Epsilon])/t1 - (q2*t1*\[Epsilon])/
          sp^2 - (q2*\[Epsilon]^2)/(4*sp) - (q2*\[Epsilon]^2)/(4*t1) - 
         (q2*t1*\[Epsilon]^2)/(4*sp^2), (-2*q2)/sp^2 - (2*m2*q2)/(sp*t1^2) - 
         (m2*q2)/(sp^2*t1) - q2^2/(2*sp^2*t1) - q2/(2*sp*t1) - 
         q2^2/(2*sp^2*u1) + q2/(2*t1*u1) - (m2*q2^2)/(sp^2*t1*u1) + 
         q2^3/(2*sp^2*t1*u1) + (3*m2*q2)/(2*sp*t1*u1) - q2^2/(sp*t1*u1) - 
         (3*q2*t1)/(2*sp^2*u1) - (4*m2*q2)/(sp^2*(sp + t1 + u1)) - 
         (3*q2^2)/(2*sp^2*(sp + t1 + u1)) + (4*q2)/(sp*(sp + t1 + u1)) + 
         (m2*q2)/(t1^2*(sp + t1 + u1)) - (2*m2^2*q2)/
          (sp*t1^2*(sp + t1 + u1)) - (m2*q2^2)/(sp*t1^2*(sp + t1 + u1)) + 
         (3*q2)/(2*t1*(sp + t1 + u1)) - (4*m2^2*q2)/
          (sp^2*t1*(sp + t1 + u1)) - (m2*q2^2)/(sp^2*t1*(sp + t1 + u1)) - 
         (3*m2*q2)/(2*sp*t1*(sp + t1 + u1)) - (3*q2^2)/
          (2*sp*t1*(sp + t1 + u1)) + (7*q2*t1)/(2*sp^2*(sp + t1 + u1)) + 
         (3*q2)/(2*u1*(sp + t1 + u1)) - (4*m2^2*q2)/
          (sp^2*u1*(sp + t1 + u1)) + (m2*q2^2)/(sp^2*u1*(sp + t1 + u1)) + 
         q2^3/(2*sp^2*u1*(sp + t1 + u1)) - (11*m2*q2)/
          (2*sp*u1*(sp + t1 + u1)) - (5*q2^2)/(2*sp*u1*(sp + t1 + u1)) - 
         (3*m2*q2)/(2*t1*u1*(sp + t1 + u1)) - q2^2/(t1*u1*(sp + t1 + u1)) - 
         (2*m2^2*q2)/(sp*t1*u1*(sp + t1 + u1)) + 
         q2^3/(2*sp*t1*u1*(sp + t1 + u1)) + (q2*sp)/
          (2*t1*u1*(sp + t1 + u1)) - (4*m2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) - 
         (3*q2^2*t1)/(2*sp^2*u1*(sp + t1 + u1)) + 
         (5*q2*t1)/(2*sp*u1*(sp + t1 + u1)) + (3*q2*t1^2)/
          (2*sp^2*u1*(sp + t1 + u1)) + (2*q2*u1)/(sp^2*(sp + t1 + u1)) + 
         (m2*q2*u1)/(sp*t1^2*(sp + t1 + u1)) + (2*m2*q2*u1)/
          (sp^2*t1*(sp + t1 + u1)) + (q2*u1)/(sp*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/(4*sp^2) - (m2*q2*\[Epsilon])/(sp*t1^2) - 
         (m2*q2*\[Epsilon])/(2*sp^2*t1) - (q2^2*\[Epsilon])/(4*sp^2*t1) - 
         (q2*\[Epsilon])/(4*sp*t1) + (m2*q2*\[Epsilon])/(2*sp^2*u1) - 
         (q2^2*\[Epsilon])/(sp^2*u1) + (q2*\[Epsilon])/(4*t1*u1) - 
         (m2*q2^2*\[Epsilon])/(2*sp^2*t1*u1) + (q2^3*\[Epsilon])/
          (4*sp^2*t1*u1) + (m2*q2*\[Epsilon])/(4*sp*t1*u1) - 
         (q2^2*\[Epsilon])/(2*sp*t1*u1) - (m2*q2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (13*q2*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/(t1^2*(sp + t1 + u1)) - 
         (m2*q2^2*\[Epsilon])/(sp*t1^2*(sp + t1 + u1)) + 
         (3*q2*\[Epsilon])/(2*t1*(sp + t1 + u1)) - (3*m2*q2^2*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) + (3*m2*q2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (5*q2*t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (9*q2*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (3*m2*q2^2*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) + 
         (3*q2^3*\[Epsilon])/(4*sp^2*u1*(sp + t1 + u1)) - 
         (3*m2*q2*\[Epsilon])/(4*sp*u1*(sp + t1 + u1)) - 
         (5*q2^2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (sp*t1*u1*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (2*sp*t1*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (2*q2^2*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (5*q2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (sp*t1^2*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (sp*t1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/(8*sp^2) - 
         (q2^2*\[Epsilon]^2)/(8*sp^2*u1) + (q2*\[Epsilon]^2)/(4*sp*u1) + 
         (3*q2*t1*\[Epsilon]^2)/(8*sp^2*u1) + (q2^2*\[Epsilon]^2)/
          (8*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/(8*sp*(sp + t1 + u1)) + 
         (q2*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) + (q2^2*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon]^2)/
          (8*sp^2*u1*(sp + t1 + u1)) + (3*q2*t1*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (8*sp^2*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon]^2)/
          (8*sp^2*(sp + t1 + u1)), -q2/(2*sp^2*t1) + q2/(2*sp^2*u1) - 
         q2^2/(2*sp^2*t1*u1) + (m2*q2)/(sp*t1^2*(sp + t1 + u1)) - 
         (m2*q2)/(sp^2*t1*(sp + t1 + u1)) - q2^2/(2*sp^2*t1*(sp + t1 + u1)) + 
         q2/(sp*t1*(sp + t1 + u1)) - (q2*t1)/(sp*u1^2*(sp + t1 + u1)) - 
         (q2*t1^2)/(sp^2*u1^2*(sp + t1 + u1)) + q2/(2*sp*u1*(sp + t1 + u1)) + 
         q2/(2*t1*u1*(sp + t1 + u1)) + (m2*q2)/(sp*t1*u1*(sp + t1 + u1)) - 
         q2^2/(2*sp*t1*u1*(sp + t1 + u1)) - (3*q2*t1)/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2*u1)/(2*sp^2*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/(4*sp^2*t1) + (q2*\[Epsilon])/(4*sp^2*u1) - 
         (q2^2*\[Epsilon])/(4*sp^2*t1*u1) + (m2*q2*\[Epsilon])/
          (2*sp*t1^2*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (sp*u1^2*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (sp^2*u1^2*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp*t1*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (4*sp*t1*u1*(sp + t1 + u1)) - (5*q2*t1*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (4*sp*u1^2*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (4*sp^2*u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (4*sp^2*u1*(sp + t1 + u1))}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, 
       {(4*m2^2*q2)/(sp^2*t1^2) + (3*m2*q2)/(sp^2*t1) - (2*q2)/(sp*t1) - 
         (q2*\[Epsilon])/(2*sp^2) - (2*q2*\[Epsilon])/(sp*t1) - 
         (q2*\[Epsilon]^2)/(4*sp^2) - (q2*\[Epsilon]^2)/(2*sp*t1), 
        (-2*m2*q2)/(sp^2*t1^2) - q2/(sp^2*t1) + 
         (2*q2)/(sp^2*(sp + t1 + u1)) - (m2*q2^2)/(sp^2*t1^2*
           (sp + t1 + u1)) + (m2*q2)/(sp*t1^2*(sp + t1 + u1)) + 
         (m2*q2)/(sp^2*t1*(sp + t1 + u1)) - (3*q2^2)/(2*sp^2*t1*
           (sp + t1 + u1)) + (3*q2)/(2*sp*t1*(sp + t1 + u1)) - 
         (2*q2^2)/(sp^2*u1*(sp + t1 + u1)) + q2/(sp*u1*(sp + t1 + u1)) + 
         q2/(2*t1*u1*(sp + t1 + u1)) - (m2*q2^2)/(sp^2*t1*u1*
           (sp + t1 + u1)) + q2^3/(2*sp^2*t1*u1*(sp + t1 + u1)) - 
         q2^2/(sp*t1*u1*(sp + t1 + u1)) + (q2*t1)/(sp^2*u1*(sp + t1 + u1)) + 
         (m2*q2*u1)/(sp^2*t1^2*(sp + t1 + u1)) + 
         (q2*u1)/(sp^2*t1*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/(sp^2*t1^2) - 
         (q2*\[Epsilon])/(2*sp^2*t1) + (3*q2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (2*sp^2*t1^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp*t1^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) + (3*q2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(sp*u1*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(4*t1*u1*(sp + t1 + u1)) - (m2*q2^2*\[Epsilon])/
          (2*sp^2*t1*u1*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (4*sp^2*t1*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (2*sp*t1*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (2*sp^2*t1^2*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (4*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (4*sp*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (4*sp^2*u1*(sp + t1 + u1)), 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {-(q2/(sp^2*t1)) - (q2*\[Epsilon])/(sp^2*t1) - 
         (q2*\[Epsilon]^2)/(4*sp^2*t1), 0, 0}, {0, 0, 0}}}}
 
CoeffRQED[P] = {{{{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}, 
     {{{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}, 
     {{{0, 0, -2*k2hat2*m2*sp - 2*m2^2*sp}, 
       {0, 0, (k2hat2*sp)/2 - (m2*sp)/2 - (2*m2^2*sp)/u1 + 
         (k2hat2*q2*sp)/(2*u1) + (3*m2*q2*sp)/(2*u1) + 
         (k2hat2*q2*t1)/(2*u1) + (3*m2*q2*t1)/(2*u1) + (k2hat2*q2*t1^2)/
          (sp*u1) + (m2*q2*t1^2)/(sp*u1) + (k2hat2*sp*\[Epsilon])/4 + 
         (k2hat2*m2*sp*\[Epsilon])/(2*u1) + (k2hat2*q2*sp*\[Epsilon])/
          (4*u1) + (m2*q2*sp*\[Epsilon])/(2*u1) + (3*k2hat2*q2*t1*\[Epsilon])/
          (4*u1) + (m2*q2*t1*\[Epsilon])/u1 + (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp*u1) + (m2*q2*t1^2*\[Epsilon])/(2*sp*u1)}, 
       {0, 0, (-2*k2hat2*m2*sp)/u1^2 - (2*m2^2*sp)/u1^2 - 
         (k2hat2*q2*sp)/u1^2 - (m2*q2*sp)/u1^2 - (3*k2hat2*q2*t1)/u1^2 - 
         (3*m2*q2*t1)/u1^2 - (2*k2hat2*q2*t1^2)/(sp*u1^2) - 
         (2*m2*q2*t1^2)/(sp*u1^2) + (k2hat2*sp)/(2*u1) - (m2*sp)/(2*u1) + 
         (3*k2hat2*t1)/(2*u1) + (m2*t1)/(2*u1) + (k2hat2*m2*sp*\[Epsilon])/
          u1^2 + (k2hat2*q2*sp*\[Epsilon])/(2*u1^2) + (m2*q2*sp*\[Epsilon])/
          u1^2 + (3*k2hat2*q2*t1*\[Epsilon])/(2*u1^2) + 
         (2*m2*q2*t1*\[Epsilon])/u1^2 + (k2hat2*q2*t1^2*\[Epsilon])/
          (sp*u1^2) + (m2*q2*t1^2*\[Epsilon])/(sp*u1^2) - 
         (k2hat2*sp*\[Epsilon])/(4*u1) - (m2*sp*\[Epsilon])/u1 - 
         (3*k2hat2*t1*\[Epsilon])/(4*u1) - (m2*t1*\[Epsilon])/u1}, 
       {0, 0, -(m2*sp*\[Epsilon])/(2*u1^2) - (m2*t1*\[Epsilon])/(2*u1^2)}, 
       {0, 0, 0}}, {{0, -2*k2hat2*m2*sp - 2*m2^2*sp - (m2*q2*sp)/2 + 
         (m2*sp^2)/2, -3*k2hat2*m2 - 3*m2^2 - (5*m2*q2)/2 - (m2*sp)/2}, 
       {0, k2hat2*m2 + m2^2 + k2hat2*q2 + (7*m2*q2)/2 + q2^2/2 - 
         (k2hat2*sp)/4 - (19*m2*sp)/4 + (q2*sp)/4 - sp^2/4 - (3*m2^2*sp)/t1 + 
         (k2hat2*q2*sp)/(2*t1) + (2*m2*q2*sp)/t1 + (q2^2*sp)/(4*t1) - 
         (m2*sp^2)/(4*t1) - (3*k2hat2*t1)/2 - (3*m2*t1)/2 + (q2*t1)/2 + 
         (k2hat2*q2*t1)/sp + (m2*q2*t1)/sp + (q2^2*t1)/(4*sp) - (sp*t1)/4 + 
         (k2hat2*m2*sp)/u1 - (2*m2^2*sp)/u1 + (k2hat2*q2*sp)/(2*u1) + 
         (9*m2*q2*sp)/(4*u1) - (m2*sp^2)/(4*u1) + (k2hat2*m2*t1)/u1 + 
         (m2^2*t1)/u1 + (7*k2hat2*q2*t1)/(4*u1) + (15*m2*q2*t1)/(4*u1) - 
         (q2^2*t1)/(4*u1) - (k2hat2*sp*t1)/(4*u1) - (7*m2*sp*t1)/(4*u1) - 
         (k2hat2*t1^2)/(2*u1) - (m2*t1^2)/(2*u1) + (3*k2hat2*q2*t1^2)/
          (2*sp*u1) + (3*m2*q2*t1^2)/(2*sp*u1) - k2hat2*u1 - m2*u1 - 
         (q2*u1)/4 - (sp*u1)/4 - (k2hat2*sp*u1)/(2*t1) - (2*m2*sp*u1)/t1 - 
         (q2*sp*u1)/(4*t1) + (k2hat2*q2*\[Epsilon])/2 + m2*q2*\[Epsilon] + 
         (k2hat2*sp*\[Epsilon])/8 - m2*sp*\[Epsilon] + (3*q2*sp*\[Epsilon])/
          8 + (k2hat2*m2*sp*\[Epsilon])/(2*t1) - (k2hat2*q2*sp*\[Epsilon])/
          (4*t1) + (m2*q2*sp*\[Epsilon])/(2*t1) - (q2^2*sp*\[Epsilon])/
          (8*t1) - (m2*sp^2*\[Epsilon])/(4*t1) + (q2*sp^2*\[Epsilon])/
          (8*t1) - (3*k2hat2*t1*\[Epsilon])/4 - (3*m2*t1*\[Epsilon])/4 + 
         (q2*t1*\[Epsilon])/4 + (k2hat2*q2*t1*\[Epsilon])/(2*sp) + 
         (m2*q2*t1*\[Epsilon])/(2*sp) + (q2^2*t1*\[Epsilon])/(8*sp) - 
         (sp*t1*\[Epsilon])/8 + (3*k2hat2*m2*sp*\[Epsilon])/(4*u1) + 
         (k2hat2*q2*sp*\[Epsilon])/(4*u1) + (3*m2*q2*sp*\[Epsilon])/(4*u1) - 
         (q2*sp^2*\[Epsilon])/(8*u1) + (7*k2hat2*q2*t1*\[Epsilon])/(8*u1) + 
         (3*m2*q2*t1*\[Epsilon])/(2*u1) + (k2hat2*sp*t1*\[Epsilon])/(8*u1) - 
         (m2*sp*t1*\[Epsilon])/(4*u1) - (q2*sp*t1*\[Epsilon])/(8*u1) - 
         (k2hat2*t1^2*\[Epsilon])/(4*u1) - (m2*t1^2*\[Epsilon])/(4*u1) + 
         (3*k2hat2*q2*t1^2*\[Epsilon])/(4*sp*u1) + (3*m2*q2*t1^2*\[Epsilon])/
          (4*sp*u1) - (k2hat2*u1*\[Epsilon])/2 - (m2*u1*\[Epsilon])/2 - 
         (q2*u1*\[Epsilon])/8 - (sp*u1*\[Epsilon])/8 + 
         (k2hat2*sp*u1*\[Epsilon])/(4*t1) + (q2*sp*u1*\[Epsilon])/(8*t1) - 
         (sp^2*u1*\[Epsilon])/(8*t1), (3*k2hat2)/4 - m2 + (3*q2)/4 + 
         (k2hat2*m2)/sp + m2^2/sp + (5*k2hat2*q2)/(2*sp) + (4*m2*q2)/sp - 
         q2^2/(4*sp) + sp/4 + (2*k2hat2*m2)/t1 - (3*m2^2)/t1 + (2*m2*q2)/t1 + 
         (m2*sp)/(2*t1) - (q2*sp)/(4*t1) + (2*k2hat2*q2*t1)/sp^2 + 
         (m2*q2*t1)/sp^2 - (q2^2*t1)/(4*sp^2) - (2*k2hat2*t1)/sp - 
         (m2*t1)/sp + (9*q2*t1)/(4*sp) + (3*q2*t1^2)/(4*sp^2) - t1^2/(4*sp) + 
         (2*k2hat2*m2)/u1 - (3*m2^2)/u1 + (k2hat2*q2)/(4*u1) + 
         (13*m2*q2)/(4*u1) + q2^2/(4*u1) + (m2*sp)/(2*u1) + 
         (k2hat2*t1)/(4*u1) + (m2*t1)/(2*u1) - (q2*t1)/(4*u1) + 
         (k2hat2*m2*t1)/(sp*u1) + (m2^2*t1)/(sp*u1) + (7*k2hat2*q2*t1)/
          (4*sp*u1) + (25*m2*q2*t1)/(4*sp*u1) - (q2^2*t1)/(sp*u1) + 
         (3*k2hat2*q2*t1^2)/(2*sp^2*u1) + (m2*q2*t1^2)/(2*sp^2*u1) - 
         (q2^2*t1^2)/(4*sp^2*u1) - (k2hat2*t1^2)/(2*sp*u1) - 
         (m2*t1^2)/(2*sp*u1) + (q2*t1^2)/(2*sp*u1) + (q2*t1^3)/(4*sp^2*u1) - 
         u1/4 - (5*k2hat2*u1)/(2*sp) - (3*m2*u1)/(2*sp) + (3*q2*u1)/(4*sp) - 
         (3*m2*u1)/(2*t1) + (sp*u1)/(4*t1) + (q2*t1*u1)/(2*sp^2) - 
         (3*t1*u1)/(4*sp) - u1^2/(2*sp) - (5*k2hat2*m2)/(sp + t1 + u1) - 
         (3*m2^2)/(sp + t1 + u1) - (3*k2hat2*q2)/(2*(sp + t1 + u1)) - 
         (4*m2*q2)/(sp + t1 + u1) + (7*q2^2)/(4*(sp + t1 + u1)) + 
         (4*k2hat2*m2*q2)/(sp*(sp + t1 + u1)) + (8*m2^2*q2)/
          (sp*(sp + t1 + u1)) + (2*k2hat2*q2^2)/(sp*(sp + t1 + u1)) + 
         (2*m2*q2^2)/(sp*(sp + t1 + u1)) - q2^3/(sp*(sp + t1 + u1)) + 
         (3*k2hat2*sp)/(4*(sp + t1 + u1)) - (7*m2*sp)/(4*(sp + t1 + u1)) + 
         (3*q2*sp)/(4*(sp + t1 + u1)) + (4*k2hat2*m2^2)/(t1*(sp + t1 + u1)) + 
         (2*k2hat2*m2*q2)/(t1*(sp + t1 + u1)) + (4*m2^2*q2)/
          (t1*(sp + t1 + u1)) + (m2*q2^2)/(t1*(sp + t1 + u1)) - 
         q2^3/(2*t1*(sp + t1 + u1)) - (3*k2hat2*m2*sp)/
          (2*t1*(sp + t1 + u1)) - (k2hat2*q2*sp)/(4*t1*(sp + t1 + u1)) - 
         (q2^2*sp)/(4*t1*(sp + t1 + u1)) + (m2*sp^2)/(4*t1*(sp + t1 + u1)) + 
         (k2hat2*t1)/(2*(sp + t1 + u1)) - (m2*t1)/(sp + t1 + u1) - 
         (q2*t1)/(sp + t1 + u1) + (4*k2hat2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) + 
         (4*m2^2*q2*t1)/(sp^2*(sp + t1 + u1)) + (2*k2hat2*q2^2*t1)/
          (sp^2*(sp + t1 + u1)) + (m2*q2^2*t1)/(sp^2*(sp + t1 + u1)) - 
         (q2^3*t1)/(2*sp^2*(sp + t1 + u1)) - (4*k2hat2*m2*t1)/
          (sp*(sp + t1 + u1)) - (4*m2^2*t1)/(sp*(sp + t1 + u1)) - 
         (6*k2hat2*q2*t1)/(sp*(sp + t1 + u1)) - (5*m2*q2*t1)/
          (sp*(sp + t1 + u1)) + (7*q2^2*t1)/(2*sp*(sp + t1 + u1)) - 
         (sp*t1)/(4*(sp + t1 + u1)) + t1^2/(4*(sp + t1 + u1)) - 
         (3*k2hat2*q2*t1^2)/(sp^2*(sp + t1 + u1)) - (m2*q2*t1^2)/
          (sp^2*(sp + t1 + u1)) + (7*q2^2*t1^2)/(4*sp^2*(sp + t1 + u1)) + 
         (k2hat2*t1^2)/(sp*(sp + t1 + u1)) - (9*q2*t1^2)/
          (4*sp*(sp + t1 + u1)) - (q2*t1^3)/(sp^2*(sp + t1 + u1)) + 
         t1^3/(4*sp*(sp + t1 + u1)) + (4*k2hat2*m2^2)/(u1*(sp + t1 + u1)) + 
         (2*k2hat2*m2*q2)/(u1*(sp + t1 + u1)) + (4*m2^2*q2)/
          (u1*(sp + t1 + u1)) + (m2*q2^2)/(u1*(sp + t1 + u1)) - 
         q2^3/(2*u1*(sp + t1 + u1)) - (k2hat2*m2*sp)/(2*u1*(sp + t1 + u1)) - 
         (m2^2*sp)/(u1*(sp + t1 + u1)) + (3*m2*q2*sp)/(2*u1*(sp + t1 + u1)) - 
         (q2^2*sp)/(4*u1*(sp + t1 + u1)) + (m2*sp^2)/(4*u1*(sp + t1 + u1)) - 
         (k2hat2*m2*t1)/(u1*(sp + t1 + u1)) + (m2^2*t1)/(u1*(sp + t1 + u1)) + 
         (q2^2*t1)/(2*u1*(sp + t1 + u1)) + (4*k2hat2*m2*q2*t1)/
          (sp*u1*(sp + t1 + u1)) + (8*m2^2*q2*t1)/(sp*u1*(sp + t1 + u1)) + 
         (2*k2hat2*q2^2*t1)/(sp*u1*(sp + t1 + u1)) + (2*m2*q2^2*t1)/
          (sp*u1*(sp + t1 + u1)) - (q2^3*t1)/(sp*u1*(sp + t1 + u1)) - 
         (m2*sp*t1)/(u1*(sp + t1 + u1)) + (q2*sp*t1)/(4*u1*(sp + t1 + u1)) - 
         (m2*t1^2)/(4*u1*(sp + t1 + u1)) + (4*k2hat2*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (4*m2^2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (2*k2hat2*q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (m2*q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (q2^3*t1^2)/(2*sp^2*u1*(sp + t1 + u1)) - 
         (k2hat2*q2*t1^2)/(sp*u1*(sp + t1 + u1)) - (m2*q2*t1^2)/
          (2*sp*u1*(sp + t1 + u1)) + (3*q2^2*t1^2)/(2*sp*u1*(sp + t1 + u1)) - 
         (k2hat2*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) + (3*q2^2*t1^3)/
          (4*sp^2*u1*(sp + t1 + u1)) - (q2*t1^3)/(2*sp*u1*(sp + t1 + u1)) - 
         (q2*t1^4)/(4*sp^2*u1*(sp + t1 + u1)) + (3*k2hat2*u1)/
          (2*(sp + t1 + u1)) + (3*m2*u1)/(4*(sp + t1 + u1)) - 
         (2*q2*u1)/(sp + t1 + u1) - (4*k2hat2*m2*u1)/(sp*(sp + t1 + u1)) - 
         (4*m2^2*u1)/(sp*(sp + t1 + u1)) - (4*k2hat2*q2*u1)/
          (sp*(sp + t1 + u1)) - (7*m2*q2*u1)/(2*sp*(sp + t1 + u1)) + 
         (9*q2^2*u1)/(4*sp*(sp + t1 + u1)) - (sp*u1)/(2*(sp + t1 + u1)) - 
         (2*k2hat2*m2*u1)/(t1*(sp + t1 + u1)) - (2*m2^2*u1)/
          (t1*(sp + t1 + u1)) - (3*m2*q2*u1)/(2*t1*(sp + t1 + u1)) + 
         (5*q2^2*u1)/(4*t1*(sp + t1 + u1)) + (k2hat2*sp*u1)/
          (4*t1*(sp + t1 + u1)) - (m2*sp*u1)/(4*t1*(sp + t1 + u1)) + 
         (q2*sp*u1)/(2*t1*(sp + t1 + u1)) + (3*t1*u1)/(4*(sp + t1 + u1)) - 
         (2*k2hat2*q2*t1*u1)/(sp^2*(sp + t1 + u1)) - (m2*q2*t1*u1)/
          (sp^2*(sp + t1 + u1)) + (q2^2*t1*u1)/(sp^2*(sp + t1 + u1)) + 
         (3*k2hat2*t1*u1)/(sp*(sp + t1 + u1)) + (m2*t1*u1)/
          (sp*(sp + t1 + u1)) - (7*q2*t1*u1)/(2*sp*(sp + t1 + u1)) - 
         (5*q2*t1^2*u1)/(4*sp^2*(sp + t1 + u1)) + 
         (t1^2*u1)/(sp*(sp + t1 + u1)) + (3*u1^2)/(4*(sp + t1 + u1)) + 
         (2*k2hat2*u1^2)/(sp*(sp + t1 + u1)) + (m2*u1^2)/
          (sp*(sp + t1 + u1)) - (7*q2*u1^2)/(4*sp*(sp + t1 + u1)) + 
         (m2*u1^2)/(2*t1*(sp + t1 + u1)) - (q2*u1^2)/(t1*(sp + t1 + u1)) - 
         (sp*u1^2)/(4*t1*(sp + t1 + u1)) - (q2*t1*u1^2)/
          (2*sp^2*(sp + t1 + u1)) + (5*t1*u1^2)/(4*sp*(sp + t1 + u1)) + 
         u1^3/(2*sp*(sp + t1 + u1)) + u1^3/(4*t1*(sp + t1 + u1)) + 
         (k2hat2*\[Epsilon])/8 - (9*m2*\[Epsilon])/8 + (5*q2*\[Epsilon])/8 + 
         (k2hat2*q2*\[Epsilon])/(4*sp) + (q2^2*\[Epsilon])/(2*sp) + 
         (sp*\[Epsilon])/8 + (q2^2*\[Epsilon])/(8*t1) - (m2*sp*\[Epsilon])/
          (4*t1) + (q2*sp*\[Epsilon])/(8*t1) - (t1*\[Epsilon])/8 + 
         (3*q2^2*t1*\[Epsilon])/(8*sp^2) - (k2hat2*t1*\[Epsilon])/sp - 
         (m2*t1*\[Epsilon])/sp + (5*q2*t1*\[Epsilon])/(8*sp) + 
         (q2*t1^2*\[Epsilon])/(8*sp^2) - (t1^2*\[Epsilon])/(8*sp) + 
         (3*k2hat2*m2*\[Epsilon])/(4*u1) + (3*k2hat2*q2*\[Epsilon])/(8*u1) + 
         (7*m2*q2*\[Epsilon])/(4*u1) + (q2^2*\[Epsilon])/(8*u1) + 
         (3*m2*sp*\[Epsilon])/(8*u1) - (k2hat2*t1*\[Epsilon])/(8*u1) + 
         (m2*t1*\[Epsilon])/(8*u1) + (q2*t1*\[Epsilon])/(4*u1) + 
         (7*k2hat2*q2*t1*\[Epsilon])/(8*sp*u1) + (5*m2*q2*t1*\[Epsilon])/
          (2*sp*u1) + (q2^2*t1*\[Epsilon])/(4*sp*u1) + 
         (3*k2hat2*q2*t1^2*\[Epsilon])/(4*sp^2*u1) + 
         (3*m2*q2*t1^2*\[Epsilon])/(4*sp^2*u1) + (q2^2*t1^2*\[Epsilon])/
          (8*sp^2*u1) - (k2hat2*t1^2*\[Epsilon])/(4*sp*u1) - 
         (m2*t1^2*\[Epsilon])/(4*sp*u1) + (3*q2*t1^2*\[Epsilon])/(8*sp*u1) + 
         (q2*t1^3*\[Epsilon])/(8*sp^2*u1) - (u1*\[Epsilon])/8 - 
         (k2hat2*u1*\[Epsilon])/(4*sp) - (m2*u1*\[Epsilon])/(4*sp) - 
         (q2*u1*\[Epsilon])/(2*sp) + (m2*u1*\[Epsilon])/(4*t1) - 
         (q2*u1*\[Epsilon])/(4*t1) - (sp*u1*\[Epsilon])/(8*t1) - 
         (t1*u1*\[Epsilon])/(8*sp) + (u1^2*\[Epsilon])/(8*t1) - 
         (k2hat2*m2*\[Epsilon])/(2*(sp + t1 + u1)) + (k2hat2*q2*\[Epsilon])/
          (2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (3*q2^2*\[Epsilon])/(8*(sp + t1 + u1)) - (k2hat2*sp*\[Epsilon])/
          (8*(sp + t1 + u1)) + (k2hat2*m2*sp*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (k2hat2*q2*sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (k2hat2*t1*\[Epsilon])/(4*(sp + t1 + u1)) + 
         (m2*t1*\[Epsilon])/(2*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (4*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon])/(2*sp*(sp + t1 + u1)) + 
         (sp*t1*\[Epsilon])/(8*(sp + t1 + u1)) + (t1^2*\[Epsilon])/
          (4*(sp + t1 + u1)) - (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (m2*q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2^2*t1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (k2hat2*t1^2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (m2*t1^2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (t1^3*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (k2hat2*q2*sp*\[Epsilon])/(4*u1*(sp + t1 + u1)) + 
         (q2^2*sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (k2hat2*m2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (k2hat2*q2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (3*q2^2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*sp*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (3*q2*t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) - (m2*q2*t1^2*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (3*q2^2*t1^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (k2hat2*q2*t1^3*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (m2*q2*t1^3*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2^2*t1^3*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) - (3*q2*t1^3*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (q2*t1^4*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) - (k2hat2*u1*\[Epsilon])/
          (4*(sp + t1 + u1)) + (m2*u1*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (3*q2*u1*\[Epsilon])/(8*(sp + t1 + u1)) + (k2hat2*sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (m2*sp*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (3*q2*sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (t1*u1*\[Epsilon])/(4*(sp + t1 + u1)) + 
         (k2hat2*t1*u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) + 
         (m2*t1*u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - (q2*t1*u1*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) - (q2*t1^2*u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (t1^2*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (sp*u1^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (t1*u1^2*\[Epsilon])/
          (8*sp*(sp + t1 + u1))}, {0, (-3*k2hat2)/4 + (13*m2)/4 + (11*q2)/4 + 
         (3*k2hat2*m2)/sp + (3*m2^2)/sp + (3*k2hat2*q2)/(2*sp) - 
         (m2*q2)/(2*sp) - (2*q2^2)/sp - (5*sp)/4 + (5*m2^2)/t1 - 
         (m2*q2)/(2*t1) - (5*q2^2)/(4*t1) - (k2hat2*sp)/(4*t1) - 
         (3*m2*sp)/(4*t1) + (2*q2*sp)/t1 - sp^2/t1 - t1/2 - 
         (3*q2^2*t1)/(4*sp^2) + (k2hat2*t1)/sp + (m2*t1)/sp + (q2*t1)/sp - 
         (k2hat2*m2)/u1 + (4*m2^2)/u1 + (5*k2hat2*q2)/(4*u1) - 
         (3*m2*q2)/(4*u1) - (3*q2^2)/u1 - (4*k2hat2*m2*q2)/(sp*u1) - 
         (8*m2^2*q2)/(sp*u1) - (2*k2hat2*q2^2)/(sp*u1) - 
         (2*m2*q2^2)/(sp*u1) + q2^3/(sp*u1) - (k2hat2*sp)/(4*u1) - 
         (3*m2*sp)/(4*u1) + (3*q2*sp)/u1 - sp^2/u1 - (4*k2hat2*m2^2)/
          (t1*u1) - (2*k2hat2*m2*q2)/(t1*u1) - (4*m2^2*q2)/(t1*u1) - 
         (m2*q2^2)/(t1*u1) + q2^3/(2*t1*u1) + (k2hat2*m2*sp)/(2*t1*u1) + 
         (2*m2^2*sp)/(t1*u1) - (k2hat2*q2*sp)/(4*t1*u1) + 
         (3*m2*q2*sp)/(2*t1*u1) - (3*q2^2*sp)/(2*t1*u1) + 
         (k2hat2*sp^2)/(4*t1*u1) - (m2*sp^2)/(t1*u1) + 
         (3*q2*sp^2)/(2*t1*u1) - sp^3/(2*t1*u1) - (k2hat2*t1)/(4*u1) + 
         (3*m2*t1)/(4*u1) + (9*q2*t1)/(4*u1) - (4*k2hat2*m2*q2*t1)/
          (sp^2*u1) - (4*m2^2*q2*t1)/(sp^2*u1) - (2*k2hat2*q2^2*t1)/
          (sp^2*u1) - (m2*q2^2*t1)/(sp^2*u1) + (q2^3*t1)/(2*sp^2*u1) - 
         (k2hat2*m2*t1)/(sp*u1) - (m2^2*t1)/(sp*u1) + (k2hat2*q2*t1)/
          (4*sp*u1) - (11*m2*q2*t1)/(4*sp*u1) - (7*q2^2*t1)/(4*sp*u1) - 
         (3*sp*t1)/(4*u1) - t1^2/(4*u1) - (k2hat2*q2*t1^2)/(2*sp^2*u1) - 
         (m2*q2*t1^2)/(2*sp^2*u1) - (q2^2*t1^2)/(2*sp^2*u1) + 
         (k2hat2*t1^2)/(2*sp*u1) + (m2*t1^2)/(2*sp*u1) + 
         (3*q2*t1^2)/(4*sp*u1) - u1/2 + (k2hat2*u1)/(2*sp) + (m2*u1)/(2*sp) + 
         (q2*u1)/sp + (m2*u1)/t1 + (q2*u1)/t1 - (3*sp*u1)/(4*t1) - 
         u1^2/(4*t1) - (k2hat2*\[Epsilon])/8 + (m2*\[Epsilon])/4 + 
         (9*q2*\[Epsilon])/8 - (k2hat2*q2*\[Epsilon])/(4*sp) - 
         (q2^2*\[Epsilon])/(2*sp) - (3*sp*\[Epsilon])/4 - 
         (q2^2*\[Epsilon])/(8*t1) + (3*k2hat2*sp*\[Epsilon])/(8*t1) - 
         (m2*sp*\[Epsilon])/(4*t1) + (5*q2*sp*\[Epsilon])/(8*t1) - 
         (3*sp^2*\[Epsilon])/(8*t1) - (t1*\[Epsilon])/4 - 
         (3*q2^2*t1*\[Epsilon])/(8*sp^2) + (k2hat2*t1*\[Epsilon])/(2*sp) + 
         (m2*t1*\[Epsilon])/(2*sp) + (q2*t1*\[Epsilon])/(2*sp) - 
         (k2hat2*m2*\[Epsilon])/(4*u1) + (k2hat2*q2*\[Epsilon])/(8*u1) + 
         (3*m2*q2*\[Epsilon])/(4*u1) - (3*q2^2*\[Epsilon])/(4*u1) + 
         (3*k2hat2*sp*\[Epsilon])/(8*u1) - (m2*sp*\[Epsilon])/(2*u1) + 
         (5*q2*sp*\[Epsilon])/(4*u1) - (3*sp^2*\[Epsilon])/(8*u1) + 
         (k2hat2*m2*sp*\[Epsilon])/(2*t1*u1) - (k2hat2*q2*sp*\[Epsilon])/
          (8*t1*u1) + (m2*q2*sp*\[Epsilon])/(2*t1*u1) - (q2^2*sp*\[Epsilon])/
          (4*t1*u1) + (k2hat2*sp^2*\[Epsilon])/(8*t1*u1) - 
         (m2*sp^2*\[Epsilon])/(4*t1*u1) + (3*q2*sp^2*\[Epsilon])/(8*t1*u1) - 
         (sp^3*\[Epsilon])/(8*t1*u1) + (k2hat2*t1*\[Epsilon])/(8*u1) + 
         (5*q2*t1*\[Epsilon])/(4*u1) + (k2hat2*q2*t1*\[Epsilon])/(8*sp*u1) - 
         (3*q2^2*t1*\[Epsilon])/(4*sp*u1) - (3*sp*t1*\[Epsilon])/(8*u1) - 
         (t1^2*\[Epsilon])/(8*u1) - (k2hat2*q2*t1^2*\[Epsilon])/(4*sp^2*u1) - 
         (m2*q2*t1^2*\[Epsilon])/(4*sp^2*u1) - (q2^2*t1^2*\[Epsilon])/
          (4*sp^2*u1) + (k2hat2*t1^2*\[Epsilon])/(4*sp*u1) + 
         (m2*t1^2*\[Epsilon])/(4*sp*u1) + (3*q2*t1^2*\[Epsilon])/(8*sp*u1) - 
         (u1*\[Epsilon])/4 + (k2hat2*u1*\[Epsilon])/(4*sp) + 
         (m2*u1*\[Epsilon])/(4*sp) + (q2*u1*\[Epsilon])/(2*sp) - 
         (m2*u1*\[Epsilon])/(4*t1) + (q2*u1*\[Epsilon])/(4*t1) - 
         (sp*u1*\[Epsilon])/(4*t1) - (u1^2*\[Epsilon])/(8*t1), 
        -5/4 - k2hat2/sp - m2/(2*sp) + (19*q2)/(4*sp) - m2/(2*t1) + 
         (5*q2)/(2*t1) - (3*sp)/(4*t1) + (2*q2*t1)/sp^2 - (3*t1)/(2*sp) - 
         (5*m2*q2)/(2*u1^2) - (3*q2^2)/(4*u1^2) - (3*m2*sp)/(2*u1^2) - 
         (3*q2*sp)/(4*u1^2) - (9*q2*t1)/(4*u1^2) - (2*m2*q2*t1)/(sp*u1^2) - 
         (9*q2^2*t1)/(4*sp*u1^2) - (3*q2^2*t1^2)/(2*sp^2*u1^2) - 
         (3*q2*t1^2)/(2*sp*u1^2) + k2hat2/(4*u1) + m2/u1 + (5*q2)/(2*u1) + 
         (4*m2^2)/(sp*u1) + (k2hat2*q2)/(sp*u1) - (m2*q2)/(sp*u1) - 
         (13*q2^2)/(4*sp*u1) - sp/(4*u1) + (k2hat2*m2)/(t1*u1) + 
         (3*m2^2)/(t1*u1) + (m2*q2)/(t1*u1) - (3*q2^2)/(2*t1*u1) + 
         (k2hat2*sp)/(4*t1*u1) - (m2*sp)/(2*t1*u1) + (3*q2*sp)/(2*t1*u1) - 
         sp^2/(2*t1*u1) + t1/u1 + (k2hat2*q2*t1)/(sp^2*u1) - 
         (2*m2*q2*t1)/(sp^2*u1) - (7*q2^2*t1)/(4*sp^2*u1) - (m2*t1)/(sp*u1) + 
         (15*q2*t1)/(4*sp*u1) + (5*q2*t1^2)/(4*sp^2*u1) - (7*u1)/(4*sp) - 
         u1/t1 + k2hat2/(4*(sp + t1 + u1)) + (3*m2)/(2*(sp + t1 + u1)) - 
         (7*q2)/(sp + t1 + u1) - (4*m2^2)/(sp*(sp + t1 + u1)) - 
         (k2hat2*q2)/(sp*(sp + t1 + u1)) + (m2*q2)/(sp*(sp + t1 + u1)) + 
         (13*q2^2)/(4*sp*(sp + t1 + u1)) - sp/(4*(sp + t1 + u1)) - 
         (k2hat2*m2)/(t1*(sp + t1 + u1)) - (3*m2^2)/(t1*(sp + t1 + u1)) - 
         (m2*q2)/(t1*(sp + t1 + u1)) + (3*q2^2)/(2*t1*(sp + t1 + u1)) + 
         (k2hat2*sp)/(4*t1*(sp + t1 + u1)) - (3*q2*sp)/
          (4*t1*(sp + t1 + u1)) + sp^2/(4*t1*(sp + t1 + u1)) + 
         (3*t1)/(4*(sp + t1 + u1)) - (k2hat2*q2*t1)/(sp^2*(sp + t1 + u1)) + 
         (2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) + (7*q2^2*t1)/
          (4*sp^2*(sp + t1 + u1)) + (k2hat2*t1)/(sp*(sp + t1 + u1)) + 
         (3*m2*t1)/(2*sp*(sp + t1 + u1)) - (37*q2*t1)/(4*sp*(sp + t1 + u1)) - 
         (13*q2*t1^2)/(4*sp^2*(sp + t1 + u1)) + t1^2/(sp*(sp + t1 + u1)) + 
         (k2hat2*m2*sp)/(u1^2*(sp + t1 + u1)) - (2*m2^2*sp)/
          (u1^2*(sp + t1 + u1)) + (k2hat2*q2*sp)/(2*u1^2*(sp + t1 + u1)) + 
         (m2*q2*sp)/(u1^2*(sp + t1 + u1)) + (q2^2*sp)/
          (2*u1^2*(sp + t1 + u1)) + (m2*sp^2)/(2*u1^2*(sp + t1 + u1)) + 
         (q2*sp^2)/(4*u1^2*(sp + t1 + u1)) + (3*k2hat2*q2*t1)/
          (2*u1^2*(sp + t1 + u1)) + (m2*q2*t1)/(u1^2*(sp + t1 + u1)) + 
         (2*q2^2*t1)/(u1^2*(sp + t1 + u1)) + (m2*sp*t1)/
          (2*u1^2*(sp + t1 + u1)) + (q2*sp*t1)/(u1^2*(sp + t1 + u1)) + 
         (5*q2*t1^2)/(4*u1^2*(sp + t1 + u1)) + (k2hat2*q2*t1^2)/
          (sp*u1^2*(sp + t1 + u1)) + (5*q2^2*t1^2)/(2*sp*u1^2*
           (sp + t1 + u1)) + (q2^2*t1^3)/(sp^2*u1^2*(sp + t1 + u1)) + 
         (q2*t1^3)/(2*sp*u1^2*(sp + t1 + u1)) - (k2hat2*m2)/
          (u1*(sp + t1 + u1)) - (5*m2^2)/(u1*(sp + t1 + u1)) + 
         (k2hat2*q2)/(2*u1*(sp + t1 + u1)) + (15*q2^2)/
          (4*u1*(sp + t1 + u1)) - (k2hat2*sp)/(4*u1*(sp + t1 + u1)) - 
         (3*m2*sp)/(2*u1*(sp + t1 + u1)) - (3*q2*sp)/(4*u1*(sp + t1 + u1)) - 
         sp^2/(4*u1*(sp + t1 + u1)) - (m2^2*sp)/(t1*u1*(sp + t1 + u1)) + 
         (m2*q2*sp)/(2*t1*u1*(sp + t1 + u1)) + (q2^2*sp)/
          (2*t1*u1*(sp + t1 + u1)) + (m2*sp^2)/(2*t1*u1*(sp + t1 + u1)) - 
         (q2*sp^2)/(4*t1*u1*(sp + t1 + u1)) - (3*k2hat2*t1)/
          (4*u1*(sp + t1 + u1)) + (m2*t1)/(2*u1*(sp + t1 + u1)) - 
         (3*q2*t1)/(u1*(sp + t1 + u1)) - (4*m2^2*t1)/(sp*u1*(sp + t1 + u1)) - 
         (k2hat2*q2*t1)/(sp*u1*(sp + t1 + u1)) + (2*m2*q2*t1)/
          (sp*u1*(sp + t1 + u1)) + (6*q2^2*t1)/(sp*u1*(sp + t1 + u1)) - 
         (sp*t1)/(u1*(sp + t1 + u1)) - (3*t1^2)/(4*u1*(sp + t1 + u1)) - 
         (k2hat2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + (2*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (11*q2^2*t1^2)/(4*sp^2*u1*
           (sp + t1 + u1)) + (m2*t1^2)/(sp*u1*(sp + t1 + u1)) - 
         (15*q2*t1^2)/(4*sp*u1*(sp + t1 + u1)) - (5*q2*t1^3)/
          (4*sp^2*u1*(sp + t1 + u1)) + (3*u1)/(sp + t1 + u1) + 
         (k2hat2*u1)/(sp*(sp + t1 + u1)) + (m2*u1)/(2*sp*(sp + t1 + u1)) - 
         (19*q2*u1)/(4*sp*(sp + t1 + u1)) + (m2*u1)/(2*t1*(sp + t1 + u1)) - 
         (5*q2*u1)/(2*t1*(sp + t1 + u1)) + (sp*u1)/(4*t1*(sp + t1 + u1)) - 
         (2*q2*t1*u1)/(sp^2*(sp + t1 + u1)) + (11*t1*u1)/
          (4*sp*(sp + t1 + u1)) + (7*u1^2)/(4*sp*(sp + t1 + u1)) + 
         u1^2/(t1*(sp + t1 + u1)) - (9*\[Epsilon])/8 - (k2hat2*\[Epsilon])/
          (2*sp) - (m2*\[Epsilon])/(2*sp) + (3*q2*\[Epsilon])/(4*sp) - 
         (m2*\[Epsilon])/(4*t1) + (3*q2*\[Epsilon])/(8*t1) - 
         (3*sp*\[Epsilon])/(8*t1) + (q2*t1*\[Epsilon])/(4*sp^2) - 
         (5*t1*\[Epsilon])/(8*sp) + (2*m2*q2*\[Epsilon])/u1^2 + 
         (q2^2*\[Epsilon])/(8*u1^2) + (m2*sp*\[Epsilon])/(2*u1^2) + 
         (q2*sp*\[Epsilon])/(4*u1^2) + (m2*t1*\[Epsilon])/(2*u1^2) + 
         (3*q2*t1*\[Epsilon])/(4*u1^2) + (2*m2*q2*t1*\[Epsilon])/(sp*u1^2) + 
         (3*q2^2*t1*\[Epsilon])/(8*sp*u1^2) + (q2^2*t1^2*\[Epsilon])/
          (4*sp^2*u1^2) + (q2*t1^2*\[Epsilon])/(2*sp*u1^2) + 
         (k2hat2*\[Epsilon])/(8*u1) - (3*m2*\[Epsilon])/(2*u1) + 
         (9*q2*\[Epsilon])/(8*u1) + (k2hat2*q2*\[Epsilon])/(2*sp*u1) + 
         (m2*q2*\[Epsilon])/(sp*u1) - (5*q2^2*\[Epsilon])/(8*sp*u1) - 
         (sp*\[Epsilon])/(2*u1) + (k2hat2*m2*\[Epsilon])/(2*t1*u1) + 
         (m2*q2*\[Epsilon])/(2*t1*u1) - (q2^2*\[Epsilon])/(4*t1*u1) + 
         (k2hat2*sp*\[Epsilon])/(8*t1*u1) - (m2*sp*\[Epsilon])/(4*t1*u1) + 
         (3*q2*sp*\[Epsilon])/(8*t1*u1) - (sp^2*\[Epsilon])/(8*t1*u1) - 
         (5*t1*\[Epsilon])/(8*u1) + (k2hat2*q2*t1*\[Epsilon])/(2*sp^2*u1) + 
         (m2*q2*t1*\[Epsilon])/(2*sp^2*u1) - (3*q2^2*t1*\[Epsilon])/
          (8*sp^2*u1) - (m2*t1*\[Epsilon])/(2*sp*u1) + (q2*t1*\[Epsilon])/
          (sp*u1) + (3*q2*t1^2*\[Epsilon])/(8*sp^2*u1) - 
         (u1*\[Epsilon])/(4*sp) - (u1*\[Epsilon])/(8*t1) + 
         (k2hat2*\[Epsilon])/(8*(sp + t1 + u1)) + (m2*\[Epsilon])/
          (2*(sp + t1 + u1)) - (q2*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (k2hat2*q2*\[Epsilon])/(2*sp*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (sp*(sp + t1 + u1)) + (5*q2^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) - 
         (k2hat2*m2*\[Epsilon])/(2*t1*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + (q2^2*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         (k2hat2*sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (3*q2*sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (3*t1*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (k2hat2*q2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) - 
         (m2*q2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + 
         (3*q2^2*t1*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) + 
         (k2hat2*t1*\[Epsilon])/(2*sp*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/
          (sp*(sp + t1 + u1)) - (9*q2*t1*\[Epsilon])/(8*sp*(sp + t1 + u1)) - 
         (5*q2*t1^2*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) + 
         (3*t1^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (k2hat2*m2*sp*\[Epsilon])/(2*u1^2*(sp + t1 + u1)) + 
         (k2hat2*q2*sp*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) + 
         (m2*q2*sp*\[Epsilon])/(2*u1^2*(sp + t1 + u1)) + 
         (3*k2hat2*q2*t1*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) + 
         (m2*q2*t1*\[Epsilon])/(u1^2*(sp + t1 + u1)) + 
         (k2hat2*q2*t1^2*\[Epsilon])/(2*sp*u1^2*(sp + t1 + u1)) + 
         (m2*q2*t1^2*\[Epsilon])/(2*sp*u1^2*(sp + t1 + u1)) - 
         (k2hat2*m2*\[Epsilon])/(2*u1*(sp + t1 + u1)) + 
         (k2hat2*q2*\[Epsilon])/(4*u1*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (3*q2^2*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (k2hat2*sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (3*k2hat2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (3*q2*t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (k2hat2*q2*t1*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) - 
         (m2*q2*t1*\[Epsilon])/(sp*u1*(sp + t1 + u1)) + 
         (3*q2^2*t1*\[Epsilon])/(4*sp*u1*(sp + t1 + u1)) - 
         (k2hat2*q2*t1^2*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) - 
         (m2*q2*t1^2*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) + 
         (3*q2^2*t1^2*\[Epsilon])/(8*sp^2*u1*(sp + t1 + u1)) + 
         (m2*t1^2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) - 
         (3*q2*t1^2*\[Epsilon])/(4*sp*u1*(sp + t1 + u1)) - 
         (3*q2*t1^3*\[Epsilon])/(8*sp^2*u1*(sp + t1 + u1)) + 
         (u1*\[Epsilon])/(4*(sp + t1 + u1)) + (k2hat2*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (m2*u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - 
         (3*q2*u1*\[Epsilon])/(4*sp*(sp + t1 + u1)) + (m2*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (3*q2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (sp*u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (q2*t1*u1*\[Epsilon])/(4*sp^2*(sp + t1 + u1)) + 
         (5*t1*u1*\[Epsilon])/(8*sp*(sp + t1 + u1)) + (u1^2*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (u1^2*\[Epsilon])/(8*t1*(sp + t1 + u1))}, 
       {0, 0, -2/sp - t1^(-1) - t1/(2*sp^2) + (5*m2)/(2*u1^2) + 
         (3*q2)/(4*u1^2) + (9*q2*t1)/(4*sp*u1^2) + (3*q2*t1^2)/
          (2*sp^2*u1^2) - 5/(4*u1) + m2/(sp*u1) + (11*q2)/(4*sp*u1) + 
         m2/(2*t1*u1) + (5*q2)/(4*t1*u1) - sp/(2*t1*u1) + (m2*t1)/(sp^2*u1) + 
         (3*q2*t1)/(2*sp^2*u1) - (9*t1)/(4*sp*u1) - t1^2/(4*sp^2*u1) + 
         15/(4*(sp + t1 + u1)) - m2/(sp*(sp + t1 + u1)) - 
         (11*q2)/(4*sp*(sp + t1 + u1)) - m2/(2*t1*(sp + t1 + u1)) - 
         (5*q2)/(4*t1*(sp + t1 + u1)) + sp/(2*t1*(sp + t1 + u1)) - 
         (m2*t1)/(sp^2*(sp + t1 + u1)) - (3*q2*t1)/(2*sp^2*(sp + t1 + u1)) + 
         (4*t1)/(sp*(sp + t1 + u1)) + (3*t1^2)/(4*sp^2*(sp + t1 + u1)) - 
         (2*m2*sp)/(u1^2*(sp + t1 + u1)) - (q2*sp)/(2*u1^2*(sp + t1 + u1)) - 
         (2*m2*t1)/(u1^2*(sp + t1 + u1)) - (2*q2*t1)/(u1^2*(sp + t1 + u1)) - 
         (5*q2*t1^2)/(2*sp*u1^2*(sp + t1 + u1)) - 
         (q2*t1^3)/(sp^2*u1^2*(sp + t1 + u1)) - 
         (5*m2)/(2*u1*(sp + t1 + u1)) - (15*q2)/(4*u1*(sp + t1 + u1)) + 
         sp/(u1*(sp + t1 + u1)) - (3*m2*sp)/(2*t1*u1*(sp + t1 + u1)) - 
         (q2*sp)/(2*t1*u1*(sp + t1 + u1)) + sp^2/(4*t1*u1*(sp + t1 + u1)) + 
         (9*t1)/(4*u1*(sp + t1 + u1)) - (2*m2*t1)/(sp*u1*(sp + t1 + u1)) - 
         (23*q2*t1)/(4*sp*u1*(sp + t1 + u1)) - (m2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (5*q2*t1^2)/(2*sp^2*u1*(sp + t1 + u1)) + 
         (7*t1^2)/(4*sp*u1*(sp + t1 + u1)) + 
         t1^3/(4*sp^2*u1*(sp + t1 + u1)) + (2*u1)/(sp*(sp + t1 + u1)) + 
         u1/(t1*(sp + t1 + u1)) + (t1*u1)/(2*sp^2*(sp + t1 + u1)) - 
         \[Epsilon]/(2*sp) - \[Epsilon]/(4*t1) - (3*m2*\[Epsilon])/(4*u1^2) - 
         (q2*\[Epsilon])/(8*u1^2) - (3*q2*t1*\[Epsilon])/(8*sp*u1^2) - 
         (q2*t1^2*\[Epsilon])/(4*sp^2*u1^2) - \[Epsilon]/(4*u1) - 
         (m2*\[Epsilon])/(2*sp*u1) + (7*q2*\[Epsilon])/(8*sp*u1) - 
         (m2*\[Epsilon])/(4*t1*u1) + (3*q2*\[Epsilon])/(8*t1*u1) - 
         (sp*\[Epsilon])/(8*t1*u1) + (q2*t1*\[Epsilon])/(2*sp^2*u1) + 
         (t1*\[Epsilon])/(8*sp*u1) - (t1^2*\[Epsilon])/(8*sp^2*u1) + 
         \[Epsilon]/(2*(sp + t1 + u1)) + (m2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (7*q2*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (m2*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (3*q2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) - 
         (q2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + (3*t1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (t1^2*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) - 
         (m2*sp*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) + (m2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (5*q2*\[Epsilon])/(8*u1*(sp + t1 + u1)) + (t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) - (9*q2*t1*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (3*t1^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) + (t1^3*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) + (u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (u1*\[Epsilon])/(4*t1*(sp + t1 + u1))}, 
       {0, 0, -1/(2*sp*u1) - 1/(4*t1*u1) - t1/(4*sp^2*u1) + 
         1/(2*sp*(sp + t1 + u1)) + 1/(4*t1*(sp + t1 + u1)) + 
         t1/(4*sp^2*(sp + t1 + u1)) + 1/(2*u1*(sp + t1 + u1)) + 
         (3*t1)/(4*sp*u1*(sp + t1 + u1)) + t1^2/(4*sp^2*u1*(sp + t1 + u1)) - 
         \[Epsilon]/(4*sp*u1) - \[Epsilon]/(8*t1*u1) - (t1*\[Epsilon])/
          (8*sp^2*u1) + \[Epsilon]/(4*sp*(sp + t1 + u1)) + 
         \[Epsilon]/(8*t1*(sp + t1 + u1)) + (t1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + \[Epsilon]/(4*u1*(sp + t1 + u1)) + 
         (3*t1*\[Epsilon])/(8*sp*u1*(sp + t1 + u1)) + (t1^2*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1))}}, {{-2*k2hat2*m2*sp - 2*m2^2*sp, 
        -3*k2hat2*m2 - 3*m2^2 - (5*m2*q2)/2 - (m2*sp)/2, 
        -3*m2 - (5*m2*q2)/sp}, {(3*m2*q2)/2 + (k2hat2*sp)/2 - (m2*sp)/2 - 
         (2*m2^2*sp)/t1 - (q2*t1)/4 + (k2hat2*q2*t1)/sp + (m2*q2*t1)/sp + 
         (q2^2*t1)/(4*sp) + (k2hat2*sp*\[Epsilon])/4 + 
         (k2hat2*m2*sp*\[Epsilon])/(2*t1) - (q2*t1*\[Epsilon])/8 + 
         (k2hat2*q2*t1*\[Epsilon])/(2*sp) + (m2*q2*t1*\[Epsilon])/(2*sp) + 
         (q2^2*t1*\[Epsilon])/(8*sp), (3*k2hat2)/4 - m2 + (3*q2)/4 + 
         (k2hat2*m2)/sp + m2^2/sp + (3*k2hat2*q2)/(2*sp) + (7*m2*q2)/(2*sp) + 
         q2^2/(4*sp) + sp/4 + (k2hat2*m2)/t1 - (4*m2^2)/t1 + q2^2/(4*t1) + 
         (m2*sp)/(2*t1) - t1/4 + (k2hat2*q2*t1)/sp^2 + (q2^2*t1)/(2*sp^2) - 
         (3*k2hat2*t1)/sp - (2*m2*t1)/sp + (7*q2*t1)/(4*sp) + 
         (3*q2*t1^2)/(4*sp^2) - t1^2/(2*sp) + (3*k2hat2*m2)/u1 - 
         (2*m2^2)/u1 + (k2hat2*q2)/(4*u1) + (7*m2*q2)/(4*u1) + q2^2/(4*u1) + 
         (m2*sp)/(2*u1) + (k2hat2*t1)/(4*u1) - (5*m2*t1)/(4*u1) + 
         (q2*t1)/(4*u1) + (k2hat2*m2*t1)/(sp*u1) + (m2^2*t1)/(sp*u1) + 
         (11*k2hat2*q2*t1)/(4*sp*u1) + (11*m2*q2*t1)/(4*sp*u1) - 
         (q2^2*t1)/(4*sp*u1) + (sp*t1)/(4*u1) + (5*k2hat2*q2*t1^2)/
          (2*sp^2*u1) + (3*m2*q2*t1^2)/(2*sp^2*u1) - 
         (q2^2*t1^2)/(2*sp^2*u1) - (k2hat2*t1^2)/(2*sp*u1) - 
         (m2*t1^2)/(2*sp*u1) + (q2*t1^2)/(4*sp*u1) + (q2*t1^3)/(2*sp^2*u1) - 
         (3*k2hat2*u1)/(2*sp) - (m2*u1)/(2*sp) + (q2*u1)/(2*sp) + 
         (m2*u1)/(4*t1) - (q2*u1)/(4*t1) + (q2*t1*u1)/(4*sp^2) - 
         (3*t1*u1)/(4*sp) - u1^2/(4*sp) - (5*k2hat2*m2)/(sp + t1 + u1) - 
         (3*m2^2)/(sp + t1 + u1) - (k2hat2*q2)/(sp + t1 + u1) - 
         (m2*q2)/(sp + t1 + u1) + (3*q2^2)/(4*(sp + t1 + u1)) + 
         (4*k2hat2*m2*q2)/(sp*(sp + t1 + u1)) + (2*k2hat2*q2^2)/
          (sp*(sp + t1 + u1)) + (3*k2hat2*sp)/(4*(sp + t1 + u1)) - 
         (7*m2*sp)/(4*(sp + t1 + u1)) + (q2*sp)/(2*(sp + t1 + u1)) + 
         (4*k2hat2*m2^2)/(t1*(sp + t1 + u1)) + (2*k2hat2*m2*q2)/
          (t1*(sp + t1 + u1)) - (k2hat2*m2*sp)/(2*t1*(sp + t1 + u1)) - 
         (m2^2*sp)/(t1*(sp + t1 + u1)) + (3*m2*q2*sp)/(2*t1*(sp + t1 + u1)) + 
         (m2*sp^2)/(4*t1*(sp + t1 + u1)) + (3*k2hat2*t1)/(2*(sp + t1 + u1)) + 
         (3*m2*t1)/(4*(sp + t1 + u1)) - (3*q2*t1)/(2*(sp + t1 + u1)) + 
         (4*k2hat2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) + (4*m2^2*q2*t1)/
          (sp^2*(sp + t1 + u1)) + (2*k2hat2*q2^2*t1)/(sp^2*(sp + t1 + u1)) + 
         (m2*q2^2*t1)/(sp^2*(sp + t1 + u1)) - (q2^3*t1)/
          (2*sp^2*(sp + t1 + u1)) - (4*k2hat2*m2*t1)/(sp*(sp + t1 + u1)) - 
         (4*m2^2*t1)/(sp*(sp + t1 + u1)) - (5*k2hat2*q2*t1)/
          (sp*(sp + t1 + u1)) - (m2*q2*t1)/(sp*(sp + t1 + u1)) + 
         (3*q2^2*t1)/(4*sp*(sp + t1 + u1)) - (sp*t1)/(2*(sp + t1 + u1)) + 
         (3*t1^2)/(4*(sp + t1 + u1)) - (3*k2hat2*q2*t1^2)/
          (sp^2*(sp + t1 + u1)) - (m2*q2*t1^2)/(sp^2*(sp + t1 + u1)) + 
         (7*q2^2*t1^2)/(4*sp^2*(sp + t1 + u1)) + (2*k2hat2*t1^2)/
          (sp*(sp + t1 + u1)) + (m2*t1^2)/(sp*(sp + t1 + u1)) - 
         (5*q2*t1^2)/(4*sp*(sp + t1 + u1)) - (5*q2*t1^3)/
          (4*sp^2*(sp + t1 + u1)) + t1^3/(2*sp*(sp + t1 + u1)) + 
         (4*k2hat2*m2^2)/(u1*(sp + t1 + u1)) + (2*k2hat2*m2*q2)/
          (u1*(sp + t1 + u1)) - (3*k2hat2*m2*sp)/(2*u1*(sp + t1 + u1)) - 
         (3*k2hat2*q2*sp)/(4*u1*(sp + t1 + u1)) + (m2*q2*sp)/
          (2*u1*(sp + t1 + u1)) - (q2^2*sp)/(4*u1*(sp + t1 + u1)) + 
         (m2*sp^2)/(4*u1*(sp + t1 + u1)) - (2*k2hat2*m2*t1)/
          (u1*(sp + t1 + u1)) - (2*m2^2*t1)/(u1*(sp + t1 + u1)) - 
         (3*k2hat2*q2*t1)/(2*u1*(sp + t1 + u1)) - (m2*q2*t1)/
          (u1*(sp + t1 + u1)) + (q2^2*t1)/(4*u1*(sp + t1 + u1)) + 
         (4*k2hat2*m2*q2*t1)/(sp*u1*(sp + t1 + u1)) + (2*k2hat2*q2^2*t1)/
          (sp*u1*(sp + t1 + u1)) + (k2hat2*sp*t1)/(4*u1*(sp + t1 + u1)) - 
         (m2*sp*t1)/(4*u1*(sp + t1 + u1)) + (q2*sp*t1)/
          (2*u1*(sp + t1 + u1)) + (m2*t1^2)/(2*u1*(sp + t1 + u1)) - 
         (q2*t1^2)/(2*u1*(sp + t1 + u1)) + (4*k2hat2*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (4*m2^2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (2*k2hat2*q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (m2*q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (q2^3*t1^2)/(2*sp^2*u1*(sp + t1 + u1)) - 
         (3*k2hat2*q2*t1^2)/(sp*u1*(sp + t1 + u1)) - (m2*q2*t1^2)/
          (sp*u1*(sp + t1 + u1)) - (sp*t1^2)/(4*u1*(sp + t1 + u1)) + 
         t1^3/(4*u1*(sp + t1 + u1)) - (2*k2hat2*q2*t1^3)/
          (sp^2*u1*(sp + t1 + u1)) - (m2*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) + 
         (q2^2*t1^3)/(sp^2*u1*(sp + t1 + u1)) - (q2*t1^4)/
          (2*sp^2*u1*(sp + t1 + u1)) + (k2hat2*u1)/(2*(sp + t1 + u1)) - 
         (m2*u1)/(sp + t1 + u1) - (q2*u1)/(sp + t1 + u1) - 
         (4*k2hat2*m2*u1)/(sp*(sp + t1 + u1)) - (4*m2^2*u1)/
          (sp*(sp + t1 + u1)) - (3*k2hat2*q2*u1)/(sp*(sp + t1 + u1)) - 
         (m2*q2*u1)/(sp*(sp + t1 + u1)) + (q2^2*u1)/(2*sp*(sp + t1 + u1)) - 
         (sp*u1)/(4*(sp + t1 + u1)) - (k2hat2*m2*u1)/(t1*(sp + t1 + u1)) + 
         (m2^2*u1)/(t1*(sp + t1 + u1)) + (m2*q2*u1)/(2*t1*(sp + t1 + u1)) - 
         (m2*sp*u1)/(t1*(sp + t1 + u1)) + (3*t1*u1)/(4*(sp + t1 + u1)) - 
         (k2hat2*q2*t1*u1)/(sp^2*(sp + t1 + u1)) + (3*q2^2*t1*u1)/
          (4*sp^2*(sp + t1 + u1)) + (3*k2hat2*t1*u1)/(sp*(sp + t1 + u1)) + 
         (m2*t1*u1)/(sp*(sp + t1 + u1)) - (2*q2*t1*u1)/(sp*(sp + t1 + u1)) - 
         (q2*t1^2*u1)/(sp^2*(sp + t1 + u1)) + (5*t1^2*u1)/
          (4*sp*(sp + t1 + u1)) + u1^2/(4*(sp + t1 + u1)) + 
         (k2hat2*u1^2)/(sp*(sp + t1 + u1)) - (3*q2*u1^2)/
          (4*sp*(sp + t1 + u1)) - (m2*u1^2)/(4*t1*(sp + t1 + u1)) - 
         (q2*t1*u1^2)/(4*sp^2*(sp + t1 + u1)) + (t1*u1^2)/
          (sp*(sp + t1 + u1)) + u1^3/(4*sp*(sp + t1 + u1)) + 
         (k2hat2*\[Epsilon])/8 - (9*m2*\[Epsilon])/8 + (5*q2*\[Epsilon])/8 + 
         (3*k2hat2*q2*\[Epsilon])/(4*sp) - (q2^2*\[Epsilon])/(8*sp) + 
         (sp*\[Epsilon])/8 + (k2hat2*m2*\[Epsilon])/(2*t1) + 
         (m2*q2*\[Epsilon])/(2*t1) - (q2^2*\[Epsilon])/(8*t1) + 
         (m2*sp*\[Epsilon])/(8*t1) + (q2*sp*\[Epsilon])/(8*t1) - 
         (t1*\[Epsilon])/8 + (k2hat2*q2*t1*\[Epsilon])/(2*sp^2) + 
         (m2*q2*t1*\[Epsilon])/(2*sp^2) + (q2^2*t1*\[Epsilon])/(2*sp^2) - 
         (k2hat2*t1*\[Epsilon])/(2*sp) - (m2*t1*\[Epsilon])/(2*sp) + 
         (3*q2*t1*\[Epsilon])/(8*sp) + (q2*t1^2*\[Epsilon])/(8*sp^2) + 
         (k2hat2*m2*\[Epsilon])/(4*u1) + (3*k2hat2*q2*\[Epsilon])/(8*u1) + 
         (3*m2*q2*\[Epsilon])/(4*u1) - (q2*sp*\[Epsilon])/(8*u1) - 
         (k2hat2*t1*\[Epsilon])/(8*u1) - (q2*t1*\[Epsilon])/(4*u1) + 
         (3*k2hat2*q2*t1*\[Epsilon])/(8*sp*u1) + (3*m2*q2*t1*\[Epsilon])/
          (2*sp*u1) + (t1^2*\[Epsilon])/(8*u1) + (k2hat2*q2*t1^2*\[Epsilon])/
          (4*sp^2*u1) + (m2*q2*t1^2*\[Epsilon])/(4*sp^2*u1) + 
         (q2^2*t1^2*\[Epsilon])/(4*sp^2*u1) - (k2hat2*t1^2*\[Epsilon])/
          (4*sp*u1) - (m2*t1^2*\[Epsilon])/(4*sp*u1) + (q2*t1^2*\[Epsilon])/
          (8*sp*u1) - (u1*\[Epsilon])/8 - (3*k2hat2*u1*\[Epsilon])/(4*sp) - 
         (3*m2*u1*\[Epsilon])/(4*sp) + (3*m2*u1*\[Epsilon])/(8*t1) + 
         (q2*u1*\[Epsilon])/(8*t1) - (sp*u1*\[Epsilon])/(8*t1) + 
         (q2*t1*u1*\[Epsilon])/(8*sp^2) - (t1*u1*\[Epsilon])/(8*sp) - 
         (u1^2*\[Epsilon])/(8*sp) - (k2hat2*m2*\[Epsilon])/
          (2*(sp + t1 + u1)) - (k2hat2*q2*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (k2hat2*sp*\[Epsilon])/(8*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (8*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon])/(8*t1*(sp + t1 + u1)) - 
         (k2hat2*t1*\[Epsilon])/(4*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/
          (8*(sp + t1 + u1)) - (k2hat2*q2*t1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) - (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (m2*q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2^2*t1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (k2hat2*m2*sp*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (k2hat2*q2*sp*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (k2hat2*q2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (k2hat2*sp*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*sp*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (q2*sp*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (m2*q2*t1^2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) - (q2^2*t1^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (sp*t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (q2*t1^3*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (k2hat2*u1*\[Epsilon])/
          (4*(sp + t1 + u1)) + (m2*u1*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (q2*u1*\[Epsilon])/(4*(sp + t1 + u1)) - (k2hat2*q2*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (sp*u1*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (k2hat2*m2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) - 
         (m2*sp*u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) + (t1*u1*\[Epsilon])/
          (4*(sp + t1 + u1)) - (k2hat2*q2*t1*u1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (m2*q2*t1*u1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2^2*t1*u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (k2hat2*t1*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (m2*t1*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (q2*t1*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (q2*t1^2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (t1^2*u1*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) + (u1^2*\[Epsilon])/(4*(sp + t1 + u1)) + 
         (k2hat2*u1^2*\[Epsilon])/(2*sp*(sp + t1 + u1)) + 
         (m2*u1^2*\[Epsilon])/(2*sp*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) - (m2*u1^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (q2*t1*u1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (t1*u1^2*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (u1^3*\[Epsilon])/(8*sp*(sp + t1 + u1)), 
        3/2 + (4*m2*q2)/sp^2 - q2^2/(2*sp^2) + (4*m2)/sp + (3*q2)/(2*sp) + 
         m2/t1 - q2/(4*t1) + (5*m2*q2)/(2*sp*t1) - q2^2/(sp*t1) - 
         (q2*t1)/(2*sp^2) + t1/(2*sp) + (m2*q2)/(2*sp*u1) + 
         (3*q2^2)/(4*sp*u1) + t1/(4*u1) - (m2*q2*t1)/(sp^2*u1) + 
         (q2^2*t1)/(sp^2*u1) - (m2*t1)/(2*sp*u1) - (q2*t1^2)/(sp^2*u1) - 
         t1^2/(4*sp*u1) + (q2*u1)/(2*sp^2) + u1/(4*sp) + u1/(4*t1) - 
         (m2*u1)/(2*sp*t1) + (3*q2*u1)/(2*sp*t1) - u1^2/(2*sp*t1) - 
         (4*m2)/(sp + t1 + u1) + (3*q2)/(2*(sp + t1 + u1)) - 
         (6*m2*q2)/(sp*(sp + t1 + u1)) + (7*q2^2)/(4*sp*(sp + t1 + u1)) + 
         sp/(4*(sp + t1 + u1)) + (2*m2^2)/(t1*(sp + t1 + u1)) - 
         (m2*q2)/(t1*(sp + t1 + u1)) + (4*m2^2*q2)/(sp*t1*(sp + t1 + u1)) + 
         (m2*q2^2)/(sp*t1*(sp + t1 + u1)) - q2^3/(2*sp*t1*(sp + t1 + u1)) + 
         (m2*sp)/(2*t1*(sp + t1 + u1)) - (q2*sp)/(4*t1*(sp + t1 + u1)) - 
         (3*t1)/(4*(sp + t1 + u1)) - (2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) - 
         (q2^2*t1)/(sp^2*(sp + t1 + u1)) - (5*m2*t1)/(2*sp*(sp + t1 + u1)) + 
         (q2*t1)/(2*sp*(sp + t1 + u1)) + (2*q2*t1^2)/(sp^2*(sp + t1 + u1)) + 
         t1^2/(4*sp*(sp + t1 + u1)) + (2*m2^2)/(u1*(sp + t1 + u1)) + 
         (3*m2*q2)/(u1*(sp + t1 + u1)) - (3*q2^2)/(4*u1*(sp + t1 + u1)) + 
         (4*m2^2*q2)/(sp*u1*(sp + t1 + u1)) + (m2*q2^2)/
          (sp*u1*(sp + t1 + u1)) - q2^3/(2*sp*u1*(sp + t1 + u1)) + 
         (3*m2*sp)/(2*u1*(sp + t1 + u1)) + (3*m2*t1)/(2*u1*(sp + t1 + u1)) + 
         (3*q2*t1)/(4*u1*(sp + t1 + u1)) + (7*m2*q2*t1)/
          (2*sp*u1*(sp + t1 + u1)) - (3*q2^2*t1)/(4*sp*u1*(sp + t1 + u1)) + 
         (m2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) - (q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (m2*t1^2)/(2*sp*u1*(sp + t1 + u1)) + 
         (q2*t1^2)/(sp*u1*(sp + t1 + u1)) + (q2*t1^3)/
          (sp^2*u1*(sp + t1 + u1)) + t1^3/(4*sp*u1*(sp + t1 + u1)) - 
         u1/(2*(sp + t1 + u1)) - (3*m2*q2*u1)/(sp^2*(sp + t1 + u1)) - 
         (5*m2*u1)/(2*sp*(sp + t1 + u1)) - (2*q2*u1)/(sp*(sp + t1 + u1)) + 
         (m2*u1)/(2*t1*(sp + t1 + u1)) - (q2*u1)/(4*t1*(sp + t1 + u1)) - 
         (3*m2*q2*u1)/(2*sp*t1*(sp + t1 + u1)) + (3*q2^2*u1)/
          (2*sp*t1*(sp + t1 + u1)) + (sp*u1)/(4*t1*(sp + t1 + u1)) + 
         (q2*t1*u1)/(sp^2*(sp + t1 + u1)) + (t1*u1)/(4*sp*(sp + t1 + u1)) + 
         (3*u1^2)/(4*sp*(sp + t1 + u1)) + u1^2/(4*t1*(sp + t1 + u1)) + 
         (m2*u1^2)/(2*sp*t1*(sp + t1 + u1)) - (3*q2*u1^2)/
          (2*sp*t1*(sp + t1 + u1)) + u1^3/(2*sp*t1*(sp + t1 + u1)) + 
         \[Epsilon]/4 - (m2*q2*\[Epsilon])/sp^2 - (m2*\[Epsilon])/sp + 
         (3*q2*\[Epsilon])/(4*sp) + (q2*\[Epsilon])/(8*t1) - 
         (m2*q2*\[Epsilon])/(2*sp*t1) + (3*q2^2*\[Epsilon])/(8*sp*t1) + 
         (q2*t1*\[Epsilon])/(4*sp^2) - (t1*\[Epsilon])/(8*sp) + 
         (m2*\[Epsilon])/(2*u1) + (q2*\[Epsilon])/(4*u1) + 
         (m2*q2*\[Epsilon])/(sp*u1) - (t1*\[Epsilon])/(8*u1) + 
         (m2*q2*t1*\[Epsilon])/(sp^2*u1) - (q2^2*t1*\[Epsilon])/(4*sp^2*u1) + 
         (m2*t1*\[Epsilon])/(2*sp*u1) + (q2*t1*\[Epsilon])/(4*sp*u1) + 
         (q2*t1^2*\[Epsilon])/(4*sp^2*u1) - (u1*\[Epsilon])/(8*t1) + 
         (m2*u1*\[Epsilon])/(2*sp*t1) - (q2*u1*\[Epsilon])/(2*sp*t1) + 
         (u1^2*\[Epsilon])/(8*sp*t1) + (m2*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/(2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (5*q2^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (sp*\[Epsilon])/(8*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (5*q2^2*\[Epsilon])/(8*t1*(sp + t1 + u1)) + 
         (m2*sp*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (t1*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (m2*t1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - (3*q2*t1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (3*t1^2*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/(2*u1*(sp + t1 + u1)) + 
         (q2^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (3*q2*t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) - (2*m2*q2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (m2*q2*t1^2*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + 
         (q2^2*t1^2*\[Epsilon])/(4*sp^2*u1*(sp + t1 + u1)) - 
         (m2*t1^2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) - 
         (q2*t1^2*\[Epsilon])/(sp*u1*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (3*u1*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (m2*q2*u1*\[Epsilon])/(sp^2*(sp + t1 + u1)) - (q2^2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (m2*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - 
         (m2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (7*q2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2^2*u1*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) + (sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (q2*t1*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (5*t1*u1*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (u1^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) - 
         (u1^2*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (m2*u1^2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) - (u1^3*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1))}, {(-2*k2hat2*q2)/sp - (m2*q2)/sp - 
         q2^2/(2*sp) - (2*k2hat2*m2*sp)/t1^2 - (2*m2^2*sp)/t1^2 - 
         (m2*q2*sp)/t1^2 - (3*k2hat2*q2)/(2*t1) - (3*m2*q2)/(2*t1) - 
         q2^2/(4*t1) + (k2hat2*sp)/(2*t1) - (m2*sp)/(2*t1) - (q2*sp)/(4*t1) - 
         (q2^2*t1)/(2*sp^2) + (q2*t1)/(2*sp) + (q2*u1)/(4*sp) + 
         (3*k2hat2*u1)/(2*t1) + (m2*u1)/(2*t1) + (q2*u1)/(4*t1) + 
         (q2*\[Epsilon])/2 + (k2hat2*q2*\[Epsilon])/sp + 
         (2*m2*q2*\[Epsilon])/sp + (k2hat2*m2*sp*\[Epsilon])/t1^2 + 
         (m2*q2*sp*\[Epsilon])/t1^2 - (m2*sp^2*\[Epsilon])/(2*t1^2) + 
         (3*k2hat2*q2*\[Epsilon])/(4*t1) + (5*m2*q2*\[Epsilon])/(2*t1) + 
         (q2^2*\[Epsilon])/(8*t1) - (k2hat2*sp*\[Epsilon])/(4*t1) - 
         (m2*sp*\[Epsilon])/t1 + (q2*sp*\[Epsilon])/(8*t1) - 
         (q2^2*t1*\[Epsilon])/(4*sp^2) + (q2*t1*\[Epsilon])/(4*sp) + 
         (q2*u1*\[Epsilon])/(8*sp) - (m2*sp*u1*\[Epsilon])/(2*t1^2) - 
         (3*k2hat2*u1*\[Epsilon])/(4*t1) - (m2*u1*\[Epsilon])/t1 - 
         (q2*u1*\[Epsilon])/(8*t1), -13/4 - (m2*q2)/sp^2 - q2^2/sp^2 - 
         k2hat2/sp - m2/(2*sp) + (5*q2)/sp + (m2*sp)/t1^2 + k2hat2/(4*t1) + 
         (2*m2)/t1 + (7*q2)/(2*t1) + (4*m2^2)/(sp*t1) - (7*q2^2)/(4*sp*t1) - 
         (2*sp)/t1 + (9*q2*t1)/(4*sp^2) - (7*t1)/(4*sp) - m2/(2*u1) + 
         (25*q2)/(4*u1) - (8*m2^2*q2)/(sp^2*u1) - (2*m2*q2^2)/(sp^2*u1) + 
         q2^3/(sp^2*u1) + (k2hat2*q2)/(sp*u1) - (3*m2*q2)/(2*sp*u1) - 
         (23*q2^2)/(4*sp*u1) - (7*sp)/(4*u1) + (k2hat2*m2)/(t1*u1) + 
         (3*m2^2)/(t1*u1) - (k2hat2*q2)/(4*t1*u1) + (m2*q2)/(2*t1*u1) - 
         (13*q2^2)/(4*t1*u1) - (8*m2^2*q2)/(sp*t1*u1) - 
         (2*m2*q2^2)/(sp*t1*u1) + q2^3/(sp*t1*u1) + (k2hat2*sp)/(4*t1*u1) + 
         (7*q2*sp)/(2*t1*u1) - (5*sp^2)/(4*t1*u1) - t1/u1 + 
         (k2hat2*q2*t1)/(sp^2*u1) + (m2*q2*t1)/(sp^2*u1) - 
         (7*q2^2*t1)/(2*sp^2*u1) + (5*q2*t1)/(sp*u1) + 
         (5*q2*t1^2)/(2*sp^2*u1) - (2*u1)/sp - (3*u1)/(2*t1) + 
         (q2*u1)/(sp*t1) - u1^2/(4*sp*t1) + k2hat2/(4*(sp + t1 + u1)) + 
         m2/(2*(sp + t1 + u1)) - (35*q2)/(4*(sp + t1 + u1)) + 
         (8*m2^2*q2)/(sp^2*(sp + t1 + u1)) + (2*m2*q2^2)/
          (sp^2*(sp + t1 + u1)) - q2^3/(sp^2*(sp + t1 + u1)) - 
         (4*m2^2)/(sp*(sp + t1 + u1)) + (3*m2*q2)/(2*sp*(sp + t1 + u1)) + 
         (9*q2^2)/(2*sp*(sp + t1 + u1)) + (4*sp)/(sp + t1 + u1) + 
         (k2hat2*m2*sp)/(t1^2*(sp + t1 + u1)) - (2*m2^2*sp)/
          (t1^2*(sp + t1 + u1)) + (3*m2*q2*sp)/(2*t1^2*(sp + t1 + u1)) - 
         (3*m2*sp^2)/(2*t1^2*(sp + t1 + u1)) - (k2hat2*m2)/
          (t1*(sp + t1 + u1)) - (5*m2^2)/(t1*(sp + t1 + u1)) + 
         (3*k2hat2*q2)/(4*t1*(sp + t1 + u1)) + (3*m2*q2)/
          (2*t1*(sp + t1 + u1)) + (3*q2^2)/(2*t1*(sp + t1 + u1)) + 
         (4*m2^2*q2)/(sp*t1*(sp + t1 + u1)) + (m2*q2^2)/
          (sp*t1*(sp + t1 + u1)) - q2^3/(2*sp*t1*(sp + t1 + u1)) - 
         (k2hat2*sp)/(4*t1*(sp + t1 + u1)) - (4*m2*sp)/(t1*(sp + t1 + u1)) - 
         (9*q2*sp)/(4*t1*(sp + t1 + u1)) + (5*sp^2)/(4*t1*(sp + t1 + u1)) + 
         (5*t1)/(sp + t1 + u1) - (k2hat2*q2*t1)/(sp^2*(sp + t1 + u1)) - 
         (m2*q2*t1)/(sp^2*(sp + t1 + u1)) + (5*q2^2*t1)/
          (sp^2*(sp + t1 + u1)) + (k2hat2*t1)/(sp*(sp + t1 + u1)) + 
         (m2*t1)/(2*sp*(sp + t1 + u1)) - (37*q2*t1)/(4*sp*(sp + t1 + u1)) - 
         (19*q2*t1^2)/(4*sp^2*(sp + t1 + u1)) + 
         (7*t1^2)/(4*sp*(sp + t1 + u1)) - (k2hat2*m2)/(u1*(sp + t1 + u1)) - 
         (3*m2^2)/(u1*(sp + t1 + u1)) + (k2hat2*q2)/(4*u1*(sp + t1 + u1)) - 
         (m2*q2)/(u1*(sp + t1 + u1)) + (5*q2^2)/(2*u1*(sp + t1 + u1)) + 
         (4*m2^2*q2)/(sp*u1*(sp + t1 + u1)) + (m2*q2^2)/
          (sp*u1*(sp + t1 + u1)) - q2^3/(2*sp*u1*(sp + t1 + u1)) + 
         (k2hat2*sp)/(4*u1*(sp + t1 + u1)) - (m2*sp)/(2*u1*(sp + t1 + u1)) - 
         (11*q2*sp)/(4*u1*(sp + t1 + u1)) + sp^2/(u1*(sp + t1 + u1)) - 
         (m2^2*sp)/(t1*u1*(sp + t1 + u1)) + (m2*q2*sp)/
          (t1*u1*(sp + t1 + u1)) + (q2^2*sp)/(4*t1*u1*(sp + t1 + u1)) - 
         (m2*sp^2)/(t1*u1*(sp + t1 + u1)) - (q2*sp^2)/
          (2*t1*u1*(sp + t1 + u1)) + sp^3/(4*t1*u1*(sp + t1 + u1)) + 
         (m2*t1)/(2*u1*(sp + t1 + u1)) - (25*q2*t1)/(4*u1*(sp + t1 + u1)) + 
         (8*m2^2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) + (2*m2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) - (q2^3*t1)/(sp^2*u1*(sp + t1 + u1)) - 
         (k2hat2*q2*t1)/(sp*u1*(sp + t1 + u1)) - (3*m2*q2*t1)/
          (2*sp*u1*(sp + t1 + u1)) + (17*q2^2*t1)/(4*sp*u1*(sp + t1 + u1)) + 
         (5*sp*t1)/(4*u1*(sp + t1 + u1)) + t1^2/(u1*(sp + t1 + u1)) - 
         (k2hat2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) - (m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (7*q2^2*t1^2)/(2*sp^2*u1*
           (sp + t1 + u1)) - (5*q2*t1^2)/(sp*u1*(sp + t1 + u1)) - 
         (5*q2*t1^3)/(2*sp^2*u1*(sp + t1 + u1)) + (5*u1)/(sp + t1 + u1) + 
         (3*q2^2*u1)/(2*sp^2*(sp + t1 + u1)) + (k2hat2*u1)/
          (sp*(sp + t1 + u1)) + (m2*u1)/(2*sp*(sp + t1 + u1)) - 
         (11*q2*u1)/(2*sp*(sp + t1 + u1)) - (3*m2*sp*u1)/
          (2*t1^2*(sp + t1 + u1)) - (3*k2hat2*u1)/(4*t1*(sp + t1 + u1)) - 
         (3*m2*u1)/(2*t1*(sp + t1 + u1)) - (11*q2*u1)/(4*t1*(sp + t1 + u1)) - 
         (4*m2^2*u1)/(sp*t1*(sp + t1 + u1)) - (m2*q2*u1)/
          (sp*t1*(sp + t1 + u1)) + (5*q2^2*u1)/(4*sp*t1*(sp + t1 + u1)) + 
         (2*sp*u1)/(t1*(sp + t1 + u1)) - (11*q2*t1*u1)/
          (4*sp^2*(sp + t1 + u1)) + (13*t1*u1)/(4*sp*(sp + t1 + u1)) - 
         (q2*u1^2)/(2*sp^2*(sp + t1 + u1)) + (7*u1^2)/(4*sp*(sp + t1 + u1)) + 
         (5*u1^2)/(4*t1*(sp + t1 + u1)) - (q2*u1^2)/(sp*t1*(sp + t1 + u1)) + 
         u1^3/(4*sp*t1*(sp + t1 + u1)) - (13*\[Epsilon])/8 + 
         (m2*q2*\[Epsilon])/sp^2 - (k2hat2*\[Epsilon])/(2*sp) - 
         (m2*\[Epsilon])/(2*sp) + (5*q2*\[Epsilon])/(2*sp) - 
         (3*m2*sp*\[Epsilon])/(4*t1^2) + (k2hat2*\[Epsilon])/(8*t1) - 
         (2*m2*\[Epsilon])/t1 + (2*q2*\[Epsilon])/t1 + (m2*q2*\[Epsilon])/
          (2*sp*t1) - (3*q2^2*\[Epsilon])/(8*sp*t1) - (sp*\[Epsilon])/t1 + 
         (5*q2*t1*\[Epsilon])/(8*sp^2) - (t1*\[Epsilon])/(4*sp) - 
         (m2*\[Epsilon])/(4*u1) + (21*q2*\[Epsilon])/(8*u1) + 
         (k2hat2*q2*\[Epsilon])/(2*sp*u1) + (5*m2*q2*\[Epsilon])/(2*sp*u1) - 
         (5*q2^2*\[Epsilon])/(4*sp*u1) - (5*sp*\[Epsilon])/(8*u1) + 
         (k2hat2*m2*\[Epsilon])/(2*t1*u1) - (k2hat2*q2*\[Epsilon])/
          (8*t1*u1) + (3*m2*q2*\[Epsilon])/(2*t1*u1) - (3*q2^2*\[Epsilon])/
          (4*t1*u1) + (k2hat2*sp*\[Epsilon])/(8*t1*u1) - 
         (m2*sp*\[Epsilon])/(2*t1*u1) + (9*q2*sp*\[Epsilon])/(8*t1*u1) - 
         (3*sp^2*\[Epsilon])/(8*t1*u1) - (t1*\[Epsilon])/(8*u1) + 
         (k2hat2*q2*t1*\[Epsilon])/(2*sp^2*u1) + (m2*q2*t1*\[Epsilon])/
          (2*sp^2*u1) - (q2^2*t1*\[Epsilon])/(4*sp^2*u1) + 
         (2*q2*t1*\[Epsilon])/(sp*u1) + (q2*t1^2*\[Epsilon])/(4*sp^2*u1) - 
         (5*u1*\[Epsilon])/(8*sp) - (5*u1*\[Epsilon])/(8*t1) - 
         (m2*u1*\[Epsilon])/(2*sp*t1) + (q2*u1*\[Epsilon])/(2*sp*t1) - 
         (u1^2*\[Epsilon])/(8*sp*t1) + (k2hat2*\[Epsilon])/
          (8*(sp + t1 + u1)) + (m2*\[Epsilon])/(sp + t1 + u1) - 
         (11*q2*\[Epsilon])/(8*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (sp*(sp + t1 + u1)) + (7*q2^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (3*sp*\[Epsilon])/(4*(sp + t1 + u1)) + (k2hat2*m2*sp*\[Epsilon])/
          (2*t1^2*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (2*t1^2*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon])/
          (4*t1^2*(sp + t1 + u1)) - (k2hat2*m2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + (3*k2hat2*q2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (3*q2^2*\[Epsilon])/(8*t1*(sp + t1 + u1)) - (k2hat2*sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (m2*sp*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (sp^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (3*t1*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (k2hat2*q2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) - 
         (3*m2*q2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + 
         (q2^2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + 
         (k2hat2*t1*\[Epsilon])/(2*sp*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (13*q2*t1*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) - (7*q2*t1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (t1^2*\[Epsilon])/(4*sp*(sp + t1 + u1)) - 
         (k2hat2*m2*\[Epsilon])/(2*u1*(sp + t1 + u1)) + 
         (k2hat2*q2*\[Epsilon])/(8*u1*(sp + t1 + u1)) + 
         (k2hat2*sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (k2hat2*q2*t1*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) + 
         (t1^2*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (k2hat2*q2*t1^2*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) - 
         (m2*q2*t1^2*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) + 
         (q2^2*t1^2*\[Epsilon])/(4*sp^2*u1*(sp + t1 + u1)) - 
         (q2*t1^3*\[Epsilon])/(4*sp^2*u1*(sp + t1 + u1)) + 
         (5*u1*\[Epsilon])/(4*(sp + t1 + u1)) - (m2*q2*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (q2^2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (k2hat2*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (m2*u1*\[Epsilon])/(sp*(sp + t1 + u1)) - 
         (3*q2*u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - (m2*sp*u1*\[Epsilon])/
          (4*t1^2*(sp + t1 + u1)) - (3*k2hat2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (3*m2*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (7*q2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (m2*q2*u1*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (q2^2*u1*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) + (5*sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (7*q2*t1*u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (5*t1*u1*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (u1^2*\[Epsilon])/(2*sp*(sp + t1 + u1)) + 
         (u1^2*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (m2*u1^2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) + (u1^3*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)), (-2*m2)/sp^2 + q2/(2*sp^2) - 1/(2*sp) - 
         3/(4*t1) - m2/(sp*t1) + (13*q2)/(4*sp*t1) + (5*t1)/(4*sp^2) - 
         (5*m2)/(2*u1^2) - (5*q2)/(4*u1^2) - (2*m2*q2)/(sp*u1^2) - 
         (3*q2^2)/(4*sp*u1^2) - (3*q2^2*t1)/(2*sp^2*u1^2) - 
         (13*q2*t1)/(4*sp*u1^2) - (3*q2*t1^2)/(2*sp^2*u1^2) + 1/(4*u1) - 
         (2*q2^2)/(sp^2*u1) - m2/(sp*u1) + (9*q2)/(4*sp*u1) + m2/(2*t1*u1) + 
         (9*q2)/(4*t1*u1) + (4*m2^2)/(sp*t1*u1) + (2*m2*q2)/(sp*t1*u1) - 
         (7*q2^2)/(4*sp*t1*u1) - (3*sp)/(4*t1*u1) - (m2*t1)/(sp^2*u1) + 
         (q2*t1)/(2*sp^2*u1) + t1/(sp*u1) + u1/sp^2 - (3*u1)/(2*sp*t1) + 
         (3*m2)/(sp + t1 + u1)^2 - (4*m2*q2)/(sp*(sp + t1 + u1)^2) - 
         (2*m2^2*sp)/(t1^2*(sp + t1 + u1)^2) - (2*m2^2)/
          (t1*(sp + t1 + u1)^2) - (2*m2*q2)/(t1*(sp + t1 + u1)^2) + 
         (m2*sp)/(t1*(sp + t1 + u1)^2) - (2*m2*q2*t1)/
          (sp^2*(sp + t1 + u1)^2) + (2*m2*t1)/(sp*(sp + t1 + u1)^2) - 
         (2*m2^2*sp)/(u1^2*(sp + t1 + u1)^2) - (m2*q2*sp)/
          (u1^2*(sp + t1 + u1)^2) - (3*m2*q2*t1)/(u1^2*(sp + t1 + u1)^2) - 
         (2*m2*q2*t1^2)/(sp*u1^2*(sp + t1 + u1)^2) - 
         (2*m2^2)/(u1*(sp + t1 + u1)^2) - (2*m2*q2)/(u1*(sp + t1 + u1)^2) + 
         (m2*sp)/(u1*(sp + t1 + u1)^2) - (m2^2*sp)/(t1*u1*(sp + t1 + u1)^2) + 
         (2*m2*t1)/(u1*(sp + t1 + u1)^2) - (3*m2*q2*t1)/
          (sp*u1*(sp + t1 + u1)^2) - (2*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)^2) + (2*m2*u1)/(sp*(sp + t1 + u1)^2) + 
         (2*m2*u1)/(t1*(sp + t1 + u1)^2) + 1/(4*(sp + t1 + u1)) + 
         (2*q2^2)/(sp^2*(sp + t1 + u1)) + (3*m2)/(sp*(sp + t1 + u1)) - 
         (4*q2)/(sp*(sp + t1 + u1)) - (m2*sp)/(2*t1^2*(sp + t1 + u1)) - 
         (5*q2)/(4*t1*(sp + t1 + u1)) - (4*m2^2)/(sp*t1*(sp + t1 + u1)) - 
         (2*m2*q2)/(sp*t1*(sp + t1 + u1)) + (7*q2^2)/
          (4*sp*t1*(sp + t1 + u1)) + (5*sp)/(4*t1*(sp + t1 + u1)) + 
         (3*m2*t1)/(sp^2*(sp + t1 + u1)) - (q2*t1)/(2*sp^2*(sp + t1 + u1)) - 
         (3*t1)/(2*sp*(sp + t1 + u1)) - (5*t1^2)/(4*sp^2*(sp + t1 + u1)) + 
         (7*m2*q2)/(2*u1^2*(sp + t1 + u1)) + q2^2/(4*u1^2*(sp + t1 + u1)) + 
         (3*m2*sp)/(2*u1^2*(sp + t1 + u1)) + (3*q2*sp)/
          (4*u1^2*(sp + t1 + u1)) + (2*m2*t1)/(u1^2*(sp + t1 + u1)) + 
         (11*q2*t1)/(4*u1^2*(sp + t1 + u1)) + (3*m2*q2*t1)/
          (sp*u1^2*(sp + t1 + u1)) + (3*q2^2*t1)/(4*sp*u1^2*(sp + t1 + u1)) + 
         (q2^2*t1^2)/(2*sp^2*u1^2*(sp + t1 + u1)) + (3*q2*t1^2)/
          (sp*u1^2*(sp + t1 + u1)) + (q2*t1^3)/(sp^2*u1^2*(sp + t1 + u1)) + 
         m2/(u1*(sp + t1 + u1)) - q2/(2*u1*(sp + t1 + u1)) - 
         (4*m2^2)/(sp*u1*(sp + t1 + u1)) - (m2*q2)/(sp*u1*(sp + t1 + u1)) + 
         (13*q2^2)/(4*sp*u1*(sp + t1 + u1)) + sp/(4*u1*(sp + t1 + u1)) - 
         m2^2/(t1*u1*(sp + t1 + u1)) + (m2*q2)/(2*t1*u1*(sp + t1 + u1)) + 
         q2^2/(4*t1*u1*(sp + t1 + u1)) - (3*q2*sp)/(4*t1*u1*(sp + t1 + u1)) + 
         sp^2/(4*t1*u1*(sp + t1 + u1)) - t1/(4*u1*(sp + t1 + u1)) + 
         (m2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) + (3*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (2*m2*t1)/(sp*u1*(sp + t1 + u1)) + 
         (5*q2*t1)/(4*sp*u1*(sp + t1 + u1)) + (m2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) - 
         t1^2/(4*sp*u1*(sp + t1 + u1)) + (2*m2*u1)/(sp^2*(sp + t1 + u1)) - 
         (q2*u1)/(2*sp^2*(sp + t1 + u1)) + u1/(2*sp*(sp + t1 + u1)) + 
         (5*u1)/(4*t1*(sp + t1 + u1)) + (m2*u1)/(sp*t1*(sp + t1 + u1)) - 
         (13*q2*u1)/(4*sp*t1*(sp + t1 + u1)) - (9*t1*u1)/
          (4*sp^2*(sp + t1 + u1)) - u1^2/(sp^2*(sp + t1 + u1)) + 
         (3*u1^2)/(2*sp*t1*(sp + t1 + u1)) + (q2*\[Epsilon])/(4*sp^2) - 
         (5*\[Epsilon])/(4*sp) - \[Epsilon]/t1 - (m2*\[Epsilon])/(2*sp*t1) + 
         (5*q2*\[Epsilon])/(8*sp*t1) + (t1*\[Epsilon])/(8*sp^2) + 
         (3*m2*\[Epsilon])/(4*u1^2) + (3*q2*\[Epsilon])/(8*u1^2) + 
         (m2*q2*\[Epsilon])/(sp*u1^2) + (q2^2*\[Epsilon])/(8*sp*u1^2) + 
         (q2^2*t1*\[Epsilon])/(4*sp^2*u1^2) + (7*q2*t1*\[Epsilon])/
          (8*sp*u1^2) + (q2*t1^2*\[Epsilon])/(4*sp^2*u1^2) - 
         (5*\[Epsilon])/(8*u1) + (m2*q2*\[Epsilon])/(sp^2*u1) - 
         (q2^2*\[Epsilon])/(2*sp^2*u1) - (m2*\[Epsilon])/(2*sp*u1) + 
         (3*q2*\[Epsilon])/(2*sp*u1) - (m2*\[Epsilon])/(2*t1*u1) + 
         (7*q2*\[Epsilon])/(8*t1*u1) + (m2*q2*\[Epsilon])/(sp*t1*u1) - 
         (3*q2^2*\[Epsilon])/(8*sp*t1*u1) - (sp*\[Epsilon])/(4*t1*u1) + 
         (q2*t1*\[Epsilon])/(2*sp^2*u1) - (t1*\[Epsilon])/(4*sp*u1) + 
         (t1^2*\[Epsilon])/(4*sp^2*u1) - (u1*\[Epsilon])/(4*sp*t1) + 
         (3*\[Epsilon])/(4*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (q2^2*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + 
         (m2*\[Epsilon])/(sp*(sp + t1 + u1)) - (q2*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) + (m2*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         (5*q2*\[Epsilon])/(8*t1*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (sp*t1*(sp + t1 + u1)) + (3*q2^2*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) + (3*sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (t1*\[Epsilon])/(4*sp*(sp + t1 + u1)) - 
         (3*t1^2*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (u1^2*(sp + t1 + u1)) - (q2^2*\[Epsilon])/(8*u1^2*(sp + t1 + u1)) + 
         (m2*sp*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) + (q2*sp*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) + (3*q2*t1*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (sp*u1^2*(sp + t1 + u1)) - (3*q2^2*t1*\[Epsilon])/
          (8*sp*u1^2*(sp + t1 + u1)) - (q2^2*t1^2*\[Epsilon])/
          (4*sp^2*u1^2*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (4*sp*u1^2*(sp + t1 + u1)) + (m2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (m2*q2*\[Epsilon])/(sp*u1*(sp + t1 + u1)) + (3*q2^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) + (m2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) - (t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (m2*q2*t1*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + 
         (q2^2*t1*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) + 
         (m2*t1*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (3*t1^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (t1^3*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (3*u1*\[Epsilon])/(4*sp*(sp + t1 + u1)) + 
         (m2*u1*\[Epsilon])/(2*sp*t1*(sp + t1 + u1)) - (5*q2*u1*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) - (t1*u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (u1^2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1))}, {0, 0, 1/(2*sp^2) - 1/(2*sp*t1) + 
         q2/(2*sp^2*u1) - 1/(4*sp*u1) - 1/(2*t1*u1) - m2/(sp*t1*u1) + 
         q2/(2*sp*t1*u1) + t1/(4*sp^2*u1) - q2/(2*sp^2*(sp + t1 + u1)) + 
         1/(4*sp*(sp + t1 + u1)) + 1/(4*t1*(sp + t1 + u1)) + 
         m2/(sp*t1*(sp + t1 + u1)) - q2/(2*sp*t1*(sp + t1 + u1)) - 
         (3*t1)/(4*sp^2*(sp + t1 + u1)) + q2/(4*u1^2*(sp + t1 + u1)) + 
         (3*q2*t1)/(4*sp*u1^2*(sp + t1 + u1)) + (q2*t1^2)/
          (2*sp^2*u1^2*(sp + t1 + u1)) + 1/(4*u1*(sp + t1 + u1)) + 
         m2/(sp*u1*(sp + t1 + u1)) - q2/(2*sp*u1*(sp + t1 + u1)) + 
         m2/(2*t1*u1*(sp + t1 + u1)) + q2/(4*t1*u1*(sp + t1 + u1)) + 
         sp/(4*t1*u1*(sp + t1 + u1)) - (q2*t1)/(2*sp^2*u1*(sp + t1 + u1)) - 
         t1/(2*sp*u1*(sp + t1 + u1)) - t1^2/(4*sp^2*u1*(sp + t1 + u1)) - 
         u1/(2*sp^2*(sp + t1 + u1)) + u1/(2*sp*t1*(sp + t1 + u1)) + 
         \[Epsilon]/(4*sp^2) - \[Epsilon]/(4*sp*t1) + (q2*\[Epsilon])/
          (4*sp^2*u1) - \[Epsilon]/(8*sp*u1) - \[Epsilon]/(4*t1*u1) - 
         (m2*\[Epsilon])/(2*sp*t1*u1) + (q2*\[Epsilon])/(4*sp*t1*u1) + 
         (t1*\[Epsilon])/(8*sp^2*u1) - (q2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + \[Epsilon]/(8*sp*(sp + t1 + u1)) + 
         \[Epsilon]/(8*t1*(sp + t1 + u1)) + (m2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) - (3*t1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon])/(8*u1^2*(sp + t1 + u1)) + 
         (3*q2*t1*\[Epsilon])/(8*sp*u1^2*(sp + t1 + u1)) + 
         (q2*t1^2*\[Epsilon])/(4*sp^2*u1^2*(sp + t1 + u1)) + 
         \[Epsilon]/(8*u1*(sp + t1 + u1)) + (m2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) - (q2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (m2*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) + (sp*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (t1*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) - (u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (u1*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1))}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, (m2*q2)/(sp^2*t1) - q2^2/(4*sp^2*t1) + m2/(sp*t1) + 
         t1/(4*sp^2) - (m2*q2)/(sp^2*u1) + q2^2/(4*sp^2*u1) - m2/(sp*u1) - 
         (q2*t1)/(2*sp^2*u1) + t1^2/(4*sp^2*u1) - u1/(4*sp^2) + 
         (q2*u1)/(2*sp^2*t1) - u1^2/(4*sp^2*t1) - m2/(t1*(sp + t1 + u1)) - 
         q2/(4*t1*(sp + t1 + u1)) - (m2*q2)/(sp*t1*(sp + t1 + u1)) - 
         q2^2/(4*sp*t1*(sp + t1 + u1)) + (q2*t1)/(2*sp^2*(sp + t1 + u1)) - 
         t1/(4*sp*(sp + t1 + u1)) - t1^2/(2*sp^2*(sp + t1 + u1)) + 
         m2/(u1*(sp + t1 + u1)) + q2/(4*u1*(sp + t1 + u1)) + 
         (m2*q2)/(sp*u1*(sp + t1 + u1)) + q2^2/(4*sp*u1*(sp + t1 + u1)) - 
         t1/(4*u1*(sp + t1 + u1)) + (m2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) - 
         (q2^2*t1)/(4*sp^2*u1*(sp + t1 + u1)) + 
         (m2*t1)/(sp*u1*(sp + t1 + u1)) + (q2*t1^2)/(2*sp^2*u1*
           (sp + t1 + u1)) - t1^2/(4*sp*u1*(sp + t1 + u1)) - 
         t1^3/(4*sp^2*u1*(sp + t1 + u1)) - (q2*u1)/(2*sp^2*(sp + t1 + u1)) + 
         u1/(4*sp*(sp + t1 + u1)) + u1/(4*t1*(sp + t1 + u1)) - 
         (m2*q2*u1)/(sp^2*t1*(sp + t1 + u1)) + (q2^2*u1)/
          (4*sp^2*t1*(sp + t1 + u1)) - (m2*u1)/(sp*t1*(sp + t1 + u1)) + 
         u1^2/(2*sp^2*(sp + t1 + u1)) - (q2*u1^2)/(2*sp^2*t1*
           (sp + t1 + u1)) + u1^2/(4*sp*t1*(sp + t1 + u1)) + 
         u1^3/(4*sp^2*t1*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/(2*sp^2*t1) + 
         (q2^2*\[Epsilon])/(8*sp^2*t1) - (m2*\[Epsilon])/(2*sp*t1) - 
         (t1*\[Epsilon])/(8*sp^2) + (m2*q2*\[Epsilon])/(2*sp^2*u1) - 
         (q2^2*\[Epsilon])/(8*sp^2*u1) + (m2*\[Epsilon])/(2*sp*u1) + 
         (q2*t1*\[Epsilon])/(4*sp^2*u1) - (t1^2*\[Epsilon])/(8*sp^2*u1) + 
         (u1*\[Epsilon])/(8*sp^2) - (q2*u1*\[Epsilon])/(4*sp^2*t1) + 
         (u1^2*\[Epsilon])/(8*sp^2*t1) + (m2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (q2*\[Epsilon])/(8*t1*(sp + t1 + u1)) + 
         (m2*q2*\[Epsilon])/(2*sp*t1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (t1*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (t1^2*\[Epsilon])/(4*sp^2*(sp + t1 + u1)) - (m2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (m2*q2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) + (3*q2^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (m2*q2*t1*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) + 
         (q2^2*t1*\[Epsilon])/(8*sp^2*u1*(sp + t1 + u1)) - 
         (m2*t1*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (t1^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) + (t1^3*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (u1*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (u1*\[Epsilon])/(8*t1*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) - (q2^2*u1*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1)) + (m2*u1*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (u1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) - (u1^2*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) - (u1^3*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1))}, {-(q2^2/sp^2) - (3*m2*q2)/t1^2 - 
         (3*q2)/(4*t1) - (2*m2*q2)/(sp*t1) - (3*q2^2)/(4*sp*t1) + 
         (q2*u1)/(2*sp^2) + (3*q2*u1)/(4*sp*t1) + (q2*\[Epsilon])/sp + 
         (2*m2*q2*\[Epsilon])/t1^2 - (m2*sp*\[Epsilon])/(2*t1^2) + 
         (3*q2*\[Epsilon])/(8*t1) + (5*m2*q2*\[Epsilon])/(2*sp*t1) + 
         (3*q2^2*\[Epsilon])/(8*sp*t1) + (q2*u1*\[Epsilon])/(4*sp^2) - 
         (m2*u1*\[Epsilon])/(2*t1^2) - (3*q2*u1*\[Epsilon])/(8*sp*t1), 
        (4*q2)/sp^2 - 2/sp + (5*m2)/(2*t1^2) - 9/(4*t1) - (m2*q2)/(sp^2*t1) - 
         (5*q2^2)/(4*sp^2*t1) + m2/(sp*t1) + (7*q2)/(2*sp*t1) - u1^(-1) - 
         (5*q2^2)/(2*sp^2*u1) + (19*q2)/(4*sp*u1) + m2/(2*t1*u1) + 
         (11*q2)/(4*t1*u1) - (4*m2^2*q2)/(sp^2*t1*u1) - 
         (m2*q2^2)/(sp^2*t1*u1) + q2^3/(2*sp^2*t1*u1) + 
         (m2*q2)/(2*sp*t1*u1) - (9*q2^2)/(4*sp*t1*u1) - sp/(t1*u1) + 
         (7*q2*t1)/(2*sp^2*u1) - u1/(2*sp^2) + (m2*u1)/(sp^2*t1) + 
         (q2*u1)/(sp^2*t1) - (11*u1)/(4*sp*t1) - u1^2/(4*sp^2*t1) + 
         19/(4*(sp + t1 + u1)) + (m2*q2)/(sp^2*(sp + t1 + u1)) + 
         (15*q2^2)/(4*sp^2*(sp + t1 + u1)) - m2/(sp*(sp + t1 + u1)) - 
         (17*q2)/(2*sp*(sp + t1 + u1)) + (3*m2*q2)/(2*t1^2*(sp + t1 + u1)) - 
         (2*m2*sp)/(t1^2*(sp + t1 + u1)) - (5*m2)/(2*t1*(sp + t1 + u1)) - 
         (13*q2)/(4*t1*(sp + t1 + u1)) + (4*m2^2*q2)/
          (sp^2*t1*(sp + t1 + u1)) + (m2*q2^2)/(sp^2*t1*(sp + t1 + u1)) - 
         q2^3/(2*sp^2*t1*(sp + t1 + u1)) + (7*m2*q2)/
          (2*sp*t1*(sp + t1 + u1)) + (3*q2^2)/(2*sp*t1*(sp + t1 + u1)) + 
         (2*sp)/(t1*(sp + t1 + u1)) - (7*q2*t1)/(sp^2*(sp + t1 + u1)) + 
         (2*t1)/(sp*(sp + t1 + u1)) - m2/(2*u1*(sp + t1 + u1)) - 
         (7*q2)/(2*u1*(sp + t1 + u1)) + (4*m2^2*q2)/
          (sp^2*u1*(sp + t1 + u1)) + (m2*q2^2)/(sp^2*u1*(sp + t1 + u1)) - 
         q2^3/(2*sp^2*u1*(sp + t1 + u1)) - (m2*q2)/(2*sp*u1*(sp + t1 + u1)) + 
         (7*q2^2)/(4*sp*u1*(sp + t1 + u1)) + sp/(u1*(sp + t1 + u1)) + 
         (m2*q2)/(2*t1*u1*(sp + t1 + u1)) + q2^2/(4*t1*u1*(sp + t1 + u1)) - 
         (3*m2*sp)/(2*t1*u1*(sp + t1 + u1)) - 
         (q2*sp)/(2*t1*u1*(sp + t1 + u1)) + sp^2/(4*t1*u1*(sp + t1 + u1)) + 
         t1/(u1*(sp + t1 + u1)) + (5*q2^2*t1)/(2*sp^2*u1*(sp + t1 + u1)) - 
         (23*q2*t1)/(4*sp*u1*(sp + t1 + u1)) - (7*q2*t1^2)/
          (2*sp^2*u1*(sp + t1 + u1)) - (m2*u1)/(sp^2*(sp + t1 + u1)) - 
         (9*q2*u1)/(2*sp^2*(sp + t1 + u1)) + (9*u1)/(2*sp*(sp + t1 + u1)) - 
         (2*m2*u1)/(t1^2*(sp + t1 + u1)) + (15*u1)/(4*t1*(sp + t1 + u1)) + 
         (m2*q2*u1)/(sp^2*t1*(sp + t1 + u1)) + (5*q2^2*u1)/
          (4*sp^2*t1*(sp + t1 + u1)) - (2*m2*u1)/(sp*t1*(sp + t1 + u1)) - 
         (15*q2*u1)/(4*sp*t1*(sp + t1 + u1)) + 
         (t1*u1)/(2*sp^2*(sp + t1 + u1)) + (3*u1^2)/(4*sp^2*(sp + t1 + u1)) - 
         (m2*u1^2)/(sp^2*t1*(sp + t1 + u1)) - (q2*u1^2)/
          (sp^2*t1*(sp + t1 + u1)) + (9*u1^2)/(4*sp*t1*(sp + t1 + u1)) + 
         u1^3/(4*sp^2*t1*(sp + t1 + u1)) + (q2*\[Epsilon])/sp^2 - 
         \[Epsilon]/(2*sp) - (3*m2*\[Epsilon])/(4*t1^2) - 
         (3*\[Epsilon])/(4*t1) + (m2*q2*\[Epsilon])/(2*sp^2*t1) - 
         (q2^2*\[Epsilon])/(8*sp^2*t1) - (m2*\[Epsilon])/(2*sp*t1) + 
         (13*q2*\[Epsilon])/(8*sp*t1) - \[Epsilon]/(4*u1) + 
         (m2*q2*\[Epsilon])/(sp^2*u1) - (q2^2*\[Epsilon])/(2*sp^2*u1) + 
         (17*q2*\[Epsilon])/(8*sp*u1) - (m2*\[Epsilon])/(4*t1*u1) + 
         (9*q2*\[Epsilon])/(8*t1*u1) + (3*m2*q2*\[Epsilon])/(2*sp*t1*u1) - 
         (3*q2^2*\[Epsilon])/(4*sp*t1*u1) - (3*sp*\[Epsilon])/(8*t1*u1) + 
         (3*q2*t1*\[Epsilon])/(4*sp^2*u1) + (q2*u1*\[Epsilon])/(4*sp^2*t1) - 
         (u1*\[Epsilon])/(8*sp*t1) - (u1^2*\[Epsilon])/(8*sp^2*t1) + 
         \[Epsilon]/(sp + t1 + u1) - (3*m2*q2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (5*q2^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (m2*\[Epsilon])/(2*sp*(sp + t1 + u1)) - 
         (17*q2*\[Epsilon])/(8*sp*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (4*t1^2*(sp + t1 + u1)) + (m2*\[Epsilon])/(2*t1*(sp + t1 + u1)) - 
         (3*q2*\[Epsilon])/(4*t1*(sp + t1 + u1)) + (5*q2^2*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) + (sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) - 
         (3*q2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + 
         (t1*\[Epsilon])/(2*sp*(sp + t1 + u1)) + (m2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (m2*q2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) + (q2^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) + 
         (t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (5*q2*t1*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (3*q2*t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (u1*\[Epsilon])/(sp*(sp + t1 + u1)) - 
         (m2*u1*\[Epsilon])/(4*t1^2*(sp + t1 + u1)) + (u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (m2*q2*u1*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) + (q2^2*u1*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1)) + (m2*u1*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (5*q2*u1*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) + (u1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) + (5*u1^2*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) + (u1^3*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1)), q2/(2*sp^2*t1) - 3/(4*sp*t1) + 
         (5*q2)/(4*sp^2*u1) + 1/(4*sp*u1) - 1/(4*t1*u1) + 
         (m2*q2)/(sp^2*t1*u1) - q2^2/(4*sp^2*t1*u1) + q2/(sp*t1*u1) - 
         u1/(4*sp^2*t1) - (5*q2)/(4*sp^2*(sp + t1 + u1)) + 
         1/(2*sp*(sp + t1 + u1)) + 3/(4*t1*(sp + t1 + u1)) - 
         (m2*q2)/(sp^2*t1*(sp + t1 + u1)) + q2^2/(4*sp^2*t1*(sp + t1 + u1)) + 
         q2/(2*sp*t1*(sp + t1 + u1)) + (m2*q2)/(sp*u1^2*(sp + t1 + u1)) - 
         q2^2/(4*sp*u1^2*(sp + t1 + u1)) - (q2^2*t1)/(2*sp^2*u1^2*
           (sp + t1 + u1)) - (q2*t1)/(4*sp*u1^2*(sp + t1 + u1)) - 
         (q2*t1^2)/(2*sp^2*u1^2*(sp + t1 + u1)) - 
         (m2*q2)/(sp^2*u1*(sp + t1 + u1)) + q2^2/(4*sp^2*u1*(sp + t1 + u1)) - 
         q2/(2*sp*u1*(sp + t1 + u1)) - q2/(4*t1*u1*(sp + t1 + u1)) - 
         q2^2/(4*sp*t1*u1*(sp + t1 + u1)) - (5*q2*t1)/
          (4*sp^2*u1*(sp + t1 + u1)) + t1/(4*sp*u1*(sp + t1 + u1)) + 
         u1/(4*sp^2*(sp + t1 + u1)) - (q2*u1)/(2*sp^2*t1*(sp + t1 + u1)) + 
         u1/(2*sp*t1*(sp + t1 + u1)) + u1^2/(4*sp^2*t1*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(4*sp^2*t1) - (3*\[Epsilon])/(8*sp*t1) + 
         (5*q2*\[Epsilon])/(8*sp^2*u1) + \[Epsilon]/(8*sp*u1) - 
         \[Epsilon]/(8*t1*u1) + (m2*q2*\[Epsilon])/(2*sp^2*t1*u1) - 
         (q2^2*\[Epsilon])/(8*sp^2*t1*u1) + (q2*\[Epsilon])/(2*sp*t1*u1) - 
         (u1*\[Epsilon])/(8*sp^2*t1) - (5*q2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + \[Epsilon]/(4*sp*(sp + t1 + u1)) + 
         (3*\[Epsilon])/(8*t1*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) + (q2^2*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp*u1^2*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (8*sp*u1^2*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/
          (4*sp^2*u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (8*sp*u1^2*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*sp^2*u1^2*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2^2*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) - (q2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (q2*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (8*sp*t1*u1*(sp + t1 + u1)) - (5*q2*t1*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) + (t1*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) + (u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) + (u1*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) + (u1^2*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1))}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {(-2*m2*q2)/(sp*t1^2) - q2^2/(2*sp^2*t1) - 
         q2/(2*sp*t1) + (q2*u1)/(2*sp^2*t1) + (m2*q2*\[Epsilon])/(sp*t1^2) + 
         (q2^2*\[Epsilon])/(4*sp^2*t1) + (q2*\[Epsilon])/(4*sp*t1) - 
         (q2*u1*\[Epsilon])/(4*sp^2*t1), (3*q2)/(4*sp^2*t1) - 1/(2*sp*t1) + 
         q2/(sp^2*u1) - 1/(4*t1*u1) + (m2*q2)/(sp^2*t1*u1) - 
         q2^2/(2*sp^2*t1*u1) + (3*q2)/(4*sp*t1*u1) - u1/(4*sp^2*t1) - 
         (7*q2)/(4*sp^2*(sp + t1 + u1)) + 1/(2*sp*(sp + t1 + u1)) + 
         (m2*q2)/(sp*t1^2*(sp + t1 + u1)) + 1/(2*t1*(sp + t1 + u1)) - 
         (m2*q2)/(sp^2*t1*(sp + t1 + u1)) + q2^2/(2*sp^2*t1*(sp + t1 + u1)) - 
         q2/(2*sp*t1*(sp + t1 + u1)) + 1/(4*u1*(sp + t1 + u1)) - 
         (m2*q2)/(sp^2*u1*(sp + t1 + u1)) + q2^2/(2*sp^2*u1*(sp + t1 + u1)) - 
         q2/(4*sp*u1*(sp + t1 + u1)) - (q2*t1)/(sp^2*u1*(sp + t1 + u1)) + 
         u1/(4*sp^2*(sp + t1 + u1)) - (3*q2*u1)/(4*sp^2*t1*(sp + t1 + u1)) + 
         (3*u1)/(4*sp*t1*(sp + t1 + u1)) + u1^2/(4*sp^2*t1*(sp + t1 + u1)) + 
         (3*q2*\[Epsilon])/(8*sp^2*t1) - \[Epsilon]/(4*sp*t1) + 
         (q2*\[Epsilon])/(2*sp^2*u1) - \[Epsilon]/(8*t1*u1) + 
         (m2*q2*\[Epsilon])/(2*sp^2*t1*u1) - (q2^2*\[Epsilon])/
          (4*sp^2*t1*u1) + (3*q2*\[Epsilon])/(8*sp*t1*u1) - 
         (u1*\[Epsilon])/(8*sp^2*t1) - (7*q2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + \[Epsilon]/(4*sp*(sp + t1 + u1)) + 
         (m2*q2*\[Epsilon])/(2*sp*t1^2*(sp + t1 + u1)) + 
         \[Epsilon]/(4*t1*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) + (q2^2*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) - (q2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) + \[Epsilon]/(8*u1*(sp + t1 + u1)) - 
         (m2*q2*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) + 
         (q2^2*\[Epsilon])/(4*sp^2*u1*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/(8*sp*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (3*q2*u1*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1)) + (3*u1*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) + (u1^2*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1)), 0}, {0, 0, 0}, {0, 0, 0}}}}
 
CoeffROK[G] = {{{{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {-5*m2*t1^2 - (5*q2*t1^2)/2 - 
         2*m2*t1^2*\[Epsilon] - (9*q2*t1^2*\[Epsilon])/4 - 
         (q2*t1^2*\[Epsilon]^2)/2, (5*m2*t1)/2 + (5*q2*t1)/4 - (5*sp*t1)/4 - 
         (5*m2*sp*t1)/u1 - (5*q2*sp*t1)/(2*u1) - (5*m2*t1^2)/u1 - 
         (5*q2*t1^2)/(2*u1) - (5*t1*u1)/8 + m2*t1*\[Epsilon] + 
         (9*q2*t1*\[Epsilon])/8 - (9*sp*t1*\[Epsilon])/8 - 
         (2*m2*sp*t1*\[Epsilon])/u1 - (9*q2*sp*t1*\[Epsilon])/(4*u1) - 
         (2*m2*t1^2*\[Epsilon])/u1 - (9*q2*t1^2*\[Epsilon])/(4*u1) - 
         (9*t1*u1*\[Epsilon])/16 + (q2*t1*\[Epsilon]^2)/4 - 
         (sp*t1*\[Epsilon]^2)/4 - (q2*sp*t1*\[Epsilon]^2)/(2*u1) - 
         (q2*t1^2*\[Epsilon]^2)/(2*u1) - (t1*u1*\[Epsilon]^2)/8, 
        m2 + q2/2 + (15*sp)/8 - (5*m2*sp^2)/u1^2 - (5*q2*sp^2)/(2*u1^2) - 
         (10*m2*sp*t1)/u1^2 - (5*q2*sp*t1)/u1^2 - (5*m2*t1^2)/u1^2 - 
         (5*q2*t1^2)/(2*u1^2) - (5*m2*sp)/(2*u1) - (5*q2*sp)/(4*u1) + 
         (5*sp^2)/(4*u1) - (5*m2*t1)/(2*u1) - (5*q2*t1)/(4*u1) + 
         (5*sp*t1)/(4*u1) - u1/2 - (m2*\[Epsilon])/2 + (27*sp*\[Epsilon])/
          16 - (2*m2*sp^2*\[Epsilon])/u1^2 - (9*q2*sp^2*\[Epsilon])/
          (4*u1^2) - (4*m2*sp*t1*\[Epsilon])/u1^2 - (9*q2*sp*t1*\[Epsilon])/
          (2*u1^2) - (2*m2*t1^2*\[Epsilon])/u1^2 - (9*q2*t1^2*\[Epsilon])/
          (4*u1^2) - (m2*sp*\[Epsilon])/u1 - (9*q2*sp*\[Epsilon])/(8*u1) + 
         (9*sp^2*\[Epsilon])/(8*u1) - (m2*t1*\[Epsilon])/u1 - 
         (9*q2*t1*\[Epsilon])/(8*u1) + (9*sp*t1*\[Epsilon])/(8*u1) - 
         (q2*\[Epsilon]^2)/8 + (3*sp*\[Epsilon]^2)/8 - (q2*sp^2*\[Epsilon]^2)/
          (2*u1^2) - (q2*sp*t1*\[Epsilon]^2)/u1^2 - (q2*t1^2*\[Epsilon]^2)/
          (2*u1^2) - (q2*sp*\[Epsilon]^2)/(4*u1) + (sp^2*\[Epsilon]^2)/
          (4*u1) - (q2*t1*\[Epsilon]^2)/(4*u1) + (sp*t1*\[Epsilon]^2)/
          (4*u1) + (u1*\[Epsilon]^2)/8, -1/2 + (5*sp)/(8*u1) + 
         (5*t1)/(8*u1) + (9*sp*\[Epsilon])/(16*u1) + (9*t1*\[Epsilon])/
          (16*u1) + \[Epsilon]^2/8 + (sp*\[Epsilon]^2)/(8*u1) + 
         (t1*\[Epsilon]^2)/(8*u1), 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}}}, {{{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, -2*m2^2*sp - m2*q2*sp + (13*m2*sp^2)/8 + 
         (q2*sp^2)/4 - 3*m2^2*t1 - m2*q2*t1 + (q2^2*t1)/4 + (19*m2*sp*t1)/8 + 
         (m2*t1^2)/2 - (q2*t1^2)/8 + (5*sp*t1^2)/8 + t1^3/4 - 2*m2^2*u1 - 
         m2*q2*u1 + (13*m2*sp*u1)/8 + (q2*sp*u1)/4 - (sp^2*u1)/4 + 
         (5*m2*t1*u1)/8 + (sp*t1*u1)/4 + (t1^2*u1)/4 - (sp*u1^2)/4 - 
         (m2*q2*sp*\[Epsilon])/2 + (3*m2*sp^2*\[Epsilon])/8 + 
         (q2*sp^2*\[Epsilon])/4 - (3*m2*q2*t1*\[Epsilon])/4 + 
         (q2^2*t1*\[Epsilon])/8 + (9*m2*sp*t1*\[Epsilon])/8 + 
         (5*q2*sp*t1*\[Epsilon])/16 + (sp^2*t1*\[Epsilon])/8 + 
         (m2*t1^2*\[Epsilon])/2 + (q2*t1^2*\[Epsilon])/8 + 
         (3*sp*t1^2*\[Epsilon])/8 + (t1^3*\[Epsilon])/8 - 
         (m2*q2*u1*\[Epsilon])/2 + (3*m2*sp*u1*\[Epsilon])/8 + 
         (q2*sp*u1*\[Epsilon])/4 - (sp^2*u1*\[Epsilon])/4 + 
         (m2*t1*u1*\[Epsilon])/4 + (q2*t1*u1*\[Epsilon])/8 + 
         (sp*t1*u1*\[Epsilon])/16 + (t1^2*u1*\[Epsilon])/8 - 
         (sp*u1^2*\[Epsilon])/4 + (q2*sp^2*\[Epsilon]^2)/16 + 
         (3*q2*sp*t1*\[Epsilon]^2)/16 - (sp^2*t1*\[Epsilon]^2)/32 + 
         (q2*t1^2*\[Epsilon]^2)/8 - (3*sp*t1^2*\[Epsilon]^2)/32 + 
         (q2*sp*u1*\[Epsilon]^2)/16 - (sp^2*u1*\[Epsilon]^2)/16 + 
         (q2*t1*u1*\[Epsilon]^2)/16 - (5*sp*t1*u1*\[Epsilon]^2)/32 - 
         (sp*u1^2*\[Epsilon]^2)/16, -m2^2 + q2^2/4 - (m2*sp)/8 - 
         (3*q2*sp)/8 + sp^2/8 - (7*m2*t1)/8 - q2*t1 + (sp*t1)/8 + 
         (5*t1^2)/8 - (m2^2*sp)/u1 + (q2^2*sp)/(4*u1) - (m2*sp^2)/(8*u1) - 
         (q2*sp^2)/(8*u1) - (3*m2^2*t1)/u1 - (m2*q2*t1)/u1 + 
         (q2^2*t1)/(4*u1) + (3*m2*sp*t1)/(8*u1) - (q2*sp*t1)/(4*u1) + 
         (sp^2*t1)/(4*u1) + (m2*t1^2)/(2*u1) - (q2*t1^2)/(8*u1) + 
         (sp*t1^2)/(2*u1) + t1^3/(4*u1) - (q2*u1)/4 + (sp*u1)/8 + 
         (3*t1*u1)/8 - (m2*q2*\[Epsilon])/4 + (q2^2*\[Epsilon])/8 + 
         (3*m2*sp*\[Epsilon])/8 - (q2*sp*\[Epsilon])/8 + 
         (5*m2*t1*\[Epsilon])/8 - (7*q2*t1*\[Epsilon])/16 - 
         (sp*t1*\[Epsilon])/4 + (t1^2*\[Epsilon])/8 - (m2*q2*sp*\[Epsilon])/
          (4*u1) + (q2^2*sp*\[Epsilon])/(8*u1) + (m2*sp^2*\[Epsilon])/
          (4*u1) - (3*m2*q2*t1*\[Epsilon])/(4*u1) + (q2^2*t1*\[Epsilon])/
          (8*u1) + (3*m2*sp*t1*\[Epsilon])/(4*u1) + (q2*sp*t1*\[Epsilon])/
          (8*u1) + (sp^2*t1*\[Epsilon])/(8*u1) + (m2*t1^2*\[Epsilon])/
          (2*u1) + (q2*t1^2*\[Epsilon])/(8*u1) + (sp*t1^2*\[Epsilon])/
          (4*u1) + (t1^3*\[Epsilon])/(8*u1) + (m2*u1*\[Epsilon])/8 - 
         (q2*u1*\[Epsilon])/8 + (t1*u1*\[Epsilon])/16 + (q2*sp*\[Epsilon]^2)/
          16 - (sp^2*\[Epsilon]^2)/16 + (q2*t1*\[Epsilon]^2)/16 - 
         (3*sp*t1*\[Epsilon]^2)/32 - (t1^2*\[Epsilon]^2)/32 + 
         (q2*sp^2*\[Epsilon]^2)/(16*u1) + (3*q2*sp*t1*\[Epsilon]^2)/(16*u1) + 
         (q2*t1^2*\[Epsilon]^2)/(8*u1) - (sp*u1*\[Epsilon]^2)/16 + 
         (t1*u1*\[Epsilon]^2)/32, 0, 0}, {0, -3*m2^2 + (3*q2^2)/4 - 
         (3*m2*sp)/4 - (9*q2*sp)/8 - (5*sp^2)/8 - (q2*t1)/2 - (3*sp*t1)/4 - 
         t1^2/4 - (5*m2^2*sp)/(2*u1) + (5*q2^2*sp)/(8*u1) - 
         (m2*sp^2)/(8*u1) + (q2*sp^2)/(8*u1) - (m2^2*t1)/(2*u1) + 
         (m2*q2*t1)/u1 + (5*q2^2*t1)/(8*u1) - (5*m2*sp*t1)/(4*u1) + 
         (7*q2*sp*t1)/(8*u1) - (9*m2*t1^2)/(8*u1) + (3*q2*t1^2)/(4*u1) - 
         2*m2*u1 - (3*q2*u1)/4 + (sp*u1)/2 + (t1*u1)/4 + u1^2/2 - 
         (3*m2*q2*\[Epsilon])/4 + (3*q2^2*\[Epsilon])/8 - 
         (m2*sp*\[Epsilon])/4 - (q2*sp*\[Epsilon])/4 - (5*sp^2*\[Epsilon])/
          16 - (m2*t1*\[Epsilon])/2 + (q2*t1*\[Epsilon])/16 - 
         (9*sp*t1*\[Epsilon])/16 - (t1^2*\[Epsilon])/8 - 
         (5*m2*q2*sp*\[Epsilon])/(8*u1) + (5*q2^2*sp*\[Epsilon])/(16*u1) - 
         (3*m2*sp^2*\[Epsilon])/(8*u1) + (q2*sp^2*\[Epsilon])/(16*u1) - 
         (m2*q2*t1*\[Epsilon])/(8*u1) + (5*q2^2*t1*\[Epsilon])/(16*u1) - 
         (m2*sp*t1*\[Epsilon])/(2*u1) + (9*q2*sp*t1*\[Epsilon])/(16*u1) - 
         (m2*t1^2*\[Epsilon])/(8*u1) + (q2*t1^2*\[Epsilon])/(2*u1) - 
         (m2*u1*\[Epsilon])/8 - (3*q2*u1*\[Epsilon])/8 + 
         (3*sp*u1*\[Epsilon])/16 + (t1*u1*\[Epsilon])/8 + 
         (u1^2*\[Epsilon])/2 - (q2*sp*\[Epsilon]^2)/16 + 
         (sp^2*\[Epsilon]^2)/8 - (q2*t1*\[Epsilon]^2)/16 - 
         (3*q2*sp^2*\[Epsilon]^2)/(32*u1) - (q2*sp*t1*\[Epsilon]^2)/(8*u1) - 
         (q2*t1^2*\[Epsilon]^2)/(32*u1) + (7*sp*u1*\[Epsilon]^2)/32 + 
         (t1*u1*\[Epsilon]^2)/8 + (u1^2*\[Epsilon]^2)/8, 
        -2*m2 - q2 + (9*sp)/8 + t1/2 - (3*m2^2*sp)/(2*u1^2) - 
         (3*m2*q2*sp)/(4*u1^2) - (m2*sp^2)/(2*u1^2) - (q2*sp^2)/(4*u1^2) - 
         (3*m2^2*t1)/(2*u1^2) - (3*m2*q2*t1)/(4*u1^2) + (m2*t1^2)/(2*u1^2) + 
         (q2*t1^2)/(4*u1^2) - (2*m2^2)/u1 - (m2*q2)/u1 + (m2*sp)/(4*u1) - 
         (11*q2*sp)/(8*u1) + sp^2/(4*u1) + (5*m2*t1)/(4*u1) - 
         (7*q2*t1)/(8*u1) - (9*sp*t1)/(8*u1) - (3*t1^2)/(4*u1) - 
         (q2*\[Epsilon])/2 + (9*sp*\[Epsilon])/16 + (t1*\[Epsilon])/8 - 
         (3*m2*q2*sp*\[Epsilon])/(8*u1^2) - (m2*sp^2*\[Epsilon])/(4*u1^2) - 
         (q2*sp^2*\[Epsilon])/(4*u1^2) - (3*m2*q2*t1*\[Epsilon])/(8*u1^2) + 
         (m2*t1^2*\[Epsilon])/(4*u1^2) + (q2*t1^2*\[Epsilon])/(4*u1^2) - 
         (m2*q2*\[Epsilon])/(2*u1) - (13*q2*sp*\[Epsilon])/(16*u1) + 
         (sp^2*\[Epsilon])/(16*u1) + (m2*t1*\[Epsilon])/(4*u1) - 
         (5*q2*t1*\[Epsilon])/(16*u1) - (3*sp*t1*\[Epsilon])/(4*u1) - 
         (5*t1^2*\[Epsilon])/(8*u1) + (u1*\[Epsilon])/2 + 
         (11*sp*\[Epsilon]^2)/32 + (11*t1*\[Epsilon]^2)/32 - 
         (q2*sp^2*\[Epsilon]^2)/(16*u1^2) + (q2*t1^2*\[Epsilon]^2)/
          (16*u1^2) - (q2*sp*\[Epsilon]^2)/(16*u1) + (sp^2*\[Epsilon]^2)/
          (8*u1) + (q2*t1*\[Epsilon]^2)/(16*u1) + (3*sp*t1*\[Epsilon]^2)/
          (32*u1) + (t1^2*\[Epsilon]^2)/(32*u1) + (u1*\[Epsilon]^2)/4, 
        7/8 - (m2*sp)/u1^2 - (q2*sp)/(2*u1^2) - (m2*t1)/u1^2 - 
         (q2*t1)/(2*u1^2) - m2/u1 - q2/(2*u1) + (3*sp)/(2*u1) + t1/u1 + 
         (11*\[Epsilon])/16 - (m2*sp*\[Epsilon])/(2*u1^2) - 
         (q2*sp*\[Epsilon])/(2*u1^2) - (m2*t1*\[Epsilon])/(2*u1^2) - 
         (q2*t1*\[Epsilon])/(2*u1^2) - (m2*\[Epsilon])/(4*u1) - 
         (q2*\[Epsilon])/(2*u1) + (11*sp*\[Epsilon])/(16*u1) + 
         (t1*\[Epsilon])/(2*u1) + \[Epsilon]^2/16 - (q2*sp*\[Epsilon]^2)/
          (8*u1^2) - (q2*t1*\[Epsilon]^2)/(8*u1^2) - (q2*\[Epsilon]^2)/
          (8*u1) + (3*sp*\[Epsilon]^2)/(32*u1) + (t1*\[Epsilon]^2)/(32*u1), 
        -1/(8*u1)}, {0, 0, -3/8 + (m2*sp)/u1^2 + (q2*sp)/(2*u1^2) + 
         (m2*t1)/u1^2 + (q2*t1)/(2*u1^2) + m2/u1 + q2/(2*u1) - 
         (3*sp)/(4*u1) - t1/(8*u1) - (3*\[Epsilon])/16 + 
         (m2*sp*\[Epsilon])/(2*u1^2) + (q2*sp*\[Epsilon])/(2*u1^2) + 
         (m2*t1*\[Epsilon])/(2*u1^2) + (q2*t1*\[Epsilon])/(2*u1^2) + 
         (m2*\[Epsilon])/(4*u1) + (q2*\[Epsilon])/(2*u1) - 
         (sp*\[Epsilon])/(16*u1) + \[Epsilon]^2/16 + (q2*sp*\[Epsilon]^2)/
          (8*u1^2) + (q2*t1*\[Epsilon]^2)/(8*u1^2) + (q2*\[Epsilon]^2)/
          (8*u1) + (sp*\[Epsilon]^2)/(32*u1) + (3*t1*\[Epsilon]^2)/(32*u1), 
        1/(8*u1) + \[Epsilon]/(8*u1), 0}, {0, 0, -\[Epsilon]/(8*u1), 0, 0}}, 
      {{0, 0, 0, 0, 0}, {m2*t1^2 + (q2*t1^2)/2 + (m2*t1^2*\[Epsilon])/2 + 
         (q2*t1^2*\[Epsilon])/2 + (q2*t1^2*\[Epsilon]^2)/8, 
        (13*m2*sp)/8 + (q2*sp)/4 - m2*t1 - (q2*t1)/4 + (sp*t1)/4 + t1^2/2 + 
         (2*m2^2*sp)/u1 + (m2*q2*sp)/u1 + (m2^2*t1)/u1 + (m2*q2*t1)/u1 + 
         (q2^2*t1)/(4*u1) + (m2*sp*t1)/(4*u1) + (q2*sp*t1)/(4*u1) + 
         (sp^2*t1)/(4*u1) + (m2*t1^2)/(2*u1) - (3*q2*t1^2)/(8*u1) + 
         (3*sp*t1^2)/(8*u1) + t1^3/(2*u1) + (13*m2*u1)/8 + (q2*u1)/4 - 
         (sp*u1)/4 + (t1*u1)/4 - u1^2/4 + (3*m2*sp*\[Epsilon])/8 + 
         (q2*sp*\[Epsilon])/4 + (m2*t1*\[Epsilon])/8 - (3*q2*t1*\[Epsilon])/
          16 + (sp*t1*\[Epsilon])/4 + (11*t1^2*\[Epsilon])/16 + 
         (m2*q2*sp*\[Epsilon])/(2*u1) + (m2*q2*t1*\[Epsilon])/(4*u1) + 
         (q2^2*t1*\[Epsilon])/(8*u1) + (q2*sp*t1*\[Epsilon])/(8*u1) + 
         (sp^2*t1*\[Epsilon])/(4*u1) + (m2*t1^2*\[Epsilon])/(2*u1) - 
         (q2*t1^2*\[Epsilon])/(16*u1) + (sp*t1^2*\[Epsilon])/(2*u1) + 
         (t1^3*\[Epsilon])/(2*u1) + (3*m2*u1*\[Epsilon])/8 + 
         (q2*u1*\[Epsilon])/4 - (sp*u1*\[Epsilon])/4 + (3*t1*u1*\[Epsilon])/
          16 - (u1^2*\[Epsilon])/4 + (q2*sp*\[Epsilon]^2)/16 - 
         (sp*t1*\[Epsilon]^2)/32 - (t1^2*\[Epsilon]^2)/16 + 
         (sp^2*t1*\[Epsilon]^2)/(16*u1) + (q2*t1^2*\[Epsilon]^2)/(8*u1) + 
         (3*sp*t1^2*\[Epsilon]^2)/(32*u1) + (t1^3*\[Epsilon]^2)/(32*u1) + 
         (q2*u1*\[Epsilon]^2)/16 - (sp*u1*\[Epsilon]^2)/16 - 
         (3*t1*u1*\[Epsilon]^2)/32 - (u1^2*\[Epsilon]^2)/16, 
        (5*m2)/8 - (7*q2)/8 - sp/8 + t1/8 - (2*m2^2)/u1 + q2^2/(2*u1) + 
         (5*m2*sp)/(8*u1) + (q2*sp)/(8*u1) + (q2*t1)/(4*u1) + 
         (3*sp*t1)/(8*u1) + t1^2/(4*u1) + (3*u1)/8 + (m2*\[Epsilon])/2 - 
         (3*q2*\[Epsilon])/8 - (sp*\[Epsilon])/8 + (t1*\[Epsilon])/16 - 
         (m2*q2*\[Epsilon])/(2*u1) + (q2^2*\[Epsilon])/(4*u1) + 
         (m2*sp*\[Epsilon])/(4*u1) + (q2*sp*\[Epsilon])/(8*u1) + 
         (3*q2*t1*\[Epsilon])/(16*u1) + (sp*t1*\[Epsilon])/(4*u1) + 
         (t1^2*\[Epsilon])/(4*u1) + (u1*\[Epsilon])/8 + 
         (q2*\[Epsilon]^2)/16 - (sp*\[Epsilon]^2)/16 - (5*t1*\[Epsilon]^2)/
          32 + (q2*sp*\[Epsilon]^2)/(16*u1) - (5*sp*t1*\[Epsilon]^2)/
          (32*u1) - (3*t1^2*\[Epsilon]^2)/(32*u1) - (u1*\[Epsilon]^2)/16, 0, 
        0}, {-8*m2^2 - 4*m2*q2 - 4*m2*t1 - 2*q2*t1 - 2*m2*q2*\[Epsilon] - 
         (3*m2*t1*\[Epsilon])/2 - (7*q2*t1*\[Epsilon])/4 - 
         (3*q2*t1*\[Epsilon]^2)/8, (-9*m2)/2 - (7*q2)/4 + (3*sp)/4 - 
         (5*m2^2)/(2*t1) - (m2*q2)/t1 + q2^2/(8*t1) - (3*m2*sp)/(8*t1) - 
         (q2*sp)/(8*t1) + (3*t1)/2 - (8*m2^2)/u1 - (5*m2*q2)/(4*u1) + 
         (11*q2^2)/(8*u1) - (2*m2*sp)/u1 - (q2*sp)/u1 + (3*sp^2)/(2*u1) - 
         (2*m2^2*sp)/(t1*u1) - (m2*q2*sp)/(t1*u1) - (41*m2*t1)/(8*u1) - 
         (11*q2*t1)/(4*u1) + (23*sp*t1)/(8*u1) + (3*t1^2)/u1 + (15*u1)/8 - 
         (q2*u1)/(4*t1) + (sp*u1)/(8*t1) + u1^2/(8*t1) + 
         (3*m2^2)/(sp + t1 + u1) + (5*m2*q2)/(4*(sp + t1 + u1)) - 
         q2^2/(8*(sp + t1 + u1)) + (m2*sp)/(4*(sp + t1 + u1)) + 
         (q2*sp)/(sp + t1 + u1) - sp^2/(2*(sp + t1 + u1)) + 
         (5*m2^2*sp)/(2*t1*(sp + t1 + u1)) + (m2*q2*sp)/(t1*(sp + t1 + u1)) - 
         (q2^2*sp)/(8*t1*(sp + t1 + u1)) + (3*m2*sp^2)/
          (8*t1*(sp + t1 + u1)) + (q2*sp^2)/(8*t1*(sp + t1 + u1)) - 
         (5*m2*t1)/(4*(sp + t1 + u1)) + (7*q2*t1)/(8*(sp + t1 + u1)) - 
         (sp*t1)/(sp + t1 + u1) - t1^2/(4*(sp + t1 + u1)) + 
         (5*m2^2*sp)/(2*u1*(sp + t1 + u1)) + (m2*q2*sp)/
          (4*u1*(sp + t1 + u1)) - (q2^2*sp)/(2*u1*(sp + t1 + u1)) - 
         (3*m2*sp^2)/(8*u1*(sp + t1 + u1)) + (q2*sp^2)/
          (8*u1*(sp + t1 + u1)) + (m2^2*t1)/(2*u1*(sp + t1 + u1)) - 
         (3*m2*q2*t1)/(4*u1*(sp + t1 + u1)) - (q2^2*t1)/
          (2*u1*(sp + t1 + u1)) - (7*m2*sp*t1)/(8*u1*(sp + t1 + u1)) + 
         (3*q2*sp*t1)/(4*u1*(sp + t1 + u1)) - (m2*t1^2)/
          (2*u1*(sp + t1 + u1)) + (5*q2*t1^2)/(8*u1*(sp + t1 + u1)) - 
         (3*m2*u1)/(4*(sp + t1 + u1)) + (q2*u1)/(2*(sp + t1 + u1)) - 
         (9*sp*u1)/(8*(sp + t1 + u1)) + (m2^2*u1)/(2*t1*(sp + t1 + u1)) - 
         (q2^2*u1)/(8*t1*(sp + t1 + u1)) + (3*m2*sp*u1)/
          (8*t1*(sp + t1 + u1)) + (3*q2*sp*u1)/(8*t1*(sp + t1 + u1)) - 
         (sp^2*u1)/(8*t1*(sp + t1 + u1)) - (t1*u1)/(sp + t1 + u1) - 
         (3*u1^2)/(8*(sp + t1 + u1)) + (q2*u1^2)/(4*t1*(sp + t1 + u1)) - 
         (sp*u1^2)/(4*t1*(sp + t1 + u1)) - u1^3/(8*t1*(sp + t1 + u1)) + 
         (m2*\[Epsilon])/8 - (q2*\[Epsilon])/16 + (5*sp*\[Epsilon])/8 - 
         (5*m2*q2*\[Epsilon])/(8*t1) + (q2^2*\[Epsilon])/(16*t1) + 
         (m2*sp*\[Epsilon])/(8*t1) - (q2*sp*\[Epsilon])/(16*t1) + 
         (17*t1*\[Epsilon])/16 - (2*m2*q2*\[Epsilon])/u1 + 
         (11*q2^2*\[Epsilon])/(16*u1) - (7*m2*sp*\[Epsilon])/(8*u1) - 
         (15*q2*sp*\[Epsilon])/(16*u1) + (11*sp^2*\[Epsilon])/(8*u1) - 
         (m2*q2*sp*\[Epsilon])/(2*t1*u1) - (11*m2*t1*\[Epsilon])/(8*u1) - 
         (35*q2*t1*\[Epsilon])/(16*u1) + (3*sp*t1*\[Epsilon])/(2*u1) + 
         (3*t1^2*\[Epsilon])/(2*u1) + (11*u1*\[Epsilon])/8 + 
         (m2*u1*\[Epsilon])/(8*t1) - (q2*u1*\[Epsilon])/(8*t1) + 
         (sp*u1*\[Epsilon])/(16*t1) + (u1^2*\[Epsilon])/(16*t1) + 
         (3*m2*q2*\[Epsilon])/(4*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (16*(sp + t1 + u1)) - (5*m2*sp*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (3*q2*sp*\[Epsilon])/(16*(sp + t1 + u1)) - (sp^2*\[Epsilon])/
          (4*(sp + t1 + u1)) + (5*m2*q2*sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/(4*(sp + t1 + u1)) + 
         (q2*t1*\[Epsilon])/(4*(sp + t1 + u1)) - (5*sp*t1*\[Epsilon])/
          (8*(sp + t1 + u1)) - (t1^2*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (5*m2*q2*sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (q2^2*sp*\[Epsilon])/(4*u1*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (3*m2*sp*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (3*q2*sp*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (3*q2*t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*u1*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (7*sp*u1*\[Epsilon])/(16*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (q2^2*u1*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) - (m2*sp*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (3*q2*sp*u1*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) - (sp^2*u1*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) - (5*t1*u1*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (u1^2*\[Epsilon])/(16*(sp + t1 + u1)) - (m2*u1^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (sp*u1^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (u1^3*\[Epsilon])/(16*t1*(sp + t1 + u1)) + 
         (q2*\[Epsilon]^2)/16 + (sp*\[Epsilon]^2)/16 - (t1*\[Epsilon]^2)/16 - 
         (7*q2*sp*\[Epsilon]^2)/(32*u1) + (5*sp^2*\[Epsilon]^2)/(16*u1) - 
         (11*q2*t1*\[Epsilon]^2)/(32*u1) + (3*sp*t1*\[Epsilon]^2)/(32*u1) + 
         (t1^2*\[Epsilon]^2)/(32*u1) + (19*u1*\[Epsilon]^2)/32 - 
         (q2*sp*\[Epsilon]^2)/(8*(sp + t1 + u1)) + (3*sp^2*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/(16*(sp + t1 + u1)) + 
         (sp*t1*\[Epsilon]^2)/(8*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (3*q2*sp*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (sp*u1*\[Epsilon]^2)/(8*(sp + t1 + u1)) + 
         (t1*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)), 27/8 - (2*m2)/t1 - 
         (9*q2)/(8*t1) + (5*sp)/(8*t1) - (10*m2^2)/u1^2 - (5*m2*q2)/u1^2 - 
         (5*m2*sp)/u1^2 - (5*q2*sp)/(2*u1^2) - (5*m2*t1)/u1^2 - 
         (5*q2*t1)/(2*u1^2) - (7*m2)/u1 - (9*q2)/(2*u1) + (11*sp)/(8*u1) - 
         (5*m2^2)/(2*t1*u1) + (5*q2^2)/(8*t1*u1) - (9*m2*sp)/(8*t1*u1) - 
         (5*q2*sp)/(8*t1*u1) + sp^2/(4*t1*u1) - (7*t1)/(8*u1) + u1/t1 + 
         m2/(sp + t1 + u1) + (9*q2)/(8*(sp + t1 + u1)) - 
         (3*sp)/(4*(sp + t1 + u1)) - (3*m2^2)/(2*t1*(sp + t1 + u1)) + 
         (3*q2^2)/(8*t1*(sp + t1 + u1)) + (9*m2*sp)/(8*t1*(sp + t1 + u1)) + 
         (3*q2*sp)/(4*t1*(sp + t1 + u1)) - sp^2/(8*t1*(sp + t1 + u1)) - 
         (9*t1)/(8*(sp + t1 + u1)) + (m2^2*sp)/(2*u1^2*(sp + t1 + u1)) + 
         (m2*q2*sp)/(4*u1^2*(sp + t1 + u1)) - (m2*sp^2)/
          (2*u1^2*(sp + t1 + u1)) - (q2*sp^2)/(4*u1^2*(sp + t1 + u1)) + 
         (m2^2*t1)/(2*u1^2*(sp + t1 + u1)) + (m2*q2*t1)/
          (4*u1^2*(sp + t1 + u1)) - (m2*sp*t1)/(u1^2*(sp + t1 + u1)) - 
         (q2*sp*t1)/(2*u1^2*(sp + t1 + u1)) - (m2*t1^2)/
          (2*u1^2*(sp + t1 + u1)) - (q2*t1^2)/(4*u1^2*(sp + t1 + u1)) + 
         (3*m2^2)/(u1*(sp + t1 + u1)) + (5*m2*q2)/(4*u1*(sp + t1 + u1)) - 
         q2^2/(8*u1*(sp + t1 + u1)) - (3*m2*sp)/(8*u1*(sp + t1 + u1)) + 
         (3*q2*sp)/(8*u1*(sp + t1 + u1)) + (m2^2*sp)/
          (2*t1*u1*(sp + t1 + u1)) - (q2^2*sp)/(8*t1*u1*(sp + t1 + u1)) + 
         (m2*sp^2)/(8*t1*u1*(sp + t1 + u1)) + (q2*sp^2)/
          (8*t1*u1*(sp + t1 + u1)) - (m2*t1)/(2*u1*(sp + t1 + u1)) + 
         (q2*t1)/(4*u1*(sp + t1 + u1)) - (sp*t1)/(2*u1*(sp + t1 + u1)) - 
         t1^2/(2*u1*(sp + t1 + u1)) - (11*u1)/(8*(sp + t1 + u1)) + 
         (q2*u1)/(8*t1*(sp + t1 + u1)) - (7*sp*u1)/(8*t1*(sp + t1 + u1)) - 
         u1^2/(2*t1*(sp + t1 + u1)) + (37*\[Epsilon])/16 + 
         (m2*\[Epsilon])/(4*t1) - (q2*\[Epsilon])/(2*t1) + 
         (3*sp*\[Epsilon])/(8*t1) - (5*m2*q2*\[Epsilon])/(2*u1^2) - 
         (2*m2*sp*\[Epsilon])/u1^2 - (9*q2*sp*\[Epsilon])/(4*u1^2) - 
         (2*m2*t1*\[Epsilon])/u1^2 - (9*q2*t1*\[Epsilon])/(4*u1^2) - 
         (m2*\[Epsilon])/(2*u1) - (21*q2*\[Epsilon])/(8*u1) + 
         (15*sp*\[Epsilon])/(8*u1) - (5*m2*q2*\[Epsilon])/(8*t1*u1) + 
         (5*q2^2*\[Epsilon])/(16*t1*u1) - (m2*sp*\[Epsilon])/(8*t1*u1) - 
         (5*q2*sp*\[Epsilon])/(16*t1*u1) + (sp^2*\[Epsilon])/(4*t1*u1) - 
         (t1*\[Epsilon])/(8*u1) + (11*u1*\[Epsilon])/(16*t1) - 
         (m2*\[Epsilon])/(4*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (2*(sp + t1 + u1)) - (5*sp*\[Epsilon])/(16*(sp + t1 + u1)) - 
         (3*m2*q2*\[Epsilon])/(8*t1*(sp + t1 + u1)) + (3*q2^2*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) + 
         (5*q2*sp*\[Epsilon])/(16*t1*(sp + t1 + u1)) + (sp^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (15*t1*\[Epsilon])/(16*(sp + t1 + u1)) + 
         (m2*q2*sp*\[Epsilon])/(8*u1^2*(sp + t1 + u1)) - 
         (m2*sp^2*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) - (m2*sp*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - (m2*t1^2*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) + (3*m2*q2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/(16*u1*(sp + t1 + u1)) - 
         (m2*sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon])/
          (16*u1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/
          (16*t1*u1*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon])/
          (16*t1*u1*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (sp*t1*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (t1^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - (u1*\[Epsilon])/
          (8*(sp + t1 + u1)) - (m2*u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (5*sp*u1*\[Epsilon])/(16*t1*(sp + t1 + u1)) - (3*u1^2*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) + \[Epsilon]^2 + (q2*\[Epsilon]^2)/(16*t1) + 
         (3*sp*\[Epsilon]^2)/(32*t1) - (q2*sp*\[Epsilon]^2)/(2*u1^2) - 
         (q2*t1*\[Epsilon]^2)/(2*u1^2) - (3*q2*\[Epsilon]^2)/(16*u1) + 
         (5*sp*\[Epsilon]^2)/(16*u1) + (sp^2*\[Epsilon]^2)/(16*t1*u1) - 
         (t1*\[Epsilon]^2)/(8*u1) + (u1*\[Epsilon]^2)/(16*t1) - 
         (q2*\[Epsilon]^2)/(16*(sp + t1 + u1)) + (sp*\[Epsilon]^2)/
          (4*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)) + 
         (sp^2*\[Epsilon]^2)/(32*t1*(sp + t1 + u1)) + (3*t1*\[Epsilon]^2)/
          (32*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon]^2)/
          (16*u1^2*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (16*u1^2*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (sp^2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (sp*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (u1*\[Epsilon]^2)/(32*(sp + t1 + u1)) - 
         (q2*u1*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)) + (sp*u1*\[Epsilon]^2)/
          (32*t1*(sp + t1 + u1)) + (u1^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)), 3/u1 - m2/(2*t1*u1) - q2/(4*t1*u1) - 
         1/(4*(sp + t1 + u1)) - (3*m2)/(2*t1*(sp + t1 + u1)) - 
         (3*q2)/(4*t1*(sp + t1 + u1)) - m2/(2*u1*(sp + t1 + u1)) - 
         q2/(4*u1*(sp + t1 + u1)) - sp/(4*u1*(sp + t1 + u1)) - 
         (2*m2^2)/(t1*u1*(sp + t1 + u1)) - (m2*q2)/(t1*u1*(sp + t1 + u1)) - 
         (m2*sp)/(2*t1*u1*(sp + t1 + u1)) - (q2*sp)/
          (4*t1*u1*(sp + t1 + u1)) - t1/(4*u1*(sp + t1 + u1)) + 
         \[Epsilon]/(4*t1) + (43*\[Epsilon])/(16*u1) + (m2*\[Epsilon])/
          (8*t1*u1) - (3*sp*\[Epsilon])/(16*t1*u1) + (3*\[Epsilon])/
          (16*(sp + t1 + u1)) - (m2*\[Epsilon])/(8*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (7*sp*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) - (m2*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/(4*u1*(sp + t1 + u1)) - (sp*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (sp^2*\[Epsilon])/
          (16*t1*u1*(sp + t1 + u1)) - (3*t1*\[Epsilon])/
          (16*u1*(sp + t1 + u1)) + (u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         \[Epsilon]^2/(16*t1) + (25*\[Epsilon]^2)/(32*u1) + 
         (q2*\[Epsilon]^2)/(16*t1*u1) + (3*sp*\[Epsilon]^2)/(32*t1*u1) + 
         \[Epsilon]^2/(32*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) + (3*sp*\[Epsilon]^2)/
          (32*t1*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/(16*u1*(sp + t1 + u1)) + 
         (sp*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1)) + (3*sp^2*\[Epsilon]^2)/
          (32*t1*u1*(sp + t1 + u1)) + (t1*\[Epsilon]^2)/
          (32*u1*(sp + t1 + u1)) + (3*u1*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)), 1/(2*t1*(sp + t1 + u1)) + 
         1/(4*u1*(sp + t1 + u1)) + sp/(4*t1*u1*(sp + t1 + u1)) + 
         \[Epsilon]/(2*t1*(sp + t1 + u1)) + \[Epsilon]/
          (4*u1*(sp + t1 + u1)) + (sp*\[Epsilon])/(4*t1*u1*(sp + t1 + u1)) + 
         \[Epsilon]^2/(8*t1*(sp + t1 + u1)) + \[Epsilon]^2/
          (16*u1*(sp + t1 + u1)) + (sp*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1))}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}}}, {{{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, -3*m2^2 - m2*q2 + q2^2/4 + (7*m2*sp)/4 - sp^2/4 - 
         (4*m2^3)/t1 + (m2*q2^2)/t1 + (2*m2^2*sp)/t1 - (m2*q2*sp)/t1 - 
         (m2*sp^2)/(4*t1) + (q2*sp^2)/(4*t1) + (m2*t1)/2 - (q2*t1)/8 + 
         (3*sp*t1)/8 + t1^2/4 + (5*m2*u1)/8 - (2*m2^2*u1)/t1 - 
         (m2*q2*u1)/t1 + (m2*sp*u1)/(2*t1) + (q2*sp*u1)/(4*t1) - 
         (sp^2*u1)/(4*t1) + (t1*u1)/4 - (sp*u1^2)/(4*t1) - 
         (3*m2*q2*\[Epsilon])/4 + (q2^2*\[Epsilon])/8 + (7*m2*sp*\[Epsilon])/
          8 - (q2*sp*\[Epsilon])/16 - (sp^2*\[Epsilon])/8 - 
         (m2^2*q2*\[Epsilon])/t1 + (m2*q2^2*\[Epsilon])/(2*t1) + 
         (m2^2*sp*\[Epsilon])/(2*t1) - (m2*q2*sp*\[Epsilon])/(4*t1) - 
         (m2*sp^2*\[Epsilon])/(4*t1) + (m2*t1*\[Epsilon])/2 + 
         (q2*t1*\[Epsilon])/8 + (sp*t1*\[Epsilon])/4 + (t1^2*\[Epsilon])/8 + 
         (m2*u1*\[Epsilon])/4 + (q2*u1*\[Epsilon])/8 - (sp*u1*\[Epsilon])/
          16 - (m2*q2*u1*\[Epsilon])/(2*t1) - (m2*sp*u1*\[Epsilon])/(4*t1) + 
         (q2*sp*u1*\[Epsilon])/(4*t1) + (t1*u1*\[Epsilon])/8 - 
         (sp*u1^2*\[Epsilon])/(4*t1) + (m2*sp*\[Epsilon]^2)/8 + 
         (q2*sp*\[Epsilon]^2)/32 + (sp^2*\[Epsilon]^2)/16 + 
         (m2*sp^2*\[Epsilon]^2)/(4*t1) - (q2*sp^2*\[Epsilon]^2)/(8*t1) + 
         (q2*t1*\[Epsilon]^2)/8 - (3*sp*t1*\[Epsilon]^2)/32 + 
         (q2*u1*\[Epsilon]^2)/16 - (5*sp*u1*\[Epsilon]^2)/32 - 
         (m2*sp*u1*\[Epsilon]^2)/(8*t1) + (q2*sp*u1*\[Epsilon]^2)/(16*t1) + 
         (sp^2*u1*\[Epsilon]^2)/(8*t1) - (sp*u1^2*\[Epsilon]^2)/(16*t1) + 
         (q2*sp*\[Epsilon]^3)/32 + (q2*sp^2*\[Epsilon]^3)/(32*t1) - 
         (sp^2*u1*\[Epsilon]^3)/(32*t1), (-3*m2)/4 - (7*q2)/8 + sp/8 + 
         (m2*q2)/t1 - q2^2/(2*t1) + (m2*sp)/(4*t1) + (7*t1)/8 - (2*m2^2)/u1 - 
         (m2*q2)/(4*u1) + q2^2/(2*u1) + (m2*sp)/(8*u1) - (3*q2*sp)/(8*u1) + 
         (3*m2*t1)/(4*u1) - (5*q2*t1)/(8*u1) + (sp*t1)/(2*u1) + t1^2/(2*u1) + 
         u1/8 - (m2*u1)/t1 + (q2*u1)/t1 - u1^2/(2*t1) - m2^2/(sp + t1 + u1) - 
         (5*m2*q2)/(4*(sp + t1 + u1)) + (3*q2^2)/(4*(sp + t1 + u1)) - 
         (m2*sp)/(sp + t1 + u1) + (3*q2*sp)/(4*(sp + t1 + u1)) - 
         sp^2/(4*(sp + t1 + u1)) - (4*m2^3)/(t1*(sp + t1 + u1)) + 
         (2*m2^2*q2)/(t1*(sp + t1 + u1)) + (m2*q2^2)/(t1*(sp + t1 + u1)) - 
         q2^3/(2*t1*(sp + t1 + u1)) + (4*m2^2*sp)/(t1*(sp + t1 + u1)) - 
         (m2*q2*sp)/(2*t1*(sp + t1 + u1)) - (m2*sp^2)/(2*t1*(sp + t1 + u1)) - 
         (m2*t1)/(sp + t1 + u1) + (q2*t1)/(4*(sp + t1 + u1)) - 
         (sp*t1)/(sp + t1 + u1) - t1^2/(2*(sp + t1 + u1)) - 
         (4*m2^3)/(u1*(sp + t1 + u1)) + (m2*q2^2)/(u1*(sp + t1 + u1)) + 
         (m2^2*sp)/(u1*(sp + t1 + u1)) + (m2*q2*sp)/(4*u1*(sp + t1 + u1)) - 
         (q2^2*sp)/(4*u1*(sp + t1 + u1)) - (m2*sp^2)/(4*u1*(sp + t1 + u1)) + 
         (q2*sp^2)/(4*u1*(sp + t1 + u1)) - (m2^2*t1)/(u1*(sp + t1 + u1)) - 
         (3*m2*q2*t1)/(4*u1*(sp + t1 + u1)) - (q2^2*t1)/
          (4*u1*(sp + t1 + u1)) - (m2*sp*t1)/(2*u1*(sp + t1 + u1)) + 
         (3*q2*sp*t1)/(4*u1*(sp + t1 + u1)) - (sp^2*t1)/
          (4*u1*(sp + t1 + u1)) - (m2*t1^2)/(4*u1*(sp + t1 + u1)) + 
         (q2*t1^2)/(2*u1*(sp + t1 + u1)) - (sp*t1^2)/(2*u1*(sp + t1 + u1)) - 
         t1^3/(4*u1*(sp + t1 + u1)) + (m2*u1)/(4*(sp + t1 + u1)) - 
         (3*q2*u1)/(2*(sp + t1 + u1)) - (sp*u1)/(2*(sp + t1 + u1)) - 
         (2*m2^2*u1)/(t1*(sp + t1 + u1)) - (2*m2*q2*u1)/(t1*(sp + t1 + u1)) + 
         (3*q2^2*u1)/(2*t1*(sp + t1 + u1)) + (m2*sp*u1)/
          (2*t1*(sp + t1 + u1)) + (3*u1^2)/(4*(sp + t1 + u1)) + 
         (m2*u1^2)/(t1*(sp + t1 + u1)) - (3*q2*u1^2)/(2*t1*(sp + t1 + u1)) + 
         u1^3/(2*t1*(sp + t1 + u1)) - (3*m2*\[Epsilon])/8 - 
         (q2*\[Epsilon])/16 - (sp*\[Epsilon])/4 - (m2^2*\[Epsilon])/(2*t1) + 
         (3*m2*q2*\[Epsilon])/(4*t1) - (q2^2*\[Epsilon])/(4*t1) - 
         (m2*sp*\[Epsilon])/(4*t1) - (t1*\[Epsilon])/8 - 
         (m2*q2*\[Epsilon])/(2*u1) + (q2^2*\[Epsilon])/(4*u1) + 
         (3*m2*sp*\[Epsilon])/(4*u1) - (q2*sp*\[Epsilon])/(8*u1) + 
         (3*m2*t1*\[Epsilon])/(4*u1) - (q2*t1*\[Epsilon])/(8*u1) + 
         (sp*t1*\[Epsilon])/(4*u1) + (t1^2*\[Epsilon])/(4*u1) - 
         (5*u1*\[Epsilon])/16 - (3*m2*u1*\[Epsilon])/(4*t1) + 
         (q2*u1*\[Epsilon])/(2*t1) - (u1^2*\[Epsilon])/(4*t1) + 
         (m2^2*\[Epsilon])/(sp + t1 + u1) - (9*m2*q2*\[Epsilon])/
          (4*(sp + t1 + u1)) + (5*q2^2*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (m2*sp*\[Epsilon])/(4*(sp + t1 + u1)) - (3*q2*sp*\[Epsilon])/
          (8*(sp + t1 + u1)) + (sp^2*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (m2^2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) + (m2*q2^2*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (q2^3*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         (m2^2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (q2^2*sp*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (q2*sp^2*\[Epsilon])/(4*t1*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/
          (2*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (t1^2*\[Epsilon])/(8*(sp + t1 + u1)) - (m2^2*q2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (m2*q2^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) + 
         (m2*q2*sp*\[Epsilon])/(4*u1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (3*m2*sp*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (3*q2*sp*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (sp^2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (sp*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (t1^3*\[Epsilon])/(8*u1*(sp + t1 + u1)) + 
         (7*m2*u1*\[Epsilon])/(4*(sp + t1 + u1)) - (5*q2*u1*\[Epsilon])/
          (4*(sp + t1 + u1)) + (sp*u1*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (m2^2*u1*\[Epsilon])/(t1*(sp + t1 + u1)) - (2*m2*q2*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (3*q2^2*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (m2*sp*u1*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (q2*sp*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (sp^2*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (5*t1*u1*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (5*u1^2*\[Epsilon])/(8*(sp + t1 + u1)) + (m2*u1^2*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (3*q2*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (sp*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (u1^3*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon]^2)/32 - (3*sp*\[Epsilon]^2)/16 - 
         (m2*sp*\[Epsilon]^2)/(8*t1) - (3*t1*\[Epsilon]^2)/32 + 
         (m2*sp*\[Epsilon]^2)/(8*u1) + (q2*sp*\[Epsilon]^2)/(16*u1) + 
         (q2*t1*\[Epsilon]^2)/(8*u1) + (u1*\[Epsilon]^2)/32 + 
         (m2*sp*\[Epsilon]^2)/(8*(sp + t1 + u1)) - (3*q2*sp*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) + (3*sp^2*\[Epsilon]^2)/(16*(sp + t1 + u1)) + 
         (3*m2*sp^2*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) - 
         (3*q2*sp^2*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)) - 
         (q2*t1*\[Epsilon]^2)/(16*(sp + t1 + u1)) + (3*sp*t1*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) + (t1^2*\[Epsilon]^2)/(16*(sp + t1 + u1)) - 
         (m2*sp^2*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) - 
         (m2*sp*t1*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) + 
         (3*sp*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) + 
         (3*sp^2*u1*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)) + 
         (t1*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) + (sp*\[Epsilon]^3)/32 + 
         (q2*sp*\[Epsilon]^3)/(32*(sp + t1 + u1)) - (sp^2*\[Epsilon]^3)/
          (32*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1)) - (sp*t1*\[Epsilon]^3)/(32*(sp + t1 + u1)) - 
         (sp*u1*\[Epsilon]^3)/(32*(sp + t1 + u1)) - (sp^2*u1*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1)), 0, 0}, {0, (5*m2)/8 - (7*q2)/8 + sp/8 - 
         (8*m2^2)/t1 + q2^2/t1 - (m2*sp)/(4*t1) - (9*q2*sp)/(4*t1) + 
         sp^2/t1 - t1/4 - (5*m2^2)/(2*u1) - (m2*q2)/(2*u1) + 
         (9*q2^2)/(8*u1) - (5*m2*sp)/(8*u1) - (7*q2*sp)/(8*u1) + 
         sp^2/(2*u1) - (4*m2^3)/(t1*u1) + (2*m2^2*q2)/(t1*u1) + 
         (m2*q2^2)/(t1*u1) - q2^3/(2*t1*u1) - (6*m2^2*sp)/(t1*u1) - 
         (3*m2*q2*sp)/(2*t1*u1) + (3*q2^2*sp)/(2*t1*u1) - 
         (3*q2*sp^2)/(2*t1*u1) + sp^3/(2*t1*u1) - (9*m2*t1)/(8*u1) + 
         (q2*t1)/(2*u1) + (sp*t1)/(4*u1) + u1/4 - (m2*u1)/t1 - (q2*u1)/t1 + 
         (sp*u1)/t1 + u1^2/(2*t1) - (m2*\[Epsilon])/4 - (q2*\[Epsilon])/16 + 
         (3*sp*\[Epsilon])/16 - (m2^2*\[Epsilon])/(2*t1) - 
         (5*m2*q2*\[Epsilon])/(4*t1) + (q2^2*\[Epsilon])/(2*t1) + 
         (3*m2*sp*\[Epsilon])/(4*t1) - (3*q2*sp*\[Epsilon])/(4*t1) + 
         (sp^2*\[Epsilon])/(2*t1) - (t1*\[Epsilon])/8 - (m2*q2*\[Epsilon])/
          (8*u1) + (5*q2^2*\[Epsilon])/(16*u1) + (m2*sp*\[Epsilon])/(8*u1) - 
         (3*q2*sp*\[Epsilon])/(16*u1) + (sp^2*\[Epsilon])/(4*u1) - 
         (m2^2*q2*\[Epsilon])/(t1*u1) + (m2*q2^2*\[Epsilon])/(t1*u1) - 
         (q2^3*\[Epsilon])/(4*t1*u1) - (m2*q2*sp*\[Epsilon])/(t1*u1) + 
         (q2^2*sp*\[Epsilon])/(2*t1*u1) - (q2*sp^2*\[Epsilon])/(2*t1*u1) + 
         (sp^3*\[Epsilon])/(4*t1*u1) - (m2*t1*\[Epsilon])/(8*u1) + 
         (q2*t1*\[Epsilon])/(4*u1) + (sp*t1*\[Epsilon])/(4*u1) + 
         (u1*\[Epsilon])/8 + (3*m2*u1*\[Epsilon])/(4*t1) - 
         (3*q2*u1*\[Epsilon])/(4*t1) + (sp*u1*\[Epsilon])/(2*t1) + 
         (u1^2*\[Epsilon])/(2*t1) - (q2*\[Epsilon]^2)/32 + 
         (sp*\[Epsilon]^2)/16 + (m2*sp*\[Epsilon]^2)/(4*t1) - 
         (q2*sp*\[Epsilon]^2)/(16*t1) + (3*sp^2*\[Epsilon]^2)/(8*t1) + 
         (m2*sp*\[Epsilon]^2)/(8*u1) - (9*q2*sp*\[Epsilon]^2)/(32*u1) + 
         (3*sp^2*\[Epsilon]^2)/(16*u1) + (3*m2*sp^2*\[Epsilon]^2)/(8*t1*u1) - 
         (3*q2*sp^2*\[Epsilon]^2)/(16*t1*u1) + (3*sp^3*\[Epsilon]^2)/
          (16*t1*u1) - (3*q2*t1*\[Epsilon]^2)/(32*u1) + (sp*t1*\[Epsilon]^2)/
          (16*u1) + (u1*\[Epsilon]^2)/8 + (m2*u1*\[Epsilon]^2)/(4*t1) - 
         (q2*u1*\[Epsilon]^2)/(8*t1) + (sp*u1*\[Epsilon]^2)/(8*t1) + 
         (u1^2*\[Epsilon]^2)/(8*t1) - (sp*\[Epsilon]^3)/32 - 
         (sp^2*\[Epsilon]^3)/(16*t1) + (q2*sp*\[Epsilon]^3)/(32*u1) - 
         (sp^2*\[Epsilon]^3)/(32*u1) + (q2*sp^2*\[Epsilon]^3)/(32*t1*u1) - 
         (sp^3*\[Epsilon]^3)/(32*t1*u1), 5/4 - (7*m2)/(2*t1) + q2/(2*t1) + 
         (5*sp)/(4*t1) - m2^2/(2*u1^2) - (m2*q2)/(4*u1^2) + 
         (3*m2*sp)/(2*u1^2) + (3*q2*sp)/(4*u1^2) + (3*m2*t1)/(2*u1^2) + 
         (3*q2*t1)/(4*u1^2) + (3*m2)/(2*u1) - (19*q2)/(8*u1) - 
         (7*sp)/(8*u1) - (2*m2^2)/(t1*u1) - (m2*q2)/(2*t1*u1) + 
         (3*q2^2)/(4*t1*u1) + (m2*sp)/(4*t1*u1) - (3*q2*sp)/(2*t1*u1) + 
         sp^2/(2*t1*u1) + t1/(4*u1) - (3*u1)/(4*t1) - 
         (3*m2)/(4*(sp + t1 + u1)) - q2/(sp + t1 + u1) - 
         (5*sp)/(4*(sp + t1 + u1)) - (8*m2^2)/(t1*(sp + t1 + u1)) - 
         (m2*q2)/(2*t1*(sp + t1 + u1)) + (5*q2^2)/(4*t1*(sp + t1 + u1)) - 
         (m2*sp)/(4*t1*(sp + t1 + u1)) - (q2*sp)/(4*t1*(sp + t1 + u1)) - 
         sp^2/(4*t1*(sp + t1 + u1)) - t1/(sp + t1 + u1) - 
         (4*m2^3)/(u1^2*(sp + t1 + u1)) - (2*m2^2*q2)/(u1^2*(sp + t1 + u1)) - 
         (m2^2*sp)/(u1^2*(sp + t1 + u1)) - (m2*q2*sp)/
          (2*u1^2*(sp + t1 + u1)) - (m2*sp^2)/(u1^2*(sp + t1 + u1)) - 
         (q2*sp^2)/(2*u1^2*(sp + t1 + u1)) - (m2^2*t1)/
          (u1^2*(sp + t1 + u1)) - (m2*q2*t1)/(2*u1^2*(sp + t1 + u1)) - 
         (2*m2*sp*t1)/(u1^2*(sp + t1 + u1)) - (q2*sp*t1)/
          (u1^2*(sp + t1 + u1)) - (m2*t1^2)/(u1^2*(sp + t1 + u1)) - 
         (q2*t1^2)/(2*u1^2*(sp + t1 + u1)) - (7*m2^2)/(u1*(sp + t1 + u1)) - 
         (2*m2*q2)/(u1*(sp + t1 + u1)) + q2^2/(4*u1*(sp + t1 + u1)) - 
         (3*m2*sp)/(u1*(sp + t1 + u1)) + (3*q2*sp)/(4*u1*(sp + t1 + u1)) - 
         (4*m2^3)/(t1*u1*(sp + t1 + u1)) + (m2*q2^2)/(t1*u1*(sp + t1 + u1)) - 
         (2*m2^2*sp)/(t1*u1*(sp + t1 + u1)) + (m2*q2*sp)/
          (2*t1*u1*(sp + t1 + u1)) + (q2^2*sp)/(4*t1*u1*(sp + t1 + u1)) - 
         (m2*sp^2)/(4*t1*u1*(sp + t1 + u1)) + (q2*sp^2)/
          (4*t1*u1*(sp + t1 + u1)) - (9*m2*t1)/(4*u1*(sp + t1 + u1)) + 
         (q2*t1)/(2*u1*(sp + t1 + u1)) - (3*sp*t1)/(4*u1*(sp + t1 + u1)) - 
         (3*t1^2)/(4*u1*(sp + t1 + u1)) + (3*u1)/(4*(sp + t1 + u1)) - 
         (m2*u1)/(2*t1*(sp + t1 + u1)) - (5*q2*u1)/(2*t1*(sp + t1 + u1)) + 
         (5*u1^2)/(4*t1*(sp + t1 + u1)) + \[Epsilon]/8 - 
         (m2*\[Epsilon])/(4*t1) + (sp*\[Epsilon])/(4*t1) + 
         (m2^2*\[Epsilon])/(2*u1^2) + (m2*q2*\[Epsilon])/(8*u1^2) + 
         (m2*sp*\[Epsilon])/(2*u1^2) + (5*q2*sp*\[Epsilon])/(8*u1^2) + 
         (m2*t1*\[Epsilon])/(2*u1^2) + (5*q2*t1*\[Epsilon])/(8*u1^2) + 
         (m2*\[Epsilon])/u1 - (9*q2*\[Epsilon])/(16*u1) - 
         (3*sp*\[Epsilon])/(8*u1) + (m2^2*\[Epsilon])/(2*t1*u1) - 
         (3*m2*q2*\[Epsilon])/(4*t1*u1) + (q2^2*\[Epsilon])/(4*t1*u1) + 
         (m2*sp*\[Epsilon])/(4*t1*u1) - (q2*sp*\[Epsilon])/(4*t1*u1) + 
         (sp^2*\[Epsilon])/(4*t1*u1) + (t1*\[Epsilon])/(4*u1) + 
         (u1*\[Epsilon])/(4*t1) + (m2*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (5*q2*\[Epsilon])/(4*(sp + t1 + u1)) + (sp*\[Epsilon])/
          (8*(sp + t1 + u1)) - (m2^2*\[Epsilon])/(2*t1*(sp + t1 + u1)) - 
         (7*m2*q2*\[Epsilon])/(4*t1*(sp + t1 + u1)) + (3*q2^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (m2*sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) - 
         (3*q2*sp*\[Epsilon])/(4*t1*(sp + t1 + u1)) + (sp^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (t1*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (m2^2*q2*\[Epsilon])/(u1^2*(sp + t1 + u1)) - (m2^2*sp*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (3*q2*sp^2*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) - (m2^2*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - (m2*sp*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - (3*q2*sp*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (m2*t1^2*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (3*q2*t1^2*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) - (m2^2*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (7*m2*q2*\[Epsilon])/(4*u1*(sp + t1 + u1)) + (q2^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (7*m2*sp*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (m2^2*q2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (m2*q2^2*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (m2^2*sp*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + (q2^2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (5*sp*t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) - (5*t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (u1*\[Epsilon])/(sp + t1 + u1) + 
         (5*m2*u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (3*q2*u1*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + (sp*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (3*u1^2*\[Epsilon])/(4*t1*(sp + t1 + u1)) + (13*\[Epsilon]^2)/32 + 
         (3*m2*\[Epsilon]^2)/(8*t1) - (q2*\[Epsilon]^2)/(8*t1) + 
         (sp*\[Epsilon]^2)/(16*t1) + (m2*q2*\[Epsilon]^2)/(8*u1^2) - 
         (m2*sp*\[Epsilon]^2)/(8*u1^2) + (q2*sp*\[Epsilon]^2)/(16*u1^2) - 
         (m2*t1*\[Epsilon]^2)/(8*u1^2) + (q2*t1*\[Epsilon]^2)/(16*u1^2) + 
         (m2*\[Epsilon]^2)/(8*u1) + (q2*\[Epsilon]^2)/(16*u1) + 
         (7*sp*\[Epsilon]^2)/(32*u1) + (m2*q2*\[Epsilon]^2)/(8*t1*u1) - 
         (q2^2*\[Epsilon]^2)/(16*t1*u1) + (m2*sp*\[Epsilon]^2)/(8*t1*u1) + 
         (3*sp^2*\[Epsilon]^2)/(16*t1*u1) + (5*t1*\[Epsilon]^2)/(32*u1) + 
         (5*u1*\[Epsilon]^2)/(16*t1) - (q2*\[Epsilon]^2)/(8*(sp + t1 + u1)) + 
         (5*sp*\[Epsilon]^2)/(16*(sp + t1 + u1)) - (m2*q2*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) + (q2^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) + (5*sp^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) + (m2*sp*t1*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)) + (m2*t1^2*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) - (m2*q2*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) + (q2^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (m2*sp*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (5*q2*sp*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon]^2)/
          (8*t1*u1*(sp + t1 + u1)) + (q2^2*sp*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon]^2)/
          (4*t1*u1*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon]^2)/
          (8*t1*u1*(sp + t1 + u1)) - (3*q2*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (sp*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) + 
         (m2*u1*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) - (q2*u1*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) + (u1^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^3)/(32*u1^2) - 
         (q2*t1*\[Epsilon]^3)/(32*u1^2) - (sp*\[Epsilon]^3)/(32*u1) - 
         (sp^2*\[Epsilon]^3)/(32*t1*u1) - (t1*\[Epsilon]^3)/(32*u1) - 
         (sp*\[Epsilon]^3)/(32*(sp + t1 + u1)) - (sp^2*\[Epsilon]^3)/
          (16*t1*(sp + t1 + u1)) + (t1*\[Epsilon]^3)/(32*(sp + t1 + u1)) + 
         (q2*sp^2*\[Epsilon]^3)/(32*u1^2*(sp + t1 + u1)) + 
         (q2*sp*t1*\[Epsilon]^3)/(16*u1^2*(sp + t1 + u1)) + 
         (q2*t1^2*\[Epsilon]^3)/(32*u1^2*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon]^3)/(16*u1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon]^3)/
          (32*t1*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) + (sp*t1*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) + (t1^2*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)), 0, 0}, {0, 0, -3/(4*t1) + 13/(8*u1) - 
         q2/(4*t1*u1) + sp/(2*t1*u1) + 1/(2*(sp + t1 + u1)) - 
         m2/(t1*(sp + t1 + u1)) - (5*q2)/(4*t1*(sp + t1 + u1)) + 
         sp/(4*t1*(sp + t1 + u1)) - q2/(2*u1*(sp + t1 + u1)) - 
         sp/(u1*(sp + t1 + u1)) - (2*m2^2)/(t1*u1*(sp + t1 + u1)) - 
         (m2*q2)/(t1*u1*(sp + t1 + u1)) - (m2*sp)/(2*t1*u1*(sp + t1 + u1)) - 
         (q2*sp)/(2*t1*u1*(sp + t1 + u1)) - sp^2/(4*t1*u1*(sp + t1 + u1)) - 
         (3*t1)/(4*u1*(sp + t1 + u1)) + (5*u1)/(4*t1*(sp + t1 + u1)) + 
         (3*\[Epsilon])/(4*u1) + (m2*\[Epsilon])/(4*t1*u1) + 
         (3*\[Epsilon])/(4*(sp + t1 + u1)) + (3*m2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (q2*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (3*m2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (3*sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) + (m2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (3*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (u1*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (3*\[Epsilon]^2)/(16*t1) + (3*\[Epsilon]^2)/(16*u1) + 
         (q2*\[Epsilon]^2)/(16*t1*u1) + \[Epsilon]^2/(8*(sp + t1 + u1)) + 
         (m2*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) - (3*q2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) + (sp*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)) + 
         (m2*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (sp*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) + 
         (m2*sp*\[Epsilon]^2)/(8*t1*u1*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon]^2)/(8*t1*u1*(sp + t1 + u1)) + 
         (sp^2*\[Epsilon]^2)/(8*t1*u1*(sp + t1 + u1)) + 
         (t1*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) + (3*u1*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (sp*\[Epsilon]^3)/(32*u1*(sp + t1 + u1)) - 
         (sp^2*\[Epsilon]^3)/(32*t1*u1*(sp + t1 + u1)), 0, 0}, 
       {0, 0, 1/(2*t1*(sp + t1 + u1)) + 1/(4*u1*(sp + t1 + u1)) + 
         sp/(4*t1*u1*(sp + t1 + u1)) + \[Epsilon]/(2*t1*(sp + t1 + u1)) + 
         \[Epsilon]/(4*u1*(sp + t1 + u1)) + (sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + \[Epsilon]^2/(8*t1*(sp + t1 + u1)) + 
         \[Epsilon]^2/(16*u1*(sp + t1 + u1)) + (sp*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1)), 0, 0}}, {{0, 0, 0, 0, 0}, 
       {(-4*m2^3)/t1 - (2*m2^2*q2)/t1 + m2*t1 + (q2*t1)/2 - 
         (m2^2*q2*\[Epsilon])/t1 + (m2*t1*\[Epsilon])/2 + 
         (q2*t1*\[Epsilon])/2 + (q2*t1*\[Epsilon]^2)/8, 
        (-3*m2)/8 + q2/2 + sp/2 + m2^2/t1 - (5*m2*q2)/(4*t1) + q2^2/(4*t1) + 
         m2^2/u1 + (3*m2*q2)/(2*u1) - (3*q2^2)/(4*u1) + (5*m2*sp)/(4*u1) - 
         (q2*sp)/(2*u1) - (m2*t1)/(2*u1) + (7*q2*t1)/(8*u1) + 
         (5*sp*t1)/(8*u1) + u1/4 + (5*m2*u1)/(4*t1) - (q2*u1)/(4*t1) - 
         m2^2/(sp + t1 + u1) - (5*m2*q2)/(4*(sp + t1 + u1)) + 
         (3*q2^2)/(4*(sp + t1 + u1)) - (m2*sp)/(sp + t1 + u1) + 
         (3*q2*sp)/(4*(sp + t1 + u1)) - sp^2/(4*(sp + t1 + u1)) - 
         (4*m2^3)/(t1*(sp + t1 + u1)) + (m2*q2^2)/(t1*(sp + t1 + u1)) + 
         (m2^2*sp)/(t1*(sp + t1 + u1)) + (m2*q2*sp)/(4*t1*(sp + t1 + u1)) - 
         (q2^2*sp)/(4*t1*(sp + t1 + u1)) - (m2*sp^2)/(4*t1*(sp + t1 + u1)) + 
         (q2*sp^2)/(4*t1*(sp + t1 + u1)) + (m2*t1)/(4*(sp + t1 + u1)) - 
         (3*q2*t1)/(2*(sp + t1 + u1)) - (sp*t1)/(2*(sp + t1 + u1)) + 
         (3*t1^2)/(4*(sp + t1 + u1)) - (4*m2^3)/(u1*(sp + t1 + u1)) + 
         (2*m2^2*q2)/(u1*(sp + t1 + u1)) + (m2*q2^2)/(u1*(sp + t1 + u1)) - 
         q2^3/(2*u1*(sp + t1 + u1)) + (4*m2^2*sp)/(u1*(sp + t1 + u1)) - 
         (m2*q2*sp)/(2*u1*(sp + t1 + u1)) - (m2*sp^2)/(2*u1*(sp + t1 + u1)) - 
         (2*m2^2*t1)/(u1*(sp + t1 + u1)) - (2*m2*q2*t1)/(u1*(sp + t1 + u1)) + 
         (3*q2^2*t1)/(2*u1*(sp + t1 + u1)) + (m2*sp*t1)/
          (2*u1*(sp + t1 + u1)) + (m2*t1^2)/(u1*(sp + t1 + u1)) - 
         (3*q2*t1^2)/(2*u1*(sp + t1 + u1)) + t1^3/(2*u1*(sp + t1 + u1)) - 
         (m2*u1)/(sp + t1 + u1) + (q2*u1)/(4*(sp + t1 + u1)) - 
         (sp*u1)/(sp + t1 + u1) - (m2^2*u1)/(t1*(sp + t1 + u1)) - 
         (3*m2*q2*u1)/(4*t1*(sp + t1 + u1)) - (q2^2*u1)/
          (4*t1*(sp + t1 + u1)) - (m2*sp*u1)/(2*t1*(sp + t1 + u1)) + 
         (3*q2*sp*u1)/(4*t1*(sp + t1 + u1)) - (sp^2*u1)/
          (4*t1*(sp + t1 + u1)) - u1^2/(2*(sp + t1 + u1)) - 
         (m2*u1^2)/(4*t1*(sp + t1 + u1)) + (q2*u1^2)/(2*t1*(sp + t1 + u1)) - 
         (sp*u1^2)/(2*t1*(sp + t1 + u1)) - u1^3/(4*t1*(sp + t1 + u1)) - 
         (7*m2*\[Epsilon])/8 + (5*q2*\[Epsilon])/16 + (m2^2*\[Epsilon])/
          (2*t1) - (m2*q2*\[Epsilon])/(2*t1) + (q2^2*\[Epsilon])/(8*t1) + 
         (m2*sp*\[Epsilon])/(4*t1) - (q2*sp*\[Epsilon])/(8*t1) + 
         (3*t1*\[Epsilon])/16 - (m2^2*\[Epsilon])/u1 + (7*m2*q2*\[Epsilon])/
          (4*u1) - (3*q2^2*\[Epsilon])/(8*u1) - (m2*sp*\[Epsilon])/(2*u1) - 
         (q2*sp*\[Epsilon])/(8*u1) - (m2*t1*\[Epsilon])/(2*u1) + 
         (3*q2*t1*\[Epsilon])/(16*u1) + (sp*t1*\[Epsilon])/(4*u1) + 
         (t1^2*\[Epsilon])/(4*u1) - (3*u1*\[Epsilon])/16 + 
         (m2*u1*\[Epsilon])/(2*t1) + (sp*u1*\[Epsilon])/(8*t1) - 
         (u1^2*\[Epsilon])/(8*t1) + (m2^2*\[Epsilon])/(sp + t1 + u1) - 
         (7*m2*q2*\[Epsilon])/(4*(sp + t1 + u1)) + (3*q2^2*\[Epsilon])/
          (8*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon])/(8*(sp + t1 + u1)) + (sp^2*\[Epsilon])/
          (8*(sp + t1 + u1)) - (m2^2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (m2*q2^2*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (7*m2*t1*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (3*q2*t1*\[Epsilon])/(4*(sp + t1 + u1)) + (sp*t1*\[Epsilon])/
          (2*(sp + t1 + u1)) + (5*t1^2*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (m2^2*q2*\[Epsilon])/(u1*(sp + t1 + u1)) + (m2*q2^2*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (q2^3*\[Epsilon])/(4*u1*(sp + t1 + u1)) + 
         (m2^2*sp*\[Epsilon])/(u1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (m2^2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (3*m2*q2*t1*\[Epsilon])/(2*u1*(sp + t1 + u1)) + 
         (q2^2*t1*\[Epsilon])/(2*u1*(sp + t1 + u1)) + (m2*sp*t1*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) + 
         (sp^2*t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) + (m2*t1^2*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) + 
         (sp*t1^2*\[Epsilon])/(4*u1*(sp + t1 + u1)) + (t1^3*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (m2*u1*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (q2*u1*\[Epsilon])/(4*(sp + t1 + u1)) - (m2*q2*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (q2^2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (3*m2*sp*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (3*q2*sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (sp^2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (5*t1*u1*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (u1^2*\[Epsilon])/(8*(sp + t1 + u1)) - (m2*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (sp*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (u1^3*\[Epsilon])/(8*t1*(sp + t1 + u1)) - 
         (7*q2*\[Epsilon]^2)/32 - (3*sp*\[Epsilon]^2)/16 + 
         (3*m2*sp*\[Epsilon]^2)/(8*t1) - (q2*sp*\[Epsilon]^2)/(8*t1) - 
         (t1*\[Epsilon]^2)/16 - (m2*q2*\[Epsilon]^2)/(4*u1) + 
         (q2^2*\[Epsilon]^2)/(8*u1) - (m2*sp*\[Epsilon]^2)/(8*u1) + 
         (q2*sp*\[Epsilon]^2)/(8*u1) - (q2*t1*\[Epsilon]^2)/(16*u1) + 
         (sp*t1*\[Epsilon]^2)/(32*u1) + (t1^2*\[Epsilon]^2)/(32*u1) - 
         (5*u1*\[Epsilon]^2)/32 + (q2*u1*\[Epsilon]^2)/(16*t1) + 
         (sp*u1*\[Epsilon]^2)/(8*t1) - (u1^2*\[Epsilon]^2)/(16*t1) + 
         (m2*q2*\[Epsilon]^2)/(4*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/
          (8*(sp + t1 + u1)) + (m2*sp*\[Epsilon]^2)/(8*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon]^2)/(16*(sp + t1 + u1)) + (3*sp^2*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/(4*(sp + t1 + u1)) + 
         (3*sp*t1*\[Epsilon]^2)/(16*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (3*m2*sp^2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (3*q2*sp^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (q2*sp*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (3*sp^2*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) + 
         (3*sp*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) - (m2*sp*u1*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) + (t1*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) + 
         (u1^2*\[Epsilon]^2)/(16*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^3)/
          (32*t1) - (q2*sp*\[Epsilon]^3)/(32*u1) - (sp*u1*\[Epsilon]^3)/
          (32*t1) + (q2*sp*\[Epsilon]^3)/(32*(sp + t1 + u1)) - 
         (sp^2*\[Epsilon]^3)/(32*(sp + t1 + u1)) - (sp*t1*\[Epsilon]^3)/
          (32*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) - (sp^2*t1*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) - (sp*u1*\[Epsilon]^3)/(32*(sp + t1 + u1)), 
        5/4 + (5*m2)/(2*t1) - (3*q2)/(4*t1) + (5*m2)/(2*u1) - (3*q2)/(4*u1) + 
         t1/u1 + (3*u1)/(4*t1) - (5*m2)/(sp + t1 + u1) + 
         (5*q2)/(2*(sp + t1 + u1)) - (3*sp)/(4*(sp + t1 + u1)) + 
         (2*m2^2)/(t1*(sp + t1 + u1)) + (3*m2*q2)/(2*t1*(sp + t1 + u1)) - 
         q2^2/(2*t1*(sp + t1 + u1)) - (m2*sp)/(t1*(sp + t1 + u1)) + 
         (q2*sp)/(4*t1*(sp + t1 + u1)) - (9*t1)/(4*(sp + t1 + u1)) + 
         (2*m2^2)/(u1*(sp + t1 + u1)) + (3*m2*q2)/(2*u1*(sp + t1 + u1)) - 
         q2^2/(2*u1*(sp + t1 + u1)) - (m2*sp)/(u1*(sp + t1 + u1)) + 
         (q2*sp)/(2*u1*(sp + t1 + u1)) - (3*m2*t1)/(2*u1*(sp + t1 + u1)) + 
         (5*q2*t1)/(4*u1*(sp + t1 + u1)) - (sp*t1)/(2*u1*(sp + t1 + u1)) - 
         (3*t1^2)/(4*u1*(sp + t1 + u1)) - (9*u1)/(4*(sp + t1 + u1)) - 
         (3*m2*u1)/(2*t1*(sp + t1 + u1)) + (5*q2*u1)/(4*t1*(sp + t1 + u1)) - 
         (sp*u1)/(4*t1*(sp + t1 + u1)) - (3*u1^2)/(4*t1*(sp + t1 + u1)) - 
         \[Epsilon]/4 + (m2*\[Epsilon])/(4*t1) + (m2*\[Epsilon])/(4*u1) + 
         (t1*\[Epsilon])/(4*u1) - (3*m2*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (3*q2*\[Epsilon])/(4*(sp + t1 + u1)) + (sp*\[Epsilon])/
          (2*(sp + t1 + u1)) - (3*m2*sp*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (3*q2*sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) + (7*t1*\[Epsilon])/
          (8*(sp + t1 + u1)) - (3*m2*sp*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) + 
         (sp*t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) + (t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (7*u1*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (m2*u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (3*sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (u1^2*\[Epsilon])/(8*t1*(sp + t1 + u1)) - 
         (13*\[Epsilon]^2)/16 - (m2*\[Epsilon]^2)/(4*t1) + 
         (3*q2*\[Epsilon]^2)/(8*t1) - (m2*\[Epsilon]^2)/(4*u1) + 
         (3*q2*\[Epsilon]^2)/(8*u1) - (5*t1*\[Epsilon]^2)/(16*u1) - 
         (3*u1*\[Epsilon]^2)/(8*t1) + (m2*\[Epsilon]^2)/(2*(sp + t1 + u1)) - 
         (5*q2*\[Epsilon]^2)/(8*(sp + t1 + u1)) + (11*sp*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) + (m2*sp*\[Epsilon]^2)/(2*t1*(sp + t1 + u1)) - 
         (3*q2*sp*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) + (13*t1*\[Epsilon]^2)/
          (16*(sp + t1 + u1)) + (m2*sp*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) - 
         (5*q2*sp*\[Epsilon]^2)/(16*u1*(sp + t1 + u1)) + 
         (m2*t1*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) - (3*q2*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (5*sp*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (3*t1^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (13*u1*\[Epsilon]^2)/(16*(sp + t1 + u1)) + 
         (m2*u1*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) - (3*q2*u1*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) + (3*sp*u1*\[Epsilon]^2)/
          (8*t1*(sp + t1 + u1)) + (3*u1^2*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) + \[Epsilon]^3/16 - (q2*\[Epsilon]^3)/
          (32*t1) - (q2*\[Epsilon]^3)/(32*u1) + (t1*\[Epsilon]^3)/(32*u1) + 
         (u1*\[Epsilon]^3)/(32*t1) + (q2*\[Epsilon]^3)/(16*(sp + t1 + u1)) - 
         (sp*\[Epsilon]^3)/(8*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^3)/
          (16*t1*(sp + t1 + u1)) - (3*t1*\[Epsilon]^3)/(32*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon]^3)/(16*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) - (sp*t1*\[Epsilon]^3)/
          (16*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) - (3*u1*\[Epsilon]^3)/(32*(sp + t1 + u1)) + 
         (q2*u1*\[Epsilon]^3)/(32*t1*(sp + t1 + u1)) - (sp*u1*\[Epsilon]^3)/
          (16*t1*(sp + t1 + u1)) - (u1^2*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1)), 0, 0}, 
       {-5*m2 - (5*q2)/2 - 2*m2*\[Epsilon] - (9*q2*\[Epsilon])/4 + 
         (m2*\[Epsilon]^2)/4 - (3*q2*\[Epsilon]^2)/8 + (q2*\[Epsilon]^3)/16, 
        -15/8 - m2/t1 - (3*q2)/(4*t1) + (3*sp)/(4*t1) - (11*m2)/(4*u1) + 
         (35*q2)/(8*u1) - (15*sp)/(8*u1) - (2*m2^2)/(t1*u1) - 
         (3*m2*q2)/(2*t1*u1) + q2^2/(2*t1*u1) - (m2*sp)/(2*t1*u1) - 
         (q2*sp)/(t1*u1) + sp^2/(2*t1*u1) - (7*t1)/(4*u1) + u1/(4*t1) + 
         (7*m2)/(4*(sp + t1 + u1)) - (7*q2)/(8*(sp + t1 + u1)) + 
         (q2*sp)/(4*t1*(sp + t1 + u1)) - sp^2/(4*t1*(sp + t1 + u1)) + 
         (11*t1)/(8*(sp + t1 + u1)) - (2*m2^2)/(u1*(sp + t1 + u1)) - 
         (3*m2*q2)/(2*u1*(sp + t1 + u1)) + q2^2/(2*u1*(sp + t1 + u1)) + 
         (5*m2*sp)/(4*u1*(sp + t1 + u1)) - (7*q2*sp)/(8*u1*(sp + t1 + u1)) + 
         (3*sp^2)/(8*u1*(sp + t1 + u1)) + (3*m2*t1)/(4*u1*(sp + t1 + u1)) - 
         (13*q2*t1)/(8*u1*(sp + t1 + u1)) + (11*sp*t1)/
          (8*u1*(sp + t1 + u1)) + (5*t1^2)/(4*u1*(sp + t1 + u1)) - 
         (3*u1)/(8*(sp + t1 + u1)) + (q2*u1)/(4*t1*(sp + t1 + u1)) - 
         (sp*u1)/(2*t1*(sp + t1 + u1)) - u1^2/(4*t1*(sp + t1 + u1)) - 
         (11*\[Epsilon])/16 + (3*m2*\[Epsilon])/(8*t1) - 
         (5*q2*\[Epsilon])/(16*t1) + (9*sp*\[Epsilon])/(16*t1) - 
         (3*m2*\[Epsilon])/u1 + (19*q2*\[Epsilon])/(16*u1) - 
         (13*sp*\[Epsilon])/(16*u1) + (m2*sp*\[Epsilon])/(2*t1*u1) - 
         (q2*sp*\[Epsilon])/(4*t1*u1) + (sp^2*\[Epsilon])/(4*t1*u1) - 
         (5*t1*\[Epsilon])/(8*u1) + (5*u1*\[Epsilon])/(16*t1) + 
         (5*m2*\[Epsilon])/(8*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (8*(sp + t1 + u1)) - (5*sp*\[Epsilon])/(16*(sp + t1 + u1)) - 
         (3*m2*sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) + (7*q2*sp*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) - (7*sp^2*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) + (13*t1*\[Epsilon])/(16*(sp + t1 + u1)) + 
         (m2*sp*\[Epsilon])/(2*u1*(sp + t1 + u1)) - (3*q2*sp*\[Epsilon])/
          (16*u1*(sp + t1 + u1)) + (5*sp^2*\[Epsilon])/
          (16*u1*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (3*q2*t1*\[Epsilon])/(16*u1*(sp + t1 + u1)) + (15*sp*t1*\[Epsilon])/
          (16*u1*(sp + t1 + u1)) + (5*t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (5*u1*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (3*m2*u1*\[Epsilon])/(8*t1*(sp + t1 + u1)) + (7*q2*u1*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) - (7*sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (7*u1^2*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) + (5*\[Epsilon]^2)/16 + 
         (m2*\[Epsilon]^2)/(8*t1) - (9*q2*\[Epsilon]^2)/(32*t1) + 
         (15*sp*\[Epsilon]^2)/(32*t1) + (m2*\[Epsilon]^2)/(2*u1) - 
         (13*q2*\[Epsilon]^2)/(8*u1) + (5*sp*\[Epsilon]^2)/(16*u1) + 
         (m2*sp*\[Epsilon]^2)/(8*t1*u1) - (3*q2*sp*\[Epsilon]^2)/(16*t1*u1) + 
         (3*sp^2*\[Epsilon]^2)/(16*t1*u1) + (t1*\[Epsilon]^2)/(4*u1) + 
         (9*u1*\[Epsilon]^2)/(32*t1) - (m2*\[Epsilon]^2)/(8*(sp + t1 + u1)) + 
         (13*q2*\[Epsilon]^2)/(32*(sp + t1 + u1)) + (sp*\[Epsilon]^2)/
          (32*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) + 
         (3*q2*sp*\[Epsilon]^2)/(32*t1*(sp + t1 + u1)) - 
         (3*sp^2*\[Epsilon]^2)/(32*t1*(sp + t1 + u1)) - 
         (t1*\[Epsilon]^2)/(16*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) + (sp^2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (sp*t1*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (u1*\[Epsilon]^2)/(32*(sp + t1 + u1)) - 
         (m2*u1*\[Epsilon]^2)/(8*t1*(sp + t1 + u1)) + (3*q2*u1*\[Epsilon]^2)/
          (32*t1*(sp + t1 + u1)) - (3*sp*u1*\[Epsilon]^2)/
          (16*t1*(sp + t1 + u1)) - (3*u1^2*\[Epsilon]^2)/
          (32*t1*(sp + t1 + u1)) + (q2*\[Epsilon]^3)/(32*t1) - 
         (sp*\[Epsilon]^3)/(16*t1) + (q2*\[Epsilon]^3)/(8*u1) + 
         (q2*sp*\[Epsilon]^3)/(32*t1*u1) - (sp^2*\[Epsilon]^3)/(32*t1*u1) - 
         (u1*\[Epsilon]^3)/(32*t1) - (q2*\[Epsilon]^3)/(32*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon]^3)/(32*t1*(sp + t1 + u1)) + (sp^2*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) - (sp^2*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) + (u1*\[Epsilon]^3)/(32*(sp + t1 + u1)) - 
         (q2*u1*\[Epsilon]^3)/(32*t1*(sp + t1 + u1)) + (sp*u1*\[Epsilon]^3)/
          (16*t1*(sp + t1 + u1)) + (u1^2*\[Epsilon]^3)/
          (32*t1*(sp + t1 + u1)), t1^(-1) - (4*m2)/u1^2 - (2*q2)/u1^2 - 
         31/(8*u1) + m2/(t1*u1) - q2/(4*t1*u1) + sp/(4*t1*u1) - 
         (sp + t1 + u1)^(-1) + (3*q2)/(2*t1*(sp + t1 + u1)) - 
         (m2*sp)/(u1^2*(sp + t1 + u1)) - (q2*sp)/(2*u1^2*(sp + t1 + u1)) - 
         (m2*t1)/(u1^2*(sp + t1 + u1)) - (q2*t1)/(2*u1^2*(sp + t1 + u1)) - 
         (2*m2)/(u1*(sp + t1 + u1)) + sp/(2*u1*(sp + t1 + u1)) + 
         (2*m2^2)/(t1*u1*(sp + t1 + u1)) + (m2*q2)/(t1*u1*(sp + t1 + u1)) + 
         (q2*sp)/(2*t1*u1*(sp + t1 + u1)) + sp^2/(4*t1*u1*(sp + t1 + u1)) + 
         t1/(4*u1*(sp + t1 + u1)) - (5*u1)/(4*t1*(sp + t1 + u1)) + 
         (3*\[Epsilon])/(16*t1) - (2*m2*\[Epsilon])/u1^2 - 
         (2*q2*\[Epsilon])/u1^2 - (3*\[Epsilon])/(2*u1) + 
         (3*m2*\[Epsilon])/(8*t1*u1) - (3*q2*\[Epsilon])/(16*t1*u1) + 
         (7*sp*\[Epsilon])/(16*t1*u1) - (13*\[Epsilon])/(16*(sp + t1 + u1)) - 
         (11*m2*\[Epsilon])/(8*t1*(sp + t1 + u1)) + (15*q2*\[Epsilon])/
          (16*t1*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (11*m2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (q2*\[Epsilon])/(16*u1*(sp + t1 + u1)) + 
         (5*sp*\[Epsilon])/(16*u1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (3*m2*sp*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) + (5*q2*sp*\[Epsilon])/
          (16*t1*u1*(sp + t1 + u1)) + (3*sp^2*\[Epsilon])/
          (16*t1*u1*(sp + t1 + u1)) + (t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (15*u1*\[Epsilon])/(16*t1*(sp + t1 + u1)) - (9*\[Epsilon]^2)/
          (32*t1) - (q2*\[Epsilon]^2)/(2*u1^2) - \[Epsilon]^2/(8*u1) + 
         (q2*\[Epsilon]^2)/(32*t1*u1) - (sp*\[Epsilon]^2)/(32*t1*u1) + 
         (9*\[Epsilon]^2)/(32*(sp + t1 + u1)) - (m2*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/(32*t1*(sp + t1 + u1)) + 
         (sp*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) + (m2*sp*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) + (m2*t1*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (8*u1^2*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (32*u1*(sp + t1 + u1)) - (sp*\[Epsilon]^2)/(32*u1*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon]^2)/(32*t1*u1*(sp + t1 + u1)) - 
         (sp^2*\[Epsilon]^2)/(32*t1*u1*(sp + t1 + u1)) + 
         (t1*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) - (u1*\[Epsilon]^2)/
          (32*t1*(sp + t1 + u1)) - (sp*\[Epsilon]^3)/(32*t1*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon]^3)/(16*u1^2*(sp + t1 + u1)) + 
         (q2*t1*\[Epsilon]^3)/(16*u1^2*(sp + t1 + u1)) + 
         (q2*\[Epsilon]^3)/(16*u1*(sp + t1 + u1)) - (sp*\[Epsilon]^3)/
          (32*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^3)/
          (32*t1*u1*(sp + t1 + u1)), 0, 0}, {0, 0, -(1/(t1*(sp + t1 + u1))) - 
         1/(2*u1*(sp + t1 + u1)) - sp/(2*t1*u1*(sp + t1 + u1)) - 
         \[Epsilon]/(t1*(sp + t1 + u1)) - \[Epsilon]/(2*u1*(sp + t1 + u1)) - 
         (sp*\[Epsilon])/(2*t1*u1*(sp + t1 + u1)) - \[Epsilon]^2/
          (4*t1*(sp + t1 + u1)) - \[Epsilon]^2/(8*u1*(sp + t1 + u1)) - 
         (sp*\[Epsilon]^2)/(8*t1*u1*(sp + t1 + u1)), 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, 0, -q2/(4*t1*(sp + t1 + u1)) + 
         q2/(4*u1*(sp + t1 + u1)) - t1/(4*u1*(sp + t1 + u1)) + 
         u1/(4*t1*(sp + t1 + u1)) - (q2*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(4*u1*(sp + t1 + u1)) - (t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (t1*\[Epsilon]^2)/(16*u1*(sp + t1 + u1)) + 
         (u1*\[Epsilon]^2)/(16*t1*(sp + t1 + u1)), 0, 0}, 
       {0, 1/(4*t1) - 7/(2*u1) - q2/(4*t1*u1) + sp/(4*t1*u1) + 
         1/(4*(sp + t1 + u1)) - q2/(4*u1*(sp + t1 + u1)) + 
         sp/(4*u1*(sp + t1 + u1)) + t1/(2*u1*(sp + t1 + u1)) + 
         \[Epsilon]/(4*t1) - (5*\[Epsilon])/(4*u1) - (q2*\[Epsilon])/
          (4*t1*u1) + (sp*\[Epsilon])/(4*t1*u1) - (q2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) + 
         \[Epsilon]^2/(16*t1) + \[Epsilon]^2/(4*u1) - (q2*\[Epsilon]^2)/
          (16*t1*u1) + (sp*\[Epsilon]^2)/(16*t1*u1) - 
         \[Epsilon]^2/(16*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/
          (16*u1*(sp + t1 + u1)) - (sp*\[Epsilon]^2)/(16*u1*(sp + t1 + u1)), 
        1/(2*t1*(sp + t1 + u1)) + 1/(4*u1*(sp + t1 + u1)) + 
         sp/(4*t1*u1*(sp + t1 + u1)) + \[Epsilon]/(2*t1*(sp + t1 + u1)) + 
         \[Epsilon]/(4*u1*(sp + t1 + u1)) + (sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) + \[Epsilon]^2/(8*t1*(sp + t1 + u1)) + 
         \[Epsilon]^2/(16*u1*(sp + t1 + u1)) + (sp*\[Epsilon]^2)/
          (16*t1*u1*(sp + t1 + u1)), 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}}}}
 
CoeffROK[L] = {{{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {(-5*q2*t1^3)/sp - (5*q2*t1^4)/sp^2 - 
         (2*q2*t1^3*\[Epsilon])/sp - (2*q2*t1^4*\[Epsilon])/sp^2, 
        (5*q2*t1^2)/(2*sp) + (5*q2*t1^3)/(2*sp^2) - (5*q2*t1^2)/u1 - 
         (10*q2*t1^3)/(sp*u1) - (5*q2*t1^4)/(sp^2*u1) + (q2*t1^2*\[Epsilon])/
          sp + (q2*t1^3*\[Epsilon])/sp^2 - (2*q2*t1^2*\[Epsilon])/u1 - 
         (4*q2*t1^3*\[Epsilon])/(sp*u1) - (2*q2*t1^4*\[Epsilon])/(sp^2*u1), 
        (q2*t1)/sp + (q2*t1^2)/sp^2 - (5*q2*sp*t1)/u1^2 - (15*q2*t1^2)/u1^2 - 
         (15*q2*t1^3)/(sp*u1^2) - (5*q2*t1^4)/(sp^2*u1^2) - 
         (5*q2*t1)/(2*u1) - (5*q2*t1^2)/(sp*u1) - (5*q2*t1^3)/(2*sp^2*u1) - 
         (q2*t1*\[Epsilon])/(2*sp) - (q2*t1^2*\[Epsilon])/(2*sp^2) - 
         (2*q2*sp*t1*\[Epsilon])/u1^2 - (6*q2*t1^2*\[Epsilon])/u1^2 - 
         (6*q2*t1^3*\[Epsilon])/(sp*u1^2) - (2*q2*t1^4*\[Epsilon])/
          (sp^2*u1^2) - (q2*t1*\[Epsilon])/u1 - (2*q2*t1^2*\[Epsilon])/
          (sp*u1) - (q2*t1^3*\[Epsilon])/(sp^2*u1), 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}}, 
     {{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, (q2*t1)/4 - (m2*q2*t1)/(2*sp) + 
         (q2^2*t1)/(4*sp) - (m2*q2*t1^2)/(2*sp^2) + (q2^2*t1^2)/(4*sp^2) + 
         (5*q2*t1^2)/(4*sp) + (q2*t1^3)/sp^2 - (m2*q2*t1)/(2*u1) + 
         (q2^2*t1)/(4*u1) + (q2*sp*t1)/(4*u1) + (q2*t1^2)/u1 - 
         (2*m2*q2*t1^2)/(sp*u1) + (q2^2*t1^2)/(2*sp*u1) - 
         (3*m2*q2*t1^3)/(2*sp^2*u1) + (q2^2*t1^3)/(4*sp^2*u1) + 
         (5*q2*t1^3)/(4*sp*u1) + (q2*t1^4)/(2*sp^2*u1) + 
         (q2*t1^2*u1)/(2*sp^2) + (q2*t1*\[Epsilon])/2 + (q2*t1^2*\[Epsilon])/
          sp + (q2*t1^3*\[Epsilon])/(2*sp^2) + (q2*sp*t1*\[Epsilon])/(4*u1) + 
         (3*q2*t1^2*\[Epsilon])/(4*u1) + (3*q2*t1^3*\[Epsilon])/(4*sp*u1) + 
         (q2*t1^4*\[Epsilon])/(4*sp^2*u1) + (q2*t1*u1*\[Epsilon])/(4*sp) + 
         (q2*t1^2*u1*\[Epsilon])/(4*sp^2), 0}, 
       {0, (m2*q2)/2 - (q2*t1)/4 + (m2*q2*t1)/(2*sp) + (q2^2*t1)/(4*sp) + 
         (q2^2*t1^2)/(4*sp^2) - (q2*t1^2)/(4*sp) + (m2*q2*sp)/(2*u1) + 
         (q2^2*t1)/(4*u1) + (q2*sp*t1)/(4*u1) + (q2*t1^2)/(2*u1) - 
         (m2*q2*t1^2)/(2*sp*u1) + (q2^2*t1^2)/(2*sp*u1) + 
         (q2^2*t1^3)/(4*sp^2*u1) + (q2*t1^3)/(4*sp*u1) - (q2*t1*u1)/(2*sp) + 
         (q2^2*\[Epsilon])/4 - (q2*sp*\[Epsilon])/4 - (q2*t1*\[Epsilon])/2 + 
         (q2^2*t1*\[Epsilon])/(2*sp) + (q2^2*t1^2*\[Epsilon])/(4*sp^2) - 
         (q2*t1^2*\[Epsilon])/(4*sp) + (q2^2*sp*\[Epsilon])/(4*u1) + 
         (3*q2^2*t1*\[Epsilon])/(4*u1) + (3*q2^2*t1^2*\[Epsilon])/(4*sp*u1) + 
         (q2^2*t1^3*\[Epsilon])/(4*sp^2*u1) - (q2*u1*\[Epsilon])/4 - 
         (q2*t1*u1*\[Epsilon])/(4*sp), (q2*t1)/(2*sp) + (q2*t1^2)/(2*sp^2) - 
         (3*m2*q2*t1)/(2*u1^2) - (q2*sp*t1)/(2*u1^2) - (q2*t1^2)/(2*u1^2) - 
         (3*m2*q2*t1^2)/(sp*u1^2) - (3*m2*q2*t1^3)/(2*sp^2*u1^2) + 
         (q2*t1^3)/(2*sp*u1^2) + (q2*t1^4)/(2*sp^2*u1^2) + (m2*q2)/(2*u1) - 
         (m2*q2*t1^2)/(2*sp^2*u1) + (q2*t1^2)/(sp*u1) + (q2*t1^3)/(sp^2*u1) - 
         (q2*\[Epsilon])/4 + (q2*t1^2*\[Epsilon])/(4*sp^2) - 
         (q2*sp*t1*\[Epsilon])/(4*u1^2) - (q2*t1^2*\[Epsilon])/(4*u1^2) + 
         (q2*t1^3*\[Epsilon])/(4*sp*u1^2) + (q2*t1^4*\[Epsilon])/
          (4*sp^2*u1^2) - (q2*sp*\[Epsilon])/(4*u1) - (q2*t1*\[Epsilon])/
          (2*u1) + (q2*t1^2*\[Epsilon])/(4*sp*u1) + (q2*t1^3*\[Epsilon])/
          (2*sp^2*u1), -((q2*t1)/u1^2) - (2*q2*t1^2)/(sp*u1^2) - 
         (q2*t1^3)/(sp^2*u1^2) - (q2*t1)/(sp*u1) - (q2*t1^2)/(sp^2*u1) - 
         (q2*t1*\[Epsilon])/(2*u1^2) - (q2*t1^2*\[Epsilon])/(sp*u1^2) - 
         (q2*t1^3*\[Epsilon])/(2*sp^2*u1^2) - (q2*t1*\[Epsilon])/(2*sp*u1) - 
         (q2*t1^2*\[Epsilon])/(2*sp^2*u1)}, 
       {0, 0, (q2*t1)/u1^2 + (2*q2*t1^2)/(sp*u1^2) + (q2*t1^3)/(sp^2*u1^2) + 
         (q2*t1)/(sp*u1) + (q2*t1^2)/(sp^2*u1) + (q2*t1*\[Epsilon])/
          (2*u1^2) + (q2*t1^2*\[Epsilon])/(sp*u1^2) + (q2*t1^3*\[Epsilon])/
          (2*sp^2*u1^2) + (q2*t1*\[Epsilon])/(2*sp*u1) + 
         (q2*t1^2*\[Epsilon])/(2*sp^2*u1), 0}}, {{0, 0, 0, 0}, 
       {(q2*t1^3)/sp + (q2*t1^4)/sp^2 + (q2*t1^3*\[Epsilon])/(2*sp) + 
         (q2*t1^4*\[Epsilon])/(2*sp^2), (2*m2*q2*t1)/sp + 
         (3*m2*q2*t1^2)/sp^2 - (q2^2*t1^2)/(2*sp^2) - (q2*t1^2)/sp - 
         (5*q2*t1^3)/(4*sp^2) + (2*m2*q2*t1)/u1 + (3*q2*t1^2)/(4*u1) + 
         (3*m2*q2*t1^2)/(sp*u1) + (q2^2*t1^2)/(2*sp*u1) + 
         (m2*q2*t1^3)/(sp^2*u1) + (q2^2*t1^3)/(2*sp^2*u1) + 
         (5*q2*t1^3)/(4*sp*u1) + (3*q2*t1^4)/(4*sp^2*u1) + 
         (2*m2*q2*t1*u1)/sp^2 + (q2*t1^2*u1)/(4*sp^2) - (q2*t1^2*\[Epsilon])/
          (2*sp) - (q2*t1^3*\[Epsilon])/(2*sp^2) + (q2*t1^3*\[Epsilon])/
          (2*sp*u1) + (q2*t1^4*\[Epsilon])/(2*sp^2*u1), 
        (m2*q2*t1)/(2*sp^2) - (q2^2*t1)/(4*sp^2) - (q2*t1)/(4*sp) + 
         (5*q2*t1^2)/(4*sp^2) + (q2*t1)/(2*u1) - (3*m2*q2*t1)/(2*sp*u1) + 
         (3*q2^2*t1)/(4*sp*u1) - (m2*q2*t1^2)/(2*sp^2*u1) + 
         (3*q2^2*t1^2)/(4*sp^2*u1) + (q2*t1^2)/(2*sp*u1) - 
         (q2*t1^3)/(4*sp^2*u1) + (q2*t1*u1)/(4*sp^2) + (q2*t1*\[Epsilon])/
          (2*sp) + (q2*t1^2*\[Epsilon])/(2*sp^2) + (q2*t1*\[Epsilon])/
          (4*u1) - (q2*t1^3*\[Epsilon])/(4*sp^2*u1) + (q2*t1*u1*\[Epsilon])/
          (4*sp^2), 0}, {(-8*m2*q2*t1)/sp - (8*m2*q2*t1^2)/sp^2 - 
         (9*q2*t1^2)/sp - (14*q2*t1^3)/sp^2 - (7*q2*t1^2*\[Epsilon])/(2*sp) - 
         (11*q2*t1^3*\[Epsilon])/(2*sp^2), (-2*m2*q2)/sp + q2^2/(4*sp) + 
         (m2*q2*t1)/(2*sp^2) - (q2^2*t1)/sp^2 + (9*q2*t1)/(4*sp) + 
         (23*q2*t1^2)/(4*sp^2) - (3*m2*q2)/(2*u1) - (13*q2*t1)/(4*u1) - 
         (8*m2*q2*t1)/(sp*u1) + (7*q2^2*t1)/(4*sp*u1) - 
         (15*m2*q2*t1^2)/(2*sp^2*u1) + (7*q2^2*t1^2)/(4*sp^2*u1) - 
         (49*q2*t1^2)/(4*sp*u1) - (35*q2*t1^3)/(4*sp^2*u1) - (q2*u1)/(4*sp) + 
         (5*m2*q2)/(2*(sp + t1 + u1)) - q2^2/(4*(sp + t1 + u1)) - 
         (3*q2*t1)/(4*(sp + t1 + u1)) + (11*m2*q2*t1)/(2*sp*(sp + t1 + u1)) - 
         (q2^2*t1)/(2*sp*(sp + t1 + u1)) + (3*m2*q2*t1^2)/
          (sp^2*(sp + t1 + u1)) - (q2^2*t1^2)/(4*sp^2*(sp + t1 + u1)) - 
         (9*q2*t1^2)/(4*sp*(sp + t1 + u1)) - (3*q2*t1^3)/
          (2*sp^2*(sp + t1 + u1)) + (5*m2*q2*t1)/(2*u1*(sp + t1 + u1)) - 
         (q2^2*t1)/(u1*(sp + t1 + u1)) - (3*q2*sp*t1)/(4*u1*(sp + t1 + u1)) - 
         (2*q2*t1^2)/(u1*(sp + t1 + u1)) + (3*m2*q2*t1^2)/
          (sp*u1*(sp + t1 + u1)) - (2*q2^2*t1^2)/(sp*u1*(sp + t1 + u1)) + 
         (m2*q2*t1^3)/(2*sp^2*u1*(sp + t1 + u1)) - (q2^2*t1^3)/
          (sp^2*u1*(sp + t1 + u1)) - (7*q2*t1^3)/(4*sp*u1*(sp + t1 + u1)) - 
         (q2*t1^4)/(2*sp^2*u1*(sp + t1 + u1)) + (q2*u1)/(4*(sp + t1 + u1)) + 
         (m2*q2*u1)/(2*sp*(sp + t1 + u1)) - (q2^2*u1)/(4*sp*(sp + t1 + u1)) + 
         (m2*q2*t1*u1)/(2*sp^2*(sp + t1 + u1)) - (q2^2*t1*u1)/
          (4*sp^2*(sp + t1 + u1)) - (q2*t1*u1)/(2*sp*(sp + t1 + u1)) - 
         (3*q2*t1^2*u1)/(4*sp^2*(sp + t1 + u1)) + 
         (q2*u1^2)/(4*sp*(sp + t1 + u1)) + (q2*t1*u1^2)/
          (4*sp^2*(sp + t1 + u1)) - (q2*\[Epsilon])/4 + 
         (q2^2*\[Epsilon])/(4*sp) + (q2^2*t1*\[Epsilon])/(4*sp^2) + 
         (3*q2*t1*\[Epsilon])/(4*sp) + (2*q2*t1^2*\[Epsilon])/sp^2 + 
         (q2^2*\[Epsilon])/(4*u1) - (3*q2*t1*\[Epsilon])/(2*u1) + 
         (q2^2*t1*\[Epsilon])/(2*sp*u1) + (q2^2*t1^2*\[Epsilon])/
          (4*sp^2*u1) - (19*q2*t1^2*\[Epsilon])/(4*sp*u1) - 
         (13*q2*t1^3*\[Epsilon])/(4*sp^2*u1) - (q2*u1*\[Epsilon])/(4*sp) - 
         (q2*t1*\[Epsilon])/(2*(sp + t1 + u1)) - (3*q2*t1^2*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (5*q2*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) - (q2*t1^4*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)), (-2*q2)/sp + (3*q2*t1)/(2*sp^2) - 
         (5*q2*t1)/u1^2 - (10*m2*q2*t1)/(sp*u1^2) - (10*m2*q2*t1^2)/
          (sp^2*u1^2) - (10*q2*t1^2)/(sp*u1^2) - (5*q2*t1^3)/(sp^2*u1^2) + 
         (7*q2)/(4*u1) - (2*m2*q2)/(sp*u1) + (5*q2^2)/(4*sp*u1) - 
         (m2*q2*t1)/(sp^2*u1) + (5*q2^2*t1)/(4*sp^2*u1) + (q2*t1)/(4*sp*u1) - 
         (3*q2*t1^2)/(2*sp^2*u1) - q2/(4*(sp + t1 + u1)) - 
         (3*m2*q2)/(2*sp*(sp + t1 + u1)) + (3*q2^2)/(4*sp*(sp + t1 + u1)) - 
         (3*m2*q2*t1)/(2*sp^2*(sp + t1 + u1)) + (3*q2^2*t1)/
          (4*sp^2*(sp + t1 + u1)) - (5*q2*t1)/(4*sp*(sp + t1 + u1)) - 
         (q2*t1^2)/(sp^2*(sp + t1 + u1)) + (m2*q2*t1)/
          (2*u1^2*(sp + t1 + u1)) - (q2*sp*t1)/(2*u1^2*(sp + t1 + u1)) - 
         (3*q2*t1^2)/(2*u1^2*(sp + t1 + u1)) + (m2*q2*t1^2)/
          (sp*u1^2*(sp + t1 + u1)) + (m2*q2*t1^3)/(2*sp^2*u1^2*
           (sp + t1 + u1)) - (3*q2*t1^3)/(2*sp*u1^2*(sp + t1 + u1)) - 
         (q2*t1^4)/(2*sp^2*u1^2*(sp + t1 + u1)) + 
         (m2*q2)/(2*u1*(sp + t1 + u1)) - q2^2/(4*u1*(sp + t1 + u1)) - 
         (3*q2*sp)/(4*u1*(sp + t1 + u1)) - (3*q2*t1)/(u1*(sp + t1 + u1)) + 
         (7*m2*q2*t1)/(2*sp*u1*(sp + t1 + u1)) - (q2^2*t1)/
          (2*sp*u1*(sp + t1 + u1)) + (3*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (q2^2*t1^2)/(4*sp^2*u1*(sp + t1 + u1)) - 
         (15*q2*t1^2)/(4*sp*u1*(sp + t1 + u1)) - (3*q2*t1^3)/
          (2*sp^2*u1*(sp + t1 + u1)) - (2*q2*t1*\[Epsilon])/u1^2 - 
         (4*q2*t1^2*\[Epsilon])/(sp*u1^2) - (2*q2*t1^3*\[Epsilon])/
          (sp^2*u1^2) - (q2*\[Epsilon])/(4*u1) - (5*q2*t1*\[Epsilon])/
          (4*sp*u1) - (q2*t1^2*\[Epsilon])/(sp^2*u1) - (q2*\[Epsilon])/
          (4*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - 
         (q2*t1^2*\[Epsilon])/(4*sp^2*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (3*q2*t1^2*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (3*q2*t1^3*\[Epsilon])/
          (4*sp*u1^2*(sp + t1 + u1)) - (q2*t1^4*\[Epsilon])/
          (4*sp^2*u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (q2*t1*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)), (3*q2)/(4*sp*u1) + q2/(2*t1*u1) + 
         (q2*t1)/(4*sp^2*u1) + q2/(4*sp*(sp + t1 + u1)) + 
         q2/(2*t1*(sp + t1 + u1)) - (q2*t1)/(4*sp^2*(sp + t1 + u1)) - 
         q2/(4*u1*(sp + t1 + u1)) - (2*m2*q2)/(sp*u1*(sp + t1 + u1)) - 
         (2*m2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) - 
         (q2*t1)/(2*sp*u1*(sp + t1 + u1)) - (q2*t1^2)/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(4*sp*u1) + 
         (q2*t1*\[Epsilon])/(4*sp^2*u1) - (q2*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (q2*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (q2*t1*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1))}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}}, 
     {{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, -((m2*q2)/sp) + (m2*q2*t1)/(2*sp^2) - 
         (3*q2^2*t1)/(4*sp^2) + (3*q2*t1)/(4*sp) + (2*q2*t1^2)/sp^2 - 
         (m2*q2)/(2*u1) + (q2*t1)/(4*u1) - (m2*q2*t1)/(2*sp*u1) - 
         (q2^2*t1)/(4*sp*u1) + (m2*q2*t1^2)/(2*sp^2*u1) - 
         (q2^2*t1^2)/(4*sp^2*u1) + (5*q2*t1^2)/(4*sp*u1) + 
         (q2*t1^3)/(sp^2*u1) + (q2*t1*u1)/sp^2 + (3*m2*q2)/
          (2*(sp + t1 + u1)) + (2*m2^2*q2)/(sp*(sp + t1 + u1)) - 
         q2^3/(2*sp*(sp + t1 + u1)) + (2*m2^2*q2)/(t1*(sp + t1 + u1)) - 
         (m2*q2^2)/(t1*(sp + t1 + u1)) - (q2*t1)/(2*(sp + t1 + u1)) + 
         (m2*q2^2*t1)/(sp^2*(sp + t1 + u1)) - (q2^3*t1)/
          (2*sp^2*(sp + t1 + u1)) - (m2*q2*t1)/(sp*(sp + t1 + u1)) + 
         (3*q2^2*t1)/(2*sp*(sp + t1 + u1)) - (3*m2*q2*t1^2)/
          (sp^2*(sp + t1 + u1)) + (3*q2^2*t1^2)/(2*sp^2*(sp + t1 + u1)) - 
         (2*q2*t1^2)/(sp*(sp + t1 + u1)) - (3*q2*t1^3)/
          (2*sp^2*(sp + t1 + u1)) + (2*m2^2*q2)/(u1*(sp + t1 + u1)) + 
         (m2*q2*sp)/(2*u1*(sp + t1 + u1)) + (m2*q2*t1)/
          (2*u1*(sp + t1 + u1)) + (q2^2*t1)/(2*u1*(sp + t1 + u1)) + 
         (2*m2^2*q2*t1)/(sp*u1*(sp + t1 + u1)) + (m2*q2^2*t1)/
          (sp*u1*(sp + t1 + u1)) - (q2*t1^2)/(2*u1*(sp + t1 + u1)) + 
         (m2*q2^2*t1^2)/(sp^2*u1*(sp + t1 + u1)) - (2*m2*q2*t1^2)/
          (sp*u1*(sp + t1 + u1)) + (q2^2*t1^2)/(sp*u1*(sp + t1 + u1)) - 
         (2*m2*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) + (q2^2*t1^3)/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2*t1^3)/(sp*u1*(sp + t1 + u1)) - 
         (q2*t1^4)/(2*sp^2*u1*(sp + t1 + u1)) + (q2^2*u1)/
          (sp*(sp + t1 + u1)) + (m2*q2*u1)/(t1*(sp + t1 + u1)) - 
         (m2*q2*t1*u1)/(sp^2*(sp + t1 + u1)) + (q2^2*t1*u1)/
          (sp^2*(sp + t1 + u1)) - (3*q2*t1*u1)/(2*sp*(sp + t1 + u1)) - 
         (3*q2*t1^2*u1)/(2*sp^2*(sp + t1 + u1)) - 
         (q2*u1^2)/(2*sp*(sp + t1 + u1)) - (q2*t1*u1^2)/
          (2*sp^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/(2*sp) - 
         (q2^2*\[Epsilon])/(2*sp) + (m2*q2*t1*\[Epsilon])/(2*sp^2) - 
         (q2^2*t1*\[Epsilon])/(2*sp^2) + (3*q2*t1*\[Epsilon])/(4*sp) + 
         (3*q2*t1^2*\[Epsilon])/(4*sp^2) - (m2*q2*\[Epsilon])/(4*u1) + 
         (q2*t1*\[Epsilon])/(4*u1) - (m2*q2*t1*\[Epsilon])/(4*sp*u1) + 
         (q2*t1^2*\[Epsilon])/(2*sp*u1) + (q2*t1^3*\[Epsilon])/(4*sp^2*u1) + 
         (q2*u1*\[Epsilon])/(2*sp) + (q2*t1*u1*\[Epsilon])/(2*sp^2) - 
         (3*m2*q2*\[Epsilon])/(4*(sp + t1 + u1)) + (q2^2*\[Epsilon])/
          (2*(sp + t1 + u1)) + (m2*q2^2*\[Epsilon])/(sp*(sp + t1 + u1)) - 
         (q2^3*\[Epsilon])/(2*sp*(sp + t1 + u1)) + (m2*q2^2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (q2^3*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (q2*t1*\[Epsilon])/(4*(sp + t1 + u1)) + (m2*q2^2*t1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2^3*t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (5*m2*q2*t1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon])/(sp*(sp + t1 + u1)) - 
         (m2*q2*t1^2*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + 
         (q2^2*t1^2*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) - 
         (q2*t1^2*\[Epsilon])/(2*sp*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (m2*q2^2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (m2*q2^2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (m2*q2^2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (m2*q2*t1^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (m2*q2*u1*\[Epsilon])/(sp*(sp + t1 + u1)) + (q2^2*u1*\[Epsilon])/
          (sp*(sp + t1 + u1)) - (m2*q2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (q2^2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) - 
         (m2*q2*t1*u1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + 
         (q2^2*t1*u1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) - 
         (q2*t1*u1*\[Epsilon])/(sp*(sp + t1 + u1)) - (q2*t1^2*u1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (q2*t1*u1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)), 0}, {0, -q2 - (m2*q2)/(2*sp) + q2^2/sp + 
         (m2*q2)/t1 + (q2^2*t1)/(4*sp^2) - (q2*t1)/(4*sp) + (m2*q2)/(2*u1) + 
         q2^2/u1 + (2*m2^2*q2)/(sp*u1) - q2^3/(2*sp*u1) - (q2*sp)/(2*u1) + 
         (2*m2^2*q2)/(t1*u1) - (m2*q2^2)/(t1*u1) + (m2*q2*sp)/(t1*u1) - 
         (q2*t1)/(4*u1) + (m2*q2^2*t1)/(sp^2*u1) - (q2^3*t1)/(2*sp^2*u1) - 
         (m2*q2*t1)/(2*sp*u1) + (5*q2^2*t1)/(4*sp*u1) + 
         (q2^2*t1^2)/(4*sp^2*u1) + (q2*t1^2)/(4*sp*u1) - (q2*u1)/(2*sp) - 
         (3*q2*\[Epsilon])/4 - (m2*q2*\[Epsilon])/(2*sp) + 
         (3*q2^2*\[Epsilon])/(4*sp) - (m2*q2*\[Epsilon])/(2*t1) + 
         (q2^2*\[Epsilon])/(2*t1) - (q2*sp*\[Epsilon])/(2*t1) + 
         (q2^2*t1*\[Epsilon])/(4*sp^2) - (q2*t1*\[Epsilon])/(4*sp) - 
         (m2*q2*\[Epsilon])/(2*u1) + (5*q2^2*\[Epsilon])/(4*u1) + 
         (m2*q2^2*\[Epsilon])/(sp*u1) - (q2^3*\[Epsilon])/(2*sp*u1) - 
         (q2*sp*\[Epsilon])/(2*u1) + (m2*q2^2*\[Epsilon])/(2*t1*u1) - 
         (q2^3*\[Epsilon])/(4*t1*u1) - (m2*q2*sp*\[Epsilon])/(2*t1*u1) + 
         (q2^2*sp*\[Epsilon])/(2*t1*u1) - (q2*sp^2*\[Epsilon])/(4*t1*u1) - 
         (q2*t1*\[Epsilon])/(4*u1) + (m2*q2^2*t1*\[Epsilon])/(2*sp^2*u1) - 
         (q2^3*t1*\[Epsilon])/(4*sp^2*u1) + (q2^2*t1*\[Epsilon])/(sp*u1) + 
         (q2^2*t1^2*\[Epsilon])/(4*sp^2*u1) - (q2*u1*\[Epsilon])/(4*sp) - 
         (q2*u1*\[Epsilon])/(4*t1), -q2/(2*sp) + (q2*t1)/sp^2 + 
         (3*q2*t1)/(2*u1^2) - (m2*q2*t1)/(2*sp*u1^2) - 
         (m2*q2*t1^2)/(2*sp^2*u1^2) + (3*q2*t1^2)/(sp*u1^2) + 
         (3*q2*t1^3)/(2*sp^2*u1^2) - q2/(2*u1) + (3*m2*q2)/(2*sp*u1) + 
         q2^2/(2*sp*u1) + (m2*q2)/(t1*u1) + (3*m2*q2*t1)/(2*sp^2*u1) + 
         (q2^2*t1)/(2*sp^2*u1) + (3*q2*t1)/(2*sp*u1) + 
         (2*q2*t1^2)/(sp^2*u1) - (m2*q2)/(sp*(sp + t1 + u1)) + 
         q2^2/(2*sp*(sp + t1 + u1)) + (m2*q2)/(t1*(sp + t1 + u1)) - 
         (2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) + (q2^2*t1)/
          (2*sp^2*(sp + t1 + u1)) - (3*q2*t1)/(2*sp*(sp + t1 + u1)) - 
         (3*q2*t1^2)/(2*sp^2*(sp + t1 + u1)) - (m2*q2*t1)/
          (u1^2*(sp + t1 + u1)) - (4*m2^2*q2*t1)/(sp*u1^2*(sp + t1 + u1)) - 
         (q2*sp*t1)/(u1^2*(sp + t1 + u1)) - (3*q2*t1^2)/
          (u1^2*(sp + t1 + u1)) - (4*m2^2*q2*t1^2)/(sp^2*u1^2*
           (sp + t1 + u1)) - (2*m2*q2*t1^2)/(sp*u1^2*(sp + t1 + u1)) - 
         (m2*q2*t1^3)/(sp^2*u1^2*(sp + t1 + u1)) - (3*q2*t1^3)/
          (sp*u1^2*(sp + t1 + u1)) - (q2*t1^4)/(sp^2*u1^2*(sp + t1 + u1)) - 
         (4*m2^2*q2)/(sp*u1*(sp + t1 + u1)) + (2*m2*q2^2)/
          (sp*u1*(sp + t1 + u1)) - (2*q2*t1)/(u1*(sp + t1 + u1)) - 
         (4*m2^2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) + (2*m2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) - (3*m2*q2*t1)/(sp*u1*(sp + t1 + u1)) - 
         (3*m2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) - (4*q2*t1^2)/
          (sp*u1*(sp + t1 + u1)) - (2*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) - 
         (q2*u1)/(2*sp*(sp + t1 + u1)) - (q2*t1*u1)/(2*sp^2*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/(2*t1) + (q2*t1*\[Epsilon])/(2*sp^2) + 
         (q2*t1*\[Epsilon])/(2*u1^2) + (m2*q2*t1*\[Epsilon])/(2*sp*u1^2) + 
         (m2*q2*t1^2*\[Epsilon])/(2*sp^2*u1^2) + (q2*t1^2*\[Epsilon])/
          (sp*u1^2) + (q2*t1^3*\[Epsilon])/(2*sp^2*u1^2) - 
         (3*q2*\[Epsilon])/(4*u1) - (m2*q2*\[Epsilon])/(2*sp*u1) + 
         (3*q2^2*\[Epsilon])/(4*sp*u1) - (m2*q2*\[Epsilon])/(2*t1*u1) + 
         (q2^2*\[Epsilon])/(2*t1*u1) - (q2*sp*\[Epsilon])/(4*t1*u1) + 
         (q2^2*t1*\[Epsilon])/(4*sp^2*u1) + (q2*t1^2*\[Epsilon])/
          (2*sp^2*u1) - (q2*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (m2*q2*\[Epsilon])/(2*sp*(sp + t1 + u1)) + (3*q2^2*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (q2^2*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (3*q2*t1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (3*q2*t1^2*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (m2*q2*t1^2*\[Epsilon])/
          (sp*u1^2*(sp + t1 + u1)) - (m2*q2*t1^3*\[Epsilon])/
          (2*sp^2*u1^2*(sp + t1 + u1)) - (3*q2*t1^3*\[Epsilon])/
          (4*sp*u1^2*(sp + t1 + u1)) - (q2*t1^4*\[Epsilon])/
          (4*sp^2*u1^2*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (m2*q2*t1*\[Epsilon])/(sp*u1*(sp + t1 + u1)) - 
         (m2*q2*t1^2*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) - 
         (q2*t1^2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) - 
         (q2*t1^3*\[Epsilon])/(4*sp^2*u1*(sp + t1 + u1)) - 
         (3*q2*u1*\[Epsilon])/(4*sp*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (q2*t1*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/(8*u1^2) - 
         (q2*t1^2*\[Epsilon]^2)/(4*sp*u1^2) - (q2*t1^3*\[Epsilon]^2)/
          (8*sp^2*u1^2) + (q2*sp*t1*\[Epsilon]^2)/(8*u1^2*(sp + t1 + u1)) + 
         (3*q2*t1^2*\[Epsilon]^2)/(8*u1^2*(sp + t1 + u1)) + 
         (3*q2*t1^3*\[Epsilon]^2)/(8*sp*u1^2*(sp + t1 + u1)) + 
         (q2*t1^4*\[Epsilon]^2)/(8*sp^2*u1^2*(sp + t1 + u1)) + 
         (q2*t1*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (4*sp*u1*(sp + t1 + u1)) + (q2*t1^3*\[Epsilon]^2)/
          (8*sp^2*u1*(sp + t1 + u1)), 0}, 
       {0, 0, (-2*m2*q2)/(sp*u1*(sp + t1 + u1)) - (2*m2*q2*t1)/
          (sp^2*u1*(sp + t1 + u1)) - (q2*\[Epsilon])/(4*sp*u1) - 
         (q2*\[Epsilon])/(4*t1*u1) - (q2*\[Epsilon])/(4*sp*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/(4*t1*(sp + t1 + u1)), 0}}, 
      {{0, 0, 0, 0}, {(q2*t1^2)/sp + (q2*t1^3)/sp^2 + (q2*t1^2*\[Epsilon])/
          (2*sp) + (q2*t1^3*\[Epsilon])/(2*sp^2), (m2*q2)/(2*sp) + 
         q2^2/(2*sp) + (m2*q2)/(2*t1) - (4*m2^2*q2)/(sp*t1) + 
         (3*m2*q2*t1)/sp^2 - (q2^2*t1)/(2*sp^2) - (q2*t1)/(2*sp) - 
         (q2*t1^2)/(4*sp^2) + (q2*t1)/(4*u1) + (3*m2*q2*t1)/(2*sp*u1) + 
         (m2*q2*t1^2)/(sp^2*u1) + (3*q2*t1^2)/(4*sp*u1) + 
         (3*q2*t1^3)/(4*sp^2*u1) + (2*m2*q2*u1)/sp^2 - (q2*u1)/(2*sp) + 
         (q2*t1*u1)/(4*sp^2) + (2*m2*q2)/(sp + t1 + u1) - 
         q2^2/(2*(sp + t1 + u1)) - (2*m2^2*q2)/(sp*(sp + t1 + u1)) + 
         (m2*q2^2)/(sp*(sp + t1 + u1)) - (m2*q2*sp)/(2*t1*(sp + t1 + u1)) + 
         (q2*t1)/(sp + t1 + u1) + (m2*q2^2*t1)/(sp^2*(sp + t1 + u1)) + 
         (2*m2*q2*t1)/(sp*(sp + t1 + u1)) + (q2^2*t1^2)/
          (2*sp^2*(sp + t1 + u1)) + (q2*t1^2)/(sp*(sp + t1 + u1)) + 
         (m2*q2*sp)/(u1*(sp + t1 + u1)) + (7*m2*q2*t1)/
          (2*u1*(sp + t1 + u1)) - (q2^2*t1)/(2*u1*(sp + t1 + u1)) - 
         (2*m2^2*q2*t1)/(sp*u1*(sp + t1 + u1)) + (2*m2*q2^2*t1)/
          (sp*u1*(sp + t1 + u1)) - (q2^3*t1)/(2*sp*u1*(sp + t1 + u1)) + 
         (q2*t1^2)/(2*u1*(sp + t1 + u1)) + (m2*q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (q2^3*t1^2)/(2*sp^2*u1*(sp + t1 + u1)) + 
         (3*m2*q2*t1^2)/(2*sp*u1*(sp + t1 + u1)) + (q2^2*t1^3)/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2*t1^3)/(2*sp*u1*(sp + t1 + u1)) + 
         (q2*u1)/(2*(sp + t1 + u1)) + (m2*q2*u1)/(2*sp*(sp + t1 + u1)) - 
         (q2^2*u1)/(2*sp*(sp + t1 + u1)) - (m2*q2*u1)/(2*t1*(sp + t1 + u1)) + 
         (q2*t1*u1)/(sp*(sp + t1 + u1)) + (q2*u1^2)/(2*sp*(sp + t1 + u1)) - 
         (m2*q2*\[Epsilon])/(4*sp) + (q2*t1*\[Epsilon])/(4*sp) + 
         (q2*t1*\[Epsilon])/(4*u1) - (m2*q2*t1*\[Epsilon])/(2*sp*u1) - 
         (q2^2*t1^2*\[Epsilon])/(2*sp^2*u1) + (q2*t1^2*\[Epsilon])/
          (4*sp*u1) + (q2*t1^3*\[Epsilon])/(2*sp^2*u1) - 
         (m2*q2*\[Epsilon])/(4*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (2*(sp + t1 + u1)) + (m2*q2^2*t1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (q2^2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (m2*q2^2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2^3*t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (m2*q2*t1^2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (q2^2*t1^3*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2*t1^3*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (m2*q2*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (q2*t1*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/(8*sp) - 
         (q2*t1*\[Epsilon]^2)/(8*u1) + (q2^2*t1^2*\[Epsilon]^2)/(8*sp^2*u1) + 
         (q2*t1*\[Epsilon]^2)/(4*(sp + t1 + u1)) - (q2^2*t1^2*\[Epsilon]^2)/
          (8*sp^2*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1)) + (q2*sp*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (q2^2*t1^2*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) - (q2^2*t1^3*\[Epsilon]^2)/
          (8*sp^2*u1*(sp + t1 + u1)) + (q2*t1*u1*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1)), (m2*q2)/sp^2 - (2*m2*q2^2)/(sp^2*t1) + 
         (3*m2*q2)/(2*sp*t1) - q2^2/(2*sp*t1) + (m2*q2)/(2*sp*u1) + 
         (m2*q2*t1)/(sp^2*u1) + (q2*t1)/(2*sp*u1) + (q2*t1^2)/(2*sp^2*u1) - 
         (q2*u1)/(2*sp^2) + (2*m2*q2*u1)/(sp^2*t1) + (q2*u1)/(2*sp*t1) - 
         (2*m2*q2^2)/(sp^2*(sp + t1 + u1)) + (m2*q2)/(sp*(sp + t1 + u1)) + 
         q2^2/(2*sp*(sp + t1 + u1)) - (m2*q2)/(2*t1*(sp + t1 + u1)) - 
         q2^3/(2*sp*t1*(sp + t1 + u1)) + (4*m2*q2*t1)/(sp^2*(sp + t1 + u1)) - 
         (q2*t1)/(2*sp*(sp + t1 + u1)) - (q2*t1^2)/(2*sp^2*(sp + t1 + u1)) + 
         (5*m2*q2)/(2*u1*(sp + t1 + u1)) + (2*m2*q2^2)/
          (sp*u1*(sp + t1 + u1)) + (2*m2*q2^2*t1)/(sp^2*u1*(sp + t1 + u1)) + 
         (7*m2*q2*t1)/(2*sp*u1*(sp + t1 + u1)) + (q2^2*t1)/
          (2*sp*u1*(sp + t1 + u1)) + (m2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + 
         (q2^2*t1^2)/(2*sp^2*u1*(sp + t1 + u1)) - 
         (q2*t1^2)/(2*sp*u1*(sp + t1 + u1)) - (q2*t1^3)/
          (2*sp^2*u1*(sp + t1 + u1)) + (3*m2*q2*u1)/(sp^2*(sp + t1 + u1)) - 
         (q2^2*u1)/(2*sp^2*(sp + t1 + u1)) - (q2*u1)/(2*sp*(sp + t1 + u1)) - 
         (m2*q2*u1)/(2*sp*t1*(sp + t1 + u1)) + (q2^2*u1)/
          (sp*t1*(sp + t1 + u1)) + (q2*t1*u1)/(2*sp^2*(sp + t1 + u1)) + 
         (q2*u1^2)/(2*sp^2*(sp + t1 + u1)) - (q2*u1^2)/
          (2*sp*t1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/sp^2 - 
         (3*q2^2*\[Epsilon])/(4*sp^2) - (3*q2*\[Epsilon])/(4*sp) + 
         (3*m2*q2*\[Epsilon])/(4*sp*t1) - (q2^2*\[Epsilon])/(4*sp*t1) - 
         (3*m2*q2*\[Epsilon])/(4*sp*u1) + (3*q2^2*\[Epsilon])/(4*sp*u1) - 
         (m2*q2*t1*\[Epsilon])/(sp^2*u1) + (5*q2^2*t1*\[Epsilon])/
          (4*sp^2*u1) - (q2*t1^2*\[Epsilon])/(2*sp^2*u1) + 
         (q2*u1*\[Epsilon])/(2*sp^2) + (q2*u1*\[Epsilon])/(4*sp*t1) + 
         (q2*\[Epsilon])/(2*(sp + t1 + u1)) - (q2^3*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/(sp*(sp + t1 + u1)) - 
         (m2*q2*\[Epsilon])/(4*t1*(sp + t1 + u1)) + (m2*q2^2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2^3*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (5*m2*q2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) + 
         (m2*q2^2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) + 
         (q2^3*\[Epsilon])/(4*sp*u1*(sp + t1 + u1)) + (q2^3*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (7*m2*q2*t1*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (3*q2^2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (m2*q2*t1^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) - (3*q2^2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (q2*t1^3*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (m2*q2*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (q2^2*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/(4*sp*(sp + t1 + u1)) - 
         (3*m2*q2*u1*\[Epsilon])/(4*sp*t1*(sp + t1 + u1)) + 
         (q2^2*u1*\[Epsilon])/(sp*t1*(sp + t1 + u1)) - (q2*t1*u1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/(8*sp) - 
         (q2^2*\[Epsilon]^2)/(8*sp*u1) - (q2^2*t1*\[Epsilon]^2)/(4*sp^2*u1) - 
         (q2*t1*\[Epsilon]^2)/(8*sp*u1) - (q2*\[Epsilon]^2)/
          (8*(sp + t1 + u1)) + (q2^2*\[Epsilon]^2)/(8*sp*(sp + t1 + u1)) + 
         (q2^2*t1*\[Epsilon]^2)/(4*sp^2*(sp + t1 + u1)) + 
         (q2^2*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) + (3*q2^2*t1*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) + (q2^2*t1^2*\[Epsilon]^2)/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1)), 0}, {(-8*m2*q2*t1)/sp^2 - 
         (10*q2*t1^2)/sp^2 - (4*q2*t1^2*\[Epsilon])/sp^2, 
        (-3*m2*q2)/(2*sp^2) - (3*q2^2)/(4*sp^2) + q2/(2*sp) - q2/(2*t1) + 
         (2*m2*q2^2)/(sp^2*t1) - (7*m2*q2)/(4*sp*t1) + q2^2/(2*sp*t1) + 
         (9*q2*t1)/(2*sp^2) - q2/(4*u1) + (4*m2^2*q2)/(sp^2*u1) - 
         (2*m2*q2^2)/(sp^2*u1) - (15*m2*q2)/(4*sp*u1) + q2^2/(4*sp*u1) + 
         q2^2/(t1*u1) + (2*m2^2*q2)/(sp*t1*u1) - q2^3/(2*sp*t1*u1) - 
         (q2*sp)/(2*t1*u1) - (17*m2*q2*t1)/(2*sp^2*u1) + 
         (q2^2*t1)/(sp^2*u1) - (q2*t1)/(sp*u1) - (7*q2*t1^2)/(2*sp^2*u1) + 
         (q2*u1)/(4*sp^2) - (2*m2*q2*u1)/(sp^2*t1) + q2/(4*(sp + t1 + u1)) + 
         (4*m2^2*q2)/(sp^2*(sp + t1 + u1)) + (3*m2*q2)/(sp*(sp + t1 + u1)) + 
         (3*m2*q2)/(4*t1*(sp + t1 + u1)) + (2*m2^2*q2)/
          (sp*t1*(sp + t1 + u1)) + (2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) - 
         (q2^2*t1)/(4*sp^2*(sp + t1 + u1)) - (5*q2*t1)/
          (2*sp*(sp + t1 + u1)) - (7*q2*t1^2)/(2*sp^2*(sp + t1 + u1)) - 
         (m2*q2)/(4*u1*(sp + t1 + u1)) - q2^2/(4*u1*(sp + t1 + u1)) + 
         (2*m2^2*q2)/(sp*u1*(sp + t1 + u1)) - (m2*q2^2)/
          (sp*u1*(sp + t1 + u1)) + (q2*sp)/(4*u1*(sp + t1 + u1)) - 
         (3*q2*t1)/(4*u1*(sp + t1 + u1)) + (4*m2^2*q2*t1)/
          (sp^2*u1*(sp + t1 + u1)) - (2*m2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (m2*q2*t1)/(4*sp*u1*(sp + t1 + u1)) - 
         (5*q2^2*t1)/(4*sp*u1*(sp + t1 + u1)) + (m2*q2*t1^2)/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2^2*t1^2)/(sp^2*u1*(sp + t1 + u1)) - 
         (5*q2*t1^2)/(2*sp*u1*(sp + t1 + u1)) - (3*q2*t1^3)/
          (2*sp^2*u1*(sp + t1 + u1)) - (m2*q2*u1)/(2*sp^2*(sp + t1 + u1)) + 
         (q2^2*u1)/(4*sp^2*(sp + t1 + u1)) - (q2*u1)/(4*sp*(sp + t1 + u1)) + 
         (3*m2*q2*u1)/(4*sp*t1*(sp + t1 + u1)) - (9*q2*t1*u1)/
          (4*sp^2*(sp + t1 + u1)) - (q2*u1^2)/(4*sp^2*(sp + t1 + u1)) + 
         (q2^2*\[Epsilon])/(4*sp^2) + (3*q2*\[Epsilon])/(2*sp) - 
         (3*q2*\[Epsilon])/(4*t1) - (3*m2*q2*\[Epsilon])/(4*sp*t1) + 
         (3*q2^2*\[Epsilon])/(4*sp*t1) + (3*q2*t1*\[Epsilon])/(2*sp^2) + 
         (5*q2*\[Epsilon])/(4*u1) + (m2*q2^2*\[Epsilon])/(sp^2*u1) - 
         (q2^3*\[Epsilon])/(2*sp^2*u1) + (m2*q2*\[Epsilon])/(2*sp*u1) - 
         (q2^2*\[Epsilon])/(4*sp*u1) - (m2*q2*\[Epsilon])/(2*t1*u1) + 
         (q2^2*\[Epsilon])/(t1*u1) + (m2*q2^2*\[Epsilon])/(sp*t1*u1) - 
         (q2^3*\[Epsilon])/(2*sp*t1*u1) - (q2*sp*\[Epsilon])/(2*t1*u1) + 
         (m2*q2*t1*\[Epsilon])/(sp^2*u1) - (7*q2^2*t1*\[Epsilon])/
          (4*sp^2*u1) - (5*q2*t1^2*\[Epsilon])/(4*sp^2*u1) - 
         (q2*u1*\[Epsilon])/(4*sp*t1) - (5*q2*\[Epsilon])/
          (4*(sp + t1 + u1)) + (m2*q2^2*\[Epsilon])/(sp^2*(sp + t1 + u1)) - 
         (3*m2*q2*\[Epsilon])/(4*sp*(sp + t1 + u1)) + (q2^2*\[Epsilon])/
          (sp*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         (m2*q2^2*\[Epsilon])/(2*sp*t1*(sp + t1 + u1)) - 
         (m2*q2*t1*\[Epsilon])/(sp^2*(sp + t1 + u1)) + (3*q2^2*t1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (5*q2*t1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (5*q2*t1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (3*q2^2*\[Epsilon])/(4*u1*(sp + t1 + u1)) + (m2*q2^2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) - (q2^3*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (7*q2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (m2*q2^2*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) - (q2^3*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (3*m2*q2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (2*q2^2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) - (m2*q2*t1^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (7*q2^2*t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (7*q2*t1^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (3*q2*t1^3*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (3*q2*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (m2*q2*u1*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) - (q2*t1*u1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/(8*sp) - 
         (3*q2*\[Epsilon]^2)/(8*u1) + (q2^2*\[Epsilon]^2)/(8*sp*u1) + 
         (q2^2*t1*\[Epsilon]^2)/(4*sp^2*u1) - (q2*t1*\[Epsilon]^2)/
          (4*sp*u1) + (q2*\[Epsilon]^2)/(4*(sp + t1 + u1)) - 
         (q2^2*\[Epsilon]^2)/(8*sp*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon]^2)/
          (4*sp^2*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (8*u1*(sp + t1 + u1)) - (3*q2^2*t1*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) - (q2^2*t1^2*\[Epsilon]^2)/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1)), -q2/(4*sp^2) - (4*q2*t1)/(sp*u1^2) - 
         (4*q2*t1^2)/(sp^2*u1^2) - (m2*q2)/(2*sp^2*u1) + 
         (3*q2^2)/(4*sp^2*u1) + (7*q2)/(4*sp*u1) - q2/(t1*u1) - 
         (m2*q2)/(sp*t1*u1) + q2^2/(sp*t1*u1) - (q2*t1)/(sp^2*u1) + 
         (m2*q2)/(2*sp^2*(sp + t1 + u1)) + q2^2/(4*sp^2*(sp + t1 + u1)) - 
         q2/(sp*(sp + t1 + u1)) - q2/(2*t1*(sp + t1 + u1)) - 
         (m2*q2)/(sp*t1*(sp + t1 + u1)) + q2^2/(sp*t1*(sp + t1 + u1)) - 
         (3*q2*t1)/(4*sp^2*(sp + t1 + u1)) - (q2*t1)/(u1^2*(sp + t1 + u1)) - 
         (2*q2*t1^2)/(sp*u1^2*(sp + t1 + u1)) - (q2*t1^3)/
          (sp^2*u1^2*(sp + t1 + u1)) - q2/(4*u1*(sp + t1 + u1)) + 
         (3*m2*q2)/(2*sp*u1*(sp + t1 + u1)) - q2^2/(4*sp*u1*(sp + t1 + u1)) + 
         (5*m2*q2*t1)/(2*sp^2*u1*(sp + t1 + u1)) - 
         (q2^2*t1)/(4*sp^2*u1*(sp + t1 + u1)) - (9*q2*t1)/
          (4*sp*u1*(sp + t1 + u1)) - (2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + 
         (q2*u1)/(4*sp^2*(sp + t1 + u1)) - (q2*u1)/(sp*t1*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(2*sp^2) - (2*q2*t1*\[Epsilon])/(sp*u1^2) - 
         (2*q2*t1^2*\[Epsilon])/(sp^2*u1^2) - (m2*q2*\[Epsilon])/
          (2*sp^2*u1) + (q2^2*\[Epsilon])/(2*sp^2*u1) + 
         (3*q2*\[Epsilon])/(4*sp*u1) - (q2*\[Epsilon])/(4*t1*u1) - 
         (m2*q2*\[Epsilon])/(2*sp*t1*u1) + (q2^2*\[Epsilon])/(2*sp*t1*u1) - 
         (q2*t1*\[Epsilon])/(sp^2*u1) + (m2*q2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2*\[Epsilon])/(2*sp*(sp + t1 + u1)) - 
         (m2*q2*\[Epsilon])/(2*sp*t1*(sp + t1 + u1)) + (q2^2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (q2^2*\[Epsilon])/(4*sp*u1*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (2*sp*u1^2*(sp + t1 + u1)) + (q2*t1^3*\[Epsilon]^2)/
          (4*sp^2*u1^2*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (4*sp*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (4*sp^2*u1*(sp + t1 + u1)), 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, -((m2*q2)/(sp^2*t1)) - q2^2/(2*sp^2*t1) + 
         q2^2/(2*sp^2*u1) - (q2*t1)/(2*sp^2*u1) + (q2*u1)/(2*sp^2*t1) + 
         (m2*q2)/(sp^2*(sp + t1 + u1)) - q2^3/(2*sp^2*t1*(sp + t1 + u1)) + 
         (m2*q2)/(sp*t1*(sp + t1 + u1)) + (q2*t1)/(2*sp^2*(sp + t1 + u1)) + 
         q2^3/(2*sp^2*u1*(sp + t1 + u1)) - (q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (q2*t1^2)/(2*sp^2*u1*(sp + t1 + u1)) - 
         (q2*u1)/(2*sp^2*(sp + t1 + u1)) + (m2*q2*u1)/
          (sp^2*t1*(sp + t1 + u1)) + (q2^2*u1)/(sp^2*t1*(sp + t1 + u1)) - 
         (q2*u1^2)/(2*sp^2*t1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp^2*t1) - (q2^2*\[Epsilon])/(4*sp^2*t1) + 
         (q2^2*\[Epsilon])/(4*sp^2*u1) - (q2*t1*\[Epsilon])/(4*sp^2*u1) + 
         (q2*u1*\[Epsilon])/(4*sp^2*t1) - (m2*q2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2^3*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (m2*q2*u1*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) + (q2^2*u1*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/(8*sp^2) - 
         (q2^2*\[Epsilon]^2)/(8*sp^2*u1) + (q2*t1*\[Epsilon]^2)/(8*sp^2*u1) + 
         (q2^2*\[Epsilon]^2)/(8*sp^2*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/
          (8*sp*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (4*sp^2*(sp + t1 + u1)) + (q2^2*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon]^2)/
          (8*sp^2*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (8*sp^2*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon]^2)/
          (8*sp^2*(sp + t1 + u1)), 0}, {(8*m2*q2)/sp^2 - (5*q2)/sp - 
         (4*m2^2*q2)/(sp^2*t1) + (5*q2*t1)/sp^2 - (2*q2*\[Epsilon])/sp + 
         (2*q2*t1*\[Epsilon])/sp^2 + (q2*\[Epsilon]^2)/(4*sp), 
        -q2/(2*sp^2) + (3*m2*q2)/(2*sp^2*t1) + q2^2/(2*sp^2*t1) - 
         q2/(2*sp*t1) - (2*q2^2)/(sp^2*u1) + (3*q2)/(sp*u1) - q2/(2*t1*u1) + 
         (m2*q2^2)/(sp^2*t1*u1) - q2^3/(2*sp^2*t1*u1) + q2^2/(sp*t1*u1) + 
         (7*q2*t1)/(sp^2*u1) - (3*m2*q2)/(2*sp^2*(sp + t1 + u1)) + 
         (3*q2^2)/(2*sp^2*(sp + t1 + u1)) - (2*q2)/(sp*(sp + t1 + u1)) + 
         (m2*q2^2)/(sp^2*t1*(sp + t1 + u1)) - (3*m2*q2)/
          (2*sp*t1*(sp + t1 + u1)) - (5*q2*t1)/(2*sp^2*(sp + t1 + u1)) - 
         q2/(2*u1*(sp + t1 + u1)) + (m2*q2^2)/(sp^2*u1*(sp + t1 + u1)) - 
         q2^3/(2*sp^2*u1*(sp + t1 + u1)) + q2^2/(sp*u1*(sp + t1 + u1)) + 
         (2*q2^2*t1)/(sp^2*u1*(sp + t1 + u1)) - 
         (q2*t1)/(sp*u1*(sp + t1 + u1)) - (q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (3*q2*u1)/(2*sp^2*(sp + t1 + u1)) - 
         (3*m2*q2*u1)/(2*sp^2*t1*(sp + t1 + u1)) - (3*q2*\[Epsilon])/
          (4*sp^2) + (q2^2*\[Epsilon])/(4*sp^2*t1) - (q2*\[Epsilon])/
          (4*sp*t1) - (3*q2^2*\[Epsilon])/(4*sp^2*u1) + 
         (3*q2*\[Epsilon])/(4*sp*u1) - (q2*\[Epsilon])/(4*t1*u1) + 
         (m2*q2^2*\[Epsilon])/(2*sp^2*t1*u1) - (q2^3*\[Epsilon])/
          (4*sp^2*t1*u1) + (q2^2*\[Epsilon])/(2*sp*t1*u1) + 
         (5*q2*t1*\[Epsilon])/(2*sp^2*u1) + (q2^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2*\[Epsilon])/(4*sp*(sp + t1 + u1)) + 
         (m2*q2^2*\[Epsilon])/(2*sp^2*t1*(sp + t1 + u1)) - 
         (3*q2*t1*\[Epsilon])/(4*sp^2*(sp + t1 + u1)) + (m2*q2^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2^3*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (3*q2^2*t1*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/(8*sp^2) + 
         (q2^2*\[Epsilon]^2)/(8*sp^2*u1) - (3*q2*\[Epsilon]^2)/(8*sp*u1) - 
         (q2*t1*\[Epsilon]^2)/(2*sp^2*u1) - (q2^2*\[Epsilon]^2)/
          (8*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/(4*sp*(sp + t1 + u1)) + 
         (q2*t1*\[Epsilon]^2)/(8*sp^2*(sp + t1 + u1)) + 
         (q2*\[Epsilon]^2)/(8*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon]^2)/
          (8*sp^2*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (8*sp*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon]^2)/
          (8*sp^2*(sp + t1 + u1)), 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {(-5*q2)/sp^2 - (2*q2*\[Epsilon])/sp^2 + 
         (q2*\[Epsilon]^2)/(4*sp^2), 0, 0, 0}, {0, 0, 0, 0}}}}
 
CoeffROK[P] = {{{{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {8*k2hat2*m2*sp + 4*k2hat2*q2*t1 + 
         (8*k2hat2*q2*t1^2)/sp - 4*k2hat2*t1*u1, (k2hat2*m2)/2 + 
         (k2hat2*q2)/4 - 2*k2hat2*sp + (k2hat2*q2*t1)/(2*sp) + 
         (k2hat2*q2*t1^2)/(2*sp^2) - (2*k2hat2*q2*sp)/u1 - (k2hat2*u1)/4 - 
         t1*u1 - (k2hat2*t1*u1)/(2*sp) - (t1^2*u1)/sp - (t1*u1^2)/(8*sp) - 
         (t1^2*u1^2)/(8*sp^2), -k2hat2/2 - sp - 2*t1 - (k2hat2*t1)/(2*sp) - 
         (2*t1^2)/sp + (8*k2hat2*m2*sp)/u1^2 + (4*k2hat2*q2*sp)/u1^2 + 
         (12*k2hat2*q2*t1)/u1^2 + (8*k2hat2*q2*t1^2)/(sp*u1^2) + 
         (k2hat2*m2)/(2*u1) + (k2hat2*q2)/(4*u1) - (2*k2hat2*sp)/u1 - 
         (6*k2hat2*t1)/u1 + (k2hat2*q2*t1)/(2*sp*u1) + (k2hat2*q2*t1^2)/
          (2*sp^2*u1) - u1/8 - (3*t1*u1)/(8*sp) - (3*t1^2*u1)/(8*sp^2), 
        -1/8 - (3*t1)/(8*sp) - (3*t1^2)/(8*sp^2) - t1/u1 - t1^2/(sp*u1), 
        -t1/(8*sp*u1) - t1^2/(8*sp^2*u1)}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}}}, {{{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, -(k2hat2*m2*q2) - 4*k2hat2*m2*sp - m2^2*sp - 
         (k2hat2*q2*sp)/2 + (3*m2*sp^2)/2 - k2hat2*m2*t1 - m2^2*t1 - 
         (3*k2hat2*q2*t1)/8 - (m2*q2*t1)/2 + (q2^2*t1)/8 - 
         (k2hat2*m2*q2*t1)/sp + (k2hat2*q2^2*t1)/(2*sp) + (19*m2*sp*t1)/8 - 
         (3*q2*sp*t1)/8 + (sp^2*t1)/4 - (3*k2hat2*t1^2)/8 + (m2*t1^2)/8 - 
         (7*q2*t1^2)/8 + (k2hat2*q2^2*t1^2)/(2*sp^2) - (9*k2hat2*q2*t1^2)/
          (8*sp) - (m2*q2*t1^2)/sp + (5*sp*t1^2)/8 + t1^3/4 - 
         (k2hat2*q2*t1^3)/(2*sp^2) - (m2*q2*t1^3)/(2*sp^2) - 
         (q2^2*t1^3)/(8*sp^2) - (q2*t1^3)/(4*sp) - k2hat2*m2*u1 - m2^2*u1 - 
         (k2hat2*q2*u1)/2 + (k2hat2*sp*u1)/2 + 2*m2*sp*u1 + 
         (11*k2hat2*t1*u1)/8 + (11*m2*t1*u1)/8 - (3*q2*t1*u1)/8 - 
         (k2hat2*m2*t1*u1)/sp - (m2^2*t1*u1)/sp - (k2hat2*q2*t1*u1)/sp - 
         (m2*q2*t1*u1)/(2*sp) + (3*sp*t1*u1)/8 + (t1^2*u1)/4 - 
         (k2hat2*q2*t1^2*u1)/(2*sp^2) - (m2*q2*t1^2*u1)/(2*sp^2) + 
         (5*k2hat2*t1^2*u1)/(8*sp) + (5*m2*t1^2*u1)/(8*sp) - 
         (q2*t1^2*u1)/(4*sp) + (k2hat2*u1^2)/2 + (m2*u1^2)/2 + 
         (k2hat2*t1*u1^2)/(2*sp) + (m2*t1*u1^2)/(2*sp) - 
         (k2hat2*q2^2*\[Epsilon])/4 - (3*k2hat2*m2*sp*\[Epsilon])/4 - 
         (k2hat2*q2*sp*\[Epsilon])/8 + (m2*sp^2*\[Epsilon])/4 - 
         (k2hat2*m2*t1*\[Epsilon])/4 + (3*k2hat2*q2*t1*\[Epsilon])/8 - 
         (k2hat2*q2^2*t1*\[Epsilon])/(4*sp) - (k2hat2*sp*t1*\[Epsilon])/4 + 
         (m2*sp*t1*\[Epsilon])/2 - (q2*sp*t1*\[Epsilon])/8 + 
         (sp^2*t1*\[Epsilon])/8 - (k2hat2*t1^2*\[Epsilon])/8 + 
         (m2*t1^2*\[Epsilon])/4 - (q2*t1^2*\[Epsilon])/4 + 
         (k2hat2*q2*t1^2*\[Epsilon])/(4*sp) + (sp*t1^2*\[Epsilon])/4 + 
         (t1^3*\[Epsilon])/8 - (q2*t1^3*\[Epsilon])/(8*sp) + 
         (k2hat2*sp*u1*\[Epsilon])/8 + (m2*sp*u1*\[Epsilon])/2 + 
         (5*k2hat2*t1*u1*\[Epsilon])/8 + (3*m2*t1*u1*\[Epsilon])/4 - 
         (q2*t1*u1*\[Epsilon])/8 + (sp*t1*u1*\[Epsilon])/8 + 
         (t1^2*u1*\[Epsilon])/8 + (k2hat2*t1^2*u1*\[Epsilon])/(4*sp) + 
         (m2*t1^2*u1*\[Epsilon])/(4*sp) - (q2*t1^2*u1*\[Epsilon])/(8*sp) + 
         (k2hat2*u1^2*\[Epsilon])/4 + (m2*u1^2*\[Epsilon])/4 + 
         (k2hat2*t1*u1^2*\[Epsilon])/(4*sp) + (m2*t1*u1^2*\[Epsilon])/(4*sp), 
        -2*k2hat2*m2 + m2^2 - (k2hat2*q2)/2 - q2^2/8 - (k2hat2*sp)/8 + 
         (m2*sp)/4 + (q2*sp)/8 + (k2hat2*t1)/8 + (3*m2*t1)/8 - (3*q2*t1)/8 + 
         (3*k2hat2*m2*t1)/sp + (m2^2*t1)/sp + (5*k2hat2*q2*t1)/(4*sp) + 
         (sp*t1)/4 + t1^2/2 + (q2^2*t1^2)/(8*sp^2) - (3*k2hat2*t1^2)/(8*sp) - 
         (m2*t1^2)/(8*sp) - (3*q2*t1^2)/(2*sp) - (q2*t1^3)/(4*sp^2) + 
         (3*t1^3)/(8*sp) - (4*k2hat2*m2^2)/u1 + (5*k2hat2*q2^2)/(8*u1) + 
         (m2^2*sp)/u1 + (k2hat2*q2*sp)/(8*u1) - (q2^2*sp)/(8*u1) - 
         (m2*sp^2)/(8*u1) + (k2hat2*m2*t1)/(2*u1) + (m2^2*t1)/u1 - 
         (5*k2hat2*q2*t1)/(8*u1) - (m2*q2*t1)/u1 - (q2^2*t1)/(8*u1) + 
         (2*k2hat2*m2*q2*t1)/(sp*u1) + (k2hat2*q2^2*t1)/(8*sp*u1) + 
         (m2*sp*t1)/(4*u1) - (5*m2*t1^2)/(8*u1) - (q2*t1^2)/(8*u1) - 
         (k2hat2*q2^2*t1^2)/(2*sp^2*u1) + (k2hat2*q2*t1^2)/(4*sp*u1) - 
         (3*m2*q2*t1^2)/(2*sp*u1) + (3*q2^2*t1^2)/(8*sp*u1) - 
         (m2*q2*t1^3)/(2*sp^2*u1) + (3*q2^2*t1^3)/(8*sp^2*u1) - 
         (q2*t1^3)/(4*sp*u1) - (q2*t1^4)/(8*sp^2*u1) - (k2hat2*u1)/8 + 
         (3*m2*u1)/8 + (q2*u1)/8 + (5*t1*u1)/8 + (k2hat2*t1*u1)/(8*sp) - 
         (3*m2*t1*u1)/(8*sp) - (3*q2*t1*u1)/(8*sp) - (3*q2*t1^2*u1)/
          (8*sp^2) + (t1^2*u1)/(2*sp) + (t1*u1^2)/(4*sp) + 
         (k2hat2*sp*\[Epsilon])/8 - (k2hat2*t1*\[Epsilon])/4 + 
         (k2hat2*q2*t1*\[Epsilon])/(4*sp) + (sp*t1*\[Epsilon])/8 + 
         (t1^2*\[Epsilon])/4 - (3*k2hat2*t1^2*\[Epsilon])/(8*sp) + 
         (t1^3*\[Epsilon])/(8*sp) + (k2hat2*m2*sp*\[Epsilon])/(4*u1) - 
         (k2hat2*q2*sp*\[Epsilon])/(8*u1) + (k2hat2*m2*t1*\[Epsilon])/
          (4*u1) - (k2hat2*q2*t1*\[Epsilon])/(4*u1) - 
         (k2hat2*q2*t1^2*\[Epsilon])/(8*sp*u1) + (t1*u1*\[Epsilon])/4 - 
         (k2hat2*t1*u1*\[Epsilon])/(4*sp) + (t1^2*u1*\[Epsilon])/(4*sp) + 
         (t1*u1^2*\[Epsilon])/(8*sp), 0, 0}, 
       {0, 2*k2hat2*m2 - 3*m2^2 + (k2hat2*q2)/2 - (m2*q2)/2 + (5*q2^2)/8 + 
         (11*k2hat2*sp)/8 + (3*m2*sp)/2 - (11*q2*sp)/8 - sp^2/4 + 
         (21*k2hat2*t1)/8 + (13*m2*t1)/8 - (13*q2*t1)/8 - 
         (3*k2hat2*m2*t1)/sp - (3*m2^2*t1)/sp - (7*k2hat2*q2*t1)/(4*sp) - 
         (m2*q2*t1)/sp + (3*q2^2*t1)/(4*sp) - (5*sp*t1)/8 - t1^2/4 - 
         (k2hat2*q2*t1^2)/(2*sp^2) - (m2*q2*t1^2)/(2*sp^2) + 
         (q2^2*t1^2)/(8*sp^2) + (11*k2hat2*t1^2)/(8*sp) + 
         (11*m2*t1^2)/(8*sp) - (q2*t1^2)/(2*sp) + (4*k2hat2*m2^2)/u1 - 
         (3*k2hat2*q2^2)/(4*u1) - (3*k2hat2*m2*sp)/(2*u1) - (2*m2^2*sp)/u1 + 
         (k2hat2*q2*sp)/(8*u1) - (5*m2*q2*sp)/(4*u1) + (3*q2^2*sp)/(4*u1) + 
         (k2hat2*m2*t1)/u1 - (15*k2hat2*q2*t1)/(8*u1) - (2*m2*q2*t1)/u1 + 
         (5*q2^2*t1)/(4*u1) - (2*k2hat2*m2*q2*t1)/(sp*u1) - 
         (k2hat2*q2^2*t1)/(4*sp*u1) + (k2hat2*sp*t1)/(8*u1) - (m2*sp*t1)/u1 + 
         (3*q2*sp*t1)/(4*u1) + (3*k2hat2*t1^2)/(8*u1) + (m2*t1^2)/(4*u1) + 
         (q2*t1^2)/u1 + (k2hat2*q2^2*t1^2)/(2*sp^2*u1) + 
         (2*k2hat2*m2*t1^2)/(sp*u1) + (2*m2^2*t1^2)/(sp*u1) - 
         (5*k2hat2*q2*t1^2)/(2*sp*u1) - (9*m2*q2*t1^2)/(4*sp*u1) + 
         (q2^2*t1^2)/(2*sp*u1) - (3*k2hat2*q2*t1^3)/(2*sp^2*u1) - 
         (3*m2*q2*t1^3)/(2*sp^2*u1) + (k2hat2*t1^3)/(4*sp*u1) + 
         (m2*t1^3)/(4*sp*u1) + (q2*t1^3)/(4*sp*u1) + (3*k2hat2*u1)/4 - 
         (m2*u1)/4 - (5*q2*u1)/8 + (5*sp*u1)/8 + (t1*u1)/2 + 
         (k2hat2*t1*u1)/(2*sp) + (m2*t1*u1)/(2*sp) - (q2*t1*u1)/(2*sp) + 
         u1^2/4 + (k2hat2*q2*\[Epsilon])/4 + (5*k2hat2*sp*\[Epsilon])/8 + 
         (m2*sp*\[Epsilon])/4 - (sp^2*\[Epsilon])/8 + 
         (5*k2hat2*t1*\[Epsilon])/8 - (sp*t1*\[Epsilon])/4 - 
         (t1^2*\[Epsilon])/8 - (k2hat2*t1^2*\[Epsilon])/(4*sp) - 
         (m2*t1^2*\[Epsilon])/(4*sp) + (k2hat2*m2*sp*\[Epsilon])/(2*u1) - 
         (m2*sp^2*\[Epsilon])/(4*u1) + (k2hat2*m2*t1*\[Epsilon])/(2*u1) + 
         (k2hat2*sp*t1*\[Epsilon])/(8*u1) - (m2*sp*t1*\[Epsilon])/(4*u1) + 
         (3*k2hat2*t1^2*\[Epsilon])/(8*u1) + (m2*t1^2*\[Epsilon])/(4*u1) + 
         (k2hat2*t1^3*\[Epsilon])/(4*sp*u1) + (m2*t1^3*\[Epsilon])/
          (4*sp*u1) + (k2hat2*u1*\[Epsilon])/4 + (m2*u1*\[Epsilon])/2 + 
         (k2hat2*t1*u1*\[Epsilon])/(2*sp) + (m2*t1*u1*\[Epsilon])/(2*sp) + 
         (u1^2*\[Epsilon])/8, k2hat2/4 + m2/4 - (9*q2)/8 + (3*sp)/2 + 
         (19*t1)/8 + (k2hat2*t1)/(4*sp) + (m2*t1)/(4*sp) - (3*q2*t1)/(2*sp) - 
         (3*q2*t1^2)/(8*sp^2) + (3*t1^2)/(2*sp) - (3*k2hat2*m2*sp)/u1^2 - 
         (3*k2hat2*q2*sp)/(2*u1^2) - (3*m2*q2*sp)/(2*u1^2) + 
         (m2*sp^2)/(4*u1^2) + (q2*sp^2)/(8*u1^2) - (9*k2hat2*q2*t1)/
          (2*u1^2) - (3*m2*q2*t1)/u1^2 + (m2*sp*t1)/u1^2 + 
         (q2*sp*t1)/(2*u1^2) + (5*q2*t1^2)/(8*u1^2) - (3*k2hat2*q2*t1^2)/
          (sp*u1^2) - (3*m2*q2*t1^2)/(2*sp*u1^2) + (q2*t1^3)/(4*sp*u1^2) - 
         m2^2/u1 - (k2hat2*q2)/(4*u1) - (m2*q2)/u1 + q2^2/(8*u1) + 
         (k2hat2*sp)/(8*u1) + (9*m2*sp)/(4*u1) - (3*q2*sp)/(2*u1) - 
         sp^2/(8*u1) + (3*k2hat2*t1)/(2*u1) + (15*m2*t1)/(8*u1) - 
         (11*q2*t1)/(4*u1) - (m2^2*t1)/(sp*u1) - (3*k2hat2*q2*t1)/(4*sp*u1) - 
         (3*m2*q2*t1)/(2*sp*u1) + (q2^2*t1)/(4*sp*u1) - (sp*t1)/u1 - 
         (k2hat2*q2*t1^2)/(2*sp^2*u1) - (m2*q2*t1^2)/(2*sp^2*u1) + 
         (q2^2*t1^2)/(8*sp^2*u1) - (k2hat2*t1^2)/(sp*u1) - 
         (3*m2*t1^2)/(8*sp*u1) - (17*q2*t1^2)/(8*sp*u1) - 
         (5*q2*t1^3)/(8*sp^2*u1) + t1^3/(4*sp*u1) + u1/2 + (5*t1*u1)/(8*sp) + 
         (t1^2*u1)/(8*sp^2) + (m2*\[Epsilon])/4 - (t1*\[Epsilon])/8 + 
         (m2*t1*\[Epsilon])/(4*sp) + (t1^2*\[Epsilon])/(4*sp) + 
         (k2hat2*m2*sp*\[Epsilon])/(2*u1^2) + (k2hat2*q2*sp*\[Epsilon])/
          (4*u1^2) - (m2*sp^2*\[Epsilon])/(4*u1^2) - (q2*sp^2*\[Epsilon])/
          (8*u1^2) + (3*k2hat2*q2*t1*\[Epsilon])/(4*u1^2) - 
         (m2*sp*t1*\[Epsilon])/(4*u1^2) - (q2*sp*t1*\[Epsilon])/(2*u1^2) - 
         (5*q2*t1^2*\[Epsilon])/(8*u1^2) + (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp*u1^2) - (q2*t1^3*\[Epsilon])/(4*sp*u1^2) - 
         (m2*sp*\[Epsilon])/(2*u1) - (q2*sp*\[Epsilon])/(8*u1) - 
         (sp^2*\[Epsilon])/(8*u1) + (k2hat2*t1*\[Epsilon])/(4*u1) - 
         (5*m2*t1*\[Epsilon])/(4*u1) - (3*q2*t1*\[Epsilon])/(8*u1) - 
         (sp*t1*\[Epsilon])/(2*u1) - (t1^2*\[Epsilon])/(4*u1) - 
         (k2hat2*t1^2*\[Epsilon])/(sp*u1) - (3*m2*t1^2*\[Epsilon])/
          (4*sp*u1) - (q2*t1^2*\[Epsilon])/(4*sp*u1) + (t1^3*\[Epsilon])/
          (8*sp*u1) + (u1*\[Epsilon])/8 + (t1*u1*\[Epsilon])/(8*sp), 
        1/8 + (3*t1)/(8*sp) + t1^2/(8*sp^2) + (3*m2*t1)/(4*u1^2) + 
         k2hat2/(8*u1) + sp/u1 + (5*t1)/(8*u1) + (k2hat2*t1)/(sp*u1) + 
         (3*m2*t1)/(2*sp*u1) - (q2*t1)/(8*sp*u1) - (3*q2*t1^2)/(8*sp^2*u1) + 
         t1^2/(2*sp*u1) + t1^3/(8*sp^2*u1) + \[Epsilon]/8 - 
         (3*t1*\[Epsilon])/(8*sp) + (m2*\[Epsilon])/(2*u1) + 
         (sp*\[Epsilon])/(8*u1) - (t1*\[Epsilon])/(4*u1) + 
         (3*k2hat2*t1*\[Epsilon])/(2*sp*u1) + (m2*t1*\[Epsilon])/(2*sp*u1) - 
         (3*t1^2*\[Epsilon])/(8*sp*u1), -1/(8*u1) + t1^2/(4*sp^2*u1)}, 
       {0, 0, 1/2 + (3*t1)/(8*sp) + (5*m2*sp)/(4*u1^2) + (m2*t1)/(2*u1^2) - 
         k2hat2/(8*u1) + (5*m2)/(8*u1) - q2/(4*u1) + (13*t1)/(8*u1) - 
         (k2hat2*t1)/(sp*u1) - (7*m2*t1)/(8*sp*u1) - (3*q2*t1)/(8*sp*u1) + 
         (q2*t1^2)/(8*sp^2*u1) + (5*t1^2)/(8*sp*u1) + t1^3/(8*sp^2*u1) - 
         \[Epsilon]/8 + (3*t1*\[Epsilon])/(8*sp) - (m2*sp*\[Epsilon])/
          (4*u1^2) - (m2*t1*\[Epsilon])/(4*u1^2) - (m2*\[Epsilon])/(2*u1) - 
         (sp*\[Epsilon])/(8*u1) + (t1*\[Epsilon])/(4*u1) - 
         (3*k2hat2*t1*\[Epsilon])/(2*sp*u1) - (m2*t1*\[Epsilon])/(2*sp*u1) + 
         (3*t1^2*\[Epsilon])/(8*sp*u1), t1/(2*sp*u1) - t1^2/(8*sp^2*u1), 0}, 
       {0, 0, 1/(4*u1) - t1/(4*sp*u1), 0, 0}}, {{0, 0, 0, 0, 0}, 
       {-2*k2hat2*m2*sp - 2*k2hat2*m2*t1 + (k2hat2*sp*t1)/2 + 
         (k2hat2*t1^2)/2 - (3*m2*t1^2)/4 + (q2*t1^2)/4 - 
         (3*k2hat2*q2*t1^2)/(2*sp) - (k2hat2*q2*t1^3)/sp^2 + 
         (k2hat2*t1^3)/(4*sp) - (m2*t1^3)/(2*sp) + (5*q2*t1^3)/(8*sp) + 
         (q2*t1^4)/(4*sp^2) - m2*t1*u1 + (k2hat2*t1^2*u1)/(2*sp) - 
         (m2*t1^2*u1)/(2*sp) - (q2*t1^2*u1)/(4*sp) - (q2*t1^3*u1)/(2*sp^2) - 
         (k2hat2*m2*sp*\[Epsilon])/2 - (k2hat2*m2*t1*\[Epsilon])/2 - 
         (k2hat2*q2*t1*\[Epsilon])/4 + (k2hat2*sp*t1*\[Epsilon])/4 + 
         (k2hat2*t1^2*\[Epsilon])/2 - (3*k2hat2*q2*t1^2*\[Epsilon])/(4*sp) - 
         (k2hat2*q2*t1^3*\[Epsilon])/(2*sp^2) + (k2hat2*t1^3*\[Epsilon])/
          (4*sp) + (k2hat2*t1*u1*\[Epsilon])/4 + (k2hat2*t1^2*u1*\[Epsilon])/
          (4*sp), -2*k2hat2*m2 - m2^2 - (k2hat2*q2)/2 - (k2hat2*m2*q2)/sp - 
         k2hat2*sp - (5*k2hat2*t1)/4 - (15*m2*t1)/8 - (5*q2*t1)/8 + 
         (k2hat2*q2^2*t1)/(2*sp^2) + (3*k2hat2*m2*t1)/sp + 
         (19*k2hat2*q2*t1)/(8*sp) - (m2*q2*t1)/(2*sp) + (q2^2*t1)/(8*sp) + 
         (sp*t1)/4 + (3*t1^2)/8 + (k2hat2*q2*t1^2)/(2*sp^2) - 
         (m2*q2*t1^2)/(2*sp^2) - (q2^2*t1^2)/(8*sp^2) - 
         (k2hat2*t1^2)/(8*sp) - (m2*t1^2)/sp - (7*q2*t1^2)/(4*sp) + 
         (m2*t1^3)/(2*sp^2) - (q2*t1^3)/(2*sp^2) + (5*t1^3)/(8*sp) + 
         t1^4/(4*sp^2) - (4*k2hat2*m2^2)/u1 - (2*k2hat2*m2*q2)/u1 - 
         (k2hat2*m2*sp)/(2*u1) + (k2hat2*q2*sp)/u1 - (m2*sp^2)/u1 - 
         (k2hat2*m2*t1)/(4*u1) + (k2hat2*q2*t1)/u1 - (4*k2hat2*m2*q2*t1)/
          (sp*u1) - (2*k2hat2*q2^2*t1)/(sp*u1) - (3*k2hat2*sp*t1)/(4*u1) - 
         (5*m2*sp*t1)/(2*u1) - (q2*sp*t1)/(2*u1) - (sp^2*t1)/(4*u1) - 
         (k2hat2*t1^2)/(4*u1) - (9*m2*t1^2)/(4*u1) - (11*q2*t1^2)/(8*u1) - 
         (4*k2hat2*m2*q2*t1^2)/(sp^2*u1) - (2*k2hat2*q2^2*t1^2)/(sp^2*u1) + 
         (k2hat2*m2*t1^2)/(sp*u1) + (9*k2hat2*q2*t1^2)/(8*sp*u1) - 
         (5*sp*t1^2)/(8*u1) - (5*t1^3)/(8*u1) + (k2hat2*q2*t1^3)/
          (4*sp^2*u1) + (k2hat2*t1^3)/(8*sp*u1) - (m2*t1^3)/(2*sp*u1) - 
         (13*q2*t1^3)/(8*sp*u1) - (3*q2*t1^4)/(4*sp^2*u1) - t1^4/(8*sp*u1) + 
         (k2hat2*u1)/2 + (3*m2*u1)/2 - (k2hat2*m2*u1)/sp - (m2^2*u1)/sp - 
         (k2hat2*q2*u1)/(2*sp) + (3*t1*u1)/8 - (k2hat2*q2*t1*u1)/(2*sp^2) - 
         (m2*q2*t1*u1)/(2*sp^2) + (5*k2hat2*t1*u1)/(8*sp) - 
         (3*m2*t1*u1)/(8*sp) - (5*q2*t1*u1)/(8*sp) + (m2*t1^2*u1)/(2*sp^2) + 
         (q2*t1^2*u1)/(4*sp^2) + (3*t1^2*u1)/(8*sp) + (t1^3*u1)/(2*sp^2) + 
         (k2hat2*u1^2)/(2*sp) + (m2*u1^2)/(2*sp) + (t1*u1^2)/(4*sp) + 
         (t1^2*u1^2)/(4*sp^2) + (k2hat2*m2*\[Epsilon])/4 - 
         (3*k2hat2*q2*\[Epsilon])/8 - (k2hat2*q2^2*\[Epsilon])/(4*sp) + 
         (m2*sp*\[Epsilon])/4 - (5*k2hat2*t1*\[Epsilon])/8 + 
         (m2*t1*\[Epsilon])/4 - (q2*t1*\[Epsilon])/8 + 
         (3*k2hat2*q2*t1*\[Epsilon])/(4*sp) + (sp*t1*\[Epsilon])/4 + 
         (t1^2*\[Epsilon])/2 + (k2hat2*q2*t1^2*\[Epsilon])/(2*sp^2) - 
         (3*k2hat2*t1^2*\[Epsilon])/(8*sp) - (q2*t1^2*\[Epsilon])/(8*sp) + 
         (3*t1^3*\[Epsilon])/(8*sp) + (t1^4*\[Epsilon])/(8*sp^2) + 
         (k2hat2*sp*t1*\[Epsilon])/(8*u1) + (k2hat2*t1^2*\[Epsilon])/(4*u1) + 
         (k2hat2*t1^3*\[Epsilon])/(8*sp*u1) + (3*k2hat2*u1*\[Epsilon])/8 + 
         (m2*u1*\[Epsilon])/2 + (3*t1*u1*\[Epsilon])/8 + 
         (k2hat2*t1*u1*\[Epsilon])/(4*sp) + (m2*t1*u1*\[Epsilon])/(4*sp) - 
         (q2*t1*u1*\[Epsilon])/(8*sp) + (t1^2*u1*\[Epsilon])/(2*sp) + 
         (t1^3*u1*\[Epsilon])/(4*sp^2) + (k2hat2*u1^2*\[Epsilon])/(4*sp) + 
         (m2*u1^2*\[Epsilon])/(4*sp) + (t1*u1^2*\[Epsilon])/(8*sp) + 
         (t1^2*u1^2*\[Epsilon])/(8*sp^2), (7*k2hat2)/8 + (9*m2)/4 + q2/8 + 
         m2^2/sp - (k2hat2*q2)/(4*sp) - q2^2/(8*sp) + t1/4 + 
         (q2^2*t1)/(8*sp^2) - (k2hat2*t1)/(2*sp) + (11*m2*t1)/(8*sp) + 
         (q2*t1)/(8*sp) - (m2*t1^2)/(2*sp^2) - t1^2/(4*sp) - t1^3/(4*sp^2) + 
         (3*k2hat2*m2)/(4*u1) + m2^2/u1 - (7*k2hat2*q2)/(8*u1) - 
         q2^2/(8*u1) + (2*k2hat2*m2*q2)/(sp*u1) + (5*k2hat2*q2^2)/(8*sp*u1) + 
         (7*m2*sp)/(8*u1) + (k2hat2*t1)/(4*u1) + (13*m2*t1)/(8*u1) + 
         (3*q2*t1)/(8*u1) + (4*k2hat2*m2*q2*t1)/(sp^2*u1) + 
         (3*k2hat2*q2^2*t1)/(2*sp^2*u1) - (k2hat2*m2*t1)/(sp*u1) - 
         (7*k2hat2*q2*t1)/(8*sp*u1) - (m2*q2*t1)/(sp*u1) + (sp*t1)/(8*u1) + 
         t1^2/(8*u1) - (k2hat2*q2*t1^2)/(4*sp^2*u1) - 
         (m2*q2*t1^2)/(2*sp^2*u1) + (3*q2^2*t1^2)/(8*sp^2*u1) - 
         (k2hat2*t1^2)/(8*sp*u1) + (m2*t1^2)/(2*sp*u1) + 
         (q2*t1^2)/(2*sp*u1) + (5*q2*t1^3)/(8*sp^2*u1) + t1^3/(8*sp*u1) - 
         (3*k2hat2*u1)/(8*sp) + (9*m2*u1)/(8*sp) + (q2*u1)/(8*sp) - 
         (m2*t1*u1)/(2*sp^2) - (q2*t1*u1)/(8*sp^2) + (t1*u1)/(8*sp) - 
         (t1^2*u1)/(2*sp^2) - (t1*u1^2)/(4*sp^2) + (k2hat2*\[Epsilon])/8 + 
         (k2hat2*q2*\[Epsilon])/(2*sp) - (t1*\[Epsilon])/8 - 
         (k2hat2*t1*\[Epsilon])/(4*sp) - (t1^2*\[Epsilon])/(4*sp) - 
         (t1^3*\[Epsilon])/(8*sp^2) + (k2hat2*m2*\[Epsilon])/(4*u1) - 
         (k2hat2*q2*\[Epsilon])/(8*u1) - (k2hat2*t1*\[Epsilon])/(4*u1) - 
         (k2hat2*q2*t1*\[Epsilon])/(8*sp*u1) - (k2hat2*t1^2*\[Epsilon])/
          (8*sp*u1) - (k2hat2*u1*\[Epsilon])/(2*sp) - (t1*u1*\[Epsilon])/
          (4*sp) - (t1^2*u1*\[Epsilon])/(4*sp^2) - (t1*u1^2*\[Epsilon])/
          (8*sp^2), 0, 0}, {-2*k2hat2*m2 - 4*k2hat2*q2 + (13*k2hat2*sp)/2 + 
         10*m2*sp - (2*k2hat2*m2*sp)/t1 + (k2hat2*t1)/2 - (3*m2*t1)/4 + 
         (21*q2*t1)/4 - (7*k2hat2*q2*t1)/(2*sp) - (k2hat2*q2*t1^2)/sp^2 + 
         (k2hat2*t1^2)/(4*sp) - (m2*t1^2)/(2*sp) + (85*q2*t1^2)/(8*sp) + 
         (q2*t1^3)/(4*sp^2) + 4*k2hat2*u1 + 7*m2*u1 + (k2hat2*t1*u1)/(2*sp) - 
         (m2*t1*u1)/(2*sp) + (5*q2*t1*u1)/(4*sp) + (5*q2*t1^2*u1)/(2*sp^2) - 
         (k2hat2*m2*\[Epsilon])/2 + (k2hat2*q2*\[Epsilon])/4 + 
         (k2hat2*sp*\[Epsilon])/4 + (k2hat2*m2*sp*\[Epsilon])/(2*t1) + 
         (k2hat2*t1*\[Epsilon])/2 + (k2hat2*q2*t1*\[Epsilon])/(4*sp) - 
         (k2hat2*q2*t1^2*\[Epsilon])/(2*sp^2) + (k2hat2*t1^2*\[Epsilon])/
          (4*sp) - (k2hat2*u1*\[Epsilon])/4 + (k2hat2*t1*u1*\[Epsilon])/
          (4*sp), (9*k2hat2)/8 + (59*m2)/8 - (39*q2)/8 - (4*k2hat2*m2)/sp - 
         (3*m2^2)/sp - (9*k2hat2*q2)/(4*sp) + (m2*q2)/(2*sp) + 
         (9*q2^2)/(8*sp) + (27*sp)/8 - (k2hat2*m2)/(2*t1) + m2^2/t1 + 
         (m2*q2)/(2*t1) + (k2hat2*sp)/(2*t1) + (7*m2*sp)/(8*t1) + (41*t1)/8 - 
         (k2hat2*q2*t1)/sp^2 + (m2*q2*t1)/(2*sp^2) + (5*q2^2*t1)/(8*sp^2) + 
         (3*k2hat2*t1)/(2*sp) - (13*m2*t1)/(8*sp) - (9*q2*t1)/(2*sp) + 
         (m2*t1^2)/(2*sp^2) + (17*q2*t1^2)/(8*sp^2) + (3*t1^2)/(4*sp) + 
         t1^3/(4*sp^2) - (5*k2hat2*m2)/(4*u1) - (5*k2hat2*q2)/(8*u1) - 
         (3*m2*q2)/(4*u1) + q2^2/(2*u1) + (2*k2hat2*m2*q2)/(sp*u1) + 
         (5*k2hat2*q2^2)/(4*sp*u1) - (11*k2hat2*sp)/(4*u1) - (m2*sp)/(4*u1) - 
         (13*q2*sp)/(8*u1) - sp^2/(4*u1) + (4*k2hat2*m2^2)/(t1*u1) + 
         (2*k2hat2*m2*q2)/(t1*u1) + (k2hat2*m2*sp)/(2*t1*u1) + 
         (m2*sp^2)/(t1*u1) - (k2hat2*t1)/(8*u1) - (5*m2*t1)/(2*u1) + 
         (13*q2*t1)/(4*u1) + (k2hat2*q2^2*t1)/(2*sp^2*u1) + 
         (3*k2hat2*m2*t1)/(sp*u1) + (2*m2^2*t1)/(sp*u1) + 
         (k2hat2*q2*t1)/(8*sp*u1) + (5*m2*q2*t1)/(4*sp*u1) + 
         (q2^2*t1)/(2*sp*u1) - (5*sp*t1)/(8*u1) - (5*t1^2)/(8*u1) - 
         (5*k2hat2*q2*t1^2)/(4*sp^2*u1) + (m2*q2*t1^2)/(2*sp^2*u1) + 
         (3*k2hat2*t1^2)/(8*sp*u1) - (m2*t1^2)/(4*sp*u1) + 
         (15*q2*t1^2)/(8*sp*u1) - (q2*t1^3)/(sp^2*u1) - t1^3/(8*sp*u1) + 
         (25*u1)/8 + (3*k2hat2*u1)/(2*sp) - (2*m2*u1)/sp - (7*q2*u1)/(8*sp) + 
         (m2*u1)/(8*t1) - (m2*t1*u1)/(2*sp^2) - (5*q2*t1*u1)/(8*sp^2) + 
         (13*t1*u1)/(8*sp) + (t1^2*u1)/(2*sp^2) + (t1*u1^2)/(8*sp^2) + 
         (5*k2hat2*m2)/(2*(sp + t1 + u1)) - (3*m2^2)/(sp + t1 + u1) + 
         (5*k2hat2*q2)/(4*(sp + t1 + u1)) - (2*m2*q2)/(sp + t1 + u1) - 
         q2^2/(4*(sp + t1 + u1)) - (4*k2hat2*m2*q2)/(sp*(sp + t1 + u1)) - 
         (2*k2hat2*q2^2)/(sp*(sp + t1 + u1)) - (3*k2hat2*sp)/
          (4*(sp + t1 + u1)) + (m2*sp)/(2*(sp + t1 + u1)) - 
         (5*q2*sp)/(8*(sp + t1 + u1)) - sp^2/(8*(sp + t1 + u1)) - 
         (4*k2hat2*m2^2)/(t1*(sp + t1 + u1)) - (2*k2hat2*m2*q2)/
          (t1*(sp + t1 + u1)) + (k2hat2*m2*sp)/(t1*(sp + t1 + u1)) - 
         (m2^2*sp)/(t1*(sp + t1 + u1)) - (m2*q2*sp)/(2*t1*(sp + t1 + u1)) - 
         (3*m2*sp^2)/(8*t1*(sp + t1 + u1)) + (27*m2*t1)/(8*(sp + t1 + u1)) - 
         (q2*t1)/(sp + t1 + u1) - (4*k2hat2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) - 
         (2*k2hat2*q2^2*t1)/(sp^2*(sp + t1 + u1)) + (4*k2hat2*m2*t1)/
          (sp*(sp + t1 + u1)) + (3*k2hat2*q2*t1)/(sp*(sp + t1 + u1)) - 
         (4*m2*q2*t1)/(sp*(sp + t1 + u1)) - (q2^2*t1)/(sp*(sp + t1 + u1)) - 
         (sp*t1)/(8*(sp + t1 + u1)) - (3*t1^2)/(8*(sp + t1 + u1)) + 
         (k2hat2*q2*t1^2)/(2*sp^2*(sp + t1 + u1)) - (3*m2*q2*t1^2)/
          (sp^2*(sp + t1 + u1)) - (q2^2*t1^2)/(2*sp^2*(sp + t1 + u1)) + 
         (3*m2*t1^2)/(2*sp*(sp + t1 + u1)) + (3*q2*t1^3)/
          (8*sp^2*(sp + t1 + u1)) - t1^3/(8*sp*(sp + t1 + u1)) - 
         (4*k2hat2*m2^2)/(u1*(sp + t1 + u1)) - (2*k2hat2*m2*q2)/
          (u1*(sp + t1 + u1)) + (k2hat2*m2*sp)/(2*u1*(sp + t1 + u1)) - 
         (2*m2^2*sp)/(u1*(sp + t1 + u1)) + (3*k2hat2*q2*sp)/
          (4*u1*(sp + t1 + u1)) - (m2*q2*sp)/(2*u1*(sp + t1 + u1)) + 
         (q2^2*sp)/(4*u1*(sp + t1 + u1)) - (m2*sp^2)/(4*u1*(sp + t1 + u1)) + 
         (q2*sp^2)/(8*u1*(sp + t1 + u1)) - (2*m2^2*t1)/(u1*(sp + t1 + u1)) + 
         (3*k2hat2*q2*t1)/(4*u1*(sp + t1 + u1)) - (5*m2*q2*t1)/
          (2*u1*(sp + t1 + u1)) + (q2^2*t1)/(4*u1*(sp + t1 + u1)) - 
         (4*k2hat2*m2*q2*t1)/(sp*u1*(sp + t1 + u1)) - (2*k2hat2*q2^2*t1)/
          (sp*u1*(sp + t1 + u1)) + (m2*sp*t1)/(u1*(sp + t1 + u1)) + 
         (q2*sp*t1)/(4*u1*(sp + t1 + u1)) + (m2*t1^2)/(4*u1*(sp + t1 + u1)) + 
         (7*q2*t1^2)/(8*u1*(sp + t1 + u1)) - (4*k2hat2*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (2*k2hat2*q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (4*m2*q2*t1^2)/(sp*u1*(sp + t1 + u1)) - 
         (2*m2*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) + 
         (q2*t1^3)/(sp*u1*(sp + t1 + u1)) + (q2*t1^4)/
          (4*sp^2*u1*(sp + t1 + u1)) - (k2hat2*u1)/(2*(sp + t1 + u1)) + 
         (3*m2*u1)/(sp + t1 + u1) + (q2*u1)/(8*(sp + t1 + u1)) + 
         (4*k2hat2*m2*u1)/(sp*(sp + t1 + u1)) + (5*k2hat2*q2*u1)/
          (2*sp*(sp + t1 + u1)) - (m2*q2*u1)/(sp*(sp + t1 + u1)) - 
         (q2^2*u1)/(2*sp*(sp + t1 + u1)) + (k2hat2*m2*u1)/
          (2*t1*(sp + t1 + u1)) - (m2^2*u1)/(t1*(sp + t1 + u1)) - 
         (m2*q2*u1)/(2*t1*(sp + t1 + u1)) + (m2*sp*u1)/
          (2*t1*(sp + t1 + u1)) - (t1*u1)/(4*(sp + t1 + u1)) + 
         (k2hat2*q2*t1*u1)/(2*sp^2*(sp + t1 + u1)) - (m2*q2*t1*u1)/
          (sp^2*(sp + t1 + u1)) - (q2^2*t1*u1)/(2*sp^2*(sp + t1 + u1)) - 
         (k2hat2*t1*u1)/(2*sp*(sp + t1 + u1)) + (4*m2*t1*u1)/
          (sp*(sp + t1 + u1)) + (7*q2*t1*u1)/(8*sp*(sp + t1 + u1)) + 
         (m2*t1^2*u1)/(sp^2*(sp + t1 + u1)) + (q2*t1^2*u1)/
          (2*sp^2*(sp + t1 + u1)) - (t1^2*u1)/(2*sp*(sp + t1 + u1)) - 
         (k2hat2*u1^2)/(2*sp*(sp + t1 + u1)) + (3*m2*u1^2)/
          (2*sp*(sp + t1 + u1)) + (3*q2*u1^2)/(8*sp*(sp + t1 + u1)) - 
         (m2*u1^2)/(8*t1*(sp + t1 + u1)) + (m2*t1*u1^2)/
          (sp^2*(sp + t1 + u1)) + (3*q2*t1*u1^2)/(8*sp^2*(sp + t1 + u1)) - 
         (3*t1*u1^2)/(8*sp*(sp + t1 + u1)) - (t1^2*u1^2)/
          (8*sp^2*(sp + t1 + u1)) + u1^3/(8*sp*(sp + t1 + u1)) - 
         (t1*u1^3)/(8*sp^2*(sp + t1 + u1)) + (3*k2hat2*\[Epsilon])/4 + 
         (m2*\[Epsilon])/2 - (k2hat2*q2*\[Epsilon])/(4*sp) - 
         (sp*\[Epsilon])/8 - (k2hat2*sp*\[Epsilon])/(4*t1) - 
         (7*k2hat2*t1*\[Epsilon])/(8*sp) - (m2*t1*\[Epsilon])/(4*sp) + 
         (q2*t1*\[Epsilon])/(4*sp) + (q2*t1^2*\[Epsilon])/(4*sp^2) + 
         (t1^2*\[Epsilon])/(4*sp) + (t1^3*\[Epsilon])/(8*sp^2) + 
         (k2hat2*m2*\[Epsilon])/u1 - (k2hat2*q2*\[Epsilon])/(8*u1) + 
         (k2hat2*sp*\[Epsilon])/(8*u1) + (3*k2hat2*t1*\[Epsilon])/(8*u1) + 
         (m2*t1*\[Epsilon])/(4*u1) + (q2*t1*\[Epsilon])/(4*u1) + 
         (k2hat2*q2*t1*\[Epsilon])/(2*sp*u1) + (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp^2*u1) + (3*k2hat2*t1^2*\[Epsilon])/(8*sp*u1) + 
         (m2*t1^2*\[Epsilon])/(4*sp*u1) + (q2*t1^2*\[Epsilon])/(2*sp*u1) + 
         (q2*t1^3*\[Epsilon])/(4*sp^2*u1) - (u1*\[Epsilon])/8 + 
         (3*k2hat2*u1*\[Epsilon])/(4*sp) + (m2*u1*\[Epsilon])/(2*sp) + 
         (t1*u1*\[Epsilon])/(4*sp) + (t1^2*u1*\[Epsilon])/(8*sp^2) + 
         (u1^2*\[Epsilon])/(8*sp) + (t1*u1^2*\[Epsilon])/(8*sp^2) - 
         (k2hat2*m2*\[Epsilon])/(2*(sp + t1 + u1)) + (k2hat2*q2*\[Epsilon])/
          (8*(sp + t1 + u1)) + (k2hat2*sp*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (m2*sp*\[Epsilon])/(2*(sp + t1 + u1)) + (sp^2*\[Epsilon])/
          (8*(sp + t1 + u1)) + (5*k2hat2*t1*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (m2*t1*\[Epsilon])/(2*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (2*(sp + t1 + u1)) - (k2hat2*q2*t1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (3*sp*t1*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (3*t1^2*\[Epsilon])/(8*(sp + t1 + u1)) - (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (k2hat2*t1^2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/(sp*(sp + t1 + u1)) - 
         (q2*t1^3*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + 
         (t1^3*\[Epsilon])/(8*sp*(sp + t1 + u1)) - (k2hat2*m2*sp*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (k2hat2*q2*sp*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (k2hat2*m2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (3*k2hat2*q2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*sp*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (m2*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (3*q2*t1^2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (k2hat2*q2*t1^2*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) - (k2hat2*q2*t1^3*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (3*q2*t1^3*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (q2*t1^4*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (k2hat2*u1*\[Epsilon])/
          (8*(sp + t1 + u1)) - (m2*u1*\[Epsilon])/(4*(sp + t1 + u1)) + 
         (sp*u1*\[Epsilon])/(4*(sp + t1 + u1)) + (5*t1*u1*\[Epsilon])/
          (8*(sp + t1 + u1)) + (k2hat2*t1*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (q2*t1*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (q2*t1^2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (t1^2*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (t1^3*u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (u1^2*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (t1*u1^2*\[Epsilon])/(4*sp*(sp + t1 + u1)) + (t1^2*u1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)), -1 + (5*k2hat2)/(4*sp) - m2/(4*sp) - 
         (13*q2)/(8*sp) - (3*m2)/(8*t1) + (5*sp)/(8*t1) - (2*m2*t1)/sp^2 - 
         (5*q2*t1)/(4*sp^2) - (7*t1)/(8*sp) - (m2*q2)/u1^2 + 
         (21*m2*sp)/(2*u1^2) + (21*q2*sp)/(4*u1^2) - (m2*t1)/(2*u1^2) + 
         (63*q2*t1)/(4*u1^2) - (3*m2*q2*t1)/(2*sp*u1^2) + 
         (21*q2*t1^2)/(2*sp*u1^2) - k2hat2/(8*u1) + (93*m2)/(8*u1) + 
         (3*q2)/(8*u1) - m2^2/(sp*u1) - (5*k2hat2*q2)/(4*sp*u1) - 
         (2*m2*q2)/(sp*u1) + q2^2/(8*sp*u1) - (7*sp)/(4*u1) - 
         (k2hat2*m2)/(t1*u1) - m2^2/(t1*u1) - (k2hat2*sp)/(4*t1*u1) + 
         (5*m2*sp)/(8*t1*u1) - (q2*sp)/(2*t1*u1) + sp^2/(4*t1*u1) - 
         (7*t1)/u1 - (3*k2hat2*q2*t1)/(2*sp^2*u1) - (3*m2*q2*t1)/
          (2*sp^2*u1) + (q2^2*t1)/(8*sp^2*u1) + (m2*t1)/(sp*u1) + 
         (57*q2*t1)/(8*sp*u1) + (13*q2*t1^2)/(8*sp^2*u1) - 
         (5*t1^2)/(8*sp*u1) - t1^3/(8*sp^2*u1) + u1/(8*sp) + 
         (t1*u1)/(8*sp^2) - k2hat2/(4*(sp + t1 + u1)) + 
         (3*m2)/(2*(sp + t1 + u1)) - (7*q2)/(8*(sp + t1 + u1)) + 
         (k2hat2*q2)/(sp*(sp + t1 + u1)) + (m2*q2)/(sp*(sp + t1 + u1)) - 
         sp/(8*(sp + t1 + u1)) + (k2hat2*m2)/(t1*(sp + t1 + u1)) + 
         m2^2/(t1*(sp + t1 + u1)) - (k2hat2*sp)/(4*t1*(sp + t1 + u1)) + 
         (3*m2*sp)/(4*t1*(sp + t1 + u1)) - (q2*sp)/(2*t1*(sp + t1 + u1)) - 
         sp^2/(8*t1*(sp + t1 + u1)) + t1/(2*(sp + t1 + u1)) + 
         (k2hat2*q2*t1)/(sp^2*(sp + t1 + u1)) + (m2*q2*t1)/
          (sp^2*(sp + t1 + u1)) - (k2hat2*t1)/(sp*(sp + t1 + u1)) + 
         (3*m2*t1)/(sp*(sp + t1 + u1)) + (q2*t1)/(sp*(sp + t1 + u1)) + 
         (2*m2*t1^2)/(sp^2*(sp + t1 + u1)) + (q2*t1^2)/
          (sp^2*(sp + t1 + u1)) + t1^2/(8*sp*(sp + t1 + u1)) - 
         (k2hat2*m2*sp)/(u1^2*(sp + t1 + u1)) - (k2hat2*q2*sp)/
          (2*u1^2*(sp + t1 + u1)) - (m2*q2*sp)/(2*u1^2*(sp + t1 + u1)) - 
         (m2*sp^2)/(4*u1^2*(sp + t1 + u1)) - (q2*sp^2)/
          (8*u1^2*(sp + t1 + u1)) - (3*k2hat2*q2*t1)/
          (2*u1^2*(sp + t1 + u1)) - (m2*q2*t1)/(2*u1^2*(sp + t1 + u1)) - 
         (m2*sp*t1)/(4*u1^2*(sp + t1 + u1)) - (q2*sp*t1)/
          (2*u1^2*(sp + t1 + u1)) - (5*q2*t1^2)/(8*u1^2*(sp + t1 + u1)) - 
         (k2hat2*q2*t1^2)/(sp*u1^2*(sp + t1 + u1)) - 
         (q2*t1^3)/(4*sp*u1^2*(sp + t1 + u1)) + (k2hat2*m2)/
          (u1*(sp + t1 + u1)) + m2^2/(u1*(sp + t1 + u1)) - 
         (k2hat2*q2)/(2*u1*(sp + t1 + u1)) + (m2*q2)/(2*u1*(sp + t1 + u1)) + 
         (k2hat2*sp)/(4*u1*(sp + t1 + u1)) - (5*m2*sp)/
          (4*u1*(sp + t1 + u1)) - (3*q2*sp)/(4*u1*(sp + t1 + u1)) + 
         sp^2/(8*u1*(sp + t1 + u1)) + (m2^2*sp)/(t1*u1*(sp + t1 + u1)) - 
         (m2*sp^2)/(8*t1*u1*(sp + t1 + u1)) + (3*k2hat2*t1)/
          (4*u1*(sp + t1 + u1)) + (m2*t1)/(8*u1*(sp + t1 + u1)) - 
         (9*q2*t1)/(8*u1*(sp + t1 + u1)) + (k2hat2*q2*t1)/
          (sp*u1*(sp + t1 + u1)) + (2*m2*q2*t1)/(sp*u1*(sp + t1 + u1)) + 
         (3*sp*t1)/(4*u1*(sp + t1 + u1)) + (3*t1^2)/(4*u1*(sp + t1 + u1)) + 
         (k2hat2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + (m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (m2*t1^2)/(2*sp*u1*(sp + t1 + u1)) - 
         (q2*t1^2)/(4*sp*u1*(sp + t1 + u1)) + (q2*t1^3)/
          (8*sp^2*u1*(sp + t1 + u1)) + t1^3/(8*sp*u1*(sp + t1 + u1)) - 
         (k2hat2*u1)/(sp*(sp + t1 + u1)) + (3*m2*u1)/(2*sp*(sp + t1 + u1)) + 
         (3*q2*u1)/(4*sp*(sp + t1 + u1)) + (3*m2*u1)/(8*t1*(sp + t1 + u1)) + 
         (sp*u1)/(8*t1*(sp + t1 + u1)) + (2*m2*t1*u1)/(sp^2*(sp + t1 + u1)) + 
         (7*q2*t1*u1)/(8*sp^2*(sp + t1 + u1)) - (5*t1*u1)/
          (8*sp*(sp + t1 + u1)) - (t1^2*u1)/(2*sp^2*(sp + t1 + u1)) - 
         u1^2/(8*sp*(sp + t1 + u1)) - (t1*u1^2)/(2*sp^2*(sp + t1 + u1)) - 
         (3*\[Epsilon])/8 + (k2hat2*\[Epsilon])/(2*sp) + 
         (m2*\[Epsilon])/(4*sp) + (q2*\[Epsilon])/(8*sp) - 
         (sp*\[Epsilon])/(8*t1) - (t1*\[Epsilon])/(2*sp) - 
         (t1^2*\[Epsilon])/(4*sp^2) + (m2*t1*\[Epsilon])/(4*u1^2) - 
         (k2hat2*\[Epsilon])/(8*u1) - (m2*\[Epsilon])/(2*u1) - 
         (k2hat2*q2*\[Epsilon])/(2*sp*u1) - (sp*\[Epsilon])/(8*u1) - 
         (k2hat2*m2*\[Epsilon])/(2*t1*u1) - (k2hat2*sp*\[Epsilon])/
          (8*t1*u1) - (t1*\[Epsilon])/(4*u1) - (k2hat2*q2*t1*\[Epsilon])/
          (2*sp^2*u1) + (k2hat2*t1*\[Epsilon])/(2*sp*u1) - 
         (m2*t1*\[Epsilon])/(4*sp*u1) - (q2*t1*\[Epsilon])/(8*sp*u1) - 
         (t1^2*\[Epsilon])/(8*sp*u1) + (u1*\[Epsilon])/(8*sp) + 
         (t1*u1*\[Epsilon])/(8*sp^2) - (k2hat2*\[Epsilon])/
          (8*(sp + t1 + u1)) - (q2*\[Epsilon])/(4*(sp + t1 + u1)) + 
         (k2hat2*q2*\[Epsilon])/(2*sp*(sp + t1 + u1)) + 
         (sp*\[Epsilon])/(4*(sp + t1 + u1)) + (k2hat2*m2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (k2hat2*sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (t1*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (k2hat2*q2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) - 
         (k2hat2*t1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (t1^2*\[Epsilon])/(2*sp*(sp + t1 + u1)) + 
         (t1^3*\[Epsilon])/(4*sp^2*(sp + t1 + u1)) - 
         (k2hat2*m2*sp*\[Epsilon])/(2*u1^2*(sp + t1 + u1)) - 
         (k2hat2*q2*sp*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) - 
         (m2*sp^2*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) - (3*k2hat2*q2*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (m2*sp*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - (5*q2*t1^2*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) - (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp*u1^2*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (4*sp*u1^2*(sp + t1 + u1)) + (k2hat2*m2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (k2hat2*q2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (k2hat2*sp*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon])/(4*u1*(sp + t1 + u1)) + (3*k2hat2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (5*q2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (k2hat2*q2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (3*q2*t1^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (t1^3*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) + (u1*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (k2hat2*u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) + (t1*u1*\[Epsilon])/(4*sp*(sp + t1 + u1)) + 
         (t1^2*u1*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) - (t1*u1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)), 3/(4*sp) + 1/(8*t1) + t1/(2*sp^2) + 
         (33*m2)/(4*u1^2) + (5*q2)/(4*u1^2) + (15*q2*t1)/(4*sp*u1^2) + 
         (5*q2*t1^2)/(2*sp^2*u1^2) + 7/(4*u1) - (7*m2)/(8*sp*u1) - 
         (3*q2)/(4*sp*u1) - (3*m2)/(4*t1*u1) - (3*q2)/(8*t1*u1) + 
         sp/(8*t1*u1) - (m2*t1)/(sp^2*u1) - (q2*t1)/(2*sp^2*u1) - 
         (2*t1)/(sp*u1) + (3*t1^2)/(8*sp^2*u1) - 7/(8*(sp + t1 + u1)) + 
         (2*m2)/(sp*(sp + t1 + u1)) + (5*q2)/(8*sp*(sp + t1 + u1)) + 
         (3*m2)/(4*t1*(sp + t1 + u1)) + (3*q2)/(8*t1*(sp + t1 + u1)) - 
         sp/(4*t1*(sp + t1 + u1)) + (m2*t1)/(sp^2*(sp + t1 + u1)) + 
         (q2*t1)/(4*sp^2*(sp + t1 + u1)) - (5*t1)/(4*sp*(sp + t1 + u1)) - 
         (5*t1^2)/(8*sp^2*(sp + t1 + u1)) + (m2*sp)/(u1^2*(sp + t1 + u1)) + 
         (q2*sp)/(4*u1^2*(sp + t1 + u1)) + (m2*t1)/(u1^2*(sp + t1 + u1)) + 
         (q2*t1)/(u1^2*(sp + t1 + u1)) + (5*q2*t1^2)/(4*sp*u1^2*
           (sp + t1 + u1)) + (q2*t1^3)/(2*sp^2*u1^2*(sp + t1 + u1)) + 
         (11*m2)/(4*u1*(sp + t1 + u1)) + (7*q2)/(4*u1*(sp + t1 + u1)) - 
         (3*sp)/(8*u1*(sp + t1 + u1)) + (5*m2*sp)/(4*t1*u1*(sp + t1 + u1)) + 
         (3*q2*sp)/(8*t1*u1*(sp + t1 + u1)) - sp^2/(8*t1*u1*(sp + t1 + u1)) - 
         (3*t1)/(8*u1*(sp + t1 + u1)) + (3*m2*t1)/(sp*u1*(sp + t1 + u1)) + 
         (17*q2*t1)/(8*sp*u1*(sp + t1 + u1)) + (m2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (3*q2*t1^2)/(4*sp^2*u1*(sp + t1 + u1)) - 
         t1^2/(8*sp*u1*(sp + t1 + u1)) - u1/(2*sp*(sp + t1 + u1)) - 
         u1/(8*t1*(sp + t1 + u1)) - (5*t1*u1)/(8*sp^2*(sp + t1 + u1)) + 
         (t1*\[Epsilon])/(4*sp^2) + (q2*\[Epsilon])/(8*u1^2) + 
         (3*q2*t1*\[Epsilon])/(8*sp*u1^2) + (q2*t1^2*\[Epsilon])/
          (4*sp^2*u1^2) - (5*\[Epsilon])/(8*u1) + (3*q2*\[Epsilon])/
          (8*sp*u1) + (m2*\[Epsilon])/(4*t1*u1) + (q2*\[Epsilon])/(8*t1*u1) - 
         (sp*\[Epsilon])/(8*t1*u1) + (q2*t1*\[Epsilon])/(4*sp^2*u1) - 
         (5*t1*\[Epsilon])/(8*sp*u1) - (t1^2*\[Epsilon])/(8*sp^2*u1) + 
         (5*\[Epsilon])/(8*(sp + t1 + u1)) - (3*q2*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) - (m2*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/(8*t1*(sp + t1 + u1)) + (sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (3*t1*\[Epsilon])/(8*sp*(sp + t1 + u1)) - 
         (t1^2*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - (5*q2*t1^2*\[Epsilon])/
          (8*sp*u1^2*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (4*sp^2*u1^2*(sp + t1 + u1)) - (m2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (5*q2*\[Epsilon])/(8*u1*(sp + t1 + u1)) + 
         (sp*\[Epsilon])/(2*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) + (sp^2*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) + (t1*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (q2*t1*\[Epsilon])/(sp*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (3*t1^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (t1^3*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) - (t1*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)), 5/(8*sp*u1) + 1/(4*t1*u1) + 
         (3*t1)/(8*sp^2*u1) - 1/(2*sp*(sp + t1 + u1)) - 
         1/(4*t1*(sp + t1 + u1)) - t1/(4*sp^2*(sp + t1 + u1)) - 
         1/(2*u1*(sp + t1 + u1)) - (3*t1)/(4*sp*u1*(sp + t1 + u1)) - 
         t1^2/(4*sp^2*u1*(sp + t1 + u1)) + \[Epsilon]/(4*sp*u1) + 
         \[Epsilon]/(8*t1*u1) + (t1*\[Epsilon])/(8*sp^2*u1) - 
         \[Epsilon]/(4*sp*(sp + t1 + u1)) - \[Epsilon]/
          (8*t1*(sp + t1 + u1)) - (t1*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) - 
         \[Epsilon]/(4*u1*(sp + t1 + u1)) - (3*t1*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1))}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}}}, {{{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, -(k2hat2*m2) - m2^2 - (3*k2hat2*q2)/4 - m2*q2 - 
         q2^2/8 - (k2hat2*m2*q2)/sp + (3*k2hat2*sp)/4 + (21*m2*sp)/8 + 
         (q2*sp)/8 + (3*m2^2*sp)/t1 - (k2hat2*q2*sp)/(2*t1) - 
         (2*m2*q2*sp)/t1 - (q2^2*sp)/(4*t1) + (m2*sp^2)/(4*t1) - 
         (3*k2hat2*t1)/8 + (m2*t1)/8 - (5*q2*t1)/8 + (k2hat2*q2^2*t1)/
          (2*sp^2) - (5*k2hat2*q2*t1)/(8*sp) - (m2*q2*t1)/(2*sp) + 
         (q2^2*t1)/(8*sp) + (3*sp*t1)/8 + t1^2/4 - (k2hat2*q2*t1^2)/
          (2*sp^2) - (m2*q2*t1^2)/(2*sp^2) - (q2^2*t1^2)/(8*sp^2) - 
         (q2*t1^2)/(4*sp) + (3*k2hat2*u1)/4 + (3*m2*u1)/4 - (q2*u1)/8 - 
         (k2hat2*m2*u1)/sp - (m2^2*u1)/sp - (k2hat2*q2*u1)/(2*sp) + 
         (sp*u1)/8 + (k2hat2*sp*u1)/(2*t1) + (2*m2*sp*u1)/t1 + 
         (q2*sp*u1)/(4*t1) + (t1*u1)/4 - (k2hat2*q2*t1*u1)/(2*sp^2) - 
         (m2*q2*t1*u1)/(2*sp^2) + (5*k2hat2*t1*u1)/(8*sp) + 
         (5*m2*t1*u1)/(8*sp) - (q2*t1*u1)/(4*sp) + (k2hat2*u1^2)/(2*sp) + 
         (m2*u1^2)/(2*sp) - (k2hat2*m2*\[Epsilon])/4 - 
         (3*k2hat2*q2*\[Epsilon])/8 - (m2*q2*\[Epsilon])/2 + 
         (q2^2*\[Epsilon])/8 - (k2hat2*q2^2*\[Epsilon])/(4*sp) + 
         (k2hat2*sp*\[Epsilon])/8 + (m2*sp*\[Epsilon])/2 - 
         (q2*sp*\[Epsilon])/8 - (k2hat2*m2*sp*\[Epsilon])/(2*t1) + 
         (k2hat2*q2*sp*\[Epsilon])/(4*t1) - (m2*q2*sp*\[Epsilon])/(2*t1) + 
         (q2^2*sp*\[Epsilon])/(8*t1) + (m2*sp^2*\[Epsilon])/(4*t1) - 
         (q2*sp^2*\[Epsilon])/(8*t1) - (k2hat2*t1*\[Epsilon])/8 + 
         (m2*t1*\[Epsilon])/4 - (q2*t1*\[Epsilon])/8 + 
         (k2hat2*q2*t1*\[Epsilon])/(4*sp) + (sp*t1*\[Epsilon])/8 + 
         (t1^2*\[Epsilon])/8 - (q2*t1^2*\[Epsilon])/(8*sp) + 
         (3*k2hat2*u1*\[Epsilon])/8 + (m2*u1*\[Epsilon])/2 - 
         (k2hat2*sp*u1*\[Epsilon])/(4*t1) - (q2*sp*u1*\[Epsilon])/(8*t1) + 
         (sp^2*u1*\[Epsilon])/(8*t1) + (t1*u1*\[Epsilon])/8 + 
         (k2hat2*t1*u1*\[Epsilon])/(4*sp) + (m2*t1*u1*\[Epsilon])/(4*sp) - 
         (q2*t1*u1*\[Epsilon])/(8*sp) + (k2hat2*u1^2*\[Epsilon])/(4*sp) + 
         (m2*u1^2*\[Epsilon])/(4*sp), (7*k2hat2)/8 + (5*m2)/8 + (3*q2)/4 - 
         (k2hat2*m2)/sp - (3*m2^2)/sp - (11*k2hat2*q2)/(4*sp) - 
         (7*m2*q2)/(2*sp) + (3*q2^2)/(2*sp) - (2*k2hat2*m2)/t1 + 
         (3*m2^2)/t1 - (2*m2*q2)/t1 - (m2*sp)/(2*t1) + (q2*sp)/(4*t1) + 
         t1/8 - (2*k2hat2*q2*t1)/sp^2 - (m2*q2*t1)/sp^2 + 
         (9*q2^2*t1)/(8*sp^2) + (5*k2hat2*t1)/(8*sp) - (m2*t1)/(8*sp) - 
         (5*q2*t1)/(2*sp) - (q2*t1^2)/sp^2 + (5*t1^2)/(8*sp) - 
         (k2hat2*m2)/(2*u1) + (2*m2^2)/u1 - (3*k2hat2*q2)/(8*u1) - 
         (3*q2^2)/(8*u1) + (2*k2hat2*m2*q2)/(sp*u1) + (4*m2^2*q2)/(sp*u1) + 
         (5*k2hat2*q2^2)/(8*sp*u1) + (m2*q2^2)/(sp*u1) - q2^3/(2*sp*u1) + 
         (m2*sp)/(8*u1) - (7*m2*t1)/(8*u1) + (q2*t1)/(4*u1) + 
         (4*k2hat2*m2*q2*t1)/(sp^2*u1) + (4*m2^2*q2*t1)/(sp^2*u1) + 
         (3*k2hat2*q2^2*t1)/(2*sp^2*u1) + (m2*q2^2*t1)/(sp^2*u1) - 
         (q2^3*t1)/(2*sp^2*u1) - (3*k2hat2*q2*t1)/(4*sp*u1) - 
         (5*m2*q2*t1)/(2*sp*u1) + (3*q2^2*t1)/(4*sp*u1) - 
         (k2hat2*q2*t1^2)/(sp^2*u1) - (m2*q2*t1^2)/(2*sp^2*u1) + 
         (9*q2^2*t1^2)/(8*sp^2*u1) - (3*q2*t1^2)/(8*sp*u1) - 
         (3*q2*t1^3)/(8*sp^2*u1) + u1/8 + (17*k2hat2*u1)/(8*sp) + 
         (5*m2*u1)/(8*sp) - (7*q2*u1)/(4*sp) + (3*m2*u1)/(2*t1) - 
         (sp*u1)/(4*t1) - (7*q2*t1*u1)/(8*sp^2) + (5*t1*u1)/(4*sp) + 
         (3*u1^2)/(4*sp) + (5*k2hat2*m2)/(sp + t1 + u1) + 
         (3*m2^2)/(sp + t1 + u1) + (3*k2hat2*q2)/(2*(sp + t1 + u1)) + 
         (4*m2*q2)/(sp + t1 + u1) - (7*q2^2)/(4*(sp + t1 + u1)) - 
         (4*k2hat2*m2*q2)/(sp*(sp + t1 + u1)) - (8*m2^2*q2)/
          (sp*(sp + t1 + u1)) - (2*k2hat2*q2^2)/(sp*(sp + t1 + u1)) - 
         (2*m2*q2^2)/(sp*(sp + t1 + u1)) + q2^3/(sp*(sp + t1 + u1)) - 
         (3*k2hat2*sp)/(4*(sp + t1 + u1)) + (7*m2*sp)/(4*(sp + t1 + u1)) - 
         (3*q2*sp)/(4*(sp + t1 + u1)) - (4*k2hat2*m2^2)/(t1*(sp + t1 + u1)) - 
         (2*k2hat2*m2*q2)/(t1*(sp + t1 + u1)) - (4*m2^2*q2)/
          (t1*(sp + t1 + u1)) - (m2*q2^2)/(t1*(sp + t1 + u1)) + 
         q2^3/(2*t1*(sp + t1 + u1)) + (3*k2hat2*m2*sp)/
          (2*t1*(sp + t1 + u1)) + (k2hat2*q2*sp)/(4*t1*(sp + t1 + u1)) + 
         (q2^2*sp)/(4*t1*(sp + t1 + u1)) - (m2*sp^2)/(4*t1*(sp + t1 + u1)) - 
         (k2hat2*t1)/(2*(sp + t1 + u1)) + (m2*t1)/(sp + t1 + u1) + 
         (q2*t1)/(sp + t1 + u1) - (4*k2hat2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) - 
         (4*m2^2*q2*t1)/(sp^2*(sp + t1 + u1)) - (2*k2hat2*q2^2*t1)/
          (sp^2*(sp + t1 + u1)) - (m2*q2^2*t1)/(sp^2*(sp + t1 + u1)) + 
         (q2^3*t1)/(2*sp^2*(sp + t1 + u1)) + (4*k2hat2*m2*t1)/
          (sp*(sp + t1 + u1)) + (4*m2^2*t1)/(sp*(sp + t1 + u1)) + 
         (6*k2hat2*q2*t1)/(sp*(sp + t1 + u1)) + (5*m2*q2*t1)/
          (sp*(sp + t1 + u1)) - (7*q2^2*t1)/(2*sp*(sp + t1 + u1)) + 
         (sp*t1)/(4*(sp + t1 + u1)) - t1^2/(4*(sp + t1 + u1)) + 
         (3*k2hat2*q2*t1^2)/(sp^2*(sp + t1 + u1)) + (m2*q2*t1^2)/
          (sp^2*(sp + t1 + u1)) - (7*q2^2*t1^2)/(4*sp^2*(sp + t1 + u1)) - 
         (k2hat2*t1^2)/(sp*(sp + t1 + u1)) + (9*q2*t1^2)/
          (4*sp*(sp + t1 + u1)) + (q2*t1^3)/(sp^2*(sp + t1 + u1)) - 
         t1^3/(4*sp*(sp + t1 + u1)) - (4*k2hat2*m2^2)/(u1*(sp + t1 + u1)) - 
         (2*k2hat2*m2*q2)/(u1*(sp + t1 + u1)) - (4*m2^2*q2)/
          (u1*(sp + t1 + u1)) - (m2*q2^2)/(u1*(sp + t1 + u1)) + 
         q2^3/(2*u1*(sp + t1 + u1)) + (k2hat2*m2*sp)/(2*u1*(sp + t1 + u1)) + 
         (m2^2*sp)/(u1*(sp + t1 + u1)) - (3*m2*q2*sp)/(2*u1*(sp + t1 + u1)) + 
         (q2^2*sp)/(4*u1*(sp + t1 + u1)) - (m2*sp^2)/(4*u1*(sp + t1 + u1)) + 
         (k2hat2*m2*t1)/(u1*(sp + t1 + u1)) - (m2^2*t1)/(u1*(sp + t1 + u1)) - 
         (q2^2*t1)/(2*u1*(sp + t1 + u1)) - (4*k2hat2*m2*q2*t1)/
          (sp*u1*(sp + t1 + u1)) - (8*m2^2*q2*t1)/(sp*u1*(sp + t1 + u1)) - 
         (2*k2hat2*q2^2*t1)/(sp*u1*(sp + t1 + u1)) - (2*m2*q2^2*t1)/
          (sp*u1*(sp + t1 + u1)) + (q2^3*t1)/(sp*u1*(sp + t1 + u1)) + 
         (m2*sp*t1)/(u1*(sp + t1 + u1)) - (q2*sp*t1)/(4*u1*(sp + t1 + u1)) + 
         (m2*t1^2)/(4*u1*(sp + t1 + u1)) - (4*k2hat2*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (4*m2^2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (2*k2hat2*q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (m2*q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (q2^3*t1^2)/(2*sp^2*u1*(sp + t1 + u1)) + 
         (k2hat2*q2*t1^2)/(sp*u1*(sp + t1 + u1)) + (m2*q2*t1^2)/
          (2*sp*u1*(sp + t1 + u1)) - (3*q2^2*t1^2)/(2*sp*u1*(sp + t1 + u1)) + 
         (k2hat2*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) - (3*q2^2*t1^3)/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2*t1^3)/(2*sp*u1*(sp + t1 + u1)) + 
         (q2*t1^4)/(4*sp^2*u1*(sp + t1 + u1)) - (3*k2hat2*u1)/
          (2*(sp + t1 + u1)) - (3*m2*u1)/(4*(sp + t1 + u1)) + 
         (2*q2*u1)/(sp + t1 + u1) + (4*k2hat2*m2*u1)/(sp*(sp + t1 + u1)) + 
         (4*m2^2*u1)/(sp*(sp + t1 + u1)) + (4*k2hat2*q2*u1)/
          (sp*(sp + t1 + u1)) + (7*m2*q2*u1)/(2*sp*(sp + t1 + u1)) - 
         (9*q2^2*u1)/(4*sp*(sp + t1 + u1)) + (sp*u1)/(2*(sp + t1 + u1)) + 
         (2*k2hat2*m2*u1)/(t1*(sp + t1 + u1)) + (2*m2^2*u1)/
          (t1*(sp + t1 + u1)) + (3*m2*q2*u1)/(2*t1*(sp + t1 + u1)) - 
         (5*q2^2*u1)/(4*t1*(sp + t1 + u1)) - (k2hat2*sp*u1)/
          (4*t1*(sp + t1 + u1)) + (m2*sp*u1)/(4*t1*(sp + t1 + u1)) - 
         (q2*sp*u1)/(2*t1*(sp + t1 + u1)) - (3*t1*u1)/(4*(sp + t1 + u1)) + 
         (2*k2hat2*q2*t1*u1)/(sp^2*(sp + t1 + u1)) + (m2*q2*t1*u1)/
          (sp^2*(sp + t1 + u1)) - (q2^2*t1*u1)/(sp^2*(sp + t1 + u1)) - 
         (3*k2hat2*t1*u1)/(sp*(sp + t1 + u1)) - (m2*t1*u1)/
          (sp*(sp + t1 + u1)) + (7*q2*t1*u1)/(2*sp*(sp + t1 + u1)) + 
         (5*q2*t1^2*u1)/(4*sp^2*(sp + t1 + u1)) - 
         (t1^2*u1)/(sp*(sp + t1 + u1)) - (3*u1^2)/(4*(sp + t1 + u1)) - 
         (2*k2hat2*u1^2)/(sp*(sp + t1 + u1)) - (m2*u1^2)/
          (sp*(sp + t1 + u1)) + (7*q2*u1^2)/(4*sp*(sp + t1 + u1)) - 
         (m2*u1^2)/(2*t1*(sp + t1 + u1)) + (q2*u1^2)/(t1*(sp + t1 + u1)) + 
         (sp*u1^2)/(4*t1*(sp + t1 + u1)) + (q2*t1*u1^2)/
          (2*sp^2*(sp + t1 + u1)) - (5*t1*u1^2)/(4*sp*(sp + t1 + u1)) - 
         u1^3/(2*sp*(sp + t1 + u1)) - u1^3/(4*t1*(sp + t1 + u1)) + 
         (3*k2hat2*\[Epsilon])/8 + (5*m2*\[Epsilon])/8 - (q2*\[Epsilon])/8 + 
         (k2hat2*q2*\[Epsilon])/(4*sp) - (q2^2*\[Epsilon])/(8*sp) - 
         (q2^2*\[Epsilon])/(8*t1) + (m2*sp*\[Epsilon])/(4*t1) - 
         (q2*sp*\[Epsilon])/(8*t1) + (t1*\[Epsilon])/4 + 
         (k2hat2*t1*\[Epsilon])/(8*sp) + (m2*t1*\[Epsilon])/(2*sp) - 
         (q2*t1*\[Epsilon])/(8*sp) - (q2*t1^2*\[Epsilon])/(8*sp^2) + 
         (t1^2*\[Epsilon])/(4*sp) - (k2hat2*m2*\[Epsilon])/(4*u1) - 
         (k2hat2*q2*\[Epsilon])/(8*u1) - (m2*q2*\[Epsilon])/(2*u1) + 
         (q2^2*\[Epsilon])/(8*u1) - (m2*sp*\[Epsilon])/(8*u1) - 
         (m2*t1*\[Epsilon])/(8*u1) - (q2*t1*\[Epsilon])/(8*u1) - 
         (5*k2hat2*q2*t1*\[Epsilon])/(8*sp*u1) - (m2*q2*t1*\[Epsilon])/
          (sp*u1) + (q2^2*t1*\[Epsilon])/(4*sp*u1) - 
         (k2hat2*q2*t1^2*\[Epsilon])/(2*sp^2*u1) - (m2*q2*t1^2*\[Epsilon])/
          (2*sp^2*u1) + (q2^2*t1^2*\[Epsilon])/(8*sp^2*u1) - 
         (q2*t1^2*\[Epsilon])/(4*sp*u1) - (q2*t1^3*\[Epsilon])/(8*sp^2*u1) - 
         (k2hat2*u1*\[Epsilon])/(4*sp) - (m2*u1*\[Epsilon])/(4*t1) + 
         (q2*u1*\[Epsilon])/(4*t1) + (sp*u1*\[Epsilon])/(8*t1) + 
         (3*t1*u1*\[Epsilon])/(8*sp) + (u1^2*\[Epsilon])/(8*sp) - 
         (u1^2*\[Epsilon])/(8*t1) + (k2hat2*m2*\[Epsilon])/
          (2*(sp + t1 + u1)) - (k2hat2*q2*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (m2*q2*\[Epsilon])/(2*(sp + t1 + u1)) + (3*q2^2*\[Epsilon])/
          (8*(sp + t1 + u1)) + (k2hat2*sp*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (k2hat2*m2*sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (k2hat2*q2*sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) - 
         (m2*q2*sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (q2^2*sp*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (k2hat2*t1*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (m2*t1*\[Epsilon])/(2*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (4*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - 
         (sp*t1*\[Epsilon])/(8*(sp + t1 + u1)) - (t1^2*\[Epsilon])/
          (4*(sp + t1 + u1)) + (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (m2*q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2^2*t1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (k2hat2*t1^2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (m2*t1^2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (q2*t1^3*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (t1^3*\[Epsilon])/(8*sp*(sp + t1 + u1)) - 
         (k2hat2*q2*sp*\[Epsilon])/(4*u1*(sp + t1 + u1)) - 
         (q2^2*sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (k2hat2*m2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (k2hat2*q2*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (3*q2^2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (m2*sp*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (q2*sp*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (m2*t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (3*q2*t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (m2*q2*t1^2*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) - (3*q2^2*t1^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) + (k2hat2*q2*t1^3*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (m2*q2*t1^3*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2^2*t1^3*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) + (3*q2*t1^3*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) + (q2*t1^4*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) + (k2hat2*u1*\[Epsilon])/
          (4*(sp + t1 + u1)) - (m2*u1*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (3*q2*u1*\[Epsilon])/(8*(sp + t1 + u1)) - (k2hat2*sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (m2*sp*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (3*q2*sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (t1*u1*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (k2hat2*t1*u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - 
         (m2*t1*u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) + (q2*t1*u1*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) + (q2*t1^2*u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (t1^2*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (sp*u1^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (t1*u1^2*\[Epsilon])/(8*sp*(sp + t1 + u1)), 
        0, 0}, {0, (11*k2hat2)/8 + (3*m2)/8 - (5*q2)/2 - (3*k2hat2*m2)/sp - 
         (3*m2^2)/sp - (5*k2hat2*q2)/(4*sp) - (m2*q2)/(2*sp) + 
         (5*q2^2)/(4*sp) + sp/4 - (5*m2^2)/t1 + (m2*q2)/(2*t1) + 
         (5*q2^2)/(4*t1) + (k2hat2*sp)/(4*t1) + (3*m2*sp)/(4*t1) - 
         (2*q2*sp)/t1 + sp^2/t1 - t1/4 - (k2hat2*q2*t1)/(2*sp^2) - 
         (m2*q2*t1)/(2*sp^2) + (q2^2*t1)/(8*sp^2) + (11*k2hat2*t1)/(8*sp) + 
         (11*m2*t1)/(8*sp) - (q2*t1)/(2*sp) - (k2hat2*m2)/u1 - (2*m2^2)/u1 - 
         (15*k2hat2*q2)/(8*u1) - (5*m2*q2)/(4*u1) + (9*q2^2)/(4*u1) + 
         (2*k2hat2*m2*q2)/(sp*u1) + (4*m2^2*q2)/(sp*u1) + 
         (5*k2hat2*q2^2)/(4*sp*u1) + (m2*q2^2)/(sp*u1) - q2^3/(2*sp*u1) + 
         (k2hat2*sp)/(2*u1) - (3*q2*sp)/(2*u1) + sp^2/(2*u1) + 
         (4*k2hat2*m2^2)/(t1*u1) + (2*k2hat2*m2*q2)/(t1*u1) + 
         (4*m2^2*q2)/(t1*u1) + (m2*q2^2)/(t1*u1) - q2^3/(2*t1*u1) - 
         (k2hat2*m2*sp)/(2*t1*u1) - (2*m2^2*sp)/(t1*u1) + 
         (k2hat2*q2*sp)/(4*t1*u1) - (3*m2*q2*sp)/(2*t1*u1) + 
         (3*q2^2*sp)/(2*t1*u1) - (k2hat2*sp^2)/(4*t1*u1) + 
         (m2*sp^2)/(t1*u1) - (3*q2*sp^2)/(2*t1*u1) + sp^3/(2*t1*u1) + 
         (k2hat2*t1)/(8*u1) + (k2hat2*q2^2*t1)/(2*sp^2*u1) + 
         (2*k2hat2*m2*t1)/(sp*u1) + (2*m2^2*t1)/(sp*u1) - 
         (2*k2hat2*q2*t1)/(sp*u1) - (7*m2*q2*t1)/(4*sp*u1) + 
         (q2^2*t1)/(sp*u1) + (sp*t1)/(4*u1) - (3*k2hat2*q2*t1^2)/
          (2*sp^2*u1) - (3*m2*q2*t1^2)/(2*sp^2*u1) + (k2hat2*t1^2)/
          (4*sp*u1) + (m2*t1^2)/(4*sp*u1) + (q2*t1^2)/(4*sp*u1) + u1/2 + 
         (k2hat2*u1)/(2*sp) + (m2*u1)/(2*sp) - (q2*u1)/(2*sp) - (m2*u1)/t1 - 
         (q2*u1)/t1 + (3*sp*u1)/(4*t1) + u1^2/(4*t1) + (7*k2hat2*\[Epsilon])/
          8 + (m2*\[Epsilon])/4 - (5*q2*\[Epsilon])/8 + 
         (q2^2*\[Epsilon])/(8*sp) + (sp*\[Epsilon])/4 + 
         (q2^2*\[Epsilon])/(8*t1) - (3*k2hat2*sp*\[Epsilon])/(8*t1) + 
         (m2*sp*\[Epsilon])/(4*t1) - (5*q2*sp*\[Epsilon])/(8*t1) + 
         (3*sp^2*\[Epsilon])/(8*t1) - (t1*\[Epsilon])/8 - 
         (k2hat2*t1*\[Epsilon])/(4*sp) - (m2*t1*\[Epsilon])/(4*sp) + 
         (k2hat2*m2*\[Epsilon])/(2*u1) - (k2hat2*q2*\[Epsilon])/(2*u1) - 
         (m2*q2*\[Epsilon])/u1 + (q2^2*\[Epsilon])/(2*u1) - 
         (k2hat2*sp*\[Epsilon])/(4*u1) - (3*q2*sp*\[Epsilon])/(4*u1) + 
         (sp^2*\[Epsilon])/(4*u1) - (k2hat2*m2*sp*\[Epsilon])/(2*t1*u1) + 
         (k2hat2*q2*sp*\[Epsilon])/(8*t1*u1) - (m2*q2*sp*\[Epsilon])/
          (2*t1*u1) + (q2^2*sp*\[Epsilon])/(4*t1*u1) - 
         (k2hat2*sp^2*\[Epsilon])/(8*t1*u1) + (m2*sp^2*\[Epsilon])/
          (4*t1*u1) - (3*q2*sp^2*\[Epsilon])/(8*t1*u1) + 
         (sp^3*\[Epsilon])/(8*t1*u1) + (k2hat2*t1*\[Epsilon])/(8*u1) - 
         (3*q2*t1*\[Epsilon])/(8*u1) - (k2hat2*q2*t1*\[Epsilon])/(2*sp*u1) - 
         (m2*q2*t1*\[Epsilon])/(2*sp*u1) + (q2^2*t1*\[Epsilon])/(4*sp*u1) + 
         (sp*t1*\[Epsilon])/(8*u1) + (k2hat2*t1^2*\[Epsilon])/(4*sp*u1) + 
         (m2*t1^2*\[Epsilon])/(4*sp*u1) + (k2hat2*u1*\[Epsilon])/(2*sp) + 
         (m2*u1*\[Epsilon])/(2*sp) + (m2*u1*\[Epsilon])/(4*t1) - 
         (q2*u1*\[Epsilon])/(4*t1) + (sp*u1*\[Epsilon])/(4*t1) + 
         (u1^2*\[Epsilon])/(8*t1), 13/8 + (5*k2hat2)/(4*sp) + (3*m2)/(4*sp) - 
         (47*q2)/(8*sp) + m2/(2*t1) - (5*q2)/(2*t1) + (3*sp)/(4*t1) - 
         (19*q2*t1)/(8*sp^2) + (19*t1)/(8*sp) + (m2*q2)/(2*u1^2) + 
         q2^2/(2*u1^2) + (3*m2*sp)/(4*u1^2) + (3*q2*sp)/(8*u1^2) + 
         (9*q2*t1)/(8*u1^2) + (m2*q2*t1)/(2*sp*u1^2) + 
         (3*q2^2*t1)/(2*sp*u1^2) + (q2^2*t1^2)/(sp^2*u1^2) + 
         (3*q2*t1^2)/(4*sp*u1^2) - k2hat2/(4*u1) + m2/(4*u1) - 
         (13*q2)/(4*u1) - (5*m2^2)/(sp*u1) - (5*k2hat2*q2)/(4*sp*u1) + 
         (27*q2^2)/(8*sp*u1) - sp/u1 - (k2hat2*m2)/(t1*u1) - 
         (3*m2^2)/(t1*u1) - (m2*q2)/(t1*u1) + (3*q2^2)/(2*t1*u1) - 
         (k2hat2*sp)/(4*t1*u1) + (m2*sp)/(2*t1*u1) - (3*q2*sp)/(2*t1*u1) + 
         sp^2/(2*t1*u1) - (7*t1)/(8*u1) - (3*k2hat2*q2*t1)/(2*sp^2*u1) + 
         (3*m2*q2*t1)/(2*sp^2*u1) + (15*q2^2*t1)/(8*sp^2*u1) - 
         (k2hat2*t1)/(sp*u1) + (5*m2*t1)/(8*sp*u1) - (37*q2*t1)/(8*sp*u1) - 
         (15*q2*t1^2)/(8*sp^2*u1) + t1^2/(8*sp*u1) + (9*u1)/(4*sp) + u1/t1 + 
         (t1*u1)/(8*sp^2) - k2hat2/(4*(sp + t1 + u1)) - 
         (3*m2)/(2*(sp + t1 + u1)) + (7*q2)/(sp + t1 + u1) + 
         (4*m2^2)/(sp*(sp + t1 + u1)) + (k2hat2*q2)/(sp*(sp + t1 + u1)) - 
         (m2*q2)/(sp*(sp + t1 + u1)) - (13*q2^2)/(4*sp*(sp + t1 + u1)) + 
         sp/(4*(sp + t1 + u1)) + (k2hat2*m2)/(t1*(sp + t1 + u1)) + 
         (3*m2^2)/(t1*(sp + t1 + u1)) + (m2*q2)/(t1*(sp + t1 + u1)) - 
         (3*q2^2)/(2*t1*(sp + t1 + u1)) - (k2hat2*sp)/(4*t1*(sp + t1 + u1)) + 
         (3*q2*sp)/(4*t1*(sp + t1 + u1)) - sp^2/(4*t1*(sp + t1 + u1)) - 
         (3*t1)/(4*(sp + t1 + u1)) + (k2hat2*q2*t1)/(sp^2*(sp + t1 + u1)) - 
         (2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) - (7*q2^2*t1)/
          (4*sp^2*(sp + t1 + u1)) - (k2hat2*t1)/(sp*(sp + t1 + u1)) - 
         (3*m2*t1)/(2*sp*(sp + t1 + u1)) + (37*q2*t1)/(4*sp*(sp + t1 + u1)) + 
         (13*q2*t1^2)/(4*sp^2*(sp + t1 + u1)) - t1^2/(sp*(sp + t1 + u1)) - 
         (k2hat2*m2*sp)/(u1^2*(sp + t1 + u1)) + (2*m2^2*sp)/
          (u1^2*(sp + t1 + u1)) - (k2hat2*q2*sp)/(2*u1^2*(sp + t1 + u1)) - 
         (m2*q2*sp)/(u1^2*(sp + t1 + u1)) - (q2^2*sp)/
          (2*u1^2*(sp + t1 + u1)) - (m2*sp^2)/(2*u1^2*(sp + t1 + u1)) - 
         (q2*sp^2)/(4*u1^2*(sp + t1 + u1)) - (3*k2hat2*q2*t1)/
          (2*u1^2*(sp + t1 + u1)) - (m2*q2*t1)/(u1^2*(sp + t1 + u1)) - 
         (2*q2^2*t1)/(u1^2*(sp + t1 + u1)) - (m2*sp*t1)/
          (2*u1^2*(sp + t1 + u1)) - (q2*sp*t1)/(u1^2*(sp + t1 + u1)) - 
         (5*q2*t1^2)/(4*u1^2*(sp + t1 + u1)) - (k2hat2*q2*t1^2)/
          (sp*u1^2*(sp + t1 + u1)) - (5*q2^2*t1^2)/(2*sp*u1^2*
           (sp + t1 + u1)) - (q2^2*t1^3)/(sp^2*u1^2*(sp + t1 + u1)) - 
         (q2*t1^3)/(2*sp*u1^2*(sp + t1 + u1)) + (k2hat2*m2)/
          (u1*(sp + t1 + u1)) + (5*m2^2)/(u1*(sp + t1 + u1)) - 
         (k2hat2*q2)/(2*u1*(sp + t1 + u1)) - (15*q2^2)/
          (4*u1*(sp + t1 + u1)) + (k2hat2*sp)/(4*u1*(sp + t1 + u1)) + 
         (3*m2*sp)/(2*u1*(sp + t1 + u1)) + (3*q2*sp)/(4*u1*(sp + t1 + u1)) + 
         sp^2/(4*u1*(sp + t1 + u1)) + (m2^2*sp)/(t1*u1*(sp + t1 + u1)) - 
         (m2*q2*sp)/(2*t1*u1*(sp + t1 + u1)) - (q2^2*sp)/
          (2*t1*u1*(sp + t1 + u1)) - (m2*sp^2)/(2*t1*u1*(sp + t1 + u1)) + 
         (q2*sp^2)/(4*t1*u1*(sp + t1 + u1)) + (3*k2hat2*t1)/
          (4*u1*(sp + t1 + u1)) - (m2*t1)/(2*u1*(sp + t1 + u1)) + 
         (3*q2*t1)/(u1*(sp + t1 + u1)) + (4*m2^2*t1)/(sp*u1*(sp + t1 + u1)) + 
         (k2hat2*q2*t1)/(sp*u1*(sp + t1 + u1)) - (2*m2*q2*t1)/
          (sp*u1*(sp + t1 + u1)) - (6*q2^2*t1)/(sp*u1*(sp + t1 + u1)) + 
         (sp*t1)/(u1*(sp + t1 + u1)) + (3*t1^2)/(4*u1*(sp + t1 + u1)) + 
         (k2hat2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) - (2*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (11*q2^2*t1^2)/(4*sp^2*u1*
           (sp + t1 + u1)) - (m2*t1^2)/(sp*u1*(sp + t1 + u1)) + 
         (15*q2*t1^2)/(4*sp*u1*(sp + t1 + u1)) + (5*q2*t1^3)/
          (4*sp^2*u1*(sp + t1 + u1)) - (3*u1)/(sp + t1 + u1) - 
         (k2hat2*u1)/(sp*(sp + t1 + u1)) - (m2*u1)/(2*sp*(sp + t1 + u1)) + 
         (19*q2*u1)/(4*sp*(sp + t1 + u1)) - (m2*u1)/(2*t1*(sp + t1 + u1)) + 
         (5*q2*u1)/(2*t1*(sp + t1 + u1)) - (sp*u1)/(4*t1*(sp + t1 + u1)) + 
         (2*q2*t1*u1)/(sp^2*(sp + t1 + u1)) - (11*t1*u1)/
          (4*sp*(sp + t1 + u1)) - (7*u1^2)/(4*sp*(sp + t1 + u1)) - 
         u1^2/(t1*(sp + t1 + u1)) + \[Epsilon]/4 + (k2hat2*\[Epsilon])/
          (2*sp) + (3*m2*\[Epsilon])/(4*sp) - (3*q2*\[Epsilon])/(4*sp) + 
         (m2*\[Epsilon])/(4*t1) - (3*q2*\[Epsilon])/(8*t1) + 
         (3*sp*\[Epsilon])/(8*t1) - (q2*t1*\[Epsilon])/(4*sp^2) + 
         (5*t1*\[Epsilon])/(8*sp) - (m2*q2*\[Epsilon])/(2*u1^2) - 
         (m2*sp*\[Epsilon])/(4*u1^2) - (q2*sp*\[Epsilon])/(8*u1^2) - 
         (3*q2*t1*\[Epsilon])/(8*u1^2) - (m2*q2*t1*\[Epsilon])/(2*sp*u1^2) - 
         (q2*t1^2*\[Epsilon])/(4*sp*u1^2) - (k2hat2*\[Epsilon])/(8*u1) - 
         (m2*\[Epsilon])/(4*u1) - (7*q2*\[Epsilon])/(8*u1) - 
         (k2hat2*q2*\[Epsilon])/(2*sp*u1) - (m2*q2*\[Epsilon])/(sp*u1) + 
         (5*q2^2*\[Epsilon])/(8*sp*u1) - (k2hat2*m2*\[Epsilon])/(2*t1*u1) - 
         (m2*q2*\[Epsilon])/(2*t1*u1) + (q2^2*\[Epsilon])/(4*t1*u1) - 
         (k2hat2*sp*\[Epsilon])/(8*t1*u1) + (m2*sp*\[Epsilon])/(4*t1*u1) - 
         (3*q2*sp*\[Epsilon])/(8*t1*u1) + (sp^2*\[Epsilon])/(8*t1*u1) + 
         (t1*\[Epsilon])/(8*u1) - (k2hat2*q2*t1*\[Epsilon])/(2*sp^2*u1) - 
         (m2*q2*t1*\[Epsilon])/(2*sp^2*u1) + (3*q2^2*t1*\[Epsilon])/
          (8*sp^2*u1) - (k2hat2*t1*\[Epsilon])/(sp*u1) - 
         (m2*t1*\[Epsilon])/(4*sp*u1) - (7*q2*t1*\[Epsilon])/(8*sp*u1) - 
         (3*q2*t1^2*\[Epsilon])/(8*sp^2*u1) + (t1^2*\[Epsilon])/(8*sp*u1) + 
         (3*u1*\[Epsilon])/(8*sp) + (u1*\[Epsilon])/(8*t1) - 
         (k2hat2*\[Epsilon])/(8*(sp + t1 + u1)) - (m2*\[Epsilon])/
          (2*(sp + t1 + u1)) + (q2*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (k2hat2*q2*\[Epsilon])/(2*sp*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (sp*(sp + t1 + u1)) - (5*q2^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (k2hat2*m2*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/(4*t1*(sp + t1 + u1)) - 
         (k2hat2*sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) + (m2*sp*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) - (3*q2*sp*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (3*t1*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (k2hat2*q2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) + 
         (m2*q2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) - 
         (3*q2^2*t1*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) - 
         (k2hat2*t1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/
          (sp*(sp + t1 + u1)) + (9*q2*t1*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (5*q2*t1^2*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) - 
         (3*t1^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) - 
         (k2hat2*m2*sp*\[Epsilon])/(2*u1^2*(sp + t1 + u1)) - 
         (k2hat2*q2*sp*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) - 
         (m2*q2*sp*\[Epsilon])/(2*u1^2*(sp + t1 + u1)) - 
         (3*k2hat2*q2*t1*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) - 
         (m2*q2*t1*\[Epsilon])/(u1^2*(sp + t1 + u1)) - 
         (k2hat2*q2*t1^2*\[Epsilon])/(2*sp*u1^2*(sp + t1 + u1)) - 
         (m2*q2*t1^2*\[Epsilon])/(2*sp*u1^2*(sp + t1 + u1)) + 
         (k2hat2*m2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (k2hat2*q2*\[Epsilon])/(4*u1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/(8*u1*(sp + t1 + u1)) + 
         (k2hat2*sp*\[Epsilon])/(8*u1*(sp + t1 + u1)) + (m2*sp*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (3*k2hat2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) + 
         (3*q2*t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) + 
         (k2hat2*q2*t1*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) + 
         (m2*q2*t1*\[Epsilon])/(sp*u1*(sp + t1 + u1)) - 
         (3*q2^2*t1*\[Epsilon])/(4*sp*u1*(sp + t1 + u1)) + 
         (k2hat2*q2*t1^2*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) + 
         (m2*q2*t1^2*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) - 
         (3*q2^2*t1^2*\[Epsilon])/(8*sp^2*u1*(sp + t1 + u1)) - 
         (m2*t1^2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) + 
         (3*q2*t1^2*\[Epsilon])/(4*sp*u1*(sp + t1 + u1)) + 
         (3*q2*t1^3*\[Epsilon])/(8*sp^2*u1*(sp + t1 + u1)) - 
         (u1*\[Epsilon])/(4*(sp + t1 + u1)) - (k2hat2*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (m2*u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) + 
         (3*q2*u1*\[Epsilon])/(4*sp*(sp + t1 + u1)) - (m2*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (3*q2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (sp*u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         (q2*t1*u1*\[Epsilon])/(4*sp^2*(sp + t1 + u1)) - 
         (5*t1*u1*\[Epsilon])/(8*sp*(sp + t1 + u1)) - (u1^2*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (u1^2*\[Epsilon])/(8*t1*(sp + t1 + u1)), 0, 
        0}, {0, 0, 21/(8*sp) + t1^(-1) + (5*t1)/(8*sp^2) - (3*m2)/(4*u1^2) - 
         q2/(2*u1^2) - (3*q2*t1)/(2*sp*u1^2) - (q2*t1^2)/(sp^2*u1^2) + 2/u1 - 
         (3*m2)/(8*sp*u1) - (3*q2)/(sp*u1) - m2/(2*t1*u1) - 
         (5*q2)/(4*t1*u1) + sp/(2*t1*u1) - (m2*t1)/(sp^2*u1) - 
         (7*q2*t1)/(4*sp^2*u1) + (2*t1)/(sp*u1) + t1^2/(2*sp^2*u1) - 
         15/(4*(sp + t1 + u1)) + m2/(sp*(sp + t1 + u1)) + 
         (11*q2)/(4*sp*(sp + t1 + u1)) + m2/(2*t1*(sp + t1 + u1)) + 
         (5*q2)/(4*t1*(sp + t1 + u1)) - sp/(2*t1*(sp + t1 + u1)) + 
         (m2*t1)/(sp^2*(sp + t1 + u1)) + (3*q2*t1)/(2*sp^2*(sp + t1 + u1)) - 
         (4*t1)/(sp*(sp + t1 + u1)) - (3*t1^2)/(4*sp^2*(sp + t1 + u1)) + 
         (2*m2*sp)/(u1^2*(sp + t1 + u1)) + (q2*sp)/(2*u1^2*(sp + t1 + u1)) + 
         (2*m2*t1)/(u1^2*(sp + t1 + u1)) + (2*q2*t1)/(u1^2*(sp + t1 + u1)) + 
         (5*q2*t1^2)/(2*sp*u1^2*(sp + t1 + u1)) + 
         (q2*t1^3)/(sp^2*u1^2*(sp + t1 + u1)) + 
         (5*m2)/(2*u1*(sp + t1 + u1)) + (15*q2)/(4*u1*(sp + t1 + u1)) - 
         sp/(u1*(sp + t1 + u1)) + (3*m2*sp)/(2*t1*u1*(sp + t1 + u1)) + 
         (q2*sp)/(2*t1*u1*(sp + t1 + u1)) - sp^2/(4*t1*u1*(sp + t1 + u1)) - 
         (9*t1)/(4*u1*(sp + t1 + u1)) + (2*m2*t1)/(sp*u1*(sp + t1 + u1)) + 
         (23*q2*t1)/(4*sp*u1*(sp + t1 + u1)) + (m2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (5*q2*t1^2)/(2*sp^2*u1*(sp + t1 + u1)) - 
         (7*t1^2)/(4*sp*u1*(sp + t1 + u1)) - 
         t1^3/(4*sp^2*u1*(sp + t1 + u1)) - (2*u1)/(sp*(sp + t1 + u1)) - 
         u1/(t1*(sp + t1 + u1)) - (t1*u1)/(2*sp^2*(sp + t1 + u1)) + 
         \[Epsilon]/(2*sp) + \[Epsilon]/(4*t1) + \[Epsilon]/(4*u1) + 
         (m2*\[Epsilon])/(2*sp*u1) - (7*q2*\[Epsilon])/(8*sp*u1) + 
         (m2*\[Epsilon])/(4*t1*u1) - (3*q2*\[Epsilon])/(8*t1*u1) + 
         (sp*\[Epsilon])/(8*t1*u1) - (q2*t1*\[Epsilon])/(2*sp^2*u1) + 
         (t1*\[Epsilon])/(4*sp*u1) + (t1^2*\[Epsilon])/(8*sp^2*u1) - 
         \[Epsilon]/(2*(sp + t1 + u1)) - (m2*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (7*q2*\[Epsilon])/(8*sp*(sp + t1 + u1)) - 
         (m2*\[Epsilon])/(4*t1*(sp + t1 + u1)) + (3*q2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) + 
         (q2*t1*\[Epsilon])/(2*sp^2*(sp + t1 + u1)) - (3*t1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (t1^2*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) + 
         (m2*sp*\[Epsilon])/(4*u1^2*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (m2*\[Epsilon])/(2*u1*(sp + t1 + u1)) + 
         (5*q2*\[Epsilon])/(8*u1*(sp + t1 + u1)) - (t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (9*q2*t1*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (3*t1^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (t1^3*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) - (u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (u1*\[Epsilon])/(4*t1*(sp + t1 + u1)), 0, 
        0}, {0, 0, 5/(8*sp*u1) + 1/(4*t1*u1) + (3*t1)/(8*sp^2*u1) - 
         1/(2*sp*(sp + t1 + u1)) - 1/(4*t1*(sp + t1 + u1)) - 
         t1/(4*sp^2*(sp + t1 + u1)) - 1/(2*u1*(sp + t1 + u1)) - 
         (3*t1)/(4*sp*u1*(sp + t1 + u1)) - t1^2/(4*sp^2*u1*(sp + t1 + u1)) + 
         \[Epsilon]/(4*sp*u1) + \[Epsilon]/(8*t1*u1) + (t1*\[Epsilon])/
          (8*sp^2*u1) - \[Epsilon]/(4*sp*(sp + t1 + u1)) - 
         \[Epsilon]/(8*t1*(sp + t1 + u1)) - (t1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - \[Epsilon]/(4*u1*(sp + t1 + u1)) - 
         (3*t1*\[Epsilon])/(8*sp*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)), 0, 0}}, {{0, 0, 0, 0, 0}, 
       {-2*k2hat2*m2 + (k2hat2*sp)/2 + (2*m2^2*sp)/t1 + (k2hat2*t1)/2 - 
         (3*m2*t1)/4 + (q2*t1)/4 - (3*k2hat2*q2*t1)/(2*sp) - 
         (k2hat2*q2*t1^2)/sp^2 + (k2hat2*t1^2)/(4*sp) - (m2*t1^2)/(2*sp) + 
         (5*q2*t1^2)/(8*sp) + (q2*t1^3)/(4*sp^2) - m2*u1 + 
         (k2hat2*t1*u1)/(2*sp) - (m2*t1*u1)/(2*sp) - (q2*t1*u1)/(4*sp) - 
         (q2*t1^2*u1)/(2*sp^2) - (k2hat2*m2*\[Epsilon])/2 - 
         (k2hat2*q2*\[Epsilon])/4 + (k2hat2*sp*\[Epsilon])/4 - 
         (k2hat2*m2*sp*\[Epsilon])/(2*t1) + (k2hat2*t1*\[Epsilon])/2 - 
         (3*k2hat2*q2*t1*\[Epsilon])/(4*sp) - (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp^2) + (k2hat2*t1^2*\[Epsilon])/(4*sp) + (k2hat2*u1*\[Epsilon])/
          4 + (k2hat2*t1*u1*\[Epsilon])/(4*sp), (-21*m2)/8 - q2/8 - 
         (k2hat2*m2)/sp - (4*m2^2)/sp - (3*k2hat2*q2)/(2*sp) - (m2*q2)/sp + 
         (3*q2^2)/(8*sp) - sp/4 - (k2hat2*m2)/t1 + (4*m2^2)/t1 - 
         q2^2/(4*t1) - (m2*sp)/(2*t1) + t1/8 - (k2hat2*q2*t1)/sp^2 + 
         (3*q2^2*t1)/(4*sp^2) + (17*k2hat2*t1)/(8*sp) - (m2*t1)/(2*sp) - 
         (15*q2*t1)/(8*sp) + (m2*t1^2)/(2*sp^2) - (q2*t1^2)/sp^2 + 
         (9*t1^2)/(8*sp) + t1^3/(4*sp^2) - (9*k2hat2*m2)/(4*u1) - 
         (2*m2^2)/u1 + (k2hat2*q2)/(2*u1) - (2*m2*q2)/u1 + q2^2/(4*u1) - 
         (9*m2*sp)/(4*u1) + (q2*sp)/(4*u1) - (k2hat2*t1)/(4*u1) - 
         (7*m2*t1)/(4*u1) - (13*q2*t1)/(8*u1) + (4*m2^2*q2*t1)/(sp^2*u1) + 
         (m2*q2^2*t1)/(sp^2*u1) - (q2^3*t1)/(2*sp^2*u1) + 
         (k2hat2*m2*t1)/(sp*u1) - (7*k2hat2*q2*t1)/(8*sp*u1) - 
         (m2*q2*t1)/(sp*u1) - (q2^2*t1)/(2*sp*u1) - (7*sp*t1)/(8*u1) - 
         (3*t1^2)/(8*u1) - (7*k2hat2*q2*t1^2)/(4*sp^2*u1) - 
         (m2*q2*t1^2)/(sp^2*u1) + (q2^2*t1^2)/(sp^2*u1) + 
         (k2hat2*t1^2)/(8*sp*u1) - (m2*t1^2)/(2*sp*u1) - 
         (9*q2*t1^2)/(8*sp*u1) - (5*q2*t1^3)/(4*sp^2*u1) - t1^3/(8*sp*u1) + 
         u1/8 + (3*k2hat2*u1)/(2*sp) - (3*m2*u1)/(2*sp) - (11*q2*u1)/(8*sp) - 
         (m2*u1)/(4*t1) + (q2*u1)/(4*t1) + (m2*t1*u1)/(2*sp^2) - 
         (q2*t1*u1)/(2*sp^2) + (9*t1*u1)/(8*sp) + (t1^2*u1)/(2*sp^2) + 
         u1^2/(2*sp) + (t1*u1^2)/(4*sp^2) + (5*k2hat2*m2)/(sp + t1 + u1) + 
         (3*m2^2)/(sp + t1 + u1) + (k2hat2*q2)/(sp + t1 + u1) + 
         (m2*q2)/(sp + t1 + u1) - (3*q2^2)/(4*(sp + t1 + u1)) - 
         (4*k2hat2*m2*q2)/(sp*(sp + t1 + u1)) - (2*k2hat2*q2^2)/
          (sp*(sp + t1 + u1)) - (3*k2hat2*sp)/(4*(sp + t1 + u1)) + 
         (7*m2*sp)/(4*(sp + t1 + u1)) - (q2*sp)/(2*(sp + t1 + u1)) - 
         (4*k2hat2*m2^2)/(t1*(sp + t1 + u1)) - (2*k2hat2*m2*q2)/
          (t1*(sp + t1 + u1)) + (k2hat2*m2*sp)/(2*t1*(sp + t1 + u1)) + 
         (m2^2*sp)/(t1*(sp + t1 + u1)) - (3*m2*q2*sp)/(2*t1*(sp + t1 + u1)) - 
         (m2*sp^2)/(4*t1*(sp + t1 + u1)) - (3*k2hat2*t1)/(2*(sp + t1 + u1)) - 
         (3*m2*t1)/(4*(sp + t1 + u1)) + (3*q2*t1)/(2*(sp + t1 + u1)) - 
         (4*k2hat2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) - (4*m2^2*q2*t1)/
          (sp^2*(sp + t1 + u1)) - (2*k2hat2*q2^2*t1)/(sp^2*(sp + t1 + u1)) - 
         (m2*q2^2*t1)/(sp^2*(sp + t1 + u1)) + (q2^3*t1)/
          (2*sp^2*(sp + t1 + u1)) + (4*k2hat2*m2*t1)/(sp*(sp + t1 + u1)) + 
         (4*m2^2*t1)/(sp*(sp + t1 + u1)) + (5*k2hat2*q2*t1)/
          (sp*(sp + t1 + u1)) + (m2*q2*t1)/(sp*(sp + t1 + u1)) - 
         (3*q2^2*t1)/(4*sp*(sp + t1 + u1)) + (sp*t1)/(2*(sp + t1 + u1)) - 
         (3*t1^2)/(4*(sp + t1 + u1)) + (3*k2hat2*q2*t1^2)/
          (sp^2*(sp + t1 + u1)) + (m2*q2*t1^2)/(sp^2*(sp + t1 + u1)) - 
         (7*q2^2*t1^2)/(4*sp^2*(sp + t1 + u1)) - (2*k2hat2*t1^2)/
          (sp*(sp + t1 + u1)) - (m2*t1^2)/(sp*(sp + t1 + u1)) + 
         (5*q2*t1^2)/(4*sp*(sp + t1 + u1)) + (5*q2*t1^3)/
          (4*sp^2*(sp + t1 + u1)) - t1^3/(2*sp*(sp + t1 + u1)) - 
         (4*k2hat2*m2^2)/(u1*(sp + t1 + u1)) - (2*k2hat2*m2*q2)/
          (u1*(sp + t1 + u1)) + (3*k2hat2*m2*sp)/(2*u1*(sp + t1 + u1)) + 
         (3*k2hat2*q2*sp)/(4*u1*(sp + t1 + u1)) - (m2*q2*sp)/
          (2*u1*(sp + t1 + u1)) + (q2^2*sp)/(4*u1*(sp + t1 + u1)) - 
         (m2*sp^2)/(4*u1*(sp + t1 + u1)) + (2*k2hat2*m2*t1)/
          (u1*(sp + t1 + u1)) + (2*m2^2*t1)/(u1*(sp + t1 + u1)) + 
         (3*k2hat2*q2*t1)/(2*u1*(sp + t1 + u1)) + (m2*q2*t1)/
          (u1*(sp + t1 + u1)) - (q2^2*t1)/(4*u1*(sp + t1 + u1)) - 
         (4*k2hat2*m2*q2*t1)/(sp*u1*(sp + t1 + u1)) - (2*k2hat2*q2^2*t1)/
          (sp*u1*(sp + t1 + u1)) - (k2hat2*sp*t1)/(4*u1*(sp + t1 + u1)) + 
         (m2*sp*t1)/(4*u1*(sp + t1 + u1)) - (q2*sp*t1)/
          (2*u1*(sp + t1 + u1)) - (m2*t1^2)/(2*u1*(sp + t1 + u1)) + 
         (q2*t1^2)/(2*u1*(sp + t1 + u1)) - (4*k2hat2*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (4*m2^2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (2*k2hat2*q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (m2*q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (q2^3*t1^2)/(2*sp^2*u1*(sp + t1 + u1)) + 
         (3*k2hat2*q2*t1^2)/(sp*u1*(sp + t1 + u1)) + (m2*q2*t1^2)/
          (sp*u1*(sp + t1 + u1)) + (sp*t1^2)/(4*u1*(sp + t1 + u1)) - 
         t1^3/(4*u1*(sp + t1 + u1)) + (2*k2hat2*q2*t1^3)/
          (sp^2*u1*(sp + t1 + u1)) + (m2*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) - 
         (q2^2*t1^3)/(sp^2*u1*(sp + t1 + u1)) + (q2*t1^4)/
          (2*sp^2*u1*(sp + t1 + u1)) - (k2hat2*u1)/(2*(sp + t1 + u1)) + 
         (m2*u1)/(sp + t1 + u1) + (q2*u1)/(sp + t1 + u1) + 
         (4*k2hat2*m2*u1)/(sp*(sp + t1 + u1)) + (4*m2^2*u1)/
          (sp*(sp + t1 + u1)) + (3*k2hat2*q2*u1)/(sp*(sp + t1 + u1)) + 
         (m2*q2*u1)/(sp*(sp + t1 + u1)) - (q2^2*u1)/(2*sp*(sp + t1 + u1)) + 
         (sp*u1)/(4*(sp + t1 + u1)) + (k2hat2*m2*u1)/(t1*(sp + t1 + u1)) - 
         (m2^2*u1)/(t1*(sp + t1 + u1)) - (m2*q2*u1)/(2*t1*(sp + t1 + u1)) + 
         (m2*sp*u1)/(t1*(sp + t1 + u1)) - (3*t1*u1)/(4*(sp + t1 + u1)) + 
         (k2hat2*q2*t1*u1)/(sp^2*(sp + t1 + u1)) - (3*q2^2*t1*u1)/
          (4*sp^2*(sp + t1 + u1)) - (3*k2hat2*t1*u1)/(sp*(sp + t1 + u1)) - 
         (m2*t1*u1)/(sp*(sp + t1 + u1)) + (2*q2*t1*u1)/(sp*(sp + t1 + u1)) + 
         (q2*t1^2*u1)/(sp^2*(sp + t1 + u1)) - (5*t1^2*u1)/
          (4*sp*(sp + t1 + u1)) - u1^2/(4*(sp + t1 + u1)) - 
         (k2hat2*u1^2)/(sp*(sp + t1 + u1)) + (3*q2*u1^2)/
          (4*sp*(sp + t1 + u1)) + (m2*u1^2)/(4*t1*(sp + t1 + u1)) + 
         (q2*t1*u1^2)/(4*sp^2*(sp + t1 + u1)) - (t1*u1^2)/
          (sp*(sp + t1 + u1)) - u1^3/(4*sp*(sp + t1 + u1)) + 
         (k2hat2*\[Epsilon])/4 + (5*m2*\[Epsilon])/8 - (q2*\[Epsilon])/4 - 
         (3*k2hat2*q2*\[Epsilon])/(4*sp) + (q2^2*\[Epsilon])/(8*sp) + 
         (sp*\[Epsilon])/8 - (k2hat2*m2*\[Epsilon])/(2*t1) - 
         (m2*q2*\[Epsilon])/(2*t1) + (q2^2*\[Epsilon])/(8*t1) - 
         (m2*sp*\[Epsilon])/(8*t1) - (q2*sp*\[Epsilon])/(8*t1) + 
         (3*t1*\[Epsilon])/8 - (k2hat2*q2*t1*\[Epsilon])/(2*sp^2) - 
         (m2*q2*t1*\[Epsilon])/(2*sp^2) + (q2^2*t1*\[Epsilon])/(8*sp^2) - 
         (k2hat2*t1*\[Epsilon])/(8*sp) - (q2*t1^2*\[Epsilon])/(8*sp^2) + 
         (3*t1^2*\[Epsilon])/(8*sp) + (t1^3*\[Epsilon])/(8*sp^2) + 
         (k2hat2*t1*\[Epsilon])/(4*u1) + (q2*t1*\[Epsilon])/(8*u1) + 
         (k2hat2*t1^2*\[Epsilon])/(8*sp*u1) + (q2*t1^2*\[Epsilon])/
          (4*sp*u1) + (3*u1*\[Epsilon])/8 + (3*k2hat2*u1*\[Epsilon])/(4*sp) + 
         (m2*u1*\[Epsilon])/(2*sp) - (q2*u1*\[Epsilon])/(8*sp) - 
         (3*m2*u1*\[Epsilon])/(8*t1) - (q2*u1*\[Epsilon])/(8*t1) + 
         (sp*u1*\[Epsilon])/(8*t1) - (q2*t1*u1*\[Epsilon])/(8*sp^2) + 
         (5*t1*u1*\[Epsilon])/(8*sp) + (t1^2*u1*\[Epsilon])/(4*sp^2) + 
         (u1^2*\[Epsilon])/(4*sp) + (t1*u1^2*\[Epsilon])/(8*sp^2) + 
         (k2hat2*m2*\[Epsilon])/(2*(sp + t1 + u1)) + (k2hat2*q2*\[Epsilon])/
          (4*(sp + t1 + u1)) + (k2hat2*sp*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon])/(8*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (k2hat2*t1*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (m2*t1*\[Epsilon])/(8*(sp + t1 + u1)) + (k2hat2*q2*t1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) + (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (m2*q2*t1^2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2^2*t1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) + (q2*t1^3*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (k2hat2*m2*sp*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (k2hat2*q2*sp*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (k2hat2*q2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (k2hat2*sp*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (m2*sp*t1*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (k2hat2*q2*t1^2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) - (m2*q2*t1^2*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (q2^2*t1^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (sp*t1^2*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) - (k2hat2*u1*\[Epsilon])/
          (4*(sp + t1 + u1)) - (m2*u1*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (q2*u1*\[Epsilon])/(4*(sp + t1 + u1)) + (k2hat2*q2*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (sp*u1*\[Epsilon])/(8*(sp + t1 + u1)) + 
         (k2hat2*m2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (m2*sp*u1*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (t1*u1*\[Epsilon])/
          (4*(sp + t1 + u1)) + (k2hat2*q2*t1*u1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) + (m2*q2*t1*u1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2^2*t1*u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (k2hat2*t1*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (m2*t1*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (q2*t1*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (q2*t1^2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (t1^2*u1*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) - (u1^2*\[Epsilon])/(4*(sp + t1 + u1)) - 
         (k2hat2*u1^2*\[Epsilon])/(2*sp*(sp + t1 + u1)) - 
         (m2*u1^2*\[Epsilon])/(2*sp*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) + (m2*u1^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (q2*t1*u1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (t1*u1^2*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) - (u1^3*\[Epsilon])/(8*sp*(sp + t1 + u1)), 
        -1/4 - (3*m2*q2)/sp^2 - (3*m2)/sp - m2/t1 + q2/(4*t1) - 
         (5*m2*q2)/(2*sp*t1) + q2^2/(sp*t1) + (q2*t1)/sp^2 + q2/(4*u1) - 
         (m2*q2)/(2*sp*u1) - q2^2/(4*sp*u1) - t1/(2*u1) + 
         (m2*q2*t1)/(sp^2*u1) - (q2^2*t1)/(sp^2*u1) + (m2*t1)/(2*sp*u1) - 
         (q2*t1)/(2*sp*u1) + (q2*t1^2)/(sp^2*u1) + t1^2/(4*sp*u1) + 
         u1/(4*sp) - u1/(4*t1) + (m2*u1)/(2*sp*t1) - (3*q2*u1)/(2*sp*t1) + 
         u1^2/(2*sp*t1) + (4*m2)/(sp + t1 + u1) - (3*q2)/(2*(sp + t1 + u1)) + 
         (6*m2*q2)/(sp*(sp + t1 + u1)) - (7*q2^2)/(4*sp*(sp + t1 + u1)) - 
         sp/(4*(sp + t1 + u1)) - (2*m2^2)/(t1*(sp + t1 + u1)) + 
         (m2*q2)/(t1*(sp + t1 + u1)) - (4*m2^2*q2)/(sp*t1*(sp + t1 + u1)) - 
         (m2*q2^2)/(sp*t1*(sp + t1 + u1)) + q2^3/(2*sp*t1*(sp + t1 + u1)) - 
         (m2*sp)/(2*t1*(sp + t1 + u1)) + (q2*sp)/(4*t1*(sp + t1 + u1)) + 
         (3*t1)/(4*(sp + t1 + u1)) + (2*m2*q2*t1)/(sp^2*(sp + t1 + u1)) + 
         (q2^2*t1)/(sp^2*(sp + t1 + u1)) + (5*m2*t1)/(2*sp*(sp + t1 + u1)) - 
         (q2*t1)/(2*sp*(sp + t1 + u1)) - (2*q2*t1^2)/(sp^2*(sp + t1 + u1)) - 
         t1^2/(4*sp*(sp + t1 + u1)) - (2*m2^2)/(u1*(sp + t1 + u1)) - 
         (3*m2*q2)/(u1*(sp + t1 + u1)) + (3*q2^2)/(4*u1*(sp + t1 + u1)) - 
         (4*m2^2*q2)/(sp*u1*(sp + t1 + u1)) - (m2*q2^2)/
          (sp*u1*(sp + t1 + u1)) + q2^3/(2*sp*u1*(sp + t1 + u1)) - 
         (3*m2*sp)/(2*u1*(sp + t1 + u1)) - (3*m2*t1)/(2*u1*(sp + t1 + u1)) - 
         (3*q2*t1)/(4*u1*(sp + t1 + u1)) - (7*m2*q2*t1)/
          (2*sp*u1*(sp + t1 + u1)) + (3*q2^2*t1)/(4*sp*u1*(sp + t1 + u1)) - 
         (m2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + (q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (m2*t1^2)/(2*sp*u1*(sp + t1 + u1)) - 
         (q2*t1^2)/(sp*u1*(sp + t1 + u1)) - (q2*t1^3)/
          (sp^2*u1*(sp + t1 + u1)) - t1^3/(4*sp*u1*(sp + t1 + u1)) + 
         u1/(2*(sp + t1 + u1)) + (3*m2*q2*u1)/(sp^2*(sp + t1 + u1)) + 
         (5*m2*u1)/(2*sp*(sp + t1 + u1)) + (2*q2*u1)/(sp*(sp + t1 + u1)) - 
         (m2*u1)/(2*t1*(sp + t1 + u1)) + (q2*u1)/(4*t1*(sp + t1 + u1)) + 
         (3*m2*q2*u1)/(2*sp*t1*(sp + t1 + u1)) - (3*q2^2*u1)/
          (2*sp*t1*(sp + t1 + u1)) - (sp*u1)/(4*t1*(sp + t1 + u1)) - 
         (q2*t1*u1)/(sp^2*(sp + t1 + u1)) - (t1*u1)/(4*sp*(sp + t1 + u1)) - 
         (3*u1^2)/(4*sp*(sp + t1 + u1)) - u1^2/(4*t1*(sp + t1 + u1)) - 
         (m2*u1^2)/(2*sp*t1*(sp + t1 + u1)) + (3*q2*u1^2)/
          (2*sp*t1*(sp + t1 + u1)) - u1^3/(2*sp*t1*(sp + t1 + u1)) + 
         (3*\[Epsilon])/8 + (m2*q2*\[Epsilon])/sp^2 - (q2^2*\[Epsilon])/
          (4*sp^2) + (m2*\[Epsilon])/sp - (q2*\[Epsilon])/(8*t1) + 
         (m2*q2*\[Epsilon])/(2*sp*t1) - (3*q2^2*\[Epsilon])/(8*sp*t1) + 
         (3*t1*\[Epsilon])/(8*sp) - (m2*\[Epsilon])/(2*u1) - 
         (q2*\[Epsilon])/(8*u1) - (m2*q2*\[Epsilon])/(sp*u1) + 
         (q2^2*\[Epsilon])/(4*sp*u1) - (m2*q2*t1*\[Epsilon])/(sp^2*u1) + 
         (q2^2*t1*\[Epsilon])/(4*sp^2*u1) - (m2*t1*\[Epsilon])/(2*sp*u1) - 
         (q2*t1*\[Epsilon])/(2*sp*u1) - (q2*t1^2*\[Epsilon])/(4*sp^2*u1) + 
         (q2*u1*\[Epsilon])/(4*sp^2) + (u1*\[Epsilon])/(4*sp) + 
         (u1*\[Epsilon])/(8*t1) - (m2*u1*\[Epsilon])/(2*sp*t1) + 
         (q2*u1*\[Epsilon])/(2*sp*t1) - (u1^2*\[Epsilon])/(8*sp*t1) - 
         (m2*\[Epsilon])/(2*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (2*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/(2*sp*(sp + t1 + u1)) + 
         (5*q2^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) - (sp*\[Epsilon])/
          (8*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (5*q2^2*\[Epsilon])/(8*t1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (q2*sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) - 
         (t1*\[Epsilon])/(2*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) + (3*q2*t1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (3*t1^2*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (q2^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) + (m2*sp*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (3*q2*t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) + (2*m2*q2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (t1^2*\[Epsilon])/(8*u1*(sp + t1 + u1)) + 
         (m2*q2*t1^2*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) - 
         (q2^2*t1^2*\[Epsilon])/(4*sp^2*u1*(sp + t1 + u1)) + 
         (m2*t1^2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) + 
         (q2*t1^2*\[Epsilon])/(sp*u1*(sp + t1 + u1)) + (q2*t1^3*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (3*u1*\[Epsilon])/(8*(sp + t1 + u1)) - 
         (m2*q2*u1*\[Epsilon])/(sp^2*(sp + t1 + u1)) + (q2^2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (m2*u1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) + 
         (m2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) - (7*q2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (m2*q2*u1*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (q2^2*u1*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) - (sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (q2*t1*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (5*t1*u1*\[Epsilon])/
          (8*sp*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (u1^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (u1^2*\[Epsilon])/(4*t1*(sp + t1 + u1)) + (m2*u1^2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) + (u1^3*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)), 0, 0}, {(-5*q2)/2 + (10*m2*q2)/sp + 
         (3*q2^2)/(2*sp) + (m2*q2)/t1 + (10*q2*t1)/sp - (3*q2*u1)/(2*sp) + 
         (3*q2*t1*u1)/sp^2 - (q2*\[Epsilon])/4 - (m2*q2*\[Epsilon])/sp - 
         (m2*q2*\[Epsilon])/t1 + (m2*sp*\[Epsilon])/(2*t1) + 
         (m2*u1*\[Epsilon])/(2*t1), 15/8 + (3*q2^2)/(2*sp^2) - 
         (21*q2)/(4*sp) - m2/t1 - (9*q2)/(8*t1) + (5*q2^2)/(8*sp*t1) + 
         sp/(2*t1) + (q2*t1)/(2*sp^2) + (11*t1)/(8*sp) + m2/(2*u1) + 
         (5*q2)/(4*u1) + (4*m2^2*q2)/(sp^2*u1) + (m2*q2^2)/(sp^2*u1) - 
         q2^3/(2*sp^2*u1) + (5*m2*q2)/(2*sp*u1) - (3*q2^2)/(8*sp*u1) - 
         (3*sp)/u1 + (3*q2^2)/(2*t1*u1) + (4*m2^2*q2)/(sp*t1*u1) + 
         (m2*q2^2)/(sp*t1*u1) - q2^3/(2*sp*t1*u1) + (m2*sp)/(t1*u1) - 
         (3*q2*sp)/(2*t1*u1) + sp^2/(2*t1*u1) + (7*t1)/(8*u1) + 
         (5*q2^2*t1)/(2*sp^2*u1) + (3*q2*t1)/(sp*u1) - 
         (9*q2*t1^2)/(4*sp^2*u1) - (m2*u1)/sp^2 - (q2*u1)/sp^2 + 
         (27*u1)/(8*sp) + u1/(8*t1) + (m2*u1)/(sp*t1) - (q2*u1)/(4*sp*t1) + 
         u1^2/(8*sp*t1) - m2/(2*(sp + t1 + u1)) + 
         (13*q2)/(4*(sp + t1 + u1)) - (4*m2^2*q2)/(sp^2*(sp + t1 + u1)) - 
         (m2*q2^2)/(sp^2*(sp + t1 + u1)) + q2^3/(2*sp^2*(sp + t1 + u1)) - 
         (13*q2^2)/(8*sp*(sp + t1 + u1)) - (11*sp)/(8*(sp + t1 + u1)) + 
         (m2*q2)/(2*t1*(sp + t1 + u1)) - q2^2/(8*t1*(sp + t1 + u1)) + 
         (m2*sp)/(t1*(sp + t1 + u1)) + (q2*sp)/(8*t1*(sp + t1 + u1)) - 
         (29*t1)/(8*(sp + t1 + u1)) + (m2*q2*t1)/(2*sp^2*(sp + t1 + u1)) - 
         (31*q2^2*t1)/(8*sp^2*(sp + t1 + u1)) + (43*q2*t1)/
          (8*sp*(sp + t1 + u1)) + (17*q2*t1^2)/(4*sp^2*(sp + t1 + u1)) - 
         (11*t1^2)/(8*sp*(sp + t1 + u1)) + (m2*q2)/(2*u1*(sp + t1 + u1)) - 
         (5*q2^2)/(8*u1*(sp + t1 + u1)) + (m2*sp)/(2*u1*(sp + t1 + u1)) + 
         (q2*sp)/(u1*(sp + t1 + u1)) - sp^2/(4*u1*(sp + t1 + u1)) - 
         (m2*t1)/(2*u1*(sp + t1 + u1)) + (15*q2*t1)/(4*u1*(sp + t1 + u1)) - 
         (4*m2^2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) - (m2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (q2^3*t1)/(2*sp^2*u1*(sp + t1 + u1)) + 
         (3*m2*q2*t1)/(2*sp*u1*(sp + t1 + u1)) - (17*q2^2*t1)/
          (8*sp*u1*(sp + t1 + u1)) - (7*sp*t1)/(8*u1*(sp + t1 + u1)) - 
         (7*t1^2)/(8*u1*(sp + t1 + u1)) - (5*q2^2*t1^2)/
          (2*sp^2*u1*(sp + t1 + u1)) + (17*q2*t1^2)/
          (4*sp*u1*(sp + t1 + u1)) + (9*q2*t1^3)/(4*sp^2*u1*(sp + t1 + u1)) - 
         (11*u1)/(4*(sp + t1 + u1)) + (m2*q2*u1)/(2*sp^2*(sp + t1 + u1)) - 
         (11*q2^2*u1)/(8*sp^2*(sp + t1 + u1)) + (25*q2*u1)/
          (8*sp*(sp + t1 + u1)) + (3*q2*u1)/(8*t1*(sp + t1 + u1)) + 
         (m2*q2*u1)/(sp*t1*(sp + t1 + u1)) - (q2^2*u1)/
          (8*sp*t1*(sp + t1 + u1)) - (sp*u1)/(8*t1*(sp + t1 + u1)) + 
         (m2*t1*u1)/(sp^2*(sp + t1 + u1)) + (3*q2*t1*u1)/
          (sp^2*(sp + t1 + u1)) - (23*t1*u1)/(8*sp*(sp + t1 + u1)) + 
         (m2*u1^2)/(sp^2*(sp + t1 + u1)) + (q2*u1^2)/(sp^2*(sp + t1 + u1)) - 
         (7*u1^2)/(4*sp*(sp + t1 + u1)) - u1^2/(4*t1*(sp + t1 + u1)) - 
         (m2*u1^2)/(sp*t1*(sp + t1 + u1)) + (q2*u1^2)/
          (4*sp*t1*(sp + t1 + u1)) - (t1*u1^2)/(8*sp^2*(sp + t1 + u1)) - 
         u1^3/(8*sp^2*(sp + t1 + u1)) - u1^3/(8*sp*t1*(sp + t1 + u1)) + 
         \[Epsilon]/2 - (m2*q2*\[Epsilon])/sp^2 + (q2^2*\[Epsilon])/
          (4*sp^2) + (m2*\[Epsilon])/(2*sp) - (7*q2*\[Epsilon])/(4*sp) + 
         (5*m2*\[Epsilon])/(4*t1) - (9*q2*\[Epsilon])/(8*t1) - 
         (m2*q2*\[Epsilon])/(2*sp*t1) + (3*q2^2*\[Epsilon])/(8*sp*t1) + 
         (sp*\[Epsilon])/(2*t1) - (q2*t1*\[Epsilon])/(8*sp^2) - 
         (t1*\[Epsilon])/(8*sp) + (m2*\[Epsilon])/(2*u1) - 
         (7*q2*\[Epsilon])/(4*u1) - (3*m2*q2*\[Epsilon])/(2*sp*u1) + 
         (3*q2^2*\[Epsilon])/(4*sp*u1) + (sp*\[Epsilon])/(4*u1) - 
         (m2*q2*\[Epsilon])/(t1*u1) + (q2^2*\[Epsilon])/(2*t1*u1) + 
         (m2*sp*\[Epsilon])/(4*t1*u1) - (3*q2*sp*\[Epsilon])/(4*t1*u1) + 
         (sp^2*\[Epsilon])/(4*t1*u1) - (m2*q2*t1*\[Epsilon])/(2*sp^2*u1) + 
         (q2^2*t1*\[Epsilon])/(4*sp^2*u1) - (5*q2*t1*\[Epsilon])/(8*sp*u1) + 
         (q2*t1^2*\[Epsilon])/(4*sp^2*u1) - (q2*u1*\[Epsilon])/(4*sp^2) + 
         (3*u1*\[Epsilon])/(8*t1) + (m2*u1*\[Epsilon])/(2*sp*t1) - 
         (q2*u1*\[Epsilon])/(2*sp*t1) - (t1*u1*\[Epsilon])/(8*sp^2) + 
         (u1^2*\[Epsilon])/(8*sp*t1) - (5*m2*\[Epsilon])/(4*(sp + t1 + u1)) + 
         (3*q2*\[Epsilon])/(8*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (sp*(sp + t1 + u1)) - (5*q2^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (sp*\[Epsilon])/(4*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/(4*t1*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon])/(8*t1*(sp + t1 + u1)) + (3*t1*\[Epsilon])/
          (8*(sp + t1 + u1)) + (3*m2*q2*t1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/
          (2*sp*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (t1^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) - 
         (m2*sp*\[Epsilon])/(4*u1*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (sp^2*\[Epsilon])/(8*u1*(sp + t1 + u1)) - 
         (m2*t1*\[Epsilon])/(2*u1*(sp + t1 + u1)) - (5*q2*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (sp*t1*\[Epsilon])/(4*u1*(sp + t1 + u1)) + 
         (m2*q2*t1^2*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) - 
         (q2^2*t1^2*\[Epsilon])/(4*sp^2*u1*(sp + t1 + u1)) - 
         (9*q2*t1^2*\[Epsilon])/(8*sp*u1*(sp + t1 + u1)) - 
         (q2*t1^3*\[Epsilon])/(4*sp^2*u1*(sp + t1 + u1)) + 
         (m2*q2*u1*\[Epsilon])/(sp^2*(sp + t1 + u1)) - (q2^2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (m2*u1*\[Epsilon])/(sp*(sp + t1 + u1)) + 
         (q2*u1*\[Epsilon])/(sp*(sp + t1 + u1)) - (3*m2*u1*\[Epsilon])/
          (4*t1*(sp + t1 + u1)) + (3*q2*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2^2*u1*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) - (sp*u1*\[Epsilon])/
          (8*t1*(sp + t1 + u1)) + (3*q2*t1*u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (t1*u1*\[Epsilon])/
          (4*sp*(sp + t1 + u1)) + (t1^2*u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (u1^2*\[Epsilon])/(8*sp*(sp + t1 + u1)) - 
         (u1^2*\[Epsilon])/(4*t1*(sp + t1 + u1)) - (m2*u1^2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) + (t1*u1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (u1^3*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)), (-3*q2)/(2*sp^2) - 25/(8*sp) + 3/(8*t1) + 
         (3*m2)/(2*sp*t1) - (13*q2)/(8*sp*t1) - (11*t1)/(8*sp^2) + 
         (3*m2)/(4*u1^2) + (13*q2)/(4*u1^2) + (11*m2*q2)/(sp*u1^2) + 
         (7*q2^2)/(4*sp*u1^2) + (7*q2^2*t1)/(2*sp^2*u1^2) + 
         (7*q2*t1)/(sp*u1^2) + (q2*t1^2)/(sp^2*u1^2) - 45/(8*u1) - 
         (m2*q2)/(2*sp^2*u1) + (9*q2^2)/(8*sp^2*u1) + (11*m2)/(8*sp*u1) + 
         (7*q2)/(2*sp*u1) + m2/(t1*u1) - q2/(2*t1*u1) - (m2*q2)/(sp*t1*u1) + 
         (5*q2^2)/(8*sp*t1*u1) + (3*sp)/(8*t1*u1) + (m2*t1)/(sp^2*u1) + 
         (2*q2*t1)/(sp^2*u1) - (5*t1)/(4*sp*u1) - t1^2/(4*sp^2*u1) - 
         (5*u1)/(8*sp^2) + u1/(sp*t1) + 7/(8*(sp + t1 + u1)) + 
         (m2*q2)/(sp^2*(sp + t1 + u1)) - q2^2/(sp^2*(sp + t1 + u1)) - 
         (7*m2)/(2*sp*(sp + t1 + u1)) + (7*q2)/(4*sp*(sp + t1 + u1)) - 
         (3*m2)/(2*t1*(sp + t1 + u1)) - q2/(8*t1*(sp + t1 + u1)) + 
         (m2*q2)/(sp*t1*(sp + t1 + u1)) - (5*q2^2)/(8*sp*t1*(sp + t1 + u1)) - 
         sp/(2*t1*(sp + t1 + u1)) - (m2*t1)/(sp^2*(sp + t1 + u1)) + 
         (7*q2*t1)/(4*sp^2*(sp + t1 + u1)) + (19*t1)/(8*sp*(sp + t1 + u1)) + 
         (5*t1^2)/(4*sp^2*(sp + t1 + u1)) - (m2*q2)/(u1^2*(sp + t1 + u1)) - 
         q2^2/(4*u1^2*(sp + t1 + u1)) - (2*m2*sp)/(u1^2*(sp + t1 + u1)) - 
         (3*q2*sp)/(4*u1^2*(sp + t1 + u1)) - (2*m2*t1)/
          (u1^2*(sp + t1 + u1)) - (11*q2*t1)/(4*u1^2*(sp + t1 + u1)) - 
         (m2*q2*t1)/(sp*u1^2*(sp + t1 + u1)) - (3*q2^2*t1)/
          (4*sp*u1^2*(sp + t1 + u1)) - (q2^2*t1^2)/(2*sp^2*u1^2*
           (sp + t1 + u1)) - (3*q2*t1^2)/(sp*u1^2*(sp + t1 + u1)) - 
         (q2*t1^3)/(sp^2*u1^2*(sp + t1 + u1)) - (3*m2)/(u1*(sp + t1 + u1)) - 
         (17*q2)/(8*u1*(sp + t1 + u1)) + (m2*q2)/(sp*u1*(sp + t1 + u1)) - 
         (11*q2^2)/(8*sp*u1*(sp + t1 + u1)) - q2^2/(8*t1*u1*(sp + t1 + u1)) - 
         (3*m2*sp)/(2*t1*u1*(sp + t1 + u1)) - 
         (q2*sp)/(4*t1*u1*(sp + t1 + u1)) + sp^2/(8*t1*u1*(sp + t1 + u1)) + 
         (3*t1)/(8*u1*(sp + t1 + u1)) + (m2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) - 
         (3*q2^2*t1)/(2*sp^2*u1*(sp + t1 + u1)) - 
         (3*m2*t1)/(sp*u1*(sp + t1 + u1)) - (21*q2*t1)/
          (8*sp*u1*(sp + t1 + u1)) - (m2*t1^2)/(sp^2*u1*(sp + t1 + u1)) - 
         (q2*t1^2)/(2*sp^2*u1*(sp + t1 + u1)) + 
         t1^2/(2*sp*u1*(sp + t1 + u1)) + (5*q2*u1)/(4*sp^2*(sp + t1 + u1)) + 
         u1/(8*sp*(sp + t1 + u1)) - (5*u1)/(8*t1*(sp + t1 + u1)) - 
         (3*m2*u1)/(2*sp*t1*(sp + t1 + u1)) + (13*q2*u1)/
          (8*sp*t1*(sp + t1 + u1)) + (7*t1*u1)/(4*sp^2*(sp + t1 + u1)) + 
         u1^2/(2*sp^2*(sp + t1 + u1)) - u1^2/(sp*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/(4*sp^2) + \[Epsilon]/(4*sp) + \[Epsilon]/(4*t1) - 
         (q2*\[Epsilon])/(2*sp*t1) - (3*t1*\[Epsilon])/(8*sp^2) - 
         (q2*\[Epsilon])/(8*u1^2) - (m2*q2*\[Epsilon])/(2*sp*u1^2) + 
         (q2^2*\[Epsilon])/(8*sp*u1^2) + (q2^2*t1*\[Epsilon])/(4*sp^2*u1^2) - 
         (q2*t1*\[Epsilon])/(4*sp*u1^2) + (3*\[Epsilon])/(4*u1) - 
         (m2*q2*\[Epsilon])/(2*sp^2*u1) + (5*q2^2*\[Epsilon])/(8*sp^2*u1) + 
         (m2*\[Epsilon])/(2*sp*u1) - (3*q2*\[Epsilon])/(2*sp*u1) - 
         (5*q2*\[Epsilon])/(8*t1*u1) - (m2*q2*\[Epsilon])/(2*sp*t1*u1) + 
         (3*q2^2*\[Epsilon])/(8*sp*t1*u1) + (3*sp*\[Epsilon])/(8*t1*u1) - 
         (5*q2*t1*\[Epsilon])/(8*sp^2*u1) - (t1^2*\[Epsilon])/(4*sp^2*u1) + 
         (u1*\[Epsilon])/(8*sp^2) + (u1*\[Epsilon])/(8*sp*t1) - 
         (3*\[Epsilon])/(4*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp^2*(sp + t1 + u1)) - (5*q2^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (m2*\[Epsilon])/(2*sp*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(sp*(sp + t1 + u1)) + (m2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) - (sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (7*q2*t1*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) + 
         (t1*\[Epsilon])/(8*sp*(sp + t1 + u1)) + (5*t1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (m2*q2*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/
          (4*u1^2*(sp + t1 + u1)) - (3*q2*t1*\[Epsilon])/
          (8*u1^2*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon])/
          (2*sp*u1^2*(sp + t1 + u1)) - (3*q2^2*t1*\[Epsilon])/
          (8*sp*u1^2*(sp + t1 + u1)) - (q2^2*t1^2*\[Epsilon])/
          (4*sp^2*u1^2*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (4*sp*u1^2*(sp + t1 + u1)) - (m2*\[Epsilon])/
          (4*u1*(sp + t1 + u1)) + (5*q2*\[Epsilon])/(8*u1*(sp + t1 + u1)) + 
         (m2*q2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) - (7*q2^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (sp*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (q2^2*\[Epsilon])/(8*t1*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon])/
          (4*t1*u1*(sp + t1 + u1)) - (sp^2*\[Epsilon])/
          (8*t1*u1*(sp + t1 + u1)) - (3*t1*\[Epsilon])/
          (8*u1*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (7*q2^2*t1*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) - (m2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (7*q2*t1*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) + (5*q2*t1^2*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) + (t1^2*\[Epsilon])/
          (4*sp*u1*(sp + t1 + u1)) + (t1^3*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) + 
         (q2*u1*\[Epsilon])/(2*sp*t1*(sp + t1 + u1)) + (t1*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (u1^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (u1^2*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)), 0, 0}, 
       {0, 0, -5/(4*sp*u1) - 1/(2*t1*u1) - (3*t1)/(4*sp^2*u1) + 
         1/(sp*(sp + t1 + u1)) + 1/(2*t1*(sp + t1 + u1)) + 
         t1/(2*sp^2*(sp + t1 + u1)) + 1/(u1*(sp + t1 + u1)) + 
         (3*t1)/(2*sp*u1*(sp + t1 + u1)) + t1^2/(2*sp^2*u1*(sp + t1 + u1)) - 
         \[Epsilon]/(2*sp*u1) - \[Epsilon]/(4*t1*u1) - (t1*\[Epsilon])/
          (4*sp^2*u1) + \[Epsilon]/(2*sp*(sp + t1 + u1)) + 
         \[Epsilon]/(4*t1*(sp + t1 + u1)) + (t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + \[Epsilon]/(2*u1*(sp + t1 + u1)) + 
         (3*t1*\[Epsilon])/(4*sp*u1*(sp + t1 + u1)) + (t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)), 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, 0, -((m2*q2)/(sp^2*t1)) + q2^2/(4*sp^2*t1) - 
         m2/(sp*t1) - t1/(4*sp^2) + (m2*q2)/(sp^2*u1) - q2^2/(4*sp^2*u1) + 
         m2/(sp*u1) + (q2*t1)/(2*sp^2*u1) - t1^2/(4*sp^2*u1) + u1/(4*sp^2) - 
         (q2*u1)/(2*sp^2*t1) + u1^2/(4*sp^2*t1) + m2/(t1*(sp + t1 + u1)) + 
         q2/(4*t1*(sp + t1 + u1)) + (m2*q2)/(sp*t1*(sp + t1 + u1)) + 
         q2^2/(4*sp*t1*(sp + t1 + u1)) - (q2*t1)/(2*sp^2*(sp + t1 + u1)) + 
         t1/(4*sp*(sp + t1 + u1)) + t1^2/(2*sp^2*(sp + t1 + u1)) - 
         m2/(u1*(sp + t1 + u1)) - q2/(4*u1*(sp + t1 + u1)) - 
         (m2*q2)/(sp*u1*(sp + t1 + u1)) - q2^2/(4*sp*u1*(sp + t1 + u1)) + 
         t1/(4*u1*(sp + t1 + u1)) - (m2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) + 
         (q2^2*t1)/(4*sp^2*u1*(sp + t1 + u1)) - 
         (m2*t1)/(sp*u1*(sp + t1 + u1)) - (q2*t1^2)/(2*sp^2*u1*
           (sp + t1 + u1)) + t1^2/(4*sp*u1*(sp + t1 + u1)) + 
         t1^3/(4*sp^2*u1*(sp + t1 + u1)) + (q2*u1)/(2*sp^2*(sp + t1 + u1)) - 
         u1/(4*sp*(sp + t1 + u1)) - u1/(4*t1*(sp + t1 + u1)) + 
         (m2*q2*u1)/(sp^2*t1*(sp + t1 + u1)) - (q2^2*u1)/
          (4*sp^2*t1*(sp + t1 + u1)) + (m2*u1)/(sp*t1*(sp + t1 + u1)) - 
         u1^2/(2*sp^2*(sp + t1 + u1)) + (q2*u1^2)/(2*sp^2*t1*
           (sp + t1 + u1)) - u1^2/(4*sp*t1*(sp + t1 + u1)) - 
         u1^3/(4*sp^2*t1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/(2*sp^2*t1) - 
         (q2^2*\[Epsilon])/(8*sp^2*t1) + (m2*\[Epsilon])/(2*sp*t1) + 
         (t1*\[Epsilon])/(8*sp^2) - (m2*q2*\[Epsilon])/(2*sp^2*u1) + 
         (q2^2*\[Epsilon])/(8*sp^2*u1) - (m2*\[Epsilon])/(2*sp*u1) - 
         (q2*t1*\[Epsilon])/(4*sp^2*u1) + (t1^2*\[Epsilon])/(8*sp^2*u1) - 
         (u1*\[Epsilon])/(8*sp^2) + (q2*u1*\[Epsilon])/(4*sp^2*t1) - 
         (u1^2*\[Epsilon])/(8*sp^2*t1) - (m2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + (q2*\[Epsilon])/(8*t1*(sp + t1 + u1)) - 
         (m2*q2*\[Epsilon])/(2*sp*t1*(sp + t1 + u1)) + (3*q2^2*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (t1*\[Epsilon])/(8*sp*(sp + t1 + u1)) - 
         (t1^2*\[Epsilon])/(4*sp^2*(sp + t1 + u1)) + (m2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (q2*\[Epsilon])/(8*u1*(sp + t1 + u1)) + 
         (m2*q2*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) + (t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) + 
         (m2*q2*t1*\[Epsilon])/(2*sp^2*u1*(sp + t1 + u1)) - 
         (q2^2*t1*\[Epsilon])/(8*sp^2*u1*(sp + t1 + u1)) + 
         (m2*t1*\[Epsilon])/(2*sp*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (2*sp*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (t1^3*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (u1*\[Epsilon])/(8*sp*(sp + t1 + u1)) - 
         (u1*\[Epsilon])/(8*t1*(sp + t1 + u1)) - (m2*q2*u1*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) + (q2^2*u1*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1)) - (m2*u1*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) - (q2*u1*\[Epsilon])/
          (2*sp*t1*(sp + t1 + u1)) + (u1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) + (u1^2*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) + (u1^3*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1)), 0, 0}, 
       {(3*q2^2)/sp^2 - (5*q2)/sp + (2*m2*q2)/(sp*t1) - (3*q2*u1)/sp^2 - 
         (q2*\[Epsilon])/(2*sp) - (m2*q2*\[Epsilon])/(sp*t1), 
        (-7*q2)/(4*sp^2) + sp^(-1) + 3/(8*t1) - (m2*q2)/(2*sp^2*t1) + 
         q2^2/(8*sp^2*t1) - (3*q2)/(4*sp*t1) + 1/(2*u1) - 
         (2*m2*q2)/(sp^2*u1) + (3*q2^2)/(4*sp^2*u1) + (5*q2)/(4*sp*u1) - 
         (3*q2)/(4*t1*u1) - (m2*q2)/(sp*t1*u1) + q2^2/(2*sp*t1*u1) + 
         sp/(4*t1*u1) - (2*q2*t1)/(sp^2*u1) + u1/(2*sp^2) - 
         (q2*u1)/(4*sp^2*t1) + u1/(4*sp*t1) + u1^2/(8*sp^2*t1) - 
         11/(8*(sp + t1 + u1)) + (5*m2*q2)/(2*sp^2*(sp + t1 + u1)) - 
         (7*q2^2)/(8*sp^2*(sp + t1 + u1)) + (2*q2)/(sp*(sp + t1 + u1)) + 
         q2/(4*t1*(sp + t1 + u1)) - (m2*q2)/(2*sp*t1*(sp + t1 + u1)) - 
         q2^2/(8*sp*t1*(sp + t1 + u1)) - sp/(8*t1*(sp + t1 + u1)) + 
         (7*q2*t1)/(2*sp^2*(sp + t1 + u1)) - t1/(sp*(sp + t1 + u1)) + 
         q2/(2*u1*(sp + t1 + u1)) + (m2*q2)/(sp*u1*(sp + t1 + u1)) - 
         q2^2/(4*sp*u1*(sp + t1 + u1)) - sp/(4*u1*(sp + t1 + u1)) - 
         t1/(2*u1*(sp + t1 + u1)) + (2*m2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) - 
         (3*q2^2*t1)/(4*sp^2*u1*(sp + t1 + u1)) + 
         (7*q2*t1)/(4*sp*u1*(sp + t1 + u1)) + (2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (7*q2*u1)/(4*sp^2*(sp + t1 + u1)) - 
         (7*u1)/(4*sp*(sp + t1 + u1)) - (3*u1)/(8*t1*(sp + t1 + u1)) + 
         (m2*q2*u1)/(2*sp^2*t1*(sp + t1 + u1)) - (q2^2*u1)/
          (8*sp^2*t1*(sp + t1 + u1)) + (q2*u1)/(2*sp*t1*(sp + t1 + u1)) - 
         (t1*u1)/(2*sp^2*(sp + t1 + u1)) - (5*u1^2)/(8*sp^2*(sp + t1 + u1)) + 
         (q2*u1^2)/(4*sp^2*t1*(sp + t1 + u1)) - 
         (3*u1^2)/(8*sp*t1*(sp + t1 + u1)) - 
         u1^3/(8*sp^2*t1*(sp + t1 + u1)) - (3*q2*\[Epsilon])/(8*sp^2) + 
         \[Epsilon]/(4*sp) + \[Epsilon]/(8*t1) - (m2*q2*\[Epsilon])/
          (2*sp^2*t1) + (q2^2*\[Epsilon])/(8*sp^2*t1) - 
         (3*q2*\[Epsilon])/(8*sp*t1) + \[Epsilon]/(8*u1) - 
         (m2*q2*\[Epsilon])/(2*sp^2*u1) + (q2^2*\[Epsilon])/(4*sp^2*u1) - 
         (9*q2*\[Epsilon])/(8*sp*u1) - (3*q2*\[Epsilon])/(8*t1*u1) - 
         (m2*q2*\[Epsilon])/(2*sp*t1*u1) + (q2^2*\[Epsilon])/(4*sp*t1*u1) + 
         (sp*\[Epsilon])/(8*t1*u1) - (q2*t1*\[Epsilon])/(2*sp^2*u1) + 
         (u1*\[Epsilon])/(8*sp^2) - (q2*u1*\[Epsilon])/(4*sp^2*t1) + 
         (u1*\[Epsilon])/(8*sp*t1) + (u1^2*\[Epsilon])/(8*sp^2*t1) - 
         \[Epsilon]/(4*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) + (3*q2*\[Epsilon])/(8*sp*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(8*t1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) + (7*q2*t1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (t1*\[Epsilon])/(4*sp*(sp + t1 + u1)) - 
         (t1*\[Epsilon])/(8*u1*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/
          (4*sp^2*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (2*sp^2*u1*(sp + t1 + u1)) + (5*q2*u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (u1*\[Epsilon])/(2*sp*(sp + t1 + u1)) - 
         (u1*\[Epsilon])/(8*t1*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (2*sp^2*t1*(sp + t1 + u1)) - (q2^2*u1*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1)) + (3*q2*u1*\[Epsilon])/
          (8*sp*t1*(sp + t1 + u1)) - (t1*u1*\[Epsilon])/
          (8*sp^2*(sp + t1 + u1)) - (u1^2*\[Epsilon])/
          (4*sp^2*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (4*sp^2*t1*(sp + t1 + u1)) - (u1^2*\[Epsilon])/
          (4*sp*t1*(sp + t1 + u1)) - (u1^3*\[Epsilon])/
          (8*sp^2*t1*(sp + t1 + u1)), 5/(8*sp*u1) + 1/(4*t1*u1) + 
         (3*t1)/(8*sp^2*u1) - 1/(2*sp*(sp + t1 + u1)) - 
         1/(4*t1*(sp + t1 + u1)) - t1/(4*sp^2*(sp + t1 + u1)) - 
         1/(2*u1*(sp + t1 + u1)) - (3*t1)/(4*sp*u1*(sp + t1 + u1)) - 
         t1^2/(4*sp^2*u1*(sp + t1 + u1)) + \[Epsilon]/(4*sp*u1) + 
         \[Epsilon]/(8*t1*u1) + (t1*\[Epsilon])/(8*sp^2*u1) - 
         \[Epsilon]/(4*sp*(sp + t1 + u1)) - \[Epsilon]/
          (8*t1*(sp + t1 + u1)) - (t1*\[Epsilon])/(8*sp^2*(sp + t1 + u1)) - 
         \[Epsilon]/(4*u1*(sp + t1 + u1)) - (3*t1*\[Epsilon])/
          (8*sp*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon])/
          (8*sp^2*u1*(sp + t1 + u1)), 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}}}}
 
CoeffRPOKk0 = {{{{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, -(t1*u1) - (t1^2*u1)/sp - 
         (t1*u1^2)/(8*sp) - (t1^2*u1^2)/(8*sp^2), -sp - 2*t1 - (2*t1^2)/sp - 
         u1/8 - (3*t1*u1)/(8*sp) - (3*t1^2*u1)/(8*sp^2), 
        -1/8 - (3*t1)/(8*sp) - (3*t1^2)/(8*sp^2) - t1/u1 - t1^2/(sp*u1), 
        -t1/(8*sp*u1) - t1^2/(8*sp^2*u1)}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}}}}
 
CoeffRPOKk2 = {{{{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, 
      {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {8*m2*sp + 4*q2*t1 + 
         (8*q2*t1^2)/sp - 4*t1*u1, m2/2 + q2/4 - 2*sp + (q2*t1)/(2*sp) + 
         (q2*t1^2)/(2*sp^2) - (2*q2*sp)/u1 - u1/4 - (t1*u1)/(2*sp), 
        -1/2 - t1/(2*sp) + (8*m2*sp)/u1^2 + (4*q2*sp)/u1^2 + 
         (12*q2*t1)/u1^2 + (8*q2*t1^2)/(sp*u1^2) + m2/(2*u1) + q2/(4*u1) - 
         (2*sp)/u1 - (6*t1)/u1 + (q2*t1)/(2*sp*u1) + (q2*t1^2)/(2*sp^2*u1), 
        0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}, {{0, 0, 0, 0, 0}, 
       {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}}}
