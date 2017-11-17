BB2[V,V,t1,t1][F,Pg] =  - 32*m2^2 + 16*u1*m2 + 8*t1*u1 + 16*s*m2 - 8*n*u1*m2
       - 8*n*t1*m2 - 8*n*t1*u1 - 8*n*s*m2 + 2*n^2*t1*u1;

BB2[V,V,t1,t1][g,Pg] =  0;

BB2[V,V,t1,t1][F,Pk1k1] = 32*sp^-2*t1*u1*q2*m2;

BB2[V,V,t1,t1][g,Pk1k1] =  0;

BB2[V,V,t1,t1][F,Peps] =  0;

BB2[V,V,t1,t1][g,Peps] =  - 24*sp^-2*t1^2*u1*q2 - 24*sp^-1*t1*u1*q2 + 24*sp^-1
      *t1*u1^2 - 24*u1*m2 - 12*t1*u1 + 8*n*sp^-2*t1^2*u1*q2 + 8*n*sp^-1*t1*u1*
      q2 - 8*n*sp^-1*t1*u1^2 + 8*n*u1*m2 + 10*n*t1*u1 - 2*n^2*t1*u1;

BB2[V,V,t1,t1][F,Pqq] = 8*q2*m2 - 16*u1*m2 - 16*t1*m2 + 8*t1*u1*q2^-1*m2 - 4*
      t1*u1 - 8*sp*m2 + 8*sp*t1*q2^-1*m2 - 4*sp*t1 + 4*sp*t1^2*q2^-1 - 8*s*m2
       + 2*n*t1*u1 + 2*n*sp*t1 - 2*n*sp*t1^2*q2^-1;

BB2[V,V,t1,t1][g,Pqq] =  0;

BB2[V,V,t1,t1][F,Pk1q] = 16*sp^-1*u1*q2*m2 - 16*sp^-1*u1^2*m2 + 16*sp^-1*t1*q2
      *m2 - 16*sp^-1*t1^2*m2 + 16*t1*m2 + 16*s*m2;

BB2[V,V,t1,t1][g,Pk1q] =  0;

BB2[V,V,t1,u1][F,Pg] =  - 32*m2^2 + 24*u1*m2 + 24*t1*m2 + 16*t1*u1 + 32*s*m2
       - 8*s*u1 - 8*s*t1 - 8*s^2 - 8*n*u1*m2 - 8*n*t1*m2 - 12*n*t1*u1 - 8*n*s*
      m2 + 4*n*s*u1 + 4*n*s*t1 + 4*n*s^2 + 2*n^2*t1*u1;

BB2[V,V,t1,u1][g,Pg] =  0;

BB2[V,V,t1,u1][F,Pk1k1] = 32*sp^-2*t1*u1*q2*m2 - 16*s*sp^-2*t1*u1*q2;

BB2[V,V,t1,u1][g,Pk1k1] =  0;

BB2[V,V,t1,u1][F,Peps] =  0;

BB2[V,V,t1,u1][g,Peps] = 12*sp^-2*t1*u1^2*q2 + 12*sp^-2*t1^2*u1*q2 + 6*sp^-1*
      u1^2*q2 - 6*sp^-1*u1^3 + 12*sp^-1*t1*u1*q2 - 6*sp^-1*t1*u1^2 + 6*sp^-1*
      t1^2*q2 - 6*sp^-1*t1^2*u1 - 6*sp^-1*t1^3 - 12*u1*m2 - 12*t1*m2 + 6*s*u1
       + 6*s*t1 - 4*n*sp^-2*t1*u1^2*q2 - 4*n*sp^-2*t1^2*u1*q2 - 2*n*sp^-1*u1^2
      *q2 + 2*n*sp^-1*u1^3 - 4*n*sp^-1*t1*u1*q2 + 2*n*sp^-1*t1*u1^2 - 2*n*
      sp^-1*t1^2*q2 + 2*n*sp^-1*t1^2*u1 + 2*n*sp^-1*t1^3 + 4*n*u1*m2 + 4*n*t1*
      m2 - 2*n*s*u1 - 2*n*s*t1;

BB2[V,V,t1,u1][F,Pqq] = 8*q2*m2 - 16*u1*m2 - 2*u1^2 + 2*u1^3*q2^-1 - 16*t1*m2
       + 8*t1*u1*q2^-1*m2 - 4*t1*u1 - 2*t1*u1^2*q2^-1 - 2*t1^2 - 2*t1^2*u1*
      q2^-1 + 2*t1^3*q2^-1 - 8*sp*m2 + 4*sp*u1*q2^-1*m2 - 4*sp*u1 + 4*sp*u1^2*
      q2^-1 + 4*sp*t1*q2^-1*m2 - 4*sp*t1 + 4*sp*t1^2*q2^-1 + 4*sp^2*q2^-1*m2
       - 8*s*m2 - 4*s*q2 + 8*s*u1 + 8*s*t1 - 4*s*t1*u1*q2^-1 + 4*s*sp - 2*s*sp
      *u1*q2^-1 - 2*s*sp*t1*q2^-1 - 4*s*sp^2*q2^-1 + 4*s^2 + 2*n*t1*u1 + n*sp*
      u1 - n*sp*u1^2*q2^-1 + n*sp*t1 - n*sp*t1^2*q2^-1 + n*s*sp^2*q2^-1;

BB2[V,V,t1,u1][g,Pqq] =  0;

BB2[V,V,t1,u1][F,Pk1q] = 16*sp^-1*u1*q2*m2 - 16*sp^-1*u1^2*m2 - 4*sp^-1*u1^2*
      q2 + 4*sp^-1*u1^3 + 16*sp^-1*t1*q2*m2 + 8*sp^-1*t1*u1*q2 - 4*sp^-1*t1*
      u1^2 - 16*sp^-1*t1^2*m2 - 4*sp^-1*t1^2*q2 - 4*sp^-1*t1^2*u1 + 4*sp^-1*
      t1^3 + 8*u1*m2 + 8*t1*m2 - 8*s*sp^-1*u1*q2 + 8*s*sp^-1*u1^2 - 8*s*sp^-1*
      t1*q2 + 8*s*sp^-1*t1^2 + 16*s*m2 - 4*s*u1 - 4*s*t1 - 8*s^2;

BB2[V,V,t1,u1][g,Pk1q] =  0;

BB2[V,V,u1,t1][F,Pg] =  - 32*m2^2 + 24*u1*m2 + 24*t1*m2 + 16*t1*u1 + 32*s*m2
       - 8*s*u1 - 8*s*t1 - 8*s^2 - 8*n*u1*m2 - 8*n*t1*m2 - 12*n*t1*u1 - 8*n*s*
      m2 + 4*n*s*u1 + 4*n*s*t1 + 4*n*s^2 + 2*n^2*t1*u1;

BB2[V,V,u1,t1][g,Pg] =  0;

BB2[V,V,u1,t1][F,Pk1k1] = 32*sp^-2*t1*u1*q2*m2 - 16*s*sp^-2*t1*u1*q2;

BB2[V,V,u1,t1][g,Pk1k1] =  0;

BB2[V,V,u1,t1][F,Peps] =  0;

BB2[V,V,u1,t1][g,Peps] = 12*sp^-2*t1*u1^2*q2 + 12*sp^-2*t1^2*u1*q2 + 6*sp^-1*
      u1^2*q2 - 6*sp^-1*u1^3 + 12*sp^-1*t1*u1*q2 - 6*sp^-1*t1*u1^2 + 6*sp^-1*
      t1^2*q2 - 6*sp^-1*t1^2*u1 - 6*sp^-1*t1^3 - 12*u1*m2 - 12*t1*m2 + 6*s*u1
       + 6*s*t1 - 4*n*sp^-2*t1*u1^2*q2 - 4*n*sp^-2*t1^2*u1*q2 - 2*n*sp^-1*u1^2
      *q2 + 2*n*sp^-1*u1^3 - 4*n*sp^-1*t1*u1*q2 + 2*n*sp^-1*t1*u1^2 - 2*n*
      sp^-1*t1^2*q2 + 2*n*sp^-1*t1^2*u1 + 2*n*sp^-1*t1^3 + 4*n*u1*m2 + 4*n*t1*
      m2 - 2*n*s*u1 - 2*n*s*t1;

BB2[V,V,u1,t1][F,Pqq] = 8*q2*m2 - 16*u1*m2 - 2*u1^2 + 2*u1^3*q2^-1 - 16*t1*m2
       + 8*t1*u1*q2^-1*m2 - 4*t1*u1 - 2*t1*u1^2*q2^-1 - 2*t1^2 - 2*t1^2*u1*
      q2^-1 + 2*t1^3*q2^-1 - 8*sp*m2 + 4*sp*u1*q2^-1*m2 - 4*sp*u1 + 4*sp*u1^2*
      q2^-1 + 4*sp*t1*q2^-1*m2 - 4*sp*t1 + 4*sp*t1^2*q2^-1 + 4*sp^2*q2^-1*m2
       - 8*s*m2 - 4*s*q2 + 8*s*u1 + 8*s*t1 - 4*s*t1*u1*q2^-1 + 4*s*sp - 2*s*sp
      *u1*q2^-1 - 2*s*sp*t1*q2^-1 - 4*s*sp^2*q2^-1 + 4*s^2 + 2*n*t1*u1 + n*sp*
      u1 - n*sp*u1^2*q2^-1 + n*sp*t1 - n*sp*t1^2*q2^-1 + n*s*sp^2*q2^-1;

BB2[V,V,u1,t1][g,Pqq] =  0;

BB2[V,V,u1,t1][F,Pk1q] = 16*sp^-1*u1*q2*m2 - 16*sp^-1*u1^2*m2 - 4*sp^-1*u1^2*
      q2 + 4*sp^-1*u1^3 + 16*sp^-1*t1*q2*m2 + 8*sp^-1*t1*u1*q2 - 4*sp^-1*t1*
      u1^2 - 16*sp^-1*t1^2*m2 - 4*sp^-1*t1^2*q2 - 4*sp^-1*t1^2*u1 + 4*sp^-1*
      t1^3 + 8*u1*m2 + 8*t1*m2 - 8*s*sp^-1*u1*q2 + 8*s*sp^-1*u1^2 - 8*s*sp^-1*
      t1*q2 + 8*s*sp^-1*t1^2 + 16*s*m2 - 4*s*u1 - 4*s*t1 - 8*s^2;

BB2[V,V,u1,t1][g,Pk1q] =  0;

BB2[V,V,u1,u1][F,Pg] =  - 32*m2^2 + 16*t1*m2 + 8*t1*u1 + 16*s*m2 - 8*n*u1*m2
       - 8*n*t1*m2 - 8*n*t1*u1 - 8*n*s*m2 + 2*n^2*t1*u1;

BB2[V,V,u1,u1][g,Pg] =  0;

BB2[V,V,u1,u1][F,Pk1k1] = 32*sp^-2*t1*u1*q2*m2;

BB2[V,V,u1,u1][g,Pk1k1] =  0;

BB2[V,V,u1,u1][F,Peps] =  0;

BB2[V,V,u1,u1][g,Peps] =  - 24*sp^-2*t1*u1^2*q2 - 24*sp^-1*t1*u1*q2 + 24*sp^-1
      *t1^2*u1 - 24*t1*m2 - 12*t1*u1 + 8*n*sp^-2*t1*u1^2*q2 + 8*n*sp^-1*t1*u1*
      q2 - 8*n*sp^-1*t1^2*u1 + 8*n*t1*m2 + 10*n*t1*u1 - 2*n^2*t1*u1;

BB2[V,V,u1,u1][F,Pqq] = 8*q2*m2 - 16*u1*m2 - 16*t1*m2 + 8*t1*u1*q2^-1*m2 - 4*
      t1*u1 - 8*sp*m2 + 8*sp*u1*q2^-1*m2 - 4*sp*u1 + 4*sp*u1^2*q2^-1 - 8*s*m2
       + 2*n*t1*u1 + 2*n*sp*u1 - 2*n*sp*u1^2*q2^-1;

BB2[V,V,u1,u1][g,Pqq] =  0;

BB2[V,V,u1,u1][F,Pk1q] = 16*sp^-1*u1*q2*m2 - 16*sp^-1*u1^2*m2 + 16*sp^-1*t1*q2
      *m2 - 16*sp^-1*t1^2*m2 + 16*u1*m2 + 16*s*m2;

BB2[V,V,u1,u1][g,Pk1q] =  0;

