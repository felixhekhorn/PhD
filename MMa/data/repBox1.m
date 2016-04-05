{PaVe[3, muR, 0][0][Sqr[-k1], Sqr[-q], Sqr[-k1 - q], m2, m2, m2] -> 
  ((I/32)*(6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/(Pi^2*(q2 - s)), 
 PaVe[3, muR, 0][1][Sqr[-k1], Sqr[-q], Sqr[-k1 - q], m2, m2, m2] -> 
  ((-I/16)*(EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/(Pi^2*(-q2 + s)) + 
   ((I/16)*(q2 + s)*(-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - 
      \[Beta]*Log[\[Chi]]))/(Pi^2*(q2 - s)^2) - 
   ((I/8)*q2*(-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - 
      \[Beta]q*Log[\[Chi]q]))/(Pi^2*(q2 - s)^2) + 
   ((I/32)*s*(6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/(Pi^2*(q2 - s)^2), 
 PaVe[3, muR, 0][2][Sqr[-k1], Sqr[-q], Sqr[-k1 - q], m2, m2, m2] -> 
  ((-I/16)*(-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - 
      \[Beta]*Log[\[Chi]]))/(Pi^2*(-q2 + s)) - 
   ((I/16)*(-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - 
      \[Beta]q*Log[\[Chi]q]))/(Pi^2*(q2 - s)), 
 PaVe[4, muR, 0][0][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  (I*Log[\[Chi]])/((8*m2*Pi^2*s*\[Beta] - 8*Pi^2*s*u*\[Beta])*\[Epsilon]) + 
   ((I/16)*(3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2 - u)*\[Beta]), PaVe[4, muR, 0][1][Sqr[p1], Sqr[-k1], Sqr[-q], 
   Sqr[-k1 + p1 - q], Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((-I/64)*(q2 - s)*(6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/32)*(q2 - s)*(m2 - u)*(zeta2 - PolyLog[2, u/m2]))/
    (Pi^2*(-m2 + u)*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/32)*(q2^2 + m2*(q2 + s) - s*u - q2*(s + u))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/32)*(-2*m2 - q2 + s + 2*u)*(3*zeta2 - 
      Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))*\[Beta]) - 
   ((I/64)*(-2*m2 - q2 + s + 2*u)*(8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 
      2*Log[4*Pi]*Log[\[Chi]] + 2*Log[m2/\[Mu]2]*Log[\[Chi]] + 
      4*Log[1 - \[Chi]]*Log[\[Chi]] - Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))*\[Beta]), 
 PaVe[4, muR, 0][2][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/64)*(m2*(q2 + s) + q2*(s - u) - s*(s + u))*(6*zeta2 - Log[\[Chi]]^2 + 
      Log[\[Chi]q]^2))/(Pi^2*(q2 - s)*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/32)*(m2^2 + m2*(-2*q2 + s - 2*u) + u*(s + u))*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/32)*(-m2^2 + q2*(-s + u) - u*(s + u) + m2*(3*q2 + s + 2*u))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/32)*(m2*(2*q2 + 3*s) - s*(s + u))*(3*zeta2 - 
      Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))*
     \[Beta]) - ((I/64)*(-(m2*(2*q2 + 3*s)) + s*(s + u))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))*\[Beta]), 
 PaVe[4, muR, 0][3][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/64)*(m2 - u)*(6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/32)*(m2 - u)^2*(zeta2 - PolyLog[2, u/m2]))/
    (Pi^2*(-m2 + u)*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/32)*(-m2^2 + (q2 - 2*s - u)*u + m2*(q2 + 2*u))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/32)*(2*m2*q2 - m2*s - s*u)*(3*zeta2 - 
      Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))*
     \[Beta]) - ((I/64)*(m2*(-2*q2 + s) + s*u)*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))*\[Beta]), 
 PaVe[4, muR, 0][0, 0][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/128)*(2*m2*q2 - m2*s - s*u)*(6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/64)*(m2 - u)*(2*m2*q2 - m2*s - s*u)*(zeta2 - PolyLog[2, u/m2]))/
    (Pi^2*(-m2 + u)*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/64)*(m2 - u)*(m2*(2*q2 + s) + s*(-q2 + u))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/64)*(4*m2 - s)*(m2 - u)*(3*zeta2 - 
      Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))*\[Beta]) - 
   ((I/128)*(4*m2 - s)*(m2 - u)*(8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 
      2*Log[4*Pi]*Log[\[Chi]] + 2*Log[m2/\[Mu]2]*Log[\[Chi]] + 
      4*Log[1 - \[Chi]]*Log[\[Chi]] - Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))*\[Beta]), 
 PaVe[4, muR, 0][1, 1][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((-I/16)*(m2*(2*q2 - 3*s) + s*(-q2 + s + u))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2]))/(Pi^2*(4*m2 - s)*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/16)*(m2^3*(2*q2 + 3*s) + s*(q2 - u)*u*(-q2 + s + u) + 
      m2^2*(4*q2^2 - 2*q2*(s + 2*u) - s*(s + 7*u)) + 
      m2*(2*q2^3 - q2^2*(3*s + 4*u) + s*u*(2*s + 5*u) + q2*(s^2 + 2*u^2)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(-q2^3 + m2^2*s + s*u^2 + q2^2*(s + u) + 
      m2*(q2^2 - 2*q2*s - 2*s*u))*(-2*u + EulerGamma*u - u*Log[4*Pi] - 
      m2*Log[(m2 - u)/m2] + u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*u*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - ((I/16)*s*(2*m2 + q2 - s - 2*u)*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(4*m2 - s)*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*q2*(q2^2 + m2*(q2 + s) - s*u - q2*(s + u))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + ((I/64)*(q2 - s)*s*(2*m2 + q2 - s - 2*u)*
     (m2 - u)*(6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/32)*(q2 - s)*s*(2*m2 + q2 - s - 2*u)*(m2 - u)^2*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2 - u)*(2*m2^4*s*(q2 + s) - m2^3*s*(-3*q2^2 + 4*q2*(s + 2*u) + 
        s*(s + 8*u)) - m2*s*(q2^4 - 4*q2^3*(s - 2*u) + 4*q2*u^2*(s + 2*u) + 
        s*u^2*(3*s + 8*u) + q2^2*(3*s^2 - 4*s*u - 17*u^2)) + 
      s*(q2 - u)*(q2^4 - 2*q2^3*(s + 2*u) - s*u^2*(s + 2*u) - 
        2*q2*u*(s^2 + s*u + u^2) + q2^2*(s^2 + 6*s*u + 5*u^2)) + 
      m2^2*(4*q2^4 - 5*q2^3*s - 13*q2^2*s*u + 3*s^2*u*(s + 4*u) + 
        q2*s*(3*s^2 + 8*s*u + 12*u^2)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(3/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/32)*(m2 - u)*(2*m2^2*s + s*(q2^2 + s^2 + 2*s*u + 2*u^2 - 
        2*q2*(s + u)) - 2*m2*(q2^2 - 3*q2*s + 2*s*(s + u)))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]) - ((I/64)*(m2 - u)*(2*m2^2*s + 
      s*(q2^2 + s^2 + 2*s*u + 2*u^2 - 2*q2*(s + u)) - 
      2*m2*(q2^2 - 3*q2*s + 2*s*(s + u)))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*\[Beta]), 
 PaVe[4, muR, 0][1, 2][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((-I/16)*m2*(-2*m2^2 + s^2 - s*u - 2*u^2 + q2*(-s + u) + 
      m2*(3*q2 - 3*s + 4*u))*(-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2 - u)*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/16)*(-2*m2^4 + s*(q2 - u)*u*(-q2 + s + u) + m2^3*(5*q2 + 4*s + 6*u) - 
      m2^2*(-4*q2^2 + s^2 + 9*s*u + 6*u^2 + 2*q2*(2*s + u)) + 
      m2*(q2^3 - 2*q2^2*s + q2*(s^2 - 2*s*u - 3*u^2) + 
        2*u*(s^2 + 3*s*u + u^2)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2]))/(Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(m2^3*s + q2*(q2 - 2*s - u)*u^2 + 
      m2^2*(q2^2 - 2*s*u - q2*(2*s + u)) + m2*(-q2^3 + 2*q2*u^2 + s*u^2 + 
        q2^2*(s + 2*u)))*(-2*u + EulerGamma*u - u*Log[4*Pi] - 
      m2*Log[(m2 - u)/m2] + u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*(m2 - u)*u*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(m2*(2*q2 + 3*s) - s*(s + u))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/(Pi^2*(4*m2 - s)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*q2*(-m2^2 + q2*(-s + u) - u*(s + u) + m2*(3*q2 + s + 2*u))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/64)*(-(m2^3*s*(q2 + s)) + m2^2*(q2^3 - q2^2*s - 3*q2*s*(s - u) + 
        3*s^2*(s + u)) + s*u*(q2^2*s + s*(s + u)^2 + 
        q2*(-2*s^2 - 2*s*u + u^2)) - m2*(q2^2*s*(s - u) + q2^3*u + 
        q2*s*(-2*s^2 - 5*s*u + 3*u^2) + s^2*(s^2 + 5*s*u + 3*u^2)))*
     (6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(q2 - s)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) + ((I/32)*(-(m2^4*s) - s*u^2*(-(q2*s) + (s + u)^2) + 
      m2^3*(q2^2 + 4*q2*s + s*(-3*s + 4*u)) + 
      m2^2*(2*q2^3 - 2*q2^2*(s + u) - q2*s*(s + 8*u) + 
        s*(s^2 + 4*s*u - 6*u^2)) + m2*u*(q2^2*(-4*s + u) + 
        2*q2*s*(3*s + 2*u) + s*(-2*s^2 + s*u + 4*u^2)))*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/32)*(m2 - u)*(m2^5*s - m2^4*(q2^2 + 7*q2*s + s*(3*s + 5*u)) + 
      s*(q2 - u)*(q2^3*s + u^2*(s + u)^2 + q2*u*(2*s^2 + s*u - 2*u^2) + 
        q2^2*(-s^2 - 4*s*u + u^2)) + m2^3*(q2^3 + q2^2*(5*s + 3*u) + 
        2*q2*s*(4*s + 9*u) + s*(s^2 + 11*s*u + 10*u^2)) - 
      m2^2*(3*q2^4 - q2^3*(s + 2*u) + q2^2*(6*s^2 - 11*s*u + 3*u^2) + 
        s*u*(3*s^2 + 15*s*u + 10*u^2) + q2*s*(3*s^2 + 11*s*u + 12*u^2)) + 
      m2*(-q2^5 + 3*q2^4*u + q2^3*(10*s - 3*u)*u + 2*q2*s*(s - u)*u^2 + 
        s*u^2*(3*s^2 + 9*s*u + 5*u^2) + q2^2*(3*s^3 - 7*s^2*u - 13*s*u^2 + 
          u^3)))*(-zeta2 + 
      2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
          (m2 - u))] + PolyLog[2, (m2 - q2 + u - 
         Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/(m2 - q2 + u + 
         Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(3/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/32)*(m2 - u)*(m2^2*(4*q2 + 5*s) + s*(-(q2*s) + (s + u)^2) + 
      m2*(q2^2 + 2*q2*(s - 2*u) - s*(5*s + 6*u)))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]) - ((I/64)*(m2 - u)*(m2^2*(4*q2 + 5*s) + 
      s*(-(q2*s) + (s + u)^2) + m2*(q2^2 + 2*q2*(s - 2*u) - s*(5*s + 6*u)))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*\[Beta]), 
 PaVe[4, muR, 0][1, 3][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/16)*m2*(2*m2 + q2 - s - 2*u)*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2]))/(Pi^2*(4*m2 - s)*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/16)*(-2*m2^4 + s*(q2 - u)*u*(-q2 + s + u) + m2^3*(q2 + 6*u) + 
      m2^2*(q2*(s + 2*u) - u*(5*s + 6*u)) + 
      m2*(q2^3 - q2^2*s - 3*q2*u*(s + u) + u*(s^2 + 6*s*u + 2*u^2)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(-q2^2 - m2*(q2 + s) + s*u + q2*(s + u))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + ((I/16)*(m2*(-2*q2 + s) + s*u)*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(4*m2 - s)*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*q2*(-m2^2 + (q2 - 2*s - u)*u + m2*(q2 + 2*u))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/64)*(m2 - u)*(m2^2*s + s*u^2 - m2*(q2^2 - 2*q2*s + s*(s + 2*u)))*
     (6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2 - u)^2*(m2^2*s + s*u^2 - m2*(q2^2 - 2*q2*s + s*(s + 2*u)))*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/32)*(m2 - u)*(m2^5*s - m2^4*(q2^2 + q2*s - s*(s - 5*u)) + 
      s*(q2 - u)*u^2*(q2^2 + 2*s^2 + 4*s*u + u^2 - 2*q2*(2*s + u)) + 
      m2^3*(3*q2^3 - 3*q2*s^2 + q2^2*(s + 3*u) + s*u*(s + 10*u)) - 
      m2^2*(q2^4 + 3*q2^3*s - 6*q2*s*u^2 + s*u^2*(9*s + 10*u) - 
        q2^2*(3*s^2 + s*u - 3*u^2)) + m2*(-q2^5 + q2^4*(2*s + 3*u) - 
        q2*s*u^2*(5*s + 8*u) + q2^2*u*(-s^2 + s*u + u^2) - 
        q2^3*(s^2 + 3*u^2) + s*u^2*(2*s^2 + 11*s*u + 5*u^2)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(3/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/32)*(m2 - u)*(m2^2*(4*q2 - 3*s) + s*u^2 + 
      m2*(q2^2 - 2*q2*(s + 2*u) + s*(s + 2*u)))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]) - ((I/64)*(m2 - u)*(m2^2*(4*q2 - 3*s) + s*u^2 + 
      m2*(q2^2 - 2*q2*(s + 2*u) + s*(s + 2*u)))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*\[Beta]), 
 PaVe[4, muR, 0][2, 2][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/16)*m2*(m2^3*(2*q2 + 7*s) - s*u*(s + u)^2 - 
      m2^2*(4*q2*(2*s + u) + s*(-2*s + 15*u)) + 
      m2*(2*q2*(s^2 + u^2) + s*(-s^2 + 8*s*u + 9*u^2)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2 - u)^2*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(m2^4*(2*q2 + 5*s) - s^2*(q2 - u)*u*(-q2 + s + u) - 
      m2^3*(4*q2^2 + 11*q2*s + 5*s^2 + 4*q2*u + 13*s*u) - 
      m2*s*(q2^3 + q2^2*(-s + u) + q2*(s^2 - 4*s*u - 5*u^2) + 
        u*(2*s^2 + 7*s*u + 3*u^2)) + m2^2*(2*q2^3 - q2^2*(s + 4*u) + 
        2*q2*(3*s^2 - s*u + u^2) + s*(s^2 + 11*s*u + 11*u^2)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/16)*(EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(q2 - s)*(m2 - u)) - 
   ((I/16)*(q2^2*s*u^2 - q2*u^4 + m2^4*(s + u) + u^4*(s + u) - 
      m2*u*(q2^3 - q2^2*u + 3*q2*u*(2*s + u) + 2*u^2*(s + 2*u)) + 
      m2^3*(q2^2 - 2*u*(s + 2*u) - q2*(2*s + 5*u)) + 
      m2^2*(-q2^3 + 9*q2*u^2 + 2*u^2*(s + 3*u) + q2^2*(s + 6*u)))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/(Pi^2*(m2 - u)^2*u*
     (m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(-2*m2^2*(q2 + s)^2 - s*(-(q2*s^2) + q2^2*u + s^2*(s + u)) + 
      m2*(q2^3 - q2*s*(s - 4*u) - 2*q2^2*(s - u) + 2*s^2*(2*s + u)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(4*m2 - s)*(q2 - s)^2*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*q2*(m2^3*(q2 + s) - s*u*(s + u)^2 - 
      m2^2*(3*q2^2 - q2*s + 2*s^2 + 3*q2*u + 3*s*u) + 
      q2^2*(s^2 - 6*s*u + u^2) - q2*(s^3 - 5*s^2*u - 5*s*u^2 + u^3) + 
      m2*(4*q2^3 + 3*q2*(s - u)^2 + q2^2*(-6*s + 2*u) + 
        s*(s^2 + 4*s*u + 3*u^2)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/(Pi^2*(q2 - s)^2*
     (m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/64)*(m2^3*(-2*q2^3 + q2^2*s + 3*s^3) + 
      m2^2*(4*q2^4 + 2*q2*s^2*(2*s - u) + q2^2*s*(4*s - u) + 
        q2^3*(-8*s + 4*u) - s^3*(4*s + 7*u)) + 
      m2*(-2*q2^3*u*(2*s + u) - 2*q2*s^2*(s^2 + 4*s*u - 2*u^2) + 
        q2^2*s*(s^2 + 6*s*u - u^2) + s^3*(s^2 + 6*s*u + 5*u^2)) - 
      s*u*(s^2*(s + u)^2 + q2^2*(s^2 - 2*s*u - u^2) - 2*q2*(s^3 - s*u^2)))*
     (6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(q2 - s)^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) + ((I/32)*(-(m2^5*(2*q2 + 3*s)) + s*u^3*(s + u)^2 - 
      m2*u^2*(3*s^3 + 10*s^2*u + 2*q2*u^2 + s*u*(4*q2 + 7*u)) + 
      m2^4*(4*q2^2 + 8*q2*(s + u) + s*(-4*s + 13*u)) + 
      m2^3*(4*q2^3 - 4*q2*u*(5*s + 3*u) - 2*q2^2*(3*s + 4*u) + 
        s*(s^2 + 2*s*u - 22*u^2)) + m2^2*u*(q2^2*(-6*s + 4*u) + 
        4*q2*(3*s^2 + 4*s*u + 2*u^2) + s*(-3*s^2 + 10*s*u + 18*u^2)))*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(m2 - u)*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/32)*(m2 - u)*(m2^5*(2*q2 + 3*s) - m2^4*(10*q2^2 + 17*q2*s + 4*s^2 + 
        8*q2*u + 13*s*u) + s*(q2 - u)*(u^2*(s + u)^2 + 2*q2*u*(s^2 - u^2) + 
        q2^2*(-s^2 - 2*s*u + u^2)) + m2^3*(14*q2^3 + q2^2*(23*s + 14*u) + 
        4*q2*(3*s^2 + 8*s*u + 3*u^2) + s*(s^2 + 14*s*u + 22*u^2)) + 
      m2*(q2^4*(4*s - 2*u) + 2*q2*u^3*(-4*s + u) + q2^3*(4*s^2 + 6*u^2) + 
        s*u^2*(3*s^2 + 10*s*u + 7*u^2) + q2^2*(3*s^3 - 10*s^2*u - 3*s*u^2 - 
          6*u^3)) - m2^2*(10*q2^4 + q2^3*(13*s - 12*u) + 
        q2^2*(12*s^2 - 15*s*u - 2*u^2) + 3*s*u*(s^2 + 6*s*u + 6*u^2) + 
        q2*(3*s^3 + 14*s^2*u + 10*s*u^2 + 8*u^3)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(3/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2 - u)*(2*m2^3*s - s^2*(s + u)^2 + 
      2*m2*s*(3*s^2 + 4*s*u + u^2 + q2*(2*s + u)) - 
      m2^2*(2*q2^2 + 14*q2*s + s*(9*s + 4*u)))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]) + ((I/64)*(m2 - u)*(2*m2^3*s - s^2*(s + u)^2 + 
      2*m2*s*(3*s^2 + 4*s*u + u^2 + q2*(2*s + u)) - 
      m2^2*(2*q2^2 + 14*q2*s + s*(9*s + 4*u)))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]), PaVe[4, muR, 0][2, 3][Sqr[p1], Sqr[-k1], Sqr[-q], 
   Sqr[-k1 + p1 - q], Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/16)*m2*(m2*(2*q2 + 3*s) - s*(s + u))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2]))/(Pi^2*(4*m2 - s)*s*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(m2^4*(2*q2 + s) - s^2*(q2 - u)*u*(-q2 + s + u) + 
      m2^3*(-4*q2^2 + q2*(s - 4*u) - 5*s*u) + 
      m2^2*(2*q2^3 - q2^2*(s + 4*u) + s*u*(5*s + 7*u) + 
        q2*(-s^2 + 2*s*u + 2*u^2)) - m2*s*(q2^3 + q2^2*(-s + u) - 
        q2*u*(3*s + 5*u) + u*(s^2 + 6*s*u + 3*u^2)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(m2^2 + q2*(s - u) + u*(s + u) - m2*(3*q2 + s + 2*u))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(2*m2^2*(q2 + s) + q2*s*u - m2*(q2^2 - q2*s + s^2 + 2*q2*u + 
        2*s*u))*(-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - 
      \[Beta]*Log[\[Chi]]))/(Pi^2*(4*m2 - s)*(-q2 + s)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*q2*(m2^3 + m2^2*(-3*q2 + s - 3*u) + 
      m2*(2*q2^2 - q2*s + 2*q2*u - 2*s*u + 3*u^2) + 
      u*(2*s^2 + s*u - u^2 + q2*(-3*s + u)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(q2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/64)*(-(m2^3*(2*q2 + s)) + s*u^2*(s + u) + 
      m2^2*(2*q2^2 - 2*q2*s + s^2 + 4*q2*u + 3*s*u) - 
      m2*u*(3*s*u + 2*q2*(s + u)))*(6*zeta2 - Log[\[Chi]]^2 + 
      Log[\[Chi]q]^2))/(Pi^2*(m2^2*s + s*u*(-q2 + s + u) + 
       m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2 - u)*(m2^3*(2*q2 + s) - s*u^2*(s + u) - 
      m2^2*(2*q2^2 - 2*q2*s + s^2 + 4*q2*u + 3*s*u) + 
      m2*u*(3*s*u + 2*q2*(s + u)))*(zeta2 - PolyLog[2, u/m2]))/
    (Pi^2*(-m2 + u)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) + ((I/32)*(m2 - u)*(m2^5*(2*q2 + s) - 
      m2^4*(8*q2^2 - s*(s - 5*u) + q2*(s + 8*u)) + 
      s*(q2 - u)*u*(q2^2*(-s + u) - 2*q2*u*(s + u) + 
        u*(2*s^2 + 3*s*u + u^2)) + m2*(2*q2^4*(s - u) + 
        q2^2*u*(2*s^2 - 7*s*u - 6*u^2) + q2*u^2*(-7*s^2 - 4*s*u + 2*u^2) + 
        s*u^2*(2*s^2 + 10*s*u + 5*u^2) + q2^3*(-s^2 + 4*s*u + 6*u^2)) - 
      m2^2*(6*q2^4 + 3*q2^3*(s - 2*u) + 10*s*u^2*(s + u) + 
        q2^2*(-3*s^2 + 7*s*u - 4*u^2) + q2*u*(3*s^2 + 2*s*u + 8*u^2)) + 
      m2^3*(12*q2^3 + 2*s*u*(s + 5*u) + q2^2*(s + 10*u) + 
        q2*(-3*s^2 + 4*s*u + 12*u^2)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(3/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2 - u)*(2*m2^3*s - s^2*u*(s + u) + 
      m2*s*(-s^2 + 4*s*u + 2*u^2 + 2*q2*(s + u)) - 
      m2^2*(2*q2^2 + 6*q2*s + s*(-3*s + 4*u)))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]) + ((I/64)*(m2 - u)*(2*m2^3*s - s^2*u*(s + u) + 
      m2*s*(-s^2 + 4*s*u + 2*u^2 + 2*q2*(s + u)) - 
      m2^2*(2*q2^2 + 6*q2*s + s*(-3*s + 4*u)))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]), PaVe[4, muR, 0][3, 3][Sqr[p1], Sqr[-k1], Sqr[-q], 
   Sqr[-k1 + p1 - q], Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((-I/16)*m2*(m2*(-2*q2 + s) + s*u)*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2]))/(Pi^2*(4*m2 - s)*s*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(m2^4*(2*q2 - 3*s) - s^2*(q2 - u)*u*(-q2 + s + u) + 
      m2^3*(-4*q2^2 + 5*q2*s + s^2 - 4*q2*u + 3*s*u) + 
      m2*s*(-q2^3 + q2^2*(s - u) + q2*u*(2*s + 5*u) + 
        u*(s^2 - 5*s*u - 3*u^2)) + m2^2*(2*q2^3 + s*u*(-5*s + 3*u) - 
        q2^2*(s + 4*u) + q2*(-2*s^2 + 6*s*u + 2*u^2)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(m2^2 + u*(-q2 + 2*s + u) - m2*(q2 + 2*u))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - ((I/16)*(-2*m2^2 - s*u + m2*(q2 + 2*u))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(4*m2 - s)*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(m2^3 - m2^2*(2*q2 + 3*u) - u*(q2*(s - u) + u*(s + u)) + 
      m2*(q2^2 + q2*u + u*(s + 3*u)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - ((I/64)*(m2 - u)^2*(2*m2*q2 - m2*s - s*u)*
     (6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2 - u)^3*(2*m2*q2 - m2*s - s*u)*(zeta2 - PolyLog[2, u/m2]))/
    (Pi^2*(-m2 + u)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) + ((I/32)*(m2 - u)*(m2^5*(2*q2 - s) + 
      m2^4*(-6*q2^2 + 3*q2*s - 8*q2*u + 3*s*u) + s*(q2 - u)*u^2*
       (q2^2 + 2*s^2 + 4*s*u + u^2 - 2*q2*(2*s + u)) + 
      m2^3*(6*q2^3 - 3*q2^2*(s - 2*u) + 12*q2*u^2 - 2*s*u*(2*s + u)) + 
      m2^2*(-2*q2^4 + q2^3*s + 2*s*(2*s - u)*u^2 + q2^2*u*(-11*s + 6*u) - 
        2*q2*u*(-4*s^2 + 3*s*u + 4*u^2)) + m2*u*(-2*q2^4 + q2^3*(8*s + 6*u) + 
        s*u*(-2*s^2 + 4*s*u + 3*u^2) - q2^2*(4*s^2 + 11*s*u + 6*u^2) + 
        2*q2*(2*s^2*u + u^3)))*(-zeta2 + 
      2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
          (m2 - u))] + PolyLog[2, (m2 - q2 + u - 
         Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/(m2 - q2 + u + 
         Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(3/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2 - u)*(2*m2^3*s - s^2*u^2 + 2*m2*s*u*(q2 + u) - 
      m2^2*(2*q2^2 - 2*q2*s + s*(s + 4*u)))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]) + ((I/64)*(m2 - u)*(2*m2^3*s - s^2*u^2 + 2*m2*s*u*(q2 + u) - 
      m2^2*(2*q2^2 - 2*q2*s + s*(s + 4*u)))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]), PaVe[4, muR, 0][0, 0, 1][Sqr[p1], Sqr[-k1], Sqr[-q], 
   Sqr[-k1 + p1 - q], Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((-I/64)*m2*(-q2 + s)*(-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/64)*m2*(m2 - u)*(q2^2 + m2*(q2 + s) - s*u - q2*(s + u))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/64)*(-(m2^3*s) + s*(q2 - u)*u^2 + m2^2*(-q2^2 + 2*q2*s + s*u) + 
      m2*(q2^3 + q2*s*u + s*u^2 - q2^2*(s + 3*u)))*(-2*u + EulerGamma*u - 
      u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + u*Log[(m2 - u)/m2] + 
      u*Log[m2/\[Mu]2]))/(Pi^2*u*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/64)*s*(-m2 + u)*(-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - 
      \[Beta]*Log[\[Chi]]))/(Pi^2*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/64)*q2*(m2 - u)*(m2*(2*q2 + s) + s*(-q2 + u))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/256)*(2*m2^3*(3*q2 - 2*s)*s + s^2*(q2 - s - 2*u)*u^2 - 
      2*m2*s*u*(2*q2^2 + s^2 - 3*q2*(s + u)) + 
      m2^2*(2*q2^3 - 2*q2^2*s + s^2*(s + 6*u) - q2*s*(s + 12*u)))*
     (6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/128)*(m2 - u)*(m2^3*(-6*q2*s + 4*s^2) + s^2*u^2*(-q2 + s + 2*u) + 
      2*m2*s*u*(2*q2^2 + s^2 - 3*q2*(s + u)) + 
      m2^2*(-2*q2^3 + 2*q2^2*s - s^2*(s + 6*u) + q2*s*(s + 12*u)))*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/128)*(m2 - u)^2*(2*m2^4*s*(3*q2 + 2*s) + s^2*(q2 - u)^3*
       (-q2 + s + 2*u) + m2^3*(2*q2^3 - 4*q2^2*s - s^2*(s + 10*u) - 
        q2*s*(11*s + 18*u)) - m2*s*(-2*q2^4 + s*(s - 2*u)*u^2 + 
        q2*u^2*(7*s + 6*u) + q2^3*(s + 10*u) + 
        q2^2*(3*s^2 - 6*s*u - 14*u^2)) + m2^2*(2*q2^4 + q2^2*s*(9*s - 10*u) - 
        2*q2^3*(2*s + u) + 3*s^2*u*(s + 2*u) + 
        q2*s*(3*s^2 + 11*s*u + 18*u^2)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(3/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/128)*(4*m2 - s)*s*(2*m2 + q2 - s - 2*u)*(m2 - u)^2*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]) + ((I/256)*(4*m2 - s)*s*(2*m2 + q2 - s - 2*u)*(m2 - u)^2*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*\[Beta]), 
 PaVe[4, muR, 0][0, 0, 2][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((-I/64)*m2*(m2^2 + m2*(-2*q2 + s - 2*u) + u*(s + u))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(m2 - u)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/64)*m2*(m2 - u)*(m2^2 + q2*(s - u) + u*(s + u) - m2*(3*q2 + s + 2*u))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/64)*(-(m2^4*s) + q2*s*u^2*(-q2 + u) + 
      m2^3*(-q2^2 + s*u + 2*q2*(s + u)) + m2*u*(q2^3 - q2^2*u - s*u^2 + 
        2*q2*u*(2*s + u)) + m2^2*(q2^3 + q2*(s - 4*u)*u + s*u^2 - 
        q2^2*(s + 6*u)))*(-2*u + EulerGamma*u - u*Log[4*Pi] - 
      m2*Log[(m2 - u)/m2] + u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*(m2 - u)*u*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/64)*(-(m2*(q2^2 + q2*s - s^2)) + q2*s*u)*(-2 + EulerGamma - 
      Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(q2 - s)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/64)*q2*(m2^3*(2*q2 - s) + s*(q2 - u)*u*(-2*q2 + s + u) + 
      m2^2*(-6*q2^2 + q2*(3*s - 4*u) + s*(s + u)) + 
      m2*(2*q2^3 - 2*q2^2*u + s*u^2 + q2*(-s^2 + 2*s*u + 2*u^2)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(q2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/256)*(2*m2^4*s*(q2 + s) + (q2 - s)*s^2*u^2*(s + u) - 
      m2^3*(2*q2^3 + q2*s*(-7*s + 6*u) + s^2*(5*s + 6*u)) - 
      m2*s*u*(2*q2^2*(2*s + u) + q2*(-6*s^2 - 3*s*u + 2*u^2) + 
        s*(2*s^2 + s*u + 2*u^2)) + m2^2*(-2*q2^2*s*(s - u) + 2*q2^3*(s + u) - 
        q2*s*(s^2 + 11*s*u - 6*u^2) + s^2*(s^2 + 7*s*u + 6*u^2)))*
     (6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(q2 - s)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) + ((I/128)*(2*m2^5*s - s^2*u^3*(s + u) + 
      m2*s*u^2*(3*s^2 + 8*s*u + 2*u*(q2 + u)) - 
      m2^4*(2*q2^2 + 10*q2*s + s*(-5*s + 8*u)) + 
      m2^3*(-4*q2^3 + 22*q2*s*u + q2^2*(6*s + 4*u) - 
        s*(s^2 + 4*s*u - 12*u^2)) - m2^2*u*(q2^2*(-6*s + 2*u) + 
        2*q2*s*(6*s + 7*u) + s*(-3*s^2 + 8*s*u + 8*u^2)))*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/128)*(m2 - u)^2*(2*m2^5*s - s^2*(q2 - u)^3*(s + u) - 
      m2^4*(2*q2^2 + 16*q2*s + s*(5*s + 8*u)) + 
      m2*s*(2*q2^4 + q2^3*(5*s - 4*u) + q2*(7*s - 4*u)*u^2 + 
        u^2*(s^2 + 2*u^2) + q2^2*(3*s^2 - 12*s*u + 4*u^2)) - 
      m2^2*(4*q2^4 + 2*q2^3*(5*s - 3*u) + q2^2*(15*s^2 - 22*s*u + 2*u^2) + 
        s*u*(3*s^2 + 8*s*u + 8*u^2) + q2*s*(3*s^2 + 11*s*u + 8*u^2)) + 
      m2^3*(2*q2^3 + q2^2*(22*s + 4*u) + q2*s*(15*s + 28*u) + 
        s*(s^2 + 12*s*u + 12*u^2)))*(-zeta2 + 
      2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
          (m2 - u))] + PolyLog[2, (m2 - q2 + u - 
         Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/(m2 - q2 + u + 
         Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(3/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/128)*(4*m2 - s)*(m2 - u)^2*(m2*(2*q2 + 3*s) - s*(s + u))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]) + ((I/256)*(4*m2 - s)*(m2 - u)^2*(m2*(2*q2 + 3*s) - s*(s + u))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*\[Beta]), 
 PaVe[4, muR, 0][0, 0, 3][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((-I/64)*m2*(m2 - u)*(-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/64)*m2*(m2 - u)*(m2^2 + u*(-q2 + 2*s + u) - m2*(q2 + 2*u))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/64)*(m2 - u)*(m2*(2*q2 + s) + s*(-q2 + u))*(-2*u + EulerGamma*u - 
      u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + u*Log[(m2 - u)/m2] + 
      u*Log[m2/\[Mu]2]))/(Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/64)*(-(m2*q2) + s*u)*(-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - 
      \[Beta]*Log[\[Chi]]))/(Pi^2*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/64)*q2*(2*m2^3 + s*u*(-q2 + u) - m2^2*(3*q2 + 4*u) + 
      m2*(q2^2 - q2*u + u*(3*s + 2*u)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/256)*(m2 - u)*(-2*m2^3*s + s^2*u^2 - 2*m2*s*u*(q2 + u) + 
      m2^2*(2*q2^2 - 2*q2*s + s*(s + 4*u)))*(6*zeta2 - Log[\[Chi]]^2 + 
      Log[\[Chi]q]^2))/(Pi^2*(m2^2*s + s*u*(-q2 + s + u) + 
       m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/128)*(m2 - u)^2*(2*m2^3*s - s^2*u^2 + 2*m2*s*u*(q2 + u) - 
      m2^2*(2*q2^2 - 2*q2*s + s*(s + 4*u)))*(zeta2 - PolyLog[2, u/m2]))/
    (Pi^2*(-m2 + u)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) - ((I/128)*(m2 - u)^2*(2*m2^5*s + 
      m2^4*(-2*q2^2 - 4*q2*s + s*(s - 8*u)) - s^2*(q2 - u)^3*u + 
      m2^3*(6*q2^3 + 4*q2^2*(s + u) + 6*s*u*(s + 2*u) + q2*s*(-3*s + 4*u)) + 
      m2*s*(2*q2^4 + 2*q2^2*u*(3*s + 2*u) - q2^3*(s + 4*u) - 
        q2*u^2*(11*s + 4*u) + 2*u^2*(2*s^2 + 3*s*u + u^2)) - 
      m2^2*(4*q2^4 + q2^3*(4*s - 6*u) + q2*s*(11*s - 4*u)*u + 
        2*s*u^2*(7*s + 4*u) + q2^2*(-3*s^2 - 4*s*u + 2*u^2)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(3/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/128)*(4*m2 - s)*(m2 - u)^2*(m2*(-2*q2 + s) + s*u)*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*
     \[Beta]) - ((I/256)*(4*m2 - s)*(m2 - u)^2*(m2*(-2*q2 + s) + s*u)*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2*\[Beta]), 
 PaVe[4, muR, 0][1, 1, 1][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/32)*(2*m2^3*s + m2*(4*q2^3 + q2*s*(s - 6*u) + 2*s*u*(s + 3*u) - 
        q2^2*(5*s + 4*u)) - s*u*(3*q2^2 + u*(s + 2*u) - q2*(3*s + 5*u)) + 
      m2^2*(4*q2^2 + q2*s - s*(s + 6*u))))/(Pi^2*(4*m2 - s)*
     (m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*s*(m2 - u)*(m2^2*(-4*q2 + 5*s) + s*(-q2 + s + u)^2 + 
      m2*(-3*q2^2 + 4*q2*(2*s + u) - s*(5*s + 6*u)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) - ((I/16)*(m2 - u)*(m2^6*s*(4*q2 + 5*s) + s^2*(q2 - u)^2*u^2*
       (-q2 + s + u)^2 - m2^5*s*(-13*q2^2 + 2*q2*(s + 10*u) + 
        s*(5*s + 26*u)) + m2^4*(12*q2^4 + 4*q2^3*s - q2^2*s*(25*s + 56*u) + 
        s^2*(s^2 + 22*s*u + 55*u^2) + q2*(11*s^3 + 40*s*u^2)) + 
      m2^2*s*(q2^5 + q2^4*(s - 29*u) + s*u^2*(6*s^2 + 32*s*u + 35*u^2) + 
        q2^3*(-5*s^2 + 47*s*u + 72*u^2) + q2^2*(3*s^3 - 19*s^2*u - 45*s*u^2 - 
          64*u^3) + q2*u*(s^3 - 21*s^2*u - 28*s*u^2 + 20*u^3)) + 
      m2*s*(q2^6 - q2^5*(3*s + 8*u) - s*u^3*(4*s^2 + 13*s*u + 10*u^2) + 
        q2^4*(3*s^2 + 19*s*u + 22*u^2) + q2*u^2*(4*s^3 + 19*s^2*u + 
          18*s*u^2 - 4*u^3) + q2^2*u*(3*s^3 + 5*s^2*u + 7*s*u^2 + 17*u^3) - 
        q2^3*(s^3 + 14*s^2*u + 31*s*u^2 + 28*u^3)) + 
      m2^3*(12*q2^5 + 24*q2^3*s*(s - 2*u) - q2^4*(29*s + 12*u) - 
        2*s^2*u*(2*s^2 + 19*s*u + 30*u^2) + q2^2*s*(-4*s^2 + 57*s*u + 
          90*u^2) - q2*s*(3*s^3 + 3*s^2*u - 16*s*u^2 + 40*u^3)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(-4*m2^4*s - s*u*(-q2 + s + u)*(q2^2 - 3*q2*u + 2*u^2) + 
      m2*s*(-q2^3 + q2^2*(s - u) + 3*q2*(s - 2*u)*u + 5*u^2*(s + 2*u)) + 
      m2^2*(4*q2^3 + q2^2*(-3*s + 4*u) - q2*s*(2*s + 7*u) - 
        2*s*u*(2*s + 9*u)) + m2^3*(-4*q2^2 + 8*q2*s + s*(s + 14*u)))*
     (-1 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*u*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/32)*(m2 - u)*(m2^6*s^2 + m2^5*s*(2*q2^2 - 5*q2*s - 10*s*u) - 
      m2^3*(3*q2^5 + 2*q2^3*s*(5*s - 13*u) + 6*q2^2*s*(3*s - 5*u)*u + 
        6*q2^4*(-2*s + u) + 12*s^2*u^2*(s + 5*u) + 4*q2*s^2*u*(3*s + 11*u)) + 
      m2^4*(q2^4 - 8*q2^3*s + 2*q2^2*s*(5*s - 8*u) + 28*q2*s^2*u + 
        s^2*u*(3*s + 35*u)) + m2^2*(3*q2^6 + q2^5*(-8*s + 2*u) - 
        q2^3*s*u*(14*s + 11*u) + q2*s^2*u^2*(15*s + 14*u) + 
        s^2*u^3*(18*s + 55*u) + q2^2*s*u*(18*s^2 - 3*s*u - 14*u^2) + 
        q2^4*(5*s^2 - s*u + 3*u^2)) + s*(q2 - u)*u*(3*q2^5 + 5*q2*s*u^3 - 
        6*q2^2*u*(s + u)^2 - 6*q2^4*(s + 2*u) - s*u^3*(3*s + 5*u) + 
        3*q2^3*(s^2 + 6*s*u + 5*u^2)) - m2*(q2^7 - 17*q2*s^2*u^4 - 
        2*q2^6*(s + 2*u) + 2*s^2*u^4*(6*s + 13*u) + 
        2*q2^3*s*u*(6*s^2 + 6*s*u - 7*u^2) - 2*q2^4*u*(10*s^2 + 2*s*u + 
          u^2) + 2*q2^2*s*u^2*(-3*s^2 + 3*s*u + 4*u^2) + 
        q2^5*(s^2 + 12*s*u + 5*u^2)))*(-2*u + EulerGamma*u - u*Log[4*Pi] - 
      m2*Log[(m2 - u)/m2] + u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*u^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/32)*s*(6*m2^3*s - s*u*(3*q2^2 - 6*q2*s + 3*s^2 - 7*q2*u + 7*s*u + 
        6*u^2) - m2^2*(2*q2^2 - 11*q2*s + 9*s*(s + 2*u)) + 
      m2*(q2^3 + 2*q2^2*u - 3*q2*s*(s + 6*u) + 2*s*(s^2 + 8*s*u + 9*u^2)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(4*m2 - s)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) + ((I/32)*q2*(6*m2^5*s*(q2 + s) + 
      m2^4*(2*q2^3 + 7*q2^2*s - 2*s^2*(s + 15*u) - q2*s*(13*s + 30*u)) - 
      s*(q2 - u)*u*(3*q2^4 - 6*q2^3*(s + 2*u) - 2*s*u^2*(2*s + 3*u) - 
        q2*u*(5*s^2 + 5*s*u + 6*u^2) + q2^2*(3*s^2 + 17*s*u + 15*u^2)) + 
      m2^3*(9*q2^4 + q2^2*s*(5*s - 42*u) - 2*q2^3*(7*s + 3*u) + 
        10*s^2*u*(s + 6*u) + 2*q2*s*(3*s^2 + 19*s*u + 30*u^2)) + 
      m2^2*(q2^4*(s - 14*u) - 6*s^2*u^2*(3*s + 10*u) + 
        q2^3*(5*s^2 - 3*s*u + 6*u^2) - 3*q2*s*u*(3*s^2 + 12*s*u + 20*u^2) + 
        q2^2*(-6*s^3 + 8*s^2*u + 84*s*u^2)) + 
      m2*(q2^6 - 4*q2^5*u + 2*s^2*u^3*(7*s + 15*u) + 
        q2^2*s*u*(2*s^2 - 35*s*u - 70*u^2) + q2^4*(-3*s^2 - 4*s*u + 5*u^2) + 
        2*q2*s*u^2*(2*s^2 + 5*s*u + 15*u^2) + 
        2*q2^3*(s^3 + 3*s^2*u + 22*s*u^2 - u^3)))*(-2 + EulerGamma - 
      Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/64)*(q2 - s)*s*(m2 - u)^2*(3*m2^2*s - 
      m2*(q2^2 - 5*q2*s + 4*s^2 + 6*s*u) + s*(q2^2 - 2*q2*s + s^2 - 3*q2*u + 
        3*s*u + 3*u^2))*(6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) - 
   ((I/32)*(q2 - s)*s*(m2 - u)^3*(3*m2^2*s - 
      m2*(q2^2 - 5*q2*s + 4*s^2 + 6*s*u) + s*(q2^2 - 2*q2*s + s^2 - 3*q2*u + 
        3*s*u + 3*u^2))*(zeta2 - PolyLog[2, u/m2]))/
    (Pi^2*(-m2 + u)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      3) + ((I/32)*(m2 - u)^2*(3*m2^7*s^2*(q2 + s) - 
      m2^6*s*(q2^3 - 9*q2^2*s + 3*q2*s*(2*s + 7*u) + s^2*(4*s + 21*u)) + 
      m2^5*s*(23*q2^4 + q2^3*(-17*s + 5*u) - 3*q2^2*s*(4*s + 21*u) + 
        s^2*(s^2 + 23*s*u + 63*u^2) + q2*s*(17*s^2 + 27*s*u + 63*u^2)) + 
      s^2*(q2 - u)^2*(q2^6 - 3*q2^5*(s + 2*u) - s*u^3*(s^2 + 3*s*u + 3*u^2) + 
        3*q2^4*(s^2 + 5*s*u + 5*u^2) - 3*q2*u^2*(s^3 + 2*s^2*u + s*u^2 + 
          u^3) + 3*q2^2*u*(s^3 + 6*s^2*u + 8*s*u^2 + 4*u^3) - 
        q2^3*(s^3 + 12*s^2*u + 30*s*u^2 + 19*u^3)) + 
      m2^4*(6*q2^6 - 10*q2^5*s - q2^4*s*(17*s + 64*u) + 
        5*q2^3*s*(9*s^2 + 2*s*u - 2*u^2) - 5*s^3*u*(s^2 + 11*s*u + 21*u^2) + 
        q2^2*s^2*(-25*s^2 + 63*s*u + 180*u^2) - 
        5*q2*s^2*(s^3 + 8*s^2*u + 9*s*u^2 + 21*u^3)) + 
      m2^3*(6*q2^7 + q2^5*s*(37*s - 36*u) - 2*q2^6*(8*s + 3*u) + 
        5*s^3*u^2*(2*s^2 + 14*s*u + 21*u^2) + q2^4*s*(-45*s^2 + 70*s*u + 
          54*u^2) + 2*q2^2*s^2*(5*s^3 - 72*s*u^2 - 135*u^3) + 
        2*q2^3*s*(5*s^3 - 15*s^2*u + 59*s*u^2 + 5*u^3) + 
        q2*s^2*u*(10*s^3 + 18*s^2*u + 30*s*u^2 + 105*u^3)) + 
      m2*s*(-q2^8 + q2^7*(s + 5*u) + q2^6*(6*s^2 - 11*s*u - 10*u^2) + 
        s^2*u^4*(5*s^2 + 19*s*u + 21*u^2) - q2^2*s*u^3*(38*s^2 + 108*s*u + 
          99*u^2) - q2*s*u^3*(4*s^3 + 11*s^2*u + 9*s*u^2 - 21*u^3) + 
        q2^5*(-11*s^3 - 9*s^2*u + 63*s*u^2 + 10*u^3) + 
        q2^4*(5*s^4 + 25*s^3*u - 63*s^2*u^2 - 154*s*u^3 - 5*u^4) + 
        q2^3*u*(-10*s^4 + 16*s^3*u + 162*s^2*u^2 + 179*s*u^3 + u^4)) + 
      m2^2*s*(5*q2^7 - q2^6*(17*s + 28*u) + 3*q2^5*(4*s^2 + 21*s*u + 
          12*u^2) - s^2*u^3*(10*s^2 + 50*s*u + 63*u^2) + 
        3*q2^2*s*u^2*(12*s^2 + 58*s*u + 75*u^2) + 
        q2^4*(10*s^3 - 51*s^2*u + 36*s*u^2 - 8*u^3) - 
        q2^3*(10*s^4 - 10*s^3*u + 96*s^2*u^2 + 244*s*u^3 + 5*u^4) + 
        q2*(16*s^3*u^3 - 63*s*u^5)))*(-zeta2 + 
      2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
          (m2 - u))] + PolyLog[2, (m2 - q2 + u - 
         Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/(m2 - q2 + u + 
         Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(5/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*s*(m2 - u)^2*(-2*m2^3*s + s*(-q2^3 + s^3 + 3*s^2*u + 3*s*u^2 + 
        2*u^3 + 3*q2^2*(s + u) - 3*q2*(s + u)^2) + 
      3*m2^2*(2*q2^2 - 5*q2*s + s*(3*s + 2*u)) + 
      3*m2*(q2^3 - 2*s*(s + u)^2 - 2*q2^2*(2*s + u) + q2*s*(5*s + 6*u)))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]) - ((I/64)*s*(m2 - u)^2*(-2*m2^3*s + 
      s*(-q2^3 + s^3 + 3*s^2*u + 3*s*u^2 + 2*u^3 + 3*q2^2*(s + u) - 
        3*q2*(s + u)^2) + 3*m2^2*(2*q2^2 - 5*q2*s + s*(3*s + 2*u)) + 
      3*m2*(q2^3 - 2*s*(s + u)^2 - 2*q2^2*(2*s + u) + q2*s*(5*s + 6*u)))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*\[Beta]), 
 PaVe[4, muR, 0][1, 1, 2][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((-I/32)*(m2^3*(2*q2 - 3*s) + s*u*(2*q2^2 - 3*q2*(s + u) + u*(s + u)) + 
      m2^2*(-8*q2^2 + q2*(s - 4*u) + s*(s + 7*u)) - 
      m2*(2*q2^3 - 4*q2^2*s + s*u*(2*s + 5*u) + q2*(s^2 - 10*s*u - 2*u^2))))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*m2*(2*m2^4*s - 2*m2^3*(q2^2 + 3*q2*s + 4*s*(-s + u)) + 
      m2^2*(-4*q2^3 + 5*q2*s*(s + 2*u) + q2^2*(5*s + 4*u) - 
        2*s*(3*s^2 + 7*s*u - 6*u^2)) + s*u*(q2^2*(-2*s + u) - 
        2*(s - u)*(s + u)^2 + q2*(4*s^2 + s*u - 2*u^2)) + 
      m2*(q2^3*s - q2^2*(s^2 - 6*s*u + 2*u^2) - q2*s*(s^2 + 18*s*u + 2*u^2) + 
        s*(s^3 + 12*s^2*u + 4*s*u^2 - 8*u^3)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2]))/(Pi^2*(4*m2 - s)*(m2 - u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/16)*(m2 - u)*(2*m2^7*s - s^2*(q2 - u)^2*u^2*(-q2 + s + u)^2 - 
      m2^6*(2*q2^2 + 10*q2*s + 3*s*(3*s + 4*u)) + 
      m2^5*(4*q2^3 + 17*q2*s*(s + 2*u) + q2^2*(-12*s + 8*u) + 
        2*s*(3*s^2 + 22*s*u + 15*u^2)) + 
      m2*s*(q2^5*(s + 2*u) - 2*q2^4*(s^2 + 5*s*u + 3*u^2) + 
        2*u^3*(2*s^3 + 7*s^2*u + 6*s*u^2 + u^3) + 
        q2^2*u*(-3*s^3 - s^2*u + 10*s*u^2 + 4*u^3) + 
        q2^3*(s^3 + 11*s^2*u + 14*s*u^2 + 4*u^3) - 
        q2*u^2*(4*s^3 + 22*s^2*u + 27*s*u^2 + 6*u^3)) + 
      m2^3*(-8*q2^5 + 3*q2^4*(5*s + 4*u) + q2^3*(-17*s^2 + 62*s*u - 12*u^2) + 
        2*q2^2*(5*s^3 - 29*s^2*u - 36*s*u^2 + 4*u^3) + 
        q2*s*(3*s^3 + 8*s^2*u - 22*s*u^2 + 4*u^3) + 
        2*s*u*(2*s^3 + 22*s^2*u + 44*s*u^2 + 15*u^3)) - 
      m2^4*(16*q2^4 - 9*q2^3*s - 2*q2^2*(3*s^2 + 28*s*u - 6*u^2) + 
        3*q2*s*(5*s^2 + 8*s*u + 12*u^2) + s*(s^3 + 26*s^2*u + 87*s*u^2 + 
          40*u^3)) + m2^2*(-2*q2^6 + 2*q2^5*(s + 4*u) + 
        q2^4*(2*s^2 + 15*s*u - 12*u^2) + q2^3*(s^3 - 49*s^2*u - 43*s*u^2 + 
          8*u^3) - s*u^2*(6*s^3 + 36*s^2*u + 47*s*u^2 + 12*u^3) + 
        q2*s*u*(-s^3 + 23*s^2*u + 52*s*u^2 + 14*u^3) + 
        q2^2*(-3*s^4 + 21*s^3*u + 32*s^2*u^2 + 24*s*u^3 - 2*u^4)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(-4*m2^4*s + s*(q2 - u)*u^2*(-q2 + s + u) + 
      m2^3*(-4*q2^2 + 2*q2*(4*s + u) + s*(s + 11*u)) + 
      m2*(-(q2^3*(s - 2*u)) + s*u^2*(3*s + 5*u) + 
        q2^2*(s^2 - 2*s*u - 4*u^2) + q2*u*(s^2 + 2*u^2)) + 
      m2^2*(4*q2^3 - 3*q2^2*s - s*u*(3*s + 11*u) - 2*q2*(s^2 + s*u + 2*u^2)))*
     (-1 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*u*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/32)*(m2^8*s^2 + m2^7*s*(2*q2^2 - 5*q2*s - 13*s*u) + 
      m2^6*(q2^4 - 8*q2^3*s + 2*q2^2*s*(5*s - 11*u) + q2*s*u*(43*s + 4*u) + 
        3*s^2*u*(s + 19*u)) + q2*s*(q2 - u)*u^4*(q2^3 - 2*q2^2*(2*s + 3*u) - 
        u*(9*s^2 + 15*s*u + 4*u^2) + q2*(3*s^2 + 19*s*u + 9*u^2)) - 
      m2^5*(3*q2^5 + 10*q2^3*s*(s - 5*u) + 3*q2^2*s*(16*s - 17*u)*u + 
        q2^4*(-12*s + 9*u) + s^2*u^2*(17*s + 125*u) + 
        q2*s*u*(12*s^2 + 103*s*u + 24*u^2)) + 
      m2^4*(3*q2^6 + q2^3*s*(16*s - 43*u)*u + q2^5*(-8*s + 11*u) + 
        s^2*u^3*(38*s + 155*u) + q2^2*s*u*(18*s^2 + 32*s*u - 37*u^2) + 
        q2^4*(5*s^2 - 37*s*u + 12*u^2) + q2*s*u^2*(35*s^2 + 97*s*u + 
          60*u^2)) - m2^3*(q2^7 + q2^6*(-2*s + 5*u) + 
        q2^4*s*u*(-5*s + 16*u) + 3*s^2*u^4*(14*s + 37*u) + 
        q2^3*s*u*(12*s^2 - 17*s*u - 22*u^2) + 2*q2^2*s*u^2*
         (12*s^2 + 5*s*u - 4*u^2) + q2^5*(s^2 - 12*s*u - u^2) + 
        q2*s*u^3*(26*s^2 + 43*s*u + 80*u^2)) + 
      m2^2*u*(3*q2^7 - 3*q2^6*(s + 5*u) + s^2*u^4*(23*s + 43*u) + 
        q2^3*s*u*(11*s^2 - 3*s*u - 60*u^2) - 2*q2^2*s*u^2*
         (s^2 - 16*s*u + 12*u^2) + q2^5*(-3*s^2 + 17*s*u + 25*u^2) + 
        q2*s*u^3*(4*s^2 + 37*s*u + 60*u^2) + q2^4*(3*s^3 - 13*s^2*u + 
          8*s*u^2 - 5*u^3)) + m2*u^2*(q2^6*(-5*s + u) - s^2*u^4*(5*s + 7*u) + 
        2*q2^5*(5*s^2 + 13*s*u - u^2) - q2*s*u^3*(10*s^2 + 41*s*u + 24*u^2) + 
        q2^3*s*u*(14*s^2 + 53*s*u + 24*u^2) + q2^2*s*u^2*
         (-12*s^2 + 18*s*u + 35*u^2) + q2^4*(-5*s^3 - 41*s^2*u - 56*s*u^2 + 
          u^3)))*(-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/(Pi^2*u^2*(-m2 + u)*
     (m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(-(m2^3*s*(10*q2 + 13*s)) + s^2*u*(3*(s + u)^2 - q2*(3*s + u)) + 
      m2^2*(-2*q2^3 - 3*q2^2*s - q2*s*(s - 20*u) + s^2*(11*s + 29*u)) + 
      m2*s*(q2^2*(s + 5*u) + q2*(s^2 + 4*s*u - 10*u^2) - 
        s*(2*s^2 + 19*s*u + 19*u^2)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/(Pi^2*(4*m2 - s)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*q2*(4*m2^6*s - m2^5*s*(23*q2 + 8*(s + 3*u)) + 
      s*(q2 - u)*u*(q2^3*(-3*s + u) - 4*u^2*(s + u)^2 + 
        3*q2^2*(s^2 + 3*s*u - 2*u^2) + q2*u*(-5*s^2 + 2*s*u + 9*u^2)) + 
      m2^4*(-5*q2^3 + 19*q2^2*s + q2*s*(21*s + 79*u) + 
        2*s*(s^2 + 20*s*u + 30*u^2)) + m2^2*(-5*q2^5 + q2^4*(s + 20*u) + 
        q2^2*s*(6*s^2 + 3*s*u - 74*u^2) + q2^3*(3*s^2 + 9*s*u - 7*u^2) + 
        q2*s*u*(9*s^2 + 41*s*u + 14*u^2) + 2*s*u^2*(9*s^2 + 40*s*u + 
          30*u^2)) - m2^3*(2*q2^4 + q2^2*s*(17*s - 16*u) + 
        q2^3*(2*s - 11*u) + 10*s*u*(s^2 + 8*s*u + 8*u^2) + 
        q2*s*(6*s^2 + 57*s*u + 86*u^2)) + 
      m2*(q2^5*(s + u) + q2^4*(s^2 + 2*s*u - 2*u^2) - 
        2*s*u^3*(7*s^2 + 20*s*u + 12*u^2) + q2^2*s*u*(-2*s^2 + 37*s*u + 
          24*u^2) + q2*s*u^2*(-4*s^2 + 5*s*u + 29*u^2) + 
        q2^3*(-2*s^3 - 11*s^2*u - 32*s*u^2 + u^3)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/64)*s*(m2 - u)^2*(-(m2^3*s*(q2 + s)) + 
      3*m2^2*(q2^3 - q2^2*s + q2*s*(-2*s + u) + s^2*(2*s + u)) + 
      m2*(q2^4 + 3*q2^2*s*(-2*s + u) - q2^3*(s + 3*u) + 
        q2*s*(11*s^2 + 9*s*u - 3*u^2) - s^2*(5*s^2 + 9*s*u + 3*u^2)) + 
      s*(-(q2^3*s) + 3*q2^2*s*(s + u) + s*(s + u)^3 + 
        q2*(-3*s^3 - 6*s^2*u - 3*s*u^2 + u^3)))*(6*zeta2 - Log[\[Chi]]^2 + 
      Log[\[Chi]q]^2))/(Pi^2*(q2 - s)*(m2^2*s + s*u*(-q2 + s + u) + 
       m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2^6*s^2 - 3*m2^5*s*(q2^2 + 2*q2*s + 2*s*(-s + u)) + 
      s^2*u^3*(q2^2*s + (s + u)^3 - q2*s*(2*s + 3*u)) + 
      m2^4*s*(-7*q2^3 + 6*q2^2*(s + 2*u) + 6*q2*s*(s + 4*u) + 
        s*(-5*s^2 - 21*s*u + 15*u^2)) + m2^3*(-2*q2^5 + 4*q2^4*s + 
        q2^3*s*(-2*s + 15*u) - q2*s^2*(2*s^2 + 33*s*u + 36*u^2) + 
        q2^2*(s^3 - 18*s*u^2) + s^2*(s^3 + 18*s^2*u + 24*s*u^2 - 20*u^3)) + 
      m2*s*u^2*(q2^3*(-6*s + u) + 3*q2^2*(5*s^2 + 4*s*u - u^2) - 
        3*q2*s*(4*s^2 + 5*s*u + 2*u^2) + s*(3*s^3 + 2*s^2*u - 6*s*u^2 - 
          6*u^3)) + 3*m2^2*s*u*(2*q2^4 - q2^3*(4*s + 3*u) + 
        q2^2*(s^2 - 6*s*u + 4*u^2) + q2*s*(2*s^2 + 15*s*u + 8*u^2) - 
        s*(s^3 + 6*s^2*u + 2*s*u^2 - 5*u^3)))*(zeta2 - PolyLog[2, u/m2]))/
    (Pi^2*(-m2 + u)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      3) - ((I/32)*(m2 - u)^2*(m2^8*s^2 - m2^7*s*(3*q2^2 + 11*q2*s + 6*s^2 + 
        8*s*u) + m2^6*s*(8*q2^3 + 2*q2^2*(5*s + 9*u) + q2*s*(24*s + 61*u) + 
        s*(5*s^2 + 39*s*u + 28*u^2)) + s^2*(q2 - u)^2*
       (q2^5*s + u^3*(s + u)^3 - 2*q2^4*s*(s + 3*u) + 
        q2*u^2*(3*s^3 + 5*s^2*u - 3*u^3) + q2^3*(s^3 + 9*s^2*u + 15*s*u^2 - 
          u^3) + q2^2*u*(-3*s^3 - 15*s^2*u - 13*s*u^2 + 3*u^3)) - 
      m2^5*(2*q2^5 + 27*q2^4*s + 2*q2^3*s*(-3*s + 8*u) + 
        q2^2*s*(31*s^2 - 12*s*u + 45*u^2) + q2*s^2*(23*s^2 + 90*s*u + 
          135*u^2) + s^2*(s^3 + 28*s^2*u + 108*s*u^2 + 56*u^3)) + 
      m2^4*(-2*q2^6 - 3*q2^4*s*(s - 20*u) + 4*q2^5*(3*s + u) + 
        q2^3*s*(5*s^2 + 6*s*u - 16*u^2) + 5*s^2*u*(s^3 + 13*s^2*u + 
          33*s*u^2 + 14*u^3) + 2*q2^2*s*(20*s^3 + s^2*u - 69*s*u^2 + 
          30*u^3) + q2*s^2*(5*s^3 + 55*s^2*u + 114*s*u^2 + 145*u^3)) + 
      m2^2*s*(2*q2^7 + 14*q2^6*u - 9*q2*s*u^3*(2*s^2 + 4*s*u + u^2) - 
        q2^5*(14*s^2 + 15*s*u + 54*u^2) - 2*q2^2*u^2*(18*s^3 + 80*s^2*u + 
          69*s*u^2 - 9*u^3) + s*u^3*(10*s^3 + 55*s^2*u + 81*s*u^2 + 28*u^3) + 
        q2^4*(5*s^3 + 51*s^2*u - 54*s*u^2 + 76*u^3) + 
        2*q2^3*(5*s^4 - 10*s^3*u + 51*s^2*u^2 + 94*s*u^3 - 28*u^4)) + 
      m2*s*(-q2^8 + 8*q2^7*u + q2^6*(s^2 - 25*u^2) + 
        q2^2*u^3*(36*s^3 + 65*s^2*u + 12*s*u^2 - 3*u^3) - 
        s*u^4*(5*s^3 + 20*s^2*u + 24*s*u^2 + 8*u^3) + 
        q2*s*u^3*(4*s^3 + 15*s^2*u + 30*s*u^2 + 19*u^3) + 
        q2^5*(5*s^3 - 14*s^2*u - 21*s*u^2 + 40*u^3) + 
        q2^4*(-5*s^4 - 10*s^3*u + 78*s^2*u^2 + 68*s*u^3 - 35*u^4) + 
        2*q2^3*u*(5*s^4 - 13*s^3*u - 68*s^2*u^2 - 35*s*u^3 + 8*u^4)) - 
      m2^3*(8*q2^7 - q2^6*(9*s + 10*u) + q2^5*(3*s^2 - 34*s*u + 2*u^2) + 
        q2^4*(-20*s^3 + 96*s^2*u + 74*s*u^2) + 
        2*q2^3*s*(15*s^3 - 10*s^2*u + 60*s*u^2 - 32*u^3) + 
        2*s^2*u^2*(5*s^3 + 40*s^2*u + 75*s*u^2 + 28*u^3) + 
        q2*s^2*u*(10*s^3 + 28*s^2*u + 36*s*u^2 + 65*u^3) + 
        q2^2*s*(10*s^4 + 10*s^3*u - 134*s^2*u^2 - 232*s*u^3 + 45*u^4)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(5/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2 - u)^2*(-(m2^3*s*(6*q2 + 7*s)) + 
      s^2*(q2^2*s + (s + u)^3 - q2*s*(2*s + 3*u)) + 
      m2^2*(2*q2^3 - 5*q2^2*s + 4*q2*s*(-2*s + 3*u) + s^2*(14*s + 15*u)) - 
      m2*s*(q2^3 + q2^2*(2*s - 3*u) - 2*q2*(5*s^2 + 3*s*u - 3*u^2) + 
        s*(7*s^2 + 15*s*u + 9*u^2)))*(3*zeta2 - 
      Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]) - ((I/64)*(m2 - u)^2*(-(m2^3*s*(6*q2 + 7*s)) + 
      s^2*(q2^2*s + (s + u)^3 - q2*s*(2*s + 3*u)) + 
      m2^2*(2*q2^3 - 5*q2^2*s + 4*q2*s*(-2*s + 3*u) + s^2*(14*s + 15*u)) - 
      m2*s*(q2^3 + q2^2*(2*s - 3*u) - 2*q2*(5*s^2 + 3*s*u - 3*u^2) + 
        s*(7*s^2 + 15*s*u + 9*u^2)))*(8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 
      2*Log[4*Pi]*Log[\[Chi]] + 2*Log[m2/\[Mu]2]*Log[\[Chi]] + 
      4*Log[1 - \[Chi]]*Log[\[Chi]] - Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*\[Beta]), 
 PaVe[4, muR, 0][1, 1, 3][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((-I/32)*(m2^3*(2*q2 + s) - m2^2*(3*q2*s + 4*q2*u + s*u) + 
      s*u*(2*q2^2 - 2*q2*s - 3*q2*u + u^2) + 
      m2*(-2*q2^3 + 2*q2^2*s - s*u^2 + 2*q2*u*(3*s + u))))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*m2*(m2 - u)*(2*m2^2*s + s*(q2^2 + s^2 + 2*s*u + 2*u^2 - 
        2*q2*(s + u)) - 2*m2*(q2^2 - 3*q2*s + 2*s*(s + u)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) + ((I/16)*(m2 - u)*(2*m2^7*s + m2^6*(-2*q2^2 + 2*q2*s + 
        3*s*(s - 4*u)) - s^2*(q2 - u)^2*u^2*(-q2 + s + u)^2 + 
      m2^5*(8*q2^3 + 8*q2^2*u - 2*q2*s*(5*s + 7*u) - 
        s*(s^2 + 4*s*u - 30*u^2)) + m2^4*(-4*q2^3*(3*s + 2*u) + 
        s*u*(2*s^2 - 15*s*u - 40*u^2) + q2^2*(7*s^2 - 8*s*u - 12*u^2) + 
        q2*s*(3*s^2 + 32*s*u + 36*u^2)) + 
      m2*s*u*(2*q2^5 - 2*q2^4*(2*s + 3*u) + 4*q2^2*u*(2*s^2 + 5*s*u + u^2) + 
        2*q2^3*(s^2 + s*u + 2*u^2) + u^2*(2*s^3 + 11*s^2*u + 12*s*u^2 + 
          2*u^3) - q2*u*(4*s^3 + 21*s^2*u + 30*s*u^2 + 6*u^3)) + 
      m2^3*(-4*q2^5 + q2^4*(3*s + 4*u) + 4*q2^3*(s^2 + 7*s*u - 2*u^2) + 
        2*s*u^2*(3*s^2 + 20*s*u + 15*u^2) - q2*s*u*(7*s^2 + 56*s*u + 
          44*u^2) + q2^2*(-3*s^3 - 18*s^2*u + 20*s*u^2 + 8*u^3)) - 
      m2^2*(2*q2^6 - q2^5*(5*s + 8*u) + q2^4*(4*s^2 + 7*s*u + 12*u^2) - 
        q2*s*u^2*(27*s^2 + 60*s*u + 26*u^2) + q2^2*u*(-3*s^3 + 27*s^2*u + 
          16*s*u^2 + 2*u^3) - q2^3*(s^3 - 4*s^2*u + 4*s*u^2 + 8*u^3) + 
        s*u^2*(s^3 + 16*s^2*u + 35*s*u^2 + 12*u^3)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2^3*(2*q2 + 3*s) + s*(q2 - u)*u*(-q2 + s + u) + 
      m2^2*(4*q2^2 - 2*q2*(s + 2*u) - s*(s + 7*u)) + 
      m2*(2*q2^3 - q2^2*(3*s + 4*u) + s*u*(2*s + 5*u) + q2*(s^2 + 2*u^2)))*
     (-1 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/32)*(m2 - u)*(m2^5*s^2 + m2^4*s*(2*q2^2 - 4*q2*s + 4*q2*u + s*u) + 
      m2^3*(q2^4 - 6*q2^3*s + q2^2*s*(6*s + 5*u) - 2*q2*s*u*(s + 8*u) - 
        s^2*u*(s + 14*u)) + s*(q2 - u)*u*(q2^4 - 2*q2^3*(s + 3*u) - 
        s*u^2*(3*s + 5*u) - q2*u*(4*s^2 + 3*s*u + 4*u^2) + 
        q2^2*(s^2 + 10*s*u + 9*u^2)) + m2^2*(-2*q2^5 + 2*q2^4*(3*s + 5*u) - 
        q2^3*s*(4*s + 11*u) + s^2*u^2*(5*s + 26*u) - q2^2*s*u*(s + 29*u) + 
        q2*s*u*(3*s^2 + 14*s*u + 24*u^2)) + 
      m2*(q2^6 + 2*q2^3*s*(2*s - 9*u)*u - 2*q2^5*(s + u) - 
        2*q2*s*u^3*(3*s + 8*u) - s^2*u^3*(7*s + 19*u) + 
        q2^4*(s^2 + s*u + u^2) + q2^2*s*u*(-3*s^2 + 12*s*u + 35*u^2)))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*u*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2^3*s*(-10*q2 + 7*s) + s^2*u^2*(-q2 + s + 3*u) + 
      m2*s*u*(5*q2^2 + s*(3*s + u) - 2*q2*(4*s + 5*u)) + 
      m2^2*(-2*q2^3 + q2^2*s - s^2*(2*s + 11*u) + q2*s*(3*s + 20*u)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(4*m2 - s)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) - ((I/32)*q2*(4*m2^6*s + m2^5*s*(-7*q2 + 2*s - 24*u) + 
      m2^4*(3*q2^3 + 7*q2^2*s + 3*q2*s*(-2*s + 5*u) + 6*s*u*(s + 10*u)) - 
      m2^3*(q2*s*(3*s - 10*u)*u - 2*q2^2*s*(3*s + 2*u) + q2^3*(9*s + 5*u) + 
        4*s*u^2*(11*s + 20*u)) + s*(q2 - u)*u^2*(q2^3 - 3*q2^2*(s + 2*u) - 
        2*u*(4*s^2 + 7*s*u + 2*u^2) + q2*(2*s^2 + 17*s*u + 9*u^2)) + 
      m2^2*(-3*q2^5 + 5*q2^4*(s + 2*u) - 2*q2^2*s*u*(s + 7*u) - 
        q2*s*u^2*(7*s + 50*u) + q2^3*(-2*s^2 + s*u + u^2) + 
        4*s*u^2*(2*s^2 + 19*s*u + 15*u^2)) + 
      m2*u*(q2^5 - 2*q2^4*u - 12*q2^2*s*u^2 + q2^3*(-s^2 - 9*s*u + u^2) - 
        2*s*u^2*(8*s^2 + 27*s*u + 12*u^2) + q2*s*u*(2*s^2 + 47*s*u + 
          45*u^2)))*(-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - 
      \[Beta]q*Log[\[Chi]q]))/(Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/64)*s*(m2 - u)^2*(-(m2^3*s) + s*u^3 + 
      3*m2^2*(q2^2 - 2*q2*s + s*(s + u)) + 
      m2*(q2^3 - 3*q2^2*(s + u) + 3*q2*s*(s + 2*u) - 
        s*(s^2 + 3*s*u + 3*u^2)))*(6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*s*(m2 - u)^3*(m2^3*s - s*u^3 - 
      3*m2^2*(q2^2 - 2*q2*s + s*(s + u)) + 
      m2*(-q2^3 + 3*q2^2*(s + u) - 3*q2*s*(s + 2*u) + 
        s*(s^2 + 3*s*u + 3*u^2)))*(zeta2 - PolyLog[2, u/m2]))/
    (Pi^2*(-m2 + u)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      3) - ((I/32)*(m2 - u)^2*(m2^8*s^2 + 
      m2^7*s*(-3*q2^2 + q2*s + s*(3*s - 8*u)) + 
      m2^6*s*(14*q2^3 - q2*s*(12*s + 11*u) + q2^2*(s + 18*u) - 
        s*(s^2 + 12*s*u - 28*u^2)) - s^2*(q2 - u)^2*u^3*
       (q2^3 - 2*s^3 - 6*s^2*u - 6*s*u^2 - u^3 - 3*q2^2*(2*s + u) + 
        3*q2*(2*s^2 + 4*s*u + u^2)) + m2^5*s*(-7*q2^4 - q2^3*(19*s + 40*u) + 
        s*u*(5*s^2 + 9*s*u - 56*u^2) + 3*q2^2*(5*s^2 - 3*s*u - 15*u^2) + 
        q2*s*(5*s^2 + 42*s*u + 45*u^2)) - m2^3*(6*q2^7 + q2^5*s^2 - 
        q2^6*(11*s + 6*u) + q2^4*s*(15*s^2 + 22*s*u + 18*u^2) + 
        q2^2*s*u^2*(-18*s^2 + 74*s*u + 45*u^2) + 
        s^2*u^3*(14*s^2 + 75*s*u + 56*u^2) - q2*s^2*u^2*(18*s^2 + 108*s*u + 
          115*u^2) - 2*q2^3*s*(5*s^3 + 6*s^2*u - 23*s*u^2 + 20*u^3)) + 
      m2^4*(6*q2^6 - 16*q2^5*s + q2^4*s*(23*s + 2*u) + 
        2*q2^3*s*u*(31*s + 10*u) + 2*s^2*u^2*(-2*s^2 + 15*s*u + 35*u^2) - 
        q2*s^2*u*(10*s^2 + 72*s*u + 95*u^2) + 2*q2^2*s*(-5*s^3 - 18*s^2*u + 
          18*s*u^2 + 30*u^3)) - m2*s*(q2^8 - q2^7*(3*s + 8*u) + 
        q2^6*(3*s^2 + 21*s*u + 25*u^2) + q2^2*u^3*(26*s^3 + 81*s^2*u + 
          45*s*u^2 + 3*u^3) + s*u^4*(4*s^3 + 23*s^2*u + 33*s*u^2 + 8*u^3) - 
        q2^3*u^2*(4*s^3 + 36*s^2*u + 41*s*u^2 + 16*u^3) - 
        q2*s*u^3*(8*s^3 + 49*s^2*u + 90*s*u^2 + 31*u^3) + 
        q2^4*u*(5*s^3 + 27*s^2*u + 46*s*u^2 + 35*u^3) - 
        q2^5*(s^3 + 18*s^2*u + 45*s*u^2 + 40*u^3)) + 
      m2^2*s*(2*q2^7 + q2^6*(-9*s + 8*u) + 3*q2^5*(4*s^2 + 3*s*u - 12*u^2) - 
        q2*s*u^3*(44*s^2 + 132*s*u + 81*u^2) + 
        2*q2^3*u*(5*s^3 + 24*s^2*u - 14*s*u^2 - 25*u^3) + 
        3*q2^2*u^2*(-6*s^3 + 16*s^2*u + 27*s*u^2 + 6*u^3) + 
        s*u^3*(2*s^3 + 31*s^2*u + 72*s*u^2 + 28*u^3) + 
        q2^4*(-5*s^3 - 24*s^2*u + 58*u^3)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(5/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2 - u)^2*(m2^3*s*(-6*q2 + 5*s) + s^2*u^3 + 
      m2^2*(2*q2^3 - 9*q2^2*s + 12*q2*s*(s + u) - s^2*(5*s + 9*u)) + 
      m2*s*(-q2^3 + 3*q2^2*(s + u) - 3*q2*(s^2 + 2*s*u + 2*u^2) + 
        s*(s^2 + 3*s*u + 3*u^2)))*(3*zeta2 - 
      Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]) - ((I/64)*(m2 - u)^2*(m2^3*s*(-6*q2 + 5*s) + s^2*u^3 + 
      m2^2*(2*q2^3 - 9*q2^2*s + 12*q2*s*(s + u) - s^2*(5*s + 9*u)) + 
      m2*s*(-q2^3 + 3*q2^2*(s + u) - 3*q2*(s^2 + 2*s*u + 2*u^2) + 
        s*(s^2 + 3*s*u + 3*u^2)))*(8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 
      2*Log[4*Pi]*Log[\[Chi]] + 2*Log[m2/\[Mu]2]*Log[\[Chi]] + 
      4*Log[1 - \[Chi]]*Log[\[Chi]] - Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*\[Beta]), 
 PaVe[4, muR, 0][1, 2, 2][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/32)*(2*m2^5 + m2^4*(-11*q2 + 3*s - 8*u) + 
      m2^3*(20*q2^2 - s^2 + 21*q2*u - 5*s*u + 12*u^2) - 
      q2*s*u*(q2*(s - u) + u*(s + u)) + m2^2*(-3*q2^3 - 2*q2^2*(3*s + 2*u) + 
        q2*(s^2 - 21*s*u - 9*u^2) + u*(2*s^2 + s*u - 8*u^2)) + 
      m2*(q2^3*(s - u) + 5*q2^2*s*u + q2*u*(4*s^2 + 6*s*u - u^2) + 
        u^2*(-s^2 + s*u + 2*u^2))))/(Pi^2*(4*m2 - s)*(m2 - u)*
     (m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*m2*(m2^5*(4*q2 + 9*s) - s*u^2*(s + u)*(-(q2*s) + (s + u)^2) - 
      m2^4*(3*q2^2 + 2*q2*(9*s + 8*u) + s*(-10*s + 37*u)) + 
      m2^3*(-12*q2^3 + q2^2*(17*s + 5*u) + q2*(4*s^2 + 34*s*u + 24*u^2) + 
        s*(-7*s^2 - 3*s*u + 58*u^2)) + 
      m2^2*(3*q2^3*s - q2^2*(4*s^2 - 18*s*u + u^2) - 
        q2*u*(39*s^2 + 14*s*u + 16*u^2) + s*(s^3 + 15*s^2*u - 27*s*u^2 - 
          42*u^3)) + m2*u*(-(s*(3*s - 13*u)*(s + u)^2) - 
        q2^2*(5*s^2 - s*u + u^2) + q2*(8*s^3 - 2*s^2*u - 2*s*u^2 + 4*u^3)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2 - u)^2*(m2^2*s + s*u*(-q2 + s + u) + 
       m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/16)*(m2 - u)*(m2^7*(4*q2 + 7*s) - s^2*(q2 - u)^2*u^2*(-q2 + s + u)^2 - 
      m2^6*(17*q2^2 + 4*q2*(8*s + 5*u) + 2*s*(7*s + 19*u)) + 
      m2^5*(20*q2^3 + q2^2*(22*s + 36*u) + q2*(37*s^2 + 86*s*u + 40*u^2) + 
        s*(7*s^2 + 66*s*u + 85*u^2)) + 
      m2*s*(2*q2^5*u + q2^3*s*(s^2 + 8*s*u + 3*u^2) - 
        q2^4*(s^2 + 5*s*u + 5*u^2) + u^3*(4*s^3 + 15*s^2*u + 14*s*u^2 + 
          3*u^3) + q2^2*u*(-3*s^3 + 3*s^2*u + 23*s*u^2 + 10*u^3) - 
        q2*u^2*(4*s^3 + 25*s^2*u + 35*s*u^2 + 10*u^3)) - 
      m2^4*(18*q2^4 + 2*q2^3*(5*s - 2*u) + q2^2*(23*s^2 - 36*s*u + 6*u^2) + 
        q2*(19*s^3 + 56*s^2*u + 56*s*u^2 + 40*u^3) + 
        s*(s^3 + 30*s^2*u + 125*s*u^2 + 100*u^3)) - 
      m2^2*(q2^6 - 5*q2^5*s - q2^4*u*(3*s + 10*u) + 
        2*s*u^2*(3*s^3 + 20*s^2*u + 30*s*u^2 + 11*u^3) + 
        q2^3*(3*s^3 + 43*s^2*u + 22*s*u^2 + 20*u^3) + 
        q2^2*(3*s^4 - 23*s^3*u - 17*s^2*u^2 + 4*s*u^3 - 15*u^4) + 
        q2*u*(s^4 - 25*s^3*u - 76*s^2*u^2 - 40*s*u^3 + 4*u^4)) + 
      m2^3*(-12*q2^5 + 4*q2^3*(16*s - u)*u + 2*q2^4*(7*s + 12*u) + 
        q2^2*(16*s^3 - 59*s^2*u - 64*s*u^2 - 28*u^3) + 
        s*u*(4*s^3 + 50*s^2*u + 120*s*u^2 + 65*u^3) + 
        q2*(3*s^4 + 13*s^3*u - 26*s^2*u^2 - 28*s*u^3 + 20*u^4)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(-(s*(q2 - u)*u^3*(-q2 + s + u)) - 2*m2^5*(2*s + u) + 
      m2^4*(-4*q2^2 + 8*q2*s + s^2 + 9*q2*u + 12*s*u + 8*u^2) - 
      m2*u^2*(q2^3 - 2*q2^2*s + q2*(2*s^2 - 3*s*u - 3*u^2) + 
        u*(3*s^2 + 7*s*u + 2*u^2)) + m2^2*(q2^3*(-s + u) + 
        q2^2*(s^2 - 8*u^2) + q2*u*(s^2 + 12*s*u + 3*u^2) + 
        u^2*(4*s^2 + 15*s*u + 8*u^2)) + m2^3*(4*q2^3 - q2^2*(3*s + 4*u) - 
        u*(3*s^2 + 17*s*u + 12*u^2) - q2*(2*s^2 + 5*s*u + 15*u^2)))*
     (-1 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2 - u)*u*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*(EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(q2 - s)*(m2 - u)) - 
   ((I/32)*(m2^9*s^2 - m2^8*s*(-2*q2^2 + 5*q2*s + u*(15*s + 2*u)) + 
      s*(q2 - u)*u^4*(2*q2^4*s + 2*u^3*(s + u)^2 + q2^2*s*u*(3*s + u) + 
        3*q2*u^2*(s^2 - u^2) + q2^3*(-2*s^2 - 7*s*u + u^2)) + 
      m2^7*(q2^4 - 8*q2^3*s + q2*s*u*(53*s + 21*u) + 
        2*q2^2*(5*s^2 - 13*s*u + u^2) + s*u*(3*s^2 + 69*s*u + 16*u^2)) - 
      m2^6*(3*q2^5 + q2^4*(-12*s + 11*u) + q2^3*(10*s^2 - 66*s*u + 3*u^2) + 
        2*q2^2*u*(34*s^2 - 11*s*u + 6*u^2) + s*u^2*(19*s^2 + 159*s*u + 
          56*u^2) + q2*s*u*(12*s^2 + 134*s*u + 121*u^2)) + 
      m2*u^3*(-4*q2^6*s + q2*s*u^3*(31*s^2 + 38*s*u - 9*u^2) + 
        q2^5*(4*s^2 + 18*s*u - 3*u^2) + 8*s*u^4*(s^2 + 3*s*u + 2*u^2) + 
        q2^4*u*(-23*s^2 - 25*s*u + 8*u^2) + q2^3*u*(17*s^3 + 68*s^2*u + 
          41*s*u^2 - 7*u^3) + q2^2*u^2*(-38*s^3 - 103*s^2*u - 37*s*u^2 + 
          2*u^3)) + m2^3*u*(5*q2^7 - 7*q2^6*(s + 5*u) + 
        q2^5*(-s^2 + 50*s*u + 58*u^2) + s*u^4*(39*s^2 + 135*s*u + 112*u^2) + 
        q2*s*u^3*(22*s^2 + 229*s*u + 215*u^2) + 
        q2^3*u*(19*s^3 + 64*s^2*u - 94*s*u^2 - 30*u^3) + 
        q2^4*(3*s^3 - 30*s^2*u - 18*s*u^2 + 13*u^3) + 
        2*q2^2*u^2*(-2*s^3 + 54*s^2*u - 26*s*u^2 + 15*u^3)) - 
      m2^2*u^2*(-2*q2^7 + q2^6*(9*s + 5*u) - q2^5*(14*s^2 + 56*s*u + 5*u^2) + 
        q2*s*u^3*(46*s^2 + 164*s*u + 51*u^2) + 
        s*u^4*(19*s^2 + 69*s*u + 56*u^2) + 2*q2^2*u^2*(18*s^3 - 37*s^2*u - 
          58*s*u^2 + 6*u^3) + q2^4*(7*s^3 + 82*s^2*u + 126*s*u^2 + 23*u^3) - 
        q2^3*u*(19*s^3 + 90*s^2*u + 40*s*u^2 + 25*u^3)) + 
      m2^5*(3*q2^6 + q2^5*(-8*s + 17*u) + q2^3*u*(36*s^2 - 3*s*u + 5*u^2) + 
        q2^4*(5*s^2 - 61*s*u + 10*u^2) + s*u^3*(46*s^2 + 219*s*u + 112*u^2) + 
        q2*s*u^2*(43*s^2 + 160*s*u + 285*u^2) + 
        q2^2*u*(18*s^3 + 49*s^2*u + 83*s*u^2 + 30*u^3)) - 
      m2^4*(q2^7 + q2^6*(-2*s + 11*u) + q2^5*(s^2 - 28*s*u - 22*u^2) + 
        q2^4*u*(5*s^2 + 71*s*u - 2*u^2) + s*u^4*(56*s^2 + 201*s*u + 
          140*u^2) + q2*s*u^3*(37*s^2 + 181*s*u + 345*u^2) + 
        q2^3*u*(12*s^3 - 32*s^2*u + 41*s*u^2 - 10*u^3) + 
        q2^2*u^2*(36*s^3 + 69*s^2*u + 105*s*u^2 + 40*u^3)))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/(Pi^2*(m2 - u)^2*u^2*
     (m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(2*m2^4*s*(3*q2^2 + 2*q2*s + 3*s^2) - 
      m2^3*(2*q2^4 + 11*q2^3*s + 2*q2^2*s*(-13*s + 9*u) + 
        2*s^3*(11*s + 9*u) + q2*s^2*(-5*s + 12*u)) + 
      s^2*u*(-(q2^3*u) + 3*s^2*(s + u)^2 + 3*q2^2*(s^2 + s*u + u^2) - 
        2*q2*s*(3*s^2 + 4*s*u + u^2)) + m2^2*(-q2^5 + q2^4*(3*s + 2*u) + 
        q2^3*s*(5*s + 14*u) + q2*s^2*(-13*s^2 - 20*s*u + 12*u^2) + 
        q2^2*s*(-7*s^2 - 29*s*u + 18*u^2) + s^3*(13*s^2 + 45*s*u + 18*u^2)) - 
      m2*s*(-2*q2^4*u + q2^3*(s^2 + 10*s*u + 3*u^2) - 
        q2*s*(3*s^3 + 28*s^2*u + 17*s*u^2 - 4*u^3) + 
        2*s^2*(s^3 + 11*s^2*u + 13*s*u^2 + 3*u^3) + q2^2*(-2*s^2*u + 6*u^3)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(4*m2 - s)*(q2 - s)^2*(m2^2*s + s*u*(-q2 + s + u) + 
       m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/32)*q2*(2*m2^7*s*(q2 + s) - m2^6*(2*q2^3 + 9*q2^2*s + 
        2*s^2*(5*s + 7*u) + q2*s*(-5*s + 14*u)) + 
      m2^5*(9*q2^4 + 2*q2^3*(12*s + 5*u) + q2^2*s*(-49*s + 40*u) + 
        2*q2*s*(15*s^2 - 22*s*u + 21*u^2) + 2*s^2*(5*s^2 + 29*s*u + 
          21*u^2)) - m2^4*(8*q2^5 + q2^4*(27*s + 20*u) + 
        q2^3*(-55*s^2 + 83*s*u + 20*u^2) + q2^2*s*(9*s^2 - 152*s*u + 
          65*u^2) + 5*q2*s*(5*s^3 + 11*s^2*u - 29*s*u^2 + 14*u^3) + 
        2*s^2*(s^3 + 25*s^2*u + 70*s*u^2 + 35*u^3)) + 
      s*(q2 - u)*u*(2*s*u^2*(s + u)^2*(2*s + u) + 
        2*q2^3*s*(3*s^2 + s*u - 16*u^2) + q2^4*(-3*s^2 + 4*s*u + u^2) + 
        q2^2*(-3*s^4 - 11*s^3*u + 40*s^2*u^2 + 43*s*u^3 - 3*u^4) + 
        q2*u*(5*s^4 - 17*s^3*u - 41*s^2*u^2 - 17*s*u^3 + 2*u^4)) + 
      m2^2*(4*q2^7 - 2*q2^6*(8*s + 11*u) + q2^5*(14*s^2 + 33*s*u + 8*u^2) + 
        3*q2^4*(s^3 - 4*s^2*u + 20*s*u^2 + 4*u^3) - 
        2*s^2*u^2*(9*s^3 + 50*s^2*u + 65*s*u^2 + 21*u^3) + 
        q2*s*u*(-9*s^4 - 10*s^3*u + 222*s^2*u^2 + 215*s*u^3 - 42*u^4) + 
        q2^3*(s^4 - 6*s^3*u - 170*s^2*u^2 - 66*s*u^3 - 10*u^4) + 
        q2^2*s*(-6*s^4 + 4*s^3*u + 130*s^2*u^2 - 116*s*u^3 + 5*u^4)) + 
      m2^3*(9*q2^6 + 2*q2^5*(s - 4*u) + q2^4*(-16*s^2 + 26*s*u + 6*u^2) + 
        10*s^2*u*(s^3 + 10*s^2*u + 18*s*u^2 + 7*u^3) + 
        q2^3*(-14*s^3 + 56*s^2*u + 108*s*u^2 + 20*u^3) + 
        q2^2*s*(17*s^3 - 108*s^2*u - 102*s*u^2 + 40*u^3) + 
        2*q2*s*(3*s^4 + 28*s^3*u - 32*s^2*u^2 - 120*s*u^3 + 35*u^4)) + 
      m2*(q2^6*(s^2 - 4*s*u - 3*u^2) + 2*q2^5*u*(7*s^2 + 22*s*u + 4*u^2) + 
        2*s^2*u^3*(7*s^3 + 25*s^2*u + 25*s*u^2 + 7*u^3) + 
        q2^2*s*u*(2*s^4 - 47*s^3*u + 68*s^2*u^2 + 175*s*u^3 - 16*u^4) + 
        2*q2*s*u^2*(2*s^4 - 24*s^3*u - 91*s^2*u^2 - 50*s*u^3 + 7*u^4) - 
        q2^4*(3*s^4 + 24*s^3*u + 80*s^2*u^2 + 58*s*u^3 + 7*u^4) + 
        2*q2^3*(s^5 + 6*s^4*u + 47*s^3*u^2 - 8*s^2*u^3 + 10*s*u^4 + u^5)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(q2 - s)^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/64)*(m2^5*s*(3*q2^3 - 2*q2^2*s + q2*s^2 - 4*s^3) - 
      m2^4*(q2^5 + 7*q2^4*s + q2^2*s^2*(11*s - 7*u) - 4*q2^3*s*(5*s - 3*u) + 
        q2*s^3*(11*s + 2*u) - s^4*(10*s + 17*u)) + 
      m2^3*(-2*q2^6 + 2*q2^5*(2*s + u) + q2^4*s*(s + 14*u) + 
        q2^2*s^2*(-5*s^2 + 10*s*u - 8*u^2) + q2*s^3*(13*s^2 + 40*s*u - 
          2*u^2) - 2*s^4*(3*s^2 + 16*s*u + 14*u^2) + 
        q2^3*s*(-5*s^2 - 34*s*u + 18*u^2)) + 
      m2*s*u*(-3*q2^4*s*u - 2*s^3*(s + u)^2*(s + 4*u) + 
        q2*s^2*(6*s^3 + 27*s^2*u + 18*s*u^2 - 7*u^3) - 
        q2^2*s*(6*s^3 + 21*s^2*u + 6*s*u^2 - 2*u^3) + 
        q2^3*(2*s^3 + 9*s^2*u + 6*s*u^2 + 3*u^3)) + 
      m2^2*(q2^5*(6*s - u)*u - q2^4*s*u*(18*s + 7*u) - 
        q2*s^3*(3*s^3 + 33*s^2*u + 47*s*u^2 - 8*u^3) + 
        q2^2*s^2*(3*s^3 + 15*s^2*u + 10*s*u^2 + 2*u^3) - 
        q2^3*s*(s^3 - 15*s^2*u - 8*s*u^2 + 12*u^3) + 
        s^4*(s^3 + 15*s^2*u + 37*s*u^2 + 22*u^3)) + 
      s^2*u^2*(q2^3*s*(-s + u) + s^2*(s + u)^3 + 
        q2^2*(3*s^3 + s^2*u - 3*s*u^2 - u^3) + 
        q2*(-3*s^4 - 5*s^3*u + 2*s*u^3)))*(6*zeta2 - Log[\[Chi]]^2 + 
      Log[\[Chi]q]^2))/(Pi^2*(q2 - s)^2*(m2^2*s + s*u*(-q2 + s + u) + 
       m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2^7*s*(3*q2 + 4*s) - s^2*u^4*(s + u)*(-(q2*s) + (s + u)^2) - 
      m2^6*(q2^3 + 9*q2^2*s + 5*s^2*(-2*s + 5*u) + 3*q2*s*(5*s + 6*u)) + 
      m2^5*(-2*q2^4 + q2^3*(-18*s + 4*u) + 9*q2^2*s*(3*s + 4*u) - 
        2*s^2*(3*s^2 + 14*s*u - 33*u^2) + q2*s*(s^2 + 66*s*u + 45*u^2)) + 
      m2*s*u^3*(-3*q2^2*s*u + 2*s*(s + u)^2*(2*s + 5*u) + 
        q2*(-4*s^3 - 5*s^2*u + 6*s*u^2 + 3*u^3)) - 
      m2^2*u^2*(-3*q2^2*s*(12*s^2 + 10*s*u - 3*u^2) + 
        q2^3*(12*s^2 - 6*s*u + u^2) + q2*s*(30*s^3 + 44*s^2*u + 39*s*u^2 + 
          18*u^3) + s^2*(-6*s^3 + 12*s^2*u + 56*s*u^2 + 39*u^3)) + 
      m2^3*u*(2*q2^4*(8*s - u) + 12*q2^2*s*(2*s^2 - 2*s*u + 3*u^2) + 
        q2^3*(-40*s^2 - 30*s*u + 4*u^2) - 4*s^2*(s^3 + 6*s^2*u - 11*s*u^2 - 
          20*u^3) + q2*s*(4*s^3 + 100*s^2*u + 96*s*u^2 + 45*u^3)) - 
      m2^4*(6*q2^5 - 2*q2^4*(7*s + 2*u) + 6*q2^2*s*u*(5*s + 9*u) + 
        q2^3*(8*s^2 - 42*s*u + 6*u^2) - s^2*(s^3 + 27*s^2*u + 9*s*u^2 - 
          95*u^3) + q2*s*(s^3 + 53*s^2*u + 114*s*u^2 + 60*u^3)))*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(m2 - u)*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) - 
   ((I/32)*(m2 - u)^2*(m2^8*s*(3*q2 + 4*s) - 
      m2^7*(q2^3 + 24*q2^2*s + 7*q2*s*(5*s + 3*u) + s^2*(10*s + 29*u)) + 
      m2^6*(3*q2^4 + q2^3*(57*s + 5*u) + q2^2*s*(82*s + 105*u) + 
        q2*s*(49*s^2 + 166*s*u + 63*u^2) + s^2*(6*s^2 + 62*s*u + 91*u^2)) - 
      s^2*(q2 - u)^2*(q2^4*s*(s + u) - u^3*(s + u)^3 + 
        3*q2^2*u*(s^3 + 4*s^2*u + 2*s*u^2 - u^3) - 
        q2^3*(s^3 + 6*s^2*u + 6*s*u^2 - u^3) + 
        q2*u^2*(-3*s^3 - 4*s^2*u + 2*s*u^2 + 3*u^3)) - 
      m2^5*(6*q2^5 + 4*q2^4*(19*s + u) + q2^3*(99*s^2 + 90*s*u + 10*u^2) + 
        q2^2*s*(95*s^2 + 147*s*u + 165*u^2) + q2*s*(29*s^3 + 172*s^2*u + 
          300*s*u^2 + 105*u^3) + s^2*(s^3 + 33*s^2*u + 163*s*u^2 + 
          161*u^3)) - m2*s*(-3*q2^7*s + s*u^4*(s + u)^2*(5*s + 11*u) - 
        q2^6*(s^2 - 21*s*u + 3*u^2) + q2^5*(s^3 + 12*s^2*u - 36*s*u^2 + 
          15*u^3) - q2^2*u^3*(34*s^3 + 27*s^2*u - 27*s*u^2 + 15*u^3) + 
        q2^4*(5*s^4 - 5*s^3*u - 63*s^2*u^2 + 13*s*u^3 - 30*u^4) - 
        q2*u^3*(4*s^4 + 19*s^3*u + 48*s^2*u^2 + 34*s*u^3 - 3*u^4) + 
        q2^3*u*(-10*s^4 + 36*s^3*u + 100*s^2*u^2 + s*u^3 + 30*u^4)) - 
      m2^3*(7*q2^7 - 2*q2^6*(7*s + 5*u) + q2^5*(21*s^2 - 17*s*u + 10*u^2) + 
        q2^4*(40*s^3 + 87*s^2*u + 106*s*u^2 - 12*u^3) + 
        s^2*u^2*(10*s^3 + 90*s^2*u + 200*s*u^2 + 119*u^3) + 
        2*q2^2*s*(5*s^4 + 10*s^3*u - 62*s^2*u^2 - 107*s*u^3 - 15*u^4) + 
        q2^3*(50*s^4 - 20*s^3*u + 108*s^2*u^2 - 96*s*u^3 + 5*u^4) + 
        q2*s*u*(10*s^4 + 38*s^3*u + 44*s^2*u^2 + 35*s*u^3 + 63*u^4)) + 
      m2^4*(q2^5*(29*s + 6*u) + q2^4*(72*s^2 + 62*s*u - 6*u^2) + 
        2*q2^3*(45*s^3 + 36*s^2*u - 21*s*u^2 + 5*u^3) + 
        5*s^2*u*(s^3 + 15*s^2*u + 47*s*u^2 + 35*u^3) + 
        q2^2*s*(55*s^3 + 87*s^2*u - 54*s*u^2 + 90*u^3) + 
        q2*s*(5*s^4 + 70*s^3*u + 198*s^2*u^2 + 235*s*u^3 + 105*u^4)) + 
      m2^2*(-q2^8 + q2^7*(-3*s + 5*u) + q2^6*(-6*s^2 + 45*s*u - 10*u^2) - 
        q2*s*u^3*(20*s^3 + 71*s^2*u + 60*s*u^2 - 21*u^3) + 
        q2^5*(5*s^3 + 6*s^2*u - 111*s*u^2 + 10*u^3) - 
        3*q2^2*s*u^2*(12*s^3 + 48*s^2*u + 26*s*u^2 + 17*u^3) + 
        s^2*u^3*(10*s^3 + 60*s^2*u + 100*s*u^2 + 49*u^3) + 
        q2^4*(20*s^4 + 16*s^3*u - 57*s^2*u^2 + 90*s*u^3 - 5*u^4) + 
        q2^3*(10*s^5 - 30*s^4*u + 118*s^3*u^2 + 146*s^2*u^3 + 9*s*u^4 + 
          u^5)))*(-zeta2 + 
      2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
          (m2 - u))] + PolyLog[2, (m2 - q2 + u - 
         Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/(m2 - q2 + u + 
         Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(5/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2 - u)^2*(2*m2^4*s + s^2*(s + u)*(-(q2*s) + (s + u)^2) - 
      m2^3*(6*q2^2 + 23*q2*s + 2*s*(8*s + 3*u)) - 
      m2*s*(-3*q2^2*s + 2*(s + u)^2*(4*s + u) + 
        q2*(-3*s^2 + 4*s*u + 3*u^2)) + m2^2*(-q2^3 + q2^2*(-9*s + 6*u) + 
        q2*s*(9*s + 26*u) + s*(20*s^2 + 27*s*u + 6*u^2)))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]) - ((I/64)*(m2 - u)^2*(2*m2^4*s + 
      s^2*(s + u)*(-(q2*s) + (s + u)^2) - 
      m2^3*(6*q2^2 + 23*q2*s + 2*s*(8*s + 3*u)) - 
      m2*s*(-3*q2^2*s + 2*(s + u)^2*(4*s + u) + 
        q2*(-3*s^2 + 4*s*u + 3*u^2)) + m2^2*(-q2^3 + q2^2*(-9*s + 6*u) + 
        q2*s*(9*s + 26*u) + s*(20*s^2 + 27*s*u + 6*u^2)))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*\[Beta]), 
 PaVe[4, muR, 0][1, 2, 3][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/32)*(2*m2^4 + q2*s*u*(-q2 + 2*s + u) - m2^3*(7*q2 + s + 6*u) + 
      m2*(q2^3 - 2*q2^2*s + q2*u*(-8*s + u) - u^2*(s + 2*u)) + 
      m2^2*(4*q2^2 + 3*q2*(s + 2*u) + 2*u*(s + 3*u))))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/32)*m2*(m2^3*(8*q2 + 6*s) - s*u*(-(q2*s) + s^2 + 3*s*u + 2*u^2) - 
      m2^2*(2*q2^2 - 8*q2*(s - 2*u) + s*(9*s + 14*u)) + 
      m2*(q2^2*(s - 2*u) + 2*s*(s^2 + 4*s*u + 5*u^2) + q2*(-3*s^2 + 8*u^2)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) + ((I/32)*(m2 - u)*(2*m2^7*(4*q2 + s) + 
      m2^6*(-30*q2^2 + s*(7*s - 16*u) + 8*q2*(s - 5*u)) - 
      2*s^2*(q2 - u)^2*u^2*(-q2 + s + u)^2 + 
      m2^5*(44*q2^3 + 3*q2^2*(s + 20*u) - 4*q2*(6*s^2 + 3*s*u - 20*u^2) + 
        s*(-2*s^2 - 7*s*u + 50*u^2)) - m2^4*(8*q2^4 - 5*q2^2*s*(4*s - 9*u) + 
        q2^3*(37*s + 16*u) + s*u*(-3*s^2 + 40*s*u + 80*u^2) - 
        2*q2*(3*s^3 + 25*s^2*u + 4*s*u^2 - 40*u^3)) + 
      m2*s*u*(4*q2^5 + q2^3*s*(5*s + 6*u) - q2^4*(9*s + 10*u) + 
        5*q2^2*u*(3*s^2 + 8*s*u + 4*u^2) + u^2*(4*s^3 + 23*s^2*u + 25*s*u^2 + 
          6*u^3) - q2*u*(8*s^3 + 43*s^2*u + 62*s*u^2 + 20*u^3)) + 
      m2^2*(-2*q2^6 + 7*q2^5*s + q2^4*(-7*s^2 + 9*s*u + 20*u^2) + 
        q2^3*(2*s^3 - 18*s^2*u - 49*s*u^2 - 40*u^3) + 
        2*q2*u^2*(26*s^3 + 59*s^2*u + 24*s*u^2 - 4*u^3) + 
        q2^2*u*(3*s^3 - 36*s^2*u + 17*s*u^2 + 30*u^3) - 
        s*u^2*(2*s^3 + 35*s^2*u + 77*s*u^2 + 32*u^3)) + 
      m2^3*(-12*q2^5 + q2^4*(17*s + 20*u) + 2*q2^3*(2*s^2 + 19*s*u + 6*u^2) + 
        s*u^2*(15*s^2 + 94*s*u + 70*u^2) + q2*u*(-11*s^3 - 90*s^2*u - 
          32*s*u^2 + 40*u^3) - q2^2*(6*s^3 + 12*s^2*u - 5*s*u^2 + 60*u^3)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(-2*m2^4 + s*(q2 - u)*u*(-q2 + s + u) + m2^3*(5*q2 + 4*s + 6*u) + 
      m2^2*(4*q2^2 - s^2 - 9*s*u - 6*u^2 - 2*q2*(2*s + u)) + 
      m2*(q2^3 - 2*q2^2*s + q2*(s^2 - 2*s*u - 3*u^2) + 
        2*u*(s^2 + 3*s*u + u^2)))*(-1 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2]))/(Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/32)*(m2^6*s*(s - 2*u) + m2^5*(2*q2^2*(s + u) + 2*s*u*(s + 6*u) + 
        q2*s*(-4*s + 11*u)) + s*(q2 - u)*u^2*(q2^3*(s + u) - 
        q2^2*s*(s + 8*u) + q2*u*(4*s^2 + 2*s*u - 3*u^2) + 
        u^2*(3*s^2 + 5*s*u + 2*u^2)) + m2^4*(q2^4 - q2^3*(6*s + 5*u) - 
        3*q2*s*u*(2*s + 13*u) + q2^2*(6*s^2 - 3*s*u - 8*u^2) - 
        s*u*(s^2 + 23*s*u + 30*u^2)) + m2^3*(-2*q2^5 + 2*q2^4*(3*s + 7*u) + 
        q2^3*(-4*s^2 - 9*s*u + 3*u^2) + q2^2*u*(5*s^2 - 24*s*u + 12*u^2) + 
        2*s*u^2*(3*s^2 + 26*s*u + 20*u^2) + q2*s*u*(3*s^2 + 27*s*u + 
          46*u^2)) + m2^2*(q2^6 - q2^5*(2*s + 3*u) + q2^3*u^2*(-25*s + 9*u) + 
        q2^4*(s^2 + 3*s*u - 7*u^2) - q2*s*u^2*(3*s^2 + 17*s*u + 14*u^2) - 
        s*u^3*(12*s^2 + 53*s*u + 30*u^2) + q2^2*u*(-3*s^3 + 14*s^2*u + 
          46*s*u^2 - 8*u^3)) + m2*u*(-3*q2^5*u + 
        q2*s*u^2*(s^2 - 3*s*u - 9*u^2) + 2*s*u^3*(5*s^2 + 13*s*u + 6*u^2) + 
        q2^4*(-s^2 + 6*s*u + 8*u^2) + q2^3*(s^3 + 5*s^2*u + 9*s*u^2 - 
          7*u^3) + q2^2*u*(-2*s^3 - 19*s^2*u - 18*s*u^2 + 2*u^3)))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*u*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(-2*m2^4*s*(3*q2 + s) + s^2*u^2*(q2^2 + s*(s + u) - 
        q2*(2*s + 3*u)) + m2^3*(2*q2^3 + 5*q2^2*s + 2*s^2*(4*s + 3*u) + 
        q2*s*(-13*s + 18*u)) + m2*s*u*(-2*q2^3 + 3*q2^2*(2*s + u) + 
        2*s*(s^2 + u^2) + q2*(-6*s^2 + 3*s*u + 6*u^2)) + 
      m2^2*(q2^4 - 2*q2^3*(s + u) - q2^2*s*(s + 8*u) + 
        q2*s*(4*s^2 + 13*s*u - 18*u^2) - s^2*(2*s^2 + 9*s*u + 6*u^2)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(4*m2 - s)*(-q2 + s)*(m2^2*s + s*u*(-q2 + s + u) + 
       m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/32)*q2*(2*m2^7*s - m2^6*(2*q2^2 + 9*q2*s + s*(-3*s + 14*u)) + 
      m2^5*(7*q2^3 - 5*q2*s*(s - 8*u) + 2*q2^2*(4*s + 5*u) + 
        2*s*(s^2 - 9*s*u + 21*u^2)) - m2^4*(12*q2^4 + q2^3*(-3*s + 14*u) + 
        q2^2*(-7*s^2 + 21*s*u + 20*u^2) + s*u*(-7*s^2 - 45*s*u + 70*u^2) + 
        q2*(6*s^3 + 65*s*u^2)) + m2^2*(2*q2^6 - 2*q2^5*(3*s + 5*u) + 
        q2^4*(6*s^2 + 3*s*u - 4*u^2) + q2*s*u^2*(-14*s^2 - 106*s*u + 5*u^2) + 
        s*u^2*(8*s^3 + 76*s^2*u + 45*s*u^2 - 42*u^3) + 
        q2^2*u*(s^3 - 12*s^2*u - 8*s*u^2 - 10*u^3) - 
        2*q2^3*(s^3 - 11*s*u^2 - 7*u^3)) + s*(q2 - u)*u^2*
       (q2^3*(2*s + u) - 2*q2^2*s*(2*s + 9*u) + 
        q2*(2*s^3 + 23*s^2*u + 19*s*u^2 - 3*u^3) + 
        u*(-8*s^3 - 13*s^2*u - 3*s*u^2 + 2*u^3)) - 
      m2*u*(q2^5*(2*s + 3*u) - 2*q2^4*(2*s^2 + 13*s*u + 4*u^2) - 
        q2*s*u*(2*s^3 + 62*s^2*u + 81*s*u^2 - 16*u^3) + 
        2*s*u^2*(8*s^3 + 26*s^2*u + 9*s*u^2 - 7*u^3) + 
        2*q2^2*u*(s^3 + 21*s^2*u - 3*s*u^2 - u^3) + 
        q2^3*(2*s^3 + 17*s^2*u + 28*s*u^2 + 7*u^3)) + 
      m2^3*(5*q2^5 + q2^3*s*(-11*s + 4*u) + 2*q2^4*(s + 4*u) - 
        2*s*u^2*(23*s^2 + 30*s*u - 35*u^2) + 2*q2*s*u*(-3*s^2 + 26*s*u + 
          20*u^2) + 2*q2^2*(3*s^3 + 5*s^2*u + 9*s*u^2 + 10*u^3)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(q2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/128)*(-2*m2^5*s*(3*q2 + s) + s^2*u^3*(-(q2*s) + s^2 + 3*s*u + 2*u^2) + 
      m2^4*(2*q2^3 + 6*q2^2*s - 12*q2*s*(s - 2*u) + s^2*(7*s + 10*u)) - 
      m2*s*u^2*(-3*q2^2*s + 2*s*u*(3*s + 5*u) + 3*q2*(s^2 + 2*s*u + 2*u^2)) + 
      m2^3*(2*q2^4 - 2*q2^3*(s + 2*u) - 3*q2^2*s*(s + 4*u) + 
        q2*s*(5*s^2 + 18*s*u - 36*u^2) - 2*s^2*(s^2 + 7*s*u + 10*u^2)) + 
      m2^2*u*(6*q2^2*s*(2*s + u) + q2^3*(-6*s + 2*u) + 
        s^2*(3*s^2 + 10*s*u + 20*u^2) + q2*(-9*s^3 + 24*s*u^2)))*
     (6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/64)*(m2 - u)*(2*m2^5*s*(3*q2 + s) - s^2*u^3*(-(q2*s) + s^2 + 3*s*u + 
        2*u^2) - m2^4*(2*q2^3 + 6*q2^2*s - 12*q2*s*(s - 2*u) + 
        s^2*(7*s + 10*u)) + m2*s*u^2*(-3*q2^2*s + 2*s*u*(3*s + 5*u) + 
        3*q2*(s^2 + 2*s*u + 2*u^2)) + m2^3*(-2*q2^4 + 2*q2^3*(s + 2*u) + 
        3*q2^2*s*(s + 4*u) + 2*s^2*(s^2 + 7*s*u + 10*u^2) + 
        q2*s*(-5*s^2 - 18*s*u + 36*u^2)) - 
      m2^2*u*(6*q2^2*s*(2*s + u) + q2^3*(-6*s + 2*u) + 
        s^2*(3*s^2 + 10*s*u + 20*u^2) + q2*(-9*s^3 + 24*s*u^2)))*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) - 
   ((I/64)*(m2 - u)^2*(2*m2^8*s*(3*q2 + s) - 
      m2^7*(2*q2^3 + 36*q2^2*s - 2*q2*s*(s - 21*u) + s^2*(-7*s + 16*u)) + 
      m2^6*(8*q2^4 + 2*q2^3*(46*s + 5*u) + 5*q2^2*s*(s + 30*u) - 
        2*q2*s*(15*s^2 + 2*s*u - 63*u^2) + s^2*(-2*s^2 - 23*s*u + 56*u^2)) - 
      s^2*(q2 - u)^2*u*(q2^4*s + 3*q2^2*u*(s^2 - 2*u^2) - 
        q2^3*(s^2 + 6*s*u - 2*u^2) + q2*u^2*(9*s^2 + 14*s*u + 6*u^2) - 
        u^2*(4*s^3 + 11*s^2*u + 9*s*u^2 + 2*u^3)) + 
      m2^4*(14*q2^6 + 14*q2^5*s + q2^4*(76*s^2 + 24*s*u - 6*u^2) + 
        s^2*u^2*(-3*s^2 + 95*s*u + 140*u^2) - q2*s*u*(15*s^3 + 84*s^2*u + 
          10*s*u^2 - 210*u^3) + 4*q2^3*(-5*s^3 + 46*s^2*u + 12*s*u^2 + 
          5*u^3) + q2^2*s*(-20*s^3 - 27*s^2*u + 162*s*u^2 + 60*u^3)) - 
      m2^5*(10*q2^5 + 2*q2^4*(44*s + 7*u) - s^2*u*(9*s^2 + s*u - 112*u^2) + 
        q2^3*(53*s^2 + 180*s*u + 20*u^2) + 3*q2^2*s*(-15*s^2 + 27*s*u + 
          70*u^2) - 10*q2*(s^4 + 7*s^3*u - 21*s*u^3)) + 
      m2*s*(3*q2^7*s + q2^6*(-5*s^2 - 21*s*u + 6*u^2) + 
        q2^3*u^2*(18*s^3 + 44*s^2*u - 65*s*u^2 - 60*u^3) + 
        2*q2^5*(s^3 + 15*s^2*u + 9*s*u^2 - 15*u^3) - 
        s*u^4*(8*s^3 + 45*s^2*u + 57*s*u^2 + 16*u^3) + 
        q2^2*u^3*(-56*s^3 - 123*s^2*u - 9*s*u^2 + 30*u^3) + 
        q2^4*u*(-15*s^3 - 39*s^2*u + 46*s*u^2 + 60*u^3) + 
        2*q2*u^3*(8*s^4 + 48*s^3*u + 75*s^2*u^2 + 22*s*u^3 - 3*u^4)) + 
      m2^2*(-2*q2^8 + 10*q2^7*u + q2^6*(-3*s^2 + 42*s*u - 20*u^2) - 
        2*q2*s*u^3*(43*s^3 + 119*s^2*u + 36*s*u^2 - 21*u^3) + 
        2*q2^5*(9*s^3 - 18*s^2*u - 51*s*u^2 + 10*u^3) + 
        s^2*u^3*(4*s^3 + 66*s^2*u + 143*s*u^2 + 56*u^3) - 
        q2^2*s*u^2*(36*s^3 - 70*s^2*u + 27*s*u^2 + 114*u^3) + 
        q2^4*(-10*s^4 - 13*s^3*u + 54*s^2*u^2 + 48*s*u^3 - 10*u^4) + 
        2*q2^3*u*(15*s^4 + 34*s^3*u + 14*s^2*u^2 + 42*s*u^3 + u^4)) - 
      m2^3*(8*q2^7 - 6*q2^6*(2*s + u) + 2*q2^5*(16*s^2 + s*u + 5*u^2) + 
        s^2*u^3*(36*s^2 + 175*s*u + 112*u^2) - 2*q2*s*u^2*
         (13*s^3 + 82*s^2*u + 25*s*u^2 - 63*u^3) + 
        2*q2^2*s*u*(5*s^3 + s^2*u + 35*s*u^2 - 60*u^3) + 
        q2^4*(15*s^3 + 26*s^2*u + 44*s*u^2 - 22*u^3) + 
        q2^3*(-20*s^4 + 36*s^3*u + 74*s^2*u^2 - 16*s*u^3 + 10*u^4)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(5/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/64)*(m2 - u)^2*(4*m2^4*s + s^2*u*(-(q2*s) + s^2 + 3*s*u + 2*u^2) - 
      2*m2^3*(6*q2^2 + 7*q2*s + 6*s*(-s + u)) + 
      m2^2*(-2*q2^3 - 6*q2^2*(s - 2*u) + 2*q2*s*(11*s + 10*u) + 
        s*(-11*s^2 - 2*s*u + 12*u^2)) + 
      m2*s*(3*q2^2*s - q2*(5*s^2 + 4*s*u + 6*u^2) + 
        2*(s^3 - s^2*u - 6*s*u^2 - 2*u^3)))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]) - ((I/128)*(m2 - u)^2*(4*m2^4*s + 
      s^2*u*(-(q2*s) + s^2 + 3*s*u + 2*u^2) - 
      2*m2^3*(6*q2^2 + 7*q2*s + 6*s*(-s + u)) + 
      m2^2*(-2*q2^3 - 6*q2^2*(s - 2*u) + 2*q2*s*(11*s + 10*u) + 
        s*(-11*s^2 - 2*s*u + 12*u^2)) + 
      m2*s*(3*q2^2*s - q2*(5*s^2 + 4*s*u + 6*u^2) + 
        2*(s^3 - s^2*u - 6*s*u^2 - 2*u^3)))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*\[Beta]), 
 PaVe[4, muR, 0][1, 3, 3][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/32)*(2*m2^4 + 2*m2^2*(s + u)*(q2 + 3*u) - m2^3*(3*q2 + s + 6*u) + 
      s*u*(-q2^2 + s*u + q2*(s + u)) + m2*(q2^3 - q2^2*s + q2*u*(-3*s + u) - 
        u*(s^2 + 5*s*u + 2*u^2))))/(Pi^2*(4*m2 - s)*
     (m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*m2*(m2 - u)*(m2^2*(4*q2 - 3*s) + s*u^2 + 
      m2*(q2^2 - 2*q2*(s + 2*u) + s*(s + 2*u)))*(-2 + EulerGamma - 
      Log[4*Pi] + Log[m2/\[Mu]2]))/(Pi^2*(4*m2 - s)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/16)*(m2 - u)*(m2^7*(-4*q2 + 5*s) + s^2*(q2 - u)^2*u^2*
       (-q2 + s + u)^2 + m2^6*(13*q2^2 - 4*q2*(3*s - 5*u) - s*(s + 22*u)) + 
      m2^5*(-12*q2^3 + q2^2*(7*s - 24*u) + 7*s*u*(3*s + 5*u) + 
        2*q2*(s^2 + 7*s*u - 20*u^2)) + m2^4*(2*q2^4 + 8*q2^3*u + 
        q2^2*(29*s - 6*u)*u - s*u*(4*s^2 + 49*s*u + 20*u^2) + 
        q2*u*(-29*s^2 + 20*s*u + 40*u^2)) + 
      m2^3*(2*q2^4*(s + 2*u) + s*u^2*(18*s^2 + 30*s*u - 5*u^2) - 
        q2^3*(2*s^2 + 15*s*u + 16*u^2) + q2^2*u*(-2*s^2 - 5*s*u + 32*u^2) + 
        q2*u*(6*s^3 + 11*s^2*u - 24*s*u^2 - 20*u^3)) + 
      m2^2*(q2^6 - 2*q2^5*s + q2^2*u^2*(s^2 - 21*s*u - 15*u^2) + 
        q2^4*(s^2 - 6*s*u - 10*u^2) + q2^3*u*(6*s^2 + 27*s*u + 20*u^2) + 
        q2*u^2*(-7*s^3 - 7*s^2*u - 8*s*u^2 + 4*u^3) + 
        s*u^2*(-2*s^3 - 10*s^2*u + 9*s*u^2 + 10*u^3)) + 
      m2*s*u*(-2*q2^5 - q2^3*s*(2*s + 3*u) + q2^4*(4*s + 5*u) - 
        q2^2*u*(3*s^2 + 17*s*u + 10*u^2) + u^2*(s^3 - 6*s^2*u - 11*s*u^2 - 
          3*u^3) + q2*u*(s^3 + 11*s^2*u + 27*s*u^2 + 10*u^3)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(-2*m2^4 + s*(q2 - u)*u*(-q2 + s + u) + m2^3*(q2 + 6*u) + 
      m2^2*(q2*(s + 2*u) - u*(5*s + 6*u)) + 
      m2*(q2^3 - q2^2*s - 3*q2*u*(s + u) + u*(s^2 + 6*s*u + 2*u^2)))*
     (-1 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/32)*(m2 - u)*(2*m2^5*s + m2^3*(7*q2^3 + 20*s*u^2 - q2*s*(9*s + 2*u) + 
        2*q2^2*(s + 3*u)) - m2^4*(2*q2^2 + q2*s + s*(-3*s + 10*u)) + 
      m2^2*(-2*q2^4 - 9*q2^3*s + 4*q2*s*u*(s + 3*u) + 
        s*u*(s^2 - 18*s*u - 20*u^2) + 3*q2^2*(3*s^2 + s*u - 2*u^2)) + 
      s*(q2 - u)*u*(q2^3 - 2*q2^2*s + q2*(s^2 - 7*s*u - 3*u^2) + 
        u*(5*s^2 + 9*s*u + 2*u^2)) - m2*(3*q2^5 - 2*q2^4*(3*s + 4*u) + 
        2*q2^2*u*(s^2 + s*u - u^2) - 2*s*u^2*(2*s^2 + 12*s*u + 5*u^2) + 
        q2^3*(3*s^2 + 7*u^2) + q2*s*u*(2*s^2 + 11*s*u + 14*u^2)))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(6*m2^4*s + s^2*u^2*(-q2 + s + 3*u) - 
      m2*s*u*(-2*q2^2 + 6*u*(s + u) + q2*(2*s + 3*u)) + 
      m2^3*(-2*q2^2 + q2*s - 2*s*(s + 9*u)) + 
      m2^2*(-q2^3 + 2*q2*s*u + q2^2*(s + 2*u) + s*u*(5*s + 18*u)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(4*m2 - s)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      2) + ((I/32)*(2*m2^7*s - m2^6*(2*q2^2 + 5*q2*s + 14*s*u) + 
      m2^5*(7*q2^3 + 20*q2*s*u + 2*q2^2*(2*s + 5*u) + 2*s*u*(2*s + 21*u)) - 
      m2^4*(7*q2^4 + 2*q2^3*(s + 7*u) + 10*s*u^2*(2*s + 7*u) + 
        q2^2*u*(9*s + 20*u) + q2*s*u*(2*s + 25*u)) + 
      s*(q2 - u)*u^2*(q2^3*(s + u) + 2*u^2*(s + u)^2 - q2^2*s*(s + 9*u) + 
        q2*u*(5*s^2 + 4*s*u - 3*u^2)) + m2^2*(q2^6 - q2^5*(s + 2*u) - 
        q2^4*u*(9*s + 11*u) + q2^2*u^2*(5*s^2 - 4*s*u - 10*u^2) + 
        q2^3*u*(2*s^2 + 5*s*u + 14*u^2) - 2*s*u^3*(3*s^2 + 20*s*u + 21*u^2) + 
        q2*s*u^2*(s^2 - 6*s*u + 25*u^2)) + 
      m2*u*(-(q2^5*(2*s + 3*u)) + 2*q2*s*u^2*(s^2 + s*u - 10*u^2) + 
        2*q2^4*(s^2 + 9*s*u + 4*u^2) + 2*s*u^3*(3*s^2 + 10*s*u + 7*u^2) - 
        q2^3*u*(4*s^2 + 16*s*u + 7*u^2) + 2*q2^2*u*(-s^3 - 6*s^2*u + 
          3*s*u^2 + u^3)) + m2^3*(q2^5 + 14*q2^3*s*u + 6*q2*s^2*u^2 + 
        2*q2^4*(s + 5*u) + 2*s*u^2*(s^2 + 20*s*u + 35*u^2) + 
        q2^2*(-6*s^2*u + 6*s*u^2 + 20*u^3)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/64)*(m2 - u)^2*(m2^3*s*(-3*q2 + 2*s) - 3*m2*q2*s*u^2 + s^2*u^3 + 
      m2^2*(q2^3 - 3*q2^2*s + 3*q2*s*(s + 2*u) - s^2*(s + 3*u)))*
     (6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2 - u)^3*(m2^3*(3*q2 - 2*s)*s + 3*m2*q2*s*u^2 - s^2*u^3 + 
      m2^2*(-q2^3 + 3*q2^2*s - 3*q2*s*(s + 2*u) + s^2*(s + 3*u)))*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) - 
   ((I/32)*(m2 - u)^2*(m2^8*(3*q2 - 2*s)*s - 
      m2^7*(q2^3 + 12*q2^2*s + s^2*(s - 13*u) - 7*q2*s*(s - 3*u)) - 
      s^2*(q2 - u)^2*u^3*(q2^3 - 2*s^3 - 6*s^2*u - 6*s*u^2 - u^3 - 
        3*q2^2*(2*s + u) + 3*q2*(2*s^2 + 4*s*u + u^2)) + 
      m2^6*(5*q2^4 + 5*q2^3*(3*s + u) - 7*s^2*u*(s + 5*u) + 
        q2^2*s*(-11*s + 45*u) + q2*s*(5*s^2 - 20*s*u + 63*u^2)) + 
      m2^4*(8*q2^6 + 3*q2^5*s - 16*q2^4*s^2 - 6*q2^2*s*u*
         (3*s^2 - 12*s*u + 5*u^2) - s^2*u^2*(12*s^2 + 80*s*u + 35*u^2) + 
        q2*s*u^2*(-54*s^2 + 55*s*u + 105*u^2) + 
        2*q2^3*(5*s^3 + 22*s^2*u + 15*s*u^2 + 5*u^3)) + 
      m2^2*(-q2^8 + q2^7*(3*s + 5*u) + q2^2*s*u^3*(10*s^2 - 63*s*u - 
          63*u^2) - q2^6*(3*s^2 + 3*s*u + 10*u^2) + 
        q2^4*u*(s^3 - 9*s^2*u - 42*s*u^2 - 5*u^3) + 
        q2^3*u^2*(10*s^3 + 50*s^2*u + 75*s*u^2 + u^3) + 
        s^2*u^3*(-4*s^3 - 18*s^2*u + s*u^2 + 7*u^3) + 
        q2^5*(s^3 + 9*s*u^2 + 10*u^3) + q2*s*u^3*(-12*s^3 + s^2*u + 
          18*s*u^2 + 21*u^3)) - m2^3*(q2^7 + q2^6*(6*s + 4*u) - 
        q2^5*s*(11*s + 9*u) + 2*q2^2*s*u^2*(9*s^2 + 4*s*u - 45*u^2) - 
        s^2*u^3*(30*s^2 + 55*s*u + 7*u^2) + q2^4*(5*s^3 + 19*s^2*u - 
          18*s*u^2 - 10*u^3) + q2^3*u*(-4*s^3 + 34*s^2*u + 60*s*u^2 + 
          5*u^3) + q2*s*u^2*(-18*s^3 - 16*s^2*u + 65*s*u^2 + 63*u^3)) - 
      m2^5*(10*q2^5 + 2*q2^4*(3*s + 5*u) - s^2*u^2*(44*s + 49*u) + 
        q2^3*(-14*s^2 + 30*s*u + 10*u^2) + q2^2*s*(10*s^2 + 18*s*u + 
          45*u^2) - 5*q2*(4*s^3*u - 21*s*u^3)) + 
      m2*s*u^2*(3*q2^6 - 3*q2^5*(6*s + 5*u) + 3*q2^2*u^3*(6*s + 5*u) + 
        q2^4*(18*s^2 + 59*s*u + 30*u^2) + s*u^2*(2*s^3 - 6*s^2*u - 18*s*u^2 - 
          5*u^3) - 2*q2^3*(3*s^3 + 18*s^2*u + 32*s*u^2 + 15*u^3) + 
        q2*u*(2*s^4 + 12*s^3*u + 36*s^2*u^2 + 10*s*u^3 - 3*u^4)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(5/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2 - u)^2*(2*m2^4*s + s^2*u^3 - m2*s*u^2*(3*q2 + 2*u) - 
      m2^3*(6*q2^2 - 9*q2*s + 4*s^2 + 6*s*u) + 
      m2^2*(-q2^3 + 3*q2^2*(s + 2*u) - 3*q2*s*(s + 2*u) + 
        s*(s^2 + 3*s*u + 6*u^2)))*(3*zeta2 - 
      Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]) - ((I/64)*(m2 - u)^2*(2*m2^4*s + s^2*u^3 - 
      m2*s*u^2*(3*q2 + 2*u) - m2^3*(6*q2^2 - 9*q2*s + 4*s^2 + 6*s*u) + 
      m2^2*(-q2^3 + 3*q2^2*(s + 2*u) - 3*q2*s*(s + 2*u) + 
        s*(s^2 + 3*s*u + 6*u^2)))*(8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 
      2*Log[4*Pi]*Log[\[Chi]] + 2*Log[m2/\[Mu]2]*Log[\[Chi]] + 
      4*Log[1 - \[Chi]]*Log[\[Chi]] - Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*\[Beta]), 
 PaVe[4, muR, 0][2, 2, 2][Sqr[p1], Sqr[-k1], Sqr[-q], Sqr[-k1 + p1 - q], 
   Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/32)*(m2^6*(2*q2^3 + 7*q2^2*s - 8*q2*s^2 + 7*s^3) - 
      m2^5*(4*q2^4 + 5*q2*s^2*(7*s - 6*u) + q2^3*(26*s + 8*u) + 
        s^3*(-2*s + 29*u) + q2^2*(-45*s^2 + 33*s*u)) + 
      m2^4*(2*q2^5 + q2^4*(35*s + 4*u) + q2*s^2*(6*s^2 + 61*s*u - 40*u^2) + 
        q2^3*(-67*s^2 + 56*s*u + 12*u^2) + s^3*(-s^2 + 4*s*u + 46*u^2) + 
        q2^2*s*(37*s^2 - 83*s*u + 62*u^2)) + 
      q2*s^2*u^2*(s*u*(s + u)^2 - q2^2*(s^2 - 6*s*u + u^2) + 
        q2*(s^3 - 5*s^2*u - 5*s*u^2 + u^3)) - 
      m2^3*(4*q2^5*(2*s + u) + q2^4*(-10*s^2 + 23*s*u - 4*u^2) + 
        s^3*u*(-s^2 + 16*s*u + 34*u^2) + q2^3*(-8*s^3 + 14*s^2*u + 28*s*u^2 + 
          8*u^3) - q2*s^2*(s^3 - 46*s^2*u - 22*s*u^2 + 20*u^3) + 
        q2^2*s*(13*s^3 - 54*s^2*u - 42*s*u^2 + 58*u^3)) + 
      m2^2*(2*q2^5*(s^2 + u^2) + q2*s^3*u*(7*s^2 + 12*s*u + 2*u^2) + 
        s^3*u^2*(s^2 + 12*s*u + 11*u^2) + q2^4*(-5*s^3 + 12*s^2*u + 
          21*s*u^2 - 4*u^3) + q2^2*s*u*(5*s^3 - 16*s^2*u - 14*s*u^2 + 
          27*u^3) + q2^3*(3*s^4 - 18*s^3*u + 4*s^2*u^2 - 8*s*u^3 + 2*u^4)) - 
      m2*s*u*(s^2*u^2*(s + u)^2 + q2^4*(s^2 + 6*s*u + u^2) + 
        q2*s*u*(s^3 + 6*s^2*u + 7*s*u^2 + 2*u^3) - 
        2*q2^3*(2*s^3 + 2*s^2*u - 9*s*u^2 + 3*u^3) + 
        q2^2*(3*s^4 + 3*s^3*u - 26*s^2*u^2 - 9*s*u^3 + 5*u^4))))/
    (Pi^2*(4*m2 - s)*(q2 - s)^2*s*(m2 - u)^2*(m2^2 + (q2 - u)^2 - 
      2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*m2*(-2*m2^7*s + s^2*u^3*(s + u)^3 + 
      m2^6*(2*q2^2 + 22*q2*s + s*(25*s + 12*u)) - 
      2*m2^5*(q2^2*(6*s + 4*u) + 5*q2*s*(5*s + 9*u) + 
        s*(-5*s^2 + 56*s*u + 15*u^2)) - m2*s*u^2*(s + u)*
       (q2*(-s^2 + 4*s*u + 2*u^2) + 2*(2*s^3 + 8*s^2*u + 7*s*u^2 + u^3)) + 
      m2^4*(-24*q2^3*s + 3*q2^2*(13*s^2 + 8*s*u + 4*u^2) + 
        q2*s*(7*s^2 + 124*s*u + 140*u^2) + s*(-8*s^3 + 35*s^2*u + 199*s*u^2 + 
          40*u^3)) + m2^3*(6*q2^3*s^2 + q2*s*(s^3 - 89*s^2*u - 104*s*u^2 - 
          100*u^3) - q2^2*(9*s^3 - 30*s^2*u + 12*s*u^2 + 8*u^3) + 
        s*(s^4 + 14*s^3*u - 124*s^2*u^2 - 176*s*u^3 - 30*u^4)) + 
      m2^2*u*(q2^2*(-9*s^3 + 3*s^2*u + 2*u^3) + 
        q2*s*(16*s^3 + 13*s^2*u + 36*s*u^2 + 30*u^3) + 
        s*(-4*s^4 + 35*s^3*u + 106*s^2*u^2 + 79*s*u^3 + 12*u^4)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2 - u)^3*(m2^2*s + s*u*(-q2 + s + u) + 
       m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/16)*(m2 - u)*(2*m2^8*s + s^3*(q2 - u)^2*u^2*(-q2 + s + u)^2 - 
      2*m2^7*(q2^2 + 13*q2*s + 8*s^2 + 6*s*u) + 
      m2^6*(8*q2^3 + q2^2*(85*s + 8*u) + 2*q2*s*(38*s + 51*u) + 
        2*s*(10*s^2 + 41*s*u + 15*u^2)) - 
      2*m2^5*(6*q2^4 + q2^3*(54*s + 4*u) + q2^2*(52*s^2 + 58*s*u + 6*u^2) + 
        q2*s*(31*s^2 + 93*s*u + 74*u^2) + 2*s*(2*s^3 + 23*s^2*u + 43*s*u^2 + 
          10*u^3)) - m2*s^2*(2*q2^5*u - 4*q2^4*u*(s + u) + 
        q2^3*(s^3 + 5*s^2*u - 2*s*u^2 - 4*u^3) + 
        4*u^3*(s^3 + 4*s^2*u + 4*s*u^2 + u^3) - 
        2*q2*u^2*(2*s^3 + 14*s^2*u + 21*s*u^2 + 7*u^3) + 
        q2^2*u*(-3*s^3 + 7*s^2*u + 32*s*u^2 + 16*u^3)) + 
      m2^2*s*(q2^6 - 2*q2^5*(s - u) + q2^4*(7*s^2 - 13*s*u - 16*u^2) + 
        q2^3*(7*s^3 + 29*s^2*u + 29*s*u^2 + 24*u^3) + 
        q2^2*(3*s^4 - 25*s^3*u + 20*s*u^3 - 11*u^4) + 
        q2*u*(s^4 - 27*s^3*u - 100*s^2*u^2 - 68*s*u^3 - 2*u^4) + 
        2*u^2*(3*s^4 + 22*s^3*u + 37*s^2*u^2 + 17*s*u^3 + u^4)) - 
      m2^3*(2*q2^6 - 2*q2^5*(s + 4*u) + q2^4*(41*s^2 - 12*s*u + 12*u^2) + 
        q2^3*(27*s^3 + 34*s^2*u + 60*s*u^2 - 8*u^3) + 
        2*q2^2*(11*s^4 - 30*s^3*u - 32*s^2*u^2 - 38*s*u^3 + u^4) + 
        4*s*u*(s^4 + 14*s^3*u + 39*s^2*u^2 + 28*s*u^3 + 3*u^4) + 
        q2*s*(3*s^4 + 18*s^3*u - 28*s^2*u^2 - 60*s*u^3 + 18*u^4)) + 
      m2^4*(8*q2^5 + q2^4*(68*s - 8*u) + q2^3*(81*s^2 - 48*s*u - 8*u^2) + 
        q2^2*(62*s^3 + 4*s^2*u - 34*s*u^2 + 8*u^3) + 
        q2*s*(23*s^3 + 96*s^2*u + 104*s*u^2 + 92*u^3) + 
        s*(s^4 + 34*s^3*u + 169*s^2*u^2 + 188*s*u^3 + 30*u^4)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(s^2*(q2 - u)*u^4*(-q2 + s + u) - m2^6*(4*s^2 + 2*q2*u + 9*s*u) + 
      m2*s*u^2*(q2^3*u + q2^2*(s^2 + s*u + u^2) + 
        u^2*(5*s^2 + 10*s*u + 3*u^2) - q2*u*(s^2 + 9*s*u + 5*u^2)) + 
      m2^5*(-4*q2^2*(s - u) + q2*(8*s^2 + 31*s*u + 8*u^2) + 
        s*(s^2 + 14*s*u + 39*u^2)) - m2^2*u*(q2^2*u*(2*s^2 + s*u - 4*u^2) + 
        q2^3*(s^2 + 2*s*u + 2*u^2) + s*u^2*(8*s^2 + 34*s*u + 21*u^2) + 
        q2*u*(7*s^3 - s^2*u - 16*s*u^2 + 2*u^3)) + 
      m2^3*(q2^3*(-s^2 + 5*s*u + 4*u^2) + 6*s*u^2*(s^2 + 8*s*u + 9*u^2) + 
        q2^2*(s^3 + 5*s^2*u - 5*s*u^2 - 4*u^3) + 
        q2*u*(s^3 + 41*s^2*u + 14*s*u^2 + 8*u^3)) + 
      m2^4*(q2^3*(4*s - 2*u) - q2^2*(3*s^2 + 23*s*u + 4*u^2) - 
        3*s*u*(s^2 + 11*s*u + 22*u^2) - q2*(2*s^3 + 11*s^2*u + 56*s*u^2 + 
          12*u^3)))*(-1 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2 - u)^2*u*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/32)*(5*m2*q2 - 7*m2*s - q2*u + 3*s*u)*(EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2]))/(Pi^2*(q2 - s)^2*(m2 - u)^2) - 
   ((I/32)*(-(m2^10*s^2) + s*(q2 - u)*u^5*(q2^4*s - 6*q2*u^3*(s + u) + 
        3*u^3*(s + u)^2 - q2^3*s*(3*s + 7*u) + 
        3*q2^2*u*(2*s^2 + 2*s*u + u^2)) + 
      m2^9*(-2*q2^2*s + s*u*(17*s + 9*u) + q2*(5*s^2 + 4*u^2)) - 
      m2^8*(q2^4 - 8*q2^3*s + 5*q2^2*(2*s^2 - 6*s*u + 5*u^2) + 
        3*s*u*(s^2 + 27*s*u + 25*u^2) + q2*u*(63*s^2 + 69*s*u + 32*u^2)) + 
      m2*u^4*(-2*q2^6*s - q2^5*s*(s - 14*u) + q2^2*u^3*(16*s^2 + 18*s*u - 
          13*u^2) + 2*q2*u^4*(-25*s^2 - 29*s*u + 2*u^2) + 
        3*s*u^4*(7*s^2 + 18*s*u + 11*u^2) + q2^4*(9*s^3 + 24*s^2*u - 
          15*s*u^2 - 5*u^3) + q2^3*u*(-12*s^3 - 35*s^2*u + 10*s*u^2 + 
          14*u^3)) - m2^2*u^3*(-q2^7 + q2^6*(-11*s + 6*u) + 
        q2^5*(18*s^2 + 62*s*u - 9*u^2) + q2^4*u*(-38*s^2 - 49*s*u + 19*u^2) + 
        6*s*u^4*(9*s^2 + 33*s*u + 26*u^2) + q2^3*u*(54*s^3 + 146*s^2*u + 
          93*s*u^2 + 14*u^3) + q2*u^3*(81*s^3 + 67*s^2*u - 90*s*u^2 + 
          32*u^3) - q2^2*u^2*(66*s^3 + 194*s^2*u + 99*s*u^2 + 53*u^3)) + 
      m2^3*u^2*(-7*q2^7 + q2^6*(18*s + 23*u) - 
        q2^5*(18*s^2 + 90*s*u + 5*u^2) + s*u^4*(75*s^2 + 401*s*u + 420*u^2) - 
        2*q2^3*u*(12*s^3 + 36*s^2*u + 7*s*u^2 + 20*u^3) - 
        q2^2*u^2*(-96*s^3 + 56*s^2*u + 210*s*u^2 + 45*u^3) + 
        q2^4*(9*s^3 + 177*s^2*u + 286*s*u^2 + 87*u^3) + 
        q2*u^3*(132*s^3 + 491*s^2*u + 174*s*u^2 + 112*u^3)) + 
      m2^7*(3*q2^5 + q2^4*(-12*s + 13*u) + 2*q2^3*(5*s^2 - 41*s*u + 22*u^2) + 
        q2^2*u*(88*s^2 + 86*s*u + 137*u^2) + s*u^2*(21*s^2 + 203*s*u + 
          276*u^2) + q2*u*(12*s^3 + 165*s^2*u + 410*s*u^2 + 112*u^3)) - 
      m2^4*u*(7*q2^7 - q2^6*(11*s + 65*u) + q2^5*(s^2 + 114*s*u + 130*u^2) + 
        s*u^4*(78*s^2 + 517*s*u + 714*u^2) + q2^3*u*(27*s^3 + 243*s^2*u + 
          31*s*u^2 - 20*u^3) + q2^4*(3*s^3 - 47*s^2*u + 22*s*u^2 + 107*u^3) + 
        q2^2*u^2*(-6*s^3 + 394*s^2*u + 173*s*u^2 + 115*u^3) + 
        q2*u^3*(63*s^3 + 757*s^2*u + 820*s*u^2 + 224*u^3)) - 
      m2^6*(3*q2^6 + q2^5*(-8*s + 23*u) + q2^4*(5*s^2 - 85*s*u + 33*u^2) + 
        q2^3*u*(56*s^2 + 143*s*u + 134*u^2) + s*u^3*(54*s^2 + 349*s*u + 
          588*u^2) + q2*u^2*(51*s^3 + 277*s^2*u + 1002*s*u^2 + 224*u^3) + 
        q2^2*u*(18*s^3 + 66*s^2*u + 523*s*u^2 + 297*u^3)) + 
      m2^5*(q2^7 + q2^6*(-2*s + 17*u) + q2^5*(s^2 - 44*s*u - 46*u^2) + 
        5*q2^4*u*(3*s^2 + 41*s*u + 13*u^2) + 3*s*u^4*(25*s^2 + 159*s*u + 
          266*u^2) + q2^3*u*(12*s^3 - 47*s^2*u + 342*s*u^2 + 110*u^3) + 
        q2*u^3*(48*s^3 + 541*s^2*u + 1266*s*u^2 + 280*u^3) + 
        q2^2*u^2*(48*s^3 + 240*s^2*u + 684*s*u^2 + 305*u^3)))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/(Pi^2*u^2*(-m2 + u)^3*
     (m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2^4*s*(-10*q2^4 - 5*q2^3*s + 15*q2^2*s^2 + 5*q2*s^3 + 19*s^4) - 
      m2^3*(2*q2^6 - 21*q2^5*s + q2^4*s*(s - 20*u) + q2^3*s^2*(50*s - 19*u) + 
        q2*s^4*(-8*s + 19*u) + s^5*(33*s + 47*u) + 
        q2^2*(-51*s^4 + 45*s^3*u)) + s^3*u*(q2^4*u - 6*q2*s^3*(s + u) + 
        3*s^3*(s + u)^2 - q2^3*u*(7*s + 3*u) + 
        3*q2^2*s*(s^2 + 2*s*u + 2*u^2)) + m2^2*s*(q2^6 + q2^5*(-7*s + 3*u) + 
        q2^3*s*(16*s^2 + 31*s*u - 23*u^2) + q2^4*(3*s^2 - 43*s*u - 10*u^2) + 
        q2*s^3*(-14*s^2 - 43*s*u + 23*u^2) + s^4*(15*s^2 + 64*s*u + 37*u^2) + 
        q2^2*s^2*(-14*s^2 + 6*s*u + 45*u^2)) - 
      m2*s^2*(2*q2^5*u - 2*q2^4*u*(7*s + u) + q2^2*s*u*(7*s^2 + 21*s*u + 
          15*u^2) + q2^3*(s^3 + 15*s^2*u - 22*s*u^2 - 9*u^3) - 
        q2*s^2*(3*s^3 + 35*s^2*u + 11*s*u^2 - 9*u^3) + 
        s^3*(2*s^3 + 25*s^2*u + 32*s*u^2 + 9*u^3)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(4*m2 - s)*s*(-q2 + s)^3*(m2^2*s + s*u*(-q2 + s + u) + 
       m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*q2*(m2^7*(-4*q2^3 + q2^2*s + q2*s^2 + 8*s^3) + 
      m2^6*(27*q2^4 - q2^2*s*(8*s + 3*u) - q2*s^2*(3*s + 11*u) + 
        q2^3*(-22*s + 24*u) - 2*s^3*(9*s + 26*u)) + 
      m2^5*(-70*q2^5 + q2^4*(72*s - 95*u) + q2^3*(43*s^2 + 63*s*u - 60*u^2) + 
        q2^2*s*(-72*s^2 + 83*s*u - 3*u^2) + 3*q2*s^2*(17*s^2 - 19*s*u + 
          15*u^2) + 6*s^3*(2*s^2 + 17*s*u + 24*u^2)) + 
      m2^4*(79*q2^6 + q2^5*(-92*s + 96*u) + q2^4*(-45*s^2 + s*u + 110*u^2) + 
        q2^2*s*(-26*s^3 + 235*s^2*u - 239*s*u^2 + 25*u^3) + 
        q2^3*(93*s^3 - 278*s^2*u - 41*s*u^2 + 80*u^3) - 
        q2*s^2*(31*s^3 + 78*s^2*u - 290*s*u^2 + 95*u^3) - 
        2*s^3*(s^3 + 30*s^2*u + 120*s*u^2 + 110*u^3)) + 
      m2^3*(-48*q2^7 + 23*q2^6*(3*s + u) + q2^5*(6*s^2 - 149*s*u + 4*u^2) + 
        10*s^3*u*(s^3 + 12*s^2*u + 30*s*u^2 + 20*u^3) - 
        q2^4*(39*s^3 - 114*s^2*u + 188*s*u^2 + 30*u^3) + 
        q2^3*(-11*s^4 + 132*s^3*u + 322*s^2*u^2 - 26*s*u^3 - 60*u^4) + 
        q2^2*s*(23*s^4 - 147*s^3*u - 36*s^2*u^2 + 286*s*u^3 - 45*u^4) + 
        q2*s^2*(6*s^4 + 65*s^3*u - 150*s^2*u^2 - 530*s*u^3 + 115*u^4)) + 
      s*(q2 - u)*u*(4*q2^5*s*u + 4*s^2*u^2*(s + u)^3 + 
        q2*s*u*(s + u)^2*(5*s^2 - 38*s*u + 5*u^2) + 
        q2^4*(-3*s^3 + 5*s^2*u + 5*s*u^2 - 3*u^3) + 
        q2^3*(6*s^4 - 6*s^3*u - 68*s^2*u^2 - 6*s*u^3 + 6*u^4) - 
        q2^2*(3*s^5 + 8*s^4*u - 81*s^3*u^2 - 81*s^2*u^3 + 8*s*u^4 + 3*u^5)) + 
      m2^2*(4*q2^8 + 8*q2^7*s + q2^6*(-33*s^2 + 34*s*u + 21*u^2) + 
        q2^5*(24*s^3 - 31*s^2*u - 149*s*u^2 - 16*u^3) - 
        6*s^3*u^2*(3*s^3 + 20*s^2*u + 35*s*u^2 + 18*u^3) + 
        3*q2*s^2*u*(-3*s^4 + s^3*u + 136*s^2*u^2 + 155*s*u^3 - 27*u^4) + 
        q2^4*(4*s^4 - 11*s^3*u + 328*s^2*u^2 + 94*s*u^3 - 25*u^4) - 
        q2^3*(s^5 + 3*s^4*u + 314*s^3*u^2 - 16*s^2*u^3 - 24*s*u^4 - 24*u^5) + 
        q2^2*s*(-6*s^5 + 2*s^4*u + 129*s^3*u^2 - 454*s^2*u^3 - 134*s*u^4 + 
          39*u^5)) + m2*(-8*q2^7*s*u + 2*s^3*u^3*(s + u)^2*(7*s + 16*u) + 
        q2^5*u*(35*s^3 + 72*s^2*u + 9*s*u^2 - 14*u^3) + 
        q2^6*(s^3 - 7*s^2*u - 7*s*u^2 + 5*u^3) + q2*s^2*u^2*
         (4*s^4 - 77*s^3*u - 309*s^2*u^2 - 197*s*u^3 + 31*u^4) + 
        q2^2*s*u*(2*s^5 - 53*s^4*u + 191*s^3*u^2 + 436*s^2*u^3 - s*u^4 - 
          17*u^5) - q2^4*(3*s^5 + 37*s^4*u + 117*s^3*u^2 + 2*s^2*u^3 - 
          12*s*u^4 - 13*u^5) + q2^3*(2*s^6 + 15*s^5*u + 119*s^4*u^2 - 
          188*s^3*u^3 - 101*s^2*u^4 + 11*s*u^5 - 4*u^6)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(q2 - s)^3*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/64)*(-(m2^6*s*(q2^3 - 3*q2^2*s - 3*q2*s^2 + s^3)) + 
      m2^5*(3*q2^5 + 6*q2^4*s - 15*q2^2*s^2*u + 5*s^4*(2*s + u) + 
        q2^3*s*(-8*s + 5*u) - 3*q2*s^3*(3*s + 5*u)) + 
      m2^4*(-6*q2^6 + 3*q2^4*s*(8*s - 7*u) + 9*q2^5*(s - u) + 
        q2^3*s*(-57*s^2 + 25*s*u - 10*u^2) + 6*q2*s^3*(3*s^2 + 6*s*u + 
          5*u^2) + 3*q2^2*s^2*(9*s^2 - s*u + 10*u^2) - 
        s^4*(15*s^2 + 38*s*u + 10*u^2)) - 
      s^2*u^2*(-3*q2*s^2*(s - u)*(s + u)^2 + s^3*(s + u)^3 + 
        3*q2^2*s*(s^3 - s^2*u - 3*s*u^2 - u^3) + 
        q2^3*(-s^3 + 3*s^2*u + 3*s*u^2 + u^3)) + 
      m2^3*(6*q2^6*(s + u) + 3*q2^4*s*u*(-17*s + 9*u) + 
        q2^5*(-12*s^2 + 9*u^2) + 3*q2^2*s^2*(s^3 + 2*s*u^2 - 10*u^3) + 
        q2^3*s*(11*s^3 + 72*s^2*u - 26*s*u^2 + 10*u^3) - 
        3*q2*s^3*(5*s^3 + 24*s^2*u + 17*s*u^2 + 10*u^3) + 
        s^4*(7*s^3 + 45*s^2*u + 55*s*u^2 + 10*u^3)) + 
      m2*s*u*(3*q2^4*u*(4*s^2 + 3*s*u + u^2) + s^3*(s + u)^2*
         (2*s^2 + 9*s*u + u^2) + 3*q2^2*s*(2*s^4 + 13*s^3*u + 6*s^2*u^2 - 
          2*s*u^3 - u^4) - 3*q2*s^2*(2*s^4 + 11*s^3*u + 8*s^2*u^2 + u^4) + 
        q2^3*(-2*s^4 - 31*s^3*u - 24*s^2*u^2 + 2*s*u^3 + u^4)) - 
      m2^2*(-3*q2^4*s*u*(16*s^2 + 6*s*u - 5*u^2) + 
        3*q2^5*u*(6*s^2 + 3*s*u + u^2) - q2^3*s*(s^4 - 37*s^3*u + 
          12*s^2*u^2 + 8*s*u^3 - 5*u^4) - 3*q2*s^3*(s^4 + 13*s^3*u + 
          27*s^2*u^2 + 9*s*u^3 + 5*u^4) + s^4*(s^4 + 17*s^3*u + 48*s^2*u^2 + 
          37*s*u^3 + 5*u^4) + 3*q2^2*(s^6 + 5*s^5*u + 18*s^4*u^2 - 
          5*s^2*u^4)))*(6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(q2 - s)^3*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      3) + ((I/32)*(-(m2^9*s) + s^2*u^5*(s + u)^3 + 
      m2^8*(3*q2^2 + 15*q2*s + 2*s*(5*s + 4*u)) - m2*s*u^4*(s + u)*
       (5*s^3 + 17*s^2*u + u^2*(3*q2 + u) + s*u*(6*q2 + 13*u)) + 
      m2^2*u^3*(10*s^5 + 65*s^4*u + 3*q2^2*u^3 + 30*s^3*u*(q2 + 4*u) + 
        s^2*u^2*(72*q2 + 73*u) + s*u^2*(9*q2^2 + 33*q2*u + 8*u^2)) - 
      m2^7*(6*q2^3 + 9*q2^2*(3*s + 2*u) + 3*q2*s*(11*s + 31*u) + 
        s*(-15*s^2 + 68*s*u + 28*u^2)) + m2^6*(-6*q2^4 - 4*q2^3*(7*s - 6*u) + 
        3*q2^2*(20*s^2 + 39*s*u + 15*u^2) + 3*q2*s*(-2*s^2 + 56*s*u + 
          81*u^2) + s*(-7*s^3 - 30*s^2*u + 199*s*u^2 + 56*u^3)) - 
      m2^3*u^2*(2*q2^3*(10*s^2 - 6*s*u + 3*u^2) - 
        3*q2^2*(20*s^3 + 8*s^2*u - 21*s*u^2 - 6*u^3) + 
        3*q2*s*(20*s^3 + 48*s^2*u + 77*s*u^2 + 45*u^3) + 
        s*(-10*s^4 + 52*s^3*u + 225*s^2*u^2 + 200*s*u^3 + 28*u^4)) + 
      m2^4*u*(6*q2^4*(5*s - u) - 4*q2^3*(20*s^2 + 13*s*u - 6*u^2) + 
        3*q2*s*u*(72*s^2 + 128*s*u + 95*u^2) + 
        3*q2^2*(20*s^3 + 4*s^2*u + 54*s*u^2 + 15*u^3) + 
        s*(-5*s^4 - 25*s^3*u + 195*s^2*u^2 + 325*s*u^3 + 56*u^4)) - 
      m2^5*(12*q2^5 - 6*q2^4*(5*s + 2*u) + 4*q2^3*(5*s^2 - 17*s*u + 9*u^2) + 
        6*q2^2*u*(16*s^2 + 33*s*u + 10*u^2) + 3*q2*s*u*(30*s^2 + 117*s*u + 
          115*u^2) + s*(-s^4 - 38*s^3*u + 48*s^2*u^2 + 326*s*u^3 + 70*u^4)))*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(m2 - u)^2*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2 - u)^2*(m2^9*s - m2^8*(3*q2^2 + 20*q2*s + 2*s*(5*s + 4*u)) + 
      m2^7*(21*q2^3 + 2*q2^2*(56*s + 9*u) + q2*s*(83*s + 118*u) + 
        s*(15*s^2 + 68*s*u + 28*u^2)) - s^2*(q2 - u)^2*
       (3*q2*(s - u)*u^2*(s + u)^2 + u^3*(s + u)^3 - 
        3*q2^2*u*(s^3 + 3*s^2*u + s*u^2 - u^3) + 
        q2^3*(s^3 + 3*s^2*u + 3*s*u^2 - u^3)) - 
      m2^6*(54*q2^4 + 3*q2^3*(89*s + 23*u) + q2^2*(235*s^2 + 387*s*u + 
          45*u^2) + q2*s*(81*s^2 + 358*s*u + 288*u^2) + 
        s*(7*s^3 + 90*s^2*u + 199*s*u^2 + 56*u^3)) + 
      m2*s*(q2^6*(6*s^2 + 9*s*u - 3*u^2) + u^4*(s + u)^2*
         (5*s^2 + 12*s*u + u^2) + q2^2*u^3*(-32*s^3 + 6*s^2*u + 45*s*u^2 - 
          5*u^3) + q2^5*(7*s^3 - 15*s^2*u - 18*s*u^2 + 14*u^3) + 
        q2^4*(5*s^4 - 20*s^3*u - 18*s^2*u^2 + 4*s*u^3 - 25*u^4) - 
        q2*u^3*(4*s^4 + 23*s^3*u + 63*s^2*u^2 + 46*s*u^3 + 2*u^4) + 
        2*q2^3*u*(-5*s^4 + 23*s^3*u + 27*s^2*u^2 - 4*s*u^3 + 10*u^4)) + 
      m2^5*(72*q2^5 + q2^4*(345*s + 48*u) + 6*q2^3*(59*s^2 + 52*s*u + 
          11*u^2) + 3*q2^2*(60*s^3 + 147*s^2*u + 141*s*u^2 + 20*u^3) + 
        q2*s*(35*s^3 + 273*s^2*u + 576*s*u^2 + 370*u^3) + 
        s*(s^4 + 38*s^3*u + 228*s^2*u^2 + 326*s*u^3 + 70*u^4)) - 
      m2^4*(45*q2^6 + 6*q2^5*(37*s - 5*u) + 6*q2^4*(52*s^2 - 5*s*u - 6*u^2) + 
        6*q2^3*(35*s^3 + 28*s^2*u - 17*s*u^2 - u^3) + 
        q2^2*(70*s^4 + 192*s^3*u + 72*s^2*u^2 + 62*s*u^3 + 45*u^4) + 
        s*u*(5*s^4 + 85*s^3*u + 315*s^2*u^2 + 325*s*u^3 + 56*u^4) + 
        q2*s*(5*s^4 + 85*s^3*u + 297*s^2*u^2 + 379*s*u^3 + 260*u^4)) - 
      m2^2*(q2^7*(9*s - 3*u) + 3*q2^6*(9*s^2 - 3*s*u + 5*u^2) - 
        q2*s*u^3*(22*s^3 + 105*s^2*u + 108*s*u^2 - 8*u^3) + 
        15*q2^5*(3*s^3 - 6*s^2*u - 2*u^3) + 3*q2^2*u^2*(-12*s^4 - 42*s^3*u - 
          15*s^2*u^2 - 27*s*u^3 + u^4) + s*u^3*(10*s^4 + 65*s^3*u + 
          120*s^2*u^2 + 73*s*u^3 + 8*u^4) + q2^4*(35*s^4 - 54*s^3*u + 
          45*s^2*u^2 - 50*s*u^3 + 30*u^4) + q2^3*(10*s^5 - 40*s^4*u + 
          144*s^3*u^2 + 98*s^2*u^3 + 115*s*u^4 - 15*u^5)) + 
      m2^3*(21*q2^7 + 60*q2^6*(s - u) + 3*q2^5*(49*s^2 - 64*s*u + 20*u^2) + 
        3*q2^4*s*(45*s^2 - 14*s*u + 80*u^2) + q2^3*(70*s^4 - 30*s^3*u + 
          102*s^2*u^2 - 52*s*u^3 - 39*u^4) + s*u^2*(10*s^4 + 100*s^3*u + 
          255*s^2*u^2 + 200*s*u^3 + 28*u^4) + q2*s*u*(10*s^4 + 48*s^3*u + 
          54*s^2*u^2 + 11*s*u^3 + 90*u^4) + 2*q2^2*(5*s^5 + 15*s^4*u - 
          57*s^3*u^2 - 107*s^2*u^3 - 81*s*u^4 + 9*u^5)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(5/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2 - u)^2*(3*m2^4*s*(2*q2 + 3*s) + s^3*(s + u)^3 - 
      3*m2*s^2*(s + u)*(3*s^2 + 4*s*u + u^2 + q2*(2*s + u)) - 
      m2^3*(2*q2^3 + 33*q2^2*s + 3*q2*s*(21*s + 4*u) + 3*s^2*(10*s + 7*u)) + 
      3*m2^2*s*(q2^2*(3*s + u) + q2*(13*s^2 + 12*s*u + 2*u^2) + 
        s*(9*s^2 + 14*s*u + 5*u^2)))*(3*zeta2 - 
      Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]) - ((I/64)*(m2 - u)^2*(3*m2^4*s*(2*q2 + 3*s) + s^3*(s + u)^3 - 
      3*m2*s^2*(s + u)*(3*s^2 + 4*s*u + u^2 + q2*(2*s + u)) - 
      m2^3*(2*q2^3 + 33*q2^2*s + 3*q2*s*(21*s + 4*u) + 3*s^2*(10*s + 7*u)) + 
      3*m2^2*s*(q2^2*(3*s + u) + q2*(13*s^2 + 12*s*u + 2*u^2) + 
        s*(9*s^2 + 14*s*u + 5*u^2)))*(8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 
      2*Log[4*Pi]*Log[\[Chi]] + 2*Log[m2/\[Mu]2]*Log[\[Chi]] + 
      4*Log[1 - \[Chi]]*Log[\[Chi]] - Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]), PaVe[4, muR, 0][2, 2, 3][Sqr[p1], Sqr[-k1], Sqr[-q], 
   Sqr[-k1 + p1 - q], Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((-I/32)*(m2^4*(2*q2^2 + 5*q2*s - 3*s^2) + 
      q2*s^2*u*(3*q2*s - 2*s^2 - q2*u - s*u + u^2) + 
      m2^3*(-4*q2^3 + q2*s*(8*s - 15*u) - 2*q2^2*(7*s + 2*u) + 
        s^2*(s + 7*u)) + m2*s*(s*u^2*(s + u) - q2^3*(3*s + u) + 
        q2*u*(8*s^2 - 2*s*u - 5*u^2) + q2^2*(2*s^2 - 11*s*u + 6*u^2)) + 
      m2^2*(2*q2^4 + q2^3*(9*s - 4*u) - s^2*u*(2*s + 5*u) + 
        q2^2*(-2*s^2 + 8*s*u + 2*u^2) + q2*s*(-3*s^2 + s*u + 15*u^2))))/
    (Pi^2*(4*m2 - s)*s*(-q2 + s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/16)*m2*(-2*m2^5*s + s^2*u^2*(s + u)^2 + 
      m2^4*(2*q2^2 + 14*q2*s + s*(5*s + 8*u)) - 
      m2*s*u*(s^3 + 9*s^2*u + 10*s*u^2 + 2*u^3 + q2*(s^2 + 4*s*u + 2*u^2)) - 
      m2^3*(30*q2*s*u + 4*q2^2*(s + u) + s*(5*s^2 + 18*s*u + 12*u^2)) + 
      m2^2*(q2^2*(s^2 + 2*u^2) + q2*s*(-s^2 + 12*s*u + 18*u^2) + 
        s*(s^3 + 8*s^2*u + 22*s*u^2 + 8*u^3)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2]))/(Pi^2*(4*m2 - s)*s*(m2 - u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/16)*(m2 - u)*(2*m2^8*s + s^3*(q2 - u)^2*u^2*(-q2 + s + u)^2 - 
      2*m2^7*(q2^2 + 9*q2*s + 6*s*u) + m2^6*(8*q2^3 + q2^2*(49*s + 8*u) + 
        q2*(-6*s^2 + 70*s*u) + 2*s*(-2*s^2 + 5*s*u + 15*u^2)) - 
      m2^5*(12*q2^4 + q2^3*(60*s + 8*u) + 3*q2^2*(s^2 + 24*s*u + 4*u^2) + 
        2*q2*s*(-7*s^2 + 13*s*u + 50*u^2) - s*(s^3 + 2*s^2*u - 44*s*u^2 - 
          40*u^3)) - m2*s^2*u*(2*q2^5 - 4*q2^4*(s + u) + 
        q2^3*(3*s^2 - 4*u^2) + q2^2*u*(7*s^2 + 26*s*u + 16*u^2) + 
        2*u^2*(s^3 + 6*s^2*u + 7*s*u^2 + 2*u^3) - 
        2*q2*u*(2*s^3 + 11*s^2*u + 18*s*u^2 + 7*u^3)) + 
      m2^4*(8*q2^5 + 8*q2^4*(3*s - u) + q2^3*(25*s^2 - 8*u^2) + 
        q2^2*(-13*s^3 + 73*s^2*u - 14*s*u^2 + 8*u^3) + 
        s*u*(-s^3 + 29*s^2*u + 76*s*u^2 + 30*u^3) + 
        q2*s*(-3*s^3 - 14*s^2*u + 52*s*u^2 + 60*u^3)) - 
      m2^3*(2*q2^6 - 2*q2^5*(s + 4*u) + 2*q2^3*u*(17*s^2 + 14*s*u - 4*u^2) + 
        2*q2^4*(7*s^2 + 6*u^2) - 2*q2*s*u*(2*s^3 + 15*s^2*u + 6*s*u^2 - 
          5*u^3) + s*u^2*(9*s^3 + 60*s^2*u + 64*s*u^2 + 12*u^3) + 
        q2^2*(-3*s^4 + 12*s^3*u - 39*s^2*u^2 - 48*s*u^3 + 2*u^4)) + 
      m2^2*s*(q2^6 - 2*q2^5*(s - u) + q2^4*(3*s^2 - 10*s*u - 16*u^2) + 
        q2^2*u^2*(5*s^2 + 3*s*u - 11*u^2) - q2*u^2*(25*s^3 + 62*s^2*u + 
          46*s*u^2 + 2*u^3) + q2^3*(-s^3 + 18*s^2*u + 29*s*u^2 + 24*u^3) + 
        u^2*(s^4 + 19*s^3*u + 46*s^2*u^2 + 26*s*u^3 + 2*u^4)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(-(m2^4*(2*q2 + 5*s)) + s^2*(q2 - u)*u*(-q2 + s + u) + 
      m2^3*(4*q2^2 + 11*q2*s + 5*s^2 + 4*q2*u + 13*s*u) + 
      m2*s*(q2^3 + q2^2*(-s + u) + q2*(s^2 - 4*s*u - 5*u^2) + 
        u*(2*s^2 + 7*s*u + 3*u^2)) - m2^2*(2*q2^3 - q2^2*(s + 4*u) + 
        2*q2*(3*s^2 - s*u + u^2) + s*(s^2 + 11*s*u + 11*u^2)))*
     (-1 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) - 
   ((I/32)*(m2^7*(s^2 - 4*q2*u - 5*s*u) + s*(q2 - u)*u^3*
       (q2^3*s - 3*u^2*(s + u)^2 + q2^2*(s^2 + 3*s*u - 3*u^2) + 
        2*q2*u*(-2*s^2 + s*u + 3*u^2)) + m2^6*(3*s*u*(s + 11*u) + 
        q2^2*(2*s + 21*u) + q2*(-4*s^2 + 23*s*u + 24*u^2)) + 
      m2^5*(q2^4 - 2*q2^3*(3*s + 19*u) + q2^2*(6*s^2 - 21*s*u - 71*u^2) - 
        2*q2*u*(5*s^2 + 47*s*u + 30*u^2) - s*u*(s^2 + 34*s*u + 93*u^2)) - 
      m2*u^2*(2*q2^5*s + q2^4*(4*s - 5*u)*u + 
        s*u^3*(13*s^2 + 36*s*u + 23*u^2) + q2^2*u*(-7*s^3 - 30*s^2*u + 
          s*u^2 - 13*u^3) + 2*q2*u^2*(s^3 - 7*s^2*u - 17*s*u^2 + 2*u^3) + 
        2*q2^3*(s^3 + 8*s^2*u + 2*s*u^2 + 7*u^3)) + 
      m2^2*u*(q2^6 - 2*q2^5*u + 2*q2^4*u*(15*s + 8*u) + 
        q2^3*s*(s^2 + 6*s*u + 8*u^2) + s*u^3*(22*s^2 + 91*s*u + 75*u^2) + 
        q2^2*u*(s^3 - 18*s^2*u - 36*s*u^2 - 31*u^3) + 
        q2*u^2*(4*s^3 + 12*s^2*u - 23*s*u^2 + 24*u^3)) + 
      m2^3*(q2^6 - 2*q2^5*(s + 6*u) + q2^4*(s^2 - 30*u^2) + 
        2*q2^3*u*(-2*s^2 - 31*s*u + 2*u^2) - 3*s*u^3*(6*s^2 + 41*s*u + 
          45*u^2) + q2^2*u*(-3*s^3 + 4*s^2*u + 22*s*u^2 - 6*u^3) - 
        2*q2*u^2*(3*s^3 + 26*s^2*u + 34*s*u^2 + 30*u^3)) + 
      m2^4*(-2*q2^5 + q2^4*(6*s + 40*u) + q2^3*(-4*s^2 + 3*s*u + 48*u^2) + 
        q2^2*u*(11*s^2 + 25*s*u + 74*u^2) + s*u^2*(7*s^2 + 92*s*u + 
          145*u^2) + q2*u*(3*s^3 + 48*s^2*u + 137*s*u^2 + 80*u^3)))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/(Pi^2*(m2 - u)*u*
     (m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2^4*s*(10*q2^3 + 3*q2^2*s - 12*q2*s^2 - 5*s^3) - 
      q2*s^3*u^2*(q2^2 + 4*s*(s + u) - q2*(5*s + 3*u)) + 
      m2^3*(2*q2^5 - 15*q2^4*s + 2*q2^3*s*(3*s - 10*u) + 
        15*q2^2*s^2*(s - u) + s^4*(9*s + 13*u) + 2*q2*s^3*(-8*s + 17*u)) + 
      m2*s^2*u*(2*q2^4 - 2*q2^3*(5*s + u) + q2^2*(9*s^2 - 17*s*u - 9*u^2) - 
        2*q2*s*(s^2 - 9*s*u - 5*u^2) + s^2*(s^2 + 4*s*u + 3*u^2)) - 
      m2^2*s*(q2^5 + q2^4*(-5*s + 3*u) + q2^2*s*(4*s^2 + 21*s*u - 21*u^2) + 
        q2^3*(3*s^2 - 32*s*u - 10*u^2) + s^3*(2*s^2 + 7*s*u + 11*u^2) + 
        q2*s^2*(-5*s^2 + 4*s*u + 32*u^2)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/(Pi^2*(4*m2 - s)*(q2 - s)^2*s*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*q2*(m2^7*(-4*q2^2 + q2*s + 4*s^2) + 
      m2^6*(23*q2^3 + 2*s^2*(s - 14*u) - q2*s*(16*s + 3*u) + 
        q2^2*(-13*s + 24*u)) + m2^5*(-50*q2^4 + q2^3*(47*s - 79*u) + 
        10*q2^2*(s^2 + 3*s*u - 6*u^2) + q2*s*(-3*s^2 + 79*s*u - 3*u^2) + 
        2*s^2*(s^2 - 7*s*u + 42*u^2)) + m2^4*(55*q2^5 + q2^4*(-69*s + 68*u) + 
        4*s^2*u*(2*s^2 + 9*s*u - 35*u^2) + q2^3*(9*s^2 - 19*s*u + 86*u^2) - 
        q2*s*(6*s^3 + 9*s^2*u + 143*s*u^2 - 25*u^3) + 
        q2^2*(7*s^3 - 62*s^2*u + s*u^2 + 80*u^3)) - 
      m2^3*(26*q2^6 - 2*q2^4*s*(s - 27*u) + q2^5*(-32*s + 9*u) + 
        4*s^2*u^2*(12*s^2 + 11*s*u - 35*u^2) + 
        q2^3*(13*s^3 - 70*s^2*u + 74*s*u^2 + 14*u^3) + 
        q2*s*u*(9*s^3 - 98*s^2*u - 102*s*u^2 + 45*u^3) - 
        2*q2^2*(3*s^4 + 5*s^3*u + 18*s^2*u^2 - 22*s*u^3 - 30*u^4)) + 
      s*(q2 - u)*u^2*(2*q2^4*s - 4*s*(2*s - u)*u*(s + u)^2 + 
        q2^3*(s^2 + 6*s*u - 3*u^2) - q2^2*(5*s^3 + 28*s^2*u + 3*s*u^2 - 
          6*u^3) + q2*(2*s^4 + 29*s^3*u + 21*s^2*u^2 - 9*s*u^3 - 3*u^4)) - 
      m2*u*(4*q2^6*s + q2^5*(s^2 + 10*s*u - 5*u^2) + 
        2*s^2*u^2*(8*s^3 + 25*s^2*u + 3*s*u^2 - 14*u^3) - 
        2*q2^4*(4*s^3 + 11*s^2*u + 3*s*u^2 - 7*u^3) + 
        q2^3*(3*s^4 + 7*s^3*u - 26*s^2*u^2 - 11*s*u^3 - 13*u^4) + 
        2*q2^2*u*(2*s^4 + 53*s^3*u + 23*s^2*u^2 - 7*s*u^3 + 2*u^4) + 
        q2*s*u*(-2*s^4 - 77*s^3*u - 113*s^2*u^2 + 37*s*u^3 + 17*u^4)) + 
      m2^2*(2*q2^7 + 2*q2^6*(s + u) + q2^5*(-9*s^2 + 34*s*u + 13*u^2) + 
        2*s^2*u^2*(4*s^3 + 38*s^2*u + 13*s*u^2 - 42*u^3) + 
        q2^4*(7*s^3 - 44*s^2*u - 72*s*u^2 - 4*u^3) + 
        q2*s*u^2*(-21*s^3 - 178*s^2*u + 2*s*u^2 + 39*u^3) + 
        q2^3*(-2*s^4 + s^3*u + 96*s^2*u^2 + 26*s*u^3 - 29*u^4) + 
        q2^2*u*(4*s^4 - 24*s^3*u + 68*s^2*u^2 + 21*s*u^3 + 24*u^4)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(q2 - s)^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/64)*(m2^6*s*(-q2^2 + 2*q2*s + s^2) - (q2 - s)^2*s^2*u^3*(s + u)^2 + 
      m2^5*(3*q2^4 + 3*q2^3*s + q2*s^2*(s - 10*u) + s^3*(s - 5*u) + 
        q2^2*s*(-8*s + 5*u)) - m2^4*(4*q2^5 - 2*q2^3*s*(s - 6*u) + 
        q2^4*(-8*s + 9*u) + 2*s^3*(2*s^2 + s*u - 5*u^2) + 
        q2^2*s*(16*s^2 - 25*s*u + 10*u^2) - 2*q2*s^2*(7*s^2 - s*u + 
          10*u^2)) + m2*s*u^2*(q2^3*(4*s^2 + 6*s*u + 3*u^2) + 
        q2*s*(6*s^3 + 2*s^2*u - 7*s*u^2 - 2*u^3) - 
        s^2*(s^3 - 2*s^2*u - 2*s*u^2 + u^3) + q2^2*(-9*s^3 - 10*s^2*u + 
          2*s*u^2 + u^3)) - m2^2*u*(-2*q2^3*s*(8*s^2 + 3*s*u - 6*u^2) + 
        3*q2^4*(2*s^2 + 2*s*u + u^2) + s^3*(s^3 + s*u^2 - 5*u^3) + 
        q2^2*s*(15*s^3 - 6*s^2*u - 8*s*u^2 + 5*u^3) - 
        2*q2*s^2*(3*s^3 - 3*s^2*u + 4*s*u^2 + 5*u^3)) + 
      m2^3*(-2*q2^3*s*(7*s - 9*u)*u + 2*q2^5*(s + 2*u) + 
        q2^4*(-4*s^2 - 2*s*u + 9*u^2) + s^3*(s^3 + 4*s^2*u + s*u^2 - 
          10*u^3) + q2^2*s*(5*s^3 + 22*s^2*u - 26*s*u^2 + 10*u^3) - 
        2*q2*s^2*(2*s^3 + 7*s^2*u + s*u^2 + 10*u^3)))*
     (6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(q2 - s)^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      3) + ((I/32)*(-(m2^7*s) + s^2*u^4*(s + u)^2 + 
      m2^6*(3*q2^2 + 9*q2*s + s*(s + 6*u)) - 
      m2*s*u^3*(2*s^3 + 10*s^2*u + 9*s*u^2 + u^3 + 
        q2*(2*s^2 + 6*s*u + 3*u^2)) + m2^2*u^2*(3*q2^2*u*(2*s + u) + 
        s*u*(14*s^2 + 27*s*u + 6*u^2) + 3*q2*s*(2*s^2 + 8*s*u + 7*u^2)) - 
      m2^5*(4*q2^3 + 6*q2^2*(s + 2*u) + q2*(-6*s^2 + 39*s*u) + 
        s*(4*s^2 + 9*s*u + 15*u^2)) - m2^3*u*(-4*q2^3*(s - u) - 
        6*q2*s*(s^2 - 4*s*u - 9*u^2) + 6*q2^2*(2*s^2 + 3*s*u + 2*u^2) + 
        s*(2*s^3 + 10*s^2*u + 38*s*u^2 + 15*u^3)) + 
      m2^4*(-2*q2^4 + 18*q2^2*u*(s + u) + 4*q2^3*(s + 2*u) - 
        2*q2*(s^3 - 33*s*u^2) + s*(s^3 + 8*s^2*u + 27*s*u^2 + 20*u^3)))*
     (zeta2 - PolyLog[2, u/m2]))/(Pi^2*(-m2 + u)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2 - u)^2*(m2^9*s - m2^8*(3*q2^2 + 14*q2*s + s*(s + 8*u)) + 
      m2^7*(19*q2^3 - q2*s*(s - 82*u) + q2^2*(61*s + 18*u) + 
        s*(-4*s^2 + 11*s*u + 28*u^2)) - m2^6*(48*q2^4 + q2^3*(134*s + 61*u) + 
        q2^2*(4*s^2 + 210*s*u + 45*u^2) + 2*q2*s*(-9*s^2 + 14*s*u + 99*u^2) - 
        s*(s^3 + 10*s^2*u - 46*s*u^2 - 56*u^3)) - s^2*(q2 - u)^2*u*
       (-3*q2*u^2*(s + u)^2 + u^2*(s + u)^2*(2*s + u) + 
        q2^3*(s^2 + 2*s*u - u^2) + q2^2*(-3*s^2*u + 3*u^3)) + 
      m2^5*(60*q2^5 + q2^4*(151*s + 46*u) + q2^3*(34*s^2 + 204*s*u + 
          54*u^2) + q2^2*(-30*s^3 + 132*s^2*u + 225*s*u^2 + 60*u^3) + 
        s*u*(-4*s^3 + 12*s^2*u + 101*s*u^2 + 70*u^3) + 
        q2*s*(-5*s^3 - 22*s^2*u + 108*s*u^2 + 250*u^3)) + 
      m2*s*(q2^6*(2*s^2 + 6*s*u - 3*u^2) - q2^5*(s^3 + 6*s^2*u + 6*s*u^2 - 
          14*u^3) + q2^2*u^3*(30*s^3 + 42*s^2*u + 24*s*u^2 - 5*u^3) + 
        2*q2^3*u^2*(-7*s^3 + 6*s^2*u + 8*s*u^2 + 10*u^3) - 
        q2^4*u*(-10*s^3 + 8*s^2*u + 17*s*u^2 + 25*u^3) + 
        u^4*(4*s^4 + 22*s^3*u + 28*s^2*u^2 + 11*s*u^3 + u^4) - 
        q2*u^3*(8*s^4 + 47*s^3*u + 70*s^2*u^2 + 34*s*u^3 + 2*u^4)) + 
      m2^3*(15*q2^7 + 3*q2^6*(9*s - 14*u) + q2^4*u*(79*s^2 + 38*s*u + 
          10*u^2) + q2^5*(31*s^2 - 46*s*u + 40*u^2) + 
        s*u^3*(22*s^3 + 108*s^2*u + 101*s*u^2 + 28*u^3) + 
        q2*s*u^2*(-8*s^3 - 52*s^2*u + 23*s*u^2 + 54*u^3) + 
        q2^3*(-10*s^4 + 68*s^3*u - 26*s^2*u^2 + 16*s*u^3 - 41*u^4) + 
        q2^2*u*(10*s^4 + 20*s^3*u - 28*s^2*u^2 - 105*s*u^3 + 18*u^4)) - 
      m2^4*(43*q2^6 + q2^5*(86*s - 30*u) + q2^4*(53*s^2 + 18*s*u - 22*u^2) + 
        q2^3*(-20*s^3 + 212*s^2*u + 36*s*u^2 - 14*u^3) + 
        s*u^2*(s^3 + 72*s^2*u + 130*s*u^2 + 56*u^3) + 
        q2*s*u*(-5*s^3 - 2*s^2*u + 127*s*u^2 + 170*u^3) + 
        q2^2*(-10*s^4 + 24*s^3*u + 174*s^2*u^2 + 20*s*u^3 + 45*u^4)) - 
      m2^2*(q2^7*(6*s - 3*u) + 3*q2^6*(2*s^2 + 5*u^2) + 
        6*q2^5*(s^3 - 2*s^2*u - 3*s*u^2 - 5*u^3) - 
        2*q2*s*u^3*(21*s^3 + 55*s^2*u + 27*s*u^2 - u^3) + 
        3*q2^2*u^2*(-6*s^4 + 8*s^3*u - 20*s^2*u^2 - 18*s*u^3 + u^4) + 
        s*u^3*(2*s^4 + 35*s^3*u + 78*s^2*u^2 + 46*s*u^3 + 8*u^4) + 
        q2^4*(-5*s^4 + 26*s^3*u - 36*s^2*u^2 - 14*s*u^3 + 30*u^4) + 
        5*q2^3*(4*s^4*u + 22*s^2*u^3 + 14*s*u^4 - 3*u^5)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(5/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2 - u)^2*(m2^4*s*(6*q2 + 5*s) + s^3*u*(s + u)^2 - 
      m2^3*(2*q2^3 + 21*q2^2*s + q2*s*(11*s + 12*u) + s^2*(-7*s + 13*u)) - 
      m2*s^2*(-s^3 + 6*s^2*u + 10*s*u^2 + 3*u^3 + 
        q2*(2*s^2 + 6*s*u + 3*u^2)) + m2^2*s*(3*q2^2*(2*s + u) + 
        2*q2*(5*s^2 + 12*s*u + 3*u^2) + s*(-6*s^2 + 12*s*u + 11*u^2)))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]) - ((I/64)*(m2 - u)^2*(m2^4*s*(6*q2 + 5*s) + s^3*u*(s + u)^2 - 
      m2^3*(2*q2^3 + 21*q2^2*s + q2*s*(11*s + 12*u) + s^2*(-7*s + 13*u)) - 
      m2*s^2*(-s^3 + 6*s^2*u + 10*s*u^2 + 3*u^3 + 
        q2*(2*s^2 + 6*s*u + 3*u^2)) + m2^2*s*(3*q2^2*(2*s + u) + 
        2*q2*(5*s^2 + 12*s*u + 3*u^2) + s*(-6*s^2 + 12*s*u + 11*u^2)))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]), PaVe[4, muR, 0][2, 3, 3][Sqr[p1], Sqr[-k1], Sqr[-q], 
   Sqr[-k1 + p1 - q], Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((I/32)*(m2^4*(2*q2 + 3*s) - m2^3*(4*q2^2 + 6*q2*s + s^2 + 4*q2*u + 
        11*s*u) + s^2*u*(q2*(s - u) + u*(s + u)) + 
      m2^2*(2*q2^3 + q2^2*(3*s - 4*u) + s*u*(7*s + 13*u) + 
        2*q2*(s^2 + 4*s*u + u^2)) - m2*s*(q2*(5*s - 6*u)*u + q2^2*(s + u) + 
        u*(s^2 + 7*s*u + 5*u^2))))/(Pi^2*(4*m2 - s)*s*
     (m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*(m2^2*s + s*u*(-q2 + s + u) + 
      m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/16)*m2*(m2 - u)*(2*m2^3*s - s^2*u*(s + u) + 
      m2*s*(-s^2 + 4*s*u + 2*u^2 + 2*q2*(s + u)) - 
      m2^2*(2*q2^2 + 6*q2*s + s*(-3*s + 4*u)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2]))/(Pi^2*(4*m2 - s)*s*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/16)*(m2 - u)*(2*m2^8*s - 2*m2^7*(q2^2 + 5*q2*s - 2*s*(s - 3*u)) + 
      s^3*(q2 - u)^2*u^2*(-q2 + s + u)^2 + m2^6*(8*q2^3 + q2^2*(17*s + 8*u) + 
        q2*(-8*s^2 + 38*s*u) - s*(s^2 + 14*s*u - 30*u^2)) - 
      m2^5*(12*q2^4 + 8*q2^3*(s + u) - 4*s*u*(5*s^2 + 3*s*u - 10*u^2) + 
        q2^2*(-s^2 + 36*s*u + 12*u^2) + 2*q2*s*(-s^2 + s*u + 26*u^2)) - 
      m2^3*(2*q2^6 - 2*q2^5*(s + 4*u) + q2^4*(-s^2 + 12*s*u + 12*u^2) + 
        q2^3*(2*s^3 + 13*s^2*u - 4*s*u^2 - 8*u^3) + 
        2*q2*s*u*(-3*s^3 + 6*s*u^2 + u^3) + q2^2*u*(5*s^3 + 7*s^2*u - 
          20*s*u^2 + 2*u^3) + s*u^2*(-17*s^3 - 16*s^2*u + 28*s*u^2 + 
          12*u^3)) + m2*s^2*u*(-2*q2^5 + 4*q2^4*(s + u) - 
        2*q2^3*(s^2 + s*u - 2*u^2) - 4*q2^2*u*(s^2 + 5*s*u + 4*u^2) + 
        u^2*(s^3 - 7*s^2*u - 12*s*u^2 - 4*u^3) + 
        q2*u*(s^3 + 13*s^2*u + 30*s*u^2 + 14*u^3)) + 
      m2^4*(8*q2^5 - 4*q2^4*(s + 2*u) + 4*q2^3*(s^2 + 7*s*u - 2*u^2) + 
        2*q2^2*u*(18*s^2 + 5*s*u + 4*u^2) + 2*q2*s*u*(-13*s^2 + 16*s*u + 
          14*u^2) + s*u*(-4*s^3 - 41*s^2*u + 12*s*u^2 + 30*u^3)) + 
      m2^2*s*(q2^6 - 2*q2^5*(s - u) + q2^4*(s^2 - 7*s*u - 16*u^2) + 
        q2^2*u^2*(3*s^2 - 14*s*u - 11*u^2) + q2^3*u*(7*s^2 + 29*s*u + 
          24*u^2) - q2*u^2*(5*s^3 + 18*s^2*u + 24*s*u^2 + 2*u^3) + 
        u^2*(-2*s^4 - 8*s^3*u + 17*s^2*u^2 + 18*s*u^3 + 2*u^4)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(-(m2^4*(2*q2 + s)) + s^2*(q2 - u)*u*(-q2 + s + u) + 
      m2^3*(4*q2^2 - q2*s + 4*q2*u + 5*s*u) + 
      m2^2*(-2*q2^3 + q2^2*(s + 4*u) - s*u*(5*s + 7*u) + 
        q2*(s^2 - 2*s*u - 2*u^2)) + m2*s*(q2^3 + q2^2*(-s + u) - 
        q2*u*(3*s + 5*u) + u*(s^2 + 6*s*u + 3*u^2)))*
     (-1 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/32)*(m2 - u)*(m2^5*(4*q2 + s) + m2^4*(-17*q2^2 + 3*q2*s + 3*s^2 - 
        16*q2*u - 7*s*u) + m2^2*(-15*q2^4 + q2^3*(-5*s + 14*u) + 
        s*u*(s^2 - 19*s*u - 22*u^2) + q2*u*(s^2 - 4*s*u - 16*u^2) + 
        3*q2^2*(3*s^2 - 5*s*u + 3*u^2)) + s*(q2 - u)*u*
       (-3*q2^2*(s - u) + q2*(s^2 - 5*s*u - 6*u^2) + 
        u*(5*s^2 + 8*s*u + 3*u^2)) + m2^3*(28*q2^3 + s*u*(s + 18*u) + 
        q2^2*(-4*s + 21*u) + q2*(-9*s^2 + 2*s*u + 24*u^2)) + 
      m2*(5*q2^4*(s - u) + q2^2*u*(s^2 - 20*s*u - 13*u^2) + 
        s*u^2*(4*s^2 + 23*s*u + 13*u^2) + q2^3*(-3*s^2 + 12*s*u + 14*u^2) + 
        q2*u*(-2*s^3 - 13*s^2*u - 10*s*u^2 + 4*u^3)))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2^4*s*(-10*q2^2 - q2*s + 7*s^2) + 
      s^3*u^2*(q2^2 - 3*q2*(s + u) + 2*s*(s + u)) + 
      m2^3*(-2*q2^4 + 9*q2^3*s - 5*q2^2*s*(s - 4*u) + q2*s^2*(s + 11*u) - 
        s^3*(2*s + 19*u)) + m2^2*s*(q2^4 - 3*q2^3*(s - u) + 
        q2*s*(10*s - 19*u)*u + s^2*u*(5*s + 17*u) + 
        q2^2*(2*s^2 - 21*s*u - 10*u^2)) + 
      m2*s^2*u*(-2*q2^3 + 2*q2^2*(3*s + u) - s*u*(11*s + 5*u) + 
        q2*(-4*s^2 + 12*s*u + 9*u^2)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/(Pi^2*(4*m2 - s)*s*(-q2 + s)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2^7*(-4*q2^2 + q2*s + 2*s^2) + 
      m2^6*(19*q2^3 - 14*s^2*u - q2*s*(5*s + 3*u) + q2^2*(-10*s + 24*u)) + 
      m2^5*(-35*q2^4 + q2^3*(25*s - 63*u) + q2*s*(20*s - 3*u)*u + 
        2*s^2*u*(2*s + 21*u) + q2^2*(4*s^2 + 23*s*u - 60*u^2)) + 
      m2^4*(29*q2^5 - 10*s^2*u^2*(2*s + 7*u) + q2^4*(-23*s + 51*u) - 
        2*q2^3*(s^2 + 7*s*u - 31*u^2) + q2*s*u*(-2*s^2 - 21*s*u + 25*u^2) + 
        q2^2*u*(-21*s^2 - s*u + 80*u^2)) + s*(q2 - u)*u^2*
       (2*s*u^2*(s + u)^2 + q2^3*(s^2 + 8*s*u - 3*u^2) - 
        q2^2*(s^3 + 12*s^2*u + 3*s*u^2 - 6*u^3) + 
        q2*u*(5*s^3 + s^2*u - 7*s*u^2 - 3*u^3)) + 
      m2^2*(q2^6*(s + 5*u) + 3*q2^4*u*(-7*s^2 - 4*s*u + 3*u^2) + 
        q2^5*(-s^2 + 17*s*u + 3*u^2) - 2*s^2*u^3*(3*s^2 + 20*s*u + 21*u^2) + 
        q2^3*u*(2*s^3 + 11*s^2*u + s*u^2 - 33*u^3) + 
        q2^2*u^2*(-3*s^3 + 13*s^2*u + 4*s*u^2 + 24*u^3) + 
        q2*s*u^2*(s^3 - 5*s^2*u + 49*s*u^2 + 39*u^3)) + 
      m2^3*(-9*q2^6 + 3*q2^5*(2*s - 7*u) + q2*s*u^2*(7*s^2 - 16*s*u - 
          45*u^2) + q2^4*(2*s^2 - 19*s*u - 11*u^2) + 
        q2^3*u*(38*s^2 - 25*s*u + 2*u^2) + 2*s^2*u^2*(s^2 + 20*s*u + 
          35*u^2) - q2^2*u*(6*s^3 - 15*s^2*u + 26*s*u^2 + 60*u^3)) + 
      m2*u*(q2^5*(-2*s^2 - 15*s*u + 5*u^2) + 2*s^2*u^3*(3*s^2 + 10*s*u + 
          7*u^2) + q2*s*u^2*(2*s^3 - 3*s^2*u - 36*s*u^2 - 17*u^3) + 
        q2^4*(2*s^3 + 11*s^2*u + 9*s*u^2 - 14*u^3) + 
        q2^3*u*(3*s^3 + 12*s^2*u + 4*s*u^2 + 13*u^3) - 
        q2^2*u*(2*s^4 + 20*s^3*u + 7*s^2*u^2 - 19*s*u^3 + 4*u^4)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(q2 - s)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/64)*(m2 - u)*(m2^5*s - m2^4*(3*q2^2 + 3*q2*s - 2*s*(s - 2*u)) - 
      s^2*u^3*(s + u) + m2*s*u^2*(3*q2*(s + u) + u*(4*s + u)) - 
      m2^2*u*(9*q2*s*u + 3*q2^2*(s + u) + s*u*(3*s + 4*u)) + 
      m2^3*(2*q2^3 - 3*q2^2*(s - 2*u) + 3*q2*s*(s + 3*u) - 
        s*(s^2 + 2*s*u - 6*u^2)))*(6*zeta2 - Log[\[Chi]]^2 + Log[\[Chi]q]^2))/
    (Pi^2*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) - 
   ((I/32)*(m2 - u)^2*(m2^5*s - m2^4*(3*q2^2 + 3*q2*s - 2*s*(s - 2*u)) - 
      s^2*u^3*(s + u) + m2*s*u^2*(3*q2*(s + u) + u*(4*s + u)) - 
      m2^2*u*(9*q2*s*u + 3*q2^2*(s + u) + s*u*(3*s + 4*u)) + 
      m2^3*(2*q2^3 - 3*q2^2*(s - 2*u) + 3*q2*s*(s + 3*u) - 
        s*(s^2 + 2*s*u - 6*u^2)))*(zeta2 - PolyLog[2, u/m2]))/
    (Pi^2*(-m2 + u)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      3) + ((I/32)*(m2 - u)^2*(m2^9*s - m2^8*(3*q2^2 + 8*q2*s - 
        2*s*(s - 4*u)) + m2^7*(17*q2^3 + 2*q2^2*(11*s + 9*u) + 
        q2*s*(-7*s + 46*u) + s*(s^2 - 10*s*u + 28*u^2)) - 
      m2^6*(40*q2^4 + q2^3*(25*s + 53*u) + q2^2*(-11*s^2 + 81*s*u + 45*u^2) + 
        s*u*(-8*s^2 - 17*s*u + 56*u^2) + q2*s*(5*s^2 - 8*s*u + 108*u^2)) - 
      s^2*(q2 - u)^2*u^2*(q2^3*(s - u) + 3*q2^2*u*(s + u) - 
        3*q2*u*(2*s^2 + 3*s*u + u^2) + u*(2*s^3 + 6*s^2*u + 5*s*u^2 + u^3)) + 
      m2^3*(9*q2^7 + 6*q2^6*(s - 4*u) + q2^5*(-11*s^2 + 36*s*u + 20*u^2) + 
        q2^3*u*(-14*s^3 + 34*s^2*u + 20*s*u^2 - 43*u^3) + 
        5*q2^4*(s^3 + 8*s^2*u - 12*s*u^2 + 4*u^3) + 
        2*q2^2*u^2*(23*s^3 + 7*s^2*u - 18*s*u^2 + 9*u^3) + 
        q2*s*u^2*(-18*s^3 + 2*s^2*u + 41*s*u^2 + 18*u^3) + 
        s*u^3*(-28*s^3 - 27*s^2*u + 38*s*u^2 + 28*u^3)) - 
      m2^4*(33*q2^6 + 4*q2^5*(s - 5*u) - 2*q2^4*(8*s^2 - 32*s*u + 5*u^2) + 
        q2*s*u^2*(-41*s^2 + 79*s*u + 80*u^2) + 
        2*q2^3*(5*s^3 + 34*s^2*u + 35*s*u^2 - 11*u^3) + 
        q2^2*u*(-28*s^3 + 96*s^2*u + 26*s*u^2 + 45*u^3) + 
        s*u^2*(-12*s^3 - 63*s^2*u + 25*s*u^2 + 56*u^3)) + 
      m2^5*(50*q2^5 + q2^4*(11*s + 40*u) - 2*s*u^2*(21*s^2 + 2*s*u - 
          35*u^2) + q2^3*(-14*s^2 + 80*s*u + 42*u^2) + 
        q2*s*u*(-25*s^2 + 36*s*u + 130*u^2) + q2^2*(10*s^3 + 39*s^2*u + 
          99*s*u^2 + 60*u^3)) + m2^2*(-3*q2^7*(s - u) + 
        3*q2^6*(s^2 - 3*s*u - 5*u^2) - q2^5*(s^3 + 12*s^2*u - 36*s*u^2 - 
          30*u^3) + q2^4*u*(4*s^3 + 27*s^2*u - 22*s*u^2 - 30*u^3) + 
        q2^2*u^3*(10*s^3 + 39*s^2*u + 27*s*u^2 - 3*u^3) + 
        q2*s*u^3*(8*s^3 + 17*s^2*u + 18*s*u^2 + 4*u^3) + 
        q2^3*u^2*(-36*s^3 - 50*s^2*u - 25*s*u^2 + 15*u^3) + 
        s*u^3*(4*s^4 + 14*s^3*u - 18*s^2*u^2 - 25*s*u^3 - 8*u^4)) + 
      m2*s*u*(3*q2^6*(s - u) + q2^5*(-s^2 + 6*s*u + 14*u^2) - 
        q2^4*u*(8*s^2 + 38*s*u + 25*u^2) + q2^2*u^2*(2*s^3 + 28*s^2*u + 
          3*s*u^2 - 5*u^3) + 2*q2^3*u*(3*s^3 + 5*s^2*u + 20*s*u^2 + 10*u^3) + 
        u^3*(-2*s^4 + 8*s^3*u + 20*s^2*u^2 + 8*s*u^3 + u^4) - 
        q2*u^2*(2*s^4 + 16*s^3*u + 49*s^2*u^2 + 22*s*u^3 + 2*u^4)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(5/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2 - u)^2*(m2^4*s*(6*q2 + s) + s^3*u^2*(s + u) - 
      m2*s^2*u*(-s^2 + 5*s*u + 3*u^2 + 3*q2*(s + u)) - 
      m2^3*(2*q2^3 + 9*q2^2*s + 3*q2*s*(-3*s + 4*u) + s^2*(4*s + 5*u)) + 
      m2^2*s*(3*q2^2*(s + u) - 3*q2*(s^2 - 4*s*u - 2*u^2) + 
        s*(s^2 - 2*s*u + 7*u^2)))*(3*zeta2 - 
      Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]) - ((I/64)*(m2 - u)^2*(m2^4*s*(6*q2 + s) + s^3*u^2*(s + u) - 
      m2*s^2*u*(-s^2 + 5*s*u + 3*u^2 + 3*q2*(s + u)) - 
      m2^3*(2*q2^3 + 9*q2^2*s + 3*q2*s*(-3*s + 4*u) + s^2*(4*s + 5*u)) + 
      m2^2*s*(3*q2^2*(s + u) - 3*q2*(s^2 - 4*s*u - 2*u^2) + 
        s*(s^2 - 2*s*u + 7*u^2)))*(8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 
      2*Log[4*Pi]*Log[\[Chi]] + 2*Log[m2/\[Mu]2]*Log[\[Chi]] + 
      4*Log[1 - \[Chi]]*Log[\[Chi]] - Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]), PaVe[4, muR, 0][3, 3, 3][Sqr[p1], Sqr[-k1], Sqr[-q], 
   Sqr[-k1 + p1 - q], Sqr[-k1 + p1], Sqr[-k1 - q], 0, m2, m2, m2] -> 
  ((-I/32)*(m2^4*(-2*q2 + s) + s^2*(q2 - 2*s - u)*u^2 + 
      m2^3*(4*q2^2 - 2*q2*s + 4*q2*u + 3*s*u) + 
      m2*s*u*(q2^2 + q2*(s - 6*u) + 5*u*(2*s + u)) - 
      m2^2*(2*q2^3 + 2*q2*u*(4*s + u) - q2^2*(s + 4*u) + s*u*(s + 9*u))))/
    (Pi^2*(4*m2 - s)*s*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/16)*m2*(m2 - u)*(2*m2^3*s - s^2*u^2 + 2*m2*s*u*(q2 + u) - 
      m2^2*(2*q2^2 - 2*q2*s + s*(s + 4*u)))*(-2 + EulerGamma - Log[4*Pi] + 
      Log[m2/\[Mu]2]))/(Pi^2*(4*m2 - s)*s*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/16)*(m2 - u)*(2*m2^8*s + s^3*(q2 - u)^2*u^2*(-q2 + s + u)^2 - 
      2*m2^7*(q2^2 + q2*s + 2*s*(s + 3*u)) - 
      2*m2^5*(6*q2^4 + 4*q2^3*(-3*s + u) + q2*s*(2*s^2 + s*u + 2*u^2) + 
        q2^2*(8*s^2 + 4*s*u + 6*u^2) + s*u*(5*s^2 + 2*s*u + 20*u^2)) + 
      m2^6*(8*q2^3 + 2*q2*s*(7*s + 3*u) + q2^2*(-11*s + 8*u) + 
        s*(s^2 + 10*s*u + 30*u^2)) - m2^3*(2*q2^6 - 2*q2^5*(s + 4*u) - 
        4*q2^4*(s^2 - 6*s*u - 3*u^2) + q2^3*(4*s^3 - 29*s^2*u - 36*s*u^2 - 
          8*u^3) + 2*q2*s*u*(3*s^3 - 16*s^2*u + 6*s*u^2 - 3*u^3) + 
        2*q2^2*u*(7*s^3 + 37*s^2*u + 4*s*u^2 + u^3) + 
        s*u^2*(s^3 - 44*s^2*u + 4*s*u^2 + 12*u^3)) + 
      m2*s^2*u*(-2*q2^5 + 4*q2^4*(s + u) + 2*q2^2*u*(s^2 - 7*s*u - 8*u^2) - 
        2*q2^3*(s^2 + 2*s*u - 2*u^2) - u^2*(-4*s^3 + s^2*u + 10*s*u^2 + 
          4*u^3) + q2*u*(-2*s^3 + s^2*u + 24*s*u^2 + 14*u^3)) + 
      m2^4*(8*q2^5 - 8*q2^4*(2*s + u) + 4*q2^3*(s^2 + 9*s*u - 2*u^2) + 
        4*q2*s*u*(6*s^2 - 3*s*u - u^2) + q2^2*(6*s^3 - 31*s^2*u + 38*s*u^2 + 
          8*u^3) + s*u*(2*s^3 - 13*s^2*u - 4*s*u^2 + 30*u^3)) + 
      m2^2*s*(q2^6 - 2*q2^5*(s - u) + q2^4*(s^2 - 4*s*u - 16*u^2) + 
        q2^3*u*(-4*s^2 + 29*s*u + 24*u^2) + q2*u^2*(s^3 + 32*s^2*u - 
          2*s*u^2 - 2*u^3) - q2^2*u*(-6*s^3 + 6*s^2*u + 31*s*u^2 + 11*u^3) + 
        u^2*(s^4 - 26*s^3*u - 13*s^2*u^2 + 10*s*u^3 + 2*u^4)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2^4*(-2*q2 + 3*s) + s^2*(q2 - u)*u*(-q2 + s + u) + 
      m2^3*(4*q2^2 - s*(s + 3*u) + q2*(-5*s + 4*u)) + 
      m2^2*(-2*q2^3 + s*(5*s - 3*u)*u + q2^2*(s + 4*u) + 
        2*q2*(s^2 - 3*s*u - u^2)) + m2*s*(q2^3 + q2^2*(-s + u) - 
        q2*u*(2*s + 5*u) + u*(-s^2 + 5*s*u + 3*u^2)))*
     (-1 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2]))/
    (Pi^2*(4*m2 - s)*s*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))) + 
   ((I/32)*(m2 - u)*(m2^5*(4*q2 - 3*s) + m2^4*(-13*q2^2 + 9*q2*s - 16*q2*u + 
        9*s*u) + s*(q2 - u)*u^2*(3*q2^2 - 11*q2*s + 6*s^2 - 6*q2*u + 11*s*u + 
        3*u^2) + m2^3*(14*q2^3 - 4*q2*(s - 6*u)*u - s*u*(11*s + 6*u) + 
        q2^2*(-9*s + 13*u)) + m2^2*(-5*q2^4 + 3*q2^3*s + s*(11*s - 6*u)*u^2 + 
        q2^2*u*(-25*s + 13*u) - 2*q2*u*(-11*s^2 + 5*s*u + 8*u^2)) + 
      m2*u*(-5*q2^4 + 2*q2^3*(10*s + 7*u) + 4*q2*u*(2*s^2 - s*u + u^2) + 
        s*u*(-6*s^2 + 11*s*u + 9*u^2) - q2^2*(11*s^2 + 25*s*u + 13*u^2)))*
     (-2*u + EulerGamma*u - u*Log[4*Pi] - m2*Log[(m2 - u)/m2] + 
      u*Log[(m2 - u)/m2] + u*Log[m2/\[Mu]2]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) - 
   ((I/32)*(m2^4*(10*q2 - s)*s + s^3*u^2*(-q2 + s + 3*u) - 
      m2*s^2*u*(-2*q2^2 + 2*q2*(s + u) + u*(7*s + 9*u)) + 
      m2^3*(2*q2^3 - 3*q2^2*s - 7*s^2*u - 2*q2*s*(s + 10*u)) + 
      m2^2*s*(-q2^3 + q2^2*(s - 3*u) + 10*q2*u*(s + u) + s*u*(2*s + 17*u)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]*Log[\[Chi]]))/
    (Pi^2*(4*m2 - s)*s*(m2^2*s + s*u*(-q2 + s + u) + 
       m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/32)*(m2^7*(4*q2 - s) - 3*m2^6*(5*q2^2 - q2*s + 8*q2*u - s*u) + 
      m2^5*(20*q2^3 + 60*q2*u^2 + s*u*(-2*s + 3*u) + q2^2*(-2*s + 47*u)) + 
      m2^3*(q2^2*(13*s - 18*u)*u^2 + 2*q2^3*u*(5*s + 11*u) + 
        q2^4*(3*s + 17*u) + 2*q2*u^2*(-5*s^2 + 12*s*u + 30*u^2) + 
        s*u^2*(-s^2 + 12*s*u + 45*u^2)) - m2^4*(10*q2^4 + 2*q2^3*(s + 17*u) + 
        2*q2^2*u*(6*s + 19*u) + s*u^2*(-2*s + 25*u) + 
        q2*u*(-4*s^2 + 21*s*u + 80*u^2)) + m2^2*(q2^6 - q2^5*(s + 6*u) + 
        q2^4*u*(s + 6*u) - q2^3*u*(4*s^2 + 29*s*u + 22*u^2) + 
        q2^2*u^2*(13*s^2 + 9*s*u + 37*u^2) - s*u^3*(s^2 + 28*s*u + 39*u^2) + 
        q2*u^2*(s^3 + 14*s^2*u + 9*s*u^2 - 24*u^3)) + 
      s*(q2 - u)*u^2*(q2^3*s + 3*u^2*(s + u)^2 - q2^2*(s^2 + 7*s*u - 3*u^2) + 
        q2*(4*s^2*u - 6*u^3)) + m2*u*(-2*q2^5*s + 
        q2^4*(2*s^2 + 14*s*u - 5*u^2) + 2*q2^3*u*(-3*s^2 - 3*s*u + 7*u^2) + 
        s*u^3*(5*s^2 + 22*s*u + 17*u^2) + q2^2*u*(s^3 + 4*s^2*u + s*u^2 - 
          13*u^3) - 2*q2*u^2*(4*s^3 + 7*s^2*u + 12*s*u^2 - 2*u^3)))*
     (-2 + EulerGamma - Log[4*Pi] + Log[m2/\[Mu]2] - \[Beta]q*Log[\[Chi]q]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^2*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^2) + 
   ((I/64)*(m2 - u)^3*(-(m2^3*s) + m2*s*(-3*q2 + s - u)*u + s^2*u^2 + 
      m2^2*(3*q2^2 - 3*q2*s + s*(s + 2*u)))*(6*zeta2 - Log[\[Chi]]^2 + 
      Log[\[Chi]q]^2))/(Pi^2*(m2^2*s + s*u*(-q2 + s + u) + 
       m2*(q2^2 - q2*s - 2*s*u))^3) - 
   ((I/32)*(m2 - u)^4*(m2^3*s - s^2*u^2 + m2*s*u*(3*q2 - s + u) - 
      m2^2*(3*q2^2 - 3*q2*s + s*(s + 2*u)))*(zeta2 - PolyLog[2, u/m2]))/
    (Pi^2*(-m2 + u)*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^
      3) + ((I/32)*(m2 - u)^2*(m2^9*s - m2^8*(3*q2^2 + 2*q2*s + 
        s*(s + 8*u)) + m2^7*(15*q2^3 + 5*q2*s*(s + 2*u) + 
        q2^2*(-5*s + 18*u) + s*u*(5*s + 28*u)) + s^2*(q2 - u)^2*u^3*
       (q2^3 - 2*s^3 - 6*s^2*u - 6*s*u^2 - u^3 - 3*q2^2*(2*s + u) + 
        3*q2*(2*s^2 + 4*s*u + u^2)) - m2^6*(30*q2^4 - 5*q2^3*(4*s - 9*u) + 
        2*q2*s*u*(5*s + 9*u) + 5*q2^2*(2*s^2 + 9*u^2) + 
        2*s*u*(3*s^2 + 5*s*u + 28*u^2)) + m2^3*(3*q2^7 - 3*q2^6*(s + 2*u) + 
        q2^5*s*(s + 54*u) + q2^4*u*(-59*s^2 - 54*s*u + 30*u^2) + 
        q2^3*u*(24*s^3 + 82*s^2*u - 40*s*u^2 - 45*u^3) + 
        q2*s*u^2*(18*s^3 - 24*s^2*u + 5*s*u^2 - 18*u^3) + 
        q2^2*u^2*(-36*s^3 + 92*s^2*u + 45*s*u^2 + 18*u^3) + 
        s*u^3*(-10*s^3 - 60*s^2*u + 11*s*u^2 + 28*u^3)) - 
      m2^4*(15*q2^6 - 14*q2^5*s - 5*q2*s*u^3*(s + 2*u) + 
        q2^4*s*(5*s + 58*u) - 2*q2^3*u*(32*s^2 - 20*s*u + 15*u^2) + 
        2*s*u^2*(3*s^3 - 15*s^2*u + 5*s*u^2 + 28*u^3) + 
        q2^2*u*(36*s^3 + 18*s^2*u + 80*s*u^2 + 45*u^3)) + 
      m2^5*(30*q2^5 - 5*q2^4*(5*s - 6*u) + 10*q2^3*(s^2 + 2*s*u + 3*u^2) + 
        3*q2^2*u*(-6*s^2 + 15*s*u + 20*u^2) + 
        s*u^2*(6*s^2 + 11*s*u + 70*u^2) + 2*q2*(12*s^3*u + 5*s*u^3)) + 
      m2*s*u^2*(-3*q2^6 + 2*q2^5*(9*s + 7*u) - 
        q2^4*(18*s^2 + 59*s*u + 25*u^2) - q2^2*u*(16*s^3 + 36*s^2*u + 
          18*s*u^2 + 5*u^3) + q2^3*(6*s^3 + 48*s^2*u + 64*s*u^2 + 20*u^3) - 
        2*q2*u*(-2*s^4 - 10*s^3*u + 5*s*u^3 + u^4) + 
        u^2*(-8*s^4 - 10*s^3*u + 6*s^2*u^2 + 5*s*u^3 + u^4)) - 
      m2^2*u*(-3*q2^7 + 3*q2^6*(6*s + 5*u) - 6*q2^5*(3*s^2 + 9*s*u + 5*u^2) - 
        2*q2*s*u^2*(10*s^3 - 12*s^2*u + 5*u^3) - 
        q2^3*u*(48*s^3 + 82*s^2*u + 20*s*u^2 + 15*u^3) + 
        q2^4*(6*s^3 + 72*s^2*u + 58*s*u^2 + 30*u^3) + 
        3*q2^2*u*(6*s^4 + 24*s^3*u + 6*s^2*u^2 + u^4) + 
        2*s*u^2*(s^4 - 16*s^3*u - 15*s^2*u^2 + 5*s*u^3 + 4*u^4)))*
     (-zeta2 + 2*PolyLog[2, -((-m2 + u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)])/(m2 - u))] + PolyLog[2, 
       (m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])/
        (m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)])] + 
      PolyLog[2, (q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] - 
      PolyLog[2, (q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
            2*m2*(q2 + u)]))/(-3*m2*q2 + q2^2 - q2*u + 
         Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))])] + 
      PolyLog[2, -((q2*(-3*m2 + q2 - u - Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, -((q2*(-3*m2 + q2 - u + Sqrt[m2^2 + (q2 - u)^2 - 
             2*m2*(q2 + u)]))/(3*m2*q2 - q2^2 + q2*u + 
          Sqrt[q2*(-4*m2 + q2)*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u - Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))] - 
      PolyLog[2, (m2^2 - m2*(q2 + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]) - 
         u*(-q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))/
        ((m2 - u)*(m2 - q2 + u + Sqrt[m2^2 + (q2 - u)^2 - 2*m2*(q2 + u)]))]))/
    (Pi^2*(m2^2 + (q2 - u)^2 - 2*m2*(q2 + u))^(5/2)*
     (m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3) + 
   ((I/32)*(m2 - u)^2*(3*m2^4*(2*q2 - s)*s + s^3*u^3 - 
      3*m2*s^2*u^2*(q2 + u) + 3*m2^2*s*u*(q2^2 + 2*q2*u + s*u) + 
      m2^3*(-2*q2^3 + 3*q2^2*s + s^2*(s + 3*u) - 3*q2*s*(s + 4*u)))*
     (3*zeta2 - Log[(-\[Beta] + \[Beta]q)/(\[Beta] + \[Beta]q)]*
       Log[(-\[Beta]^2 + \[Beta]q^2)/(-1 + \[Beta]q)^2] + 
      EulerGamma*Log[\[Chi]] - Log[4*Pi]*Log[\[Chi]] + 
      2*Log[1 - q2/s]*Log[\[Chi]] + 2*Log[(m2 - u)/m2]*Log[\[Chi]] + 
      Log[m2/\[Mu]2]*Log[\[Chi]] + 2*Log[1 - \[Chi]]*Log[\[Chi]] - 
      2*Log[\[Chi]]*Log[1 + \[Chi]] - 
      2*PolyLog[2, (-1 + \[Beta]q)/(-\[Beta] + \[Beta]q)] - 
      2*PolyLog[2, (-\[Beta] + \[Beta]q)/(1 + \[Beta]q)] + 
      2*PolyLog[2, (-1 + \[Beta]q)/(\[Beta] + \[Beta]q)] + 
      2*PolyLog[2, (\[Beta] + \[Beta]q)/(1 + \[Beta]q)] - 
      2*PolyLog[2, -\[Chi]] + 2*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta]) - ((I/64)*(m2 - u)^2*(3*m2^4*(2*q2 - s)*s + s^3*u^3 - 
      3*m2*s^2*u^2*(q2 + u) + 3*m2^2*s*u*(q2^2 + 2*q2*u + s*u) + 
      m2^3*(-2*q2^3 + 3*q2^2*s + s^2*(s + 3*u) - 3*q2*s*(s + 4*u)))*
     (8*zeta2 + 2*EulerGamma*Log[\[Chi]] - 2*Log[4*Pi]*Log[\[Chi]] + 
      2*Log[m2/\[Mu]2]*Log[\[Chi]] + 4*Log[1 - \[Chi]]*Log[\[Chi]] - 
      Log[\[Chi]]^2 + 4*PolyLog[2, \[Chi]]))/
    (Pi^2*s*(m2^2*s + s*u*(-q2 + s + u) + m2*(q2^2 - q2*s - 2*s*u))^3*
     \[Beta])}
