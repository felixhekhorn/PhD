BB[Apost, Apost, t1, t1][F, Peps] = 0
 
BB[Apost, Apost, t1, t1][F, Pg] = -32*m2^2 + 32*m2^2*n + 16*m2*s - 8*m2*n*s + 
     8*m2*n*t1 + 16*m2*u1 - 8*m2*n*u1 + 8*t1*u1 - 8*n*t1*u1 + 2*n^2*t1*u1
 
BB[Apost, Apost, t1, t1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2
 
BB[Apost, Apost, t1, t1][F, Pk1q] = -64*m2^2 + 16*m2*s - 16*m2*t1 + 
     (16*m2*q2*t1)/sp - (16*m2*t1^2)/sp + (16*m2*q2*u1)/sp - (16*m2*u1^2)/sp
 
BB[Apost, Apost, t1, t1][F, Pqq] = 32*m2^2 + 8*m2*q2 - 8*m2*s - 8*m2*sp - 
     4*sp*t1 + 2*n*sp*t1 + (8*m2*sp*t1)/q2 + (4*sp*t1^2)/q2 - 
     (2*n*sp*t1^2)/q2 - 16*m2*u1 - 4*t1*u1 + 2*n*t1*u1 + (8*m2*t1*u1)/q2
 
BB[Apost, Apost, t1, t1][g, Peps] = -8*m2*u1 + 4*t1*u1 - (8*q2*t1*u1)/sp - 
     (8*q2*t1^2*u1)/sp^2 + (8*t1*u1^2)/sp
 
BB[Apost, Apost, t1, t1][g, Pg] = 0
 
BB[Apost, Apost, t1, t1][g, Pk1k1] = 0
 
BB[Apost, Apost, t1, t1][g, Pk1q] = 0
 
BB[Apost, Apost, t1, t1][g, Pqq] = 0
 
BB[Apost, Apost, t1, u1][F, Peps] = ((8*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apost, Apost, t1, u1][F, Pg] = -32*m2^2 + 32*m2^2*n + 32*m2*s - 
     24*m2*n*s - 8*s^2 + 4*n*s^2 + 24*m2*t1 - 16*m2*n*t1 - 8*s*t1 + 
     4*n*s*t1 + 24*m2*u1 - 16*m2*n*u1 - 8*s*u1 + 4*n*s*u1 - 48*t1*u1 + 
     20*n*t1*u1 - 2*n^2*t1*u1
 
BB[Apost, Apost, t1, u1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2 - 
     (16*q2*s*t1*u1)/sp^2
 
BB[Apost, Apost, t1, u1][F, Pk1q] = -64*m2^2 + 48*m2*s - 8*s^2 + 24*m2*t1 - 
     4*s*t1 + (16*m2*q2*t1)/sp - (8*q2*s*t1)/sp - (16*m2*t1^2)/sp - 
     (4*q2*t1^2)/sp + (8*s*t1^2)/sp + (4*t1^3)/sp + 24*m2*u1 - 4*s*u1 + 
     (16*m2*q2*u1)/sp - (8*q2*s*u1)/sp + (8*q2*t1*u1)/sp - (4*t1^2*u1)/sp - 
     (16*m2*u1^2)/sp - (4*q2*u1^2)/sp + (8*s*u1^2)/sp - (4*t1*u1^2)/sp + 
     (4*u1^3)/sp
 
BB[Apost, Apost, t1, u1][F, Pqq] = 32*m2^2 + 8*m2*q2 - 24*m2*s - 4*q2*s + 
     4*s^2 - 8*m2*sp + 4*s*sp - (20*m2*sp^2)/q2 + (4*m2*n*sp^2)/q2 + 
     (4*s*sp^2)/q2 - (n*s*sp^2)/q2 - 24*m2*t1 + 8*s*t1 + 4*sp*t1 - n*sp*t1 + 
     (4*m2*sp*t1)/q2 - (2*s*sp*t1)/q2 - 2*t1^2 - (4*sp*t1^2)/q2 + 
     (n*sp*t1^2)/q2 + (2*t1^3)/q2 - 24*m2*u1 + 8*s*u1 + 4*sp*u1 - n*sp*u1 + 
     (4*m2*sp*u1)/q2 - (2*s*sp*u1)/q2 + 12*t1*u1 - 2*n*t1*u1 + 
     (8*m2*t1*u1)/q2 - (4*s*t1*u1)/q2 - (2*t1^2*u1)/q2 - 2*u1^2 - 
     (4*sp*u1^2)/q2 + (n*sp*u1^2)/q2 - (2*t1*u1^2)/q2 + (2*u1^3)/q2
 
BB[Apost, Apost, t1, u1][g, Peps] = -4*m2*t1 + 2*s*t1 + (2*q2*t1^2)/sp - 
     (2*t1^3)/sp - 4*m2*u1 + 2*s*u1 + (4*q2*t1*u1)/sp + (4*q2*t1^2*u1)/sp^2 - 
     (2*t1^2*u1)/sp + (2*q2*u1^2)/sp + (4*q2*t1*u1^2)/sp^2 - (2*t1*u1^2)/sp - 
     (2*u1^3)/sp
 
BB[Apost, Apost, t1, u1][g, Pg] = ((64*I)*m2*epsi[k1, p1, p2, q])/sp - 
     ((64*I)*m2*n*epsi[k1, p1, p2, q])/sp - ((32*I)*s*epsi[k1, p1, p2, q])/
      sp + ((16*I)*n*s*epsi[k1, p1, p2, q])/sp - 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp + ((8*I)*n*t1*epsi[k1, p1, p2, q])/
      sp - ((16*I)*u1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apost, Apost, t1, u1][g, Pk1k1] = ((-64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/
     sp^3
 
BB[Apost, Apost, t1, u1][g, Pk1q] = ((128*I)*m2*epsi[k1, p1, p2, q])/sp - 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp - ((32*I)*q2*t1*epsi[k1, p1, p2, q])/
      sp^2 + ((32*I)*t1^2*epsi[k1, p1, p2, q])/sp^2 - 
     ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((32*I)*u1^2*epsi[k1, p1, p2, q])/sp^2
 
BB[Apost, Apost, t1, u1][g, Pqq] = (16*I)*epsi[k1, p1, p2, q] - 
     ((64*I)*m2*epsi[k1, p1, p2, q])/sp - ((16*I)*q2*epsi[k1, p1, p2, q])/
      sp + ((16*I)*s*epsi[k1, p1, p2, q])/sp - ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 + ((24*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/q2 + ((24*I)*u1*epsi[k1, p1, p2, q])/sp - 
     ((16*I)*t1*u1*epsi[k1, p1, p2, q])/(q2*sp)
 
BB[Apost, Apost, u1, t1][F, Peps] = ((-8*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apost, Apost, u1, t1][F, Pg] = -32*m2^2 + 32*m2^2*n + 32*m2*s - 
     24*m2*n*s - 8*s^2 + 4*n*s^2 + 24*m2*t1 - 16*m2*n*t1 - 8*s*t1 + 
     4*n*s*t1 + 24*m2*u1 - 16*m2*n*u1 - 8*s*u1 + 4*n*s*u1 - 48*t1*u1 + 
     20*n*t1*u1 - 2*n^2*t1*u1
 
BB[Apost, Apost, u1, t1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2 - 
     (16*q2*s*t1*u1)/sp^2
 
BB[Apost, Apost, u1, t1][F, Pk1q] = -64*m2^2 + 48*m2*s - 8*s^2 + 24*m2*t1 - 
     4*s*t1 + (16*m2*q2*t1)/sp - (8*q2*s*t1)/sp - (16*m2*t1^2)/sp - 
     (4*q2*t1^2)/sp + (8*s*t1^2)/sp + (4*t1^3)/sp + 24*m2*u1 - 4*s*u1 + 
     (16*m2*q2*u1)/sp - (8*q2*s*u1)/sp + (8*q2*t1*u1)/sp - (4*t1^2*u1)/sp - 
     (16*m2*u1^2)/sp - (4*q2*u1^2)/sp + (8*s*u1^2)/sp - (4*t1*u1^2)/sp + 
     (4*u1^3)/sp
 
BB[Apost, Apost, u1, t1][F, Pqq] = 32*m2^2 + 8*m2*q2 - 24*m2*s - 4*q2*s + 
     4*s^2 - 8*m2*sp + 4*s*sp - (20*m2*sp^2)/q2 + (4*m2*n*sp^2)/q2 + 
     (4*s*sp^2)/q2 - (n*s*sp^2)/q2 - 24*m2*t1 + 8*s*t1 + 4*sp*t1 - n*sp*t1 + 
     (4*m2*sp*t1)/q2 - (2*s*sp*t1)/q2 - 2*t1^2 - (4*sp*t1^2)/q2 + 
     (n*sp*t1^2)/q2 + (2*t1^3)/q2 - 24*m2*u1 + 8*s*u1 + 4*sp*u1 - n*sp*u1 + 
     (4*m2*sp*u1)/q2 - (2*s*sp*u1)/q2 + 12*t1*u1 - 2*n*t1*u1 + 
     (8*m2*t1*u1)/q2 - (4*s*t1*u1)/q2 - (2*t1^2*u1)/q2 - 2*u1^2 - 
     (4*sp*u1^2)/q2 + (n*sp*u1^2)/q2 - (2*t1*u1^2)/q2 + (2*u1^3)/q2
 
BB[Apost, Apost, u1, t1][g, Peps] = -4*m2*t1 + 2*s*t1 + (2*q2*t1^2)/sp - 
     (2*t1^3)/sp - 4*m2*u1 + 2*s*u1 + (4*q2*t1*u1)/sp + (4*q2*t1^2*u1)/sp^2 - 
     (2*t1^2*u1)/sp + (2*q2*u1^2)/sp + (4*q2*t1*u1^2)/sp^2 - (2*t1*u1^2)/sp - 
     (2*u1^3)/sp
 
BB[Apost, Apost, u1, t1][g, Pg] = ((-64*I)*m2*epsi[k1, p1, p2, q])/sp + 
     ((64*I)*m2*n*epsi[k1, p1, p2, q])/sp + ((32*I)*s*epsi[k1, p1, p2, q])/
      sp - ((16*I)*n*s*epsi[k1, p1, p2, q])/sp + 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp - ((8*I)*n*t1*epsi[k1, p1, p2, q])/
      sp + ((16*I)*u1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apost, Apost, u1, t1][g, Pk1k1] = ((64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/
     sp^3
 
BB[Apost, Apost, u1, t1][g, Pk1q] = ((-128*I)*m2*epsi[k1, p1, p2, q])/sp + 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp + ((32*I)*q2*t1*epsi[k1, p1, p2, q])/
      sp^2 - ((32*I)*t1^2*epsi[k1, p1, p2, q])/sp^2 + 
     ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((32*I)*u1^2*epsi[k1, p1, p2, q])/sp^2
 
BB[Apost, Apost, u1, t1][g, Pqq] = (-16*I)*epsi[k1, p1, p2, q] + 
     ((64*I)*m2*epsi[k1, p1, p2, q])/sp + ((16*I)*q2*epsi[k1, p1, p2, q])/
      sp - ((16*I)*s*epsi[k1, p1, p2, q])/sp + ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 - ((24*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/q2 - ((24*I)*u1*epsi[k1, p1, p2, q])/sp + 
     ((16*I)*t1*u1*epsi[k1, p1, p2, q])/(q2*sp)
 
BB[Apost, Apost, u1, u1][F, Peps] = 0
 
BB[Apost, Apost, u1, u1][F, Pg] = -32*m2^2 + 32*m2^2*n + 16*m2*s - 8*m2*n*s + 
     16*m2*t1 - 8*m2*n*t1 + 8*m2*n*u1 + 8*t1*u1 - 8*n*t1*u1 + 2*n^2*t1*u1
 
BB[Apost, Apost, u1, u1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2
 
BB[Apost, Apost, u1, u1][F, Pk1q] = -64*m2^2 + 16*m2*s + (16*m2*q2*t1)/sp - 
     (16*m2*t1^2)/sp - 16*m2*u1 + (16*m2*q2*u1)/sp - (16*m2*u1^2)/sp
 
BB[Apost, Apost, u1, u1][F, Pqq] = 32*m2^2 + 8*m2*q2 - 8*m2*s - 8*m2*sp - 
     16*m2*t1 - 4*sp*u1 + 2*n*sp*u1 + (8*m2*sp*u1)/q2 - 4*t1*u1 + 2*n*t1*u1 + 
     (8*m2*t1*u1)/q2 + (4*sp*u1^2)/q2 - (2*n*sp*u1^2)/q2
 
BB[Apost, Apost, u1, u1][g, Peps] = -8*m2*t1 + 4*t1*u1 - (8*q2*t1*u1)/sp + 
     (8*t1^2*u1)/sp - (8*q2*t1*u1^2)/sp^2
 
BB[Apost, Apost, u1, u1][g, Pg] = 0
 
BB[Apost, Apost, u1, u1][g, Pk1k1] = 0
 
BB[Apost, Apost, u1, u1][g, Pk1q] = 0
 
BB[Apost, Apost, u1, u1][g, Pqq] = 0
 
BB[Apost, Apre, t1, t1][F, Peps] = 0
 
BB[Apost, Apre, t1, t1][F, Pg] = -224*m2^2 + 32*m2^2*n + 48*m2*s - 8*m2*n*s - 
     64*m2*t1 + 8*m2*n*t1 + 48*m2*u1 - 8*m2*n*u1 + 24*t1*u1 - 16*n*t1*u1 + 
     2*n^2*t1*u1
 
BB[Apost, Apre, t1, t1][F, Pk1k1] = (-32*m2*q2*t1*u1)/sp^2
 
BB[Apost, Apre, t1, t1][F, Pk1q] = 64*m2^2 - 16*m2*s + 16*m2*t1 - 
     (16*m2*q2*t1)/sp + (16*m2*t1^2)/sp - (16*m2*q2*u1)/sp + (16*m2*u1^2)/sp
 
BB[Apost, Apre, t1, t1][F, Pqq] = -32*m2^2 - 8*m2*q2 + 8*m2*s + 8*m2*sp + 
     4*sp*t1 - 2*n*sp*t1 - (8*m2*sp*t1)/q2 - (4*sp*t1^2)/q2 + 
     (2*n*sp*t1^2)/q2 + 16*m2*u1 + 4*t1*u1 - 2*n*t1*u1 - (8*m2*t1*u1)/q2
 
BB[Apost, Apre, t1, t1][g, Peps] = 8*m2*u1 - 4*t1*u1 + (8*q2*t1*u1)/sp + 
     (8*q2*t1^2*u1)/sp^2 - (8*t1*u1^2)/sp
 
BB[Apost, Apre, t1, t1][g, Pg] = 0
 
BB[Apost, Apre, t1, t1][g, Pk1k1] = 0
 
BB[Apost, Apre, t1, t1][g, Pk1q] = 0
 
BB[Apost, Apre, t1, t1][g, Pqq] = 0
 
BB[Apost, Apre, t1, u1][F, Peps] = ((-8*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apost, Apre, t1, u1][F, Pg] = -224*m2^2 + 32*m2^2*n + 160*m2*s - 
     24*m2*n*s - 24*s^2 + 4*n*s^2 + 104*m2*t1 - 16*m2*n*t1 - 24*s*t1 + 
     4*n*s*t1 + 104*m2*u1 - 16*m2*n*u1 - 24*s*u1 + 4*n*s*u1 - 80*t1*u1 + 
     28*n*t1*u1 - 2*n^2*t1*u1
 
BB[Apost, Apre, t1, u1][F, Pk1k1] = (-32*m2*q2*t1*u1)/sp^2 + 
     (16*q2*s*t1*u1)/sp^2
 
BB[Apost, Apre, t1, u1][F, Pk1q] = 64*m2^2 - 48*m2*s + 8*s^2 - 24*m2*t1 + 
     4*s*t1 - (16*m2*q2*t1)/sp + (8*q2*s*t1)/sp + (16*m2*t1^2)/sp + 
     (4*q2*t1^2)/sp - (8*s*t1^2)/sp - (4*t1^3)/sp - 24*m2*u1 + 4*s*u1 - 
     (16*m2*q2*u1)/sp + (8*q2*s*u1)/sp - (8*q2*t1*u1)/sp + (4*t1^2*u1)/sp + 
     (16*m2*u1^2)/sp + (4*q2*u1^2)/sp - (8*s*u1^2)/sp + (4*t1*u1^2)/sp - 
     (4*u1^3)/sp
 
BB[Apost, Apre, t1, u1][F, Pqq] = -32*m2^2 - 8*m2*q2 + 24*m2*s + 4*q2*s - 
     4*s^2 + 8*m2*sp - 4*s*sp + (20*m2*sp^2)/q2 - (4*m2*n*sp^2)/q2 - 
     (4*s*sp^2)/q2 + (n*s*sp^2)/q2 + 24*m2*t1 - 8*s*t1 - 4*sp*t1 + n*sp*t1 - 
     (4*m2*sp*t1)/q2 + (2*s*sp*t1)/q2 + 2*t1^2 + (4*sp*t1^2)/q2 - 
     (n*sp*t1^2)/q2 - (2*t1^3)/q2 + 24*m2*u1 - 8*s*u1 - 4*sp*u1 + n*sp*u1 - 
     (4*m2*sp*u1)/q2 + (2*s*sp*u1)/q2 - 12*t1*u1 + 2*n*t1*u1 - 
     (8*m2*t1*u1)/q2 + (4*s*t1*u1)/q2 + (2*t1^2*u1)/q2 + 2*u1^2 + 
     (4*sp*u1^2)/q2 - (n*sp*u1^2)/q2 + (2*t1*u1^2)/q2 - (2*u1^3)/q2
 
BB[Apost, Apre, t1, u1][g, Peps] = 4*m2*t1 - 2*s*t1 - (2*q2*t1^2)/sp + 
     (2*t1^3)/sp + 4*m2*u1 - 2*s*u1 - (4*q2*t1*u1)/sp - (4*q2*t1^2*u1)/sp^2 + 
     (2*t1^2*u1)/sp - (2*q2*u1^2)/sp - (4*q2*t1*u1^2)/sp^2 + (2*t1*u1^2)/sp + 
     (2*u1^3)/sp
 
BB[Apost, Apre, t1, u1][g, Pg] = ((448*I)*m2*epsi[k1, p1, p2, q])/sp - 
     ((64*I)*m2*n*epsi[k1, p1, p2, q])/sp - ((96*I)*s*epsi[k1, p1, p2, q])/
      sp + ((16*I)*n*s*epsi[k1, p1, p2, q])/sp - 
     ((48*I)*t1*epsi[k1, p1, p2, q])/sp + ((8*I)*n*t1*epsi[k1, p1, p2, q])/
      sp - ((48*I)*u1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apost, Apre, t1, u1][g, Pk1k1] = ((64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[Apost, Apre, t1, u1][g, Pk1q] = ((-128*I)*m2*epsi[k1, p1, p2, q])/sp + 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp + ((32*I)*q2*t1*epsi[k1, p1, p2, q])/
      sp^2 - ((32*I)*t1^2*epsi[k1, p1, p2, q])/sp^2 + 
     ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((32*I)*u1^2*epsi[k1, p1, p2, q])/sp^2
 
BB[Apost, Apre, t1, u1][g, Pqq] = (-16*I)*epsi[k1, p1, p2, q] + 
     ((64*I)*m2*epsi[k1, p1, p2, q])/sp + ((16*I)*q2*epsi[k1, p1, p2, q])/
      sp - ((16*I)*s*epsi[k1, p1, p2, q])/sp + ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 - ((24*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/q2 - ((24*I)*u1*epsi[k1, p1, p2, q])/sp + 
     ((16*I)*t1*u1*epsi[k1, p1, p2, q])/(q2*sp)
 
BB[Apost, Apre, u1, t1][F, Peps] = ((8*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apost, Apre, u1, t1][F, Pg] = -224*m2^2 + 32*m2^2*n + 160*m2*s - 
     24*m2*n*s - 24*s^2 + 4*n*s^2 + 104*m2*t1 - 16*m2*n*t1 - 24*s*t1 + 
     4*n*s*t1 + 104*m2*u1 - 16*m2*n*u1 - 24*s*u1 + 4*n*s*u1 - 80*t1*u1 + 
     28*n*t1*u1 - 2*n^2*t1*u1
 
BB[Apost, Apre, u1, t1][F, Pk1k1] = (-32*m2*q2*t1*u1)/sp^2 + 
     (16*q2*s*t1*u1)/sp^2
 
BB[Apost, Apre, u1, t1][F, Pk1q] = 64*m2^2 - 48*m2*s + 8*s^2 - 24*m2*t1 + 
     4*s*t1 - (16*m2*q2*t1)/sp + (8*q2*s*t1)/sp + (16*m2*t1^2)/sp + 
     (4*q2*t1^2)/sp - (8*s*t1^2)/sp - (4*t1^3)/sp - 24*m2*u1 + 4*s*u1 - 
     (16*m2*q2*u1)/sp + (8*q2*s*u1)/sp - (8*q2*t1*u1)/sp + (4*t1^2*u1)/sp + 
     (16*m2*u1^2)/sp + (4*q2*u1^2)/sp - (8*s*u1^2)/sp + (4*t1*u1^2)/sp - 
     (4*u1^3)/sp
 
BB[Apost, Apre, u1, t1][F, Pqq] = -32*m2^2 - 8*m2*q2 + 24*m2*s + 4*q2*s - 
     4*s^2 + 8*m2*sp - 4*s*sp + (20*m2*sp^2)/q2 - (4*m2*n*sp^2)/q2 - 
     (4*s*sp^2)/q2 + (n*s*sp^2)/q2 + 24*m2*t1 - 8*s*t1 - 4*sp*t1 + n*sp*t1 - 
     (4*m2*sp*t1)/q2 + (2*s*sp*t1)/q2 + 2*t1^2 + (4*sp*t1^2)/q2 - 
     (n*sp*t1^2)/q2 - (2*t1^3)/q2 + 24*m2*u1 - 8*s*u1 - 4*sp*u1 + n*sp*u1 - 
     (4*m2*sp*u1)/q2 + (2*s*sp*u1)/q2 - 12*t1*u1 + 2*n*t1*u1 - 
     (8*m2*t1*u1)/q2 + (4*s*t1*u1)/q2 + (2*t1^2*u1)/q2 + 2*u1^2 + 
     (4*sp*u1^2)/q2 - (n*sp*u1^2)/q2 + (2*t1*u1^2)/q2 - (2*u1^3)/q2
 
BB[Apost, Apre, u1, t1][g, Peps] = 4*m2*t1 - 2*s*t1 - (2*q2*t1^2)/sp + 
     (2*t1^3)/sp + 4*m2*u1 - 2*s*u1 - (4*q2*t1*u1)/sp - (4*q2*t1^2*u1)/sp^2 + 
     (2*t1^2*u1)/sp - (2*q2*u1^2)/sp - (4*q2*t1*u1^2)/sp^2 + (2*t1*u1^2)/sp + 
     (2*u1^3)/sp
 
BB[Apost, Apre, u1, t1][g, Pg] = ((-448*I)*m2*epsi[k1, p1, p2, q])/sp + 
     ((64*I)*m2*n*epsi[k1, p1, p2, q])/sp + ((96*I)*s*epsi[k1, p1, p2, q])/
      sp - ((16*I)*n*s*epsi[k1, p1, p2, q])/sp + 
     ((48*I)*t1*epsi[k1, p1, p2, q])/sp - ((8*I)*n*t1*epsi[k1, p1, p2, q])/
      sp + ((48*I)*u1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apost, Apre, u1, t1][g, Pk1k1] = ((-64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/
     sp^3
 
BB[Apost, Apre, u1, t1][g, Pk1q] = ((128*I)*m2*epsi[k1, p1, p2, q])/sp - 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp - ((32*I)*q2*t1*epsi[k1, p1, p2, q])/
      sp^2 + ((32*I)*t1^2*epsi[k1, p1, p2, q])/sp^2 - 
     ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((32*I)*u1^2*epsi[k1, p1, p2, q])/sp^2
 
BB[Apost, Apre, u1, t1][g, Pqq] = (16*I)*epsi[k1, p1, p2, q] - 
     ((64*I)*m2*epsi[k1, p1, p2, q])/sp - ((16*I)*q2*epsi[k1, p1, p2, q])/
      sp + ((16*I)*s*epsi[k1, p1, p2, q])/sp - ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 + ((24*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/q2 + ((24*I)*u1*epsi[k1, p1, p2, q])/sp - 
     ((16*I)*t1*u1*epsi[k1, p1, p2, q])/(q2*sp)
 
BB[Apost, Apre, u1, u1][F, Peps] = 0
 
BB[Apost, Apre, u1, u1][F, Pg] = -224*m2^2 + 32*m2^2*n + 48*m2*s - 8*m2*n*s + 
     48*m2*t1 - 8*m2*n*t1 - 64*m2*u1 + 8*m2*n*u1 + 24*t1*u1 - 16*n*t1*u1 + 
     2*n^2*t1*u1
 
BB[Apost, Apre, u1, u1][F, Pk1k1] = (-32*m2*q2*t1*u1)/sp^2
 
BB[Apost, Apre, u1, u1][F, Pk1q] = 64*m2^2 - 16*m2*s - (16*m2*q2*t1)/sp + 
     (16*m2*t1^2)/sp + 16*m2*u1 - (16*m2*q2*u1)/sp + (16*m2*u1^2)/sp
 
BB[Apost, Apre, u1, u1][F, Pqq] = -32*m2^2 - 8*m2*q2 + 8*m2*s + 8*m2*sp + 
     16*m2*t1 + 4*sp*u1 - 2*n*sp*u1 - (8*m2*sp*u1)/q2 + 4*t1*u1 - 2*n*t1*u1 - 
     (8*m2*t1*u1)/q2 - (4*sp*u1^2)/q2 + (2*n*sp*u1^2)/q2
 
BB[Apost, Apre, u1, u1][g, Peps] = 8*m2*t1 - 4*t1*u1 + (8*q2*t1*u1)/sp - 
     (8*t1^2*u1)/sp + (8*q2*t1*u1^2)/sp^2
 
BB[Apost, Apre, u1, u1][g, Pg] = 0
 
BB[Apost, Apre, u1, u1][g, Pk1k1] = 0
 
BB[Apost, Apre, u1, u1][g, Pk1q] = 0
 
BB[Apost, Apre, u1, u1][g, Pqq] = 0
 
BB[Apost, V, t1, t1][F, Peps] = (-8*m2*q2*t1)/sp + (8*m2*t1^2)/sp - 8*m2*u1 + 
     (8*m2*q2*u1)/sp - 4*t1*u1 + 2*n*t1*u1 - (8*m2*u1^2)/sp
 
BB[Apost, V, t1, t1][F, Pg] = 0
 
BB[Apost, V, t1, t1][F, Pk1k1] = 0
 
BB[Apost, V, t1, t1][F, Pk1q] = 0
 
BB[Apost, V, t1, t1][F, Pqq] = 0
 
BB[Apost, V, t1, t1][g, Peps] = 0
 
BB[Apost, V, t1, t1][g, Pg] = 16*m2*t1 - 8*m2*n*t1 - 8*s*t1 + 4*n*s*t1 - 
     (8*q2*t1^2)/sp + (4*n*q2*t1^2)/sp + (8*t1^3)/sp - (4*n*t1^3)/sp + 
     16*m2*u1 - 8*m2*n*u1 - 8*t1*u1 + 4*n*t1*u1 + (8*q2*t1*u1)/sp - 
     (4*n*q2*t1*u1)/sp - (8*t1*u1^2)/sp + (4*n*t1*u1^2)/sp
 
BB[Apost, V, t1, t1][g, Pk1k1] = 0
 
BB[Apost, V, t1, t1][g, Pk1q] = 16*m2*t1 - 8*s*t1 - (8*q2*t1^2)/sp + 
     (8*t1^3)/sp - (8*q2*t1*u1)/sp - (16*q2*t1^2*u1)/sp^2 + (8*t1*u1^2)/sp
 
BB[Apost, V, t1, t1][g, Pqq] = -8*m2*sp - 8*m2*t1 - 8*q2*t1 + 4*s*t1 + 
     4*sp*t1 + (8*m2*sp*t1)/q2 + 8*t1^2 - (4*q2*t1^2)/sp - (4*sp*t1^2)/q2 + 
     (4*t1^3)/sp - 8*m2*u1 + 12*t1*u1 - (4*q2*t1*u1)/sp - (8*t1^2*u1)/q2 + 
     (4*t1*u1^2)/sp
 
BB[Apost, V, t1, u1][F, Peps] = 8*m2*t1 - 2*s*t1 - (8*m2*q2*t1)/sp + 
     (4*q2*s*t1)/sp + (8*m2*t1^2)/sp + (2*q2*t1^2)/sp - (4*s*t1^2)/sp - 
     (2*t1^3)/sp + 2*s*u1 + (8*m2*q2*u1)/sp - (4*q2*s*u1)/sp - 8*t1*u1 + 
     2*n*t1*u1 - (2*t1^2*u1)/sp - (8*m2*u1^2)/sp - (2*q2*u1^2)/sp + 
     (4*s*u1^2)/sp + (2*t1*u1^2)/sp + (2*u1^3)/sp
 
BB[Apost, V, t1, u1][F, Pg] = 0
 
BB[Apost, V, t1, u1][F, Pk1k1] = 0
 
BB[Apost, V, t1, u1][F, Pk1q] = ((-16*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apost, V, t1, u1][F, Pqq] = ((16*I)*sp*epsi[k1, p1, p2, q])/q2 - 
     ((4*I)*n*sp*epsi[k1, p1, p2, q])/q2 - ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 + ((8*I)*u1*epsi[k1, p1, p2, q])/q2
 
BB[Apost, V, t1, u1][g, Peps] = ((16*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 - 
     ((8*I)*t1*epsi[k1, p1, p2, q])/sp - ((16*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 - ((16*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp + ((16*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[Apost, V, t1, u1][g, Pg] = 32*m2*t1 - 8*m2*n*t1 - 12*s*t1 + 2*n*s*t1 - 
     (12*q2*t1^2)/sp + (2*n*q2*t1^2)/sp + (12*t1^3)/sp - (2*n*t1^3)/sp + 
     32*m2*u1 - 8*m2*n*u1 - 4*s*u1 + 2*n*s*u1 - 16*t1*u1 + 4*n*t1*u1 + 
     (16*q2*t1*u1)/sp - (4*n*q2*t1*u1)/sp - (4*t1^2*u1)/sp + 
     (2*n*t1^2*u1)/sp - (4*q2*u1^2)/sp + (2*n*q2*u1^2)/sp - (12*t1*u1^2)/sp + 
     (2*n*t1*u1^2)/sp + (4*u1^3)/sp - (2*n*u1^3)/sp
 
BB[Apost, V, t1, u1][g, Pk1k1] = 0
 
BB[Apost, V, t1, u1][g, Pk1q] = 8*m2*t1 - 8*m2*u1 - (8*q2*t1^2*u1)/sp^2 - 
     (8*t1^2*u1)/sp + (8*q2*t1*u1^2)/sp^2 + (8*t1*u1^2)/sp
 
BB[Apost, V, t1, u1][g, Pqq] = (4*m2*sp^2)/q2 - 2*s*t1 + (4*m2*sp*t1)/q2 - 
     (2*s*sp*t1)/q2 - 2*t1^2 - (2*q2*t1^2)/sp + (2*t1^3)/q2 + (2*t1^3)/sp + 
     2*s*u1 - (4*m2*sp*u1)/q2 + (2*s*sp*u1)/q2 - (2*t1^2*u1)/q2 - 
     (2*t1^2*u1)/sp + 2*u1^2 + (2*q2*u1^2)/sp + (2*t1*u1^2)/q2 + 
     (2*t1*u1^2)/sp - (2*u1^3)/q2 - (2*u1^3)/sp
 
BB[Apost, V, u1, t1][F, Peps] = -2*s*t1 - (8*m2*q2*t1)/sp + (4*q2*s*t1)/sp + 
     (8*m2*t1^2)/sp + (2*q2*t1^2)/sp - (4*s*t1^2)/sp - (2*t1^3)/sp - 
     8*m2*u1 + 2*s*u1 + (8*m2*q2*u1)/sp - (4*q2*s*u1)/sp + 8*t1*u1 - 
     2*n*t1*u1 - (2*t1^2*u1)/sp - (8*m2*u1^2)/sp - (2*q2*u1^2)/sp + 
     (4*s*u1^2)/sp + (2*t1*u1^2)/sp + (2*u1^3)/sp
 
BB[Apost, V, u1, t1][F, Pg] = 0
 
BB[Apost, V, u1, t1][F, Pk1k1] = 0
 
BB[Apost, V, u1, t1][F, Pk1q] = ((16*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apost, V, u1, t1][F, Pqq] = ((16*I)*sp*epsi[k1, p1, p2, q])/q2 - 
     ((4*I)*n*sp*epsi[k1, p1, p2, q])/q2 + ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 - ((8*I)*u1*epsi[k1, p1, p2, q])/q2
 
BB[Apost, V, u1, t1][g, Peps] = ((-16*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 + 
     ((8*I)*t1*epsi[k1, p1, p2, q])/sp + ((16*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 + ((16*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp - ((16*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[Apost, V, u1, t1][g, Pg] = 32*m2*t1 - 8*m2*n*t1 - 12*s*t1 + 2*n*s*t1 - 
     (12*q2*t1^2)/sp + (2*n*q2*t1^2)/sp + (12*t1^3)/sp - (2*n*t1^3)/sp + 
     32*m2*u1 - 8*m2*n*u1 - 4*s*u1 + 2*n*s*u1 - 16*t1*u1 + 4*n*t1*u1 + 
     (16*q2*t1*u1)/sp - (4*n*q2*t1*u1)/sp - (4*t1^2*u1)/sp + 
     (2*n*t1^2*u1)/sp - (4*q2*u1^2)/sp + (2*n*q2*u1^2)/sp - (12*t1*u1^2)/sp + 
     (2*n*t1*u1^2)/sp + (4*u1^3)/sp - (2*n*u1^3)/sp
 
BB[Apost, V, u1, t1][g, Pk1k1] = 0
 
BB[Apost, V, u1, t1][g, Pk1q] = 8*m2*t1 - 8*m2*u1 - (8*q2*t1^2*u1)/sp^2 - 
     (8*t1^2*u1)/sp + (8*q2*t1*u1^2)/sp^2 + (8*t1*u1^2)/sp
 
BB[Apost, V, u1, t1][g, Pqq] = (-4*m2*sp^2)/q2 - 2*s*t1 + (4*m2*sp*t1)/q2 - 
     (2*s*sp*t1)/q2 - 2*t1^2 - (2*q2*t1^2)/sp + (2*t1^3)/q2 + (2*t1^3)/sp + 
     2*s*u1 - (4*m2*sp*u1)/q2 + (2*s*sp*u1)/q2 - (2*t1^2*u1)/q2 - 
     (2*t1^2*u1)/sp + 2*u1^2 + (2*q2*u1^2)/sp + (2*t1*u1^2)/q2 + 
     (2*t1*u1^2)/sp - (2*u1^3)/q2 - (2*u1^3)/sp
 
BB[Apost, V, u1, u1][F, Peps] = 8*m2*t1 - (8*m2*q2*t1)/sp + (8*m2*t1^2)/sp + 
     (8*m2*q2*u1)/sp + 4*t1*u1 - 2*n*t1*u1 - (8*m2*u1^2)/sp
 
BB[Apost, V, u1, u1][F, Pg] = 0
 
BB[Apost, V, u1, u1][F, Pk1k1] = 0
 
BB[Apost, V, u1, u1][F, Pk1q] = 0
 
BB[Apost, V, u1, u1][F, Pqq] = 0
 
BB[Apost, V, u1, u1][g, Peps] = 0
 
BB[Apost, V, u1, u1][g, Pg] = 48*m2*t1 - 8*m2*n*t1 + 48*m2*u1 - 8*m2*n*u1 - 
     24*s*u1 + 4*n*s*u1 - 24*t1*u1 + 4*n*t1*u1 + (24*q2*t1*u1)/sp - 
     (4*n*q2*t1*u1)/sp - (24*t1^2*u1)/sp + (4*n*t1^2*u1)/sp - 
     (24*q2*u1^2)/sp + (4*n*q2*u1^2)/sp + (24*u1^3)/sp - (4*n*u1^3)/sp
 
BB[Apost, V, u1, u1][g, Pk1k1] = 0
 
BB[Apost, V, u1, u1][g, Pk1q] = -16*m2*u1 + 8*s*u1 + (8*q2*t1*u1)/sp - 
     (8*t1^2*u1)/sp + (8*q2*u1^2)/sp + (16*q2*t1*u1^2)/sp^2 - (8*u1^3)/sp
 
BB[Apost, V, u1, u1][g, Pqq] = 8*m2*sp + 8*m2*t1 + 8*m2*u1 + 8*q2*u1 - 
     4*s*u1 - 4*sp*u1 - (8*m2*sp*u1)/q2 - 12*t1*u1 + (4*q2*t1*u1)/sp - 
     (4*t1^2*u1)/sp - 8*u1^2 + (4*q2*u1^2)/sp + (4*sp*u1^2)/q2 + 
     (8*t1*u1^2)/q2 - (4*u1^3)/sp
 
BB[Apre, Apost, t1, t1][F, Peps] = 0
 
BB[Apre, Apost, t1, t1][F, Pg] = -224*m2^2 + 32*m2^2*n + 48*m2*s - 8*m2*n*s - 
     64*m2*t1 + 8*m2*n*t1 + 48*m2*u1 - 8*m2*n*u1 + 24*t1*u1 - 16*n*t1*u1 + 
     2*n^2*t1*u1
 
BB[Apre, Apost, t1, t1][F, Pk1k1] = (-32*m2*q2*t1*u1)/sp^2
 
BB[Apre, Apost, t1, t1][F, Pk1q] = 64*m2^2 - 16*m2*s + 16*m2*t1 - 
     (16*m2*q2*t1)/sp + (16*m2*t1^2)/sp - (16*m2*q2*u1)/sp + (16*m2*u1^2)/sp
 
BB[Apre, Apost, t1, t1][F, Pqq] = -32*m2^2 - 8*m2*q2 + 8*m2*s + 8*m2*sp + 
     4*sp*t1 - 2*n*sp*t1 - (8*m2*sp*t1)/q2 - (4*sp*t1^2)/q2 + 
     (2*n*sp*t1^2)/q2 + 16*m2*u1 + 4*t1*u1 - 2*n*t1*u1 - (8*m2*t1*u1)/q2
 
BB[Apre, Apost, t1, t1][g, Peps] = 8*m2*u1 - 4*t1*u1 + (8*q2*t1*u1)/sp + 
     (8*q2*t1^2*u1)/sp^2 - (8*t1*u1^2)/sp
 
BB[Apre, Apost, t1, t1][g, Pg] = 0
 
BB[Apre, Apost, t1, t1][g, Pk1k1] = 0
 
BB[Apre, Apost, t1, t1][g, Pk1q] = 0
 
BB[Apre, Apost, t1, t1][g, Pqq] = 0
 
BB[Apre, Apost, t1, u1][F, Peps] = ((-8*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apre, Apost, t1, u1][F, Pg] = -224*m2^2 + 32*m2^2*n + 160*m2*s - 
     24*m2*n*s - 24*s^2 + 4*n*s^2 + 104*m2*t1 - 16*m2*n*t1 - 24*s*t1 + 
     4*n*s*t1 + 104*m2*u1 - 16*m2*n*u1 - 24*s*u1 + 4*n*s*u1 - 80*t1*u1 + 
     28*n*t1*u1 - 2*n^2*t1*u1
 
BB[Apre, Apost, t1, u1][F, Pk1k1] = (-32*m2*q2*t1*u1)/sp^2 + 
     (16*q2*s*t1*u1)/sp^2
 
BB[Apre, Apost, t1, u1][F, Pk1q] = 64*m2^2 - 48*m2*s + 8*s^2 - 24*m2*t1 + 
     4*s*t1 - (16*m2*q2*t1)/sp + (8*q2*s*t1)/sp + (16*m2*t1^2)/sp + 
     (4*q2*t1^2)/sp - (8*s*t1^2)/sp - (4*t1^3)/sp - 24*m2*u1 + 4*s*u1 - 
     (16*m2*q2*u1)/sp + (8*q2*s*u1)/sp - (8*q2*t1*u1)/sp + (4*t1^2*u1)/sp + 
     (16*m2*u1^2)/sp + (4*q2*u1^2)/sp - (8*s*u1^2)/sp + (4*t1*u1^2)/sp - 
     (4*u1^3)/sp
 
BB[Apre, Apost, t1, u1][F, Pqq] = -32*m2^2 - 8*m2*q2 + 24*m2*s + 4*q2*s - 
     4*s^2 + 8*m2*sp - 4*s*sp + (20*m2*sp^2)/q2 - (4*m2*n*sp^2)/q2 - 
     (4*s*sp^2)/q2 + (n*s*sp^2)/q2 + 24*m2*t1 - 8*s*t1 - 4*sp*t1 + n*sp*t1 - 
     (4*m2*sp*t1)/q2 + (2*s*sp*t1)/q2 + 2*t1^2 + (4*sp*t1^2)/q2 - 
     (n*sp*t1^2)/q2 - (2*t1^3)/q2 + 24*m2*u1 - 8*s*u1 - 4*sp*u1 + n*sp*u1 - 
     (4*m2*sp*u1)/q2 + (2*s*sp*u1)/q2 - 12*t1*u1 + 2*n*t1*u1 - 
     (8*m2*t1*u1)/q2 + (4*s*t1*u1)/q2 + (2*t1^2*u1)/q2 + 2*u1^2 + 
     (4*sp*u1^2)/q2 - (n*sp*u1^2)/q2 + (2*t1*u1^2)/q2 - (2*u1^3)/q2
 
BB[Apre, Apost, t1, u1][g, Peps] = 4*m2*t1 - 2*s*t1 - (2*q2*t1^2)/sp + 
     (2*t1^3)/sp + 4*m2*u1 - 2*s*u1 - (4*q2*t1*u1)/sp - (4*q2*t1^2*u1)/sp^2 + 
     (2*t1^2*u1)/sp - (2*q2*u1^2)/sp - (4*q2*t1*u1^2)/sp^2 + (2*t1*u1^2)/sp + 
     (2*u1^3)/sp
 
BB[Apre, Apost, t1, u1][g, Pg] = ((448*I)*m2*epsi[k1, p1, p2, q])/sp - 
     ((64*I)*m2*n*epsi[k1, p1, p2, q])/sp - ((96*I)*s*epsi[k1, p1, p2, q])/
      sp + ((16*I)*n*s*epsi[k1, p1, p2, q])/sp - 
     ((48*I)*t1*epsi[k1, p1, p2, q])/sp + ((8*I)*n*t1*epsi[k1, p1, p2, q])/
      sp - ((48*I)*u1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apre, Apost, t1, u1][g, Pk1k1] = ((64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[Apre, Apost, t1, u1][g, Pk1q] = ((-128*I)*m2*epsi[k1, p1, p2, q])/sp + 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp + ((32*I)*q2*t1*epsi[k1, p1, p2, q])/
      sp^2 - ((32*I)*t1^2*epsi[k1, p1, p2, q])/sp^2 + 
     ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((32*I)*u1^2*epsi[k1, p1, p2, q])/sp^2
 
BB[Apre, Apost, t1, u1][g, Pqq] = (-16*I)*epsi[k1, p1, p2, q] + 
     ((64*I)*m2*epsi[k1, p1, p2, q])/sp + ((16*I)*q2*epsi[k1, p1, p2, q])/
      sp - ((16*I)*s*epsi[k1, p1, p2, q])/sp + ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 - ((24*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/q2 - ((24*I)*u1*epsi[k1, p1, p2, q])/sp + 
     ((16*I)*t1*u1*epsi[k1, p1, p2, q])/(q2*sp)
 
BB[Apre, Apost, u1, t1][F, Peps] = ((8*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apre, Apost, u1, t1][F, Pg] = -224*m2^2 + 32*m2^2*n + 160*m2*s - 
     24*m2*n*s - 24*s^2 + 4*n*s^2 + 104*m2*t1 - 16*m2*n*t1 - 24*s*t1 + 
     4*n*s*t1 + 104*m2*u1 - 16*m2*n*u1 - 24*s*u1 + 4*n*s*u1 - 80*t1*u1 + 
     28*n*t1*u1 - 2*n^2*t1*u1
 
BB[Apre, Apost, u1, t1][F, Pk1k1] = (-32*m2*q2*t1*u1)/sp^2 + 
     (16*q2*s*t1*u1)/sp^2
 
BB[Apre, Apost, u1, t1][F, Pk1q] = 64*m2^2 - 48*m2*s + 8*s^2 - 24*m2*t1 + 
     4*s*t1 - (16*m2*q2*t1)/sp + (8*q2*s*t1)/sp + (16*m2*t1^2)/sp + 
     (4*q2*t1^2)/sp - (8*s*t1^2)/sp - (4*t1^3)/sp - 24*m2*u1 + 4*s*u1 - 
     (16*m2*q2*u1)/sp + (8*q2*s*u1)/sp - (8*q2*t1*u1)/sp + (4*t1^2*u1)/sp + 
     (16*m2*u1^2)/sp + (4*q2*u1^2)/sp - (8*s*u1^2)/sp + (4*t1*u1^2)/sp - 
     (4*u1^3)/sp
 
BB[Apre, Apost, u1, t1][F, Pqq] = -32*m2^2 - 8*m2*q2 + 24*m2*s + 4*q2*s - 
     4*s^2 + 8*m2*sp - 4*s*sp + (20*m2*sp^2)/q2 - (4*m2*n*sp^2)/q2 - 
     (4*s*sp^2)/q2 + (n*s*sp^2)/q2 + 24*m2*t1 - 8*s*t1 - 4*sp*t1 + n*sp*t1 - 
     (4*m2*sp*t1)/q2 + (2*s*sp*t1)/q2 + 2*t1^2 + (4*sp*t1^2)/q2 - 
     (n*sp*t1^2)/q2 - (2*t1^3)/q2 + 24*m2*u1 - 8*s*u1 - 4*sp*u1 + n*sp*u1 - 
     (4*m2*sp*u1)/q2 + (2*s*sp*u1)/q2 - 12*t1*u1 + 2*n*t1*u1 - 
     (8*m2*t1*u1)/q2 + (4*s*t1*u1)/q2 + (2*t1^2*u1)/q2 + 2*u1^2 + 
     (4*sp*u1^2)/q2 - (n*sp*u1^2)/q2 + (2*t1*u1^2)/q2 - (2*u1^3)/q2
 
BB[Apre, Apost, u1, t1][g, Peps] = 4*m2*t1 - 2*s*t1 - (2*q2*t1^2)/sp + 
     (2*t1^3)/sp + 4*m2*u1 - 2*s*u1 - (4*q2*t1*u1)/sp - (4*q2*t1^2*u1)/sp^2 + 
     (2*t1^2*u1)/sp - (2*q2*u1^2)/sp - (4*q2*t1*u1^2)/sp^2 + (2*t1*u1^2)/sp + 
     (2*u1^3)/sp
 
BB[Apre, Apost, u1, t1][g, Pg] = ((-448*I)*m2*epsi[k1, p1, p2, q])/sp + 
     ((64*I)*m2*n*epsi[k1, p1, p2, q])/sp + ((96*I)*s*epsi[k1, p1, p2, q])/
      sp - ((16*I)*n*s*epsi[k1, p1, p2, q])/sp + 
     ((48*I)*t1*epsi[k1, p1, p2, q])/sp - ((8*I)*n*t1*epsi[k1, p1, p2, q])/
      sp + ((48*I)*u1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apre, Apost, u1, t1][g, Pk1k1] = ((-64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/
     sp^3
 
BB[Apre, Apost, u1, t1][g, Pk1q] = ((128*I)*m2*epsi[k1, p1, p2, q])/sp - 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp - ((32*I)*q2*t1*epsi[k1, p1, p2, q])/
      sp^2 + ((32*I)*t1^2*epsi[k1, p1, p2, q])/sp^2 - 
     ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((32*I)*u1^2*epsi[k1, p1, p2, q])/sp^2
 
BB[Apre, Apost, u1, t1][g, Pqq] = (16*I)*epsi[k1, p1, p2, q] - 
     ((64*I)*m2*epsi[k1, p1, p2, q])/sp - ((16*I)*q2*epsi[k1, p1, p2, q])/
      sp + ((16*I)*s*epsi[k1, p1, p2, q])/sp - ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 + ((24*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/q2 + ((24*I)*u1*epsi[k1, p1, p2, q])/sp - 
     ((16*I)*t1*u1*epsi[k1, p1, p2, q])/(q2*sp)
 
BB[Apre, Apost, u1, u1][F, Peps] = 0
 
BB[Apre, Apost, u1, u1][F, Pg] = -224*m2^2 + 32*m2^2*n + 48*m2*s - 8*m2*n*s + 
     48*m2*t1 - 8*m2*n*t1 - 64*m2*u1 + 8*m2*n*u1 + 24*t1*u1 - 16*n*t1*u1 + 
     2*n^2*t1*u1
 
BB[Apre, Apost, u1, u1][F, Pk1k1] = (-32*m2*q2*t1*u1)/sp^2
 
BB[Apre, Apost, u1, u1][F, Pk1q] = 64*m2^2 - 16*m2*s - (16*m2*q2*t1)/sp + 
     (16*m2*t1^2)/sp + 16*m2*u1 - (16*m2*q2*u1)/sp + (16*m2*u1^2)/sp
 
BB[Apre, Apost, u1, u1][F, Pqq] = -32*m2^2 - 8*m2*q2 + 8*m2*s + 8*m2*sp + 
     16*m2*t1 + 4*sp*u1 - 2*n*sp*u1 - (8*m2*sp*u1)/q2 + 4*t1*u1 - 2*n*t1*u1 - 
     (8*m2*t1*u1)/q2 - (4*sp*u1^2)/q2 + (2*n*sp*u1^2)/q2
 
BB[Apre, Apost, u1, u1][g, Peps] = 8*m2*t1 - 4*t1*u1 + (8*q2*t1*u1)/sp - 
     (8*t1^2*u1)/sp + (8*q2*t1*u1^2)/sp^2
 
BB[Apre, Apost, u1, u1][g, Pg] = 0
 
BB[Apre, Apost, u1, u1][g, Pk1k1] = 0
 
BB[Apre, Apost, u1, u1][g, Pk1q] = 0
 
BB[Apre, Apost, u1, u1][g, Pqq] = 0
 
BB[Apre, Apre, t1, t1][F, Peps] = 0
 
BB[Apre, Apre, t1, t1][F, Pg] = -32*m2^2 + 32*m2^2*n + 16*m2*s - 8*m2*n*s + 
     8*m2*n*t1 + 16*m2*u1 - 8*m2*n*u1 + 8*t1*u1 - 8*n*t1*u1 + 2*n^2*t1*u1
 
BB[Apre, Apre, t1, t1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2
 
BB[Apre, Apre, t1, t1][F, Pk1q] = -64*m2^2 + 16*m2*s - 16*m2*t1 + 
     (16*m2*q2*t1)/sp - (16*m2*t1^2)/sp + (16*m2*q2*u1)/sp - (16*m2*u1^2)/sp
 
BB[Apre, Apre, t1, t1][F, Pqq] = 32*m2^2 + 8*m2*q2 - 8*m2*s - 8*m2*sp - 
     4*sp*t1 + 2*n*sp*t1 + (8*m2*sp*t1)/q2 + (4*sp*t1^2)/q2 - 
     (2*n*sp*t1^2)/q2 - 16*m2*u1 - 4*t1*u1 + 2*n*t1*u1 + (8*m2*t1*u1)/q2
 
BB[Apre, Apre, t1, t1][g, Peps] = -8*m2*u1 + 4*t1*u1 - (8*q2*t1*u1)/sp - 
     (8*q2*t1^2*u1)/sp^2 + (8*t1*u1^2)/sp
 
BB[Apre, Apre, t1, t1][g, Pg] = 0
 
BB[Apre, Apre, t1, t1][g, Pk1k1] = 0
 
BB[Apre, Apre, t1, t1][g, Pk1q] = 0
 
BB[Apre, Apre, t1, t1][g, Pqq] = 0
 
BB[Apre, Apre, t1, u1][F, Peps] = ((8*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apre, Apre, t1, u1][F, Pg] = -32*m2^2 + 32*m2^2*n + 32*m2*s - 24*m2*n*s - 
     8*s^2 + 4*n*s^2 + 24*m2*t1 - 16*m2*n*t1 - 8*s*t1 + 4*n*s*t1 + 24*m2*u1 - 
     16*m2*n*u1 - 8*s*u1 + 4*n*s*u1 - 48*t1*u1 + 20*n*t1*u1 - 2*n^2*t1*u1
 
BB[Apre, Apre, t1, u1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2 - 
     (16*q2*s*t1*u1)/sp^2
 
BB[Apre, Apre, t1, u1][F, Pk1q] = -64*m2^2 + 48*m2*s - 8*s^2 + 24*m2*t1 - 
     4*s*t1 + (16*m2*q2*t1)/sp - (8*q2*s*t1)/sp - (16*m2*t1^2)/sp - 
     (4*q2*t1^2)/sp + (8*s*t1^2)/sp + (4*t1^3)/sp + 24*m2*u1 - 4*s*u1 + 
     (16*m2*q2*u1)/sp - (8*q2*s*u1)/sp + (8*q2*t1*u1)/sp - (4*t1^2*u1)/sp - 
     (16*m2*u1^2)/sp - (4*q2*u1^2)/sp + (8*s*u1^2)/sp - (4*t1*u1^2)/sp + 
     (4*u1^3)/sp
 
BB[Apre, Apre, t1, u1][F, Pqq] = 32*m2^2 + 8*m2*q2 - 24*m2*s - 4*q2*s + 
     4*s^2 - 8*m2*sp + 4*s*sp - (20*m2*sp^2)/q2 + (4*m2*n*sp^2)/q2 + 
     (4*s*sp^2)/q2 - (n*s*sp^2)/q2 - 24*m2*t1 + 8*s*t1 + 4*sp*t1 - n*sp*t1 + 
     (4*m2*sp*t1)/q2 - (2*s*sp*t1)/q2 - 2*t1^2 - (4*sp*t1^2)/q2 + 
     (n*sp*t1^2)/q2 + (2*t1^3)/q2 - 24*m2*u1 + 8*s*u1 + 4*sp*u1 - n*sp*u1 + 
     (4*m2*sp*u1)/q2 - (2*s*sp*u1)/q2 + 12*t1*u1 - 2*n*t1*u1 + 
     (8*m2*t1*u1)/q2 - (4*s*t1*u1)/q2 - (2*t1^2*u1)/q2 - 2*u1^2 - 
     (4*sp*u1^2)/q2 + (n*sp*u1^2)/q2 - (2*t1*u1^2)/q2 + (2*u1^3)/q2
 
BB[Apre, Apre, t1, u1][g, Peps] = -4*m2*t1 + 2*s*t1 + (2*q2*t1^2)/sp - 
     (2*t1^3)/sp - 4*m2*u1 + 2*s*u1 + (4*q2*t1*u1)/sp + (4*q2*t1^2*u1)/sp^2 - 
     (2*t1^2*u1)/sp + (2*q2*u1^2)/sp + (4*q2*t1*u1^2)/sp^2 - (2*t1*u1^2)/sp - 
     (2*u1^3)/sp
 
BB[Apre, Apre, t1, u1][g, Pg] = ((64*I)*m2*epsi[k1, p1, p2, q])/sp - 
     ((64*I)*m2*n*epsi[k1, p1, p2, q])/sp - ((32*I)*s*epsi[k1, p1, p2, q])/
      sp + ((16*I)*n*s*epsi[k1, p1, p2, q])/sp - 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp + ((8*I)*n*t1*epsi[k1, p1, p2, q])/
      sp - ((16*I)*u1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apre, Apre, t1, u1][g, Pk1k1] = ((-64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[Apre, Apre, t1, u1][g, Pk1q] = ((128*I)*m2*epsi[k1, p1, p2, q])/sp - 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp - ((32*I)*q2*t1*epsi[k1, p1, p2, q])/
      sp^2 + ((32*I)*t1^2*epsi[k1, p1, p2, q])/sp^2 - 
     ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((32*I)*u1^2*epsi[k1, p1, p2, q])/sp^2
 
BB[Apre, Apre, t1, u1][g, Pqq] = (16*I)*epsi[k1, p1, p2, q] - 
     ((64*I)*m2*epsi[k1, p1, p2, q])/sp - ((16*I)*q2*epsi[k1, p1, p2, q])/
      sp + ((16*I)*s*epsi[k1, p1, p2, q])/sp - ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 + ((24*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/q2 + ((24*I)*u1*epsi[k1, p1, p2, q])/sp - 
     ((16*I)*t1*u1*epsi[k1, p1, p2, q])/(q2*sp)
 
BB[Apre, Apre, u1, t1][F, Peps] = ((-8*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apre, Apre, u1, t1][F, Pg] = -32*m2^2 + 32*m2^2*n + 32*m2*s - 24*m2*n*s - 
     8*s^2 + 4*n*s^2 + 24*m2*t1 - 16*m2*n*t1 - 8*s*t1 + 4*n*s*t1 + 24*m2*u1 - 
     16*m2*n*u1 - 8*s*u1 + 4*n*s*u1 - 48*t1*u1 + 20*n*t1*u1 - 2*n^2*t1*u1
 
BB[Apre, Apre, u1, t1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2 - 
     (16*q2*s*t1*u1)/sp^2
 
BB[Apre, Apre, u1, t1][F, Pk1q] = -64*m2^2 + 48*m2*s - 8*s^2 + 24*m2*t1 - 
     4*s*t1 + (16*m2*q2*t1)/sp - (8*q2*s*t1)/sp - (16*m2*t1^2)/sp - 
     (4*q2*t1^2)/sp + (8*s*t1^2)/sp + (4*t1^3)/sp + 24*m2*u1 - 4*s*u1 + 
     (16*m2*q2*u1)/sp - (8*q2*s*u1)/sp + (8*q2*t1*u1)/sp - (4*t1^2*u1)/sp - 
     (16*m2*u1^2)/sp - (4*q2*u1^2)/sp + (8*s*u1^2)/sp - (4*t1*u1^2)/sp + 
     (4*u1^3)/sp
 
BB[Apre, Apre, u1, t1][F, Pqq] = 32*m2^2 + 8*m2*q2 - 24*m2*s - 4*q2*s + 
     4*s^2 - 8*m2*sp + 4*s*sp - (20*m2*sp^2)/q2 + (4*m2*n*sp^2)/q2 + 
     (4*s*sp^2)/q2 - (n*s*sp^2)/q2 - 24*m2*t1 + 8*s*t1 + 4*sp*t1 - n*sp*t1 + 
     (4*m2*sp*t1)/q2 - (2*s*sp*t1)/q2 - 2*t1^2 - (4*sp*t1^2)/q2 + 
     (n*sp*t1^2)/q2 + (2*t1^3)/q2 - 24*m2*u1 + 8*s*u1 + 4*sp*u1 - n*sp*u1 + 
     (4*m2*sp*u1)/q2 - (2*s*sp*u1)/q2 + 12*t1*u1 - 2*n*t1*u1 + 
     (8*m2*t1*u1)/q2 - (4*s*t1*u1)/q2 - (2*t1^2*u1)/q2 - 2*u1^2 - 
     (4*sp*u1^2)/q2 + (n*sp*u1^2)/q2 - (2*t1*u1^2)/q2 + (2*u1^3)/q2
 
BB[Apre, Apre, u1, t1][g, Peps] = -4*m2*t1 + 2*s*t1 + (2*q2*t1^2)/sp - 
     (2*t1^3)/sp - 4*m2*u1 + 2*s*u1 + (4*q2*t1*u1)/sp + (4*q2*t1^2*u1)/sp^2 - 
     (2*t1^2*u1)/sp + (2*q2*u1^2)/sp + (4*q2*t1*u1^2)/sp^2 - (2*t1*u1^2)/sp - 
     (2*u1^3)/sp
 
BB[Apre, Apre, u1, t1][g, Pg] = ((-64*I)*m2*epsi[k1, p1, p2, q])/sp + 
     ((64*I)*m2*n*epsi[k1, p1, p2, q])/sp + ((32*I)*s*epsi[k1, p1, p2, q])/
      sp - ((16*I)*n*s*epsi[k1, p1, p2, q])/sp + 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp - ((8*I)*n*t1*epsi[k1, p1, p2, q])/
      sp + ((16*I)*u1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apre, Apre, u1, t1][g, Pk1k1] = ((64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[Apre, Apre, u1, t1][g, Pk1q] = ((-128*I)*m2*epsi[k1, p1, p2, q])/sp + 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp + ((32*I)*q2*t1*epsi[k1, p1, p2, q])/
      sp^2 - ((32*I)*t1^2*epsi[k1, p1, p2, q])/sp^2 + 
     ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((32*I)*u1^2*epsi[k1, p1, p2, q])/sp^2
 
BB[Apre, Apre, u1, t1][g, Pqq] = (-16*I)*epsi[k1, p1, p2, q] + 
     ((64*I)*m2*epsi[k1, p1, p2, q])/sp + ((16*I)*q2*epsi[k1, p1, p2, q])/
      sp - ((16*I)*s*epsi[k1, p1, p2, q])/sp + ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 - ((24*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/q2 - ((24*I)*u1*epsi[k1, p1, p2, q])/sp + 
     ((16*I)*t1*u1*epsi[k1, p1, p2, q])/(q2*sp)
 
BB[Apre, Apre, u1, u1][F, Peps] = 0
 
BB[Apre, Apre, u1, u1][F, Pg] = -32*m2^2 + 32*m2^2*n + 16*m2*s - 8*m2*n*s + 
     16*m2*t1 - 8*m2*n*t1 + 8*m2*n*u1 + 8*t1*u1 - 8*n*t1*u1 + 2*n^2*t1*u1
 
BB[Apre, Apre, u1, u1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2
 
BB[Apre, Apre, u1, u1][F, Pk1q] = -64*m2^2 + 16*m2*s + (16*m2*q2*t1)/sp - 
     (16*m2*t1^2)/sp - 16*m2*u1 + (16*m2*q2*u1)/sp - (16*m2*u1^2)/sp
 
BB[Apre, Apre, u1, u1][F, Pqq] = 32*m2^2 + 8*m2*q2 - 8*m2*s - 8*m2*sp - 
     16*m2*t1 - 4*sp*u1 + 2*n*sp*u1 + (8*m2*sp*u1)/q2 - 4*t1*u1 + 2*n*t1*u1 + 
     (8*m2*t1*u1)/q2 + (4*sp*u1^2)/q2 - (2*n*sp*u1^2)/q2
 
BB[Apre, Apre, u1, u1][g, Peps] = -8*m2*t1 + 4*t1*u1 - (8*q2*t1*u1)/sp + 
     (8*t1^2*u1)/sp - (8*q2*t1*u1^2)/sp^2
 
BB[Apre, Apre, u1, u1][g, Pg] = 0
 
BB[Apre, Apre, u1, u1][g, Pk1k1] = 0
 
BB[Apre, Apre, u1, u1][g, Pk1q] = 0
 
BB[Apre, Apre, u1, u1][g, Pqq] = 0
 
BB[Apre, V, t1, t1][F, Peps] = (8*m2*q2*t1)/sp - (8*m2*t1^2)/sp + 8*m2*u1 - 
     (8*m2*q2*u1)/sp + 4*t1*u1 - 2*n*t1*u1 + (8*m2*u1^2)/sp
 
BB[Apre, V, t1, t1][F, Pg] = 0
 
BB[Apre, V, t1, t1][F, Pk1k1] = 0
 
BB[Apre, V, t1, t1][F, Pk1q] = 0
 
BB[Apre, V, t1, t1][F, Pqq] = 0
 
BB[Apre, V, t1, t1][g, Peps] = 0
 
BB[Apre, V, t1, t1][g, Pg] = 48*m2*t1 - 8*m2*n*t1 - 24*s*t1 + 4*n*s*t1 - 
     (24*q2*t1^2)/sp + (4*n*q2*t1^2)/sp + (24*t1^3)/sp - (4*n*t1^3)/sp + 
     48*m2*u1 - 8*m2*n*u1 - 24*t1*u1 + 4*n*t1*u1 + (24*q2*t1*u1)/sp - 
     (4*n*q2*t1*u1)/sp - (24*t1*u1^2)/sp + (4*n*t1*u1^2)/sp
 
BB[Apre, V, t1, t1][g, Pk1k1] = 0
 
BB[Apre, V, t1, t1][g, Pk1q] = -16*m2*t1 + 8*s*t1 + (8*q2*t1^2)/sp - 
     (8*t1^3)/sp + (8*q2*t1*u1)/sp + (16*q2*t1^2*u1)/sp^2 - (8*t1*u1^2)/sp
 
BB[Apre, V, t1, t1][g, Pqq] = 8*m2*sp + 8*m2*t1 + 8*q2*t1 - 4*s*t1 - 
     4*sp*t1 - (8*m2*sp*t1)/q2 - 8*t1^2 + (4*q2*t1^2)/sp + (4*sp*t1^2)/q2 - 
     (4*t1^3)/sp + 8*m2*u1 - 12*t1*u1 + (4*q2*t1*u1)/sp + (8*t1^2*u1)/q2 - 
     (4*t1*u1^2)/sp
 
BB[Apre, V, t1, u1][F, Peps] = -8*m2*t1 + 2*s*t1 + (8*m2*q2*t1)/sp - 
     (4*q2*s*t1)/sp - (8*m2*t1^2)/sp - (2*q2*t1^2)/sp + (4*s*t1^2)/sp + 
     (2*t1^3)/sp - 2*s*u1 - (8*m2*q2*u1)/sp + (4*q2*s*u1)/sp + 8*t1*u1 - 
     2*n*t1*u1 + (2*t1^2*u1)/sp + (8*m2*u1^2)/sp + (2*q2*u1^2)/sp - 
     (4*s*u1^2)/sp - (2*t1*u1^2)/sp - (2*u1^3)/sp
 
BB[Apre, V, t1, u1][F, Pg] = 0
 
BB[Apre, V, t1, u1][F, Pk1k1] = 0
 
BB[Apre, V, t1, u1][F, Pk1q] = ((16*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apre, V, t1, u1][F, Pqq] = ((-16*I)*sp*epsi[k1, p1, p2, q])/q2 + 
     ((4*I)*n*sp*epsi[k1, p1, p2, q])/q2 + ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 - ((8*I)*u1*epsi[k1, p1, p2, q])/q2
 
BB[Apre, V, t1, u1][g, Peps] = ((-16*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 + 
     ((8*I)*t1*epsi[k1, p1, p2, q])/sp + ((16*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 + ((16*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp - ((16*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[Apre, V, t1, u1][g, Pg] = 32*m2*t1 - 8*m2*n*t1 - 4*s*t1 + 2*n*s*t1 - 
     (4*q2*t1^2)/sp + (2*n*q2*t1^2)/sp + (4*t1^3)/sp - (2*n*t1^3)/sp + 
     32*m2*u1 - 8*m2*n*u1 - 12*s*u1 + 2*n*s*u1 - 16*t1*u1 + 4*n*t1*u1 + 
     (16*q2*t1*u1)/sp - (4*n*q2*t1*u1)/sp - (12*t1^2*u1)/sp + 
     (2*n*t1^2*u1)/sp - (12*q2*u1^2)/sp + (2*n*q2*u1^2)/sp - (4*t1*u1^2)/sp + 
     (2*n*t1*u1^2)/sp + (12*u1^3)/sp - (2*n*u1^3)/sp
 
BB[Apre, V, t1, u1][g, Pk1k1] = 0
 
BB[Apre, V, t1, u1][g, Pk1q] = -8*m2*t1 + 8*m2*u1 + (8*q2*t1^2*u1)/sp^2 + 
     (8*t1^2*u1)/sp - (8*q2*t1*u1^2)/sp^2 - (8*t1*u1^2)/sp
 
BB[Apre, V, t1, u1][g, Pqq] = (-4*m2*sp^2)/q2 + 2*s*t1 - (4*m2*sp*t1)/q2 + 
     (2*s*sp*t1)/q2 + 2*t1^2 + (2*q2*t1^2)/sp - (2*t1^3)/q2 - (2*t1^3)/sp - 
     2*s*u1 + (4*m2*sp*u1)/q2 - (2*s*sp*u1)/q2 + (2*t1^2*u1)/q2 + 
     (2*t1^2*u1)/sp - 2*u1^2 - (2*q2*u1^2)/sp - (2*t1*u1^2)/q2 - 
     (2*t1*u1^2)/sp + (2*u1^3)/q2 + (2*u1^3)/sp
 
BB[Apre, V, u1, t1][F, Peps] = 2*s*t1 + (8*m2*q2*t1)/sp - (4*q2*s*t1)/sp - 
     (8*m2*t1^2)/sp - (2*q2*t1^2)/sp + (4*s*t1^2)/sp + (2*t1^3)/sp + 
     8*m2*u1 - 2*s*u1 - (8*m2*q2*u1)/sp + (4*q2*s*u1)/sp - 8*t1*u1 + 
     2*n*t1*u1 + (2*t1^2*u1)/sp + (8*m2*u1^2)/sp + (2*q2*u1^2)/sp - 
     (4*s*u1^2)/sp - (2*t1*u1^2)/sp - (2*u1^3)/sp
 
BB[Apre, V, u1, t1][F, Pg] = 0
 
BB[Apre, V, u1, t1][F, Pk1k1] = 0
 
BB[Apre, V, u1, t1][F, Pk1q] = ((-16*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[Apre, V, u1, t1][F, Pqq] = ((-16*I)*sp*epsi[k1, p1, p2, q])/q2 + 
     ((4*I)*n*sp*epsi[k1, p1, p2, q])/q2 - ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 + ((8*I)*u1*epsi[k1, p1, p2, q])/q2
 
BB[Apre, V, u1, t1][g, Peps] = ((16*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 - 
     ((8*I)*t1*epsi[k1, p1, p2, q])/sp - ((16*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 - ((16*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp + ((16*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[Apre, V, u1, t1][g, Pg] = 32*m2*t1 - 8*m2*n*t1 - 4*s*t1 + 2*n*s*t1 - 
     (4*q2*t1^2)/sp + (2*n*q2*t1^2)/sp + (4*t1^3)/sp - (2*n*t1^3)/sp + 
     32*m2*u1 - 8*m2*n*u1 - 12*s*u1 + 2*n*s*u1 - 16*t1*u1 + 4*n*t1*u1 + 
     (16*q2*t1*u1)/sp - (4*n*q2*t1*u1)/sp - (12*t1^2*u1)/sp + 
     (2*n*t1^2*u1)/sp - (12*q2*u1^2)/sp + (2*n*q2*u1^2)/sp - (4*t1*u1^2)/sp + 
     (2*n*t1*u1^2)/sp + (12*u1^3)/sp - (2*n*u1^3)/sp
 
BB[Apre, V, u1, t1][g, Pk1k1] = 0
 
BB[Apre, V, u1, t1][g, Pk1q] = -8*m2*t1 + 8*m2*u1 + (8*q2*t1^2*u1)/sp^2 + 
     (8*t1^2*u1)/sp - (8*q2*t1*u1^2)/sp^2 - (8*t1*u1^2)/sp
 
BB[Apre, V, u1, t1][g, Pqq] = (4*m2*sp^2)/q2 + 2*s*t1 - (4*m2*sp*t1)/q2 + 
     (2*s*sp*t1)/q2 + 2*t1^2 + (2*q2*t1^2)/sp - (2*t1^3)/q2 - (2*t1^3)/sp - 
     2*s*u1 + (4*m2*sp*u1)/q2 - (2*s*sp*u1)/q2 + (2*t1^2*u1)/q2 + 
     (2*t1^2*u1)/sp - 2*u1^2 - (2*q2*u1^2)/sp - (2*t1*u1^2)/q2 - 
     (2*t1*u1^2)/sp + (2*u1^3)/q2 + (2*u1^3)/sp
 
BB[Apre, V, u1, u1][F, Peps] = -8*m2*t1 + (8*m2*q2*t1)/sp - (8*m2*t1^2)/sp - 
     (8*m2*q2*u1)/sp - 4*t1*u1 + 2*n*t1*u1 + (8*m2*u1^2)/sp
 
BB[Apre, V, u1, u1][F, Pg] = 0
 
BB[Apre, V, u1, u1][F, Pk1k1] = 0
 
BB[Apre, V, u1, u1][F, Pk1q] = 0
 
BB[Apre, V, u1, u1][F, Pqq] = 0
 
BB[Apre, V, u1, u1][g, Peps] = 0
 
BB[Apre, V, u1, u1][g, Pg] = 16*m2*t1 - 8*m2*n*t1 + 16*m2*u1 - 8*m2*n*u1 - 
     8*s*u1 + 4*n*s*u1 - 8*t1*u1 + 4*n*t1*u1 + (8*q2*t1*u1)/sp - 
     (4*n*q2*t1*u1)/sp - (8*t1^2*u1)/sp + (4*n*t1^2*u1)/sp - (8*q2*u1^2)/sp + 
     (4*n*q2*u1^2)/sp + (8*u1^3)/sp - (4*n*u1^3)/sp
 
BB[Apre, V, u1, u1][g, Pk1k1] = 0
 
BB[Apre, V, u1, u1][g, Pk1q] = 16*m2*u1 - 8*s*u1 - (8*q2*t1*u1)/sp + 
     (8*t1^2*u1)/sp - (8*q2*u1^2)/sp - (16*q2*t1*u1^2)/sp^2 + (8*u1^3)/sp
 
BB[Apre, V, u1, u1][g, Pqq] = -8*m2*sp - 8*m2*t1 - 8*m2*u1 - 8*q2*u1 + 
     4*s*u1 + 4*sp*u1 + (8*m2*sp*u1)/q2 + 12*t1*u1 - (4*q2*t1*u1)/sp + 
     (4*t1^2*u1)/sp + 8*u1^2 - (4*q2*u1^2)/sp - (4*sp*u1^2)/q2 - 
     (8*t1*u1^2)/q2 + (4*u1^3)/sp
 
BB[V, Apost, t1, t1][F, Peps] = (-8*m2*q2*t1)/sp + (8*m2*t1^2)/sp - 8*m2*u1 + 
     (8*m2*q2*u1)/sp - 4*t1*u1 + 2*n*t1*u1 - (8*m2*u1^2)/sp
 
BB[V, Apost, t1, t1][F, Pg] = 0
 
BB[V, Apost, t1, t1][F, Pk1k1] = 0
 
BB[V, Apost, t1, t1][F, Pk1q] = 0
 
BB[V, Apost, t1, t1][F, Pqq] = 0
 
BB[V, Apost, t1, t1][g, Peps] = 0
 
BB[V, Apost, t1, t1][g, Pg] = 16*m2*t1 - 8*m2*n*t1 - 8*s*t1 + 4*n*s*t1 - 
     (8*q2*t1^2)/sp + (4*n*q2*t1^2)/sp + (8*t1^3)/sp - (4*n*t1^3)/sp + 
     16*m2*u1 - 8*m2*n*u1 - 8*t1*u1 + 4*n*t1*u1 + (8*q2*t1*u1)/sp - 
     (4*n*q2*t1*u1)/sp - (8*t1*u1^2)/sp + (4*n*t1*u1^2)/sp
 
BB[V, Apost, t1, t1][g, Pk1k1] = 0
 
BB[V, Apost, t1, t1][g, Pk1q] = 16*m2*t1 - 8*s*t1 - (8*q2*t1^2)/sp + 
     (8*t1^3)/sp - (8*q2*t1*u1)/sp - (16*q2*t1^2*u1)/sp^2 + (8*t1*u1^2)/sp
 
BB[V, Apost, t1, t1][g, Pqq] = -8*m2*sp - 8*m2*t1 - 8*q2*t1 + 4*s*t1 + 
     4*sp*t1 + (8*m2*sp*t1)/q2 + 8*t1^2 - (4*q2*t1^2)/sp - (4*sp*t1^2)/q2 + 
     (4*t1^3)/sp - 8*m2*u1 + 12*t1*u1 - (4*q2*t1*u1)/sp - (8*t1^2*u1)/q2 + 
     (4*t1*u1^2)/sp
 
BB[V, Apost, t1, u1][F, Peps] = -2*s*t1 - (8*m2*q2*t1)/sp + (4*q2*s*t1)/sp + 
     (8*m2*t1^2)/sp + (2*q2*t1^2)/sp - (4*s*t1^2)/sp - (2*t1^3)/sp - 
     8*m2*u1 + 2*s*u1 + (8*m2*q2*u1)/sp - (4*q2*s*u1)/sp + 8*t1*u1 - 
     2*n*t1*u1 - (2*t1^2*u1)/sp - (8*m2*u1^2)/sp - (2*q2*u1^2)/sp + 
     (4*s*u1^2)/sp + (2*t1*u1^2)/sp + (2*u1^3)/sp
 
BB[V, Apost, t1, u1][F, Pg] = 0
 
BB[V, Apost, t1, u1][F, Pk1k1] = 0
 
BB[V, Apost, t1, u1][F, Pk1q] = ((-16*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, Apost, t1, u1][F, Pqq] = ((-16*I)*sp*epsi[k1, p1, p2, q])/q2 + 
     ((4*I)*n*sp*epsi[k1, p1, p2, q])/q2 - ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 + ((8*I)*u1*epsi[k1, p1, p2, q])/q2
 
BB[V, Apost, t1, u1][g, Peps] = ((16*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 - 
     ((8*I)*t1*epsi[k1, p1, p2, q])/sp - ((16*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 - ((16*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp + ((16*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[V, Apost, t1, u1][g, Pg] = 32*m2*t1 - 8*m2*n*t1 - 12*s*t1 + 2*n*s*t1 - 
     (12*q2*t1^2)/sp + (2*n*q2*t1^2)/sp + (12*t1^3)/sp - (2*n*t1^3)/sp + 
     32*m2*u1 - 8*m2*n*u1 - 4*s*u1 + 2*n*s*u1 - 16*t1*u1 + 4*n*t1*u1 + 
     (16*q2*t1*u1)/sp - (4*n*q2*t1*u1)/sp - (4*t1^2*u1)/sp + 
     (2*n*t1^2*u1)/sp - (4*q2*u1^2)/sp + (2*n*q2*u1^2)/sp - (12*t1*u1^2)/sp + 
     (2*n*t1*u1^2)/sp + (4*u1^3)/sp - (2*n*u1^3)/sp
 
BB[V, Apost, t1, u1][g, Pk1k1] = 0
 
BB[V, Apost, t1, u1][g, Pk1q] = 8*m2*t1 - 8*m2*u1 - (8*q2*t1^2*u1)/sp^2 - 
     (8*t1^2*u1)/sp + (8*q2*t1*u1^2)/sp^2 + (8*t1*u1^2)/sp
 
BB[V, Apost, t1, u1][g, Pqq] = (-4*m2*sp^2)/q2 - 2*s*t1 + (4*m2*sp*t1)/q2 - 
     (2*s*sp*t1)/q2 - 2*t1^2 - (2*q2*t1^2)/sp + (2*t1^3)/q2 + (2*t1^3)/sp + 
     2*s*u1 - (4*m2*sp*u1)/q2 + (2*s*sp*u1)/q2 - (2*t1^2*u1)/q2 - 
     (2*t1^2*u1)/sp + 2*u1^2 + (2*q2*u1^2)/sp + (2*t1*u1^2)/q2 + 
     (2*t1*u1^2)/sp - (2*u1^3)/q2 - (2*u1^3)/sp
 
BB[V, Apost, u1, t1][F, Peps] = 8*m2*t1 - 2*s*t1 - (8*m2*q2*t1)/sp + 
     (4*q2*s*t1)/sp + (8*m2*t1^2)/sp + (2*q2*t1^2)/sp - (4*s*t1^2)/sp - 
     (2*t1^3)/sp + 2*s*u1 + (8*m2*q2*u1)/sp - (4*q2*s*u1)/sp - 8*t1*u1 + 
     2*n*t1*u1 - (2*t1^2*u1)/sp - (8*m2*u1^2)/sp - (2*q2*u1^2)/sp + 
     (4*s*u1^2)/sp + (2*t1*u1^2)/sp + (2*u1^3)/sp
 
BB[V, Apost, u1, t1][F, Pg] = 0
 
BB[V, Apost, u1, t1][F, Pk1k1] = 0
 
BB[V, Apost, u1, t1][F, Pk1q] = ((16*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, Apost, u1, t1][F, Pqq] = ((-16*I)*sp*epsi[k1, p1, p2, q])/q2 + 
     ((4*I)*n*sp*epsi[k1, p1, p2, q])/q2 + ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 - ((8*I)*u1*epsi[k1, p1, p2, q])/q2
 
BB[V, Apost, u1, t1][g, Peps] = ((-16*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 + 
     ((8*I)*t1*epsi[k1, p1, p2, q])/sp + ((16*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 + ((16*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp - ((16*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[V, Apost, u1, t1][g, Pg] = 32*m2*t1 - 8*m2*n*t1 - 12*s*t1 + 2*n*s*t1 - 
     (12*q2*t1^2)/sp + (2*n*q2*t1^2)/sp + (12*t1^3)/sp - (2*n*t1^3)/sp + 
     32*m2*u1 - 8*m2*n*u1 - 4*s*u1 + 2*n*s*u1 - 16*t1*u1 + 4*n*t1*u1 + 
     (16*q2*t1*u1)/sp - (4*n*q2*t1*u1)/sp - (4*t1^2*u1)/sp + 
     (2*n*t1^2*u1)/sp - (4*q2*u1^2)/sp + (2*n*q2*u1^2)/sp - (12*t1*u1^2)/sp + 
     (2*n*t1*u1^2)/sp + (4*u1^3)/sp - (2*n*u1^3)/sp
 
BB[V, Apost, u1, t1][g, Pk1k1] = 0
 
BB[V, Apost, u1, t1][g, Pk1q] = 8*m2*t1 - 8*m2*u1 - (8*q2*t1^2*u1)/sp^2 - 
     (8*t1^2*u1)/sp + (8*q2*t1*u1^2)/sp^2 + (8*t1*u1^2)/sp
 
BB[V, Apost, u1, t1][g, Pqq] = (4*m2*sp^2)/q2 - 2*s*t1 + (4*m2*sp*t1)/q2 - 
     (2*s*sp*t1)/q2 - 2*t1^2 - (2*q2*t1^2)/sp + (2*t1^3)/q2 + (2*t1^3)/sp + 
     2*s*u1 - (4*m2*sp*u1)/q2 + (2*s*sp*u1)/q2 - (2*t1^2*u1)/q2 - 
     (2*t1^2*u1)/sp + 2*u1^2 + (2*q2*u1^2)/sp + (2*t1*u1^2)/q2 + 
     (2*t1*u1^2)/sp - (2*u1^3)/q2 - (2*u1^3)/sp
 
BB[V, Apost, u1, u1][F, Peps] = 8*m2*t1 - (8*m2*q2*t1)/sp + (8*m2*t1^2)/sp + 
     (8*m2*q2*u1)/sp + 4*t1*u1 - 2*n*t1*u1 - (8*m2*u1^2)/sp
 
BB[V, Apost, u1, u1][F, Pg] = 0
 
BB[V, Apost, u1, u1][F, Pk1k1] = 0
 
BB[V, Apost, u1, u1][F, Pk1q] = 0
 
BB[V, Apost, u1, u1][F, Pqq] = 0
 
BB[V, Apost, u1, u1][g, Peps] = 0
 
BB[V, Apost, u1, u1][g, Pg] = 48*m2*t1 - 8*m2*n*t1 + 48*m2*u1 - 8*m2*n*u1 - 
     24*s*u1 + 4*n*s*u1 - 24*t1*u1 + 4*n*t1*u1 + (24*q2*t1*u1)/sp - 
     (4*n*q2*t1*u1)/sp - (24*t1^2*u1)/sp + (4*n*t1^2*u1)/sp - 
     (24*q2*u1^2)/sp + (4*n*q2*u1^2)/sp + (24*u1^3)/sp - (4*n*u1^3)/sp
 
BB[V, Apost, u1, u1][g, Pk1k1] = 0
 
BB[V, Apost, u1, u1][g, Pk1q] = -16*m2*u1 + 8*s*u1 + (8*q2*t1*u1)/sp - 
     (8*t1^2*u1)/sp + (8*q2*u1^2)/sp + (16*q2*t1*u1^2)/sp^2 - (8*u1^3)/sp
 
BB[V, Apost, u1, u1][g, Pqq] = 8*m2*sp + 8*m2*t1 + 8*m2*u1 + 8*q2*u1 - 
     4*s*u1 - 4*sp*u1 - (8*m2*sp*u1)/q2 - 12*t1*u1 + (4*q2*t1*u1)/sp - 
     (4*t1^2*u1)/sp - 8*u1^2 + (4*q2*u1^2)/sp + (4*sp*u1^2)/q2 + 
     (8*t1*u1^2)/q2 - (4*u1^3)/sp
 
BB[V, Apre, t1, t1][F, Peps] = (8*m2*q2*t1)/sp - (8*m2*t1^2)/sp + 8*m2*u1 - 
     (8*m2*q2*u1)/sp + 4*t1*u1 - 2*n*t1*u1 + (8*m2*u1^2)/sp
 
BB[V, Apre, t1, t1][F, Pg] = 0
 
BB[V, Apre, t1, t1][F, Pk1k1] = 0
 
BB[V, Apre, t1, t1][F, Pk1q] = 0
 
BB[V, Apre, t1, t1][F, Pqq] = 0
 
BB[V, Apre, t1, t1][g, Peps] = 0
 
BB[V, Apre, t1, t1][g, Pg] = 48*m2*t1 - 8*m2*n*t1 - 24*s*t1 + 4*n*s*t1 - 
     (24*q2*t1^2)/sp + (4*n*q2*t1^2)/sp + (24*t1^3)/sp - (4*n*t1^3)/sp + 
     48*m2*u1 - 8*m2*n*u1 - 24*t1*u1 + 4*n*t1*u1 + (24*q2*t1*u1)/sp - 
     (4*n*q2*t1*u1)/sp - (24*t1*u1^2)/sp + (4*n*t1*u1^2)/sp
 
BB[V, Apre, t1, t1][g, Pk1k1] = 0
 
BB[V, Apre, t1, t1][g, Pk1q] = -16*m2*t1 + 8*s*t1 + (8*q2*t1^2)/sp - 
     (8*t1^3)/sp + (8*q2*t1*u1)/sp + (16*q2*t1^2*u1)/sp^2 - (8*t1*u1^2)/sp
 
BB[V, Apre, t1, t1][g, Pqq] = 8*m2*sp + 8*m2*t1 + 8*q2*t1 - 4*s*t1 - 
     4*sp*t1 - (8*m2*sp*t1)/q2 - 8*t1^2 + (4*q2*t1^2)/sp + (4*sp*t1^2)/q2 - 
     (4*t1^3)/sp + 8*m2*u1 - 12*t1*u1 + (4*q2*t1*u1)/sp + (8*t1^2*u1)/q2 - 
     (4*t1*u1^2)/sp
 
BB[V, Apre, t1, u1][F, Peps] = 2*s*t1 + (8*m2*q2*t1)/sp - (4*q2*s*t1)/sp - 
     (8*m2*t1^2)/sp - (2*q2*t1^2)/sp + (4*s*t1^2)/sp + (2*t1^3)/sp + 
     8*m2*u1 - 2*s*u1 - (8*m2*q2*u1)/sp + (4*q2*s*u1)/sp - 8*t1*u1 + 
     2*n*t1*u1 + (2*t1^2*u1)/sp + (8*m2*u1^2)/sp + (2*q2*u1^2)/sp - 
     (4*s*u1^2)/sp - (2*t1*u1^2)/sp - (2*u1^3)/sp
 
BB[V, Apre, t1, u1][F, Pg] = 0
 
BB[V, Apre, t1, u1][F, Pk1k1] = 0
 
BB[V, Apre, t1, u1][F, Pk1q] = ((16*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, Apre, t1, u1][F, Pqq] = ((16*I)*sp*epsi[k1, p1, p2, q])/q2 - 
     ((4*I)*n*sp*epsi[k1, p1, p2, q])/q2 + ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 - ((8*I)*u1*epsi[k1, p1, p2, q])/q2
 
BB[V, Apre, t1, u1][g, Peps] = ((-16*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 + 
     ((8*I)*t1*epsi[k1, p1, p2, q])/sp + ((16*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 + ((16*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp - ((16*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[V, Apre, t1, u1][g, Pg] = 32*m2*t1 - 8*m2*n*t1 - 4*s*t1 + 2*n*s*t1 - 
     (4*q2*t1^2)/sp + (2*n*q2*t1^2)/sp + (4*t1^3)/sp - (2*n*t1^3)/sp + 
     32*m2*u1 - 8*m2*n*u1 - 12*s*u1 + 2*n*s*u1 - 16*t1*u1 + 4*n*t1*u1 + 
     (16*q2*t1*u1)/sp - (4*n*q2*t1*u1)/sp - (12*t1^2*u1)/sp + 
     (2*n*t1^2*u1)/sp - (12*q2*u1^2)/sp + (2*n*q2*u1^2)/sp - (4*t1*u1^2)/sp + 
     (2*n*t1*u1^2)/sp + (12*u1^3)/sp - (2*n*u1^3)/sp
 
BB[V, Apre, t1, u1][g, Pk1k1] = 0
 
BB[V, Apre, t1, u1][g, Pk1q] = -8*m2*t1 + 8*m2*u1 + (8*q2*t1^2*u1)/sp^2 + 
     (8*t1^2*u1)/sp - (8*q2*t1*u1^2)/sp^2 - (8*t1*u1^2)/sp
 
BB[V, Apre, t1, u1][g, Pqq] = (4*m2*sp^2)/q2 + 2*s*t1 - (4*m2*sp*t1)/q2 + 
     (2*s*sp*t1)/q2 + 2*t1^2 + (2*q2*t1^2)/sp - (2*t1^3)/q2 - (2*t1^3)/sp - 
     2*s*u1 + (4*m2*sp*u1)/q2 - (2*s*sp*u1)/q2 + (2*t1^2*u1)/q2 + 
     (2*t1^2*u1)/sp - 2*u1^2 - (2*q2*u1^2)/sp - (2*t1*u1^2)/q2 - 
     (2*t1*u1^2)/sp + (2*u1^3)/q2 + (2*u1^3)/sp
 
BB[V, Apre, u1, t1][F, Peps] = -8*m2*t1 + 2*s*t1 + (8*m2*q2*t1)/sp - 
     (4*q2*s*t1)/sp - (8*m2*t1^2)/sp - (2*q2*t1^2)/sp + (4*s*t1^2)/sp + 
     (2*t1^3)/sp - 2*s*u1 - (8*m2*q2*u1)/sp + (4*q2*s*u1)/sp + 8*t1*u1 - 
     2*n*t1*u1 + (2*t1^2*u1)/sp + (8*m2*u1^2)/sp + (2*q2*u1^2)/sp - 
     (4*s*u1^2)/sp - (2*t1*u1^2)/sp - (2*u1^3)/sp
 
BB[V, Apre, u1, t1][F, Pg] = 0
 
BB[V, Apre, u1, t1][F, Pk1k1] = 0
 
BB[V, Apre, u1, t1][F, Pk1q] = ((-16*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, Apre, u1, t1][F, Pqq] = ((16*I)*sp*epsi[k1, p1, p2, q])/q2 - 
     ((4*I)*n*sp*epsi[k1, p1, p2, q])/q2 - ((8*I)*t1*epsi[k1, p1, p2, q])/
      q2 + ((8*I)*u1*epsi[k1, p1, p2, q])/q2
 
BB[V, Apre, u1, t1][g, Peps] = ((16*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 - 
     ((8*I)*t1*epsi[k1, p1, p2, q])/sp - ((16*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 - ((16*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp + ((16*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[V, Apre, u1, t1][g, Pg] = 32*m2*t1 - 8*m2*n*t1 - 4*s*t1 + 2*n*s*t1 - 
     (4*q2*t1^2)/sp + (2*n*q2*t1^2)/sp + (4*t1^3)/sp - (2*n*t1^3)/sp + 
     32*m2*u1 - 8*m2*n*u1 - 12*s*u1 + 2*n*s*u1 - 16*t1*u1 + 4*n*t1*u1 + 
     (16*q2*t1*u1)/sp - (4*n*q2*t1*u1)/sp - (12*t1^2*u1)/sp + 
     (2*n*t1^2*u1)/sp - (12*q2*u1^2)/sp + (2*n*q2*u1^2)/sp - (4*t1*u1^2)/sp + 
     (2*n*t1*u1^2)/sp + (12*u1^3)/sp - (2*n*u1^3)/sp
 
BB[V, Apre, u1, t1][g, Pk1k1] = 0
 
BB[V, Apre, u1, t1][g, Pk1q] = -8*m2*t1 + 8*m2*u1 + (8*q2*t1^2*u1)/sp^2 + 
     (8*t1^2*u1)/sp - (8*q2*t1*u1^2)/sp^2 - (8*t1*u1^2)/sp
 
BB[V, Apre, u1, t1][g, Pqq] = (-4*m2*sp^2)/q2 + 2*s*t1 - (4*m2*sp*t1)/q2 + 
     (2*s*sp*t1)/q2 + 2*t1^2 + (2*q2*t1^2)/sp - (2*t1^3)/q2 - (2*t1^3)/sp - 
     2*s*u1 + (4*m2*sp*u1)/q2 - (2*s*sp*u1)/q2 + (2*t1^2*u1)/q2 + 
     (2*t1^2*u1)/sp - 2*u1^2 - (2*q2*u1^2)/sp - (2*t1*u1^2)/q2 - 
     (2*t1*u1^2)/sp + (2*u1^3)/q2 + (2*u1^3)/sp
 
BB[V, Apre, u1, u1][F, Peps] = -8*m2*t1 + (8*m2*q2*t1)/sp - (8*m2*t1^2)/sp - 
     (8*m2*q2*u1)/sp - 4*t1*u1 + 2*n*t1*u1 + (8*m2*u1^2)/sp
 
BB[V, Apre, u1, u1][F, Pg] = 0
 
BB[V, Apre, u1, u1][F, Pk1k1] = 0
 
BB[V, Apre, u1, u1][F, Pk1q] = 0
 
BB[V, Apre, u1, u1][F, Pqq] = 0
 
BB[V, Apre, u1, u1][g, Peps] = 0
 
BB[V, Apre, u1, u1][g, Pg] = 16*m2*t1 - 8*m2*n*t1 + 16*m2*u1 - 8*m2*n*u1 - 
     8*s*u1 + 4*n*s*u1 - 8*t1*u1 + 4*n*t1*u1 + (8*q2*t1*u1)/sp - 
     (4*n*q2*t1*u1)/sp - (8*t1^2*u1)/sp + (4*n*t1^2*u1)/sp - (8*q2*u1^2)/sp + 
     (4*n*q2*u1^2)/sp + (8*u1^3)/sp - (4*n*u1^3)/sp
 
BB[V, Apre, u1, u1][g, Pk1k1] = 0
 
BB[V, Apre, u1, u1][g, Pk1q] = 16*m2*u1 - 8*s*u1 - (8*q2*t1*u1)/sp + 
     (8*t1^2*u1)/sp - (8*q2*u1^2)/sp - (16*q2*t1*u1^2)/sp^2 + (8*u1^3)/sp
 
BB[V, Apre, u1, u1][g, Pqq] = -8*m2*sp - 8*m2*t1 - 8*m2*u1 - 8*q2*u1 + 
     4*s*u1 + 4*sp*u1 + (8*m2*sp*u1)/q2 + 12*t1*u1 - (4*q2*t1*u1)/sp + 
     (4*t1^2*u1)/sp + 8*u1^2 - (4*q2*u1^2)/sp - (4*sp*u1^2)/q2 - 
     (8*t1*u1^2)/q2 + (4*u1^3)/sp
 
BB[V, V, t1, t1][F, Peps] = 0
 
BB[V, V, t1, t1][F, Pg] = -32*m2^2 + 16*m2*s - 8*m2*n*s - 8*m2*n*t1 + 
     16*m2*u1 - 8*m2*n*u1 + 8*t1*u1 - 8*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, t1, t1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2
 
BB[V, V, t1, t1][F, Pk1q] = 16*m2*s + 16*m2*t1 + (16*m2*q2*t1)/sp - 
     (16*m2*t1^2)/sp + (16*m2*q2*u1)/sp - (16*m2*u1^2)/sp
 
BB[V, V, t1, t1][F, Pqq] = 8*m2*q2 - 8*m2*s - 8*m2*sp - 16*m2*t1 - 4*sp*t1 + 
     2*n*sp*t1 + (8*m2*sp*t1)/q2 + (4*sp*t1^2)/q2 - (2*n*sp*t1^2)/q2 - 
     16*m2*u1 - 4*t1*u1 + 2*n*t1*u1 + (8*m2*t1*u1)/q2
 
BB[V, V, t1, t1][g, Peps] = -8*m2*u1 + 4*t1*u1 - (8*q2*t1*u1)/sp - 
     (8*q2*t1^2*u1)/sp^2 + (8*t1*u1^2)/sp
 
BB[V, V, t1, t1][g, Pg] = 0
 
BB[V, V, t1, t1][g, Pk1k1] = 0
 
BB[V, V, t1, t1][g, Pk1q] = 0
 
BB[V, V, t1, t1][g, Pqq] = 0
 
BB[V, V, t1, u1][F, Peps] = ((8*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, V, t1, u1][F, Pg] = -32*m2^2 + 32*m2*s - 8*m2*n*s - 8*s^2 + 4*n*s^2 + 
     24*m2*t1 - 8*m2*n*t1 - 8*s*t1 + 4*n*s*t1 + 24*m2*u1 - 8*m2*n*u1 - 
     8*s*u1 + 4*n*s*u1 + 16*t1*u1 - 12*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, t1, u1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2 - (16*q2*s*t1*u1)/sp^2
 
BB[V, V, t1, u1][F, Pk1q] = 16*m2*s - 8*s^2 + 8*m2*t1 - 4*s*t1 + 
     (16*m2*q2*t1)/sp - (8*q2*s*t1)/sp - (16*m2*t1^2)/sp - (4*q2*t1^2)/sp + 
     (8*s*t1^2)/sp + (4*t1^3)/sp + 8*m2*u1 - 4*s*u1 + (16*m2*q2*u1)/sp - 
     (8*q2*s*u1)/sp + (8*q2*t1*u1)/sp - (4*t1^2*u1)/sp - (16*m2*u1^2)/sp - 
     (4*q2*u1^2)/sp + (8*s*u1^2)/sp - (4*t1*u1^2)/sp + (4*u1^3)/sp
 
BB[V, V, t1, u1][F, Pqq] = 8*m2*q2 - 8*m2*s - 4*q2*s + 4*s^2 - 8*m2*sp + 
     4*s*sp + (4*m2*sp^2)/q2 - (4*s*sp^2)/q2 + (n*s*sp^2)/q2 - 16*m2*t1 + 
     8*s*t1 - 4*sp*t1 + n*sp*t1 + (4*m2*sp*t1)/q2 - (2*s*sp*t1)/q2 - 2*t1^2 + 
     (4*sp*t1^2)/q2 - (n*sp*t1^2)/q2 + (2*t1^3)/q2 - 16*m2*u1 + 8*s*u1 - 
     4*sp*u1 + n*sp*u1 + (4*m2*sp*u1)/q2 - (2*s*sp*u1)/q2 - 4*t1*u1 + 
     2*n*t1*u1 + (8*m2*t1*u1)/q2 - (4*s*t1*u1)/q2 - (2*t1^2*u1)/q2 - 2*u1^2 + 
     (4*sp*u1^2)/q2 - (n*sp*u1^2)/q2 - (2*t1*u1^2)/q2 + (2*u1^3)/q2
 
BB[V, V, t1, u1][g, Peps] = -4*m2*t1 + 2*s*t1 + (2*q2*t1^2)/sp - 
     (2*t1^3)/sp - 4*m2*u1 + 2*s*u1 + (4*q2*t1*u1)/sp + (4*q2*t1^2*u1)/sp^2 - 
     (2*t1^2*u1)/sp + (2*q2*u1^2)/sp + (4*q2*t1*u1^2)/sp^2 - (2*t1*u1^2)/sp - 
     (2*u1^3)/sp
 
BB[V, V, t1, u1][g, Pg] = ((64*I)*m2*epsi[k1, p1, p2, q])/sp - 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp + ((16*I)*n*s*epsi[k1, p1, p2, q])/
      sp - ((16*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*n*t1*epsi[k1, p1, p2, q])/sp - ((16*I)*u1*epsi[k1, p1, p2, q])/
      sp + ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, V, t1, u1][g, Pk1k1] = ((-64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[V, V, t1, u1][g, Pk1q] = ((-32*I)*s*epsi[k1, p1, p2, q])/sp - 
     ((32*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 + 
     ((32*I)*t1^2*epsi[k1, p1, p2, q])/sp^2 - 
     ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((32*I)*u1^2*epsi[k1, p1, p2, q])/sp^2
 
BB[V, V, t1, u1][g, Pqq] = (16*I)*epsi[k1, p1, p2, q] - 
     ((16*I)*q2*epsi[k1, p1, p2, q])/sp + ((16*I)*s*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*t1*epsi[k1, p1, p2, q])/q2 + ((24*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/q2 + ((24*I)*u1*epsi[k1, p1, p2, q])/sp - 
     ((16*I)*t1*u1*epsi[k1, p1, p2, q])/(q2*sp)
 
BB[V, V, u1, t1][F, Peps] = ((-8*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, V, u1, t1][F, Pg] = -32*m2^2 + 32*m2*s - 8*m2*n*s - 8*s^2 + 4*n*s^2 + 
     24*m2*t1 - 8*m2*n*t1 - 8*s*t1 + 4*n*s*t1 + 24*m2*u1 - 8*m2*n*u1 - 
     8*s*u1 + 4*n*s*u1 + 16*t1*u1 - 12*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, u1, t1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2 - (16*q2*s*t1*u1)/sp^2
 
BB[V, V, u1, t1][F, Pk1q] = 16*m2*s - 8*s^2 + 8*m2*t1 - 4*s*t1 + 
     (16*m2*q2*t1)/sp - (8*q2*s*t1)/sp - (16*m2*t1^2)/sp - (4*q2*t1^2)/sp + 
     (8*s*t1^2)/sp + (4*t1^3)/sp + 8*m2*u1 - 4*s*u1 + (16*m2*q2*u1)/sp - 
     (8*q2*s*u1)/sp + (8*q2*t1*u1)/sp - (4*t1^2*u1)/sp - (16*m2*u1^2)/sp - 
     (4*q2*u1^2)/sp + (8*s*u1^2)/sp - (4*t1*u1^2)/sp + (4*u1^3)/sp
 
BB[V, V, u1, t1][F, Pqq] = 8*m2*q2 - 8*m2*s - 4*q2*s + 4*s^2 - 8*m2*sp + 
     4*s*sp + (4*m2*sp^2)/q2 - (4*s*sp^2)/q2 + (n*s*sp^2)/q2 - 16*m2*t1 + 
     8*s*t1 - 4*sp*t1 + n*sp*t1 + (4*m2*sp*t1)/q2 - (2*s*sp*t1)/q2 - 2*t1^2 + 
     (4*sp*t1^2)/q2 - (n*sp*t1^2)/q2 + (2*t1^3)/q2 - 16*m2*u1 + 8*s*u1 - 
     4*sp*u1 + n*sp*u1 + (4*m2*sp*u1)/q2 - (2*s*sp*u1)/q2 - 4*t1*u1 + 
     2*n*t1*u1 + (8*m2*t1*u1)/q2 - (4*s*t1*u1)/q2 - (2*t1^2*u1)/q2 - 2*u1^2 + 
     (4*sp*u1^2)/q2 - (n*sp*u1^2)/q2 - (2*t1*u1^2)/q2 + (2*u1^3)/q2
 
BB[V, V, u1, t1][g, Peps] = -4*m2*t1 + 2*s*t1 + (2*q2*t1^2)/sp - 
     (2*t1^3)/sp - 4*m2*u1 + 2*s*u1 + (4*q2*t1*u1)/sp + (4*q2*t1^2*u1)/sp^2 - 
     (2*t1^2*u1)/sp + (2*q2*u1^2)/sp + (4*q2*t1*u1^2)/sp^2 - (2*t1*u1^2)/sp - 
     (2*u1^3)/sp
 
BB[V, V, u1, t1][g, Pg] = ((-64*I)*m2*epsi[k1, p1, p2, q])/sp + 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp - ((16*I)*n*s*epsi[k1, p1, p2, q])/
      sp + ((16*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*n*t1*epsi[k1, p1, p2, q])/sp + ((16*I)*u1*epsi[k1, p1, p2, q])/
      sp - ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, V, u1, t1][g, Pk1k1] = ((64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[V, V, u1, t1][g, Pk1q] = ((32*I)*s*epsi[k1, p1, p2, q])/sp + 
     ((32*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 - 
     ((32*I)*t1^2*epsi[k1, p1, p2, q])/sp^2 + 
     ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((32*I)*u1^2*epsi[k1, p1, p2, q])/sp^2
 
BB[V, V, u1, t1][g, Pqq] = (-16*I)*epsi[k1, p1, p2, q] + 
     ((16*I)*q2*epsi[k1, p1, p2, q])/sp - ((16*I)*s*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*t1*epsi[k1, p1, p2, q])/q2 - ((24*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/q2 - ((24*I)*u1*epsi[k1, p1, p2, q])/sp + 
     ((16*I)*t1*u1*epsi[k1, p1, p2, q])/(q2*sp)
 
BB[V, V, u1, u1][F, Peps] = 0
 
BB[V, V, u1, u1][F, Pg] = -32*m2^2 + 16*m2*s - 8*m2*n*s + 16*m2*t1 - 
     8*m2*n*t1 - 8*m2*n*u1 + 8*t1*u1 - 8*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, u1, u1][F, Pk1k1] = (32*m2*q2*t1*u1)/sp^2
 
BB[V, V, u1, u1][F, Pk1q] = 16*m2*s + (16*m2*q2*t1)/sp - (16*m2*t1^2)/sp + 
     16*m2*u1 + (16*m2*q2*u1)/sp - (16*m2*u1^2)/sp
 
BB[V, V, u1, u1][F, Pqq] = 8*m2*q2 - 8*m2*s - 8*m2*sp - 16*m2*t1 - 16*m2*u1 - 
     4*sp*u1 + 2*n*sp*u1 + (8*m2*sp*u1)/q2 - 4*t1*u1 + 2*n*t1*u1 + 
     (8*m2*t1*u1)/q2 + (4*sp*u1^2)/q2 - (2*n*sp*u1^2)/q2
 
BB[V, V, u1, u1][g, Peps] = -8*m2*t1 + 4*t1*u1 - (8*q2*t1*u1)/sp + 
     (8*t1^2*u1)/sp - (8*q2*t1*u1^2)/sp^2
 
BB[V, V, u1, u1][g, Pg] = 0
 
BB[V, V, u1, u1][g, Pk1k1] = 0
 
BB[V, V, u1, u1][g, Pk1q] = 0
 
BB[V, V, u1, u1][g, Pqq] = 0
