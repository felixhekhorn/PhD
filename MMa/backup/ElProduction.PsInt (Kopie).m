psIA1[-2, 2] = (2*Pi*(m2 + s4)*(2*log2A1*(q2*s4*t1 + m2*(sp + u1)^2)*
        (6*m2^2*sp^2*(sp + u1) - q2^2*t1*(sp + t1)*(3*sp + 3*t1 + 2*u1) + 
         3*m2*sp*(sp + u1)*(sp^2 - 2*t1*u1 + sp*(t1 + u1)) - 
         t1*u1*(sp + u1)*(2*sp^2 - t1*u1 + 2*sp*(t1 + u1)) + 
         q2*(t1*(3*sp*(sp + t1)^2 + (7*sp - t1)*(sp + t1)*u1 + 
             (4*sp + t1)*u1^2) + m2*(-3*sp^3 + 3*sp^2*(t1 - u1) + 2*t1^2*u1 + 
             2*sp*t1*(3*t1 + u1)))) + 
       (s4*Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2]*
         (12*m2^3*sp^2*(sp + u1)^2 + s4*t1*(q2*(sp + t1)^2*((q2 - sp)^2 + 
              8*q2*t1) - 2*q2*(q2 - sp)*(sp - 5*t1)*(sp + t1)*u1 + 
            (q2*sp^2 + (q2^2 - 12*q2*sp + sp^2)*t1 - 3*q2*t1^2)*u1^2 + 
            2*(-q2 + sp)*t1*u1^3 + t1*u1^4) + 
          4*m2^2*(3*sp*(sp + u1)^2*(sp^2 - t1*u1 + sp*(t1 + u1)) + 
            q2*(-sp^4 + sp^3*(4*t1 - 2*u1) + t1^2*u1^2 + sp*t1*u1*(4*t1 + 
                u1) + sp^2*(5*t1^2 + 5*t1*u1 - u1^2))) + 
          m2*((sp + u1)^2*(sp^2*(sp + t1)^2 + 2*sp*(sp - 5*t1)*(sp + t1)*u1 + 
              (sp^2 - 10*sp*t1 + 2*t1^2)*u1^2) + 
            2*q2*(-(sp^2*(sp - 10*t1)*(sp + t1)^2) - sp*(sp + t1)*(3*sp^2 - 
                23*sp*t1 - 2*t1^2)*u1 + sp*(-3*sp^2 + 16*sp*t1 + 8*t1^2)*u1^
                2 + (-sp^2 + 4*sp*t1 + 2*t1^2)*u1^3) + 
            q2^2*(sp^4 + 2*sp^3*(-t1 + u1) + 2*t1^2*(2*t1 + u1)^2 + 
              sp^2*(t1^2 + u1^2) + 2*sp*t1*(6*t1^2 + 3*t1*u1 + u1^2)))))/
        (m2 + s4)))/(s4*(q2*s4*t1 + m2*(sp + u1)^2)*
      (-4*q2*(m2 + t1) + (-q2 + sp + u1)^2)^(5/2))
 
psIA1[-1, 1] = (2*Pi*(m2 + s4)*((s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + 
          (sp - t1)*u1)*Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2])/
        (m2 + s4) + log2A1*(2*m2*sp*(sp + u1) + 
         t1*(-(u1*(sp + u1)) + q2*(2*(sp + t1) + u1)))))/
     (s4*(-4*q2*(m2 + t1) + (-q2 + sp + u1)^2)^(3/2))
 
psIA1[-1, 2] = (2*Pi*(m2 + s4)*(log2A1*(2*m2*sp + (-q2 + sp)*(sp + t1) + 
         (sp - t1)*u1)*(q2*s4*t1 + m2*(sp + u1)^2) + 
       s4*Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2]*(2*m2*sp*(sp + u1) + 
         t1*(-(u1*(sp + u1)) + q2*(2*(sp + t1) + u1)))))/
     (s4*(q2*s4*t1 + m2*(sp + u1)^2)*(-4*q2*(m2 + t1) + (-q2 + sp + u1)^2)^
       (3/2))
 
psIA1[0, 0] = 2*Pi
 
psIA1[0, 1] = (2*log2A1*Pi*(m2 + s4))/
     (s4*Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2])
 
psIA1[0, 2] = (2*Pi*(m2 + s4))/(q2*s4*t1 + m2*(sp + u1)^2)
 
psIA1[1, -1] = (2*Pi*(m2 + s4)*t1*u1*
      ((s4*(2*m2*sp + (-q2 + sp)*(sp + t1) + (sp - t1)*u1))/
        ((m2 + s4)*t1*u1) + 2/\[Epsilon]))/(s4*(sp + t1)^2)
 
psIA1[1, 0] = (-4*Pi*(m2 + s4))/(s4*(sp + t1)*\[Epsilon])
 
psIA1[1, 1] = (2*Pi*(m2 + s4)*(log1A1 + 2/\[Epsilon]))/(s4*t1*u1)
 
psIA1[1, 2] = (-2*Pi*(m2 + s4)*(sp + t1)*(-2 + log1A1 + 
       (t1*u1*(-(q2*s4) + (2*m2 + s4)*(sp + u1)))/
        ((sp + t1)*(q2*s4*t1 + m2*(sp + u1)^2)) + 2/\[Epsilon]))/
     (s4*t1^2*u1^2)
 
psIA1[2, 0] = (-4*Pi*(m2 + s4)^2)/(s4^2*(sp + t1)^2)
 
psIA1[2, 1] = (4*Pi*(m2 + s4)^2*(sp + t1)*
      ((-2*(sp + t1)*(q2*s4^2*t1 + m2*sp^2*(sp + t1)) - 
         2*sp*(sp + t1)*(2*m2*sp - s4*t1)*u1 + (-2*m2*sp^2 + 2*s4*sp*t1 + 
           (m2 + s4)*t1^2)*u1^2)/((m2 + s4)*(sp + t1)^2) + 
       (s4*(2*m2*sp*(sp + u1) + t1*(-(u1*(sp + u1)) + q2*(2*(sp + t1) + u1)))*
         (log1A1 + 2/\[Epsilon]))/(2*(m2 + s4)*(sp + t1))))/(s4^2*t1^3*u1^3)
 
psIA1[2, 2] = (2*Pi*(m2 + s4)^2*
      ((t1^2*u1^2*(q2*s4 - (2*m2 + s4)*(sp + u1))^2)/
        ((m2 + s4)*(q2*s4*t1 + m2*(sp + u1)^2)) + 
       2*(-3*t1^2*u1^2 + (8*s4^2*(m2*sp^2 + q2*t1*(sp + t1) - sp*t1*u1))/
          (m2 + s4)) - (2*s4*(m2*sp*(3*s4*sp + 2*t1*u1) + 
          t1*(-(u1*(2*s4*sp + t1*u1)) + q2*(3*s4^2 - 4*s4*u1 + u1^2)))*
         (log1A1 + 2/\[Epsilon]))/(m2 + s4)))/(s4^2*t1^4*u1^4)
 
psIA2[-2, 2] = 2*Pi - (4*Pi*(m2 + s4)*
       (log2A2a*(2*m2*q2*sp + t1*(q2^2 + sp*(sp + u1) - q2*(2*t1 + u1))) + 
        (s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*
          Sqrt[-4*q2*t + (sp + u1p)^2])/(m2 + s4)))/
      (s4*(-4*q2*t + (sp + u1p)^2)^(3/2)) + 
     (2*Pi*(m2 + s4)*(2*log2A2a*(2*m2^2*q2*sp^2 + 
          m2*(-2*q2^2*(sp^2 + sp*t1 + t1^2) + sp^2*(sp + u1)*
             (sp + 3*t1 + u1) + q2*sp*(sp^2 + sp*(t1 + u1) - 2*t1*(2*t1 + 
                u1))) + t1*(-(q2^3*(sp + t1)) + q2*(-(sp*t1*(sp + t1)) + 
              (sp^2 + 3*t1^2)*u1 + (sp + 2*t1)*u1^2) + 
            q2^2*(t1*(t1 - u1) + sp*(t1 + u1)) + sp*(sp + u1)*
             (sp^2 + sp*t1 - u1*(2*t1 + u1)))) + 
        (s4*(12*m2^3*q2^2*sp^2 + 4*m2^2*q2*(q2^2*(-sp^2 + sp*t1 + t1^2) + 
             sp^2*t1*(3*sp + 2*t1 + 3*u1) + q2*sp*(3*sp^2 + 3*sp*(t1 + u1) - 
               t1*(2*t1 + 3*u1))) + s4*t1*(q2^4*t1 + sp^2*t1*(sp + u1)^2 + 
             q2^3*(sp^2 + 2*sp*t1 - t1*(3*t1 + 2*u1)) + 
             q2*(sp^4 + t1^2*u1^2 + 2*sp^3*(t1 + u1) - 2*sp*t1*u1*
                (5*t1 + 4*u1) + sp^2*(-3*t1^2 - 6*t1*u1 + u1^2)) + 
             q2^2*(-2*sp^3 + 2*sp^2*(t1 - u1) + 6*sp*t1*(t1 + u1) + t1*
                (8*t1^2 + 10*t1*u1 + u1^2))) + 
           m2*(q2^4*(sp^2 + 2*sp*t1 + 2*t1^2) + sp^2*t1^2*(sp + u1)^2 - 
             2*q2^3*(sp^3 - 2*t1^2*u1 + sp^2*(-2*t1 + u1) - sp*t1*
                (5*t1 + 4*u1)) + q2^2*(sp^4 + 2*sp^3*(-t1 + u1) + 2*t1^2*
                (2*t1 + u1)^2 + sp^2*(-9*t1^2 - 12*t1*u1 + u1^2) - 2*sp*t1*
                (2*t1^2 + 8*t1*u1 + 5*u1^2)) + 2*q2*sp*t1*(6*sp^3 - t1*u1*
                (6*t1 + 5*u1) + 2*sp^2*(5*t1 + 6*u1) + sp*(2*t1^2 + 5*t1*u1 + 
                 6*u1^2))))*Sqrt[-4*q2*t + (sp + u1p)^2])/
         (q2*(m2 + s4)*(m2*q2 + s4*t1))))/
      (s4*(-4*q2*(m2 + t1) + (-q2 + sp + u1)^2)^(5/2))
 
psIA2[-1, 1] = 2*Pi - (2*Pi*(m2 + s4)*
       (log2A2a*(2*m2*q2*sp + t1*(q2^2 + sp*(sp + u1) - q2*(2*t1 + u1))) + 
        (s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*
          Sqrt[-4*q2*t + (sp + u1p)^2])/(m2 + s4)))/
      (s4*(-4*q2*t + (sp + u1p)^2)^(3/2))
 
psIA2[-1, 2] = (2*log2A2a*Pi*(m2 + s4))/(s4*Sqrt[-4*q2*t + (sp + u1p)^2]) - 
     (2*Pi*(m2 + s4)*(log2A2a*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + 
          (sp - t1)*u1) + (s4*(2*m2*q2*sp + t1*(q2^2 + sp*(sp + u1) - 
             q2*(2*t1 + u1)))*Sqrt[-4*q2*t + (sp + u1p)^2])/
         (q2*(m2*q2 + s4*t1))))/(s4*(-4*q2*(m2 + t1) + (-q2 + sp + u1)^2)^
        (3/2))
 
psIA2[0, 0] = 2*Pi
 
psIA2[0, 1] = (2*log2A2a*Pi*(m2 + s4))/(s4*Sqrt[-4*q2*t + (sp + u1p)^2])
 
psIA2[0, 2] = (2*Pi*(m2 + s4))/(q2*(m2*q2 + s4*t1))
 
psIA2[1, -1] = 2*Pi + (2*Pi*(m2 + s4)*(log2A2b*s*(2*m2*sp + (s - s4)*t1) - 
        (Sqrt[-4*m2*s + (s - s4)^2]*s4*(-2*m2*sp + (q2 + t1)*(sp + t1) + 
           (-sp + t1)*u1))/(m2 + s4)))/((-4*m2*s + (s - s4)^2)^(3/2)*s4)
 
psIA2[1, 0] = (2*log2A2b*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*s4)
 
psIA2[1, 1] = (-2*log3A2a*Pi*(m2 + s4))/(s*s4*t1) + 
     (2*log3A2b*Pi*(m2 + s4))/(s*s4*t1)
 
psIA2[1, 2] = (2*Pi*(m2 + s4)*(log3A2b*(2*m2*sp + (s - s4)*t1) - 
        (s4*t1*(2*m2*sp^2 + q2*t1*(sp + t1) - sp*t1*(s4 + u1)))/
         (sp*(-(m2*sp) + s4*t1))))/(s^2*s4*t1^3) - 
     (2*Pi*(m2 + s4)*((s4*(q2 + sp)*t1*(2*m2*sp^2 + q2*t1*(sp + t1) - 
           sp*t1*(sp + t1 + 2*u1)))/(sp*(m2*sp - s4*t1)) + 
        log3A2a*(2*m2*q2*sp + t1*(q2^2 + sp*(sp + u1) - q2*(2*t1 + u1)))))/
      (s^3*s4*t1^3) - (2*Pi*(m2 + s4)*(log3A2a*(2*m2*sp^2 + q2*t1*(sp + t1) - 
          sp*t1*(s4 + u1)) + (s*s4*t1*(2*m2*q2*sp + 
           t1*(q2^2 + sp*(sp + u1) - q2*(2*t1 + u1))))/(q2*(m2*q2 + s4*t1))))/
      (s^3*s4*t1^3)
 
psIA2[2, -1] = (2*log2A2b*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*s4) - 
     (2*Pi*(m2 + s4)*((Sqrt[-4*m2*s + (s - s4)^2]*s4*(-2*m2*sp - 
           (s - s4)*t1))/(m2*s) + log2A2b*(-2*m2*sp + (q2 + t1)*(sp + t1) + 
          (-sp + t1)*u1)))/((-4*m2*s + (s - s4)^2)^(3/2)*s4)
 
psIA2[2, 0] = (2*Pi*(m2 + s4))/(m2*s^2)
 
psIA2[2, 1] = (2*Pi*(m2 + s4)*((s4*t1*(2*m2*sp + (s - s4)*t1))/m2 + 
        log3A2b*(2*m2*sp^2 + q2*t1*(sp + t1) - sp*t1*(s4 + u1))))/
      (s^3*s4*t1^3) - (2*Pi*(m2 + s4)*(log3A2b*(2*m2*sp + (s - s4)*t1) - 
        (s4*t1*(2*m2*sp^2 + q2*t1*(sp + t1) - sp*t1*(s4 + u1)))/
         (sp*(-(m2*sp) + s4*t1))))/(s^2*s4*t1^3) + 
     (2*Pi*(m2 + s4)*((s4*(q2 + sp)*t1*(2*m2*sp^2 + q2*t1*(sp + t1) - 
           sp*t1*(sp + t1 + 2*u1)))/(sp*(m2*sp - s4*t1)) + 
        log3A2a*(2*m2*q2*sp + t1*(q2^2 + sp*(sp + u1) - q2*(2*t1 + u1)))))/
      (s^3*s4*t1^3)
 
psIA2[2, 2] = (-2*Pi*(m2 + s4)*(2*log3A2b*(6*m2^2*sp^2 + 
          t1^2*(-q2 + t1 + u1)^2 + 2*m2*t1*(3*q2*sp + q2*t1 - 2*sp*t1 - 
            3*sp*u1)) + (s4*t1*(12*m2^3*sp^5 + s4*t1^3*
            ((sp + t1)*(sp^2*(sp - 3*t1) + q2^2*(-3*sp + t1) + 4*q2*sp*
                (sp + t1)) - 2*sp*(-(q2*(5*sp + t1)) + sp*(sp + 5*t1))*u1 - 
             6*sp^2*u1^2) + 2*m2*sp*t1^2*((sp + t1)*(q2^2*(sp - t1) + 2*sp^2*
                (sp + 4*t1) - q2*sp*(9*sp + 5*t1)) + sp*(-11*q2*sp + 13*
                sp^2 - 3*q2*t1 + 21*sp*t1)*u1 + 12*sp^2*u1^2) - 
           2*m2^2*sp^3*t1*(-2*q2*(3*sp + t1) + sp*(9*sp + 13*t1 + 15*u1))))/
         (sp^2*(m2*sp - s4*t1)^2)))/(s^3*s4*t1^5) + 
     (2*Pi*(m2 + s4)*(2*log3A2a*(6*m2^2*q2*sp^3 + 
          t1^2*((q2 - sp)*(sp + t1)*(q2^2 + sp^2 - q2*(sp + 3*t1)) - 
            2*(q2^2*(2*sp + t1) + sp^2*(2*sp + t1) - 2*q2*sp*(sp + 2*t1))*
             u1 + 3*(q2 - sp)*sp*u1^2) + m2*sp*t1*(q2^2*(6*sp + 4*t1) + 
            sp^2*(3*sp + t1 + 3*u1) - q2*sp*(3*sp + 7*t1 + 9*u1))) + 
        (s*s4*t1*(12*m2^3*q2^2*sp^4 + 4*m2^2*q2*sp^2*t1*(q2^2*(3*sp + 2*t1) + 
             sp^2*(3*sp + 2*t1 + 3*u1) - q2*sp*(3*sp + 5*t1 + 6*u1)) + 
           s4*t1^3*(-(q2^4*sp) - sp^3*(sp + u1)^2 + q2^3*(sp^2 + 6*sp*t1 + t1^
                2 + 2*sp*u1) - q2^2*sp*(8*sp^2 + 12*sp*t1 + 10*t1^2 + 10*sp*
                u1 + 12*t1*u1 + u1^2) + q2*sp^2*(sp^2 + 6*sp*t1 + t1^2 + 10*
                sp*u1 + 12*t1*u1 + 10*u1^2)) + m2*t1^2*
            (q2^4*(2*sp^2 + 2*sp*t1 + t1^2) + sp^4*(sp + u1)^2 - 
             2*q2^3*sp*(5*sp^2 + 10*sp*t1 + 3*t1^2 + 7*sp*u1 + 4*t1*u1) - 
             2*q2*sp^3*(6*sp^2 + 12*sp*t1 + 4*t1^2 + 17*sp*u1 + 16*t1*u1 + 11*
                u1^2) + q2^2*sp^2*(11*sp^2 + 26*sp*t1 + 21*t1^2 + 22*sp*u1 + 
               32*t1*u1 + 13*u1^2))))/(q2*sp*(m2*sp - s4*t1)*
          (m2*q2 + s4*t1))))/(s^5*s4*t1^5) + 
     (2*Pi*(m2 + s4)*(2*log3A2b*(6*m2^2*sp^3 + 
          t1^2*((sp + t1)*(q2^2 + sp*t1 - 2*q2*(sp + t1)) + 
            2*(-(q2*(2*sp + t1)) + sp*(sp + 2*t1))*u1 + 3*sp*u1^2) + 
          m2*sp*t1*(q2*(6*sp + 4*t1) - sp*(3*sp + 5*t1 + 9*u1))) + 
        ((m2*s4*t1 + s4^2*t1)*(12*m2^3*sp^4 - s4*sp*t1^3*(-q2 + t1 + u1)^2 + 
           4*m2^2*sp^2*t1*(q2*(3*sp + 2*t1) - sp*(3*sp + 4*t1 + 6*u1)) + 
           m2*t1^2*(q2^2*(2*sp^2 + 2*sp*t1 + t1^2) - 2*q2*sp*(5*sp^2 + 9*sp*
                t1 + 3*t1^2 + 7*sp*u1 + 4*t1*u1) + sp^2*(sp^2 + 6*t1^2 + 18*
                t1*u1 + 13*u1^2 + 6*sp*(t1 + 2*u1)))))/(m2*(m2 + s4)*sp*
          (m2*sp - s4*t1))))/(s^4*s4*t1^5) + 
     (2*Pi*(m2 + s4)*(-((s4*(q2 + sp)*t1*(-12*m2^3*q2*sp^5 + 
            s4*t1^3*((-q2 + sp)*(sp + t1)*(-3*sp*(q2^2 + sp^2) + 
                (q2^2 + 8*q2*sp + sp^2)*t1) - 2*sp*(q2^2*(5*sp + t1) + 
                sp^2*(5*sp + t1) - 2*q2*sp*(sp + 5*t1))*u1 + 6*(q2 - sp)*sp^
                2*u1^2) + 2*m2*sp*t1^2*((sp + t1)*(sp^3*(5*sp - t1) + 
                q2^3*(-sp + t1) + q2^2*sp*(9*sp + 7*t1) - q2*sp^2*
                 (3*sp + 13*t1)) + sp*(q2^2*(11*sp + 3*t1) + 
                sp^2*(11*sp + 3*t1) - 2*q2*sp*(7*sp + 15*t1))*u1 + 
              6*sp^2*(-2*q2 + sp)*u1^2) + 2*m2^2*sp^3*t1*
             (-2*q2^2*(3*sp + t1) + sp^2*(-3*sp + t1 - 3*u1) + 
              q2*sp*(9*sp + 17*t1 + 15*u1))))/(sp^2*(m2*sp - s4*t1)^2)) + 
        2*log3A2a*(6*m2^2*q2^2*sp^2 + 2*m2*q2*t1*(q2^2*(3*sp + t1) + 
            sp^2*(3*sp + t1 + 3*u1) - q2*sp*(4*t1 + 3*u1)) + 
          t1^2*(q2^4 + sp^2*(sp + u1)^2 - 2*q2^3*(2*t1 + u1) + 
            q2^2*(4*sp^2 + 6*t1^2 + 6*t1*u1 + u1^2 + 4*sp*(t1 + u1)) - 
            2*q2*sp*(2*sp*(t1 + u1) + u1*(3*t1 + 2*u1))))))/(s^5*s4*t1^5)
 
psIA3[-2, 0, 1, 1] = sp^2*((2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) - 
       (2*log4A3bc*Pi*(m2 + s4))/(s*s4*t1)) - 
     (2*Pi*(m2 + s4)*((Sqrt[-4*m2*s + (s - s4)^2]*s4*(-2*m2*sp + 
           (q2 + t1)*(sp + t1) + (-sp + t1)*u1))/(m2 + s4) + 
        log3A3xb*(2*m2*s*sp - (s - s4)*(q2*(sp + t1) - sp*u1))))/
      ((-4*m2*s + (s - s4)^2)^(3/2)*s4) + 
     sp*((2*log3A3xb*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*s4) - 
       (2*log3A3xc*Pi*(m2 + s4))/(s4*Sqrt[-4*q2*t + (sp + u1p)^2])) - 
     (2*Pi*(m2 + s4)*(log3A3xc*(-2*m2*q2*sp + q2^2*(sp + t1) - 
          2*q2*(sp + t1)^2 - q2*(2*sp + t1)*u1 + s4*sp*(sp + u1)) + 
        (s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*
          Sqrt[-4*q2*t + (sp + u1p)^2])/(m2 + s4)))/
      (s4*(-4*q2*t + (sp + u1p)^2)^(3/2))
 
psIA3[-2, 1, 0, 1] = 
    ((-2*Pi*(m2 + s4)*(log3A3xa*(6*m2^2*sp^2*(sp + u1)^2 + 
           t1^2*(u1^2*(sp + u1)^2 + q2^2*(6*(sp + t1)^2 + 6*(sp + t1)*u1 + u1^
                2) - 2*q2*u1*(3*sp*(sp + t1) + 2*(2*sp + t1)*u1 + u1^2)) + 
           2*m2*t1*(-3*sp*u1*(sp + u1)^2 + q2*(6*sp^2*(sp + t1) + 3*sp*
                (3*sp + 2*t1)*u1 + (3*sp + t1)*u1^2))) - 
         (s4*(2*s4*(sp + t1)*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + 
              (sp - t1)*u1)*(-4*m2*q2 + q2^2 + (sp + u1)^2 - 
              2*q2*(sp + 2*t1 + u1)) + (q2*s4 - (2*m2 + s4)*(sp + u1))*
             ((2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)^2 + 
              2*(m2 + s4)*(m2*sp^2 + q2*t1*(sp + t1) - sp*t1*u1)))*
           Sqrt[-4*q2*t + (sp + u1p)^2])/(2*(m2 + s4)^2)))/
       (s4*(-4*q2*t + (sp + u1p)^2)^(5/2)) - 
      (2*Pi*(m2 + s4)*(log3A3xc*(6*m2^2*q2^2*sp^2 + q2^4*(sp + t1)^2 + 
           s4^2*sp^2*(sp + u1)^2 - 2*q2^3*(sp + t1)*(2*(sp + t1)^2 + 
             (2*sp + t1)*u1) + q2^2*(2*(sp + t1)^2*(3*sp^2 + 4*sp*t1 + 3*
                t1^2) + 2*(sp + t1)*(6*sp^2 + 7*sp*t1 + 3*t1^2)*u1 + 
             (6*sp^2 + 6*sp*t1 + t1^2)*u1^2) - 2*q2*s4*sp*
            (2*sp^3 + 4*sp^2*(t1 + u1) + t1*u1*(3*t1 + u1) + 
             sp*(2*t1 + u1)*(t1 + 2*u1)) + 2*m2*q2*
            (-(q2^2*(2*sp - t1)*(sp + t1)) + s4*sp^2*(-2*sp + t1 - 2*u1) + 
             q2*sp*(4*(sp + t1)^2 + (4*sp + t1)*u1))) - 
         (s4*(-2*s4*(sp + t1)*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + 
              (sp - t1)*u1)*(-4*m2*q2 + q2^2 + (sp + u1)^2 - 
              2*q2*(sp + 2*t1 + u1)) + (2*m2*q2 - s4*(-q2 + sp + u1))*
             ((2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)^2 + 
              2*(m2 + s4)*(m2*sp^2 + q2*t1*(sp + t1) - sp*t1*u1)))*
           Sqrt[-4*q2*t + (sp + u1p)^2])/(2*(m2 + s4)^2)))/
       (s4*(-4*q2*t + (sp + u1p)^2)^(5/2)))/(sp + u1p)
 
psIA3[-2, 1, 1, 1] = (-2*log3A3xb*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*
       s4) - (2*log3A3xa*Pi*(m2 + s4))/
      (s4*Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2]) + 
     (2*log4S2A3*Pi*(m2 + s4)*(sp - u1p))/
      (s4*Sqrt[-4*m2*s*u1p*(sp + u1p) + (q2*(s - s4) + s4*u1p)^2]) + 
     (sp*((2*log3A3xa*Pi*(m2 + s4))/(s4*Sqrt[-4*q2*(m2 + t1) + 
            (-q2 + sp + u1)^2]) + (2*log3A3xc*Pi*(m2 + s4))/
         (s4*Sqrt[-4*q2*t + (sp + u1p)^2])))/(sp + u1p) + 
     (sp^2*((-2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) + (2*log4A3bc*Pi*(m2 + s4))/
         (s*s4*t1) - (2*log4S2A3*Pi*(m2 + s4))/
         (s4*Sqrt[-4*m2*s*u1p*(sp + u1p) + (q2*(s - s4) + s4*u1p)^2])))/
      (sp + u1p) + 
     ((-2*Pi*(m2 + s4)*((s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + 
             (sp - t1)*u1)*Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2])/
           (m2 + s4) + log3A3xa*(2*m2*sp*(sp + u1) + 
            t1*(-(u1*(sp + u1)) + q2*(2*(sp + t1) + u1)))))/
        (s4*(-4*q2*(m2 + t1) + (-q2 + sp + u1)^2)^(3/2)) + 
       (2*Pi*(m2 + s4)*(log3A3xc*(-2*m2*q2*sp + q2^2*(sp + t1) - 
            2*q2*(sp + t1)^2 - q2*(2*sp + t1)*u1 + s4*sp*(sp + u1)) + 
          (s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*
            Sqrt[-4*q2*t + (sp + u1p)^2])/(m2 + s4)))/
        (s4*(-4*q2*t + (sp + u1p)^2)^(3/2)))/(sp + u1p)
 
psIA3[-1, -1, 1, 1] = 
    (-2*Pi*(m2 + s4)*((Sqrt[-4*m2*s + (s - s4)^2]*s4*(-2*m2*sp + 
           (q2 + t1)*(sp + t1) + (-sp + t1)*u1))/(m2 + s4) + 
        log3A3xb*(2*m2*s*sp - (s - s4)*(q2*(sp + t1) - sp*u1))))/
      ((-4*m2*s + (s - s4)^2)^(3/2)*s4) + 
     sp*((2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) - (2*log4A3bc*Pi*(m2 + s4))/
        (s*s4*t1))*(sp + u1p) + (sp + u1p)*
      ((2*log3A3xb*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*s4) - 
       (2*log3A3xc*Pi*(m2 + s4))/(s4*Sqrt[-4*q2*t + (sp + u1p)^2]))
 
psIA3[-1, 0, 0, 1] = (-2*Pi*(m2 + s4)*
      (log3A3xc*(-2*m2*q2*sp + q2^2*(sp + t1) - 2*q2*(sp + t1)^2 - 
         q2*(2*sp + t1)*u1 + s4*sp*(sp + u1)) + 
       (s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*
         Sqrt[-4*q2*t + (sp + u1p)^2])/(m2 + s4)))/
     (s4*(-4*q2*t + (sp + u1p)^2)^(3/2))
 
psIA3[-1, 0, 1, 0] = (2*Pi*(m2 + s4)*
      ((Sqrt[-4*m2*s + (s - s4)^2]*s4*(-2*m2*sp + (q2 + t1)*(sp + t1) + 
          (-sp + t1)*u1))/(m2 + s4) + log3A3xb*(2*m2*s*sp - 
         (s - s4)*(q2*(sp + t1) - sp*u1))))/((-4*m2*s + (s - s4)^2)^(3/2)*s4)
 
psIA3[-1, 0, 1, 1] = (-2*log3A3xb*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*
       s4) + sp*((-2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) + 
       (2*log4A3bc*Pi*(m2 + s4))/(s*s4*t1)) + (2*log3A3xc*Pi*(m2 + s4))/
      (s4*Sqrt[-4*q2*t + (sp + u1p)^2])
 
psIA3[-1, 1, 0, 0] = (2*Pi*(m2 + s4)*
      ((s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*
         Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2])/(m2 + s4) + 
       log3A3xa*(2*m2*sp*(sp + u1) + t1*(-(u1*(sp + u1)) + 
           q2*(2*(sp + t1) + u1)))))/
     (s4*(-4*q2*(m2 + t1) + (-q2 + sp + u1)^2)^(3/2))
 
psIA3[-1, 1, 0, 1] = 
    ((-2*Pi*(m2 + s4)*((s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + 
            (sp - t1)*u1)*Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2])/
          (m2 + s4) + log3A3xa*(2*m2*sp*(sp + u1) + 
           t1*(-(u1*(sp + u1)) + q2*(2*(sp + t1) + u1)))))/
       (s4*(-4*q2*(m2 + t1) + (-q2 + sp + u1)^2)^(3/2)) + 
      (2*Pi*(m2 + s4)*(log3A3xc*(-2*m2*q2*sp + q2^2*(sp + t1) - 
           2*q2*(sp + t1)^2 - q2*(2*sp + t1)*u1 + s4*sp*(sp + u1)) + 
         (s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*
           Sqrt[-4*q2*t + (sp + u1p)^2])/(m2 + s4)))/
       (s4*(-4*q2*t + (sp + u1p)^2)^(3/2)))/(sp + u1p)
 
psIA3[-1, 1, 1, 0] = (2*log3A3xb*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*
       s4) + (2*log3A3xa*Pi*(m2 + s4))/
      (s4*Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2]) + 
     (2*log4S2A3*Pi*(m2 + s4)*u1p)/(s4*Sqrt[-4*m2*s*u1p*(sp + u1p) + 
         (q2*(s - s4) + s4*u1p)^2])
 
psIA3[-1, 1, 1, 1] = (-2*log4S2A3*Pi*(m2 + s4))/
      (s4*Sqrt[-4*m2*s*u1p*(sp + u1p) + (q2*(s - s4) + s4*u1p)^2]) + 
     ((-2*log3A3xa*Pi*(m2 + s4))/(s4*Sqrt[-4*q2*(m2 + t1) + 
           (-q2 + sp + u1)^2]) - (2*log3A3xc*Pi*(m2 + s4))/
        (s4*Sqrt[-4*q2*t + (sp + u1p)^2]))/(sp + u1p) + 
     (sp*((2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) - (2*log4A3bc*Pi*(m2 + s4))/
         (s*s4*t1) + (2*log4S2A3*Pi*(m2 + s4))/
         (s4*Sqrt[-4*m2*s*u1p*(sp + u1p) + (q2*(s - s4) + s4*u1p)^2])))/
      (sp + u1p)
 
psIA3[0, -1, 0, 1] = -2*Pi - (2*log3A3xc*Pi*(m2 + s4)*(sp + u1p))/
      (s4*Sqrt[-4*q2*t + (sp + u1p)^2])
 
psIA3[0, -1, 1, 0] = -2*Pi + (2*Pi*(m2 + s4)*
       ((Sqrt[-4*m2*s + (s - s4)^2]*s4*(-2*m2*sp + (q2 + t1)*(sp + t1) + 
           (-sp + t1)*u1))/(m2 + s4) + log3A3xb*(2*m2*s*sp - 
          (s - s4)*(q2*(sp + t1) - sp*u1))))/((-4*m2*s + (s - s4)^2)^(3/2)*
       s4) - (2*log3A3xb*Pi*(m2 + s4)*u1p)/(Sqrt[-4*m2*s + (s - s4)^2]*s4)
 
psIA3[0, -1, 1, 1] = (-2*log3A3xb*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*
       s4) + ((-2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) + 
       (2*log4A3bc*Pi*(m2 + s4))/(s*s4*t1))*(sp + u1p)
 
psIA3[0, 0, -1, 1] = 2*Pi - (2*Pi*(m2 + s4)*
       (log3A3xc*(2*m2*q2*sp + t1*(q2^2 + sp*(sp + u1) - q2*(2*t1 + u1))) + 
        (s4*(2*m2*sp - q2*(sp + t1) + sp*(sp + t1) + (sp - t1)*u1)*
          Sqrt[-4*q2*t + (sp + u1p)^2])/(m2 + s4)))/
      (s4*(-4*q2*t + (sp + u1p)^2)^(3/2))
 
psIA3[0, 0, 0, 0] = 2*Pi
 
psIA3[0, 0, 0, 1] = (2*log3A3xc*Pi*(m2 + s4))/
     (s4*Sqrt[-4*q2*t + (sp + u1p)^2])
 
psIA3[0, 0, 1, -1] = 2*Pi + (2*Pi*(m2 + s4)*
       (log3A3xb*s*(2*m2*sp + (s - s4)*t1) - (Sqrt[-4*m2*s + (s - s4)^2]*s4*
          (-2*m2*sp + (q2 + t1)*(sp + t1) + (-sp + t1)*u1))/(m2 + s4)))/
      ((-4*m2*s + (s - s4)^2)^(3/2)*s4)
 
psIA3[0, 0, 1, 0] = (2*log3A3xb*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*s4)
 
psIA3[0, 0, 1, 1] = (2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) - 
     (2*log4A3bc*Pi*(m2 + s4))/(s*s4*t1)
 
psIA3[0, 1, 0, -1] = -2*Pi - (2*log3A3xa*Pi*(m2 + s4)*(sp + u1p))/
      (s4*Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2])
 
psIA3[0, 1, 0, 0] = (2*log3A3xa*Pi*(m2 + s4))/
     (s4*Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2])
 
psIA3[0, 1, 0, 1] = ((-2*log3A3xa*Pi*(m2 + s4))/
       (s4*Sqrt[-4*q2*(m2 + t1) + (-q2 + sp + u1)^2]) - 
      (2*log3A3xc*Pi*(m2 + s4))/(s4*Sqrt[-4*q2*t + (sp + u1p)^2]))/(sp + u1p)
 
psIA3[0, 1, 1, -1] = (-2*log3A3xb*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*
       s4) - (2*log4S2A3*Pi*(m2 + s4)*(sp + u1p))/
      (s4*Sqrt[-4*m2*s*u1p*(sp + u1p) + (q2*(s - s4) + s4*u1p)^2])
 
psIA3[0, 1, 1, 0] = (2*log4S2A3*Pi*(m2 + s4))/
     (s4*Sqrt[-4*m2*s*u1p*(sp + u1p) + (q2*(s - s4) + s4*u1p)^2])
 
psIA3[0, 1, 1, 1] = ((-2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) + 
      (2*log4A3bc*Pi*(m2 + s4))/(s*s4*t1) - (2*log4S2A3*Pi*(m2 + s4))/
       (s4*Sqrt[-4*m2*s*u1p*(sp + u1p) + (q2*(s - s4) + s4*u1p)^2]))/
     (sp + u1p)
 
psIA3[1, -1, 0, 0] = (2*Pi*(m2 + s4)*t1*u1*
      ((s4*(2*m2*sp + (-q2 + sp)*(sp + t1) + (sp - t1)*u1))/
        ((m2 + s4)*t1*u1) + 2/\[Epsilon]))/(s4*(sp + t1)^2)
 
psIA3[1, -1, 0, 1] = (-2*Pi*(m2 + s4)*(sp + u1p)*(log2A3ac + 2/\[Epsilon]))/
      (s4*(s4*sp - q2*(sp + t1))) + (4*Pi*(m2 + s4))/(s4*(sp + t1)*\[Epsilon])
 
psIA3[1, -1, 1, -1] = 
    2*Pi + (2*Pi*(m2 + s4)*(log3A3xb*s*(2*m2*sp + (s - s4)*t1) - 
        (Sqrt[-4*m2*s + (s - s4)^2]*s4*(-2*m2*sp + (q2 + t1)*(sp + t1) + 
           (-sp + t1)*u1))/(m2 + s4)))/((-4*m2*s + (s - s4)^2)^(3/2)*s4) - 
     (2*Pi*(m2 + s4)*sp*u1p*(log2A3ab + 2/\[Epsilon]))/
      (q2*s4*(sp + t1) - s4*sp*u1) + 
     u1p*((2*log3A3xb*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*s4) + 
       (4*Pi*(m2 + s4))/(s4*(sp + t1)*\[Epsilon])) - 
     (2*Pi*(-2*m2*sp - (-q2 + sp)*(sp + t1) - (sp - t1)*u1 + 
        (2*(m2 + s4)*(s4*sp - q2*(sp + t1)))/(s4*\[Epsilon])))/(sp + t1)^2
 
psIA3[1, -1, 1, 0] = (2*log3A3xb*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*
       s4) + (2*Pi*(m2 + s4)*u1p*(log2A3ab + 2/\[Epsilon]))/
      (q2*s4*(sp + t1) - s4*sp*u1) + (4*Pi*(m2 + s4))/
      (s4*(sp + t1)*\[Epsilon])
 
psIA3[1, -1, 1, 1] = (2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) - 
     (2*log4A3bc*Pi*(m2 + s4))/(s*s4*t1) + 
     (u1p*((2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) - (2*log4A3bc*Pi*(m2 + s4))/
         (s*s4*t1) - (2*Pi*(m2 + s4)*(log2A3ab + 2/\[Epsilon]))/
         (q2*s4*(sp + t1) - s4*sp*u1) - 
        (2*Pi*(m2 + s4)*(log2A3ac + 2/\[Epsilon]))/
         (s4*(s4*sp - q2*(sp + t1)))))/sp - 
     (2*Pi*(m2 + s4)*(log2A3ac + 2/\[Epsilon]))/(s4*(s4*sp - q2*(sp + t1)))
 
psIA3[1, 0, -1, 0] = (2*Pi*(-2*m2*sp + (q2 + t1)*(sp + t1) - (sp - t1)*u1 + 
       (2*(m2 + s4)*(-(q2*(sp + t1)) + sp*u1))/(s4*\[Epsilon])))/(sp + t1)^2
 
psIA3[1, 0, -1, 1] = (2*log3A3xc*Pi*(m2 + s4))/
      (s4*Sqrt[-4*q2*t + (sp + u1p)^2]) + 
     (2*Pi*(m2 + s4)*sp*(log2A3ac + 2/\[Epsilon]))/
      (s4*(s4*sp - q2*(sp + t1))) - (4*Pi*(m2 + s4))/(s4*(sp + t1)*\[Epsilon])
 
psIA3[1, 0, 0, -1] = (2*Pi*(-2*m2*sp - (-q2 + sp)*(sp + t1) - (sp - t1)*u1 + 
       (2*(m2 + s4)*(s4*sp - q2*(sp + t1)))/(s4*\[Epsilon])))/(sp + t1)^2
 
psIA3[1, 0, 0, 0] = (-4*Pi*(m2 + s4))/(s4*(sp + t1)*\[Epsilon])
 
psIA3[1, 0, 0, 1] = (2*Pi*(m2 + s4)*(log2A3ac + 2/\[Epsilon]))/
     (s4*(s4*sp - q2*(sp + t1)))
 
psIA3[1, 0, 1, -1] = (-2*log3A3xb*Pi*(m2 + s4))/(Sqrt[-4*m2*s + (s - s4)^2]*
       s4) + (2*Pi*(m2 + s4)*sp*(log2A3ab + 2/\[Epsilon]))/
      (q2*s4*(sp + t1) - s4*sp*u1) - (4*Pi*(m2 + s4))/
      (s4*(sp + t1)*\[Epsilon])
 
psIA3[1, 0, 1, 0] = (-2*Pi*(m2 + s4)*(log2A3ab + 2/\[Epsilon]))/
     (q2*s4*(sp + t1) - s4*sp*u1)
 
psIA3[1, 0, 1, 1] = ((-2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) + 
      (2*log4A3bc*Pi*(m2 + s4))/(s*s4*t1) + 
      (2*Pi*(m2 + s4)*(log2A3ab + 2/\[Epsilon]))/(q2*s4*(sp + t1) - 
        s4*sp*u1) + (2*Pi*(m2 + s4)*(log2A3ac + 2/\[Epsilon]))/
       (s4*(s4*sp - q2*(sp + t1))))/sp
 
psIA3[1, 1, 0, -1] = (-2*Pi*(m2 + s4)*(sp + u1p)*(log2A3aa + 2/\[Epsilon]))/
      (s4*t1*u1) + (4*Pi*(m2 + s4))/(s4*(sp + t1)*\[Epsilon])
 
psIA3[1, 1, 0, 0] = (2*Pi*(m2 + s4)*(log2A3aa + 2/\[Epsilon]))/(s4*t1*u1)
 
psIA3[1, 1, 0, 1] = ((-2*Pi*(m2 + s4)*(log2A3aa + 2/\[Epsilon]))/(s4*t1*u1) - 
      (2*Pi*(m2 + s4)*(log2A3ac + 2/\[Epsilon]))/(s4*(s4*sp - q2*(sp + t1))))/
     (sp + u1p)
 
psIA3[1, 1, 1, -1] = (1 + sp/u1p)*((-2*log4S2A3*Pi*(m2 + s4))/
        (s4*Sqrt[-4*m2*s*u1p*(sp + u1p) + (q2*(s - s4) + s4*u1p)^2]) + 
       (2*Pi*(m2 + s4)*(log2A3aa + 2/\[Epsilon]))/(s4*t1*u1)) - 
     (2*Pi*(m2 + s4)*sp*(log2A3ab + 2/\[Epsilon]))/
      ((q2*s4*(sp + t1) - s4*sp*u1)*u1p)
 
psIA3[1, 1, 1, 0] = ((2*log4S2A3*Pi*(m2 + s4))/
       (s4*Sqrt[-4*m2*s*u1p*(sp + u1p) + (q2*(s - s4) + s4*u1p)^2]) - 
      (2*Pi*(m2 + s4)*(log2A3aa + 2/\[Epsilon]))/(s4*t1*u1) + 
      (2*Pi*(m2 + s4)*(log2A3ab + 2/\[Epsilon]))/(q2*s4*(sp + t1) - 
        s4*sp*u1))/u1p
 
psIA3[1, 1, 1, 1] = (1/(sp*u1p) - 1/(sp*(sp + u1p)))*
      ((-2*log4S2A3*Pi*(m2 + s4))/(s4*Sqrt[-4*m2*s*u1p*(sp + u1p) + 
           (q2*(s - s4) + s4*u1p)^2]) + 
       (2*Pi*(m2 + s4)*(log2A3aa + 2/\[Epsilon]))/(s4*t1*u1)) + 
     ((2*log4A3bb*Pi*(m2 + s4))/(s*s4*t1) - (2*log4A3bc*Pi*(m2 + s4))/
        (s*s4*t1) - (2*Pi*(m2 + s4)*(log2A3ac + 2/\[Epsilon]))/
        (s4*(s4*sp - q2*(sp + t1))))/(sp*(sp + u1p)) - 
     (2*Pi*(m2 + s4)*(log2A3ab + 2/\[Epsilon]))/
      (sp*(q2*s4*(sp + t1) - s4*sp*u1)*u1p)
