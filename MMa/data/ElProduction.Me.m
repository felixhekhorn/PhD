BGQED = (-16*m2^2*(t1 + u1)^2 + t1*u1*(2 + \[Epsilon])*
       (4*q2^2 + 4*sp^2 + 2*t1^2 + 2*u1^2 + 4*sp*(t1 + u1) + 
        4*q2*(2*sp + t1 + u1) + t1^2*\[Epsilon] + 2*t1*u1*\[Epsilon] + 
        u1^2*\[Epsilon]) - 4*m2*((t1 + u1)^3*(2 + \[Epsilon]) + 
        q2*(2*t1*u1*\[Epsilon] + t1^2*(2 + \[Epsilon]) + 
          u1^2*(2 + \[Epsilon])) + sp*(2*t1*u1*\[Epsilon] + 
          t1^2*(2 + \[Epsilon]) + u1^2*(2 + \[Epsilon]))))/(4*t1^2*u1^2)
 
BLQED = (-4*q2*((q2 + sp)*t1*u1 - m2*(t1 + u1)^2))/(sp^2*t1*u1)
 
BPQED = (-2*m2*sp*(t1^3 + t1^2*u1 + t1*u1^2 + u1^3) + 
      t1*u1*(sp^2*(t1 + u1) + (t1 - u1)^2*(t1 + u1) + sp*(t1^2 + u1^2) + 
        q2*(-(t1 - u1)^2 + sp*(t1 + u1))))/(sp*t1^2*u1^2)
 
CoeffAG1 = {{8*m2*t1^2 + 4*q2*t1^2 + 2*q2*t1^2*\[Epsilon], 
      (16*m2*sp*t1)/u1 + (8*q2*sp*t1)/u1 + (16*m2*t1^2)/u1 + (8*q2*t1^2)/u1 + 
       (4*q2*sp*t1*\[Epsilon])/u1 + (4*q2*t1^2*\[Epsilon])/u1, 
      (8*m2*sp^2)/u1^2 + (4*q2*sp^2)/u1^2 + (16*m2*sp*t1)/u1^2 + 
       (8*q2*sp*t1)/u1^2 + (8*m2*t1^2)/u1^2 + (4*q2*t1^2)/u1^2 + 
       (2*q2*sp^2*\[Epsilon])/u1^2 + (4*q2*sp*t1*\[Epsilon])/u1^2 + 
       (2*q2*t1^2*\[Epsilon])/u1^2, 0}, {8*m2^2 + 4*m2*q2 + 8*m2*t1 + 
       4*q2*t1 + 2*m2*q2*\[Epsilon] + 2*q2*t1*\[Epsilon], 
      8*m2 + 4*q2 - 4*sp - 4*t1 + (16*m2^2)/u1 - (4*q2^2)/u1 + (8*m2*sp)/u1 + 
       (4*q2*sp)/u1 - (4*sp^2)/u1 + (16*m2*t1)/u1 + (8*q2*t1)/u1 - 
       (8*sp*t1)/u1 - (8*t1^2)/u1 - 2*u1 + 2*q2*\[Epsilon] - 
       2*sp*\[Epsilon] + (4*m2*q2*\[Epsilon])/u1 - (2*q2^2*\[Epsilon])/u1 + 
       (2*q2*sp*\[Epsilon])/u1 - (2*sp^2*\[Epsilon])/u1 + 
       (4*q2*t1*\[Epsilon])/u1 - 2*u1*\[Epsilon] - (u1*\[Epsilon]^2)/2, 
      (8*m2^2)/u1^2 + (4*m2*q2)/u1^2 + (8*m2*sp)/u1^2 + (4*q2*sp)/u1^2 + 
       (8*m2*t1)/u1^2 + (4*q2*t1)/u1^2 + (8*m2)/u1 + (4*q2)/u1 + (4*t1)/u1 - 
       2*\[Epsilon] + (2*m2*q2*\[Epsilon])/u1^2 + (2*q2*sp*\[Epsilon])/u1^2 + 
       (2*q2*t1*\[Epsilon])/u1^2 + (2*q2*\[Epsilon])/u1 - 
       (2*sp*\[Epsilon])/u1 - \[Epsilon]^2, -2/u1 - (2*\[Epsilon])/u1 - 
       \[Epsilon]^2/(2*u1)}, {4*m2 + 2*q2 + 2*m2*\[Epsilon] + 
       2*q2*\[Epsilon] + (q2*\[Epsilon]^2)/2, (-4*q2)/u1 - (4*sp)/u1 - 
       (8*t1)/u1 + 2*\[Epsilon] + (4*m2*\[Epsilon])/u1 - 
       (2*q2*\[Epsilon])/u1 + (q2*\[Epsilon]^2)/u1, 
      (4*m2)/u1^2 + (2*q2)/u1^2 + 4/u1 + (2*m2*\[Epsilon])/u1^2 + 
       (2*q2*\[Epsilon])/u1^2 + (2*\[Epsilon])/u1 + (q2*\[Epsilon]^2)/
        (2*u1^2), 0}, {0, -4/u1 - (2*\[Epsilon])/u1, 0, 0}}
 
CoeffAL1 = {{(8*q2*t1^3)/sp + (8*q2*t1^4)/sp^2, (16*q2*t1^2)/u1 + 
       (32*q2*t1^3)/(sp*u1) + (16*q2*t1^4)/(sp^2*u1), 
      (8*q2*sp*t1)/u1^2 + (24*q2*t1^2)/u1^2 + (24*q2*t1^3)/(sp*u1^2) + 
       (8*q2*t1^4)/(sp^2*u1^2)}, {(8*m2*q2*t1)/sp + (8*m2*q2*t1^2)/sp^2 + 
       (16*q2*t1^2)/sp + (24*q2*t1^3)/sp^2, (4*q2*t1)/sp + (16*q2*t1)/u1 + 
       (16*m2*q2*t1)/(sp*u1) - (8*q2^2*t1)/(sp*u1) + 
       (16*m2*q2*t1^2)/(sp^2*u1) - (8*q2^2*t1^2)/(sp^2*u1) + 
       (48*q2*t1^2)/(sp*u1) + (32*q2*t1^3)/(sp^2*u1), 
      (8*q2*t1)/u1^2 + (8*m2*q2*t1)/(sp*u1^2) + (8*m2*q2*t1^2)/(sp^2*u1^2) + 
       (16*q2*t1^2)/(sp*u1^2) + (8*q2*t1^3)/(sp^2*u1^2) - (4*q2)/u1 - 
       (4*q2*t1)/(sp*u1)}, {(8*m2*q2)/sp + (16*m2*q2*t1)/sp^2 + 
       (12*q2*t1)/sp + (28*q2*t1^2)/sp^2 + (2*q2*t1*\[Epsilon])/sp + 
       (2*q2*t1^2*\[Epsilon])/sp^2, (4*q2)/u1 + (8*m2*q2)/(sp*u1) - 
       (4*q2^2)/(sp*u1) + (16*m2*q2*t1)/(sp^2*u1) - (8*q2^2*t1)/(sp^2*u1) + 
       (24*q2*t1)/(sp*u1) + (24*q2*t1^2)/(sp^2*u1) - (2*q2*\[Epsilon])/sp + 
       (4*q2*t1*\[Epsilon])/(sp*u1) + (4*q2*t1^2*\[Epsilon])/(sp^2*u1), 
      (4*q2*t1)/(sp*u1^2) + (4*q2*t1^2)/(sp^2*u1^2) - (4*q2)/(sp*u1) + 
       (2*q2*t1*\[Epsilon])/(sp*u1^2) + (2*q2*t1^2*\[Epsilon])/(sp^2*u1^2) - 
       (2*q2*\[Epsilon])/(sp*u1)}, {(8*m2*q2)/sp^2 + (4*q2)/sp + 
       (16*q2*t1)/sp^2 + (2*q2*\[Epsilon])/sp + (4*q2*t1*\[Epsilon])/sp^2, 
      (-4*q2^2)/(sp^2*u1) + (4*q2)/(sp*u1) + (8*q2*t1)/(sp^2*u1) - 
       (2*q2^2*\[Epsilon])/(sp^2*u1) + (2*q2*\[Epsilon])/(sp*u1) + 
       (4*q2*t1*\[Epsilon])/(sp^2*u1), 0}, 
     {(4*q2)/sp^2 + (2*q2*\[Epsilon])/sp^2, 0, 0}}
 
CoeffAP1k0 = {{0, 0, 0, 0}, {-8*h*m2*sp - 4*h*q2*t1 - (8*h*q2*t1^2)/sp - 
       4*h*m2*u1, -4*h*m2 + 4*h*q2 - 4*h*sp - 4*h*t1 + (4*h*q2*t1)/sp + 
       (4*h*q2*sp)/u1 - 2*h*u1, (-8*h*m2*sp)/u1^2 - (4*h*q2*sp)/u1^2 - 
       (12*h*q2*t1)/u1^2 - (8*h*q2*t1^2)/(sp*u1^2) - (4*h*m2)/u1 + 
       (4*h*t1)/u1 - (4*h*q2*t1)/(sp*u1), (-4*h*m2)/u1^2 - (2*h)/u1}, 
     {-2*h*q2 - (8*h*m2*q2)/sp - (12*h*q2*t1)/sp, (4*h*q2^2)/(sp*u1) + 
       (4*h*sp)/u1, (-2*h*q2)/u1^2 - (8*h*m2*q2)/(sp*u1^2) - 
       (4*h*q2*t1)/(sp*u1^2) + (4*h)/u1 - (4*h*q2)/(sp*u1), 0}, 
     {(-4*h*q2)/sp, (4*h*q2)/(sp*u1), 0, 0}}
 
CoeffAP1k2 = {{-8*h*m2*sp - 4*h*q2*t1 - (8*h*q2*t1^2)/sp + 4*h*t1*u1, 
      (4*h*q2*sp)/u1, (-8*h*m2*sp)/u1^2 - (4*h*q2*sp)/u1^2 - 
       (12*h*q2*t1)/u1^2 - (8*h*q2*t1^2)/(sp*u1^2) + (4*h*t1)/u1, 0}}
 
CoeffAG2 = {{4*q2*t1^2 + 2*q2*t1^2*\[Epsilon], -4*m2*q2 - 2*q2^2 - 4*m2*sp - 
       2*q2*sp + (2*q2^3)/(q2 + sp) + (4*q2^2*sp)/(q2 + sp) + 
       (2*q2*sp^2)/(q2 + sp) + 4*sp*t1 - (8*q2^2*t1)/(q2 + sp) - 
       (4*q2*sp*t1)/(q2 + sp) - (4*sp^2*t1)/(q2 + sp) + 
       (8*q2*t1^2)/(q2 + sp) + 2*q2*u1 + 2*sp*u1 - (2*q2^2*u1)/(q2 + sp) - 
       (4*q2*sp*u1)/(q2 + sp) - (2*sp^2*u1)/(q2 + sp) + 4*t1*u1 + 
       (4*q2*t1*u1)/(q2 + sp) - (4*sp*t1*u1)/(q2 + sp) - 2*m2*q2*\[Epsilon] - 
       q2^2*\[Epsilon] - 2*m2*sp*\[Epsilon] - q2*sp*\[Epsilon] + 
       (q2^3*\[Epsilon])/(q2 + sp) + (2*q2^2*sp*\[Epsilon])/(q2 + sp) + 
       (q2*sp^2*\[Epsilon])/(q2 + sp) - 2*q2*t1*\[Epsilon] - 
       (2*q2^2*t1*\[Epsilon])/(q2 + sp) + (2*q2*sp*t1*\[Epsilon])/(q2 + sp) + 
       (4*q2*t1^2*\[Epsilon])/(q2 + sp) + q2*u1*\[Epsilon] + 
       sp*u1*\[Epsilon] - (q2^2*u1*\[Epsilon])/(q2 + sp) - 
       (2*q2*sp*u1*\[Epsilon])/(q2 + sp) - (sp^2*u1*\[Epsilon])/(q2 + sp) + 
       2*t1*u1*\[Epsilon] + (2*q2*t1*u1*\[Epsilon])/(q2 + sp) - 
       (2*sp*t1*u1*\[Epsilon])/(q2 + sp), (2*q2^3)/(q2 + sp)^2 + 
       (2*q2*sp^2)/(q2 + sp)^2 + (2*q2^2)/(q2 + sp) - (2*q2*sp)/(q2 + sp) - 
       (4*q2^2*t1)/(q2 + sp)^2 + (4*q2*sp*t1)/(q2 + sp)^2 - 
       (4*q2*t1)/(q2 + sp) + (4*q2*t1^2)/(q2 + sp)^2 - 
       (2*q2^2*u1)/(q2 + sp)^2 + (4*q2*sp*u1)/(q2 + sp)^2 - 
       (2*sp^2*u1)/(q2 + sp)^2 - (6*q2*u1)/(q2 + sp) + (2*sp*u1)/(q2 + sp) + 
       (4*q2*t1*u1)/(q2 + sp)^2 - (4*sp*t1*u1)/(q2 + sp)^2 + 
       (4*t1*u1)/(q2 + sp) - (4*sp*u1^2)/(q2 + sp)^2 + (4*u1^2)/(q2 + sp) - 
       2*q2*\[Epsilon] + (q2^3*\[Epsilon])/(q2 + sp)^2 + 
       (q2*sp^2*\[Epsilon])/(q2 + sp)^2 - (4*m2*q2*\[Epsilon])/(q2 + sp) + 
       (3*q2^2*\[Epsilon])/(q2 + sp) - (4*m2*sp*\[Epsilon])/(q2 + sp) + 
       (q2*sp*\[Epsilon])/(q2 + sp) + 2*t1*\[Epsilon] - 
       (2*q2^2*t1*\[Epsilon])/(q2 + sp)^2 + (2*q2*sp*t1*\[Epsilon])/
        (q2 + sp)^2 - (4*q2*t1*\[Epsilon])/(q2 + sp) - 
       (2*sp*t1*\[Epsilon])/(q2 + sp) + (2*q2*t1^2*\[Epsilon])/(q2 + sp)^2 + 
       2*u1*\[Epsilon] - (q2^2*u1*\[Epsilon])/(q2 + sp)^2 + 
       (2*q2*sp*u1*\[Epsilon])/(q2 + sp)^2 - (sp^2*u1*\[Epsilon])/
        (q2 + sp)^2 - (5*q2*u1*\[Epsilon])/(q2 + sp) - 
       (sp*u1*\[Epsilon])/(q2 + sp) + (2*q2*t1*u1*\[Epsilon])/(q2 + sp)^2 - 
       (2*sp*t1*u1*\[Epsilon])/(q2 + sp)^2 + (2*t1*u1*\[Epsilon])/(q2 + sp) - 
       (2*sp*u1^2*\[Epsilon])/(q2 + sp)^2 + (2*u1^2*\[Epsilon])/(q2 + sp), 
      (-4*m2*q2)/(q2 + sp)^2 + (2*q2^2)/(q2 + sp)^2 - (4*m2*sp)/(q2 + sp)^2 + 
       (2*q2*sp)/(q2 + sp)^2 - (2*q2)/(q2 + sp) - (2*q2*t1)/(q2 + sp)^2 - 
       (2*sp*t1)/(q2 + sp)^2 + (2*t1)/(q2 + sp) - (2*q2*u1)/(q2 + sp)^2 - 
       (2*sp*u1)/(q2 + sp)^2 + (2*u1)/(q2 + sp) - (2*m2*q2*\[Epsilon])/
        (q2 + sp)^2 + (q2^2*\[Epsilon])/(q2 + sp)^2 - 
       (2*m2*sp*\[Epsilon])/(q2 + sp)^2 + (q2*sp*\[Epsilon])/(q2 + sp)^2 - 
       (q2*\[Epsilon])/(q2 + sp) - (q2*t1*\[Epsilon])/(q2 + sp)^2 - 
       (sp*t1*\[Epsilon])/(q2 + sp)^2 + (t1*\[Epsilon])/(q2 + sp) - 
       (q2*u1*\[Epsilon])/(q2 + sp)^2 - (sp*u1*\[Epsilon])/(q2 + sp)^2 + 
       (u1*\[Epsilon])/(q2 + sp)}, {4*m2*q2 + 4*q2*t1 + 2*m2*q2*\[Epsilon] + 
       2*q2*t1*\[Epsilon], 2*q2 + 4*sp - (8*q2^2)/(q2 + sp) + 
       (8*m2*sp)/(q2 + sp) - (2*q2*sp)/(q2 + sp) - (6*sp^2)/(q2 + sp) - 
       4*t1 + (16*q2*t1)/(q2 + sp) - (8*t1^2)/(q2 + sp) - 2*u1 + 
       (10*q2*u1)/(q2 + sp) - (2*sp*u1)/(q2 + sp) - (8*t1*u1)/(q2 + sp) - 
       (4*u1^2)/(q2 + sp) + q2*\[Epsilon] - 2*sp*\[Epsilon] + 
       (4*m2*q2*\[Epsilon])/(q2 + sp) - (5*q2^2*\[Epsilon])/(q2 + sp) + 
       (q2*sp*\[Epsilon])/(q2 + sp) + (4*q2*t1*\[Epsilon])/(q2 + sp) - 
       u1*\[Epsilon] + (5*q2*u1*\[Epsilon])/(q2 + sp) - 
       (sp*u1*\[Epsilon])/(q2 + sp) - (2*u1^2*\[Epsilon])/(q2 + sp) - 
       (q2*\[Epsilon]^2)/2 - (sp*\[Epsilon]^2)/2, 4 + (4*m2*q2)/(q2 + sp)^2 - 
       (4*q2^2)/(q2 + sp)^2 + (8*m2)/(q2 + sp) - (4*sp)/(q2 + sp) + 
       (4*q2*t1)/(q2 + sp)^2 + (4*t1)/(q2 + sp) + (2*q2*u1)/(q2 + sp)^2 - 
       (2*sp*u1)/(q2 + sp)^2 + (2*u1)/(q2 + sp) + (2*m2*q2*\[Epsilon])/
        (q2 + sp)^2 - (2*q2^2*\[Epsilon])/(q2 + sp)^2 + 
       (2*q2*\[Epsilon])/(q2 + sp) - (2*sp*\[Epsilon])/(q2 + sp) + 
       (2*q2*t1*\[Epsilon])/(q2 + sp)^2 + (q2*u1*\[Epsilon])/(q2 + sp)^2 - 
       (sp*u1*\[Epsilon])/(q2 + sp)^2 - (u1*\[Epsilon])/(q2 + sp) - 
       (q2*\[Epsilon]^2)/(q2 + sp) - (sp*\[Epsilon]^2)/(q2 + sp), 
      (-2*q2)/(q2 + sp)^2 - (2*sp)/(q2 + sp)^2 - (2*q2*\[Epsilon])/
        (q2 + sp)^2 - (2*sp*\[Epsilon])/(q2 + sp)^2 - 
       (q2*\[Epsilon]^2)/(2*(q2 + sp)^2) - (sp*\[Epsilon]^2)/
        (2*(q2 + sp)^2)}, {2*q2 + 2*q2*\[Epsilon] + (q2*\[Epsilon]^2)/2, 
      -6 - (8*m2)/(q2 + sp) + (6*q2)/(q2 + sp) + (6*sp)/(q2 + sp) - 
       (8*t1)/(q2 + sp) - (4*u1)/(q2 + sp) + (2*sp*\[Epsilon])/(q2 + sp) + 
       (q2*\[Epsilon]^2)/(q2 + sp), (2*q2)/(q2 + sp)^2 + 4/(q2 + sp) + 
       (2*q2*\[Epsilon])/(q2 + sp)^2 + (2*\[Epsilon])/(q2 + sp) + 
       (q2*\[Epsilon]^2)/(2*(q2 + sp)^2), 0}, 
     {0, -4/(q2 + sp) - (2*\[Epsilon])/(q2 + sp), 0, 0}}
 
CoeffAL2 = {{0, 0, (-8*m2*q2)/sp, (-8*m2*q2)/sp^2}, 
     {(-8*q2*t1^2)/sp, (16*m2*q2)/sp + (8*q2*t1)/sp - (8*q2*t1^2)/sp^2, 
      (24*m2*q2)/sp^2 - (4*q2)/sp + (8*q2*t1)/sp^2 - (2*q2*\[Epsilon])/sp, 
      (-4*q2)/sp^2 - (2*q2*\[Epsilon])/sp^2}, 
     {(-8*m2*q2)/sp - (8*q2*t1)/sp + (8*q2*t1^2)/sp^2, 
      (-24*m2*q2)/sp^2 + (8*q2)/sp - (16*q2*t1)/sp^2 + (4*q2*\[Epsilon])/sp, 
      (12*q2)/sp^2 + (6*q2*\[Epsilon])/sp^2, 0}, 
     {(8*m2*q2)/sp^2 - (4*q2)/sp + (8*q2*t1)/sp^2 - (2*q2*\[Epsilon])/sp, 
      (-12*q2)/sp^2 - (6*q2*\[Epsilon])/sp^2, 0, 0}, 
     {(4*q2)/sp^2 + (2*q2*\[Epsilon])/sp^2, 0, 0, 0}}
 
CoeffAP2 = {{4*h*q2*t1^2, -4*h*m2*q2 - 2*h*q2^2 - 4*h*m2*sp - 2*h*q2*sp + 
       (2*h*q2^3)/(q2 + sp) + (4*h*q2^2*sp)/(q2 + sp) + 
       (2*h*q2*sp^2)/(q2 + sp) - 4*h*q2*t1 - (4*h*q2^2*t1)/sp + 4*h*sp*t1 + 
       (4*h*q2^3*t1)/(sp*(q2 + sp)) - (4*h*sp^2*t1)/(q2 + sp) + 4*h*t1^2 + 
       (4*h*q2*t1^2)/sp - (4*h*q2^2*t1^2)/(sp*(q2 + sp)) - 
       (4*h*sp*t1^2)/(q2 + sp) + 2*h*q2*u1 + 2*h*sp*u1 - 
       (2*h*q2^2*u1)/(q2 + sp) - (4*h*q2*sp*u1)/(q2 + sp) - 
       (2*h*sp^2*u1)/(q2 + sp) + 4*h*t1*u1 + (4*h*q2*t1*u1)/(q2 + sp) - 
       (4*h*sp*t1*u1)/(q2 + sp), -8*h*m2 + 2*h*q2 - (8*h*m2*q2)/sp + 
       (2*h*q2^2)/sp + (2*h*q2^3)/(q2 + sp)^2 + (2*h*q2*sp^2)/(q2 + sp)^2 + 
       (8*h*m2*q2)/(q2 + sp) - (2*h*q2^2)/(q2 + sp) - 
       (2*h*q2^3)/(sp*(q2 + sp)) + (8*h*m2*sp)/(q2 + sp) - 
       (4*h*q2*sp)/(q2 + sp) - (4*h*q2*t1)/sp - (4*h*q2^2*t1)/(q2 + sp)^2 + 
       (4*h*q2*sp*t1)/(q2 + sp)^2 + (4*h*q2^2*t1)/(sp*(q2 + sp)) + 
       (4*h*t1^2)/sp + (4*h*q2*t1^2)/(q2 + sp)^2 - (4*h*t1^2)/(q2 + sp) - 
       (4*h*q2*t1^2)/(sp*(q2 + sp)) - 2*h*u1 - (2*h*q2*u1)/sp - 
       (2*h*q2^2*u1)/(q2 + sp)^2 + (4*h*q2*sp*u1)/(q2 + sp)^2 - 
       (2*h*sp^2*u1)/(q2 + sp)^2 - (2*h*q2*u1)/(q2 + sp) + 
       (2*h*q2^2*u1)/(sp*(q2 + sp)) + (4*h*sp*u1)/(q2 + sp) + 
       (4*h*t1*u1)/sp + (4*h*q2*t1*u1)/(q2 + sp)^2 - 
       (4*h*sp*t1*u1)/(q2 + sp)^2 - (4*h*q2*t1*u1)/(sp*(q2 + sp)) - 
       (4*h*sp*u1^2)/(q2 + sp)^2 + (4*h*u1^2)/(q2 + sp), 
      (2*h*q2)/sp - (4*h*m2*q2)/(q2 + sp)^2 + (2*h*q2^2)/(q2 + sp)^2 - 
       (4*h*m2*sp)/(q2 + sp)^2 + (2*h*q2*sp)/(q2 + sp)^2 + 
       (8*h*m2)/(q2 + sp) - (4*h*q2)/(q2 + sp) + (8*h*m2*q2)/(sp*(q2 + sp)) - 
       (2*h*q2^2)/(sp*(q2 + sp)) - (2*h*t1)/sp - (2*h*q2*t1)/(q2 + sp)^2 - 
       (2*h*sp*t1)/(q2 + sp)^2 + (4*h*t1)/(q2 + sp) + 
       (2*h*q2*t1)/(sp*(q2 + sp)) - (2*h*u1)/sp - (2*h*q2*u1)/(q2 + sp)^2 - 
       (2*h*sp*u1)/(q2 + sp)^2 + (4*h*u1)/(q2 + sp) + 
       (2*h*q2*u1)/(sp*(q2 + sp))}, {4*h*m2*q2 + 4*h*q2*t1 - 
       (8*h*q2*t1^2)/sp, 8*h*m2 - 2*h*q2 + (16*h*m2*q2)/sp - (2*h*q2^2)/sp + 
       2*h*sp - (8*h*m2*q2)/(q2 + sp) - (2*h*q2^2)/(q2 + sp) + 
       (2*h*q2^3)/(sp*(q2 + sp)) + (4*h*q2*sp)/(q2 + sp) - 
       (4*h*sp^2)/(q2 + sp) + (16*h*q2*t1)/sp + (4*h*q2*t1)/(q2 + sp) - 
       (8*h*q2^2*t1)/(sp*(q2 + sp)) - (4*h*sp*t1)/(q2 + sp) + 
       (8*h*q2*t1^2)/(sp*(q2 + sp)) + (2*h*q2*u1)/sp + 
       (6*h*q2*u1)/(q2 + sp) - (2*h*q2^2*u1)/(sp*(q2 + sp)) - 
       (4*h*sp*u1)/(q2 + sp) - (4*h*t1*u1)/sp - (4*h*t1*u1)/(q2 + sp) + 
       (4*h*q2*t1*u1)/(sp*(q2 + sp)) - (4*h*u1^2)/(q2 + sp) + 
       h*q2*\[Epsilon] + h*sp*\[Epsilon], -2*h - (12*h*q2)/sp + 
       (4*h*m2*q2)/(q2 + sp)^2 - (4*h*q2^2)/(q2 + sp)^2 - 
       (8*h*m2)/(q2 + sp) + (14*h*q2)/(q2 + sp) - 
       (16*h*m2*q2)/(sp*(q2 + sp)) + (8*h*q2^2)/(sp*(q2 + sp)) + 
       (2*h*sp)/(q2 + sp) + (2*h*t1)/sp + (4*h*q2*t1)/(q2 + sp)^2 - 
       (6*h*t1)/(q2 + sp) - (10*h*q2*t1)/(sp*(q2 + sp)) + (4*h*u1)/sp + 
       (2*h*q2*u1)/(q2 + sp)^2 - (2*h*sp*u1)/(q2 + sp)^2 - 
       (2*h*u1)/(q2 + sp) - (4*h*q2*u1)/(sp*(q2 + sp)) + 2*h*\[Epsilon] + 
       (2*h*q2*\[Epsilon])/sp, (-2*h*q2)/(q2 + sp)^2 - (2*h*sp)/(q2 + sp)^2 + 
       (4*h)/(q2 + sp) + (4*h*q2)/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/
        (q2 + sp)^2 - (h*sp*\[Epsilon])/(q2 + sp)^2 + 
       (2*h*\[Epsilon])/(q2 + sp) + (2*h*q2*\[Epsilon])/(sp*(q2 + sp))}, 
     {2*h*q2 - (8*h*m2*q2)/sp - (8*h*q2*t1)/sp - h*q2*\[Epsilon], 
      (14*h*q2)/sp - (6*h*q2)/(q2 + sp) + (8*h*m2*q2)/(sp*(q2 + sp)) - 
       (6*h*q2^2)/(sp*(q2 + sp)) + (8*h*q2*t1)/(sp*(q2 + sp)) - (2*h*u1)/sp - 
       (2*h*u1)/(q2 + sp) + (2*h*q2*u1)/(sp*(q2 + sp)) - 2*h*\[Epsilon] - 
       (4*h*q2*\[Epsilon])/sp, (2*h*q2)/(q2 + sp)^2 - (4*h)/(q2 + sp) - 
       (8*h*q2)/(sp*(q2 + sp)) + (h*q2*\[Epsilon])/(q2 + sp)^2 - 
       (2*h*\[Epsilon])/(q2 + sp) - (4*h*q2*\[Epsilon])/(sp*(q2 + sp)), 0}, 
     {(-4*h*q2)/sp + (2*h*q2*\[Epsilon])/sp, (4*h*q2)/(sp*(q2 + sp)) + 
       (2*h*q2*\[Epsilon])/(sp*(q2 + sp)), 0, 0}}
 
CoeffAG3 = {{{{-4*m2*q2*sp + 2*q2^2*sp + 4*m2*sp^2 + 4*m2*q2*t1 + 6*q2^2*t1 + 
         4*m2*sp*t1 - 10*q2*sp*t1 + 6*sp^2*t1 - 10*q2*t1^2 + 14*sp*t1^2 + 
         8*t1^3 + 4*m2*sp*u1 - 2*q2*sp*u1 - 10*q2*t1*u1 + 12*sp*t1*u1 + 
         14*t1^2*u1 + 6*t1*u1^2 + q2^2*sp*\[Epsilon] + (q2*sp^2*\[Epsilon])/
          2 + 2*q2^2*t1*\[Epsilon] - (q2*sp*u1*\[Epsilon])/2 - 
         (sp^2*u1*\[Epsilon])/2 - (q2*t1*u1*\[Epsilon])/2 - 
         (sp*t1*u1*\[Epsilon])/2 - (sp*u1^2*\[Epsilon])/2, 
        4*m2*q2 + 2*q2^2 + 4*m2*sp - 4*q2*sp - (4*m2*q2^2)/(q2 + sp) - 
         (2*q2^3)/(q2 + sp) + (2*q2^2*sp)/(q2 + sp) - 8*m2*t1 - 16*q2*t1 + 
         8*sp*t1 + (8*q2^2*t1)/(q2 + sp) - (4*q2*sp*t1)/(q2 + sp) + 12*t1^2 - 
         (12*q2*t1^2)/(q2 + sp) + (4*sp*t1^2)/(q2 + sp) + 
         (8*t1^3)/(q2 + sp) - 4*m2*u1 - 4*q2*u1 + 4*sp*u1 + 
         (4*m2*q2*u1)/(q2 + sp) + (4*q2^2*u1)/(q2 + sp) - 
         (2*q2*sp*u1)/(q2 + sp) + 14*t1*u1 - (8*q2*t1*u1)/(q2 + sp) + 
         (2*sp*t1*u1)/(q2 + sp) + (10*t1^2*u1)/(q2 + sp) + 2*u1^2 - 
         (2*q2*u1^2)/(q2 + sp) + (2*t1*u1^2)/(q2 + sp) + q2^2*\[Epsilon] - 
         q2*sp*\[Epsilon] - (q2^3*\[Epsilon])/(q2 + sp) + 
         (q2^2*sp*\[Epsilon])/(2*(q2 + sp)) - 4*q2*t1*\[Epsilon] + 
         (2*q2^2*t1*\[Epsilon])/(q2 + sp) - (3*q2*u1*\[Epsilon])/2 + 
         sp*u1*\[Epsilon] + (3*q2^2*u1*\[Epsilon])/(2*(q2 + sp)) - 
         (q2*sp*u1*\[Epsilon])/(2*(q2 + sp)) + t1*u1*\[Epsilon] + 
         (u1^2*\[Epsilon])/2 - (q2*u1^2*\[Epsilon])/(2*(q2 + sp)), 
        2*t1 + (4*m2*t1)/(q2 + sp) - (2*q2*t1)/(q2 + sp) + 
         (2*t1^2)/(q2 + sp) + (q2*\[Epsilon])/2 - (q2^2*\[Epsilon])/
          (2*(q2 + sp)) - (u1*\[Epsilon])/2 + (q2*u1*\[Epsilon])/
          (2*(q2 + sp)) - (t1*u1*\[Epsilon])/(2*(q2 + sp))}, 
       {-4*q2*sp + 2*sp^2 - 4*q2*t1 + 6*sp*t1 + 4*t1^2 + 2*sp*u1 + 4*t1*u1 - 
         (5*q2*sp*\[Epsilon])/2 + sp^2*\[Epsilon] - q2*t1*\[Epsilon] + 
         sp*t1*\[Epsilon] + sp*u1*\[Epsilon], -4*m2 - 2*q2 + 6*sp + 
         (4*m2*q2)/(q2 + sp) + (2*q2^2)/(q2 + sp) - (2*q2*sp)/(q2 + sp) + 
         10*t1 - (4*q2*t1)/(q2 + sp) + (4*t1^2)/(q2 + sp) + 2*u1 - 
         (2*q2*u1)/(q2 + sp) - (3*q2*\[Epsilon])/2 + 3*sp*\[Epsilon] + 
         (3*q2^2*\[Epsilon])/(2*(q2 + sp)) - (q2*sp*\[Epsilon])/(q2 + sp) + 
         2*t1*\[Epsilon] - (2*q2*t1*\[Epsilon])/(q2 + sp) + u1*\[Epsilon] - 
         (q2*u1*\[Epsilon])/(q2 + sp), (t1*\[Epsilon])/(q2 + sp)}, 
       {0, 0, 0}}, {{4*m2*sp - 6*q2*sp + 2*sp^2 - 12*q2*t1 + 16*sp*t1 + 
         16*t1^2 + (4*m2*q2*sp)/u1 + (2*q2^2*sp)/u1 - (2*q2*sp^2)/u1 + 
         (4*m2*q2*t1)/u1 + (4*q2^2*t1)/u1 + (4*m2*sp*t1)/u1 - 
         (6*q2*sp*t1)/u1 + (2*sp^2*t1)/u1 - (6*q2*t1^2)/u1 + 
         (10*sp*t1^2)/u1 + (8*t1^3)/u1 + 4*sp*u1 + 8*t1*u1 - 
         2*q2*sp*\[Epsilon] + (sp^2*\[Epsilon])/2 - 3*q2*t1*\[Epsilon] + 
         sp*t1*\[Epsilon] + (q2^2*sp*\[Epsilon])/u1 - (q2*sp^2*\[Epsilon])/
          (2*u1) + (2*q2^2*t1*\[Epsilon])/u1 + sp*u1*\[Epsilon], 
        -4*m2 - 8*q2 + 6*sp + (4*m2*q2)/(q2 + sp) + (8*q2^2)/(q2 + sp) - 
         (4*q2*sp)/(q2 + sp) + 18*t1 - (14*q2*t1)/(q2 + sp) + 
         (2*sp*t1)/(q2 + sp) + (8*t1^2)/(q2 + sp) - (4*m2*q2)/u1 + 
         (2*q2^2)/u1 - (12*m2*sp)/u1 - (6*q2*sp)/u1 + 
         (4*m2*q2^2)/((q2 + sp)*u1) - (2*q2^3)/((q2 + sp)*u1) + 
         (4*m2*q2*sp)/((q2 + sp)*u1) + (4*q2^2*sp)/((q2 + sp)*u1) - 
         (8*m2*t1)/u1 - (10*q2*t1)/u1 + (8*q2^2*t1)/((q2 + sp)*u1) - 
         (6*q2*sp*t1)/((q2 + sp)*u1) + (4*t1^2)/u1 - (12*q2*t1^2)/
          ((q2 + sp)*u1) + (4*sp*t1^2)/((q2 + sp)*u1) + 
         (8*t1^3)/((q2 + sp)*u1) + 6*u1 - (6*q2*u1)/(q2 + sp) - 
         4*q2*\[Epsilon] + 3*sp*\[Epsilon] + (4*q2^2*\[Epsilon])/(q2 + sp) - 
         (3*q2*sp*\[Epsilon])/(2*(q2 + sp)) + 6*t1*\[Epsilon] - 
         (4*q2*t1*\[Epsilon])/(q2 + sp) + (q2^2*\[Epsilon])/u1 - 
         (3*q2*sp*\[Epsilon])/u1 - (q2^3*\[Epsilon])/((q2 + sp)*u1) + 
         (3*q2^2*sp*\[Epsilon])/(2*(q2 + sp)*u1) - (4*q2*t1*\[Epsilon])/u1 + 
         (2*q2^2*t1*\[Epsilon])/((q2 + sp)*u1) + 3*u1*\[Epsilon] - 
         (3*q2*u1*\[Epsilon])/(q2 + sp), (4*m2)/u1 - 
         (4*m2*q2)/((q2 + sp)*u1) - (2*t1)/u1 + (4*m2*t1)/((q2 + sp)*u1) + 
         (2*q2*t1)/((q2 + sp)*u1) - (2*t1^2)/((q2 + sp)*u1) + \[Epsilon]/2 - 
         (q2*\[Epsilon])/(2*(q2 + sp)) + (t1*\[Epsilon])/(q2 + sp) - 
         (q2*\[Epsilon])/(2*u1) + (q2^2*\[Epsilon])/(2*(q2 + sp)*u1)}, 
       {8*sp + 10*t1 + (4*m2*sp)/u1 - (2*q2*sp)/u1 + (2*sp^2)/u1 - 
         (6*q2*t1)/u1 + (14*sp*t1)/u1 + (12*t1^2)/u1 + (3*sp*\[Epsilon])/2 + 
         (q2*sp*\[Epsilon])/(2*u1) - (q2*t1*\[Epsilon])/u1 + 
         (sp*t1*\[Epsilon])/u1, 4 - (4*q2)/(q2 + sp) - (2*t1)/(q2 + sp) - 
         (4*q2)/u1 - (2*sp)/u1 + (4*q2^2)/((q2 + sp)*u1) + (6*t1)/u1 - 
         (6*q2*t1)/((q2 + sp)*u1) + (4*t1^2)/((q2 + sp)*u1) + 
         (5*\[Epsilon])/2 - (5*q2*\[Epsilon])/(2*(q2 + sp)) - 
         (5*q2*\[Epsilon])/(2*u1) - (sp*\[Epsilon])/u1 + 
         (5*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) + (2*t1*\[Epsilon])/u1 - 
         (2*q2*t1*\[Epsilon])/((q2 + sp)*u1), \[Epsilon]/u1 - 
         (q2*\[Epsilon])/((q2 + sp)*u1) + (t1*\[Epsilon])/((q2 + sp)*u1)}, 
       {(4*sp)/u1 + (4*t1)/u1 + (sp*\[Epsilon])/u1, 
        2/u1 - (2*q2)/((q2 + sp)*u1) + \[Epsilon]/u1 - (q2*\[Epsilon])/
          ((q2 + sp)*u1), 0}}, {{2*t1 - (2*q2*t1)/u1 + (2*t1^2)/u1 - 
         (sp*\[Epsilon])/2 + (q2*sp*\[Epsilon])/(2*u1) - 
         (q2*t1*\[Epsilon])/(2*u1) - (sp*t1*\[Epsilon])/(2*u1), 
        (-2*t1)/(q2 + sp) + (2*q2*t1)/((q2 + sp)*u1) - 
         (2*t1^2)/((q2 + sp)*u1) + \[Epsilon]/2 - (q2*\[Epsilon])/
          (2*(q2 + sp)) - (q2*\[Epsilon])/(2*u1) + (q2^2*\[Epsilon])/
          (2*(q2 + sp)*u1) + (t1*\[Epsilon])/u1, -(t1*\[Epsilon])/
         (2*(q2 + sp)*u1)}, {(2*t1)/u1 - (sp*\[Epsilon])/(2*u1), 
        (-2*t1)/((q2 + sp)*u1) + \[Epsilon]/(2*u1) - (q2*\[Epsilon])/
          (2*(q2 + sp)*u1), 0}, {0, 0, 0}}}, 
     {{{-8*m2*q2 + 4*q2^2 + 8*m2*sp - 2*q2*sp + 8*m2*t1 - 6*q2*t1 + 4*sp*t1 + 
         4*t1^2 + 8*m2*u1 - 6*q2*u1 + 2*sp*u1 + 6*t1*u1 + 2*u1^2 + 
         (5*q2^2*\[Epsilon])/2 - q2*sp*\[Epsilon] - 2*q2*t1*\[Epsilon] - 
         (7*q2*u1*\[Epsilon])/2 + sp*u1*\[Epsilon] + t1*u1*\[Epsilon] + 
         u1^2*\[Epsilon], 8*m2 - 6*q2 - (4*m2*q2)/(q2 + sp) + 
         (2*q2^2)/(q2 + sp) - (2*q2*sp)/(q2 + sp) + 6*t1 + 
         (8*m2*t1)/(q2 + sp) - (16*q2*t1)/(q2 + sp) + (4*sp*t1)/(q2 + sp) + 
         (12*t1^2)/(q2 + sp) + 6*u1 - (4*q2*u1)/(q2 + sp) + 
         (2*sp*u1)/(q2 + sp) + (14*t1*u1)/(q2 + sp) + (2*u1^2)/(q2 + sp) - 
         (3*q2*\[Epsilon])/2 - (q2^2*\[Epsilon])/(2*(q2 + sp)) - 
         (2*q2*t1*\[Epsilon])/(q2 + sp) + (3*u1*\[Epsilon])/2 + 
         (q2*u1*\[Epsilon])/(2*(q2 + sp)) + (t1*u1*\[Epsilon])/(q2 + sp), 
        (4*m2)/(q2 + sp) + (2*t1)/(q2 + sp) + (q2*\[Epsilon])/(2*(q2 + sp)) - 
         (u1*\[Epsilon])/(2*(q2 + sp))}, {-8*q2 + 4*sp + 4*t1 + 4*u1 - 
         5*q2*\[Epsilon] + 2*sp*\[Epsilon] + 2*t1*\[Epsilon] + 
         2*u1*\[Epsilon], 8 + (8*t1)/(q2 + sp) + 3*\[Epsilon] + 
         (2*t1*\[Epsilon])/(q2 + sp), \[Epsilon]/(q2 + sp)}, {0, 0, 0}}, 
      {{8*m2 - 8*q2 + 2*sp + 10*t1 + (4*m2*q2)/u1 + (2*q2^2)/u1 - 
         (2*q2*sp)/u1 + (8*m2*t1)/u1 - (4*q2*t1)/u1 + (4*t1^2)/u1 + 6*u1 - 
         (9*q2*\[Epsilon])/2 + sp*\[Epsilon] + 2*t1*\[Epsilon] + 
         (3*q2^2*\[Epsilon])/(2*u1) - (q2*sp*\[Epsilon])/u1 - 
         (2*q2*t1*\[Epsilon])/u1 + 3*u1*\[Epsilon], 4 - (2*q2)/(q2 + sp) + 
         (6*t1)/(q2 + sp) - (4*m2)/u1 - (4*q2)/u1 - 
         (8*m2*q2)/((q2 + sp)*u1) + (4*q2^2)/((q2 + sp)*u1) - (2*t1)/u1 + 
         (8*m2*t1)/((q2 + sp)*u1) - (6*q2*t1)/((q2 + sp)*u1) + 
         (4*t1^2)/((q2 + sp)*u1) - (2*u1)/(q2 + sp) + (5*\[Epsilon])/2 - 
         (3*q2*\[Epsilon])/(2*(q2 + sp)) + (2*t1*\[Epsilon])/(q2 + sp) - 
         (5*q2*\[Epsilon])/(2*u1) + (5*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) - 
         (2*q2*t1*\[Epsilon])/((q2 + sp)*u1) - (u1*\[Epsilon])/(q2 + sp), 
        (-2*t1)/((q2 + sp)*u1) + \[Epsilon]/(2*(q2 + sp)) - 
         (q2*\[Epsilon])/(2*(q2 + sp)*u1)}, {8 + (8*m2)/u1 + (8*t1)/u1 + 
         3*\[Epsilon] + (2*t1*\[Epsilon])/u1, -2/(q2 + sp) - 2/u1 - 
         (4*q2)/((q2 + sp)*u1) + (4*t1)/((q2 + sp)*u1) - 
         (3*q2*\[Epsilon])/((q2 + sp)*u1) + (2*t1*\[Epsilon])/((q2 + sp)*u1), 
        0}, {4/u1 + (2*\[Epsilon])/u1, 0, 0}}, 
      {{(t1*\[Epsilon])/u1, \[Epsilon]/(q2 + sp) - (q2*\[Epsilon])/
          ((q2 + sp)*u1) + (t1*\[Epsilon])/((q2 + sp)*u1), 0}, 
       {\[Epsilon]/u1, 0, 0}, {0, 0, 0}}}, 
     {{{0, (8*m2)/(q2 + sp) - (4*q2)/(q2 + sp) + (4*t1)/(q2 + sp) + 
         (4*u1)/(q2 + sp) - (q2*\[Epsilon])/(q2 + sp) + 
         (u1*\[Epsilon])/(q2 + sp), 0}, 
       {0, 4/(q2 + sp) + (2*\[Epsilon])/(q2 + sp), 0}, {0, 0, 0}}, 
      {{0, 2/(q2 + sp) - (2*q2)/((q2 + sp)*u1) + \[Epsilon]/(q2 + sp) - 
         (q2*\[Epsilon])/((q2 + sp)*u1), 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}}
 
CoeffAL3 = {{{{4*q2^2*t1 - 8*q2*t1^2 + (12*q2^2*t1^2)/sp + 
         (8*q2^2*t1^3)/sp^2 - (8*q2*t1^3)/sp - 4*q2*t1*u1 - 
         (8*q2*t1^2*u1)/sp, (-8*q2*t1^2)/sp - (8*q2*t1^3)/sp^2}, 
       {-4*q2*t1 - (4*q2*t1^2)/sp, 0}}, 
      {{-4*q2*sp - 12*q2*t1 - (8*q2*t1^2)/sp + (4*q2^2*sp)/u1 + 
         (16*q2^2*t1)/u1 - (8*q2*sp*t1)/u1 - (16*q2*t1^2)/u1 + 
         (20*q2^2*t1^2)/(sp*u1) + (8*q2^2*t1^3)/(sp^2*u1) - 
         (8*q2*t1^3)/(sp*u1), (-8*q2*t1)/u1 - (16*q2*t1^2)/(sp*u1) - 
         (8*q2*t1^3)/(sp^2*u1)}, {(-4*q2*sp)/u1 - (8*q2*t1)/u1 - 
         (4*q2*t1^2)/(sp*u1), 0}}, {{0, 0}, {0, 0}}}, 
     {{{-8*m2*q2 + 4*q2^2 - 12*q2*t1 - (16*m2*q2*t1)/sp + (24*q2^2*t1)/sp + 
         (20*q2^2*t1^2)/sp^2 - (32*q2*t1^2)/sp - (16*q2*t1^3)/sp^2 - 
         4*q2*u1 - (20*q2*t1*u1)/sp - (12*q2*t1^2*u1)/sp^2 + 
         2*q2^2*\[Epsilon] + (4*q2^2*t1*\[Epsilon])/sp - 2*q2*u1*\[Epsilon] - 
         (2*q2*t1*u1*\[Epsilon])/sp, (-12*q2*t1)/sp - (20*q2*t1^2)/sp^2}, 
       {-4*q2 - (16*q2*t1)/sp - (8*q2*t1^2)/sp^2 - 2*q2*\[Epsilon] - 
         (4*q2*t1*\[Epsilon])/sp, 0}}, 
      {{-12*q2 - (32*q2*t1)/sp - (16*q2*t1^2)/sp^2 - (8*m2*q2)/u1 + 
         (12*q2^2)/u1 - (16*q2*t1)/u1 - (16*m2*q2*t1)/(sp*u1) + 
         (32*q2^2*t1)/(sp*u1) + (20*q2^2*t1^2)/(sp^2*u1) - 
         (32*q2*t1^2)/(sp*u1) - (16*q2*t1^3)/(sp^2*u1) - 2*q2*\[Epsilon] - 
         (4*q2*t1*\[Epsilon])/sp + (2*q2^2*\[Epsilon])/u1 + 
         (4*q2^2*t1*\[Epsilon])/(sp*u1), (-4*q2*t1)/(sp*u1) - 
         (4*q2*t1^2)/(sp^2*u1)}, {(-8*q2)/u1 - (16*q2*t1)/(sp*u1) - 
         (8*q2*t1^2)/(sp^2*u1) - (2*q2*\[Epsilon])/u1 - (4*q2*t1*\[Epsilon])/
          (sp*u1), 0}}, {{(-4*q2*t1)/(sp*u1) - (4*q2*t1^2)/(sp^2*u1) - 
         (2*q2*t1*\[Epsilon])/(sp*u1), 0}, {0, 0}}}, 
     {{{(-24*m2*q2)/sp + (8*q2^2)/sp - (16*m2*q2*t1)/sp^2 + 
         (20*q2^2*t1)/sp^2 - (20*q2*t1)/sp - (24*q2*t1^2)/sp^2 - 
         (8*q2*u1)/sp - (16*q2*t1*u1)/sp^2 + (4*q2^2*\[Epsilon])/sp + 
         (4*q2^2*t1*\[Epsilon])/sp^2 - (4*q2*u1*\[Epsilon])/sp - 
         (2*q2*t1*u1*\[Epsilon])/sp^2, (-12*q2*t1)/sp^2}, 
       {(-12*q2)/sp - (16*q2*t1)/sp^2 - (6*q2*\[Epsilon])/sp - 
         (4*q2*t1*\[Epsilon])/sp^2, 0}}, 
      {{(-12*q2)/sp - (16*q2*t1)/sp^2 - (8*m2*q2)/(sp*u1) + 
         (12*q2^2)/(sp*u1) - (16*m2*q2*t1)/(sp^2*u1) + 
         (12*q2^2*t1)/(sp^2*u1) - (4*q2*t1)/(sp*u1) - (8*q2*t1^2)/(sp^2*u1) - 
         (4*q2*\[Epsilon])/sp - (4*q2*t1*\[Epsilon])/sp^2 + 
         (4*q2^2*\[Epsilon])/(sp*u1) + (4*q2^2*t1*\[Epsilon])/(sp^2*u1), 
        (4*q2*t1)/(sp^2*u1)}, {(-4*q2)/(sp*u1) - (8*q2*t1)/(sp^2*u1) - 
         (2*q2*\[Epsilon])/(sp*u1) - (4*q2*t1*\[Epsilon])/(sp^2*u1), 0}}, 
      {{(-2*q2*t1*\[Epsilon])/(sp^2*u1), 0}, {0, 0}}}, 
     {{{(-16*m2*q2)/sp^2 + (4*q2^2)/sp^2 - (8*q2*t1)/sp^2 - (4*q2*u1)/sp^2 + 
         (2*q2^2*\[Epsilon])/sp^2 - (2*q2*u1*\[Epsilon])/sp^2, 0}, 
       {(-8*q2)/sp^2 - (4*q2*\[Epsilon])/sp^2, 0}}, 
      {{(-4*q2)/sp^2 + (4*q2^2)/(sp^2*u1) - (2*q2*\[Epsilon])/sp^2 + 
         (2*q2^2*\[Epsilon])/(sp^2*u1), 0}, {0, 0}}, {{0, 0}, {0, 0}}}}
 
CoeffAP3 = {{{{4*h*m2*q2*sp - 2*h*q2^2*sp - 4*h*m2*sp^2 - 4*h*m2*q2*t1 - 
         2*h*q2^2*t1 - 4*h*m2*sp*t1 - 2*h*q2*sp*t1 - 2*h*sp^2*t1 - 
         10*h*q2*t1^2 + (4*h*q2^2*t1^2)/sp - 2*h*sp*t1^2 - (8*h*q2*t1^3)/sp - 
         4*h*m2*sp*u1 + 2*h*q2*sp*u1 - 2*h*q2*t1*u1 + 2*h*t1^2*u1 - 
         (8*h*q2*t1^2*u1)/sp + 2*h*t1*u1^2 + h*q2^2*sp*\[Epsilon] - 
         (h*q2*sp^2*\[Epsilon])/2 + h*q2^2*t1*\[Epsilon] - 
         h*q2*sp*t1*\[Epsilon] - (3*h*q2*sp*u1*\[Epsilon])/2 + 
         (h*sp^2*u1*\[Epsilon])/2 - (h*q2*t1*u1*\[Epsilon])/2 + 
         (h*sp*t1*u1*\[Epsilon])/2 + (h*sp*u1^2*\[Epsilon])/2, 
        -4*h*m2*q2 - 2*h*q2^2 - (4*h*q2^3)/sp - 4*h*m2*sp + 
         (4*h*m2*q2^2)/(q2 + sp) + (6*h*q2^3)/(q2 + sp) + 
         (4*h*q2^4)/(sp*(q2 + sp)) + (8*h*m2*q2*sp)/(q2 + sp) + 
         (6*h*q2^2*sp)/(q2 + sp) + 4*h*m2*t1 + (14*h*q2^2*t1)/sp - 
         4*h*sp*t1 - (4*h*m2*q2*t1)/(q2 + sp) - (6*h*q2^2*t1)/(q2 + sp) - 
         (14*h*q2^3*t1)/(sp*(q2 + sp)) - (4*h*m2*sp*t1)/(q2 + sp) - 
         (4*h*q2*sp*t1)/(q2 + sp) - 4*h*t1^2 - (14*h*q2*t1^2)/sp + 
         (2*h*q2*t1^2)/(q2 + sp) + (18*h*q2^2*t1^2)/(sp*(q2 + sp)) - 
         (8*h*q2*t1^3)/(sp*(q2 + sp)) + (4*h*q2^2*u1)/sp - 
         (4*h*q2^2*u1)/(q2 + sp) - (4*h*q2^3*u1)/(sp*(q2 + sp)) - 
         (4*h*m2*sp*u1)/(q2 + sp) - (6*h*q2*sp*u1)/(q2 + sp) - 2*h*t1*u1 - 
         (12*h*q2*t1*u1)/sp + (4*h*q2*t1*u1)/(q2 + sp) + 
         (12*h*q2^2*t1*u1)/(sp*(q2 + sp)) + (2*h*sp*t1*u1)/(q2 + sp) + 
         (2*h*t1^2*u1)/(q2 + sp) - (8*h*q2*t1^2*u1)/(sp*(q2 + sp)) + 
         2*h*u1^2 - (2*h*q2*u1^2)/(q2 + sp) + (2*h*t1*u1^2)/(q2 + sp) + 
         (h*q2^2*\[Epsilon])/2 - (h*q2*sp*\[Epsilon])/2 - 
         (h*q2^3*\[Epsilon])/(2*(q2 + sp)) + (h*q2^2*sp*\[Epsilon])/
          (2*(q2 + sp)) - (h*q2*sp^2*\[Epsilon])/(2*(q2 + sp)) - 
         h*q2*t1*\[Epsilon] + (h*q2^2*t1*\[Epsilon])/(q2 + sp) - 
         (h*q2*sp*t1*\[Epsilon])/(q2 + sp) - (h*q2*u1*\[Epsilon])/2 + 
         (h*sp*u1*\[Epsilon])/2 + (h*q2^2*u1*\[Epsilon])/(2*(q2 + sp)) - 
         (h*q2*sp*u1*\[Epsilon])/(q2 + sp) + (h*sp^2*u1*\[Epsilon])/
          (2*(q2 + sp)) + (h*t1*u1*\[Epsilon])/2 - (h*q2*t1*u1*\[Epsilon])/
          (2*(q2 + sp)) + (h*sp*t1*u1*\[Epsilon])/(2*(q2 + sp)) + 
         (h*sp*u1^2*\[Epsilon])/(2*(q2 + sp)), 
        4*h*m2 - (4*h*m2*q2)/(q2 + sp) - (4*h*m2*sp)/(q2 + sp) - 2*h*t1 - 
         (2*h*q2*t1)/sp + (4*h*m2*t1)/(q2 + sp) + (2*h*q2^2*t1)/
          (sp*(q2 + sp)) - (2*h*t1^2)/sp - (2*h*q2*t1^2)/(sp*(q2 + sp)) - 
         (h*q2*\[Epsilon])/2 + (h*q2^2*\[Epsilon])/(2*(q2 + sp)) - 
         (h*q2*t1*\[Epsilon])/(q2 + sp) + (h*u1*\[Epsilon])/2 - 
         (h*q2*u1*\[Epsilon])/(2*(q2 + sp)) + (h*t1*u1*\[Epsilon])/
          (2*(q2 + sp))}, {4*h*q2*sp - 2*h*sp^2 + 4*h*q2*t1 - 2*h*sp*t1 - 
         2*h*sp*u1 - (3*h*q2*sp*\[Epsilon])/2 + h*sp^2*\[Epsilon] - 
         h*q2*t1*\[Epsilon] + h*sp*t1*\[Epsilon] + h*sp*u1*\[Epsilon], 
        2*h*q2 + (4*h*q2^2)/sp - 4*h*sp - (6*h*q2^2)/(q2 + sp) - 
         (4*h*q2^3)/(sp*(q2 + sp)) - (4*h*m2*sp)/(q2 + sp) - 
         (4*h*q2*sp)/(q2 + sp) + (2*h*sp^2)/(q2 + sp) - 4*h*t1 - 
         (8*h*q2*t1)/sp + (6*h*q2*t1)/(q2 + sp) + (8*h*q2^2*t1)/
          (sp*(q2 + sp)) + (2*h*sp*t1)/(q2 + sp) - (4*h*q2*t1^2)/
          (sp*(q2 + sp)) + (2*h*sp*u1)/(q2 + sp) - h*q2*\[Epsilon] + 
         h*sp*\[Epsilon] + (h*q2^2*\[Epsilon])/(q2 + sp) - 
         (h*q2*sp*\[Epsilon])/(2*(q2 + sp)) + (h*sp^2*\[Epsilon])/(q2 + sp) + 
         h*t1*\[Epsilon] - (h*q2*t1*\[Epsilon])/(q2 + sp) + 
         (h*sp*t1*\[Epsilon])/(q2 + sp) + (h*sp*u1*\[Epsilon])/(q2 + sp), 
        h*\[Epsilon] - (h*q2*\[Epsilon])/(q2 + sp) + (h*t1*\[Epsilon])/
          (q2 + sp)}, {0, 0, 0}}, {{-4*h*m2*sp - 6*h*q2*sp + 2*h*sp^2 - 
         8*h*q2*t1 + 4*h*sp*t1 - (8*h*q2*t1^2)/sp - (4*h*m2*q2*sp)/u1 + 
         (2*h*q2^2*sp)/u1 - (2*h*q2*sp^2)/u1 - (4*h*m2*q2*t1)/u1 + 
         (4*h*q2^2*t1)/u1 - (4*h*m2*sp*t1)/u1 - (10*h*q2*sp*t1)/u1 + 
         (2*h*sp^2*t1)/u1 - (14*h*q2*t1^2)/u1 + (4*h*q2^2*t1^2)/(sp*u1) + 
         (2*h*sp*t1^2)/u1 - (8*h*q2*t1^3)/(sp*u1) + 4*h*sp*u1 - 
         2*h*q2*sp*\[Epsilon] + (h*sp^2*\[Epsilon])/2 - h*q2*t1*\[Epsilon] + 
         h*sp*t1*\[Epsilon] + (h*q2^2*sp*\[Epsilon])/u1 - 
         (h*q2*sp^2*\[Epsilon])/(2*u1) + (h*q2^2*t1*\[Epsilon])/u1 - 
         (h*q2*sp*t1*\[Epsilon])/u1 + h*sp*u1*\[Epsilon], 
        -2*h*sp - (4*h*m2*sp)/(q2 + sp) - (8*h*q2*sp)/(q2 + sp) + 
         (4*h*sp^2)/(q2 + sp) - 6*h*t1 - (4*h*q2*t1)/sp - 
         (2*h*q2*t1)/(q2 + sp) + (4*h*q2^2*t1)/(sp*(q2 + sp)) + 
         (10*h*sp*t1)/(q2 + sp) - (8*h*q2*t1^2)/(sp*(q2 + sp)) + 
         (2*h*q2^2)/u1 + (8*h*m2*sp)/u1 + (2*h*q2*sp)/u1 - 
         (2*h*q2^3)/((q2 + sp)*u1) - (4*h*m2*q2*sp)/((q2 + sp)*u1) - 
         (4*h*m2*sp^2)/((q2 + sp)*u1) - (4*h*q2*sp^2)/((q2 + sp)*u1) + 
         (4*h*m2*t1)/u1 + (2*h*q2*t1)/u1 + (2*h*q2^2*t1)/(sp*u1) + 
         (4*h*sp*t1)/u1 - (4*h*m2*q2*t1)/((q2 + sp)*u1) + 
         (2*h*q2^2*t1)/((q2 + sp)*u1) - (2*h*q2^3*t1)/(sp*(q2 + sp)*u1) - 
         (4*h*m2*sp*t1)/((q2 + sp)*u1) - (10*h*q2*sp*t1)/((q2 + sp)*u1) + 
         (4*h*t1^2)/u1 - (2*h*q2*t1^2)/(sp*u1) - (10*h*q2*t1^2)/
          ((q2 + sp)*u1) + (6*h*q2^2*t1^2)/(sp*(q2 + sp)*u1) - 
         (8*h*q2*t1^3)/(sp*(q2 + sp)*u1) - 2*h*u1 + (2*h*q2*u1)/(q2 + sp) + 
         (8*h*sp*u1)/(q2 + sp) - (h*q2*\[Epsilon])/2 + (h*sp*\[Epsilon])/2 + 
         (h*q2^2*\[Epsilon])/(2*(q2 + sp)) - (3*h*q2*sp*\[Epsilon])/
          (2*(q2 + sp)) + (h*sp^2*\[Epsilon])/(2*(q2 + sp)) + 
         h*t1*\[Epsilon] - (h*q2*t1*\[Epsilon])/(q2 + sp) + 
         (h*sp*t1*\[Epsilon])/(q2 + sp) + (h*q2^2*\[Epsilon])/(2*u1) - 
         (h*q2*sp*\[Epsilon])/(2*u1) - (h*q2^3*\[Epsilon])/(2*(q2 + sp)*u1) + 
         (h*q2^2*sp*\[Epsilon])/(2*(q2 + sp)*u1) - (h*q2*sp^2*\[Epsilon])/
          (2*(q2 + sp)*u1) - (h*q2*t1*\[Epsilon])/u1 + (h*q2^2*t1*\[Epsilon])/
          ((q2 + sp)*u1) - (h*q2*sp*t1*\[Epsilon])/((q2 + sp)*u1) + 
         (h*sp*u1*\[Epsilon])/(q2 + sp), (4*h*m2*sp)/((q2 + sp)*u1) + 
         (2*h*t1)/u1 + (2*h*q2*t1)/(sp*u1) + (4*h*m2*t1)/((q2 + sp)*u1) - 
         (2*h*q2^2*t1)/(sp*(q2 + sp)*u1) + (2*h*t1^2)/(sp*u1) + 
         (2*h*q2*t1^2)/(sp*(q2 + sp)*u1) + (h*\[Epsilon])/2 - 
         (h*q2*\[Epsilon])/(2*(q2 + sp)) + (h*t1*\[Epsilon])/(q2 + sp) - 
         (h*q2*\[Epsilon])/(2*u1) + (h*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) - 
         (h*q2*t1*\[Epsilon])/((q2 + sp)*u1)}, 
       {4*h*sp + 2*h*t1 - (4*h*m2*sp)/u1 - (6*h*q2*sp)/u1 + (2*h*sp^2)/u1 - 
         (10*h*q2*t1)/u1 + (2*h*sp*t1)/u1 - (8*h*q2*t1^2)/(sp*u1) + 
         (3*h*sp*\[Epsilon])/2 - (3*h*q2*sp*\[Epsilon])/(2*u1) - 
         (h*q2*t1*\[Epsilon])/u1 + (h*sp*t1*\[Epsilon])/u1, 
        -2*h + (2*h*q2)/(q2 + sp) + (6*h*sp)/(q2 + sp) - (2*h*t1)/(q2 + sp) - 
         (2*h*q2)/u1 + (2*h*sp)/u1 + (2*h*q2^2)/((q2 + sp)*u1) - 
         (2*h*q2*sp)/((q2 + sp)*u1) - (4*h*q2*t1)/(sp*u1) + 
         (4*h*q2^2*t1)/(sp*(q2 + sp)*u1) + (2*h*sp*t1)/((q2 + sp)*u1) - 
         (4*h*q2*t1^2)/(sp*(q2 + sp)*u1) + (3*h*sp*\[Epsilon])/
          (2*(q2 + sp)) - (3*h*q2*sp*\[Epsilon])/(2*(q2 + sp)*u1) + 
         (h*t1*\[Epsilon])/u1 - (h*q2*t1*\[Epsilon])/((q2 + sp)*u1) + 
         (h*sp*t1*\[Epsilon])/((q2 + sp)*u1), (h*t1*\[Epsilon])/
         ((q2 + sp)*u1)}, {(h*sp*\[Epsilon])/u1, (2*h*sp)/((q2 + sp)*u1) + 
         (h*sp*\[Epsilon])/((q2 + sp)*u1), 0}}, 
      {{-2*h*t1 + (2*h*q2*t1)/u1 - (2*h*t1^2)/u1 + (h*sp*\[Epsilon])/2 - 
         (h*q2*sp*\[Epsilon])/(2*u1) - (h*q2*t1*\[Epsilon])/(2*u1) + 
         (h*sp*t1*\[Epsilon])/(2*u1), (-2*h*t1)/(q2 + sp) + 
         (2*h*q2*t1)/((q2 + sp)*u1) - (2*h*t1^2)/((q2 + sp)*u1) + 
         (h*sp*\[Epsilon])/(2*(q2 + sp)) - (h*q2*sp*\[Epsilon])/
          (2*(q2 + sp)*u1) + (h*t1*\[Epsilon])/(2*u1) - (h*q2*t1*\[Epsilon])/
          (2*(q2 + sp)*u1) + (h*sp*t1*\[Epsilon])/(2*(q2 + sp)*u1), 
        (h*t1*\[Epsilon])/(2*(q2 + sp)*u1)}, 
       {(-2*h*t1)/u1 + (h*sp*\[Epsilon])/(2*u1), (-2*h*t1)/((q2 + sp)*u1) + 
         (h*sp*\[Epsilon])/(2*(q2 + sp)*u1), 0}, {0, 0, 0}}}, 
     {{{8*h*m2*q2 - 4*h*q2^2 - 2*h*q2*sp - 2*h*q2*t1 - (8*h*m2*q2*t1)/sp - 
         (4*h*q2^2*t1)/sp + 2*h*q2*u1 + 2*h*sp*u1 + 2*h*t1*u1 + 2*h*u1^2 + 
         (3*h*q2^2*\[Epsilon])/2 + (2*h*q2^2*t1*\[Epsilon])/sp - 
         (3*h*q2*u1*\[Epsilon])/2 - (h*q2*t1*u1*\[Epsilon])/sp, 
        -8*h*m2 + 2*h*q2 - (8*h*m2*q2)/sp + (8*h*q2^2)/sp + 
         (4*h*m2*q2)/(q2 + sp) - (6*h*q2^2)/(q2 + sp) + 
         (8*h*m2*q2^2)/(sp*(q2 + sp)) - (8*h*q2^3)/(sp*(q2 + sp)) - 
         (2*h*q2*sp)/(q2 + sp) - 2*h*t1 - (8*h*q2*t1)/sp - 
         (8*h*m2*q2*t1)/(sp*(q2 + sp)) + (20*h*q2^2*t1)/(sp*(q2 + sp)) - 
         (12*h*q2*t1^2)/(sp*(q2 + sp)) - 2*h*u1 - (8*h*q2*u1)/sp + 
         (4*h*q2*u1)/(q2 + sp) + (8*h*q2^2*u1)/(sp*(q2 + sp)) + 
         (2*h*sp*u1)/(q2 + sp) + (2*h*t1*u1)/(q2 + sp) - 
         (12*h*q2*t1*u1)/(sp*(q2 + sp)) + (2*h*u1^2)/(q2 + sp) - 
         (h*q2*\[Epsilon])/2 + (h*q2^2*\[Epsilon])/sp + (h*q2^2*\[Epsilon])/
          (2*(q2 + sp)) - (h*q2^3*\[Epsilon])/(sp*(q2 + sp)) + 
         (2*h*q2^2*t1*\[Epsilon])/(sp*(q2 + sp)) + (h*u1*\[Epsilon])/2 - 
         (h*q2*u1*\[Epsilon])/sp - (h*q2*u1*\[Epsilon])/(2*(q2 + sp)) + 
         (h*q2^2*u1*\[Epsilon])/(sp*(q2 + sp)) - (h*q2*t1*u1*\[Epsilon])/
          (sp*(q2 + sp)), (4*h*m2)/(q2 + sp) - (2*h*t1)/sp - 
         (2*h*q2*t1)/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/(2*(q2 + sp)) + 
         (h*u1*\[Epsilon])/(2*(q2 + sp))}, {8*h*q2 + (8*h*q2*t1)/sp - 
         2*h*q2*\[Epsilon] - (2*h*q2*t1*\[Epsilon])/sp, 
        -4*h - (8*h*q2)/sp + (8*h*q2)/(q2 + sp) + (8*h*q2^2)/(sp*(q2 + sp)) - 
         (8*h*q2*t1)/(sp*(q2 + sp)) + h*\[Epsilon] - (2*h*q2*\[Epsilon])/sp + 
         (2*h*q2^2*\[Epsilon])/(sp*(q2 + sp)) - (2*h*q2*t1*\[Epsilon])/
          (sp*(q2 + sp)), (h*\[Epsilon])/(q2 + sp)}, {0, 0, 0}}, 
      {{-8*h*q2 + 2*h*sp + 6*h*t1 - (8*h*q2*t1)/sp - (20*h*m2*q2)/u1 + 
         (2*h*q2^2)/u1 - (2*h*q2*sp)/u1 - (16*h*q2*t1)/u1 - 
         (8*h*m2*q2*t1)/(sp*u1) + (4*h*q2^2*t1)/(sp*u1) - 
         (16*h*q2*t1^2)/(sp*u1) + 6*h*u1 - (3*h*q2*\[Epsilon])/2 - 
         (2*h*q2*t1*\[Epsilon])/sp + (3*h*q2^2*\[Epsilon])/(2*u1) + 
         (2*h*q2^2*t1*\[Epsilon])/(sp*u1), -4*h - (2*h*q2)/sp + 
         (2*h*q2^2)/(sp*(q2 + sp)) - (4*h*t1)/sp - (2*h*t1)/(q2 + sp) - 
         (8*h*q2*t1)/(sp*(q2 + sp)) + (12*h*m2)/u1 + (4*h*q2)/u1 + 
         (2*h*q2^2)/(sp*u1) - (8*h*m2*q2)/((q2 + sp)*u1) + 
         (2*h*q2^2)/((q2 + sp)*u1) - (2*h*q2^3)/(sp*(q2 + sp)*u1) + 
         (2*h*t1)/u1 + (4*h*q2*t1)/(sp*u1) - (2*h*q2*t1)/((q2 + sp)*u1) - 
         (8*h*m2*q2*t1)/(sp*(q2 + sp)*u1) + (4*h*q2^2*t1)/(sp*(q2 + sp)*u1) - 
         (4*h*q2*t1^2)/(sp*(q2 + sp)*u1) - (2*h*u1)/(q2 + sp) + 
         (h*\[Epsilon])/2 - (h*q2*\[Epsilon])/sp - (h*q2*\[Epsilon])/
          (2*(q2 + sp)) + (h*q2^2*\[Epsilon])/(sp*(q2 + sp)) - 
         (2*h*q2*t1*\[Epsilon])/(sp*(q2 + sp)) - (h*q2*\[Epsilon])/(2*u1) + 
         (h*q2^2*\[Epsilon])/(sp*u1) + (h*q2^2*\[Epsilon])/(2*(q2 + sp)*u1) - 
         (h*q2^3*\[Epsilon])/(sp*(q2 + sp)*u1) + (2*h*q2^2*t1*\[Epsilon])/
          (sp*(q2 + sp)*u1), (2*h*t1)/(sp*u1) + (2*h*q2*t1)/
          (sp*(q2 + sp)*u1) + (h*\[Epsilon])/(2*(q2 + sp)) - 
         (h*q2*\[Epsilon])/(2*(q2 + sp)*u1)}, 
       {4*h - (8*h*q2)/u1 - (8*h*q2*t1)/(sp*u1) - (h*q2*\[Epsilon])/u1 - 
         (2*h*q2*t1*\[Epsilon])/(sp*u1), (-2*h)/(q2 + sp) + (2*h)/u1 - 
         (4*h*q2)/((q2 + sp)*u1) - (4*h*q2*t1)/(sp*(q2 + sp)*u1) - 
         (h*q2*\[Epsilon])/((q2 + sp)*u1) - (2*h*q2*t1*\[Epsilon])/
          (sp*(q2 + sp)*u1), 0}, {0, 0, 0}}, 
      {{-((h*q2*t1*\[Epsilon])/(sp*u1)), -((h*q2*t1*\[Epsilon])/
          (sp*(q2 + sp)*u1)), 0}, {0, 0, 0}, {0, 0, 0}}}, 
     {{{(8*h*m2*q2)/sp - (4*h*q2^2)/sp + (4*h*q2*t1)/sp + (4*h*q2*u1)/sp + 
         (h*q2^2*\[Epsilon])/sp - (h*q2*u1*\[Epsilon])/sp, 
        (-8*h*m2*q2)/(sp*(q2 + sp)) + (4*h*q2^2)/(sp*(q2 + sp)) - 
         (4*h*q2*t1)/(sp*(q2 + sp)) - (4*h*q2*u1)/(sp*(q2 + sp)) + 
         (h*q2^2*\[Epsilon])/(sp*(q2 + sp)) - (h*q2*u1*\[Epsilon])/
          (sp*(q2 + sp)), 0}, {(8*h*q2)/sp - (2*h*q2*\[Epsilon])/sp, 
        (-4*h*q2)/(sp*(q2 + sp)) - (2*h*q2*\[Epsilon])/(sp*(q2 + sp)), 0}, 
       {0, 0, 0}}, {{(-16*h*m2*q2)/(sp*u1) - (4*h*q2*t1)/(sp*u1) - 
         (h*q2*\[Epsilon])/sp + (h*q2^2*\[Epsilon])/(sp*u1), 
        (-2*h)/sp - (2*h*q2)/(sp*(q2 + sp)) + (2*h*q2)/(sp*u1) + 
         (2*h*q2^2)/(sp*(q2 + sp)*u1) - (h*q2*\[Epsilon])/(sp*(q2 + sp)) + 
         (h*q2^2*\[Epsilon])/(sp*(q2 + sp)*u1), 0}, {(-4*h*q2)/(sp*u1), 0, 
        0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}}}
 
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
     {{{0, 0, 8*m2^3 + 4*m2^2*q2 + 2*m2^2*q2*\[Epsilon]}, 
       {0, 0, 8*m2^2 + 4*m2*q2 + (16*m2^3)/u1 - (4*m2*q2^2)/u1 - 2*m2*u1 + 
         2*m2*q2*\[Epsilon] + (4*m2^2*q2*\[Epsilon])/u1 - 
         (2*m2*q2^2*\[Epsilon])/u1 - 2*m2*u1*\[Epsilon] - 
         (m2*u1*\[Epsilon]^2)/2}, {0, 0, (8*m2^3)/u1^2 + (4*m2^2*q2)/u1^2 + 
         (8*m2^2)/u1 + (4*m2*q2)/u1 - 2*m2*\[Epsilon] + 
         (2*m2^2*q2*\[Epsilon])/u1^2 + (2*m2*q2*\[Epsilon])/u1 - 
         m2*\[Epsilon]^2}, {0, 0, (-2*m2)/u1 - (2*m2*\[Epsilon])/u1 - 
         (m2*\[Epsilon]^2)/(2*u1)}, {0, 0, 0}}, 
      {{0, 16*m2^3 - 4*m2*q2^2 - 4*m2^2*sp + 4*m2*sp^2 + 
         4*m2^2*q2*\[Epsilon] - 2*m2*q2^2*\[Epsilon] - 2*m2^2*sp*\[Epsilon] + 
         m2*sp^2*\[Epsilon] - (m2*sp^2*\[Epsilon]^2)/2, 
        4*m2^2 + 4*m2*q2 + 6*m2*sp - 2*m2^2*\[Epsilon] + 2*m2*q2*\[Epsilon] + 
         3*m2*sp*\[Epsilon]}, {0, 20*m2^2 + 4*m2*q2 - 2*q2^2 - 10*m2*sp + 
         2*q2*sp + (16*m2^3)/t1 - (4*m2*q2^2)/t1 - (8*m2^2*sp)/t1 + 
         (4*m2*q2*sp)/t1 + (m2*sp^2)/t1 - (q2*sp^2)/t1 - 2*m2*t1 + 2*q2*t1 - 
         3*sp*t1 + (16*m2^3)/u1 - (8*m2^2*q2)/u1 - (4*m2*q2^2)/u1 + 
         (2*q2^3)/u1 + (4*m2^2*sp)/u1 + (2*m2*q2*sp)/u1 + (m2*sp^2)/u1 - 
         (q2*sp^2)/u1 + (8*m2^2*t1)/u1 + (6*m2*q2*t1)/u1 - (2*q2^2*t1)/u1 + 
         (q2*sp*t1)/u1 + (sp^2*t1)/u1 + (q2*t1^2)/u1 - 2*m2*u1 + q2*u1 - 
         2*sp*u1 + (8*m2^2*u1)/t1 + (4*m2*q2*u1)/t1 - (2*m2*sp*u1)/t1 - 
         (q2*sp*u1)/t1 + (sp^2*u1)/t1 + (sp*u1^2)/t1 + 2*m2^2*\[Epsilon] + 
         4*m2*q2*\[Epsilon] - q2^2*\[Epsilon] - 5*m2*sp*\[Epsilon] + 
         2*q2*sp*\[Epsilon] + (4*m2^2*q2*\[Epsilon])/t1 - 
         (2*m2*q2^2*\[Epsilon])/t1 - (2*m2^2*sp*\[Epsilon])/t1 + 
         (m2*q2*sp*\[Epsilon])/t1 + (m2*sp^2*\[Epsilon])/t1 - 
         2*m2*t1*\[Epsilon] + (3*q2*t1*\[Epsilon])/2 - (5*sp*t1*\[Epsilon])/
          2 + (4*m2^2*q2*\[Epsilon])/u1 - (4*m2*q2^2*\[Epsilon])/u1 + 
         (q2^3*\[Epsilon])/u1 + (m2*q2*sp*\[Epsilon])/u1 + 
         (2*m2*sp^2*\[Epsilon])/u1 - (q2*sp^2*\[Epsilon])/u1 + 
         (m2*sp*t1*\[Epsilon])/u1 + (q2*sp*t1*\[Epsilon])/(2*u1) + 
         (sp^2*t1*\[Epsilon])/(2*u1) + (q2*t1^2*\[Epsilon])/u1 - 
         2*m2*u1*\[Epsilon] + q2*u1*\[Epsilon] - (3*sp*u1*\[Epsilon])/2 + 
         (2*m2*q2*u1*\[Epsilon])/t1 + (m2*sp*u1*\[Epsilon])/t1 - 
         (q2*sp*u1*\[Epsilon])/t1 + (sp*u1^2*\[Epsilon])/t1 - 
         (3*m2*sp*\[Epsilon]^2)/2 + (q2*sp*\[Epsilon]^2)/2 - 
         (m2*sp^2*\[Epsilon]^2)/t1 + (q2*sp^2*\[Epsilon]^2)/(2*t1) - 
         (m2*t1*\[Epsilon]^2)/2 - (sp*t1*\[Epsilon]^2)/4 + 
         (m2*sp^2*\[Epsilon]^2)/(2*u1) - (q2*sp^2*\[Epsilon]^2)/(4*u1) + 
         (m2*sp*t1*\[Epsilon]^2)/(2*u1) - (q2*sp*t1*\[Epsilon]^2)/(4*u1) + 
         (q2*t1^2*\[Epsilon]^2)/(4*u1) - (m2*u1*\[Epsilon]^2)/2 + 
         (q2*u1*\[Epsilon]^2)/4 + (m2*sp*u1*\[Epsilon]^2)/(2*t1) - 
         (q2*sp*u1*\[Epsilon]^2)/(4*t1) - (sp^2*u1*\[Epsilon]^2)/(2*t1) + 
         (sp*u1^2*\[Epsilon]^2)/(4*t1) - (q2*sp*\[Epsilon]^3)/4 - 
         (q2*sp^2*\[Epsilon]^3)/(8*t1) - (q2*t1*\[Epsilon]^3)/8 + 
         (sp*t1*\[Epsilon]^3)/8 + (q2*sp^2*\[Epsilon]^3)/(8*u1) + 
         (q2*sp*t1*\[Epsilon]^3)/(8*u1) + (sp*u1*\[Epsilon]^3)/8 + 
         (sp^2*u1*\[Epsilon]^3)/(8*t1), 7*m2 + q2 - 2*sp - (4*m2*q2)/t1 + 
         (2*q2^2)/t1 - (m2*sp)/t1 - 4*t1 + (8*m2^2)/u1 - (3*m2*q2)/u1 - 
         q2^2/u1 - (3*m2*t1)/u1 + (3*q2*t1)/u1 - t1^2/u1 - u1 + 
         (4*m2*u1)/t1 - (4*q2*u1)/t1 + (2*u1^2)/t1 + 
         (4*m2^2)/(sp + t1 + u1) + (5*m2*q2)/(sp + t1 + u1) - 
         (3*q2^2)/(sp + t1 + u1) + (4*m2*sp)/(sp + t1 + u1) - 
         (3*q2*sp)/(sp + t1 + u1) + sp^2/(sp + t1 + u1) + 
         (16*m2^3)/(t1*(sp + t1 + u1)) - (8*m2^2*q2)/(t1*(sp + t1 + u1)) - 
         (4*m2*q2^2)/(t1*(sp + t1 + u1)) + (2*q2^3)/(t1*(sp + t1 + u1)) - 
         (16*m2^2*sp)/(t1*(sp + t1 + u1)) + (2*m2*q2*sp)/
          (t1*(sp + t1 + u1)) + (2*m2*sp^2)/(t1*(sp + t1 + u1)) + 
         (4*m2*t1)/(sp + t1 + u1) - (q2*t1)/(sp + t1 + u1) + 
         (4*sp*t1)/(sp + t1 + u1) + (2*t1^2)/(sp + t1 + u1) + 
         (16*m2^3)/(u1*(sp + t1 + u1)) - (4*m2*q2^2)/(u1*(sp + t1 + u1)) - 
         (4*m2^2*sp)/(u1*(sp + t1 + u1)) - (m2*q2*sp)/(u1*(sp + t1 + u1)) + 
         (q2^2*sp)/(u1*(sp + t1 + u1)) + (m2*sp^2)/(u1*(sp + t1 + u1)) - 
         (q2*sp^2)/(u1*(sp + t1 + u1)) + (4*m2^2*t1)/(u1*(sp + t1 + u1)) + 
         (3*m2*q2*t1)/(u1*(sp + t1 + u1)) + (q2^2*t1)/(u1*(sp + t1 + u1)) + 
         (2*m2*sp*t1)/(u1*(sp + t1 + u1)) - (3*q2*sp*t1)/
          (u1*(sp + t1 + u1)) + (sp^2*t1)/(u1*(sp + t1 + u1)) + 
         (m2*t1^2)/(u1*(sp + t1 + u1)) - (2*q2*t1^2)/(u1*(sp + t1 + u1)) + 
         (2*sp*t1^2)/(u1*(sp + t1 + u1)) + t1^3/(u1*(sp + t1 + u1)) - 
         (m2*u1)/(sp + t1 + u1) + (6*q2*u1)/(sp + t1 + u1) + 
         (2*sp*u1)/(sp + t1 + u1) + (8*m2^2*u1)/(t1*(sp + t1 + u1)) + 
         (8*m2*q2*u1)/(t1*(sp + t1 + u1)) - (6*q2^2*u1)/(t1*(sp + t1 + u1)) - 
         (2*m2*sp*u1)/(t1*(sp + t1 + u1)) - (3*u1^2)/(sp + t1 + u1) - 
         (4*m2*u1^2)/(t1*(sp + t1 + u1)) + (6*q2*u1^2)/(t1*(sp + t1 + u1)) - 
         (2*u1^3)/(t1*(sp + t1 + u1)) + 3*m2*\[Epsilon] + (q2*\[Epsilon])/2 - 
         (sp*\[Epsilon])/2 + (2*m2^2*\[Epsilon])/t1 - (3*m2*q2*\[Epsilon])/
          t1 + (q2^2*\[Epsilon])/t1 + (m2*sp*\[Epsilon])/t1 - 
         2*t1*\[Epsilon] + (4*m2*q2*\[Epsilon])/u1 - (3*q2^2*\[Epsilon])/
          (2*u1) - (q2*sp*\[Epsilon])/u1 - (2*m2*t1*\[Epsilon])/u1 + 
         (q2*t1*\[Epsilon])/u1 - (t1^2*\[Epsilon])/(2*u1) - 
         (u1*\[Epsilon])/2 + (3*m2*u1*\[Epsilon])/t1 - (2*q2*u1*\[Epsilon])/
          t1 + (u1^2*\[Epsilon])/t1 - (4*m2^2*\[Epsilon])/(sp + t1 + u1) + 
         (9*m2*q2*\[Epsilon])/(sp + t1 + u1) - (5*q2^2*\[Epsilon])/
          (2*(sp + t1 + u1)) + (m2*sp*\[Epsilon])/(sp + t1 + u1) + 
         (3*q2*sp*\[Epsilon])/(2*(sp + t1 + u1)) - (sp^2*\[Epsilon])/
          (2*(sp + t1 + u1)) + (4*m2^2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (4*m2*q2^2*\[Epsilon])/(t1*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (4*m2^2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (4*m2*q2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (2*m2*t1*\[Epsilon])/(sp + t1 + u1) + (2*q2*t1*\[Epsilon])/
          (sp + t1 + u1) - (t1^2*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (4*m2^2*q2*\[Epsilon])/(u1*(sp + t1 + u1)) - (2*m2*q2^2*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (q2^2*sp*\[Epsilon])/(2*u1*(sp + t1 + u1)) + (2*m2*sp^2*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) + 
         (m2*q2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (3*m2*sp*t1*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (3*q2*sp*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (sp^2*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (m2*t1^2*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (q2*t1^2*\[Epsilon])/(u1*(sp + t1 + u1)) + (sp*t1^2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (t1^3*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (7*m2*u1*\[Epsilon])/(sp + t1 + u1) + (5*q2*u1*\[Epsilon])/
          (sp + t1 + u1) - (2*sp*u1*\[Epsilon])/(sp + t1 + u1) - 
         (4*m2^2*u1*\[Epsilon])/(t1*(sp + t1 + u1)) + (8*m2*q2*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (3*q2^2*u1*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (4*m2*sp*u1*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (2*q2*sp*u1*\[Epsilon])/(t1*(sp + t1 + u1)) - (sp^2*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (5*t1*u1*\[Epsilon])/(2*(sp + t1 + u1)) - 
         (5*u1^2*\[Epsilon])/(2*(sp + t1 + u1)) - (4*m2*u1^2*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (3*q2*u1^2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (sp*u1^2*\[Epsilon])/(t1*(sp + t1 + u1)) - (u1^3*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (m2*\[Epsilon]^2)/2 + (sp*\[Epsilon]^2)/2 + 
         (m2*sp*\[Epsilon]^2)/(2*t1) - (t1*\[Epsilon]^2)/2 - 
         (3*q2*sp*\[Epsilon]^2)/(4*u1) - (3*q2*t1*\[Epsilon]^2)/(4*u1) - 
         (u1*\[Epsilon]^2)/2 - (m2*sp*\[Epsilon]^2)/(2*(sp + t1 + u1)) + 
         (3*q2*sp*\[Epsilon]^2)/(4*(sp + t1 + u1)) - (3*sp^2*\[Epsilon]^2)/
          (4*(sp + t1 + u1)) - (3*m2*sp^2*\[Epsilon]^2)/
          (2*t1*(sp + t1 + u1)) + (3*q2*sp^2*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/(4*(sp + t1 + u1)) - 
         (3*sp*t1*\[Epsilon]^2)/(4*(sp + t1 + u1)) - (t1^2*\[Epsilon]^2)/
          (4*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) + 
         (m2*sp*t1*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) - 
         (3*sp*u1*\[Epsilon]^2)/(4*(sp + t1 + u1)) - (3*sp^2*u1*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1)) - (t1*u1*\[Epsilon]^2)/(4*(sp + t1 + u1)) - 
         (sp*\[Epsilon]^3)/8 - (q2*sp*\[Epsilon]^3)/(8*(sp + t1 + u1)) + 
         (sp^2*\[Epsilon]^3)/(8*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon]^3)/
          (8*t1*(sp + t1 + u1)) + (sp*t1*\[Epsilon]^3)/(8*(sp + t1 + u1)) + 
         (sp*u1*\[Epsilon]^3)/(8*(sp + t1 + u1)) + (sp^2*u1*\[Epsilon]^3)/
          (8*t1*(sp + t1 + u1))}, {0, 2*m2 + 6*q2 - 6*sp + (32*m2^2)/t1 - 
         (4*q2^2)/t1 + (m2*sp)/t1 + (9*q2*sp)/t1 - (4*sp^2)/t1 + 
         (20*m2^2)/u1 + (6*m2*q2)/u1 - (8*q2^2)/u1 + (m2*sp)/u1 + 
         (11*q2*sp)/u1 - (4*sp^2)/u1 + (16*m2^3)/(t1*u1) - 
         (8*m2^2*q2)/(t1*u1) - (4*m2*q2^2)/(t1*u1) + (2*q2^3)/(t1*u1) + 
         (24*m2^2*sp)/(t1*u1) + (6*m2*q2*sp)/(t1*u1) - (6*q2^2*sp)/(t1*u1) + 
         (6*q2*sp^2)/(t1*u1) - (2*sp^3)/(t1*u1) + (2*m2*t1)/u1 + 
         (4*q2*t1)/u1 - (4*sp*t1)/u1 - t1^2/u1 - u1 + (4*m2*u1)/t1 + 
         (4*q2*u1)/t1 - (4*sp*u1)/t1 - (2*u1^2)/t1 + (3*q2*\[Epsilon])/2 - 
         (7*sp*\[Epsilon])/2 + (2*m2^2*\[Epsilon])/t1 + (5*m2*q2*\[Epsilon])/
          t1 - (2*q2^2*\[Epsilon])/t1 - (3*m2*sp*\[Epsilon])/t1 + 
         (3*q2*sp*\[Epsilon])/t1 - (2*sp^2*\[Epsilon])/t1 + 
         (m2*q2*\[Epsilon])/u1 - (2*q2^2*\[Epsilon])/u1 - 
         (4*m2*sp*\[Epsilon])/u1 + (4*q2*sp*\[Epsilon])/u1 - 
         (2*sp^2*\[Epsilon])/u1 + (4*m2^2*q2*\[Epsilon])/(t1*u1) - 
         (4*m2*q2^2*\[Epsilon])/(t1*u1) + (q2^3*\[Epsilon])/(t1*u1) + 
         (4*m2*q2*sp*\[Epsilon])/(t1*u1) - (2*q2^2*sp*\[Epsilon])/(t1*u1) + 
         (2*q2*sp^2*\[Epsilon])/(t1*u1) - (sp^3*\[Epsilon])/(t1*u1) - 
         (3*m2*t1*\[Epsilon])/u1 + (3*q2*t1*\[Epsilon])/(2*u1) - 
         (5*sp*t1*\[Epsilon])/(2*u1) - (t1^2*\[Epsilon])/u1 - u1*\[Epsilon] - 
         (3*m2*u1*\[Epsilon])/t1 + (3*q2*u1*\[Epsilon])/t1 - 
         (2*sp*u1*\[Epsilon])/t1 - (2*u1^2*\[Epsilon])/t1 - 
         (m2*\[Epsilon]^2)/2 + (q2*\[Epsilon]^2)/4 - (3*sp*\[Epsilon]^2)/2 - 
         (m2*sp*\[Epsilon]^2)/t1 + (q2*sp*\[Epsilon]^2)/(4*t1) - 
         (3*sp^2*\[Epsilon]^2)/(2*t1) - (5*m2*sp*\[Epsilon]^2)/(2*u1) + 
         (7*q2*sp*\[Epsilon]^2)/(4*u1) - (3*sp^2*\[Epsilon]^2)/(2*u1) - 
         (3*m2*sp^2*\[Epsilon]^2)/(2*t1*u1) + (3*q2*sp^2*\[Epsilon]^2)/
          (4*t1*u1) - (3*sp^3*\[Epsilon]^2)/(4*t1*u1) - (m2*t1*\[Epsilon]^2)/
          u1 + (5*q2*t1*\[Epsilon]^2)/(4*u1) - (sp*t1*\[Epsilon]^2)/u1 - 
         (t1^2*\[Epsilon]^2)/(4*u1) - (u1*\[Epsilon]^2)/4 - 
         (m2*u1*\[Epsilon]^2)/t1 + (q2*u1*\[Epsilon]^2)/(2*t1) - 
         (sp*u1*\[Epsilon]^2)/(2*t1) - (u1^2*\[Epsilon]^2)/(2*t1) + 
         (3*sp*\[Epsilon]^3)/8 + (sp^2*\[Epsilon]^3)/(4*t1) - 
         (3*q2*sp*\[Epsilon]^3)/(8*u1) + (sp^2*\[Epsilon]^3)/(4*u1) - 
         (q2*sp^2*\[Epsilon]^3)/(8*t1*u1) + (sp^3*\[Epsilon]^3)/(8*t1*u1) - 
         (q2*t1*\[Epsilon]^3)/(4*u1) + (sp*t1*\[Epsilon]^3)/(8*u1), 
        -3 + (14*m2)/t1 - (2*q2)/t1 - (5*sp)/t1 + (4*m2^2)/u1^2 + 
         (2*m2*q2)/u1^2 - (6*m2*sp)/u1^2 - (3*q2*sp)/u1^2 - (6*m2*t1)/u1^2 - 
         (3*q2*t1)/u1^2 + (9*m2)/u1 + (9*q2)/u1 - (3*sp)/u1 + 
         (8*m2^2)/(t1*u1) + (2*m2*q2)/(t1*u1) - (3*q2^2)/(t1*u1) - 
         (m2*sp)/(t1*u1) + (6*q2*sp)/(t1*u1) - (2*sp^2)/(t1*u1) - (4*t1)/u1 + 
         (3*u1)/t1 + (3*m2)/(sp + t1 + u1) + (4*q2)/(sp + t1 + u1) + 
         (5*sp)/(sp + t1 + u1) + (32*m2^2)/(t1*(sp + t1 + u1)) + 
         (2*m2*q2)/(t1*(sp + t1 + u1)) - (5*q2^2)/(t1*(sp + t1 + u1)) + 
         (m2*sp)/(t1*(sp + t1 + u1)) + (q2*sp)/(t1*(sp + t1 + u1)) + 
         sp^2/(t1*(sp + t1 + u1)) + (4*t1)/(sp + t1 + u1) + 
         (16*m2^3)/(u1^2*(sp + t1 + u1)) + (8*m2^2*q2)/
          (u1^2*(sp + t1 + u1)) + (4*m2^2*sp)/(u1^2*(sp + t1 + u1)) + 
         (2*m2*q2*sp)/(u1^2*(sp + t1 + u1)) + (4*m2*sp^2)/
          (u1^2*(sp + t1 + u1)) + (2*q2*sp^2)/(u1^2*(sp + t1 + u1)) + 
         (4*m2^2*t1)/(u1^2*(sp + t1 + u1)) + (2*m2*q2*t1)/
          (u1^2*(sp + t1 + u1)) + (8*m2*sp*t1)/(u1^2*(sp + t1 + u1)) + 
         (4*q2*sp*t1)/(u1^2*(sp + t1 + u1)) + (4*m2*t1^2)/
          (u1^2*(sp + t1 + u1)) + (2*q2*t1^2)/(u1^2*(sp + t1 + u1)) + 
         (28*m2^2)/(u1*(sp + t1 + u1)) + (8*m2*q2)/(u1*(sp + t1 + u1)) - 
         q2^2/(u1*(sp + t1 + u1)) + (12*m2*sp)/(u1*(sp + t1 + u1)) - 
         (3*q2*sp)/(u1*(sp + t1 + u1)) + (16*m2^3)/(t1*u1*(sp + t1 + u1)) - 
         (4*m2*q2^2)/(t1*u1*(sp + t1 + u1)) + (8*m2^2*sp)/
          (t1*u1*(sp + t1 + u1)) - (2*m2*q2*sp)/(t1*u1*(sp + t1 + u1)) - 
         (q2^2*sp)/(t1*u1*(sp + t1 + u1)) + (m2*sp^2)/
          (t1*u1*(sp + t1 + u1)) - (q2*sp^2)/(t1*u1*(sp + t1 + u1)) + 
         (9*m2*t1)/(u1*(sp + t1 + u1)) - (2*q2*t1)/(u1*(sp + t1 + u1)) + 
         (3*sp*t1)/(u1*(sp + t1 + u1)) + (3*t1^2)/(u1*(sp + t1 + u1)) - 
         (3*u1)/(sp + t1 + u1) + (2*m2*u1)/(t1*(sp + t1 + u1)) + 
         (10*q2*u1)/(t1*(sp + t1 + u1)) - (5*u1^2)/(t1*(sp + t1 + u1)) - 
         2*\[Epsilon] + (m2*\[Epsilon])/t1 - (sp*\[Epsilon])/t1 - 
         (2*m2^2*\[Epsilon])/u1^2 - (3*m2*sp*\[Epsilon])/u1^2 - 
         (3*q2*sp*\[Epsilon])/u1^2 - (3*m2*t1*\[Epsilon])/u1^2 - 
         (3*q2*t1*\[Epsilon])/u1^2 - (m2*\[Epsilon])/u1 + 
         (2*q2*\[Epsilon])/u1 - (sp*\[Epsilon])/u1 - (2*m2^2*\[Epsilon])/
          (t1*u1) + (3*m2*q2*\[Epsilon])/(t1*u1) - (q2^2*\[Epsilon])/
          (t1*u1) - (m2*sp*\[Epsilon])/(t1*u1) + (q2*sp*\[Epsilon])/(t1*u1) - 
         (sp^2*\[Epsilon])/(t1*u1) - (3*t1*\[Epsilon])/u1 - 
         (u1*\[Epsilon])/t1 - (2*m2*\[Epsilon])/(sp + t1 + u1) + 
         (5*q2*\[Epsilon])/(sp + t1 + u1) - (sp*\[Epsilon])/
          (2*(sp + t1 + u1)) + (2*m2^2*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (7*m2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (2*m2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (3*q2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) - (sp^2*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (t1*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (4*m2^2*q2*\[Epsilon])/(u1^2*(sp + t1 + u1)) + 
         (2*m2^2*sp*\[Epsilon])/(u1^2*(sp + t1 + u1)) + 
         (2*m2*q2*sp*\[Epsilon])/(u1^2*(sp + t1 + u1)) + 
         (m2*sp^2*\[Epsilon])/(u1^2*(sp + t1 + u1)) + (3*q2*sp^2*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) + (2*m2^2*t1*\[Epsilon])/
          (u1^2*(sp + t1 + u1)) + (2*m2*q2*t1*\[Epsilon])/
          (u1^2*(sp + t1 + u1)) + (2*m2*sp*t1*\[Epsilon])/
          (u1^2*(sp + t1 + u1)) + (3*q2*sp*t1*\[Epsilon])/
          (u1^2*(sp + t1 + u1)) + (m2*t1^2*\[Epsilon])/
          (u1^2*(sp + t1 + u1)) + (3*q2*t1^2*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) + (4*m2^2*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (7*m2*q2*\[Epsilon])/(u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (7*m2*sp*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (4*m2^2*q2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) - 
         (2*m2*q2^2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) + 
         (2*m2^2*sp*\[Epsilon])/(t1*u1*(sp + t1 + u1)) + 
         (m2*q2*sp*\[Epsilon])/(t1*u1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (4*m2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (5*sp*t1*\[Epsilon])/(2*u1*(sp + t1 + u1)) + (5*t1^2*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (4*u1*\[Epsilon])/(sp + t1 + u1) - 
         (5*m2*u1*\[Epsilon])/(t1*(sp + t1 + u1)) + (6*q2*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (2*sp*u1*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (3*u1^2*\[Epsilon])/(t1*(sp + t1 + u1)) - (5*\[Epsilon]^2)/4 - 
         (3*m2*\[Epsilon]^2)/(2*t1) + (q2*\[Epsilon]^2)/(2*t1) - 
         (sp*\[Epsilon]^2)/(4*t1) - (m2*q2*\[Epsilon]^2)/(2*u1^2) - 
         (3*q2*sp*\[Epsilon]^2)/(4*u1^2) - (3*q2*t1*\[Epsilon]^2)/(4*u1^2) - 
         (q2*\[Epsilon]^2)/(4*u1) - (5*sp*\[Epsilon]^2)/(4*u1) - 
         (m2*q2*\[Epsilon]^2)/(2*t1*u1) + (q2^2*\[Epsilon]^2)/(4*t1*u1) - 
         (m2*sp*\[Epsilon]^2)/(2*t1*u1) - (3*sp^2*\[Epsilon]^2)/(4*t1*u1) - 
         (5*t1*\[Epsilon]^2)/(4*u1) - (5*u1*\[Epsilon]^2)/(4*t1) + 
         (q2*\[Epsilon]^2)/(2*(sp + t1 + u1)) - (5*sp*\[Epsilon]^2)/
          (4*(sp + t1 + u1)) + (m2*q2*\[Epsilon]^2)/(2*t1*(sp + t1 + u1)) - 
         (q2^2*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) + (m2*sp*\[Epsilon]^2)/
          (2*t1*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1)) - (5*sp^2*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon]^2)/
          (2*u1^2*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon]^2)/
          (2*u1^2*(sp + t1 + u1)) + (m2*q2*t1*\[Epsilon]^2)/
          (2*u1^2*(sp + t1 + u1)) - (m2*sp*t1*\[Epsilon]^2)/
          (u1^2*(sp + t1 + u1)) - (m2*t1^2*\[Epsilon]^2)/
          (2*u1^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon]^2)/
          (u1*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) - 
         (m2*sp*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) + (5*q2*sp*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon]^2)/
          (2*t1*u1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon]^2)/
          (4*t1*u1*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon]^2)/
          (t1*u1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon]^2)/
          (2*t1*u1*(sp + t1 + u1)) + (3*q2*t1*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) + (sp*t1*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) + (t1^2*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) - 
         (u1*\[Epsilon]^2)/(4*(sp + t1 + u1)) - (m2*u1*\[Epsilon]^2)/
          (2*t1*(sp + t1 + u1)) + (q2*u1*\[Epsilon]^2)/
          (2*t1*(sp + t1 + u1)) - (u1^2*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) + 
         (sp*\[Epsilon]^3)/(4*u1) + (sp^2*\[Epsilon]^3)/(8*t1*u1) + 
         (t1*\[Epsilon]^3)/(8*u1) + (sp*\[Epsilon]^3)/(8*(sp + t1 + u1)) + 
         (sp^2*\[Epsilon]^3)/(4*t1*(sp + t1 + u1)) - (t1*\[Epsilon]^3)/
          (8*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon]^3)/
          (8*u1^2*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon]^3)/
          (4*u1^2*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^3)/
          (8*u1^2*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^3)/
          (4*u1*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon]^3)/
          (8*t1*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^3)/
          (8*u1*(sp + t1 + u1)) - (sp*t1*\[Epsilon]^3)/
          (8*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon]^3)/(8*u1*(sp + t1 + u1))}, 
       {0, 0, 3/t1 - 4/u1 + q2/(t1*u1) - (2*sp)/(t1*u1) - 2/(sp + t1 + u1) + 
         (4*m2)/(t1*(sp + t1 + u1)) + (5*q2)/(t1*(sp + t1 + u1)) - 
         sp/(t1*(sp + t1 + u1)) + (2*q2)/(u1*(sp + t1 + u1)) + 
         (4*sp)/(u1*(sp + t1 + u1)) + (8*m2^2)/(t1*u1*(sp + t1 + u1)) + 
         (4*m2*q2)/(t1*u1*(sp + t1 + u1)) + (2*m2*sp)/
          (t1*u1*(sp + t1 + u1)) + (2*q2*sp)/(t1*u1*(sp + t1 + u1)) + 
         sp^2/(t1*u1*(sp + t1 + u1)) + (3*t1)/(u1*(sp + t1 + u1)) - 
         (5*u1)/(t1*(sp + t1 + u1)) - (2*\[Epsilon])/u1 - 
         (m2*\[Epsilon])/(t1*u1) - (3*\[Epsilon])/(sp + t1 + u1) - 
         (3*m2*\[Epsilon])/(t1*(sp + t1 + u1)) + (4*q2*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (3*m2*\[Epsilon])/(u1*(sp + t1 + u1)) + (2*q2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (3*sp*\[Epsilon])/(2*u1*(sp + t1 + u1)) + 
         (2*m2*q2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (2*q2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (3*t1*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (4*u1*\[Epsilon])/(t1*(sp + t1 + u1)) - (3*\[Epsilon]^2)/(4*t1) - 
         \[Epsilon]^2/(2*u1) - (q2*\[Epsilon]^2)/(4*t1*u1) - 
         \[Epsilon]^2/(2*(sp + t1 + u1)) - (m2*\[Epsilon]^2)/
          (t1*(sp + t1 + u1)) + (3*q2*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) - 
         (sp*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) - (m2*\[Epsilon]^2)/
          (u1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) - 
         (sp*\[Epsilon]^2)/(u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/
          (2*t1*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/
          (2*t1*u1*(sp + t1 + u1)) - (sp^2*\[Epsilon]^2)/
          (2*t1*u1*(sp + t1 + u1)) - (t1*\[Epsilon]^2)/
          (2*u1*(sp + t1 + u1)) - (3*u1*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) + 
         (sp*\[Epsilon]^3)/(8*u1*(sp + t1 + u1)) + (sp^2*\[Epsilon]^3)/
          (8*t1*u1*(sp + t1 + u1))}, {0, 0, -2/(t1*(sp + t1 + u1)) - 
         1/(u1*(sp + t1 + u1)) - sp/(t1*u1*(sp + t1 + u1)) - 
         (2*\[Epsilon])/(t1*(sp + t1 + u1)) - \[Epsilon]/
          (u1*(sp + t1 + u1)) - (sp*\[Epsilon])/(t1*u1*(sp + t1 + u1)) - 
         \[Epsilon]^2/(2*t1*(sp + t1 + u1)) - \[Epsilon]^2/
          (4*u1*(sp + t1 + u1)) - (sp*\[Epsilon]^2)/
          (4*t1*u1*(sp + t1 + u1))}}, 
      {{8*m2^3 + 4*m2^2*q2 + 2*m2^2*q2*\[Epsilon], 4*m2^2 + 4*m2*q2 + 
         6*m2*sp - 2*m2^2*\[Epsilon] + 2*m2*q2*\[Epsilon] + 
         3*m2*sp*\[Epsilon], 4*m2 + 2*m2*\[Epsilon]}, 
       {8*m2^2 + 4*m2*q2 + (16*m2^3)/t1 + (8*m2^2*q2)/t1 - 2*m2*t1 - q2*t1 + 
         2*m2*q2*\[Epsilon] + (4*m2^2*q2*\[Epsilon])/t1 - 
         2*m2*t1*\[Epsilon] - (3*q2*t1*\[Epsilon])/2 - (m2*t1*\[Epsilon]^2)/
          2 - (3*q2*t1*\[Epsilon]^2)/4 - (q2*t1*\[Epsilon]^3)/8, 
        7*m2 + q2 - 2*sp - (4*m2^2)/t1 + (5*m2*q2)/t1 - q2^2/t1 - 2*t1 + 
         (12*m2^2)/u1 - (4*m2*q2)/u1 - (m2*sp)/u1 - (q2*sp)/u1 + 
         (6*m2*t1)/u1 - (2*q2*t1)/u1 + t1^2/u1 - 3*u1 - (5*m2*u1)/t1 + 
         (q2*u1)/t1 + (4*m2^2)/(sp + t1 + u1) + (5*m2*q2)/(sp + t1 + u1) - 
         (3*q2^2)/(sp + t1 + u1) + (4*m2*sp)/(sp + t1 + u1) - 
         (3*q2*sp)/(sp + t1 + u1) + sp^2/(sp + t1 + u1) + 
         (16*m2^3)/(t1*(sp + t1 + u1)) - (4*m2*q2^2)/(t1*(sp + t1 + u1)) - 
         (4*m2^2*sp)/(t1*(sp + t1 + u1)) - (m2*q2*sp)/(t1*(sp + t1 + u1)) + 
         (q2^2*sp)/(t1*(sp + t1 + u1)) + (m2*sp^2)/(t1*(sp + t1 + u1)) - 
         (q2*sp^2)/(t1*(sp + t1 + u1)) - (m2*t1)/(sp + t1 + u1) + 
         (6*q2*t1)/(sp + t1 + u1) + (2*sp*t1)/(sp + t1 + u1) - 
         (3*t1^2)/(sp + t1 + u1) + (16*m2^3)/(u1*(sp + t1 + u1)) - 
         (8*m2^2*q2)/(u1*(sp + t1 + u1)) - (4*m2*q2^2)/(u1*(sp + t1 + u1)) + 
         (2*q2^3)/(u1*(sp + t1 + u1)) - (16*m2^2*sp)/(u1*(sp + t1 + u1)) + 
         (2*m2*q2*sp)/(u1*(sp + t1 + u1)) + (2*m2*sp^2)/(u1*(sp + t1 + u1)) + 
         (8*m2^2*t1)/(u1*(sp + t1 + u1)) + (8*m2*q2*t1)/(u1*(sp + t1 + u1)) - 
         (6*q2^2*t1)/(u1*(sp + t1 + u1)) - (2*m2*sp*t1)/(u1*(sp + t1 + u1)) - 
         (4*m2*t1^2)/(u1*(sp + t1 + u1)) + (6*q2*t1^2)/(u1*(sp + t1 + u1)) - 
         (2*t1^3)/(u1*(sp + t1 + u1)) + (4*m2*u1)/(sp + t1 + u1) - 
         (q2*u1)/(sp + t1 + u1) + (4*sp*u1)/(sp + t1 + u1) + 
         (4*m2^2*u1)/(t1*(sp + t1 + u1)) + (3*m2*q2*u1)/(t1*(sp + t1 + u1)) + 
         (q2^2*u1)/(t1*(sp + t1 + u1)) + (2*m2*sp*u1)/(t1*(sp + t1 + u1)) - 
         (3*q2*sp*u1)/(t1*(sp + t1 + u1)) + (sp^2*u1)/(t1*(sp + t1 + u1)) + 
         (2*u1^2)/(sp + t1 + u1) + (m2*u1^2)/(t1*(sp + t1 + u1)) - 
         (2*q2*u1^2)/(t1*(sp + t1 + u1)) + (2*sp*u1^2)/(t1*(sp + t1 + u1)) + 
         u1^3/(t1*(sp + t1 + u1)) + 3*m2*\[Epsilon] - (sp*\[Epsilon])/2 - 
         (2*m2^2*\[Epsilon])/t1 + (2*m2*q2*\[Epsilon])/t1 - 
         (q2^2*\[Epsilon])/(2*t1) - (m2*sp*\[Epsilon])/t1 + 
         (q2*sp*\[Epsilon])/(2*t1) - (3*t1*\[Epsilon])/2 + 
         (4*m2^2*\[Epsilon])/u1 - (3*m2*q2*\[Epsilon])/u1 + 
         (2*m2*sp*\[Epsilon])/u1 - (2*q2*sp*\[Epsilon])/u1 + 
         (3*m2*t1*\[Epsilon])/u1 - (3*q2*t1*\[Epsilon])/(2*u1) + 
         (sp*t1*\[Epsilon])/(2*u1) - u1*\[Epsilon] - (2*m2*u1*\[Epsilon])/
          t1 - (sp*u1*\[Epsilon])/(2*t1) + (u1^2*\[Epsilon])/(2*t1) - 
         (4*m2^2*\[Epsilon])/(sp + t1 + u1) + (7*m2*q2*\[Epsilon])/
          (sp + t1 + u1) - (3*q2^2*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (m2*sp*\[Epsilon])/(sp + t1 + u1) + (q2*sp*\[Epsilon])/
          (2*(sp + t1 + u1)) - (sp^2*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (4*m2^2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - (2*m2*q2^2*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (q2^2*sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (2*m2*sp^2*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (q2*sp^2*\[Epsilon])/(2*t1*(sp + t1 + u1)) - 
         (7*m2*t1*\[Epsilon])/(sp + t1 + u1) + (3*q2*t1*\[Epsilon])/
          (sp + t1 + u1) - (2*sp*t1*\[Epsilon])/(sp + t1 + u1) - 
         (5*t1^2*\[Epsilon])/(2*(sp + t1 + u1)) + (4*m2^2*q2*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (4*m2*q2^2*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (q2^3*\[Epsilon])/(u1*(sp + t1 + u1)) - (4*m2^2*sp*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (2*m2*q2*sp*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (q2*sp^2*\[Epsilon])/(u1*(sp + t1 + u1)) - (4*m2^2*t1*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (6*m2*q2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (2*q2^2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) - (4*m2*sp*t1*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (q2*sp*t1*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (sp^2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) - (4*m2*t1^2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (2*q2*t1^2*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (sp*t1^2*\[Epsilon])/(u1*(sp + t1 + u1)) - (t1^3*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (2*m2*u1*\[Epsilon])/(sp + t1 + u1) + 
         (q2*u1*\[Epsilon])/(sp + t1 + u1) + (m2*q2*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (q2^2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (3*m2*sp*u1*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (3*q2*sp*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) + 
         (sp^2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) - (5*t1*u1*\[Epsilon])/
          (2*(sp + t1 + u1)) - (u1^2*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (m2*u1^2*\[Epsilon])/(t1*(sp + t1 + u1)) - (q2*u1^2*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (sp*u1^2*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (u1^3*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (m2*\[Epsilon]^2)/2 + 
         (5*q2*\[Epsilon]^2)/4 + (sp*\[Epsilon]^2)/2 - (3*m2*sp*\[Epsilon]^2)/
          (2*t1) + (q2*sp*\[Epsilon]^2)/(2*t1) - (3*t1*\[Epsilon]^2)/4 + 
         (m2*q2*\[Epsilon]^2)/u1 - (q2^2*\[Epsilon]^2)/(2*u1) + 
         (2*m2*sp*\[Epsilon]^2)/u1 - (q2*sp*\[Epsilon]^2)/u1 + 
         (3*q2*t1*\[Epsilon]^2)/(4*u1) + (sp*t1*\[Epsilon]^2)/(2*u1) - 
         (t1^2*\[Epsilon]^2)/(4*u1) - (u1*\[Epsilon]^2)/4 - 
         (q2*u1*\[Epsilon]^2)/(4*t1) - (sp*u1*\[Epsilon]^2)/(2*t1) + 
         (u1^2*\[Epsilon]^2)/(4*t1) - (m2*q2*\[Epsilon]^2)/(sp + t1 + u1) + 
         (q2^2*\[Epsilon]^2)/(2*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/
          (2*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/(4*(sp + t1 + u1)) - 
         (3*sp^2*\[Epsilon]^2)/(4*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon]^2)/
          (2*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/(sp + t1 + u1) - 
         (3*sp*t1*\[Epsilon]^2)/(4*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon]^2)/
          (u1*(sp + t1 + u1)) + (q2^2*sp*\[Epsilon]^2)/
          (2*u1*(sp + t1 + u1)) - (3*m2*sp^2*\[Epsilon]^2)/
          (2*u1*(sp + t1 + u1)) + (3*q2*sp^2*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (m2*q2*t1*\[Epsilon]^2)/
          (u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon]^2)/
          (2*u1*(sp + t1 + u1)) - (q2*sp*t1*\[Epsilon]^2)/
          (2*u1*(sp + t1 + u1)) - (3*sp^2*t1*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (2*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon]^2)/(4*(sp + t1 + u1)) - 
         (3*sp*u1*\[Epsilon]^2)/(4*(sp + t1 + u1)) + (m2*sp*u1*\[Epsilon]^2)/
          (2*t1*(sp + t1 + u1)) - (t1*u1*\[Epsilon]^2)/(4*(sp + t1 + u1)) - 
         (u1^2*\[Epsilon]^2)/(4*(sp + t1 + u1)) - (sp*\[Epsilon]^3)/8 - 
         (q2*sp*\[Epsilon]^3)/(8*t1) + (q2*sp*\[Epsilon]^3)/(4*u1) - 
         (sp*t1*\[Epsilon]^3)/(8*u1) + (sp*u1*\[Epsilon]^3)/(8*t1) - 
         (q2*sp*\[Epsilon]^3)/(8*(sp + t1 + u1)) + (sp^2*\[Epsilon]^3)/
          (8*(sp + t1 + u1)) + (sp*t1*\[Epsilon]^3)/(8*(sp + t1 + u1)) - 
         (q2*sp^2*\[Epsilon]^3)/(8*u1*(sp + t1 + u1)) + 
         (sp^2*t1*\[Epsilon]^3)/(8*u1*(sp + t1 + u1)) + (sp*u1*\[Epsilon]^3)/
          (8*(sp + t1 + u1)), -6 - (10*m2)/t1 + (3*q2)/t1 - (10*m2)/u1 + 
         (2*q2)/u1 - (3*t1)/u1 - (3*u1)/t1 + (20*m2)/(sp + t1 + u1) - 
         (10*q2)/(sp + t1 + u1) + (3*sp)/(sp + t1 + u1) - 
         (8*m2^2)/(t1*(sp + t1 + u1)) - (6*m2*q2)/(t1*(sp + t1 + u1)) + 
         (2*q2^2)/(t1*(sp + t1 + u1)) + (4*m2*sp)/(t1*(sp + t1 + u1)) - 
         (q2*sp)/(t1*(sp + t1 + u1)) + (9*t1)/(sp + t1 + u1) - 
         (8*m2^2)/(u1*(sp + t1 + u1)) - (6*m2*q2)/(u1*(sp + t1 + u1)) + 
         (2*q2^2)/(u1*(sp + t1 + u1)) + (4*m2*sp)/(u1*(sp + t1 + u1)) - 
         (2*q2*sp)/(u1*(sp + t1 + u1)) + (6*m2*t1)/(u1*(sp + t1 + u1)) - 
         (5*q2*t1)/(u1*(sp + t1 + u1)) + (2*sp*t1)/(u1*(sp + t1 + u1)) + 
         (3*t1^2)/(u1*(sp + t1 + u1)) + (9*u1)/(sp + t1 + u1) + 
         (6*m2*u1)/(t1*(sp + t1 + u1)) - (5*q2*u1)/(t1*(sp + t1 + u1)) + 
         (sp*u1)/(t1*(sp + t1 + u1)) + (3*u1^2)/(t1*(sp + t1 + u1)) - 
         (m2*\[Epsilon])/t1 - (m2*\[Epsilon])/u1 - (q2*\[Epsilon])/u1 + 
         (6*m2*\[Epsilon])/(sp + t1 + u1) + (3*q2*\[Epsilon])/
          (sp + t1 + u1) - (2*sp*\[Epsilon])/(sp + t1 + u1) + 
         (3*m2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) + (3*q2*sp*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (7*t1*\[Epsilon])/(2*(sp + t1 + u1)) + 
         (3*m2*sp*\[Epsilon])/(u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) + (m2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (q2*t1*\[Epsilon])/(2*u1*(sp + t1 + u1)) - (sp*t1*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (7*u1*\[Epsilon])/(2*(sp + t1 + u1)) + (m2*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) - 
         (3*sp*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) - (u1^2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + 3*\[Epsilon]^2 + (m2*\[Epsilon]^2)/t1 - 
         (3*q2*\[Epsilon]^2)/(2*t1) + (m2*\[Epsilon]^2)/u1 - 
         (7*q2*\[Epsilon]^2)/(4*u1) + (3*t1*\[Epsilon]^2)/(2*u1) + 
         (3*u1*\[Epsilon]^2)/(2*t1) - (2*m2*\[Epsilon]^2)/(sp + t1 + u1) + 
         (5*q2*\[Epsilon]^2)/(2*(sp + t1 + u1)) - (11*sp*\[Epsilon]^2)/
          (4*(sp + t1 + u1)) - (2*m2*sp*\[Epsilon]^2)/(t1*(sp + t1 + u1)) + 
         (3*q2*sp*\[Epsilon]^2)/(2*t1*(sp + t1 + u1)) - (13*t1*\[Epsilon]^2)/
          (4*(sp + t1 + u1)) - (2*m2*sp*\[Epsilon]^2)/(u1*(sp + t1 + u1)) + 
         (5*q2*sp*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) - (m2*t1*\[Epsilon]^2)/
          (u1*(sp + t1 + u1)) + (3*q2*t1*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (5*sp*t1*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (3*t1^2*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (13*u1*\[Epsilon]^2)/(4*(sp + t1 + u1)) - 
         (m2*u1*\[Epsilon]^2)/(t1*(sp + t1 + u1)) + (3*q2*u1*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1)) - (3*sp*u1*\[Epsilon]^2)/
          (2*t1*(sp + t1 + u1)) - (3*u1^2*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1)) - \[Epsilon]^3/4 + (q2*\[Epsilon]^3)/(8*t1) + 
         (q2*\[Epsilon]^3)/(8*u1) - (t1*\[Epsilon]^3)/(8*u1) - 
         (u1*\[Epsilon]^3)/(8*t1) - (q2*\[Epsilon]^3)/(4*(sp + t1 + u1)) + 
         (sp*\[Epsilon]^3)/(2*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^3)/
          (4*t1*(sp + t1 + u1)) + (3*t1*\[Epsilon]^3)/(8*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon]^3)/(4*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^3)/
          (8*u1*(sp + t1 + u1)) + (sp*t1*\[Epsilon]^3)/
          (4*u1*(sp + t1 + u1)) + (t1^2*\[Epsilon]^3)/(8*u1*(sp + t1 + u1)) + 
         (3*u1*\[Epsilon]^3)/(8*(sp + t1 + u1)) - (q2*u1*\[Epsilon]^3)/
          (8*t1*(sp + t1 + u1)) + (sp*u1*\[Epsilon]^3)/
          (4*t1*(sp + t1 + u1)) + (u1^2*\[Epsilon]^3)/(8*t1*(sp + t1 + u1))}, 
       {(8*m2^3)/t1^2 + (4*m2^2*q2)/t1^2 + (8*m2^2)/t1 + (4*m2*q2)/t1 - 
         (2*m2*sp)/t1 - (q2*sp)/t1 - 2*m2*\[Epsilon] - q2*\[Epsilon] + 
         (2*m2^2*q2*\[Epsilon])/t1^2 + (2*m2*q2*\[Epsilon])/t1 - 
         (2*m2*sp*\[Epsilon])/t1 - (3*q2*sp*\[Epsilon])/(2*t1) - 
         m2*\[Epsilon]^2 - q2*\[Epsilon]^2 - (m2*sp*\[Epsilon]^2)/(2*t1) - 
         (3*q2*sp*\[Epsilon]^2)/(4*t1) - (q2*\[Epsilon]^3)/4 - 
         (q2*sp*\[Epsilon]^3)/(8*t1), -3 + (4*m2^2)/t1^2 + (4*m2*q2)/t1^2 - 
         (6*m2*sp)/t1^2 + (7*m2)/t1 + (7*q2)/t1 - (7*sp)/t1 + (14*m2)/u1 + 
         (6*q2)/u1 - (2*sp)/u1 + (8*m2^2)/(t1*u1) + (5*m2*q2)/(t1*u1) - 
         (5*q2^2)/(t1*u1) - (m2*sp)/(t1*u1) + (9*q2*sp)/(t1*u1) - 
         (4*sp^2)/(t1*u1) + (3*t1)/u1 - (6*m2*u1)/t1^2 - (4*u1)/t1 + 
         (3*m2)/(sp + t1 + u1) + (7*q2)/(sp + t1 + u1) + 
         (3*sp)/(sp + t1 + u1) + (16*m2^3)/(t1^2*(sp + t1 + u1)) - 
         (4*m2*q2^2)/(t1^2*(sp + t1 + u1)) + (4*m2^2*sp)/
          (t1^2*(sp + t1 + u1)) + (4*m2*sp^2)/(t1^2*(sp + t1 + u1)) + 
         (28*m2^2)/(t1*(sp + t1 + u1)) + (m2*q2)/(t1*(sp + t1 + u1)) - 
         (3*q2^2)/(t1*(sp + t1 + u1)) + (12*m2*sp)/(t1*(sp + t1 + u1)) - 
         (q2*sp)/(t1*(sp + t1 + u1)) + (3*sp^2)/(t1*(sp + t1 + u1)) - 
         (3*t1)/(sp + t1 + u1) + (32*m2^2)/(u1*(sp + t1 + u1)) + 
         (5*m2*q2)/(u1*(sp + t1 + u1)) - (9*q2^2)/(u1*(sp + t1 + u1)) + 
         (5*m2*sp)/(u1*(sp + t1 + u1)) + (7*q2*sp)/(u1*(sp + t1 + u1)) - 
         (2*sp^2)/(u1*(sp + t1 + u1)) + (16*m2^3)/(t1*u1*(sp + t1 + u1)) - 
         (8*m2^2*q2)/(t1*u1*(sp + t1 + u1)) - (4*m2*q2^2)/
          (t1*u1*(sp + t1 + u1)) + (2*q2^3)/(t1*u1*(sp + t1 + u1)) + 
         (16*m2^2*sp)/(t1*u1*(sp + t1 + u1)) + (3*m2*q2*sp)/
          (t1*u1*(sp + t1 + u1)) - (3*q2^2*sp)/(t1*u1*(sp + t1 + u1)) + 
         (3*m2*sp^2)/(t1*u1*(sp + t1 + u1)) + (q2*sp^2)/
          (t1*u1*(sp + t1 + u1)) + (2*m2*t1)/(u1*(sp + t1 + u1)) + 
         (12*q2*t1)/(u1*(sp + t1 + u1)) - (5*sp*t1)/(u1*(sp + t1 + u1)) - 
         (5*t1^2)/(u1*(sp + t1 + u1)) + (4*u1)/(sp + t1 + u1) + 
         (4*m2^2*u1)/(t1^2*(sp + t1 + u1)) + (8*m2*sp*u1)/
          (t1^2*(sp + t1 + u1)) + (9*m2*u1)/(t1*(sp + t1 + u1)) - 
         (2*q2*u1)/(t1*(sp + t1 + u1)) + (6*sp*u1)/(t1*(sp + t1 + u1)) + 
         (4*m2*u1^2)/(t1^2*(sp + t1 + u1)) + (3*u1^2)/(t1*(sp + t1 + u1)) - 
         2*\[Epsilon] - (2*m2^2*\[Epsilon])/t1^2 + (m2*q2*\[Epsilon])/t1^2 - 
         (3*m2*sp*\[Epsilon])/t1^2 - (3*m2*\[Epsilon])/t1 + 
         (5*q2*\[Epsilon])/(2*t1) - (3*sp*\[Epsilon])/t1 + 
         (m2*\[Epsilon])/u1 + (3*q2*\[Epsilon])/u1 - (sp*\[Epsilon])/u1 - 
         (2*m2^2*\[Epsilon])/(t1*u1) + (3*m2*q2*\[Epsilon])/(t1*u1) - 
         (3*q2^2*\[Epsilon])/(2*t1*u1) - (2*m2*sp*\[Epsilon])/(t1*u1) + 
         (5*q2*sp*\[Epsilon])/(2*t1*u1) - (sp^2*\[Epsilon])/(t1*u1) - 
         (t1*\[Epsilon])/u1 - (3*m2*u1*\[Epsilon])/t1^2 - 
         (3*u1*\[Epsilon])/t1 - (2*m2*\[Epsilon])/(sp + t1 + u1) + 
         (q2*\[Epsilon])/(2*(sp + t1 + u1)) - (7*sp*\[Epsilon])/
          (2*(sp + t1 + u1)) + (4*m2^2*q2*\[Epsilon])/(t1^2*(sp + t1 + u1)) - 
         (2*m2*q2^2*\[Epsilon])/(t1^2*(sp + t1 + u1)) + 
         (2*m2^2*sp*\[Epsilon])/(t1^2*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (m2*sp^2*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (4*m2^2*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (4*m2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + (4*m2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (2*q2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) + (sp^2*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) - (4*t1*\[Epsilon])/(sp + t1 + u1) + 
         (2*m2^2*\[Epsilon])/(u1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (5*q2^2*\[Epsilon])/(2*u1*(sp + t1 + u1)) - 
         (5*m2*sp*\[Epsilon])/(u1*(sp + t1 + u1)) + (3*q2*sp*\[Epsilon])/
          (2*u1*(sp + t1 + u1)) - (5*sp^2*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (4*m2^2*q2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) - 
         (4*m2*q2^2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) + 
         (q2^3*\[Epsilon])/(t1*u1*(sp + t1 + u1)) + (2*m2^2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (q2^2*sp*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon])/
          (2*t1*u1*(sp + t1 + u1)) - (sp^3*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (5*m2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (3*q2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) - (6*sp*t1*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (3*t1^2*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (u1*\[Epsilon])/(2*(sp + t1 + u1)) + (2*m2^2*u1*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (2*m2*sp*u1*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (4*m2*u1*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (2*q2*u1*\[Epsilon])/(t1*(sp + t1 + u1)) + (4*sp*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (m2*u1^2*\[Epsilon])/(t1^2*(sp + t1 + u1)) + 
         (5*u1^2*\[Epsilon])/(2*t1*(sp + t1 + u1)) - (5*\[Epsilon]^2)/4 - 
         (m2*q2*\[Epsilon]^2)/(2*t1^2) - (m2*\[Epsilon]^2)/(2*t1) + 
         (q2*\[Epsilon]^2)/(2*t1) - (7*sp*\[Epsilon]^2)/(4*t1) - 
         (3*m2*\[Epsilon]^2)/(2*u1) + (13*q2*\[Epsilon]^2)/(4*u1) - 
         (sp*\[Epsilon]^2)/u1 - (m2*q2*\[Epsilon]^2)/(2*t1*u1) + 
         (q2^2*\[Epsilon]^2)/(4*t1*u1) - (m2*sp*\[Epsilon]^2)/(2*t1*u1) + 
         (q2*sp*\[Epsilon]^2)/(2*t1*u1) - (3*sp^2*\[Epsilon]^2)/(4*t1*u1) - 
         (5*t1*\[Epsilon]^2)/(4*u1) - (5*u1*\[Epsilon]^2)/(4*t1) - 
         (3*q2*\[Epsilon]^2)/(4*(sp + t1 + u1)) - (7*sp*\[Epsilon]^2)/
          (4*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon]^2)/
          (2*t1^2*(sp + t1 + u1)) - (m2*sp^2*\[Epsilon]^2)/
          (2*t1^2*(sp + t1 + u1)) + (m2*q2*\[Epsilon]^2)/
          (t1*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) - 
         (3*m2*sp*\[Epsilon]^2)/(2*t1*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/
          (2*t1*(sp + t1 + u1)) - (5*sp^2*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1)) - (t1*\[Epsilon]^2)/(4*(sp + t1 + u1)) + 
         (m2*q2*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/
          (2*u1*(sp + t1 + u1)) + (q2*sp*\[Epsilon]^2)/
          (2*u1*(sp + t1 + u1)) - (2*sp^2*\[Epsilon]^2)/(u1*(sp + t1 + u1)) + 
         (m2*q2*sp*\[Epsilon]^2)/(2*t1*u1*(sp + t1 + u1)) - 
         (q2^2*sp*\[Epsilon]^2)/(4*t1*u1*(sp + t1 + u1)) - 
         (3*m2*sp^2*\[Epsilon]^2)/(2*t1*u1*(sp + t1 + u1)) + 
         (q2*sp^2*\[Epsilon]^2)/(t1*u1*(sp + t1 + u1)) - 
         (3*sp^3*\[Epsilon]^2)/(4*t1*u1*(sp + t1 + u1)) - 
         (m2*t1*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (3*sp*t1*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (t1^2*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) + 
         (m2*q2*u1*\[Epsilon]^2)/(2*t1^2*(sp + t1 + u1)) - 
         (m2*sp*u1*\[Epsilon]^2)/(t1^2*(sp + t1 + u1)) - 
         (sp*u1*\[Epsilon]^2)/(4*t1*(sp + t1 + u1)) - (m2*u1^2*\[Epsilon]^2)/
          (2*t1^2*(sp + t1 + u1)) + (u1^2*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1)) - (q2*\[Epsilon]^3)/(8*t1) + 
         (sp*\[Epsilon]^3)/(4*t1) - (3*q2*\[Epsilon]^3)/(8*u1) - 
         (q2*sp*\[Epsilon]^3)/(8*t1*u1) + (sp^2*\[Epsilon]^3)/(8*t1*u1) + 
         (u1*\[Epsilon]^3)/(8*t1) + (sp*\[Epsilon]^3)/(8*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon]^3)/(8*t1*(sp + t1 + u1)) + (sp^2*\[Epsilon]^3)/
          (8*t1*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^3)/
          (8*u1*(sp + t1 + u1)) + (sp^2*\[Epsilon]^3)/(4*u1*(sp + t1 + u1)) - 
         (q2*sp^2*\[Epsilon]^3)/(8*t1*u1*(sp + t1 + u1)) + 
         (sp^3*\[Epsilon]^3)/(8*t1*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^3)/
          (8*u1*(sp + t1 + u1)) - (u1*\[Epsilon]^3)/(8*(sp + t1 + u1)) + 
         (q2*u1*\[Epsilon]^3)/(8*t1*(sp + t1 + u1)) - (sp*u1*\[Epsilon]^3)/
          (8*t1*(sp + t1 + u1)) - (u1^2*\[Epsilon]^3)/(8*t1*(sp + t1 + u1)), 
        (-4*m2)/t1^2 - 8/t1 - (4*m2)/u1^2 - (2*q2)/u1^2 - u1^(-1) - 
         (8*m2)/(t1*u1) + (6*q2)/(t1*u1) - (2*sp)/(t1*u1) - 
         (4*m2)/(sp + t1 + u1)^2 + (8*m2^3)/(t1^2*(sp + t1 + u1)^2) + 
         (4*m2^2*q2)/(t1^2*(sp + t1 + u1)^2) - (4*m2^2*sp)/
          (t1^2*(sp + t1 + u1)^2) + (8*m2^2)/(t1*(sp + t1 + u1)^2) + 
         (8*m2*q2)/(t1*(sp + t1 + u1)^2) - (2*m2*sp)/(t1*(sp + t1 + u1)^2) + 
         (8*m2^3)/(u1^2*(sp + t1 + u1)^2) + (4*m2^2*q2)/
          (u1^2*(sp + t1 + u1)^2) - (4*m2^2*sp)/(u1^2*(sp + t1 + u1)^2) - 
         (2*m2*q2*sp)/(u1^2*(sp + t1 + u1)^2) - (4*m2^2*t1)/
          (u1^2*(sp + t1 + u1)^2) - (2*m2*q2*t1)/(u1^2*(sp + t1 + u1)^2) + 
         (8*m2^2)/(u1*(sp + t1 + u1)^2) + (6*m2*q2)/(u1*(sp + t1 + u1)^2) - 
         (2*m2*sp)/(u1*(sp + t1 + u1)^2) + (16*m2^3)/
          (t1*u1*(sp + t1 + u1)^2) - (4*m2*q2^2)/(t1*u1*(sp + t1 + u1)^2) + 
         (4*m2^2*sp)/(t1*u1*(sp + t1 + u1)^2) + (4*m2*q2*sp)/
          (t1*u1*(sp + t1 + u1)^2) - (4*m2*t1)/(u1*(sp + t1 + u1)^2) - 
         (4*m2^2*u1)/(t1^2*(sp + t1 + u1)^2) - (4*m2*u1)/
          (t1*(sp + t1 + u1)^2) + 9/(sp + t1 + u1) + 
         (12*m2^2)/(t1^2*(sp + t1 + u1)) + (4*m2*q2)/(t1^2*(sp + t1 + u1)) + 
         (6*m2*sp)/(t1^2*(sp + t1 + u1)) + (24*m2)/(t1*(sp + t1 + u1)) - 
         (5*q2)/(t1*(sp + t1 + u1)) + (5*sp)/(t1*(sp + t1 + u1)) + 
         (12*m2^2)/(u1^2*(sp + t1 + u1)) + (6*m2*q2)/(u1^2*(sp + t1 + u1)) + 
         (4*m2*sp)/(u1^2*(sp + t1 + u1)) + (2*q2*sp)/(u1^2*(sp + t1 + u1)) + 
         (4*m2*t1)/(u1^2*(sp + t1 + u1)) + (2*q2*t1)/(u1^2*(sp + t1 + u1)) + 
         (28*m2)/(u1*(sp + t1 + u1)) + q2/(u1*(sp + t1 + u1)) + 
         (4*m2^2)/(t1*u1*(sp + t1 + u1)) - (4*m2*q2)/(t1*u1*(sp + t1 + u1)) - 
         (2*q2^2)/(t1*u1*(sp + t1 + u1)) + (4*m2*sp)/(t1*u1*(sp + t1 + u1)) - 
         (2*q2*sp)/(t1*u1*(sp + t1 + u1)) + (4*m2*u1)/(t1^2*(sp + t1 + u1)) + 
         (9*u1)/(t1*(sp + t1 + u1)) - (2*m2*\[Epsilon])/t1^2 - 
         (5*\[Epsilon])/(2*t1) - (2*m2*\[Epsilon])/u1^2 - 
         (2*q2*\[Epsilon])/u1^2 - \[Epsilon]/(2*u1) - (3*m2*\[Epsilon])/
          (t1*u1) + (3*q2*\[Epsilon])/(2*t1*u1) - (2*m2*\[Epsilon])/
          (sp + t1 + u1)^2 + (2*m2^2*q2*\[Epsilon])/(t1^2*(sp + t1 + u1)^2) - 
         (2*m2^2*sp*\[Epsilon])/(t1^2*(sp + t1 + u1)^2) - 
         (2*m2^2*\[Epsilon])/(t1*(sp + t1 + u1)^2) + (4*m2*q2*\[Epsilon])/
          (t1*(sp + t1 + u1)^2) + (2*m2^2*q2*\[Epsilon])/
          (u1^2*(sp + t1 + u1)^2) - (2*m2^2*sp*\[Epsilon])/
          (u1^2*(sp + t1 + u1)^2) - (2*m2*q2*sp*\[Epsilon])/
          (u1^2*(sp + t1 + u1)^2) - (2*m2^2*t1*\[Epsilon])/
          (u1^2*(sp + t1 + u1)^2) - (2*m2*q2*t1*\[Epsilon])/
          (u1^2*(sp + t1 + u1)^2) - (2*m2^2*\[Epsilon])/
          (u1*(sp + t1 + u1)^2) + (2*m2*q2*\[Epsilon])/
          (u1*(sp + t1 + u1)^2) + (4*m2^2*q2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)^2) - (2*m2*q2^2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)^2) + (2*m2*q2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)^2) - (2*m2*t1*\[Epsilon])/
          (u1*(sp + t1 + u1)^2) - (2*m2^2*u1*\[Epsilon])/
          (t1^2*(sp + t1 + u1)^2) - (2*m2*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)^2) - (2*\[Epsilon])/(sp + t1 + u1) + 
         (2*m2^2*\[Epsilon])/(t1^2*(sp + t1 + u1)) + (2*m2*q2*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (2*m2*sp*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (9*m2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (3*q2*\[Epsilon])/(2*t1*(sp + t1 + u1)) + (2*m2^2*\[Epsilon])/
          (u1^2*(sp + t1 + u1)) + (4*m2*q2*\[Epsilon])/
          (u1^2*(sp + t1 + u1)) + (q2*sp*\[Epsilon])/(u1^2*(sp + t1 + u1)) + 
         (q2*t1*\[Epsilon])/(u1^2*(sp + t1 + u1)) + (9*m2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (7*sp*\[Epsilon])/(2*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (3*m2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (q2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (sp^2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) - 
         (3*t1*\[Epsilon])/(u1*(sp + t1 + u1)) + (7*u1*\[Epsilon])/
          (2*t1*(sp + t1 + u1)) + (3*\[Epsilon]^2)/(4*t1) - 
         (q2*\[Epsilon]^2)/(2*u1^2) + \[Epsilon]^2/(2*u1) - 
         (q2*\[Epsilon]^2)/(4*t1*u1) + (m2*sp*\[Epsilon]^2)/
          (2*t1*(sp + t1 + u1)^2) - (m2*q2*sp*\[Epsilon]^2)/
          (2*u1^2*(sp + t1 + u1)^2) - (m2*q2*t1*\[Epsilon]^2)/
          (2*u1^2*(sp + t1 + u1)^2) - (m2*q2*\[Epsilon]^2)/
          (2*u1*(sp + t1 + u1)^2) + (m2*sp*\[Epsilon]^2)/
          (2*u1*(sp + t1 + u1)^2) - (7*\[Epsilon]^2)/(4*(sp + t1 + u1)) - 
         (m2*sp*\[Epsilon]^2)/(2*t1^2*(sp + t1 + u1)) - (2*sp*\[Epsilon]^2)/
          (t1*(sp + t1 + u1)) + (m2*q2*\[Epsilon]^2)/
          (2*u1^2*(sp + t1 + u1)) - (m2*sp*\[Epsilon]^2)/
          (u1^2*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^2)/
          (2*u1^2*(sp + t1 + u1)) - (m2*t1*\[Epsilon]^2)/
          (u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (2*u1^2*(sp + t1 + u1)) + (3*q2*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (5*sp*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) - 
         (3*m2*sp*\[Epsilon]^2)/(2*t1*u1*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon]^2)/(2*t1*u1*(sp + t1 + u1)) - 
         (3*sp^2*\[Epsilon]^2)/(4*t1*u1*(sp + t1 + u1)) - 
         (t1*\[Epsilon]^2)/(u1*(sp + t1 + u1)) - (m2*u1*\[Epsilon]^2)/
          (t1^2*(sp + t1 + u1)) - (u1*\[Epsilon]^2)/(2*t1*(sp + t1 + u1)) + 
         (3*sp*\[Epsilon]^3)/(8*t1*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^3)/
          (4*u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^3)/
          (4*u1^2*(sp + t1 + u1)) - (q2*\[Epsilon]^3)/(4*u1*(sp + t1 + u1)) + 
         (sp*\[Epsilon]^3)/(4*u1*(sp + t1 + u1)) - (q2*sp*\[Epsilon]^3)/
          (4*t1*u1*(sp + t1 + u1)) + (sp^2*\[Epsilon]^3)/
          (8*t1*u1*(sp + t1 + u1))}, {0, 0, -2/(t1*u1) - 
         (2*m2)/(t1^2*(sp + t1 + u1)) + 3/(t1*(sp + t1 + u1)) + 
         1/(u1*(sp + t1 + u1)) - (2*m2)/(t1*u1*(sp + t1 + u1)) + 
         q2/(t1*u1*(sp + t1 + u1)) + sp/(t1*u1*(sp + t1 + u1)) - 
         \[Epsilon]/(t1*u1) - (2*m2*\[Epsilon])/(t1^2*(sp + t1 + u1)) + 
         (2*\[Epsilon])/(t1*(sp + t1 + u1)) - (2*m2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) + 
         (sp*\[Epsilon])/(2*t1*u1*(sp + t1 + u1)) - (m2*\[Epsilon]^2)/
          (2*t1^2*(sp + t1 + u1)) + \[Epsilon]^2/(4*t1*(sp + t1 + u1)) - 
         \[Epsilon]^2/(4*u1*(sp + t1 + u1)) - (m2*\[Epsilon]^2)/
          (2*t1*u1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (4*t1*u1*(sp + t1 + u1)) + (sp*\[Epsilon]^2)/
          (4*t1*u1*(sp + t1 + u1)) + (sp*\[Epsilon]^3)/
          (8*t1*u1*(sp + t1 + u1))}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, q2/(t1*(sp + t1 + u1)) - q2/(u1*(sp + t1 + u1)) + 
         t1/(u1*(sp + t1 + u1)) - u1/(t1*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(t1*(sp + t1 + u1)) - (q2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (t1*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (u1*\[Epsilon])/(t1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) + 
         (t1*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) - (u1*\[Epsilon]^2)/
          (4*t1*(sp + t1 + u1))}, {(-2*m2)/t1 - q2/t1 - 
         (2*m2*\[Epsilon])/t1 - (3*q2*\[Epsilon])/(2*t1) - 
         (m2*\[Epsilon]^2)/(2*t1) - (3*q2*\[Epsilon]^2)/(4*t1) - 
         (q2*\[Epsilon]^3)/(8*t1), -4/t1 + 3/u1 + (2*q2)/(t1*u1) - 
         (2*sp)/(t1*u1) - 2/(sp + t1 + u1) + (3*q2)/(t1*(sp + t1 + u1)) + 
         (2*sp)/(t1*(sp + t1 + u1)) + (4*m2)/(u1*(sp + t1 + u1)) + 
         (6*q2)/(u1*(sp + t1 + u1)) - (5*sp)/(u1*(sp + t1 + u1)) + 
         (8*m2^2)/(t1*u1*(sp + t1 + u1)) + (6*m2*q2)/(t1*u1*(sp + t1 + u1)) - 
         (2*q2^2)/(t1*u1*(sp + t1 + u1)) + (2*m2*sp)/(t1*u1*(sp + t1 + u1)) + 
         (3*q2*sp)/(t1*u1*(sp + t1 + u1)) - sp^2/(t1*u1*(sp + t1 + u1)) - 
         (5*t1)/(u1*(sp + t1 + u1)) + (3*u1)/(t1*(sp + t1 + u1)) - 
         (2*\[Epsilon])/t1 - (m2*\[Epsilon])/(t1*u1) - 
         (3*\[Epsilon])/(sp + t1 + u1) - (3*m2*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (3*q2*\[Epsilon])/(2*t1*(sp + t1 + u1)) - 
         (sp*\[Epsilon])/(2*t1*(sp + t1 + u1)) - (3*m2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (2*q2*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (6*sp*\[Epsilon])/(u1*(sp + t1 + u1)) - (m2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (2*q2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (2*sp^2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (4*t1*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (3*u1*\[Epsilon])/(2*t1*(sp + t1 + u1)) - \[Epsilon]^2/(2*t1) - 
         (3*\[Epsilon]^2)/(4*u1) - \[Epsilon]^2/(2*(sp + t1 + u1)) - 
         (m2*\[Epsilon]^2)/(t1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (2*t1*(sp + t1 + u1)) - (3*sp*\[Epsilon]^2)/(2*t1*(sp + t1 + u1)) - 
         (m2*\[Epsilon]^2)/(u1*(sp + t1 + u1)) + (3*q2*\[Epsilon]^2)/
          (2*u1*(sp + t1 + u1)) - (5*sp*\[Epsilon]^2)/(4*u1*(sp + t1 + u1)) - 
         (m2*sp*\[Epsilon]^2)/(2*t1*u1*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon]^2)/(t1*u1*(sp + t1 + u1)) - (sp^2*\[Epsilon]^2)/
          (t1*u1*(sp + t1 + u1)) - (3*t1*\[Epsilon]^2)/
          (4*u1*(sp + t1 + u1)) - (u1*\[Epsilon]^2)/(2*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon]^3)/(4*t1*(sp + t1 + u1)) + (sp*\[Epsilon]^3)/
          (8*t1*(sp + t1 + u1)) - (q2*\[Epsilon]^3)/(4*u1*(sp + t1 + u1)) - 
         (q2*sp*\[Epsilon]^3)/(8*t1*u1*(sp + t1 + u1)) + 
         (sp^2*\[Epsilon]^3)/(8*t1*u1*(sp + t1 + u1)), 
        (2*m2)/(t1^2*(sp + t1 + u1)) - 2/(t1*(sp + t1 + u1)) - 
         (2*m2)/(u1^2*(sp + t1 + u1)) - q2/(u1^2*(sp + t1 + u1)) - 
         1/(u1*(sp + t1 + u1)) + q2/(t1*u1*(sp + t1 + u1)) - 
         sp/(t1*u1*(sp + t1 + u1)) + (2*m2*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) - (2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (2*m2*\[Epsilon])/(u1^2*(sp + t1 + u1)) - (3*q2*\[Epsilon])/
          (2*u1^2*(sp + t1 + u1)) - \[Epsilon]/(u1*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(2*t1*u1*(sp + t1 + u1)) - (sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (m2*\[Epsilon]^2)/
          (2*t1^2*(sp + t1 + u1)) - \[Epsilon]^2/(2*t1*(sp + t1 + u1)) - 
         (m2*\[Epsilon]^2)/(2*u1^2*(sp + t1 + u1)) - (3*q2*\[Epsilon]^2)/
          (4*u1^2*(sp + t1 + u1)) - \[Epsilon]^2/(4*u1*(sp + t1 + u1)) - 
         (q2*\[Epsilon]^2)/(4*t1*u1*(sp + t1 + u1)) - (sp*\[Epsilon]^2)/
          (4*t1*u1*(sp + t1 + u1)) - (q2*\[Epsilon]^3)/
          (8*u1^2*(sp + t1 + u1)) - (q2*\[Epsilon]^3)/
          (8*t1*u1*(sp + t1 + u1))}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, -(1/(t1*(sp + t1 + u1))) - 
         2/(u1*(sp + t1 + u1)) + q2/(t1*u1*(sp + t1 + u1)) - 
         sp/(t1*u1*(sp + t1 + u1)) - \[Epsilon]/(t1*(sp + t1 + u1)) - 
         (2*\[Epsilon])/(u1*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (sp*\[Epsilon])/(t1*u1*(sp + t1 + u1)) - 
         \[Epsilon]^2/(4*t1*(sp + t1 + u1)) - \[Epsilon]^2/
          (2*u1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (4*t1*u1*(sp + t1 + u1)) - (sp*\[Epsilon]^2)/
          (4*t1*u1*(sp + t1 + u1)), 0}, {0, 0, 0}, {0, 0, 0}}}}
 
CoeffRQED[L] = {{{{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, 
       {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, 
       {0, 0, 0}, {0, 0, 0}}}, {{{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, 
       {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, 
       {0, 0, 0}, {0, 0, 0}}}, 
     {{{0, 0, 0}, {0, 0, (4*m2*q2*t1)/sp - (8*m2^2*q2)/u1 - 
         (8*m2^2*q2*t1)/(sp*u1) - (4*m2*q2^2*t1)/(sp*u1) - 
         (4*m2*q2^2*t1^2)/(sp^2*u1) + 2*m2*q2*\[Epsilon] + 
         (2*m2*q2*t1*\[Epsilon])/sp - (2*m2*q2^2*\[Epsilon])/u1 - 
         (4*m2*q2^2*t1*\[Epsilon])/(sp*u1) - (2*m2*q2^2*t1^2*\[Epsilon])/
          (sp^2*u1)}, {0, 0, (8*m2^2*q2*t1)/(sp*u1^2) + 
         (8*m2^2*q2*t1^2)/(sp^2*u1^2) + (2*m2*q2*\[Epsilon])/u1 + 
         (2*m2*q2*t1*\[Epsilon])/(sp*u1)}, {0, 0, 0}}, 
      {{0, 0, (8*m2^2*q2)/sp}, {0, 2*q2*t1 + (4*m2*q2*t1)/sp - 
         (2*q2^2*t1)/sp - (8*m2^2*q2)/u1 + (4*m2*q2^2)/u1 - (2*m2*q2*sp)/u1 - 
         (8*m2^2*q2*t1)/(sp*u1) + (2*q2^3*t1)/(sp*u1) - (2*q2*sp*t1)/u1 - 
         (4*m2*q2^2*t1^2)/(sp^2*u1) + (2*q2^3*t1^2)/(sp^2*u1) + 
         (2*m2*q2*t1^2)/(sp*u1) - (2*q2^2*t1^2)/(sp*u1) + 
         2*m2*q2*\[Epsilon] - q2^2*\[Epsilon] + q2*sp*\[Epsilon] + 
         q2*t1*\[Epsilon] + (2*m2*q2*t1*\[Epsilon])/sp - 
         (q2^2*t1*\[Epsilon])/sp - (2*m2*q2^2*\[Epsilon])/u1 + 
         (q2^3*\[Epsilon])/u1 + (m2*q2*sp*\[Epsilon])/u1 - 
         (q2^2*sp*\[Epsilon])/u1 + (2*m2*q2*t1*\[Epsilon])/u1 - 
         (2*q2^2*t1*\[Epsilon])/u1 - (4*m2*q2^2*t1*\[Epsilon])/(sp*u1) + 
         (2*q2^3*t1*\[Epsilon])/(sp*u1) - (2*m2*q2^2*t1^2*\[Epsilon])/
          (sp^2*u1) + (q2^3*t1^2*\[Epsilon])/(sp^2*u1) + 
         (m2*q2*t1^2*\[Epsilon])/(sp*u1) - (q2^2*t1^2*\[Epsilon])/(sp*u1), 
        (-4*m2*q2*t1)/sp^2 + (2*q2^2*t1)/sp^2 + (2*q2*t1)/sp - 
         (4*q2*t1^2)/sp^2 - (8*m2*q2)/u1 - (8*m2^2*q2)/(sp*u1) - 
         (4*m2*q2^2)/(sp*u1) - (2*q2*t1)/u1 - (16*m2^2*q2*t1)/(sp^2*u1) - 
         (12*m2*q2*t1)/(sp*u1) - (6*m2*q2*t1^2)/(sp^2*u1) - 
         (2*q2^2*t1^2)/(sp^2*u1) - (2*q2*t1^2)/(sp*u1) - 
         (2*q2*t1^3)/(sp^2*u1) - (2*q2*t1*u1)/sp^2 - 
         (6*m2*q2)/(sp + t1 + u1) - (8*m2^2*q2)/(sp*(sp + t1 + u1)) + 
         (2*q2^3)/(sp*(sp + t1 + u1)) - (8*m2^2*q2)/(t1*(sp + t1 + u1)) + 
         (4*m2*q2^2)/(t1*(sp + t1 + u1)) + (2*q2*t1)/(sp + t1 + u1) - 
         (4*m2*q2^2*t1)/(sp^2*(sp + t1 + u1)) + (2*q2^3*t1)/
          (sp^2*(sp + t1 + u1)) + (4*m2*q2*t1)/(sp*(sp + t1 + u1)) - 
         (6*q2^2*t1)/(sp*(sp + t1 + u1)) + (12*m2*q2*t1^2)/
          (sp^2*(sp + t1 + u1)) - (6*q2^2*t1^2)/(sp^2*(sp + t1 + u1)) + 
         (8*q2*t1^2)/(sp*(sp + t1 + u1)) + (6*q2*t1^3)/
          (sp^2*(sp + t1 + u1)) - (8*m2^2*q2)/(u1*(sp + t1 + u1)) - 
         (2*m2*q2*sp)/(u1*(sp + t1 + u1)) - (2*m2*q2*t1)/
          (u1*(sp + t1 + u1)) - (2*q2^2*t1)/(u1*(sp + t1 + u1)) - 
         (8*m2^2*q2*t1)/(sp*u1*(sp + t1 + u1)) - (4*m2*q2^2*t1)/
          (sp*u1*(sp + t1 + u1)) + (2*q2*t1^2)/(u1*(sp + t1 + u1)) - 
         (4*m2*q2^2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + (8*m2*q2*t1^2)/
          (sp*u1*(sp + t1 + u1)) - (4*q2^2*t1^2)/(sp*u1*(sp + t1 + u1)) + 
         (8*m2*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) - (2*q2^2*t1^3)/
          (sp^2*u1*(sp + t1 + u1)) + (4*q2*t1^3)/(sp*u1*(sp + t1 + u1)) + 
         (2*q2*t1^4)/(sp^2*u1*(sp + t1 + u1)) - (4*q2^2*u1)/
          (sp*(sp + t1 + u1)) - (4*m2*q2*u1)/(t1*(sp + t1 + u1)) + 
         (4*m2*q2*t1*u1)/(sp^2*(sp + t1 + u1)) - (4*q2^2*t1*u1)/
          (sp^2*(sp + t1 + u1)) + (6*q2*t1*u1)/(sp*(sp + t1 + u1)) + 
         (6*q2*t1^2*u1)/(sp^2*(sp + t1 + u1)) + (2*q2*u1^2)/
          (sp*(sp + t1 + u1)) + (2*q2*t1*u1^2)/(sp^2*(sp + t1 + u1)) + 
         2*q2*\[Epsilon] + (q2^2*\[Epsilon])/sp - (2*m2*q2*t1*\[Epsilon])/
          sp^2 + (q2^2*t1*\[Epsilon])/sp^2 + (q2*t1*\[Epsilon])/sp - 
         (q2*t1^2*\[Epsilon])/sp^2 - (2*q2^2*\[Epsilon])/u1 - 
         (4*m2*q2^2*\[Epsilon])/(sp*u1) - (4*m2*q2^2*t1*\[Epsilon])/
          (sp^2*u1) + (m2*q2*t1*\[Epsilon])/(sp*u1) - (4*q2^2*t1*\[Epsilon])/
          (sp*u1) + (m2*q2*t1^2*\[Epsilon])/(sp^2*u1) - 
         (2*q2^2*t1^2*\[Epsilon])/(sp^2*u1) - (q2*u1*\[Epsilon])/sp - 
         (q2*t1*u1*\[Epsilon])/sp^2 + (3*m2*q2*\[Epsilon])/(sp + t1 + u1) - 
         (2*q2^2*\[Epsilon])/(sp + t1 + u1) - (4*m2*q2^2*\[Epsilon])/
          (sp*(sp + t1 + u1)) + (2*q2^3*\[Epsilon])/(sp*(sp + t1 + u1)) - 
         (2*m2*q2^2*\[Epsilon])/(t1*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/(sp + t1 + u1) - 
         (2*m2*q2^2*t1*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (q2^3*t1*\[Epsilon])/(sp^2*(sp + t1 + u1)) + (5*m2*q2*t1*\[Epsilon])/
          (sp*(sp + t1 + u1)) - (4*q2^2*t1*\[Epsilon])/(sp*(sp + t1 + u1)) + 
         (2*m2*q2*t1^2*\[Epsilon])/(sp^2*(sp + t1 + u1)) - 
         (2*q2^2*t1^2*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (2*q2*t1^2*\[Epsilon])/(sp*(sp + t1 + u1)) + (q2*t1^3*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) - (2*m2*q2^2*\[Epsilon])/
          (u1*(sp + t1 + u1)) - (m2*q2*sp*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (2*m2*q2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (4*m2*q2^2*t1*\[Epsilon])/(sp*u1*(sp + t1 + u1)) - 
         (2*m2*q2^2*t1^2*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) - 
         (m2*q2*t1^2*\[Epsilon])/(sp*u1*(sp + t1 + u1)) + 
         (2*q2*u1*\[Epsilon])/(sp + t1 + u1) + (4*m2*q2*u1*\[Epsilon])/
          (sp*(sp + t1 + u1)) - (4*q2^2*u1*\[Epsilon])/(sp*(sp + t1 + u1)) + 
         (2*m2*q2*u1*\[Epsilon])/(t1*(sp + t1 + u1)) - (2*q2^2*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (2*m2*q2*t1*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) - (2*q2^2*t1*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (4*q2*t1*u1*\[Epsilon])/
          (sp*(sp + t1 + u1)) + (2*q2*t1^2*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (2*q2*u1^2*\[Epsilon])/
          (sp*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (q2*t1*u1^2*\[Epsilon])/(sp^2*(sp + t1 + u1))}, 
       {0, 4*q2 - (4*q2^2)/sp - (4*m2*q2)/t1 - (2*q2^2*t1)/sp^2 + 
         (2*q2*t1)/sp - (2*m2*q2)/u1 - (4*q2^2)/u1 - (8*m2^2*q2)/(sp*u1) + 
         (2*q2^3)/(sp*u1) + (2*q2*sp)/u1 - (8*m2^2*q2)/(t1*u1) + 
         (4*m2*q2^2)/(t1*u1) - (4*m2*q2*sp)/(t1*u1) + (6*q2*t1)/u1 - 
         (4*m2*q2^2*t1)/(sp^2*u1) + (2*q2^3*t1)/(sp^2*u1) - 
         (8*q2^2*t1)/(sp*u1) - (2*m2*q2*t1^2)/(sp^2*u1) - 
         (2*q2^2*t1^2)/(sp^2*u1) + (2*q2*t1^2)/(sp*u1) + (2*q2*u1)/sp + 
         3*q2*\[Epsilon] + (2*m2*q2*\[Epsilon])/sp - (3*q2^2*\[Epsilon])/sp + 
         (2*m2*q2*\[Epsilon])/t1 - (2*q2^2*\[Epsilon])/t1 + 
         (2*q2*sp*\[Epsilon])/t1 - (q2^2*t1*\[Epsilon])/sp^2 + 
         (q2*t1*\[Epsilon])/sp + (3*m2*q2*\[Epsilon])/u1 - 
         (5*q2^2*\[Epsilon])/u1 - (4*m2*q2^2*\[Epsilon])/(sp*u1) + 
         (2*q2^3*\[Epsilon])/(sp*u1) + (3*q2*sp*\[Epsilon])/u1 - 
         (2*m2*q2^2*\[Epsilon])/(t1*u1) + (q2^3*\[Epsilon])/(t1*u1) + 
         (2*m2*q2*sp*\[Epsilon])/(t1*u1) - (2*q2^2*sp*\[Epsilon])/(t1*u1) + 
         (q2*sp^2*\[Epsilon])/(t1*u1) + (3*q2*t1*\[Epsilon])/u1 - 
         (2*m2*q2^2*t1*\[Epsilon])/(sp^2*u1) + (q2^3*t1*\[Epsilon])/
          (sp^2*u1) - (4*q2^2*t1*\[Epsilon])/(sp*u1) - 
         (m2*q2*t1^2*\[Epsilon])/(sp^2*u1) - (q2^2*t1^2*\[Epsilon])/
          (sp^2*u1) + (q2*t1^2*\[Epsilon])/(sp*u1) + (q2*u1*\[Epsilon])/sp + 
         (q2*u1*\[Epsilon])/t1, (2*q2)/sp - (2*q2*t1)/sp^2 - (6*q2*t1)/u1^2 + 
         (4*m2*q2*t1)/(sp*u1^2) + (4*m2*q2*t1^2)/(sp^2*u1^2) - 
         (12*q2*t1^2)/(sp*u1^2) - (6*q2*t1^3)/(sp^2*u1^2) + (2*q2)/u1 - 
         (2*q2^2)/(sp*u1) - (4*m2*q2)/(t1*u1) - (2*q2^2*t1)/(sp^2*u1) - 
         (2*q2*t1)/(sp*u1) - (4*q2*t1^2)/(sp^2*u1) + 
         (4*m2*q2)/(sp*(sp + t1 + u1)) - (2*q2^2)/(sp*(sp + t1 + u1)) - 
         (4*m2*q2)/(t1*(sp + t1 + u1)) + (8*m2*q2*t1)/(sp^2*(sp + t1 + u1)) - 
         (2*q2^2*t1)/(sp^2*(sp + t1 + u1)) + (6*q2*t1)/(sp*(sp + t1 + u1)) + 
         (6*q2*t1^2)/(sp^2*(sp + t1 + u1)) + (4*m2*q2*t1)/
          (u1^2*(sp + t1 + u1)) + (16*m2^2*q2*t1)/(sp*u1^2*(sp + t1 + u1)) + 
         (4*q2*sp*t1)/(u1^2*(sp + t1 + u1)) + (12*q2*t1^2)/
          (u1^2*(sp + t1 + u1)) + (16*m2^2*q2*t1^2)/(sp^2*u1^2*
           (sp + t1 + u1)) + (8*m2*q2*t1^2)/(sp*u1^2*(sp + t1 + u1)) + 
         (4*m2*q2*t1^3)/(sp^2*u1^2*(sp + t1 + u1)) + (12*q2*t1^3)/
          (sp*u1^2*(sp + t1 + u1)) + (4*q2*t1^4)/(sp^2*u1^2*(sp + t1 + u1)) + 
         (16*m2^2*q2)/(sp*u1*(sp + t1 + u1)) - (8*m2*q2^2)/
          (sp*u1*(sp + t1 + u1)) + (8*q2*t1)/(u1*(sp + t1 + u1)) + 
         (16*m2^2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) - (8*m2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (12*m2*q2*t1)/(sp*u1*(sp + t1 + u1)) + 
         (12*m2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + (16*q2*t1^2)/
          (sp*u1*(sp + t1 + u1)) + (8*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) + 
         (2*q2*u1)/(sp*(sp + t1 + u1)) + (2*q2*t1*u1)/(sp^2*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/sp + (2*q2*\[Epsilon])/t1 - (q2*t1*\[Epsilon])/
          sp^2 - (3*q2*t1*\[Epsilon])/u1^2 - (2*m2*q2*t1*\[Epsilon])/
          (sp*u1^2) - (2*m2*q2*t1^2*\[Epsilon])/(sp^2*u1^2) - 
         (6*q2*t1^2*\[Epsilon])/(sp*u1^2) - (3*q2*t1^3*\[Epsilon])/
          (sp^2*u1^2) + (4*q2*\[Epsilon])/u1 + (4*m2*q2*\[Epsilon])/(sp*u1) - 
         (3*q2^2*\[Epsilon])/(sp*u1) + (2*m2*q2*\[Epsilon])/(t1*u1) - 
         (2*q2^2*\[Epsilon])/(t1*u1) + (q2*sp*\[Epsilon])/(t1*u1) - 
         (q2^2*t1*\[Epsilon])/(sp^2*u1) + (3*q2*t1*\[Epsilon])/(sp*u1) + 
         (2*q2*\[Epsilon])/(sp + t1 + u1) + (2*m2*q2*\[Epsilon])/
          (sp*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/(sp*(sp + t1 + u1)) + 
         (2*m2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - (2*q2^2*\[Epsilon])/
          (t1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (3*q2*t1*\[Epsilon])/(sp*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (2*m2*q2*t1*\[Epsilon])/
          (u1^2*(sp + t1 + u1)) + (q2*sp*t1*\[Epsilon])/
          (u1^2*(sp + t1 + u1)) + (3*q2*t1^2*\[Epsilon])/
          (u1^2*(sp + t1 + u1)) + (4*m2*q2*t1^2*\[Epsilon])/
          (sp*u1^2*(sp + t1 + u1)) + (2*m2*q2*t1^3*\[Epsilon])/
          (sp^2*u1^2*(sp + t1 + u1)) + (3*q2*t1^3*\[Epsilon])/
          (sp*u1^2*(sp + t1 + u1)) + (q2*t1^4*\[Epsilon])/
          (sp^2*u1^2*(sp + t1 + u1)) + (2*m2*q2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (4*m2*q2*t1*\[Epsilon])/(sp*u1*(sp + t1 + u1)) + 
         (2*m2*q2*t1^2*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + 
         (2*q2*t1^2*\[Epsilon])/(sp*u1*(sp + t1 + u1)) + 
         (q2*t1^3*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + 
         (3*q2*u1*\[Epsilon])/(sp*(sp + t1 + u1)) + (2*q2*u1*\[Epsilon])/
          (t1*(sp + t1 + u1)) + (q2*t1*u1*\[Epsilon])/(sp^2*(sp + t1 + u1)) - 
         (q2*sp*t1*\[Epsilon]^2)/(2*u1^2*(sp + t1 + u1)) - 
         (3*q2*t1^2*\[Epsilon]^2)/(2*u1^2*(sp + t1 + u1)) - 
         (3*q2*t1^3*\[Epsilon]^2)/(2*sp*u1^2*(sp + t1 + u1)) - 
         (q2*t1^4*\[Epsilon]^2)/(2*sp^2*u1^2*(sp + t1 + u1)) - 
         (q2*t1*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (sp*u1*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon]^2)/
          (2*sp^2*u1*(sp + t1 + u1))}, 
       {0, 0, (8*m2*q2)/(sp*u1*(sp + t1 + u1)) + (8*m2*q2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(sp*u1) + 
         (q2*\[Epsilon])/(t1*u1) + (q2*\[Epsilon])/(sp*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(t1*(sp + t1 + u1))}}, 
      {{0, (8*m2^2*q2)/sp, (8*m2*q2^2)/sp^2 + (8*m2*q2)/sp}, 
       {(-8*m2^2*q2)/sp, (-8*m2*q2^2)/sp^2 + (6*m2*q2)/sp - (2*q2^2)/sp - 
         (2*m2*q2)/t1 + (16*m2^2*q2)/(sp*t1) + (6*q2*t1)/sp + (2*m2*q2)/u1 - 
         (8*m2^2*q2)/(sp*u1) + (4*m2*q2^2)/(sp*u1) - (2*q2*t1)/u1 - 
         (16*m2^2*q2*t1)/(sp^2*u1) + (8*m2*q2^2*t1)/(sp^2*u1) + 
         (6*m2*q2*t1)/(sp*u1) - (2*q2^2*t1)/(sp*u1) + (2*m2*q2*t1^2)/
          (sp^2*u1) - (4*q2^2*t1^2)/(sp^2*u1) + (2*q2*u1)/sp - 
         (8*m2*q2)/(sp + t1 + u1) + (2*q2^2)/(sp + t1 + u1) + 
         (8*m2^2*q2)/(sp*(sp + t1 + u1)) - (4*m2*q2^2)/(sp*(sp + t1 + u1)) + 
         (2*m2*q2*sp)/(t1*(sp + t1 + u1)) - (4*q2*t1)/(sp + t1 + u1) - 
         (4*m2*q2^2*t1)/(sp^2*(sp + t1 + u1)) - (8*m2*q2*t1)/
          (sp*(sp + t1 + u1)) - (2*q2^2*t1^2)/(sp^2*(sp + t1 + u1)) - 
         (4*q2*t1^2)/(sp*(sp + t1 + u1)) - (4*m2*q2*sp)/(u1*(sp + t1 + u1)) - 
         (14*m2*q2*t1)/(u1*(sp + t1 + u1)) + (2*q2^2*t1)/
          (u1*(sp + t1 + u1)) + (8*m2^2*q2*t1)/(sp*u1*(sp + t1 + u1)) - 
         (8*m2*q2^2*t1)/(sp*u1*(sp + t1 + u1)) + (2*q2^3*t1)/
          (sp*u1*(sp + t1 + u1)) - (2*q2*t1^2)/(u1*(sp + t1 + u1)) - 
         (4*m2*q2^2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + (2*q2^3*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (6*m2*q2*t1^2)/(sp*u1*(sp + t1 + u1)) - 
         (2*q2^2*t1^3)/(sp^2*u1*(sp + t1 + u1)) - (2*q2*t1^3)/
          (sp*u1*(sp + t1 + u1)) - (2*q2*u1)/(sp + t1 + u1) - 
         (2*m2*q2*u1)/(sp*(sp + t1 + u1)) + (2*q2^2*u1)/(sp*(sp + t1 + u1)) + 
         (2*m2*q2*u1)/(t1*(sp + t1 + u1)) - (4*q2*t1*u1)/
          (sp*(sp + t1 + u1)) - (2*q2*u1^2)/(sp*(sp + t1 + u1)) + 
         q2*\[Epsilon] + (3*m2*q2*\[Epsilon])/sp - (q2^2*\[Epsilon])/sp + 
         (q2*t1*\[Epsilon])/sp + (m2*q2*\[Epsilon])/u1 - 
         (q2^2*\[Epsilon])/u1 - (2*m2*q2^2*\[Epsilon])/(sp*u1) + 
         (q2^3*\[Epsilon])/(sp*u1) - (q2*t1*\[Epsilon])/u1 - 
         (4*m2*q2^2*t1*\[Epsilon])/(sp^2*u1) + (2*q2^3*t1*\[Epsilon])/
          (sp^2*u1) + (2*m2*q2*t1*\[Epsilon])/(sp*u1) - 
         (2*q2^2*t1*\[Epsilon])/(sp*u1) + (m2*q2*t1^2*\[Epsilon])/(sp^2*u1) - 
         (q2^2*t1^2*\[Epsilon])/(sp^2*u1) + (m2*q2*\[Epsilon])/
          (sp + t1 + u1) + (2*q2*t1*\[Epsilon])/(sp + t1 + u1) - 
         (2*m2*q2^2*t1*\[Epsilon])/(sp^2*(sp + t1 + u1)) - 
         (m2*q2*t1*\[Epsilon])/(sp*(sp + t1 + u1)) - (2*q2^2*t1^2*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (q2*sp*t1*\[Epsilon])/(u1*(sp + t1 + u1)) + 
         (q2*t1^2*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (2*m2*q2^2*t1^2*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + 
         (q2^3*t1^2*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) - 
         (2*m2*q2*t1^2*\[Epsilon])/(sp*u1*(sp + t1 + u1)) - 
         (2*q2^2*t1^3*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) - 
         (q2*t1^3*\[Epsilon])/(sp*u1*(sp + t1 + u1)) + (m2*q2*u1*\[Epsilon])/
          (sp*(sp + t1 + u1)) + (q2*t1*u1*\[Epsilon])/(sp*(sp + t1 + u1)) + 
         (q2*t1*\[Epsilon]^2)/(2*sp) + (q2*t1*\[Epsilon]^2)/(2*u1) - 
         (q2^2*t1^2*\[Epsilon]^2)/(2*sp^2*u1) - (q2*t1*\[Epsilon]^2)/
          (sp + t1 + u1) + (q2^2*t1^2*\[Epsilon]^2)/(2*sp^2*(sp + t1 + u1)) - 
         (q2*t1^2*\[Epsilon]^2)/(2*sp*(sp + t1 + u1)) - 
         (q2*sp*t1*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) - 
         (q2*t1^2*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) + 
         (q2^2*t1^2*\[Epsilon]^2)/(2*sp*u1*(sp + t1 + u1)) + 
         (q2^2*t1^3*\[Epsilon]^2)/(2*sp^2*u1*(sp + t1 + u1)) - 
         (q2*t1*u1*\[Epsilon]^2)/(2*sp*(sp + t1 + u1)), 
        (-4*m2*q2)/sp^2 - (2*q2^2)/sp^2 - (2*q2)/sp + (8*m2*q2^2)/(sp^2*t1) - 
         (6*m2*q2)/(sp*t1) + (2*q2^2)/(sp*t1) - (2*q2^3)/(sp^2*u1) - 
         (2*m2*q2)/(sp*u1) - (2*q2^2)/(sp*u1) - (4*m2*q2*t1)/(sp^2*u1) + 
         (2*q2^2*t1)/(sp^2*u1) - (2*q2*t1^2)/(sp^2*u1) + (2*q2*u1)/sp^2 - 
         (8*m2*q2*u1)/(sp^2*t1) - (2*q2*u1)/(sp*t1) + 
         (8*m2*q2^2)/(sp^2*(sp + t1 + u1)) - (4*m2*q2)/(sp*(sp + t1 + u1)) - 
         (2*q2^2)/(sp*(sp + t1 + u1)) + (2*m2*q2)/(t1*(sp + t1 + u1)) + 
         (2*q2^3)/(sp*t1*(sp + t1 + u1)) - (16*m2*q2*t1)/
          (sp^2*(sp + t1 + u1)) + (2*q2*t1)/(sp*(sp + t1 + u1)) + 
         (2*q2*t1^2)/(sp^2*(sp + t1 + u1)) - (10*m2*q2)/(u1*(sp + t1 + u1)) - 
         (8*m2*q2^2)/(sp*u1*(sp + t1 + u1)) - (8*m2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) - (14*m2*q2*t1)/(sp*u1*(sp + t1 + u1)) - 
         (2*q2^2*t1)/(sp*u1*(sp + t1 + u1)) - (4*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) - (2*q2^2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + 
         (2*q2*t1^2)/(sp*u1*(sp + t1 + u1)) + (2*q2*t1^3)/
          (sp^2*u1*(sp + t1 + u1)) - (12*m2*q2*u1)/(sp^2*(sp + t1 + u1)) + 
         (2*q2^2*u1)/(sp^2*(sp + t1 + u1)) + (2*q2*u1)/(sp*(sp + t1 + u1)) + 
         (2*m2*q2*u1)/(sp*t1*(sp + t1 + u1)) - (4*q2^2*u1)/
          (sp*t1*(sp + t1 + u1)) - (2*q2*t1*u1)/(sp^2*(sp + t1 + u1)) - 
         (2*q2*u1^2)/(sp^2*(sp + t1 + u1)) + (2*q2*u1^2)/
          (sp*t1*(sp + t1 + u1)) - (4*m2*q2*\[Epsilon])/sp^2 + 
         (2*q2^2*\[Epsilon])/sp^2 + (2*q2*\[Epsilon])/sp - 
         (3*m2*q2*\[Epsilon])/(sp*t1) + (q2^2*\[Epsilon])/(sp*t1) - 
         (q2^3*\[Epsilon])/(sp^2*u1) + (3*m2*q2*\[Epsilon])/(sp*u1) - 
         (4*q2^2*\[Epsilon])/(sp*u1) + (4*m2*q2*t1*\[Epsilon])/(sp^2*u1) - 
         (4*q2^2*t1*\[Epsilon])/(sp^2*u1) + (q2*t1*\[Epsilon])/(sp*u1) + 
         (2*q2*t1^2*\[Epsilon])/(sp^2*u1) - (2*q2*u1*\[Epsilon])/sp^2 - 
         (q2*u1*\[Epsilon])/(sp*t1) - (2*q2*\[Epsilon])/(sp + t1 + u1) + 
         (2*q2^3*\[Epsilon])/(sp^2*(sp + t1 + u1)) + (4*m2*q2*\[Epsilon])/
          (sp*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (2*m2*q2^2*\[Epsilon])/(sp*t1*(sp + t1 + u1)) + 
         (2*q2^3*\[Epsilon])/(sp*t1*(sp + t1 + u1)) + (2*q2^2*t1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) - (2*q2*t1*\[Epsilon])/(sp*(sp + t1 + u1)) - 
         (2*q2*t1^2*\[Epsilon])/(sp^2*(sp + t1 + u1)) - (5*m2*q2*\[Epsilon])/
          (u1*(sp + t1 + u1)) + (2*q2^2*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (2*m2*q2^2*\[Epsilon])/(sp*u1*(sp + t1 + u1)) - 
         (q2^3*\[Epsilon])/(sp*u1*(sp + t1 + u1)) - (2*q2^3*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) - (7*m2*q2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (6*q2^2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) - (4*m2*q2*t1^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (6*q2^2*t1^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) - (2*q2*t1^3*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (4*m2*q2*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) - (4*q2^2*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/(sp*(sp + t1 + u1)) + 
         (3*m2*q2*u1*\[Epsilon])/(sp*t1*(sp + t1 + u1)) - 
         (4*q2^2*u1*\[Epsilon])/(sp*t1*(sp + t1 + u1)) + 
         (2*q2*t1*u1*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (2*q2*u1^2*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (2*q2*u1^2*\[Epsilon])/(sp*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon]^2)/(2*sp) + (q2^2*\[Epsilon]^2)/(2*sp*u1) + 
         (q2^2*t1*\[Epsilon]^2)/(sp^2*u1) + (q2*t1*\[Epsilon]^2)/(2*sp*u1) + 
         (q2*\[Epsilon]^2)/(2*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/
          (2*sp*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon]^2)/
          (sp^2*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) - 
         (q2*t1*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) - 
         (3*q2^2*t1*\[Epsilon]^2)/(2*sp*u1*(sp + t1 + u1)) - 
         (q2^2*t1^2*\[Epsilon]^2)/(sp^2*u1*(sp + t1 + u1)) - 
         (q2*t1^2*\[Epsilon]^2)/(2*sp*u1*(sp + t1 + u1)) + 
         (q2*u1*\[Epsilon]^2)/(2*sp*(sp + t1 + u1))}, 
       {(8*m2^2*q2)/sp^2, (-4*m2*q2)/sp^2 + (2*q2^2)/sp^2 + (6*q2)/sp + 
         (2*q2)/t1 - (8*m2*q2^2)/(sp^2*t1) + (10*m2*q2)/(sp*t1) - 
         (2*q2^2)/(sp*t1) - (4*q2*t1)/sp^2 + (6*q2)/u1 - 
         (16*m2^2*q2)/(sp^2*u1) + (4*m2*q2^2)/(sp^2*u1) + 
         (2*q2^3)/(sp^2*u1) - (12*m2*q2)/(sp*u1) - (10*q2^2)/(sp*u1) - 
         (4*q2^2)/(t1*u1) - (8*m2^2*q2)/(sp*t1*u1) + (2*q2^3)/(sp*t1*u1) + 
         (2*q2*sp)/(t1*u1) - (16*m2*q2*t1)/(sp^2*u1) - 
         (6*q2^2*t1)/(sp^2*u1) + (4*q2*t1)/(sp*u1) - (2*q2*u1)/sp^2 + 
         (8*m2*q2*u1)/(sp^2*t1) - (4*q2)/(sp + t1 + u1) - 
         (16*m2^2*q2)/(sp^2*(sp + t1 + u1)) - (4*m2*q2^2)/
          (sp^2*(sp + t1 + u1)) - (14*m2*q2)/(sp*(sp + t1 + u1)) - 
         (2*q2^2)/(sp*(sp + t1 + u1)) - (8*m2^2*q2)/(t1^2*(sp + t1 + u1)) - 
         (14*m2*q2)/(t1*(sp + t1 + u1)) - (16*m2^2*q2)/
          (sp*t1*(sp + t1 + u1)) - (4*m2*q2^2)/(sp*t1*(sp + t1 + u1)) + 
         (4*m2*q2*t1)/(sp^2*(sp + t1 + u1)) - (2*q2^2*t1)/
          (sp^2*(sp + t1 + u1)) + (4*q2*t1)/(sp*(sp + t1 + u1)) + 
         (8*q2*t1^2)/(sp^2*(sp + t1 + u1)) - (12*m2*q2)/(u1*(sp + t1 + u1)) + 
         (2*q2^2)/(u1*(sp + t1 + u1)) - (16*m2^2*q2)/(sp*u1*(sp + t1 + u1)) + 
         (4*m2*q2^2)/(sp*u1*(sp + t1 + u1)) + (2*q2^3)/
          (sp*u1*(sp + t1 + u1)) - (2*q2*sp)/(u1*(sp + t1 + u1)) - 
         (8*m2^2*q2)/(t1*u1*(sp + t1 + u1)) + (4*m2*q2^2)/
          (t1*u1*(sp + t1 + u1)) - (4*m2*q2*sp)/(t1*u1*(sp + t1 + u1)) - 
         (2*q2*t1)/(u1*(sp + t1 + u1)) - (16*m2^2*q2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (4*m2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (2*q2^3*t1)/(sp^2*u1*(sp + t1 + u1)) - 
         (4*m2*q2*t1)/(sp*u1*(sp + t1 + u1)) - (2*q2^2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)) + (4*q2*t1^2)/(sp*u1*(sp + t1 + u1)) + 
         (4*q2*t1^3)/(sp^2*u1*(sp + t1 + u1)) + (4*m2*q2*u1)/
          (sp^2*(sp + t1 + u1)) - (2*q2^2*u1)/(sp^2*(sp + t1 + u1)) - 
         (2*m2*q2*u1)/(sp*t1*(sp + t1 + u1)) + (6*q2*t1*u1)/
          (sp^2*(sp + t1 + u1)) + (2*q2*u1^2)/(sp^2*(sp + t1 + u1)) - 
         (2*q2^2*\[Epsilon])/sp^2 + (q2*\[Epsilon])/sp + 
         (3*q2*\[Epsilon])/t1 + (3*m2*q2*\[Epsilon])/(sp*t1) - 
         (3*q2^2*\[Epsilon])/(sp*t1) - (2*q2*t1*\[Epsilon])/sp^2 + 
         (2*q2*\[Epsilon])/u1 - (6*m2*q2^2*\[Epsilon])/(sp^2*u1) + 
         (3*q2^3*\[Epsilon])/(sp^2*u1) - (m2*q2*\[Epsilon])/(sp*u1) - 
         (7*q2^2*\[Epsilon])/(sp*u1) + (3*m2*q2*\[Epsilon])/(t1*u1) - 
         (4*q2^2*\[Epsilon])/(t1*u1) - (4*m2*q2^2*\[Epsilon])/(sp*t1*u1) + 
         (2*q2^3*\[Epsilon])/(sp*t1*u1) + (2*q2*sp*\[Epsilon])/(t1*u1) - 
         (4*m2*q2*t1*\[Epsilon])/(sp^2*u1) - (3*q2^2*t1*\[Epsilon])/
          (sp^2*u1) + (3*q2*t1*\[Epsilon])/(sp*u1) + (2*q2*t1^2*\[Epsilon])/
          (sp^2*u1) + (q2*u1*\[Epsilon])/(sp*t1) + (12*q2*\[Epsilon])/
          (sp + t1 + u1) - (6*m2*q2^2*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (4*m2*q2*\[Epsilon])/(sp*(sp + t1 + u1)) - (9*q2^2*\[Epsilon])/
          (sp*(sp + t1 + u1)) - (2*m2*q2^2*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (2*m2*q2*sp*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (4*m2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (3*q2^2*\[Epsilon])/(t1*(sp + t1 + u1)) - (6*m2*q2^2*\[Epsilon])/
          (sp*t1*(sp + t1 + u1)) + (3*q2*sp*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (4*m2*q2*t1*\[Epsilon])/(sp^2*(sp + t1 + u1)) - 
         (8*q2^2*t1*\[Epsilon])/(sp^2*(sp + t1 + u1)) + (11*q2*t1*\[Epsilon])/
          (sp*(sp + t1 + u1)) + (4*q2*t1^2*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (4*m2*q2*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (9*q2^2*\[Epsilon])/(u1*(sp + t1 + u1)) - (6*m2*q2^2*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (3*q2^3*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (6*q2*sp*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (2*m2*q2^2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) + 
         (q2^3*\[Epsilon])/(t1*u1*(sp + t1 + u1)) + (m2*q2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (2*q2^2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (q2*sp^2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) + (9*q2*t1*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (6*m2*q2^2*t1*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + 
         (3*q2^3*t1*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + 
         (5*m2*q2*t1*\[Epsilon])/(sp*u1*(sp + t1 + u1)) - 
         (14*q2^2*t1*\[Epsilon])/(sp*u1*(sp + t1 + u1)) + 
         (4*m2*q2*t1^2*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) - 
         (9*q2^2*t1^2*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + 
         (5*q2*t1^2*\[Epsilon])/(sp*u1*(sp + t1 + u1)) + 
         (2*q2*t1^3*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + 
         (5*q2*u1*\[Epsilon])/(sp*(sp + t1 + u1)) + (2*m2*q2*u1*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (2*q2*u1*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (3*m2*q2*u1*\[Epsilon])/(sp*t1*(sp + t1 + u1)) + 
         (2*q2*t1*u1*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (q2*\[Epsilon]^2)/(2*sp) + (q2*\[Epsilon]^2)/u1 - 
         (q2^2*\[Epsilon]^2)/(2*sp*u1) - (q2^2*t1*\[Epsilon]^2)/(sp^2*u1) + 
         (3*q2*t1*\[Epsilon]^2)/(2*sp*u1) + (q2*t1^2*\[Epsilon]^2)/
          (sp^2*u1) - (q2*\[Epsilon]^2)/(2*(sp + t1 + u1)) + 
         (q2^2*\[Epsilon]^2)/(2*sp*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon]^2)/
          (sp^2*(sp + t1 + u1)) + (q2^2*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) + 
         (q2*t1*\[Epsilon]^2)/(2*u1*(sp + t1 + u1)) + 
         (3*q2^2*t1*\[Epsilon]^2)/(2*sp*u1*(sp + t1 + u1)) + 
         (q2^2*t1^2*\[Epsilon]^2)/(sp^2*u1*(sp + t1 + u1)) + 
         (q2*t1^2*\[Epsilon]^2)/(2*sp*u1*(sp + t1 + u1)) - 
         (q2*u1*\[Epsilon]^2)/(2*sp*(sp + t1 + u1)), 
        (2*q2)/sp^2 - (4*q2*t1)/(sp*u1^2) - (4*q2*t1^2)/(sp^2*u1^2) - 
         (4*m2*q2)/(sp^2*u1) - (2*q2^2)/(sp^2*u1) + (6*q2)/(sp*u1) + 
         (2*q2)/(t1*u1) - (4*q2^2)/(sp*t1*u1) - (2*q2*t1)/(sp^2*u1) + 
         (8*m2^2*q2)/(sp^2*(sp + t1 + u1)^2) + (8*m2*q2)/
          (sp*(sp + t1 + u1)^2) + (8*m2^2*q2)/(sp*t1*(sp + t1 + u1)^2) - 
         (4*m2*q2*t1)/(u1^2*(sp + t1 + u1)^2) + (8*m2^2*q2*t1)/
          (sp*u1^2*(sp + t1 + u1)^2) + (8*m2^2*q2*t1^2)/
          (sp^2*u1^2*(sp + t1 + u1)^2) - (8*m2*q2*t1^2)/
          (sp*u1^2*(sp + t1 + u1)^2) - (4*m2*q2*t1^3)/
          (sp^2*u1^2*(sp + t1 + u1)^2) + (16*m2^2*q2)/
          (sp*u1*(sp + t1 + u1)^2) - (8*m2*q2^2)/(sp*u1*(sp + t1 + u1)^2) + 
         (16*m2^2*q2*t1)/(sp^2*u1*(sp + t1 + u1)^2) - (8*m2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)^2) - (4*m2*q2*t1)/
          (sp*u1*(sp + t1 + u1)^2) - (4*m2*q2*t1^2)/
          (sp^2*u1*(sp + t1 + u1)^2) - (12*m2*q2)/(sp^2*(sp + t1 + u1)) + 
         (2*q2^2)/(sp^2*(sp + t1 + u1)) - (4*q2^2)/(sp*t1*(sp + t1 + u1)) + 
         (4*q2*t1)/(u1^2*(sp + t1 + u1)) + (12*m2*q2*t1)/
          (sp*u1^2*(sp + t1 + u1)) + (12*m2*q2*t1^2)/(sp^2*u1^2*
           (sp + t1 + u1)) + (8*q2*t1^2)/(sp*u1^2*(sp + t1 + u1)) + 
         (4*q2*t1^3)/(sp^2*u1^2*(sp + t1 + u1)) - 
         (2*q2)/(u1*(sp + t1 + u1)) + (2*q2^2)/(sp*u1*(sp + t1 + u1)) + 
         (4*m2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) + (2*q2^2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (4*q2*t1)/(sp*u1*(sp + t1 + u1)) + 
         (6*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) - (2*q2*u1)/
          (sp^2*(sp + t1 + u1)) + (4*q2*u1)/(sp*t1*(sp + t1 + u1)) - 
         (q2*\[Epsilon])/sp^2 + (q2*\[Epsilon])/(sp*t1) - 
         (2*q2*t1*\[Epsilon])/(sp*u1^2) - (2*q2*t1^2*\[Epsilon])/
          (sp^2*u1^2) + (2*m2*q2*\[Epsilon])/(sp^2*u1) - 
         (3*q2^2*\[Epsilon])/(sp^2*u1) + (3*q2*\[Epsilon])/(sp*u1) + 
         (q2*\[Epsilon])/(t1*u1) + (2*m2*q2*\[Epsilon])/(sp*t1*u1) - 
         (3*q2^2*\[Epsilon])/(sp*t1*u1) - (2*m2*q2*t1*\[Epsilon])/
          (u1^2*(sp + t1 + u1)^2) - (4*m2*q2*t1^2*\[Epsilon])/
          (sp*u1^2*(sp + t1 + u1)^2) - (2*m2*q2*t1^3*\[Epsilon])/
          (sp^2*u1^2*(sp + t1 + u1)^2) - (2*m2*q2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)^2) - (2*m2*q2*t1^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)^2) - (2*m2*q2*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) - (q2^2*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (4*q2*\[Epsilon])/(sp*(sp + t1 + u1)) + (2*m2*q2*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) + (2*q2*\[Epsilon])/(t1*(sp + t1 + u1)) + 
         (4*m2*q2*\[Epsilon])/(sp*t1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (sp*t1*(sp + t1 + u1)) + (q2*t1*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (2*m2*q2*t1*\[Epsilon])/(sp*u1^2*(sp + t1 + u1)) + 
         (2*m2*q2*t1^2*\[Epsilon])/(sp^2*u1^2*(sp + t1 + u1)) + 
         (3*q2*\[Epsilon])/(u1*(sp + t1 + u1)) + (2*m2*q2*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (2*m2*q2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (q2^2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) + 
         (q2*sp*\[Epsilon])/(t1*u1*(sp + t1 + u1)) - (2*m2*q2*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (2*q2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (3*q2*u1*\[Epsilon])/(sp*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (u1^2*(sp + t1 + u1)) - (2*q2*t1^2*\[Epsilon]^2)/
          (sp*u1^2*(sp + t1 + u1)) - (q2*t1^3*\[Epsilon]^2)/
          (sp^2*u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (sp*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (sp^2*u1*(sp + t1 + u1))}, {0, 0, (2*q2)/(sp^2*u1) + 
         (2*q2)/(sp*t1*u1) - (2*q2)/(sp^2*(sp + t1 + u1)) + 
         (2*q2)/(sp*t1*(sp + t1 + u1)) - (2*q2)/(sp*u1*(sp + t1 + u1)) - 
         (2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(sp^2*u1) + 
         (q2*\[Epsilon])/(sp*t1*u1) - (q2*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (q2*\[Epsilon])/(sp*t1*(sp + t1 + u1)) - (q2*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1))}}, {{0, 0, 0}, 
       {0, 0, (4*m2*q2)/(sp^2*t1) + (2*q2^2)/(sp^2*t1) - (2*q2^2)/(sp^2*u1) + 
         (2*q2*t1)/(sp^2*u1) - (2*q2*u1)/(sp^2*t1) - 
         (4*m2*q2)/(sp^2*(sp + t1 + u1)) + (2*q2^3)/
          (sp^2*t1*(sp + t1 + u1)) - (4*m2*q2)/(sp*t1*(sp + t1 + u1)) - 
         (2*q2*t1)/(sp^2*(sp + t1 + u1)) - (2*q2^3)/
          (sp^2*u1*(sp + t1 + u1)) + (4*q2^2*t1)/(sp^2*u1*(sp + t1 + u1)) - 
         (2*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + (2*q2*u1)/
          (sp^2*(sp + t1 + u1)) - (4*m2*q2*u1)/(sp^2*t1*(sp + t1 + u1)) - 
         (4*q2^2*u1)/(sp^2*t1*(sp + t1 + u1)) + (2*q2*u1^2)/
          (sp^2*t1*(sp + t1 + u1)) - (2*m2*q2*\[Epsilon])/(sp^2*t1) + 
         (q2^2*\[Epsilon])/(sp^2*t1) - (q2^2*\[Epsilon])/(sp^2*u1) + 
         (q2*t1*\[Epsilon])/(sp^2*u1) - (q2*u1*\[Epsilon])/(sp^2*t1) + 
         (2*m2*q2*\[Epsilon])/(sp^2*(sp + t1 + u1)) + (q2^3*\[Epsilon])/
          (sp^2*t1*(sp + t1 + u1)) + (2*m2*q2*\[Epsilon])/
          (sp*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon])/(sp^2*(sp + t1 + u1)) - 
         (q2^3*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + (2*q2^2*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (2*m2*q2*u1*\[Epsilon])/
          (sp^2*t1*(sp + t1 + u1)) - (2*q2^2*u1*\[Epsilon])/
          (sp^2*t1*(sp + t1 + u1)) + (q2*u1^2*\[Epsilon])/
          (sp^2*t1*(sp + t1 + u1)) - (q2*\[Epsilon]^2)/(2*sp^2) + 
         (q2^2*\[Epsilon]^2)/(2*sp^2*u1) - (q2*t1*\[Epsilon]^2)/(2*sp^2*u1) - 
         (q2^2*\[Epsilon]^2)/(2*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (2*sp*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (sp^2*(sp + t1 + u1)) - (q2^2*\[Epsilon]^2)/
          (2*sp*u1*(sp + t1 + u1)) - (q2^2*t1*\[Epsilon]^2)/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (2*sp*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (2*sp^2*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon]^2)/
          (2*sp^2*(sp + t1 + u1))}, {(8*m2*q2)/sp^2 + (8*m2^2*q2)/(sp*t1^2) - 
         (2*q2)/t1 + (16*m2^2*q2)/(sp^2*t1) + (8*m2*q2)/(sp*t1) - 
         (2*q2*t1)/sp^2 - (2*q2*\[Epsilon])/sp - (2*q2*\[Epsilon])/t1 - 
         (2*q2*t1*\[Epsilon])/sp^2 - (q2*\[Epsilon]^2)/sp - 
         (q2*\[Epsilon]^2)/(2*t1) - (q2*t1*\[Epsilon]^2)/(2*sp^2), 
        (-8*q2)/sp^2 - (4*m2*q2)/(sp*t1^2) - (2*q2^2)/(sp^2*t1) - 
         (2*q2)/(sp*t1) - (2*q2^2)/(sp^2*u1) + (2*q2)/(t1*u1) - 
         (4*m2*q2^2)/(sp^2*t1*u1) + (2*q2^3)/(sp^2*t1*u1) + 
         (6*m2*q2)/(sp*t1*u1) - (4*q2^2)/(sp*t1*u1) - (6*q2*t1)/(sp^2*u1) - 
         (16*m2*q2)/(sp^2*(sp + t1 + u1)) - (6*q2^2)/(sp^2*(sp + t1 + u1)) + 
         (16*q2)/(sp*(sp + t1 + u1)) + (4*m2*q2)/(t1^2*(sp + t1 + u1)) - 
         (8*m2^2*q2)/(sp*t1^2*(sp + t1 + u1)) - (4*m2*q2^2)/
          (sp*t1^2*(sp + t1 + u1)) + (6*q2)/(t1*(sp + t1 + u1)) - 
         (16*m2^2*q2)/(sp^2*t1*(sp + t1 + u1)) - (4*m2*q2^2)/
          (sp^2*t1*(sp + t1 + u1)) - (6*m2*q2)/(sp*t1*(sp + t1 + u1)) - 
         (6*q2^2)/(sp*t1*(sp + t1 + u1)) + (14*q2*t1)/(sp^2*(sp + t1 + u1)) + 
         (6*q2)/(u1*(sp + t1 + u1)) - (16*m2^2*q2)/(sp^2*u1*(sp + t1 + u1)) + 
         (4*m2*q2^2)/(sp^2*u1*(sp + t1 + u1)) + 
         (2*q2^3)/(sp^2*u1*(sp + t1 + u1)) - (22*m2*q2)/
          (sp*u1*(sp + t1 + u1)) - (10*q2^2)/(sp*u1*(sp + t1 + u1)) - 
         (6*m2*q2)/(t1*u1*(sp + t1 + u1)) - (4*q2^2)/(t1*u1*(sp + t1 + u1)) - 
         (8*m2^2*q2)/(sp*t1*u1*(sp + t1 + u1)) + 
         (2*q2^3)/(sp*t1*u1*(sp + t1 + u1)) + (2*q2*sp)/
          (t1*u1*(sp + t1 + u1)) - (16*m2*q2*t1)/(sp^2*u1*(sp + t1 + u1)) - 
         (6*q2^2*t1)/(sp^2*u1*(sp + t1 + u1)) + (10*q2*t1)/
          (sp*u1*(sp + t1 + u1)) + (6*q2*t1^2)/(sp^2*u1*(sp + t1 + u1)) + 
         (8*q2*u1)/(sp^2*(sp + t1 + u1)) + (4*m2*q2*u1)/
          (sp*t1^2*(sp + t1 + u1)) + (8*m2*q2*u1)/(sp^2*t1*(sp + t1 + u1)) + 
         (4*q2*u1)/(sp*t1*(sp + t1 + u1)) - (q2*\[Epsilon])/sp^2 - 
         (2*m2*q2*\[Epsilon])/(sp*t1^2) - (q2^2*\[Epsilon])/(sp^2*t1) - 
         (q2*\[Epsilon])/(sp*t1) + (2*m2*q2*\[Epsilon])/(sp^2*u1) - 
         (4*q2^2*\[Epsilon])/(sp^2*u1) + (q2*\[Epsilon])/(t1*u1) - 
         (2*m2*q2^2*\[Epsilon])/(sp^2*t1*u1) + (q2^3*\[Epsilon])/
          (sp^2*t1*u1) + (m2*q2*\[Epsilon])/(sp*t1*u1) - 
         (2*q2^2*\[Epsilon])/(sp*t1*u1) - (2*m2*q2*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) - (6*q2^2*\[Epsilon])/(sp^2*(sp + t1 + u1)) + 
         (13*q2*\[Epsilon])/(sp*(sp + t1 + u1)) + (4*m2*q2*\[Epsilon])/
          (t1^2*(sp + t1 + u1)) - (4*m2*q2^2*\[Epsilon])/
          (sp*t1^2*(sp + t1 + u1)) + (6*q2*\[Epsilon])/(t1*(sp + t1 + u1)) - 
         (6*m2*q2^2*\[Epsilon])/(sp^2*t1*(sp + t1 + u1)) + 
         (3*m2*q2*\[Epsilon])/(sp*t1*(sp + t1 + u1)) - (6*q2^2*\[Epsilon])/
          (sp*t1*(sp + t1 + u1)) + (5*q2*t1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (9*q2*\[Epsilon])/(u1*(sp + t1 + u1)) - 
         (6*m2*q2^2*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + 
         (3*q2^3*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) - (3*m2*q2*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) - (10*q2^2*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (m2*q2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (4*q2^2*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (4*m2*q2^2*\[Epsilon])/
          (sp*t1*u1*(sp + t1 + u1)) + (2*q2^3*\[Epsilon])/
          (sp*t1*u1*(sp + t1 + u1)) + (2*q2*sp*\[Epsilon])/
          (t1*u1*(sp + t1 + u1)) - (2*m2*q2*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) - (8*q2^2*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (10*q2*t1*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (4*q2*t1^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (sp^2*(sp + t1 + u1)) + (4*m2*q2*u1*\[Epsilon])/
          (sp*t1^2*(sp + t1 + u1)) + (4*q2*u1*\[Epsilon])/
          (sp*t1*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/(2*sp^2) - 
         (q2^2*\[Epsilon]^2)/(2*sp^2*u1) + (q2*\[Epsilon]^2)/(sp*u1) + 
         (3*q2*t1*\[Epsilon]^2)/(2*sp^2*u1) + (q2^2*\[Epsilon]^2)/
          (2*sp^2*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/(2*sp*(sp + t1 + u1)) + 
         (q2*\[Epsilon]^2)/(u1*(sp + t1 + u1)) + (q2^2*\[Epsilon]^2)/
          (2*sp*u1*(sp + t1 + u1)) + (q2^2*t1*\[Epsilon]^2)/
          (2*sp^2*u1*(sp + t1 + u1)) + (3*q2*t1*\[Epsilon]^2)/
          (2*sp*u1*(sp + t1 + u1)) + (q2*t1^2*\[Epsilon]^2)/
          (2*sp^2*u1*(sp + t1 + u1)) - (q2*u1*\[Epsilon]^2)/
          (2*sp^2*(sp + t1 + u1)), (-2*q2)/(sp^2*t1) + (2*q2)/(sp^2*u1) - 
         (2*q2^2)/(sp^2*t1*u1) + (4*m2*q2)/(sp*t1^2*(sp + t1 + u1)) - 
         (2*q2^2)/(sp^2*t1*(sp + t1 + u1)) + (4*q2)/(sp*t1*(sp + t1 + u1)) - 
         (2*q2*t1)/(sp*u1^2*(sp + t1 + u1)) - (2*q2*t1^2)/
          (sp^2*u1^2*(sp + t1 + u1)) + (2*q2)/(sp*u1*(sp + t1 + u1)) + 
         (2*q2)/(t1*u1*(sp + t1 + u1)) + (4*m2*q2)/(sp*t1*u1*
           (sp + t1 + u1)) - (2*q2^2)/(sp*t1*u1*(sp + t1 + u1)) - 
         (4*q2*t1)/(sp^2*u1*(sp + t1 + u1)) + (2*q2*u1)/
          (sp^2*t1*(sp + t1 + u1)) - (q2*\[Epsilon])/(sp^2*t1) + 
         (q2*\[Epsilon])/(sp^2*u1) - (q2^2*\[Epsilon])/(sp^2*t1*u1) + 
         (2*m2*q2*\[Epsilon])/(sp*t1^2*(sp + t1 + u1)) - 
         (q2^2*\[Epsilon])/(sp^2*t1*(sp + t1 + u1)) + (2*q2*\[Epsilon])/
          (sp*t1*(sp + t1 + u1)) - (2*q2*t1*\[Epsilon])/
          (sp*u1^2*(sp + t1 + u1)) - (2*q2*t1^2*\[Epsilon])/
          (sp^2*u1^2*(sp + t1 + u1)) + (q2*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) + 
         (2*m2*q2*\[Epsilon])/(sp*t1*u1*(sp + t1 + u1)) - 
         (q2^2*\[Epsilon])/(sp*t1*u1*(sp + t1 + u1)) - (3*q2*t1*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (q2*u1*\[Epsilon])/
          (sp^2*t1*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (2*sp*u1^2*(sp + t1 + u1)) - (q2*t1^2*\[Epsilon]^2)/
          (2*sp^2*u1^2*(sp + t1 + u1)) - (q2*t1*\[Epsilon]^2)/
          (2*sp^2*u1*(sp + t1 + u1))}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, 
       {(8*m2^2*q2)/(sp^2*t1^2) + (8*m2*q2)/(sp^2*t1) - (4*q2)/(sp*t1) - 
         (2*q2*\[Epsilon])/sp^2 - (4*q2*\[Epsilon])/(sp*t1) - 
         (q2*\[Epsilon]^2)/sp^2 - (q2*\[Epsilon]^2)/(sp*t1), 
        (-4*m2*q2)/(sp^2*t1^2) - (4*q2)/(sp^2*t1) + 
         (8*q2)/(sp^2*(sp + t1 + u1)) - (4*m2*q2^2)/(sp^2*t1^2*
           (sp + t1 + u1)) + (4*m2*q2)/(sp*t1^2*(sp + t1 + u1)) + 
         (4*m2*q2)/(sp^2*t1*(sp + t1 + u1)) - (6*q2^2)/
          (sp^2*t1*(sp + t1 + u1)) + (6*q2)/(sp*t1*(sp + t1 + u1)) - 
         (8*q2^2)/(sp^2*u1*(sp + t1 + u1)) + (4*q2)/(sp*u1*(sp + t1 + u1)) + 
         (2*q2)/(t1*u1*(sp + t1 + u1)) - (4*m2*q2^2)/(sp^2*t1*u1*
           (sp + t1 + u1)) + (2*q2^3)/(sp^2*t1*u1*(sp + t1 + u1)) - 
         (4*q2^2)/(sp*t1*u1*(sp + t1 + u1)) + (4*q2*t1)/
          (sp^2*u1*(sp + t1 + u1)) + (4*m2*q2*u1)/(sp^2*t1^2*
           (sp + t1 + u1)) + (4*q2*u1)/(sp^2*t1*(sp + t1 + u1)) - 
         (2*m2*q2*\[Epsilon])/(sp^2*t1^2) - (2*q2*\[Epsilon])/(sp^2*t1) + 
         (6*q2*\[Epsilon])/(sp^2*(sp + t1 + u1)) - (2*m2*q2^2*\[Epsilon])/
          (sp^2*t1^2*(sp + t1 + u1)) + (2*m2*q2*\[Epsilon])/
          (sp*t1^2*(sp + t1 + u1)) + (2*m2*q2*\[Epsilon])/
          (sp^2*t1*(sp + t1 + u1)) - (3*q2^2*\[Epsilon])/
          (sp^2*t1*(sp + t1 + u1)) + (3*q2*\[Epsilon])/
          (sp*t1*(sp + t1 + u1)) - (4*q2^2*\[Epsilon])/
          (sp^2*u1*(sp + t1 + u1)) + (4*q2*\[Epsilon])/
          (sp*u1*(sp + t1 + u1)) + (q2*\[Epsilon])/(t1*u1*(sp + t1 + u1)) - 
         (2*m2*q2^2*\[Epsilon])/(sp^2*t1*u1*(sp + t1 + u1)) + 
         (q2^3*\[Epsilon])/(sp^2*t1*u1*(sp + t1 + u1)) - 
         (2*q2^2*\[Epsilon])/(sp*t1*u1*(sp + t1 + u1)) + 
         (4*q2*t1*\[Epsilon])/(sp^2*u1*(sp + t1 + u1)) + 
         (2*m2*q2*u1*\[Epsilon])/(sp^2*t1^2*(sp + t1 + u1)) + 
         (2*q2*u1*\[Epsilon])/(sp^2*t1*(sp + t1 + u1)) + 
         (q2*\[Epsilon]^2)/(sp^2*(sp + t1 + u1)) + (q2*\[Epsilon]^2)/
          (sp*u1*(sp + t1 + u1)) + (q2*t1*\[Epsilon]^2)/
          (sp^2*u1*(sp + t1 + u1)), 0}, {0, 0, 0}}, {{0, 0, 0}, {0, 0, 0}, 
       {(-2*q2)/(sp^2*t1) - (2*q2*\[Epsilon])/(sp^2*t1) - 
         (q2*\[Epsilon]^2)/(2*sp^2*t1), 0, 0}, {0, 0, 0}}}}
 
CoeffRQED[P] = {}
 
CoeffROK[P] = {}
 
CoeffRPOKk0 = Take[{}, 1]
 
CoeffRPOKk2 = Take[{}, 1]
