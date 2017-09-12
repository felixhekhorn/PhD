BB[A, A, t1, t1][GG] = -512*m2^2 - 256*m2*t1
 
BB[A, A, t1, t1][L] = 0
 
BB[A, A, t1, t1][P] = 0
 
BB[A, A, t1, u1][GG] = -512*m2^2 + 256*m2*s + 128*m2*t1 + 128*m2*u1 - 
     128*t1*u1 + 32*n*t1*u1
 
BB[A, A, t1, u1][L] = 0
 
BB[A, A, t1, u1][P] = 0
 
BB[A, A, u1, t1][GG] = -512*m2^2 + 256*m2*s + 128*m2*t1 + 128*m2*u1 - 
     128*t1*u1 + 32*n*t1*u1
 
BB[A, A, u1, t1][L] = 0
 
BB[A, A, u1, t1][P] = 0
 
BB[A, A, u1, u1][GG] = -512*m2^2 - 256*m2*u1
 
BB[A, A, u1, u1][L] = 0
 
BB[A, A, u1, u1][P] = 0
 
BB[A, V, t1, t1][GG] = -64*m2^2 - 32*m2*s - 64*m2*t1 - 32*m2*u1 - 16*t1*u1 + 
     8*n*t1*u1
 
BB[A, V, t1, t1][L] = (64*m2*q2*t1*u1)/sp^2
 
BB[A, V, t1, t1][P] = -16*m2*u1 + 8*t1*u1 - (16*q2*t1*u1)/sp - 
     (16*q2*t1^2*u1)/sp^2 + (16*t1*u1^2)/sp
 
BB[A, V, t1, u1][GG] = -64*m2^2 + 16*s^2 - 16*m2*t1 + 16*s*t1 - 16*m2*u1 + 
     16*s*u1 - 32*t1*u1 + 8*n*t1*u1
 
BB[A, V, t1, u1][L] = (64*m2*q2*t1*u1)/sp^2 - (32*q2*s*t1*u1)/sp^2
 
BB[A, V, t1, u1][P] = -8*m2*t1 + 4*s*t1 - ((32*I)*epsi*q2*t1)/sp^2 + 
     ((16*I)*epsi*t1)/sp + ((32*I)*epsi*t1^2)/sp^2 + (4*q2*t1^2)/sp - 
     (4*t1^3)/sp - 8*m2*u1 + 4*s*u1 + ((32*I)*epsi*q2*u1)/sp^2 - 
     ((16*I)*epsi*u1)/sp + (8*q2*t1*u1)/sp + (8*q2*t1^2*u1)/sp^2 - 
     (4*t1^2*u1)/sp - ((32*I)*epsi*u1^2)/sp^2 + (4*q2*u1^2)/sp + 
     (8*q2*t1*u1^2)/sp^2 - (4*t1*u1^2)/sp - (4*u1^3)/sp
 
BB[A, V, u1, t1][GG] = -64*m2^2 + 16*s^2 - 16*m2*t1 + 16*s*t1 - 16*m2*u1 + 
     16*s*u1 - 32*t1*u1 + 8*n*t1*u1
 
BB[A, V, u1, t1][L] = (64*m2*q2*t1*u1)/sp^2 - (32*q2*s*t1*u1)/sp^2
 
BB[A, V, u1, t1][P] = -8*m2*t1 + 4*s*t1 + ((32*I)*epsi*q2*t1)/sp^2 - 
     ((16*I)*epsi*t1)/sp - ((32*I)*epsi*t1^2)/sp^2 + (4*q2*t1^2)/sp - 
     (4*t1^3)/sp - 8*m2*u1 + 4*s*u1 - ((32*I)*epsi*q2*u1)/sp^2 + 
     ((16*I)*epsi*u1)/sp + (8*q2*t1*u1)/sp + (8*q2*t1^2*u1)/sp^2 - 
     (4*t1^2*u1)/sp + ((32*I)*epsi*u1^2)/sp^2 + (4*q2*u1^2)/sp + 
     (8*q2*t1*u1^2)/sp^2 - (4*t1*u1^2)/sp - (4*u1^3)/sp
 
BB[A, V, u1, u1][GG] = -64*m2^2 - 32*m2*s - 32*m2*t1 - 64*m2*u1 - 16*t1*u1 + 
     8*n*t1*u1
 
BB[A, V, u1, u1][L] = (64*m2*q2*t1*u1)/sp^2
 
BB[A, V, u1, u1][P] = -16*m2*t1 + 8*t1*u1 - (16*q2*t1*u1)/sp + 
     (16*t1^2*u1)/sp - (16*q2*t1*u1^2)/sp^2
 
BB[V, A, t1, t1][GG] = -64*m2^2 - 32*m2*s - 64*m2*t1 - 32*m2*u1 - 16*t1*u1 + 
     8*n*t1*u1
 
BB[V, A, t1, t1][L] = (64*m2*q2*t1*u1)/sp^2
 
BB[V, A, t1, t1][P] = -16*m2*u1 + 8*t1*u1 - (16*q2*t1*u1)/sp - 
     (16*q2*t1^2*u1)/sp^2 + (16*t1*u1^2)/sp
 
BB[V, A, t1, u1][GG] = -64*m2^2 + 16*s^2 - 16*m2*t1 + 16*s*t1 - 16*m2*u1 + 
     16*s*u1 - 32*t1*u1 + 8*n*t1*u1
 
BB[V, A, t1, u1][L] = (64*m2*q2*t1*u1)/sp^2 - (32*q2*s*t1*u1)/sp^2
 
BB[V, A, t1, u1][P] = -8*m2*t1 + 4*s*t1 + ((32*I)*epsi*q2*t1)/sp^2 - 
     ((16*I)*epsi*t1)/sp - ((32*I)*epsi*t1^2)/sp^2 + (4*q2*t1^2)/sp - 
     (4*t1^3)/sp - 8*m2*u1 + 4*s*u1 - ((32*I)*epsi*q2*u1)/sp^2 + 
     ((16*I)*epsi*u1)/sp + (8*q2*t1*u1)/sp + (8*q2*t1^2*u1)/sp^2 - 
     (4*t1^2*u1)/sp + ((32*I)*epsi*u1^2)/sp^2 + (4*q2*u1^2)/sp + 
     (8*q2*t1*u1^2)/sp^2 - (4*t1*u1^2)/sp - (4*u1^3)/sp
 
BB[V, A, u1, t1][GG] = -64*m2^2 + 16*s^2 - 16*m2*t1 + 16*s*t1 - 16*m2*u1 + 
     16*s*u1 - 32*t1*u1 + 8*n*t1*u1
 
BB[V, A, u1, t1][L] = (64*m2*q2*t1*u1)/sp^2 - (32*q2*s*t1*u1)/sp^2
 
BB[V, A, u1, t1][P] = -8*m2*t1 + 4*s*t1 - ((32*I)*epsi*q2*t1)/sp^2 + 
     ((16*I)*epsi*t1)/sp + ((32*I)*epsi*t1^2)/sp^2 + (4*q2*t1^2)/sp - 
     (4*t1^3)/sp - 8*m2*u1 + 4*s*u1 + ((32*I)*epsi*q2*u1)/sp^2 - 
     ((16*I)*epsi*u1)/sp + (8*q2*t1*u1)/sp + (8*q2*t1^2*u1)/sp^2 - 
     (4*t1^2*u1)/sp - ((32*I)*epsi*u1^2)/sp^2 + (4*q2*u1^2)/sp + 
     (8*q2*t1*u1^2)/sp^2 - (4*t1*u1^2)/sp - (4*u1^3)/sp
 
BB[V, A, u1, u1][GG] = -64*m2^2 - 32*m2*s - 32*m2*t1 - 64*m2*u1 - 16*t1*u1 + 
     8*n*t1*u1
 
BB[V, A, u1, u1][L] = (64*m2*q2*t1*u1)/sp^2
 
BB[V, A, u1, u1][P] = -16*m2*t1 + 8*t1*u1 - (16*q2*t1*u1)/sp + 
     (16*t1^2*u1)/sp - (16*q2*t1*u1^2)/sp^2
 
BB[V, V, t1, t1][GG] = -32*m2^2 + 16*m2*s - 8*m2*n*s - 8*m2*n*t1 + 16*m2*u1 - 
     8*m2*n*u1 + 8*t1*u1 - 8*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, t1, t1][L] = (32*m2*q2*t1*u1)/sp^2
 
BB[V, V, t1, t1][P] = -8*m2*u1 + 4*t1*u1 - (8*q2*t1*u1)/sp - 
     (8*q2*t1^2*u1)/sp^2 + (8*t1*u1^2)/sp
 
BB[V, V, t1, u1][GG] = -32*m2^2 + 32*m2*s - 8*m2*n*s - 8*s^2 + 4*n*s^2 + 
     24*m2*t1 - 8*m2*n*t1 - 8*s*t1 + 4*n*s*t1 + 24*m2*u1 - 8*m2*n*u1 - 
     8*s*u1 + 4*n*s*u1 + 16*t1*u1 - 12*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, t1, u1][L] = (32*m2*q2*t1*u1)/sp^2 - (16*q2*s*t1*u1)/sp^2
 
BB[V, V, t1, u1][P] = -4*m2*t1 + 2*s*t1 + (2*q2*t1^2)/sp - (2*t1^3)/sp - 
     4*m2*u1 + 2*s*u1 + (4*q2*t1*u1)/sp + (4*q2*t1^2*u1)/sp^2 - 
     (2*t1^2*u1)/sp + (2*q2*u1^2)/sp + (4*q2*t1*u1^2)/sp^2 - (2*t1*u1^2)/sp - 
     (2*u1^3)/sp
 
BB[V, V, u1, t1][GG] = -32*m2^2 + 32*m2*s - 8*m2*n*s - 8*s^2 + 4*n*s^2 + 
     24*m2*t1 - 8*m2*n*t1 - 8*s*t1 + 4*n*s*t1 + 24*m2*u1 - 8*m2*n*u1 - 
     8*s*u1 + 4*n*s*u1 + 16*t1*u1 - 12*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, u1, t1][L] = (32*m2*q2*t1*u1)/sp^2 - (16*q2*s*t1*u1)/sp^2
 
BB[V, V, u1, t1][P] = -4*m2*t1 + 2*s*t1 + (2*q2*t1^2)/sp - (2*t1^3)/sp - 
     4*m2*u1 + 2*s*u1 + (4*q2*t1*u1)/sp + (4*q2*t1^2*u1)/sp^2 - 
     (2*t1^2*u1)/sp + (2*q2*u1^2)/sp + (4*q2*t1*u1^2)/sp^2 - (2*t1*u1^2)/sp - 
     (2*u1^3)/sp
 
BB[V, V, u1, u1][GG] = -32*m2^2 + 16*m2*s - 8*m2*n*s + 16*m2*t1 - 8*m2*n*t1 - 
     8*m2*n*u1 + 8*t1*u1 - 8*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, u1, u1][L] = (32*m2*q2*t1*u1)/sp^2
 
BB[V, V, u1, u1][P] = -8*m2*t1 + 4*t1*u1 - (8*q2*t1*u1)/sp + (8*t1^2*u1)/sp - 
     (8*q2*t1*u1^2)/sp^2
