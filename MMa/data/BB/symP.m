BB[A, A, t1, t1][FG] = 256*m2^2 - 128*m2*s - 128*m2*u1 - 64*t1*u1 + 32*n*t1*u1
 
BB[A, A, t1, t1][FL] = (256*m2*q2*t1*u1)/sp^2
 
BB[A, A, t1, t1][gG] = 128*m2*t1 - 64*s*t1 - (64*q2*t1^2)/sp + (64*t1^3)/sp + 
     128*m2*u1 - 64*t1*u1 + (64*q2*t1*u1)/sp - (64*t1*u1^2)/sp
 
BB[A, A, t1, t1][gL] = 0
 
BB[A, A, t1, t1][x2g1] = -64*m2*u1 + 32*t1*u1 - (64*q2*t1*u1)/sp - 
     (64*q2*t1^2*u1)/sp^2 + (64*t1*u1^2)/sp
 
BB[A, A, t1, t1][xF3] = (-64*m2*q2*t1)/sp + (64*m2*t1^2)/sp - 64*m2*u1 + 
     (64*m2*q2*u1)/sp - 32*t1*u1 + 16*n*t1*u1 - (64*m2*u1^2)/sp
 
BB[A, A, t1, u1][FG] = 256*m2^2 - 256*m2*s + 64*s^2 - 192*m2*t1 + 64*s*t1 - 
     192*m2*u1 + 64*s*u1
 
BB[A, A, t1, u1][FL] = (256*m2*q2*t1*u1)/sp^2 - (128*q2*s*t1*u1)/sp^2
 
BB[A, A, t1, u1][gG] = 32*s*t1 + (32*q2*t1^2)/sp - (32*t1^3)/sp - 32*s*u1 - 
     (32*t1^2*u1)/sp - (32*q2*u1^2)/sp + (32*t1*u1^2)/sp + (32*u1^3)/sp + 
     ((512*I)*m2*epsi[k1, p1, p2, q])/sp - ((256*I)*s*epsi[k1, p1, p2, q])/
      sp - ((128*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((128*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[A, A, t1, u1][gL] = ((512*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[A, A, t1, u1][x2g1] = -32*m2*t1 + 16*s*t1 + (16*q2*t1^2)/sp - 
     (16*t1^3)/sp - 32*m2*u1 + 16*s*u1 + (32*q2*t1*u1)/sp + 
     (32*q2*t1^2*u1)/sp^2 - (16*t1^2*u1)/sp + (16*q2*u1^2)/sp + 
     (32*q2*t1*u1^2)/sp^2 - (16*t1*u1^2)/sp - (16*u1^3)/sp + 
     ((128*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 - 
     ((64*I)*t1*epsi[k1, p1, p2, q])/sp - ((128*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 - ((128*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((64*I)*u1*epsi[k1, p1, p2, q])/sp + ((128*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[A, A, t1, u1][xF3] = 32*m2*t1 - 16*s*t1 - (64*m2*q2*t1)/sp + 
     (32*q2*s*t1)/sp + (64*m2*t1^2)/sp + (16*q2*t1^2)/sp - (32*s*t1^2)/sp - 
     (16*t1^3)/sp - 32*m2*u1 + 16*s*u1 + (64*m2*q2*u1)/sp - (32*q2*s*u1)/sp - 
     (16*t1^2*u1)/sp - (64*m2*u1^2)/sp - (16*q2*u1^2)/sp + (32*s*u1^2)/sp + 
     (16*t1*u1^2)/sp + (16*u1^3)/sp + ((64*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((64*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[A, A, u1, t1][FG] = 256*m2^2 - 256*m2*s + 64*s^2 - 192*m2*t1 + 64*s*t1 - 
     192*m2*u1 + 64*s*u1
 
BB[A, A, u1, t1][FL] = (256*m2*q2*t1*u1)/sp^2 - (128*q2*s*t1*u1)/sp^2
 
BB[A, A, u1, t1][gG] = 32*s*t1 + (32*q2*t1^2)/sp - (32*t1^3)/sp - 32*s*u1 - 
     (32*t1^2*u1)/sp - (32*q2*u1^2)/sp + (32*t1*u1^2)/sp + (32*u1^3)/sp - 
     ((512*I)*m2*epsi[k1, p1, p2, q])/sp + ((256*I)*s*epsi[k1, p1, p2, q])/
      sp + ((128*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((128*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[A, A, u1, t1][gL] = ((-512*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[A, A, u1, t1][x2g1] = -32*m2*t1 + 16*s*t1 + (16*q2*t1^2)/sp - 
     (16*t1^3)/sp - 32*m2*u1 + 16*s*u1 + (32*q2*t1*u1)/sp + 
     (32*q2*t1^2*u1)/sp^2 - (16*t1^2*u1)/sp + (16*q2*u1^2)/sp + 
     (32*q2*t1*u1^2)/sp^2 - (16*t1*u1^2)/sp - (16*u1^3)/sp - 
     ((128*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 + 
     ((64*I)*t1*epsi[k1, p1, p2, q])/sp + ((128*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 + ((128*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((64*I)*u1*epsi[k1, p1, p2, q])/sp - ((128*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[A, A, u1, t1][xF3] = 32*m2*t1 - 16*s*t1 - (64*m2*q2*t1)/sp + 
     (32*q2*s*t1)/sp + (64*m2*t1^2)/sp + (16*q2*t1^2)/sp - (32*s*t1^2)/sp - 
     (16*t1^3)/sp - 32*m2*u1 + 16*s*u1 + (64*m2*q2*u1)/sp - (32*q2*s*u1)/sp - 
     (16*t1^2*u1)/sp - (64*m2*u1^2)/sp - (16*q2*u1^2)/sp + (32*s*u1^2)/sp + 
     (16*t1*u1^2)/sp + (16*u1^3)/sp - ((64*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((64*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[A, A, u1, u1][FG] = 256*m2^2 - 128*m2*s - 128*m2*t1 - 64*t1*u1 + 32*n*t1*u1
 
BB[A, A, u1, u1][FL] = (256*m2*q2*t1*u1)/sp^2
 
BB[A, A, u1, u1][gG] = -128*m2*t1 - 128*m2*u1 + 64*s*u1 + 64*t1*u1 - 
     (64*q2*t1*u1)/sp + (64*t1^2*u1)/sp + (64*q2*u1^2)/sp - (64*u1^3)/sp
 
BB[A, A, u1, u1][gL] = 0
 
BB[A, A, u1, u1][x2g1] = -64*m2*t1 + 32*t1*u1 - (64*q2*t1*u1)/sp + 
     (64*t1^2*u1)/sp - (64*q2*t1*u1^2)/sp^2
 
BB[A, A, u1, u1][xF3] = 64*m2*t1 - (64*m2*q2*t1)/sp + (64*m2*t1^2)/sp + 
     (64*m2*q2*u1)/sp + 32*t1*u1 - 16*n*t1*u1 - (64*m2*u1^2)/sp
 
BB[A, V, t1, t1][FG] = -64*m2^2 - 32*m2*s - 64*m2*t1 - 32*m2*u1 - 16*t1*u1 + 
     8*n*t1*u1
 
BB[A, V, t1, t1][FL] = (64*m2*q2*t1*u1)/sp^2
 
BB[A, V, t1, t1][gG] = 32*m2*t1 - 16*s*t1 - (16*q2*t1^2)/sp + (16*t1^3)/sp + 
     32*m2*u1 - 16*t1*u1 + (16*q2*t1*u1)/sp - (16*t1*u1^2)/sp
 
BB[A, V, t1, t1][gL] = 0
 
BB[A, V, t1, t1][x2g1] = -16*m2*u1 + 8*t1*u1 - (16*q2*t1*u1)/sp - 
     (16*q2*t1^2*u1)/sp^2 + (16*t1*u1^2)/sp
 
BB[A, V, t1, t1][xF3] = (-16*m2*q2*t1)/sp + (16*m2*t1^2)/sp - 16*m2*u1 + 
     (16*m2*q2*u1)/sp - 8*t1*u1 + 4*n*t1*u1 - (16*m2*u1^2)/sp
 
BB[A, V, t1, u1][FG] = -64*m2^2 + 16*s^2 - 16*m2*t1 + 16*s*t1 - 16*m2*u1 + 
     16*s*u1 - 32*t1*u1 + 8*n*t1*u1
 
BB[A, V, t1, u1][FL] = (64*m2*q2*t1*u1)/sp^2 - (32*q2*s*t1*u1)/sp^2
 
BB[A, V, t1, u1][gG] = 8*s*t1 + (8*q2*t1^2)/sp - (8*t1^3)/sp - 8*s*u1 - 
     (8*t1^2*u1)/sp - (8*q2*u1^2)/sp + (8*t1*u1^2)/sp + (8*u1^3)/sp - 
     ((128*I)*m2*epsi[k1, p1, p2, q])/sp - ((64*I)*s*epsi[k1, p1, p2, q])/
      sp - ((32*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((32*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[A, V, t1, u1][gL] = ((128*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[A, V, t1, u1][x2g1] = -8*m2*t1 + 4*s*t1 + (4*q2*t1^2)/sp - (4*t1^3)/sp - 
     8*m2*u1 + 4*s*u1 + (8*q2*t1*u1)/sp + (8*q2*t1^2*u1)/sp^2 - 
     (4*t1^2*u1)/sp + (4*q2*u1^2)/sp + (8*q2*t1*u1^2)/sp^2 - (4*t1*u1^2)/sp - 
     (4*u1^3)/sp + ((32*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 - 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp - ((32*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 - ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp + ((32*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[A, V, t1, u1][xF3] = 16*m2*t1 - 4*s*t1 - (16*m2*q2*t1)/sp + 
     (8*q2*s*t1)/sp + (16*m2*t1^2)/sp + (4*q2*t1^2)/sp - (8*s*t1^2)/sp - 
     (4*t1^3)/sp + 4*s*u1 + (16*m2*q2*u1)/sp - (8*q2*s*u1)/sp - 16*t1*u1 + 
     4*n*t1*u1 - (4*t1^2*u1)/sp - (16*m2*u1^2)/sp - (4*q2*u1^2)/sp + 
     (8*s*u1^2)/sp + (4*t1*u1^2)/sp + (4*u1^3)/sp + 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp + ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[A, V, u1, t1][FG] = -64*m2^2 + 16*s^2 - 16*m2*t1 + 16*s*t1 - 16*m2*u1 + 
     16*s*u1 - 32*t1*u1 + 8*n*t1*u1
 
BB[A, V, u1, t1][FL] = (64*m2*q2*t1*u1)/sp^2 - (32*q2*s*t1*u1)/sp^2
 
BB[A, V, u1, t1][gG] = 8*s*t1 + (8*q2*t1^2)/sp - (8*t1^3)/sp - 8*s*u1 - 
     (8*t1^2*u1)/sp - (8*q2*u1^2)/sp + (8*t1*u1^2)/sp + (8*u1^3)/sp + 
     ((128*I)*m2*epsi[k1, p1, p2, q])/sp + ((64*I)*s*epsi[k1, p1, p2, q])/
      sp + ((32*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((32*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[A, V, u1, t1][gL] = ((-128*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[A, V, u1, t1][x2g1] = -8*m2*t1 + 4*s*t1 + (4*q2*t1^2)/sp - (4*t1^3)/sp - 
     8*m2*u1 + 4*s*u1 + (8*q2*t1*u1)/sp + (8*q2*t1^2*u1)/sp^2 - 
     (4*t1^2*u1)/sp + (4*q2*u1^2)/sp + (8*q2*t1*u1^2)/sp^2 - (4*t1*u1^2)/sp - 
     (4*u1^3)/sp - ((32*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 + 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp + ((32*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 + ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp - ((32*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[A, V, u1, t1][xF3] = -4*s*t1 - (16*m2*q2*t1)/sp + (8*q2*s*t1)/sp + 
     (16*m2*t1^2)/sp + (4*q2*t1^2)/sp - (8*s*t1^2)/sp - (4*t1^3)/sp - 
     16*m2*u1 + 4*s*u1 + (16*m2*q2*u1)/sp - (8*q2*s*u1)/sp + 16*t1*u1 - 
     4*n*t1*u1 - (4*t1^2*u1)/sp - (16*m2*u1^2)/sp - (4*q2*u1^2)/sp + 
     (8*s*u1^2)/sp + (4*t1*u1^2)/sp + (4*u1^3)/sp - 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp - ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[A, V, u1, u1][FG] = -64*m2^2 - 32*m2*s - 32*m2*t1 - 64*m2*u1 - 16*t1*u1 + 
     8*n*t1*u1
 
BB[A, V, u1, u1][FL] = (64*m2*q2*t1*u1)/sp^2
 
BB[A, V, u1, u1][gG] = -32*m2*t1 - 32*m2*u1 + 16*s*u1 + 16*t1*u1 - 
     (16*q2*t1*u1)/sp + (16*t1^2*u1)/sp + (16*q2*u1^2)/sp - (16*u1^3)/sp
 
BB[A, V, u1, u1][gL] = 0
 
BB[A, V, u1, u1][x2g1] = -16*m2*t1 + 8*t1*u1 - (16*q2*t1*u1)/sp + 
     (16*t1^2*u1)/sp - (16*q2*t1*u1^2)/sp^2
 
BB[A, V, u1, u1][xF3] = 16*m2*t1 - (16*m2*q2*t1)/sp + (16*m2*t1^2)/sp + 
     (16*m2*q2*u1)/sp + 8*t1*u1 - 4*n*t1*u1 - (16*m2*u1^2)/sp
 
BB[V, A, t1, t1][FG] = -64*m2^2 - 32*m2*s - 64*m2*t1 - 32*m2*u1 - 16*t1*u1 + 
     8*n*t1*u1
 
BB[V, A, t1, t1][FL] = (64*m2*q2*t1*u1)/sp^2
 
BB[V, A, t1, t1][gG] = 32*m2*t1 - 16*s*t1 - (16*q2*t1^2)/sp + (16*t1^3)/sp + 
     32*m2*u1 - 16*t1*u1 + (16*q2*t1*u1)/sp - (16*t1*u1^2)/sp
 
BB[V, A, t1, t1][gL] = 0
 
BB[V, A, t1, t1][x2g1] = -16*m2*u1 + 8*t1*u1 - (16*q2*t1*u1)/sp - 
     (16*q2*t1^2*u1)/sp^2 + (16*t1*u1^2)/sp
 
BB[V, A, t1, t1][xF3] = (-16*m2*q2*t1)/sp + (16*m2*t1^2)/sp - 16*m2*u1 + 
     (16*m2*q2*u1)/sp - 8*t1*u1 + 4*n*t1*u1 - (16*m2*u1^2)/sp
 
BB[V, A, t1, u1][FG] = -64*m2^2 + 16*s^2 - 16*m2*t1 + 16*s*t1 - 16*m2*u1 + 
     16*s*u1 - 32*t1*u1 + 8*n*t1*u1
 
BB[V, A, t1, u1][FL] = (64*m2*q2*t1*u1)/sp^2 - (32*q2*s*t1*u1)/sp^2
 
BB[V, A, t1, u1][gG] = 8*s*t1 + (8*q2*t1^2)/sp - (8*t1^3)/sp - 8*s*u1 - 
     (8*t1^2*u1)/sp - (8*q2*u1^2)/sp + (8*t1*u1^2)/sp + (8*u1^3)/sp - 
     ((128*I)*m2*epsi[k1, p1, p2, q])/sp - ((64*I)*s*epsi[k1, p1, p2, q])/
      sp - ((32*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((32*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, A, t1, u1][gL] = ((128*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[V, A, t1, u1][x2g1] = -8*m2*t1 + 4*s*t1 + (4*q2*t1^2)/sp - (4*t1^3)/sp - 
     8*m2*u1 + 4*s*u1 + (8*q2*t1*u1)/sp + (8*q2*t1^2*u1)/sp^2 - 
     (4*t1^2*u1)/sp + (4*q2*u1^2)/sp + (8*q2*t1*u1^2)/sp^2 - (4*t1*u1^2)/sp - 
     (4*u1^3)/sp + ((32*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 - 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp - ((32*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 - ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 + 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp + ((32*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[V, A, t1, u1][xF3] = -4*s*t1 - (16*m2*q2*t1)/sp + (8*q2*s*t1)/sp + 
     (16*m2*t1^2)/sp + (4*q2*t1^2)/sp - (8*s*t1^2)/sp - (4*t1^3)/sp - 
     16*m2*u1 + 4*s*u1 + (16*m2*q2*u1)/sp - (8*q2*s*u1)/sp + 16*t1*u1 - 
     4*n*t1*u1 - (4*t1^2*u1)/sp - (16*m2*u1^2)/sp - (4*q2*u1^2)/sp + 
     (8*s*u1^2)/sp + (4*t1*u1^2)/sp + (4*u1^3)/sp + 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp + ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, A, u1, t1][FG] = -64*m2^2 + 16*s^2 - 16*m2*t1 + 16*s*t1 - 16*m2*u1 + 
     16*s*u1 - 32*t1*u1 + 8*n*t1*u1
 
BB[V, A, u1, t1][FL] = (64*m2*q2*t1*u1)/sp^2 - (32*q2*s*t1*u1)/sp^2
 
BB[V, A, u1, t1][gG] = 8*s*t1 + (8*q2*t1^2)/sp - (8*t1^3)/sp - 8*s*u1 - 
     (8*t1^2*u1)/sp - (8*q2*u1^2)/sp + (8*t1*u1^2)/sp + (8*u1^3)/sp + 
     ((128*I)*m2*epsi[k1, p1, p2, q])/sp + ((64*I)*s*epsi[k1, p1, p2, q])/
      sp + ((32*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((32*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, A, u1, t1][gL] = ((-128*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[V, A, u1, t1][x2g1] = -8*m2*t1 + 4*s*t1 + (4*q2*t1^2)/sp - (4*t1^3)/sp - 
     8*m2*u1 + 4*s*u1 + (8*q2*t1*u1)/sp + (8*q2*t1^2*u1)/sp^2 - 
     (4*t1^2*u1)/sp + (4*q2*u1^2)/sp + (8*q2*t1*u1^2)/sp^2 - (4*t1*u1^2)/sp - 
     (4*u1^3)/sp - ((32*I)*q2*t1*epsi[k1, p1, p2, q])/sp^2 + 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp + ((32*I)*t1^2*epsi[k1, p1, p2, q])/
      sp^2 + ((32*I)*q2*u1*epsi[k1, p1, p2, q])/sp^2 - 
     ((16*I)*u1*epsi[k1, p1, p2, q])/sp - ((32*I)*u1^2*epsi[k1, p1, p2, q])/
      sp^2
 
BB[V, A, u1, t1][xF3] = 16*m2*t1 - 4*s*t1 - (16*m2*q2*t1)/sp + 
     (8*q2*s*t1)/sp + (16*m2*t1^2)/sp + (4*q2*t1^2)/sp - (8*s*t1^2)/sp - 
     (4*t1^3)/sp + 4*s*u1 + (16*m2*q2*u1)/sp - (8*q2*s*u1)/sp - 16*t1*u1 + 
     4*n*t1*u1 - (4*t1^2*u1)/sp - (16*m2*u1^2)/sp - (4*q2*u1^2)/sp + 
     (8*s*u1^2)/sp + (4*t1*u1^2)/sp + (4*u1^3)/sp - 
     ((16*I)*t1*epsi[k1, p1, p2, q])/sp - ((16*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, A, u1, u1][FG] = -64*m2^2 - 32*m2*s - 32*m2*t1 - 64*m2*u1 - 16*t1*u1 + 
     8*n*t1*u1
 
BB[V, A, u1, u1][FL] = (64*m2*q2*t1*u1)/sp^2
 
BB[V, A, u1, u1][gG] = -32*m2*t1 - 32*m2*u1 + 16*s*u1 + 16*t1*u1 - 
     (16*q2*t1*u1)/sp + (16*t1^2*u1)/sp + (16*q2*u1^2)/sp - (16*u1^3)/sp
 
BB[V, A, u1, u1][gL] = 0
 
BB[V, A, u1, u1][x2g1] = -16*m2*t1 + 8*t1*u1 - (16*q2*t1*u1)/sp + 
     (16*t1^2*u1)/sp - (16*q2*t1*u1^2)/sp^2
 
BB[V, A, u1, u1][xF3] = 16*m2*t1 - (16*m2*q2*t1)/sp + (16*m2*t1^2)/sp + 
     (16*m2*q2*u1)/sp + 8*t1*u1 - 4*n*t1*u1 - (16*m2*u1^2)/sp
 
BB[V, V, t1, t1][FG] = -32*m2^2 + 16*m2*s - 8*m2*n*s - 8*m2*n*t1 + 16*m2*u1 - 
     8*m2*n*u1 + 8*t1*u1 - 8*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, t1, t1][FL] = (32*m2*q2*t1*u1)/sp^2
 
BB[V, V, t1, t1][gG] = 0
 
BB[V, V, t1, t1][gL] = 0
 
BB[V, V, t1, t1][x2g1] = -8*m2*u1 + 4*t1*u1 - (8*q2*t1*u1)/sp - 
     (8*q2*t1^2*u1)/sp^2 + (8*t1*u1^2)/sp
 
BB[V, V, t1, t1][xF3] = 0
 
BB[V, V, t1, u1][FG] = -32*m2^2 + 32*m2*s - 8*m2*n*s - 8*s^2 + 4*n*s^2 + 
     24*m2*t1 - 8*m2*n*t1 - 8*s*t1 + 4*n*s*t1 + 24*m2*u1 - 8*m2*n*u1 - 
     8*s*u1 + 4*n*s*u1 + 16*t1*u1 - 12*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, t1, u1][FL] = (32*m2*q2*t1*u1)/sp^2 - (16*q2*s*t1*u1)/sp^2
 
BB[V, V, t1, u1][gG] = ((-64*I)*m2*epsi[k1, p1, p2, q])/sp + 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp - ((16*I)*n*s*epsi[k1, p1, p2, q])/
      sp + ((16*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*n*t1*epsi[k1, p1, p2, q])/sp + ((16*I)*u1*epsi[k1, p1, p2, q])/
      sp - ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, V, t1, u1][gL] = ((64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[V, V, t1, u1][x2g1] = -4*m2*t1 + 2*s*t1 + (2*q2*t1^2)/sp - (2*t1^3)/sp - 
     4*m2*u1 + 2*s*u1 + (4*q2*t1*u1)/sp + (4*q2*t1^2*u1)/sp^2 - 
     (2*t1^2*u1)/sp + (2*q2*u1^2)/sp + (4*q2*t1*u1^2)/sp^2 - (2*t1*u1^2)/sp - 
     (2*u1^3)/sp
 
BB[V, V, t1, u1][xF3] = ((8*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, V, u1, t1][FG] = -32*m2^2 + 32*m2*s - 8*m2*n*s - 8*s^2 + 4*n*s^2 + 
     24*m2*t1 - 8*m2*n*t1 - 8*s*t1 + 4*n*s*t1 + 24*m2*u1 - 8*m2*n*u1 - 
     8*s*u1 + 4*n*s*u1 + 16*t1*u1 - 12*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, u1, t1][FL] = (32*m2*q2*t1*u1)/sp^2 - (16*q2*s*t1*u1)/sp^2
 
BB[V, V, u1, t1][gG] = ((64*I)*m2*epsi[k1, p1, p2, q])/sp - 
     ((32*I)*s*epsi[k1, p1, p2, q])/sp + ((16*I)*n*s*epsi[k1, p1, p2, q])/
      sp - ((16*I)*t1*epsi[k1, p1, p2, q])/sp + 
     ((8*I)*n*t1*epsi[k1, p1, p2, q])/sp - ((16*I)*u1*epsi[k1, p1, p2, q])/
      sp + ((8*I)*n*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, V, u1, t1][gL] = ((-64*I)*q2*t1*u1*epsi[k1, p1, p2, q])/sp^3
 
BB[V, V, u1, t1][x2g1] = -4*m2*t1 + 2*s*t1 + (2*q2*t1^2)/sp - (2*t1^3)/sp - 
     4*m2*u1 + 2*s*u1 + (4*q2*t1*u1)/sp + (4*q2*t1^2*u1)/sp^2 - 
     (2*t1^2*u1)/sp + (2*q2*u1^2)/sp + (4*q2*t1*u1^2)/sp^2 - (2*t1*u1^2)/sp - 
     (2*u1^3)/sp
 
BB[V, V, u1, t1][xF3] = ((-8*I)*t1*epsi[k1, p1, p2, q])/sp - 
     ((8*I)*u1*epsi[k1, p1, p2, q])/sp
 
BB[V, V, u1, u1][FG] = -32*m2^2 + 16*m2*s - 8*m2*n*s + 16*m2*t1 - 8*m2*n*t1 - 
     8*m2*n*u1 + 8*t1*u1 - 8*n*t1*u1 + 2*n^2*t1*u1
 
BB[V, V, u1, u1][FL] = (32*m2*q2*t1*u1)/sp^2
 
BB[V, V, u1, u1][gG] = 0
 
BB[V, V, u1, u1][gL] = 0
 
BB[V, V, u1, u1][x2g1] = -8*m2*t1 + 4*t1*u1 - (8*q2*t1*u1)/sp + 
     (8*t1^2*u1)/sp - (8*q2*t1*u1^2)/sp^2
 
BB[V, V, u1, u1][xF3] = 0
