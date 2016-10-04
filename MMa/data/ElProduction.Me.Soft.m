SQED[G] = (2*(m2*(s3 + s4)^2 + s3*s4*(-q2 + t1 + u1))*
      (4*m2^2*(t1 + u1)^2 - t1*u1*(2*q2^2 + t1^2 + u1^2 - 2*q2*(t1 + u1)) + 
       2*m2*(2*t1*u1*(t1 + u1) + q2*(t1^2 + u1^2))))/(s3^2*s4^2*t1^2*u1^2)
 
SQED[L] = (-8*q2*(m2*(s3 + s4)^2 + s3*s4*(-q2 + t1 + u1))*
      (m2*(t1 + u1)^2 + t1*u1*(-q2 + t1 + u1)))/(s3^2*s4^2*t1*u1*(t1 + u1)^2)
 
SQED[P] = ((t1^2 + u1^2)*(2*m2*(t1 + u1)^2 + t1*u1*(-2*q2 + t1 + u1))*
      (m2*(s3 + s4)^2 + s3*s4*(-q2 + t1 + u1)))/(s3^2*s4^2*t1^2*u1^2*
      (t1 + u1))
 
SOK[G] = (-2*(s4*t1 + s3*u1 + tp*(2*m2 - q2 + t1 + u1))*
      (4*m2^2*(t1 + u1)^2 - t1*u1*(2*q2^2 + t1^2 + u1^2 - 2*q2*(t1 + u1)) + 
       2*m2*(2*t1*u1*(t1 + u1) + q2*(t1^2 + u1^2))))/(s3*s4*t1^2*tp*u1^2)
 
SOK[L] = (8*q2*(m2*(t1 + u1)^2 + t1*u1*(-q2 + t1 + u1))*
      (s4*t1 + s3*u1 + tp*(2*m2 - q2 + t1 + u1)))/(s3*s4*t1*tp*u1*(t1 + u1)^2)
 
SOK[P] = -(((t1^2 + u1^2)*(2*m2*(t1 + u1)^2 + t1*u1*(-2*q2 + t1 + u1))*
       (s4*t1 + s3*u1 + tp*(2*m2 - q2 + t1 + u1)))/(s3*s4*t1^2*tp*u1^2*
       (t1 + u1)))
 
EikonalFactorQED = (-2*m2)/s3^2 - (2*m2)/s4^2 - (4*m2)/(s3*s4) + 
     (2*q2)/(s3*s4) - (2*t1)/(s3*s4) - (2*u1)/(s3*s4)
 
EikonalFactorOK = (4*m2)/(s3*s4) - (2*q2)/(s3*s4) + (2*t1)/(s3*s4) + 
     (2*t1)/(s3*tp) + (2*u1)/(s3*s4) + (2*u1)/(s4*tp)
