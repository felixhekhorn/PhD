CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C                                                                      C
C                     ==========================                       C
C                     | UNPHQ  V1.0  MAR 1998 |                        C
C                     ==========================                       C
C                                                                      C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      program unphq
      implicit double precision (a-z)
      integer n1,n2
      integer order,whatc
      integer points,iterations
c ***
      external partxsec
c ***
      common/color/cf,nc
      common/result/s1,s2,s3,s4
      common/par/eta
      common/intpar/delta
      common/flags/order,whatc
c ***
      cf = 4.d0/3.d0
      nc = 3.d0
c ***
      delta = 10.d0**(-6)
c ***
      order = 1
      whatc = 1
      if(order.eq.0) then
         points = 10000
         iterations = 4
      else
         points = 30000
         iterations = 6
      endif
c ***
c
c      WRITE (*,*) ' '
c      WRITE (*,*) '=========================='
c      WRITE (*,*) '| POLHQ  V0.2  MAR 1998  |'
c      WRITE (*,*) '=========================='
c      WRITE (*,*) ' '

c ***
      do 100 n1=-3,4,1
         do 300 n2=0,14,1
         eta=dble(exp(0.1535057*n2))*10.d0**n1
cc         n2=1
cc         eta=dble(n2)*10.d0**n1
            if(eta.gt.10001.d0) goto 100
            call vegas(partxsec,1.d-6,2,points,iterations,0,0)
            write(6,200) eta,s1,s2
 200        format(3(1pe12.5,1x))
 300     continue
 100  continue
      STOP
      END
c ***
c ****************************************************
c this routine call all partonic coefficient functions
c ****************************************************
c ***
      double precision function partxsec(x)
      implicit double precision (a-z)
      integer order,whatc
      dimension x(10)
c ***
      common/par/eta
      common/intpar/delta
      common/flags/order,whatc
c ***
      pi = 3.1415926d0
      m = 1.d0
      m2 = m*m
      s = 4.d0*m2*(1.d0+eta)
c ***
c *** t1 integration
c ***
      mt1up = s/2.d0 * (1.d0+sqrt(eta/(1.d0+eta)))
      mt1do = s/2.d0 * (1.d0-sqrt(eta/(1.d0+eta)))
      mt1 = mt1do + x(1) * (mt1up-mt1do)
      t1 = -mt1
c ***
c *** s4 integration (dummy integration for all 2->2 contributions)
c ***
      s4min = delta
      s4max = s*m2/t1+s+t1
      if (s4min.ge.s4max) then
         partxsec = 0.d0
         goto 111
      endif
      s4 = s4min + x(2) * (s4max-s4min)
      u1elast = - s- t1
      jacobg = (mt1up - mt1do) * (s4max - s4min)    
c *** 
c *** call now all gluonic partonic coefficient
c ***
c *** *** leading order coefficient function
      cglo = m2/s**2/4.d0*pi * jacobg * 
     1     cg0(s,t1,u1elast,s4,s4min,s4max,m) 
      if(order.eq.0) then
         cgsv = 0.d0
         cgmu = 0.d0
         cgh = 0.d0
         goto 222
      endif
      if(whatc.gt.4) goto 111
c *** *** soft + virtual gluonic coefficient function
      cgsv = m2/s**2/4.d0/pi * jacobg * 
     1     (svok(s,t1,u1elast,s4,s4min,s4max,m) + 
     2     svqed(s,t1,u1elast,s4,s4min,s4max,m))
c *** *** mu dependence (coefficient function cgbar)
      cgmu = m2/s**2/4.d0/pi * jacobg * 
     1     cgbar(s,t1,u1elast,s4,s4min,s4max,m)
c *** *** hard gluonic coefficient function
      cgh = m2/s**2/4.d0/pi * jacobg * 
     1     (cg1ok(s,t1,u1elast,s4,s4min,s4max,m) +
     2     cg1qed(s,t1,u1elast,s4,s4min,s4max,m))  
c ***
 222  continue
      if(order.eq.0) then
         gluon = cglo
      elseif ((order.eq.1).and.(whatc.eq.1)) then
         gluon = cgh
      elseif ((order.eq.1).and.(whatc.eq.2)) then
         gluon = cgsv
      elseif ((order.eq.1).and.(whatc.eq.3)) then
         gluon = cgmu
      elseif ((order.eq.1).and.(whatc.eq.4)) then
         gluon = cgh + cgsv
      endif
      partxsec = gluon
      goto 999
 111  continue
c *** 
c *** call now all quark partonic coefficient
c ***
c *** for the quark subprocess is delta = 0
      s4minq = 0.d0
      s4maxq = s*m2/t1+s+t1
      if (s4minq.ge.s4maxq) then
         partxsec = 0.d0
         goto 999
      endif
      s4q = s4minq + x(2) * (s4maxq-s4minq)
      u1 = s4q - s- t1
      jacobq = (mt1up - mt1do) * (s4maxq - s4minq)  
c ***
      cbarq = m2/s**2/4/pi * jacobq * qeh2fact(s,t1,u1,m)
      cq = m2/s**2/4/pi * jacobq * (qeh2finite(s,t1,u1,m)+
     1     qeh2pole(s,t1,u1,m)) 
      dbarq = m2/s**2/4/pi * jacobq * qel2fact(s,t1,u1,m)
      dq = m2/s**2/4/pi * jacobq * (qel2finite(s,t1,u1,m)+
     1     qel2pole(s,t1,u1,m)) 
      if ((order.eq.1).and.(whatc.eq.5)) then
         quark = cq
      elseif ((order.eq.1).and.(whatc.eq.6)) then
         quark = dq
      elseif ((order.eq.1).and.(whatc.eq.7)) then
         quark = cbarq
      elseif ((order.eq.1).and.(whatc.eq.8)) then
         quark = dbarq
      endif
      partxsec = quark
c ***
 999  continue
      return
      end
c ***
c *****************************************************
c this routine contains the leading order cross section
c *****************************************************
c ***
      double precision function cg0(s,t1,u1,s4,s4min,s4max,m)
      implicit double precision (a-z)
      common/color/cf,nc
c      
      m2 = m*m
      m4 = m2*m2
      bqed = t1/u1 + u1/t1 + 4.d0*m2*s/t1/u1*(1.d0-m2*s/t1/u1)
      cg0 = nc*cf*bqed * 1.d0 /(s4max-s4min)
      return
      end
c ***
c ***********************************************************
c this routine contains the log(mu^2/m^2) parts of the cross
c section  .... soft + virtual and hard are already added 
c and the log(delta) terms are rewritten in terms of a 
c s4 integration
c ***********************************************************
C ***
      double precision function cgbar(s,t1,u1elast,s4,s4min,s4max,m)
      implicit double precision (a-z)
      common/color/cf,nc
      common/par/eta
      m2 = m*m
      m4 = m2*m2
      m6 = m2*m4
      m8 = m4*m4
      s2 = s*s
      s3 = s * s2
      t12 = t1*t1
      t13 = t1*t12
      t14 = t12*t12
      u1 = s4 - s -t1
      u12 = u1*u1
      u13 = u1*u12
      u14 = u12*u12
c...
      u1e = u1elast
      u1e2 = u1e * u1e
      lnue = log(-u1e/m2)
      svpre = 8.d0*cf*nc**2
      svlog = svpre * (4*m4*s2 - 4*m2*s*t1*u1e - t1*u1e*(t12 + u1e2))/
     1     (32.*t12*u1e2) * (Log(s4max/m2) - (s4max-s4min)/s4) *
     2     1.d0/(s4max-s4min)     
      svlog = svlog + svpre * (lnue*(-4*m4*s2 + 4*m2*s*t1*u1e + 
     1     t1*u1e*(t12 + u1e2)))/(32.*t12*u1e2) * 1.d0 /(s4max-s4min)
c...
      hardpre = 8.d0*cf*nc**2
      hard = hardpre*(-(((s + t1)**2 + (s + t1)*u1 + u12)**2*
     1     (4*m4*s2*(s + t1) - 4*m2*s*t1*(s + t1)*u1 + 
     2     t1*(s2 + 2*s*t1 + 2*t12)*u12)*(-1.d0))/
     3     (32.*s4*t12*(s + t1)**3*u14))
      cgbar = svlog + hard
      return
      end
c ***
c **************************************************************
c this routine contains the all OK parts of the hard gluon cross
c section  .... log(delta) terms from s+v are already added 
c here and are rewritten in terms of a s4 integration
c **************************************************************
C ***
      double precision function cg1ok(s,t1,u1elast,s4,s4min,s4max,m)
      implicit double precision (a-z)
      common/color/cf,nc
      common/par/eta
      m2 = m*m
      m4 = m2*m2
      m6 = m2*m4
      m8 = m4*m4
      s2 = s*s
      s3 = s * s2
      t12 = t1*t1
      t13 = t1*t12
      t14 = t12*t12
      t15 = t12 * t13
      u1 = s4 - s -t1
      u12 = u1*u1
      u13 = u1*u12
      u14 = u12*u12
      u15 = u12 * u13
c... S+V log(delta) PIECES :
      t1e = t1
      t1e2 = t1e * t1e
      u1e = u1elast
      u1e2 = u1e * u1e
      sbar = sqrt(s) * sqrt(s-4.d0*m2)
      x = (1.d0 - sqrt(1.d0 - 4.d0 * m2/s)) / 
     1    (1.d0 + sqrt(1.d0 - 4.d0 * m2/s))
      lnx = log(x)
      lnue = log(-u1e/m2)
      lnte = log(-t1e/m2)
      svdelpre = 8.d0*cf*nc**2
      part1 = ((-4*m4*s2 + 4*m2*s*t1e*u1e + t1e*u1e*(t1e2 + u1e2)))/
     1     (32.*t1e2*u1e2) * 
     2     (log(s4max/m2)**2 - 2.d0 * 
     3     (s4max - s4min)/s4 * log(s4/m2)) *
     4     1.d0/(s4max-s4min)
      part2 = ((4*m4*s2 - 4*m2*s*t1e*u1e - t1e*u1e*(t1e2 + u1e2))*
     1     (sbar*(-lnte + lnue) + (2*m2 - s)*lnx))/
     2     (32.*sbar*t1e2*u1e2) * 
     3     (Log(s4max/m2) - (s4max-s4min)/s4) * 1.d0/(s4max-s4min) 
      svdelsum = part1 + part2
      svdelta = svdelpre * svdelsum
c...
      hardpre = 8.d0*cf*nc**2
c... REMAINING FINITE PIECES FROM FACTORIZATION
      part1 = ((s2 + s*t1 + t12)*((s + t1)**2 + 
     1     (s + t1)*u1 + u12)**2)/(16.*s4*t1*(s + t1)**3*u12)
      part2 = -(((s + t1)**2 + (s + t1)*u1 + u12)**2*
     1     (4*m4*s2*(s + t1) - 4*m2*s*t1*(s + t1)*u1 + 
     2     t1*(s2 + 2*s*t1 + 2*t12)*u12)*
     3     Log(s4**2/(m2*(m2 + s4))))/
     4     (32.*s4*t12*(s + t1)**3*u14)
      hard1 = part1 + part2
c... OK - I : M(7,8) * M(7,8) + GHOSTS 
      part1 = (4*m6*s*s4*(s + t1)*(s + u1)*
     1     (3*s2 + 3*s*u1 + 2*u12) + 4*m4*s4*(s + t1)*(s + u1)*
     2     (3*s3*(s + t1) + 6*s3*u1 + 5*s2*u12 + (2*s - t1)*u13) -
     3     s4*t1*u12*(2*s**4*(s + t1) + 
     4     s*(6*s3 + 7*s2*t1 + 6*s*t12 + 4*t13)*u1 + 
     5     (8*s3 + 5*s2*t1 - 2*s*t12 - 2*t13)*u12 + 
     6     (6*s2 + s*t1 - 2*t12)*u13 + (2*s + t1)*u14) - 
     7     2*m2*t1*(s + t1)*u1*
     8     (6*s3*(s + t1)**2 + s2*(23*s2 + 31*s*t1 + 9*t12)*u1 + 
     9     s*(35*s2 + 32*s*t1 + 7*t12)*u12 + 
     1     (2*s + t1)*(14*s + t1)*u13 + (13*s + 3*t1)*u14 + 3*u15))/
     2     (32.*(m2 + s4)*t12*(s + t1)*u14*(s + u1)**2)
      part2 = -((s*(4*m2 + s + 2*t1) - u12)*
     1     Log(m2/(m2 + s4)))/(32.*u1*(s + u1)**2)
      part3 = -((t1*u12*(s2 + 2*s*t1 + 2*t12 + (s + t1)*u1 + u12) + 
     1     4*m4*(s3 + s*u12 - t1*u12 + s2*(t1 + u1)) - 
     2     2*m2*t1*u1*(2*s2 + 2*s*(t1 + u1) + u1*(t1 + 2*u1)))*
     3     Log(((m2 + s4)*t12*u12)/(m2*(s + t1)**2*(s + u1)**2)))/
     4     (32.*t12*u14)
      hard2 = part1 + part2 + part3 
c... OK - II : M(7,8) * M(1,6)
      part1 = (s4*(-((m2*(m2 + t1)**2)/
     1     ((m2 + s4)*t1*(s + t1)*(m2 + s + t1))) - 
     2     (8*m2*(s2 + s*t1 + t12))/(s4**2*t1*(s + t1)) + 
     3     (m2*(-17*s2 - 14*s*t1 + t12) - 
     4     (s + t1)*(2*s2 + 2*s*t1 + 3*t12))/(t1*(s + t1)**3) + 
     5     (2*(8*m6*s*t1 - 3*t1*(s + t1)**2*(s2 + s*t1 + t12) + 
     6     2*m4*(s3 - s2*t1 + 2*t13) + 
     7     m2*(s + t1)*(s3 + 9*s2*t1 + 9*s*t12 + 3*t13)))/
     8     (s4*t12*(s + t1)**3) - 
     9     (4*m2*(-m2 + s + t1))/((s + t1)*u12) - 
     1     (16*m8*s2 - 2*t1*(s + t1)**3*(s2 + 2*s*t1 + 2*t12) + 
     2     4*m6*(s + t1)*(8*s2 + 3*s*t1 + 2*t12) + 
     3     4*m2*(s + t1)**2*(s3 - 2*s2*t1 - 4*s*t12 - 2*t13) + 
     4     m4*(s + t1)*(21*s3 + 22*s2*t1 + 8*s*t12 + 4*t13))/
     5     (s*t1*(s + t1)**3*(m2 + s + t1)*u1) - 
     6     ((9*s2 + 12*s*t1 + 5*t12)*u1)/(t1*(s + t1)**3) + 
     7     (12*(m4 - t12))/(t1*(s + u1)**2) - 
     8     (2*(4*m6 + 2*m4*(s + t1) + t1*(s2 + 4*s*t1 + 2*t12) + 
     9     m2*(s2 - 2*s*t1 + 4*t12)))/(s*t12*(s + u1)) + 
     1     (4*m2*(2*m2 + t1)*(4*m4 + 4*m2*t1 - s*t1))/
     2     (s*t12*(s*t1 + 4*m2*(s + u1)))))/(128.*(m2 + s4))
      part2 = ((4*m4*s4*(s + t1)*(s2*t1*(s + t1) + 
     1     2*s*t1*(2*s + t1)*u1 + 
     2     (2*s2 + 9*s*t1 + 3*t12)*u12 + 2*t1*u13) + 
     3     2*m2*u1*(-(s*(s + t1)**2*
     4     (s3 - 3*s2*t1 - 5*s*t12 - 2*t13)) - 
     5     s*(s + t1)*(s3 - 14*s2*t1 - 18*s*t12 - 6*t13)*u1 + 
     6     (s**4 + 29*s3*t1 + 44*s2*t12 + 21*s*t13 + 3*t14)*
     7     u12 + (s3 + 23*s2*t1 + 24*s*t12 + 6*t13)*u13 + 
     8     2*t1*(3*s + 2*t1)*u14) + 
     9     u1*(-(s3*(s + t1)**3*(s + 4*t1)) - 
     1     (s + t1)**3*(5*s3 + 17*s2*t1 + 8*s*t12 + 4*t13)*u1 - 
     2     2*(s + t1)*(4*s**4 + 18*s3*t1 + 31*s2*t12 + 19*s*t13 + 
     3     4*t14)*u12 - 
     4     (5*s**4 + 18*s3*t1 + 42*s2*t12 + 36*s*t13 + 9*t14)*
     5     u13 - (s3 - 3*s2*t1 + 3*s*t12 + 3*t13)*u14 + 
     6     2*s*t1*u15))*Log(m2/(m2 + s4)))/
     7     (128.*s4*t1*(s + t1)**3*u12*(s + u1)**2)
      part3 = -((8*m4*(2*(s + t1) + u1)*(s2 + s*u1 + u12) + 
     1     t1*u12*(s2 + 2*s*t1 + 2*t12 + (s + t1)*u1 + u12) - 
     2     4*m2*t1*u1*(2*s2 + 2*s*(t1 + u1) + u1*(t1 + u1)))*
     3     Log(((m2 + s4)*t12*u12)/(m2*(s + t1)**2*(s + u1)**2)))/
     4     (128.*s4*t12*(s + t1)*u12)
      part4 = ((t1*(s + t1 - u1)*(s2 + 2*s*t1 + 2*t12 + 
     1     (s + t1)*u1 + u12) + 
     2     4*m2*t1*(s2 + s*t1 + u1*(t1 + u1)) + 
     3     8*m4*(s2 + s*(t1 + u1) + (t1 + u1)**2))*
     4     Log(((m2 + s4)*t12)/(m2*(s + t1)**2)))/
     5     (128.*s4*t12*(s + t1)*u1)
      part5 = ((m2 + t1)*
     1     Log((2*m2 + t1 + u1 - Sqrt(-4*m2*s + (t1 + u1)**2))/
     2     (2*m2 + t1 + u1 + Sqrt(-4*m2*s + (t1 + u1)**2))))/
     3     (64.*u1*Sqrt(-4*m2*s + (t1 + u1)**2))
      part6 = ((2*m2*(s - t1)*(s*(s + t1) - s*u1 - u12) + 
     1     s*s4*(2*s2 + s*(t1 + u1) + u1*(t1 + u1)) - 
     2     4*m4*(3*s2 + u1*(t1 + 2*u1) + s*(t1 + 3*u1)))*
     3     Log(1 + (s4*(s*s4 - Sqrt(s)*
     4     Sqrt(s*s4**2 + 4*m2*(s*s4 + t1*u1))))/
     5     (2.*m2*(s*s4 + t1*u1))))/(64.*s*(s + t1)*u1*
     6     Sqrt(s*(s*s4**2 + 4*m2*(s + t1)*(s + u1))))
      part7 = -((-(s*u1*(s*(-t1 + u1) + u1*(t1 + u1))) + 
     1     2*m2*(s3 + t1*u12 + s2*(t1 + u1) + 3*s*u1*(t1 + u1)) - 
     2     4*m4*(s2 - s*(t1 + u1) + u1*(t1 + 2*u1)))*
     3     Log((2*m2*s4 + (-2*m2 + s)*u1 - 
     4     Sqrt(s*u1*(4*m2*s4 + (-4*m2 + s)*u1)))/
     5     (2*m2*s4 + (-2*m2 + s)*u1 + 
     6     Sqrt(s*u1*(4*m2*s4 + (-4*m2 + s)*u1)))))/
     7     (128.*s*(s + t1)*u1*Sqrt(s*u1*(4*m2*(s + t1) + s*u1)))
      part8 = -((s2*t12*(s2 - s*(t1 + u1) - u1*(t1 + u1)) + 
     1     8*m6*(4*s3 + 2*u12*(t1 + 2*u1) + s2*(-2*t1 + 7*u1) + 
     2     s*u1*(t1 + 7*u1)) - 
     3     4*m4*t1*(2*s3 + 7*s*u12 + 2*u13 + s2*(3*t1 + 10*u1)) + 
     4     2*m2*s*t1*(2*s3 - 4*s2*t1 - u12*(3*t1 + 2*u1) - 
     5     s*(t12 + 8*t1*u1 + 4*u12)))*
     6     Log((2*m2*s + s*t1 + 2*m2*u1 + 
     7     Sqrt(s)*Sqrt(t1*(4*m2*s + s*t1 + 4*m2*u1)))/
     8     (2*m2*s + s*t1 + 2*m2*u1 - 
     9     Sqrt(s)*Sqrt(t1*(4*m2*s + s*t1 + 4*m2*u1)))))/
     1     (128.*s**1.5*u1*(t1*(s*t1 + 4*m2*(s + u1)))**1.5)
      hard3 = part1 + part2 + part3 + part4 +
     1        part5 + part6 + part7 + part8
c... OK - III : M(1,6) * M(1,6)
      part1 = (((-(s*t13*(s + t1)**3) - 
     1     4*m4*t1*(s + t1)**2*(-15*s2 + 18*s*t1 + t12) + 
     2     2*m2*t1*(s + t1)**3*(4*s2 + 19*s*t1 + 16*t12) + 
     3     16*m8*(4*s3 + 23*s2*t1 + 18*s*t12 + 2*t13) + 
     4     4*m6*(s + t1)*(8*s3 + 99*s2*t1 + 54*s*t12 + 10*t13))/
     5     (m2*t12*(s + t1)**3) - (16*m4*(m2 + s + t1))/u12 + 
     6     (4*m2*(64*m8*s3 + 
     7     8*m6*s*(17*s3 + 16*s2*t1 + 6*s*t12 + 4*t13) + 
     8     4*t1*(s + t1)**2*
     9     (s**4 + s3*t1 + s2*t12 - s*t13 - t14) + 
     1     m2*(s + t1)*(8*s**5 + 4*s**4*t1 - 7*s3*t12 + 
     2     24*s2*t13 - 12*t15) + 
     3     2*m4*(42*s**5 + 62*s**4*t1 + 35*s3*t12 + 
     4     40*s2*t13 + 16*s*t14 - 4*t15)))/
     5     (s*t1*(s + t1)**2*(4*m2*s - t12)*u1) + 
     6     (4*(m2*t1*(s + t1)*(29*s2 - 30*s*t1 - 5*t12) + 
     7     t1*(s + t1)**2*(5*s2 + s*t1 + 10*t12) + 
     8     2*m4*(4*s3 + 33*s2*t1 + 12*s*t12 - 2*t13))*u1)/
     9     (t12*(s + t1)**3) + (4*(2*m2*(7*s2 - 7*s*t1 - 2*t12) + 
     1     (s + t1)*(4*s2 - 8*s*t1 + 5*t12))*u12)/(t1*(s + t1)**3)
     2     + (4*(s2 - 4*s*t1 + t12)*u13)/(t1*(s + t1)**3) - 
     3     (48*m2*(m2 + t1)**2)/(s + u1)**2 + 
     4     (8*(m2 + t1)*(16*m8 + 28*m6*t1 + m2*s*(s - 14*t1)*t1 + 
     5     s2*t12 + 2*m4*t1*(-2*s + 5*t1)))/(s*t12*(s + u1)) - 
     6     ((4*m2 - s)*(2*m2 + t1)*(4*m2 + t1)*
     7     (4*m4 + 4*m2*t1 - s*t1)**2)/
     8     (m2*s*t12*(s*t1 + 4*m2*(s + u1))) + 
     9     (16*s*(2*m6*s*(6*s - 2*t1 + u1) + s*t13*(t1 + u1) + 
     1     m4*(4*s3 + 2*t13 + 6*s2*(-2*t1 + u1) - 
     2     9*s*t1*(t1 + u1)) + 
     3     3*m2*t1*(2*s*t12 - s2*(t1 + u1) + t12*(t1 + u1))))/
     4     (t1*(-4*m2*s + t12)*(-4*m2*s + (t1 + u1)**2))))/
     5     (512.*(m2 + s4)**2)
      part2 = -((16*m6*s4*t1*(s + t1)*(s + u1)**2 - 
     1     u1*(s + u1)**2*((s + t1)**3*(4*s2 + 8*s*t1 + t12) + 
     2     (s + t1)**2*(9*s2 + 14*s*t1 + 7*t12)*u1 + 
     3     2*(s + t1)*(2*s2 + 3*s*t1 + 3*t12)*u12 + 
     4     2*(s2 + s*t1 + t12)*u13) + 
     5     2*m2*u1*(s*(s + t1)**2*
     6     (2*s3 + 8*s2*t1 + 7*s*t12 + 2*t13) + 
     7     (s + t1)*(11*s**4 + 50*s3*t1 + 50*s2*t12 + 22*s*t13 + 
     8     4*t14)*u1 + 
     9     (20*s**4 + 100*s3*t1 + 119*s2*t12 + 54*s*t13 + 
     1     9*t14)*u12 + 
     2     (15*s3 + 69*s2*t1 + 54*s*t12 + 12*t13)*u13 + 
     3     2*(2*s + t1)*(s + 4*t1)*u14) + 
     4     2*m4*(2*s2*t1*(s + t1)**3 + 
     5     s*(s + t1)*(7*s3 + 46*s2*t1 + 46*s*t12 + 12*t13)*u1 + 
     6     2*(12*s**4 + 70*s3*t1 + 93*s2*t12 + 45*s*t13 + 
     7     7*t14)*u12 + 
     8     (23*s3 + 117*s2*t1 + 108*s*t12 + 26*t13)*u13 + 
     9     2*(3*s2 + 16*s*t1 + 10*t12)*u14))*Log(m2/(m2 + s4)))
     1     /(128.*s4*t1*(s + t1)**3*u12*(s + u1)**2)
      part3 = ((8*m4*(t1 + u1) + 2*m2*
     1     (2*s*t1 + t12 + 3*s*u1 - t1*u1 + 2*u12) - 
     2     (t1 + u1)*(-2*s*u1 + t1*(t1 + u1)))*
     3     Log((2*m2 + t1 + u1 - Sqrt(-4*m2*s + (t1 + u1)**2))/
     4     (2*m2 + t1 + u1 + Sqrt(-4*m2*s + (t1 + u1)**2))))/
     5     (128.*s4*t1*u1*Sqrt(-4*m2*s + (t1 + u1)**2))
      part4 = -((-16*m6*(s + u1) - 
     1     2*m2*(s*(t1 - u1)**2 + s2*u1 - t1*u12) + 
     2     s*s4*(2*s2 + 2*s*(t1 + u1) + u1*(t1 + u1)) - 
     3     4*m4*(6*s2 + 3*s*(t1 + 2*u1) + u1*(t1 + 2*u1)))*
     4     Log(1 + (s4*(s*s4 - 
     5     Sqrt(s)*Sqrt(s*s4**2 + 4*m2*(s*s4 + t1*u1))))/
     6     (2.*m2*(s*s4 + t1*u1))))/
     7     (64.*s*t1*u1*Sqrt(s*(s*s4**2 + 4*m2*(s + t1)*(s + u1))))
      part5 = -((-2*m2*(s2*t1*(s + t1) + 4*s*t1*(s + t1)*u1 + 
     1     (s2 + 6*s*t1 + t12)*u12 + (s + t1)*u13) - 
     2     16*m6*(s*t1 - u1*(t1 + u1)) + 
     3     s*u1*(-(s*t12) + s2*u1 + u1*(t1 + u1)**2) + 
     4     4*m4*(s2*(t1 + 2*u1) + u1*(t1 + u1)*(t1 + 2*u1) - 
     5     s*(t12 + 2*t1*u1 + 2*u12)))*
     6     Log((2*m2*s4 + (-2*m2 + s)*u1 - 
     7     Sqrt(s*u1*(4*m2*s4 + (-4*m2 + s)*u1)))/
     8     (2*m2*s4 + (-2*m2 + s)*u1 + 
     9     Sqrt(s*u1*(4*m2*s4 + (-4*m2 + s)*u1)))))/
     1     (128.*s*s4*t1*u1*Sqrt(s*u1*(4*m2*(s + t1) + s*u1)))
      part6 = -((2*m2*s*t12*(s*t1*(s2 + 6*s*t1 + t12) + 
     1     s*t1*(11*s + 12*t1)*u1 + 3*(s2 + 5*s*t1 + t12)*u12 + 
     2     5*(s + t1)*u13 + 2*u14) + 
     3     32*m8*(s3*u1 - 2*t1*u12*(t1 + u1) + 
     4     2*s2*(t12 + u12) + s*u1*(-t12 - 2*t1*u1 + u12)) + 
     5     s2*t13*(u1*(t1 + u1)**2 + s*(2*t12 + 3*t1*u1 + 2*u12)) - 
     6     8*m6*t1*(s3*(6*t1 - u1) + 4*s2*t1*(-2*t1 + u1) + 
     7     2*u12*(t1 + u1)*(t1 + 2*u1) + 
     8     s*u1*(t12 + 8*t1*u1 + 5*u12)) + 
     9     4*m4*t1*(2*s**4*t1 + 2*t1*u13*(t1 + u1) + 
     1     s*u12*(9*t12 + 9*t1*u1 - 2*u12) + 
     2     s3*(t12 + 12*t1*u1 - 2*u12) + 
     3     s2*(5*t13 + 17*t12*u1 + 19*t1*u12 - 4*u13)))*
     4     Log((2*m2*s + s*t1 + 2*m2*u1 + 
     5     Sqrt(s)*Sqrt(t1*(4*m2*s + s*t1 + 4*m2*u1)))/
     6     (2*m2*s + s*t1 + 2*m2*u1 - 
     7     Sqrt(s)*Sqrt(t1*(4*m2*s + s*t1 + 4*m2*u1)))))/
     8     (128.*s**1.5*s4*t1*u1*(t1*(s*t1 + 4*m2*(s + u1)))**1.5)
      part7 = -(s*(t1 - u1)*(t1 + u1)*
     1     (-2*m2*(s + t1 - u1) + u1*(t1 + u1))*
     2     Log((-2*m2 + s - Sqrt(-4*m2*s + (s - s4)**2) - s4)/
     3     (-2*m2 + s + Sqrt(-4*m2*s + (s - s4)**2) - s4)))/
     4     (128.*s4*t1*u1*(-4*m2*s + (t1 + u1)**2)**1.5)
      hard4 = part1 + part2 + part3 + part4 + part5 + part6 +
     1        part7 
c...
      hardsum = hard1+hard2+hard3+hard4
      cg1ok = svdelta + hardpre * hardsum
ccc      cg1ok = svdelta
      return
      end
c ***
c **************************************************************
c this routine contains the all QED parts of the hard gluon cross
c section  .... log(delta) terms from s+v are already added 
c here and are rewritten in terms of a s4 integration
c **************************************************************
c ***
      double precision function cg1qed(s,t1,u1elast,s4,s4min,s4max,m)
      implicit double precision (a-z)
      common/color/cf,nc
      common/par/eta
      m2 = m*m
      m4 = m2*m2
      m6 = m2*m4
      m8 = m4*m4
      s2 = s*s
      s3 = s * s2
      t12 = t1*t1
      t13 = t1*t12
      t14 = t12*t12
      t15 = t12 * t13
      u1 = s4 - s -t1
      u12 = u1*u1
      u13 = u1*u12
      u14 = u12*u12
      u15 = u12 * u13
c... S+V log(delta) PIECES :
      t1e = t1
      t1e2 = t1e * t1e
      u1e = u1elast
      u1e2 = u1e * u1e
      sbar = sqrt(s) * sqrt(s-4.d0*m2)
      x = (1.d0 - sqrt(1.d0 - 4.d0 * m2/s)) / 
     1    (1.d0 + sqrt(1.d0 - 4.d0 * m2/s))
      lnx = log(x)
      lnue = log(-u1e/m2)
      lnte = log(-t1e/m2)
      svdelpre = 8.d0*cf**2*nc
      part1 = -((4*m4*s2 - 4*m2*s*t1e*u1e - t1e*u1e*(t1e2 + u1e2))*
     1     (-sbar + (2*m2 - s)*lnx))/(16.*sbar*t1e2*u1e2) *
     2     (Log(s4max/m2) - (s4max-s4min)/s4) * 1.d0/(s4max-s4min) 
      svdelta = svdelpre * part1
c...
      hardpre = 8.d0*cf**2*nc
c... QED : M(1,6) * M(1,6) 
      part1 = (s4*((2*(s*t12*(s + t1)*(8*s2 + 3*s*t1 + 2*t12) + 
     1     m2*(s**5 - 12*s**4*t1 + 11*s3*t12 - 20*s2*t13 - 
     2     28*s*t14 - 8*t15)))/(s2*t12*(s + t1)**3) + 
     3     (2*m2*(14*m6 + 28*m4*(s + t1) + 16*m2*(s + t1)**2 + 
     4     (s + t1)**3))/((s + t1)**2*(m2 + s + t1)*u12) + 
     5     (t13*(s + t1)**4*(-s2 + 2*s*t1 + 2*t12) - 
     6     64*m**12*s*(2*s2 + 6*s*t1 + 3*t12) - 
     7     8*m**10*(52*s**4 + 169*s3*t1 + 214*s2*t12 + 74*s*t13 - 
     8     6*t14) + m2*t1*(s + t1)**3*
     9     (-4*s**4 - 8*s3*t1 - 39*s2*t12 + 26*s*t13 + 34*t14) -
     1     2*m6*(s + t1)*
     2     (120*s**5 + 240*s**4*t1 + 500*s3*t12 + 580*s2*t13 + 
     3     41*s*t14 - 116*t15) - 
     4     2*m8*(248*s**5 + 816*s**4*t1 + 1472*s3*t12 + 
     5     1251*s2*t13 + 246*s*t14 - 86*t15) - 2*m4*(s + t1)**2*
     6     (16*s**5 - 14*s**4*t1 + 12*s3*t12 + 111*s2*t13 - 
     7     42*s*t14 - 70*t15))/
     8     (s*t1*(s + t1)**3*(m2 + s + t1)**2*(4*m2*s - t12)*u1) - 
     9     (2*(s3 - 8*s2*t1 - 3*s*t12 - 2*t13)*u1)/
     1     (s*t1*(s + t1)**3) + 
     2     (16*s*(m2 + t1)*(2*m2 + t1))/(t1*(s + u1)**3) + 
     3     (2*(24*m6 - 2*m4*(s - 26*t1) + 7*s*t12 + 
     4     m2*t1*(11*s + 26*t1)))/(t12*(s + u1)**2) + 
     5     (2*(-32*m**10 - (s - t1)*t13*(2*s + 3*t1) + 
     6     m4*t12*(-s + 4*t1) - 16*m8*(s + 5*t1) + 
     7     2*m6*(s2 - 13*s*t1 - 28*t12) + 
     8     m2*t12*(-5*s2 + 6*s*t1 + 14*t12)))/
     9     (s*t13*(m2 + t1)*(s + u1)) + 
     1     (8*m2*(4*m4*s2 + 4*m2*s*t1*(s + t1) + 
     2     t1*(s + t1)*(s2 + 2*s*t1 + 2*t12)))/
     3     (t12*(s + t1)**2*(s + t1 + u1)**2) + 
     4     (4*(-2*s*t12*(s + t1)**2*(s2 + 2*s*t1 + 2*t12) + 
     5     16*m8*s*(3*s2 + 6*s*t1 + 2*t12) + 
     6     4*m6*(-3*s**4 + 14*s3*t1 + 30*s2*t12 + 16*s*t13 + 
     7     4*t14) + m2*t1*(s + t1)*
     8     (-s**4 - 4*s3*t1 + 10*s2*t12 + 24*s*t13 + 12*t14) +
     9     m4*s*(s**4 - 8*s3*t1 + 40*s2*t12 + 96*s*t13 + 
     1     48*t14)))/((4*m2 - s)*t13*(s + t1)**3*(s + t1 + u1))
     2     + (2*m**10*s + 2*m8*s*(2*s + 5*t1) + 
     3     m2*t1*(s + t1)*(s + 2*t1)*(s2 + s*t1 - 3*t12) - 
     4     t12*(s + t1)**2*(s2 + 2*s*t1 + 2*t12) + 
     5     2*m4*t1*(2*s3 + 6*s2*t1 + 2*s*t12 - 3*t13) + 
     6     m6*(2*s3 + 13*s2*t1 + 15*s*t12 - 2*t13))/
     7     (t12*(m2 + t1)*(s + t1)*(m2 + s + t1)**2*
     8     (m2 + s + t1 + u1)) - 
     9     (12*m4*(s + 2*t1)**2*(-(s*(s + t1)) + m2*(3*s + 4*t1)))/
     1     (s*(s + t1)**2*(4*m2*(s + t1) + s*u1)**2) + 
     2     (2*(-(s**4*(s + t1)**2*(s + 2*t1)) - 
     3     2*m2*s2*(s + t1)**2*(3*s2 + 9*s*t1 + 4*t12) - 
     4     4*m6*(33*s**4 + 162*s3*t1 + 266*s2*t12 + 
     5     168*s*t13 + 32*t14) + 
     6     m4*s*(69*s**4 + 332*s3*t1 + 534*s2*t12 + 
     7     336*s*t13 + 64*t14)))/
     8     (s2*(-4*m2 + s)*(s + t1)**3*(4*m2*(s + t1) + s*u1)) + 
     9     (12*m2*(2*m2 + t1)**2*(4*m4 + 4*m2*t1 - s*t1))/
     1     (t12*(s*t1 + 4*m2*(s + u1))**2) + 
     2     (4*(-256*m**12 + 64*m**10*(2*s - 9*t1) + 
     3     16*m8*(17*s - 23*t1)*t1 + s2*t13*(-s + t1) + 
     4     8*m4*t12*(-s2 + 2*s*t1 + 2*t12) - 
     5     2*m2*s*t12*(s2 - s*t1 + 4*t12) - 
     6     4*m6*t1*(3*s2 - 45*s*t1 + 8*t12)))/
     7     (s*(-4*m2 + s)*t13*(s*t1 + 4*m2*(s + u1))) + 
     8     (8*(-8*m6*s2 + s*t13*(t1 + u1) + 
     9     2*m4*s*(2*s2 + s*(2*t1 - u1) + 3*t1*(t1 + u1)) - 
     1     m2*t1*(2*s*t12 + 3*s2*(t1 + u1) + 2*t12*(t1 + u1))))/
     2     ((4*m2 - s)*t1*(4*m2*s - t12)*(4*m2*s - (t1 + u1)**2))))/
     3     (128.*(m2 + s4))
      part2 = ((2*m4*(4*s3*t12*(s + t1)**3 + 
     1     s2*t1*(s + t1)*(6*s3 + 54*s2*t1 + 59*s*t12 + 18*t13)*
     2     u1 + s*(4*s**5 + 60*s**4*t1 + 290*s3*t12 + 
     3     411*s2*t13 + 231*s*t14 + 46*t15)*u12 + 
     4     (12*s**5 + 113*s**4*t1 + 411*s3*t12 + 444*s2*t13 + 
     5     182*s*t14 + 24*t15)*u13 + 
     6     (12*s**4 + 77*s3*t1 + 231*s2*t12 + 182*s*t13 + 
     7     40*t14)*u14 + 
     8     2*(2*s3 + 9*s2*t1 + 23*s*t12 + 12*t13)*u15) + 
     9     t1*u1*(-2*s2*(s + t1)**3*
     1     (2*s3 + 4*s2*t1 + 2*s*t12 + t13) - 
     2     s*(s + t1)**2*(20*s**4 + 44*s3*t1 + 35*s2*t12 + 
     3     10*s*t13 + 2*t14)*u1 - 
     4     (s + t1)*(40*s**5 + 103*s**4*t1 + 111*s3*t12 + 
     5     54*s2*t13 + 12*s*t14 + 2*t15)*u12 - 
     6     (42*s**5 + 124*s**4*t1 + 165*s3*t12 + 112*s2*t13 + 
     7     35*s*t14 + 4*t15)*u13 - 
     8     (26*s**4 + 57*s3*t1 + 66*s2*t12 + 35*s*t13 + 6*t14)*
     9     u14 - 2*(5*s + 2*t1)*(s2 + s*t1 + t12)*u15 - 
     1     2*(s2 + s*t1 + t12)*u1**6) + 
     2     8*m6*s4*(s + t1)*(s + u1)*
     3     (4*t12*u12 + 2*s*t1*u1*(2*t1 + 2*u1) + 
     4     s2*(2*t12 + 2*u12)) - 
     5     2*m2*s4*(s**6*(t1 - u1)**2 - 
     6     2*t13*u13*(3*t12 + 5*t1*u1 + 3*u12) + 
     7     s**5*(3*t13 - 13*t12*u1 - 13*t1*u12 + 3*u13) - 
     8     s*t12*u12*(16*t13 + 46*t12*u1 + 46*t1*u12 + 
     9     16*u13) + s3*(t1 + u1)*
     1     (t14 - 10*t13*u1 - 110*t12*u12 - 10*t1*u13 + u14) -
     2     s2*t1*u1*(t14 + 72*t13*u1 + 114*t12*u12 + 
     3     72*t1*u13 + u14) + 
     4     s**4*(3*t14 - 19*t13*u1 - 86*t12*u12 - 19*t1*u13 + 
     5     3*u14)))*Log(m2/(m2 + s4)))/
     6     (64.*s4*t12*(s + t1)**3*u12*(s + u1)**3)
      part3 =  -((8*m4*(t1 + u1) + s*(t1 + u1)*(t1 + 2*u1) + 
     1     m2*(6*s*(t1 + u1) + 4*(t12 + u12)))*
     2     Log((2*m2 + t1 + u1 - Sqrt(-4*m2*s + (t1 + u1)**2))/
     3     (2*m2 + t1 + u1 + Sqrt(-4*m2*s + (t1 + u1)**2))))/
     4     (64.*s4*t1*u1*Sqrt(-4*m2*s + (t1 + u1)**2))
      part4 = -((16*m6*(s + t1)*(s + u1) + 
     1     2*m2*s*(s*(t1 - u1)**2 + s2*(t1 + u1) - t1*u1*(t1 + u1)) - 
     2     s2*s4*(2*s2 + 2*s*(t1 + u1) + (t1 + u1)**2) + 
     3     8*m4*s*(3*s2 + 3*s*(t1 + u1) + (t1 + u1)**2))*
     4     Log(1 + (s4*(s*s4 - 
     5     Sqrt(s)*Sqrt(s*s4**2 + 4*m2*(s*s4 + t1*u1))))/
     6     (2.*m2*(s*s4 + t1*u1))))/
     7     (32.*s2*t1*u1*Sqrt(s*(s*s4**2 + 4*m2*(s + t1)*(s + u1))))
      part5 = (Sqrt(s*u1*(4*m2*(s + t1) + s*u1))*
     1     (s**4*u14*(t1 + u1)*(s2 + u12) + 
     2     32*m**10*(s + t1)*(-(s2*t1*(s + t1)**2) - 
     3     2*s*(s - 2*t1)*t1*(s + t1)*u1 + 
     4     t1*(23*s2 + 28*s*t1 + 8*t12)*u12 + 8*(s + t1)**2*u13) +
     5     16*m8*s*u1*(t1*(s + t1)**2*(s2 + 2*s*t1 + 6*t12) + 
     6     2*(s + t1)*(4*s3 + 5*s2*t1 + 13*s*t12 + 8*t13)*u1 + 
     7     (-8*s3 + 33*s2*t1 + 64*s*t12 + 26*t13)*u12 + 
     8     16*(s + t1)**2*u13) + 
     9     2*m2*s3*u13*(s*t1*(s + t1)*(5*s + 2*t1) + 
     1     2*(s + t1)*(2*s2 - 3*s*t1 - t12)*u1 - s*(s + 7*t1)*u12 + 
     2     (3*s + 2*t1)*u13) + 
     3     4*m4*s2*u12*(s*t1*(s + t1)**2*(7*s + 6*t1) + 
     4     (4*s**4 - 14*s3*t1 - 45*s2*t12 - 31*s*t13 - 6*t14)*
     5     u1 - 2*(s3 + 19*s2*t1 + 17*s*t12 + 4*t13)*u12 - 
     6     (s - 2*t1)*(2*s - t1)*u13 + 2*s*u14) + 
     7     16*m6*s*u1*(s*t1*(s + t1)**3*(s + 2*t1) - 
     8     t1*(s + t1)*(10*s3 + 22*s2*t1 + 11*s*t12 + 2*t13)*u1 + 
     9     (2*s**4 - 16*s3*t1 - 27*s2*t12 - 15*s*t13 - 4*t14)*
     1     u12 - (6*s3 - 6*s2*t1 - 5*s*t12 + 2*t13)*u13 + 
     2     5*s*(s + t1)*u14))*
     3     Log((2*m2*s4 + (-2*m2 + s)*u1 - 
     4     Sqrt(s*u1*(4*m2*s4 + (-4*m2 + s)*u1)))/
     5     (2*m2*s4 + (-2*m2 + s)*u1 + 
     6     Sqrt(s*u1*(4*m2*s4 + (-4*m2 + s)*u1)))))/
     7     (64.*s3*s4*t1*u13*(4*m2*(s + t1) + s*u1)**3)
      part6 = -((s**4*t14*(s2 + t12)*(t1 + u1) + 
     1     16*m8*s*t1*(8*s2*t1*(s2 - s*t1 + 2*t12) + 
     2     s*(s3 + 18*s2*t1 + 33*s*t12 + 32*t13)*u1 + 
     3     4*(s + 2*t1)*(s2 + 7*s*t1 + 2*t12)*u12 + 
     4     (11*s2 + 42*s*t1 + 26*t12)*u13 + 2*(7*s + 8*t1)*u14 + 
     5     6*u15) + 2*m2*s3*t13*
     6     (2*t1*(t1 - u1)*u1*(t1 + u1) + s3*(4*t1 + 5*u1) - 
     7     s2*(t12 + 2*t1*u1 - 7*u12) + 
     8     s*(t1 + u1)*(3*t12 - 10*t1*u1 + 2*u12)) - 
     9     32*m**10*(s + u1)*(s**4*u1 + 2*s3*u1*(t1 + u1) - 
     1     8*t12*u12*(t1 + u1) - 
     2     4*s*t1*u1*(4*t12 + 7*t1*u1 + u12) + 
     3     s2*(-8*t13 - 23*t12*u1 - 2*t1*u12 + u13)) + 
     4     4*m4*s2*t12*(-2*t1*u12*(t1 + u1)*(t1 + 3*u1) + 
     5     s**4*(4*t1 + 7*u1) - 2*s3*(t12 + 7*t1*u1 - 10*u12) - 
     6     s2*(2*t13 + 38*t12*u1 + 45*t1*u12 - 19*u13) + 
     7     s*(t1 + u1)*(2*t13 + 3*t12*u1 - 37*t1*u12 + 6*u13)) + 
     8     16*m6*s*t1*(s**5*u1 - 2*t1*u13*(t1 + u1)**2 + 
     9     s**4*(2*t12 - 10*t1*u1 + 5*u12) - 
     1     s3*(6*t13 + 16*t12*u1 + 32*t1*u12 - 9*u13) + 
     2     s*u1*(t1 + u1)*(5*t13 - 15*t1*u12 + 2*u13) + 
     3     s2*(5*t14 + 6*t13*u1 - 27*t12*u12 - 33*t1*u13 + 
     4     7*u14)))*Log((2*m2*s + s*t1 + 2*m2*u1 + 
     5     Sqrt(s)*Sqrt(t1*(4*m2*s + s*t1 + 4*m2*u1)))/
     6     (2*m2*s + s*t1 + 2*m2*u1 - 
     7     Sqrt(s)*Sqrt(t1*(4*m2*s + s*t1 + 4*m2*u1)))))/
     8     (64.*s**2.5*s4*u1*(t1*(s*t1 + 4*m2*(s + u1)))**2.5)
      part7 = ((-(s*u1*(-t1 + u1)*(t1 + u1)**2) - 
     1     2*m2*(t1 + u1)*(s2*(t1 - u1) + s*(t12 - 2*t1*u1 + u12)))*
     2     Log((-2*m2 + s - Sqrt(-4*m2*s + (s - s4)**2) - s4)/
     3     (-2*m2 + s + Sqrt(-4*m2*s + (s - s4)**2) - s4)))/
     4     (64.*s4*t1*u1*(-4*m2*s + (t1 + u1)**2)**1.5)
      hard = part1 + part2 + part3 + part4 + part5 + part6 + part7
c...
      cg1qed = svdelta + hardpre * hard
ccc      cg1qed = hardpre * hard
      return
      end
c...
c ***
c **************************************************************
c this routine contains the all QED parts of the soft + virtual
c gluon cross section ... log(delta) pieces are removed
c **************************************************************
c ***
      double precision function svqed(s,t1,u1,s4,s4min,s4max,m)
      implicit double precision (a-z)
      common/color/cf,nc
      common/par/eta
c      
      m2 = m*m
      m4 = m2*m2
      m6 = m2*m4
      m8 = m4*m4
      s2 = s*s
      t12 = t1*t1
      t13 = t1*t12
      t14 = t12*t12
      u12 = u1*u1
      u13 = u1*u12
      u14 = u12*u12
c
      u = u1 + m2
      t = t1 + m2
c
      sbar = sqrt(s) * sqrt(s-4.d0*m2)
      x = (1.d0 - sqrt(1.d0 - 4.d0 * m2/s)) / 
     1    (1.d0 + sqrt(1.d0 - 4.d0 * m2/s))
      zeta2 = 3.1415926d0**2/6.d0
c
      lnx = log(x)
      lnt = log(-t1/m2)
      lnu = log(-u1/m2)
c *** spence functions 
      li2t = dilog(t/m2)
      li2u = dilog(u/m2)
      li2x = dilog(x)
      li2mx = dilog(-x)
c
c *** this is the Log(delta) part ... switch off !
c      part1 = -((4*m4*s2 - 4*m2*s*t1*u1 - t1*u1*(t12 + u12))*
c     1     Log(delta)*(-sbar + (2*m2 - s)*lnx))/(16.*sbar*t12*u12)
c
      part1 = 0.d0
      part2 = ((32*m6*s2*t1*u1 + 2*m2*t12*u12*
     1     (5*t12 + 22*t1*u1 + 5*u12) + 
     2     t12*u12*(-3*t12*(sbar + t1) + t1*(-4*sbar + t1)*u1 + 
     3     (-3*sbar + t1)*u12 - 3*u13) + 
     4     4*m4*(-2*s*t1*u1*(2*t12 + 7*t1*u1 + 2*u12) + 
     5     sbar*(t14 + 2*t13*u1 + 2*t1*u13 + u14)))*zeta2)/
     6     (64*sbar*t13*u13)
      part3 = ((-16*m6*s - 2*m2*s*t1*u1 + 
     1     s*t1*(2*t12 + 2*t1*u1 + u12) + 
     2     8*m4*(3*t12 + 3*t1*u1 + u12))*lnt*lnx)/
     3     (32.*sbar*t12*u1)
      part4 = ((-16*m6*s - 2*m2*s*t1*u1 + 
     1     s*u1*(t12 + 2*t1*u1 + 2*u12) + 
     2     8*m4*(t12 + 3*t1*u1 + 3*u12))*lnu*lnx)/
     3     (32.*sbar*t1*u12)
      part5 = ((2*m2*t12*(t1 - u1) + 2*m4*(t1 - u1)*(3*t1 + u1) - 
     1     t12*(2*t12 + 2*t1*u1 + u12))*li2t)/(32.*t13*u1)
      part6 = -((2*m2*(t1 - u1)*u12 + 2*m4*(t1 - u1)*(t1 + 3*u1) + 
     1     u12*(t12 + 2*t1*u1 + 2*u12))*li2u)/(32.*t1*u13)
      part7 = ((32*m**10*s + t13*u1*(-2*s*t1 + t*u1) - 
     1     4*m8*(4*s*t + 23*t12 + 28*t1*u1 + u12) + 
     2     m2*t12*(2*(t - 3*t1)*t12 - 3*t1*(t + 2*t1)*u1 - 
     3     (t - 6*t1)*u12) + 
     4     2*m4*t1*(4*(t - 5*t1)*t12 + (7*t - 34*t1)*t1*u1 - 
     5     (t - t1)*u12) - 
     6     2*m6*t1*(47*t12 + 70*t1*u1 + 3*u12 - 4*t*(3*t1 + 4*u1)))*
     7     Log(-(t1/m2)))/(64.*t**3*t12*u1)
      part8 = -((-32*m**10*s + 2*m6*u1*
     1     (3*t12 - 16*t1*u + 70*t1*u1 - 12*u*u1 + 47*u12) - 
     2     t1*u13*(2*u12 + t1*(u + 2*u1)) + 
     3     m2*u12*(t12*(u - 6*u1) - 2*(u - 3*u1)*u12 + 
     4     3*t1*u1*(u + 2*u1)) + 
     5     4*m8*(t12 - 4*t1*(u - 7*u1) + u1*(-4*u + 23*u1)) + 
     6     2*m4*u1*(t12*(u - u1) + 4*u12*(-u + 5*u1) + 
     7     t1*u1*(-7*u + 34*u1)))*Log(-(u1/m2)))/(64.*t1*u**3*u12)
      part9 = -((2*m2 - s)*sbar*(4*m4*s2 - 4*m2*s*t1*u1 - 
     1     t1*u1*(t12 + u12))*Log(1 - x)*lnx)/
     2     (16.*(4*m2 - s)*s*t12*u12)
      part10 = -(s*(16*m6*s + 2*m2*s*t1*u1 - 
     1     8*m4*(t12 + 5*t1*u1 + u12) + 
     2     t1*u1*(3*t12 + 4*t1*u1 + 3*u12))*lnx*Log(1 + x))/
     3     (32.*sbar*t12*u12)
      part11 = ((2*m2 - s)*(4*m4*s2 - 4*m2*s*t1*u1 - 
     1     t1*u1*(t12 + u12))* li2x)/(8.*sbar*t12*u12)
      part12 = ((4*m2 - s)*(2*m2*s + t12 + 
     1     4*t1*u1 + u12)*li2mx)/(32.*sbar*t1*u1)
      part13 = ((-32*m6*s2 - 2*m2*t1*u1*
     1     (5*t12 + 22*t1*u1 + 5*u12) + 
     2     t1*u1*(3*t12*(sbar + t1) - t1*(-4*sbar + t1)*u1 + 
     3     (3*sbar - t1)*u12 + 3*u13) - 
     4     8*m4*(2*t13 + 9*t12*u1 + 2*u13 + t1*u1*(sbar + 9*u1)))*
     5     lnx**2)/(128.*sbar*t12*u12)
      part14 = (lnx*(-8*m6*s2 - s*t1*(t1 - u1)**2*u1 - 
     1     4*m2*t1*u1*(t12 + 3*t1*u1 + u12) + 
     2     4*m4*s*(t12 + 4*t1*u1 + u12) + 
     3     2*(2*m2 - s)*(4*m4*s2 - 4*m2*s*t1*u1 - 
     4     t1*u1*(t12 + u12))*Log(1 - x**2)))/(32.*sbar*t12*u12)
      part15 = (8*m8*s2 - t12*u12*(t12 + u12) - 
     1     3*m2*s*t1*u1*(t12 + 3*t1*u1 + u12) - 
     2     4*m6*s*(3*t12 + 7*t1*u1 + 3*u12) + 
     3     m4*(4*t14 + 25*t13*u1 + 46*t12*u12 + 25*t1*u13 + 
     4     4*u14))/(64.*t12*(m2 + t1)*u12*(m2 + u1))
c
ccc      pre = CF**2*EH**2*G**4*KGG*NC)/Pi**3
      pre = 8.d0*cf**2*nc
      svqed = pre * (part1 + part2 + part3 + part4 + part5 + part6 +
     1               part7 + part8 + part9 + part10 + part11 +
     2               part12 + part13 + part14 + part15)
      svqed = svqed * 1.d0 /(s4max-s4min)
      return
      end
c ***
c ************************************************************
c this routine contains the all OK parts of the soft + virtual
c gluon cross section ... log(delta) pieces are removed
c ************************************************************
c ***
      double precision function svok(s,t1,u1,s4,s4min,s4max,m)
      implicit double precision (a-z)
      common/color/cf,nc
      common/par/eta
c      
      m2 = m*m
      m4 = m2*m2
      m6 = m2*m4
      m8 = m4*m4
      s2 = s*s
      t12 = t1*t1
      t13 = t1*t12
      t14 = t12*t12
      u12 = u1*u1
      u13 = u1*u12
      u14 = u12*u12
c
      u = u1 + m2
      t = t1 + m2
c
      sbar = sqrt(s) * sqrt(s-4.d0*m2)
      x = (1.d0 - sqrt(1.d0 - 4.d0 * m2/s)) / 
     1    (1.d0 + sqrt(1.d0 - 4.d0 * m2/s))
      zeta2 = 3.1415926d0**2/6.d0
c
      lnx = log(x)
      lnt = log(-t1/m2)
      lnu = log(-u1/m2)
c *** spence functions 
      li2t = dilog(t/m2)
      li2u = dilog(u/m2)
      li2x = dilog(x)
      li2mx = dilog(-x)
      li21mt = dilog(1.d0 - t1/(u1*x))
      li21mu = dilog(1.d0 - u1/(t1*x))
c
c *** this is the Log(delta) part ... switch off !
c      part1 = -((4*m4*s2 - 4*m2*s*t1*u1 - t1*u1*(t12 + u12))*
c     1     Log(delta)*(-sbar + (2*m2 - s)*lnx))/(16.*sbar*t12*u12)
c
      part1 = 0.d0
      part2 = ((-32*m6*s2*t1*u1 - 
     1     2*m2*t12*u12*(2*s*sbar + 5*t12 + 22*t1*u1 + 5*u12) + 
     2     t12*u12*(-(s*(3*t12 - 4*t1*u1 + 3*u12)) + 
     3     sbar*(5*t12 + 4*t1*u1 + 5*u12)) - 
     4     2*m4*(-4*s*t1*u1*(2*t12 + 7*t1*u1 + 2*u12) + 
     5     sbar*(t14 + 10*t13*u1 - 2*t12*u12 + 10*t1*u13 + 
     6     u14)))*zeta2)/(128.*sbar*t13*u13)
      part3 = ((16*m6*s*u1 - 2*m2*s*t1*(2*sbar - u1)*u1 + 
     1     t1*u1*(-(sbar*(t12 + u12)) - s*(2*t12 + 2*t1*u1 + u12)) + 
     2     4*m4*(s2*sbar - 2*u1*(3*t12 + 3*t1*u1 + u12)))*
     3     lnt*lnx)/(64.*sbar*t12*u12)
      part4 = ((16*m6*s*t1 + 2*m2*s*t1*(2*sbar + t1)*u1 + 
     1     t1*u1*(sbar*(t12 + u12) - s*(t12 + 2*t1*u1 + 2*u12)) - 
     2     4*m4*(s2*sbar + 2*t1*(t12 + 3*t1*u1 + 3*u12)))*
     3     lnu*lnx)/(64.*sbar*t12*u12)
      part5 = -((m2*t12*(t1 - 3*u1) + m4*(t1 - u1)*(3*t1 + u1) - 
     1     t13*(t1 + 2*u1))*li2t)/(64.*t13*u1)
      part6 = ((m2*(3*t1 - u1)*u12 + u13*(2*t1 + u1) + 
     1     m4*(t1 - u1)*(t1 + 3*u1))*li2u)/(64.*t1*u13)
      part7 = ((-4*m2*s*t1*u1 - t1*u1*(t12 + u12) + 
     1     2*m4*(3*t12 + 4*t1*u1 + 3*u12))*
     2     lnt*lnu)/(32.*t12*u12)
      part8 = -(m4*(t12 + u12)*lnt**2)/(32.*t12*u12)
      part9 = -(m4*(t12 + u12)*lnu**2)/(32.*t12*u12)
      part10 = ((-(m2*s) - t12)*(-(m2*s) + t1*u1)*
     1     lnt)/(64.*t*t12*u1)
      part11 = ((-(m2*s) + t1*u1)*(-(m2*s) - u12)*
     1     lnu)/(64.*t1*u*u12)
      part12 = ((2*m2 - s)*(-4*m4*s2 + 
     1     4*m2*s*t1*u1 + t1*u1*(t12 + u12))*
     2     Log(1 - x)*lnx)/(16.*sbar*t12*u12)
      part13 = -((4*m2 - s)*(2*m2*s + t12 + 
     1     4*t1*u1 + u12)*lnx*Log(1 + x))/(64.*sbar*t1*u1)
      part14 = ((2*m2 - s)*(-4*m4*s2 + 4*m2*s*t1*u1 + 
     1     t1*u1*(t12 + u12))*li2x)/(16.*sbar*t12*u12)
      part15 = -((4*m2 - s)*(2*m2*s + t12 + 4*t1*u1 + 
     1     u12)*li2mx)/(64.*sbar*t1*u1)
      part16 = ((32*m6*s2 + 2*m2*t1*u1*
     1     (-4*s*sbar + 5*t12 + 22*t1*u1 + 5*u12) + 
     2     t1*u1*(-(t12*(5*sbar + 3*t1)) + t1*(-4*sbar + t1)*u1 + 
     3     (-5*sbar + t1)*u12 - 3*u13) + 
     4     8*m4*(sbar*(t12 + 3*t1*u1 + u12) - 
     5     s*(2*t12 + 7*t1*u1 + 2*u12)))*lnx**2)/
     6     (256.*sbar*t12*u12)
      part17 = -(s*(-(m2*s) + t1*u1)*lnx)/(32.*sbar*t1*u1)
      part18 = ((-4*m4*s2 + 4*m2*s*t1*u1 + 
     1     t1*u1*(t12 + u12))*li21mt)/(64.*t12*u12)
      part19 = ((4*m4*s2 - 4*m2*s*t1*u1 - 
     1     t1*u1*(t12 + u12))*li21mu)/(64.*t12*u12)
      part20 = (m2*s*(t12 + u12))/(64.*t12*u12)
      floop = (-4*m4*s2 + 4*m2*s*t1*u1 + t1*u1*(t12 + u12))/
     1  (576.*NC*t12*u12)
      floop = 0.d0
c
      pre = 8.d0*cf*nc**2
      svok = pre * (part1 + part2 + part3 + part4 + part5 + part6 +
     1              part7 + part8 + part9 + part10 + part11 +
     2              part12 + part13 + part14 + part15 + part16 +
     3              part17 + part18 + part19 + part20)
      svok = svok + pre * floop
      svok = svok * 1.d0 /(s4max-s4min)
      return
      end
c ***
c ******************************************************
c this routine contains mu dependence of the eh**2 quark
c coefficient cqbar 
c ******************************************************
c ***
      double precision function qeh2fact(s,t1,u1,m)
      implicit double precision (a-z)
      common/color/cf,nc
c      
      m2 = m*m
      m4 = m2*m2
      qeh2fact = - cf *        ! log(muf2/m2) *    
     1     (2*s**2 + 4*s*t1 + 2*t1**2 + 2*s*u1 + 2*t1*u1 + u1**2)*
     2     (-4*m4*s**3 - 4*m4*s**2*t1 + 4*m2*s**2*t1*u1 + 
     3     4*m2*s*t1**2*u1 - s**2*t1*u1**2 - 2*s*t1**2*u1**2 - 
     4     2*t1**3*u1**2)/(2*t1**2*(s + t1)**2*u1**4)
      return
      end
c ***
c *********************************************
c the next two routines contain the eh**2 quark
c coefficient cq 
c *********************************************
c ***
      double precision function qeh2pole(s,t1,u1,m)
      implicit double precision (a-z)
      common/color/cf,nc
c      
      m2 = m*m
      m4 = m2*m2
      s4 = s+t1+u1
      part1 = cf * (2*s**2 + 4*s*t1 + 2*t1**2 + 2*s*u1 + 
     1     2*t1*u1 + u1**2)*(-4*m4*s**3 - 4*m4*s**2*t1 + 
     2     4*m2*s**2*t1*u1 + 4*m2*s*t1**2*u1 - s**2*t1*u1**2 - 
     3     2*s*t1**2*u1**2 - 2*t1**3*u1**2)*
     4     Log(s4**2/(m2*(m2 + s4)))/(2*t1**2*(s + t1)**2*u1**4)
      part2 = cf *s*(2*s**2 + 4*s*t1 + 2*t1**2 + 2*s*u1 + 
     1     2*t1*u1 + u1**2)*(-4*m4*s**2 - 4*m4*s*t1 + 
     2     4*m2*s*t1*u1 + 4*m2*t1**2*u1 + s*t1*u1**2)/
     3     (2*t1**2*(s + t1)**2*u1**4)
      qeh2pole = (part1+part2)
      return
      end
C ***
      double precision function qeh2finite(s,t1,u1,m)
      implicit double precision (a-z)
      common/color/cf,nc 
      common/par/eta
c      
      m2 = m*m
      m4 = m2*m2
      m6 = m2*m4
      s2 = s*s
      s3 = s*s2
      ss4 = s2 *s2
      s5= s2*s3
      s6 = s3*s3
      t12 = t1*t1
      t13 = t1*t12
      t14 = t12*t12
      t15 = t12*t13
      t16 = t13*t13
      u12 = u1*u1
      u13 = u1*u12
      u14 = u12*u12
      u15 = u12*u13
      u16 = u13*u13
      s4 = s+t1+u1
      part1 = cf *(32*m6*s6*s4 + 32*m4*s6*s4**2 + 64*m6*s5*s4*t1 + 
     1     64*m4*s5*s4**2*t1 + 32*m6*ss4*s4*t12 + 
     2     32*m4*ss4*s4**2*t12 + 64*m6*s5*s4*u1 + 64*m4*s5*s4**2*u1 + 
     3     128*m6*ss4*s4*t1*u1 - 32*m4*s5*s4*t1*u1 + 
     4     128*m4*ss4*s4**2*t1*u1 - 32*m2*s5*s4**2*t1*u1 + 
     5     64*m6*s3*s4*t12*u1 - 64*m4*ss4*s4*t12*u1 + 
     6     64*m4*s3*s4**2*t12*u1 - 64*m2*ss4*s4**2*t12*u1 - 
     7     32*m4*s3*s4*t13*u1 - 32*m2*s3*s4**2*t13*u1 + 
     8     40*m6*ss4*s4*u12 + 40*m4*ss4*s4**2*u12 - 2*m2*s6*t1*u12 + 
     9     80*m6*s3*s4*t1*u12 - 56*m4*ss4*s4*t1*u12 - 2*s6*s4*t1*u12 + 
     1     80*m4*s3*s4**2*t1*u12 - 56*m2*ss4*s4**2*t1*u12 - 
     2     4*m2*s5*t12*u12 + 40*m6*s2*s4*t12*u12 - 
     3     112*m4*s3*s4*t12*u12 + 6*m2*ss4*s4*t12*u12 - 
     4     4*s5*s4*t12*u12 + 40*m4*s2*s4**2*t12*u12 - 
     5     112*m2*s3*s4**2*t12*u12 + 4*ss4*s4**2*t12*u12 - 
     6     2*m2*ss4*t13*u12 - 56*m4*s2*s4*t13*u12 + 
     7     12*m2*s3*s4*t13*u12 - 2*ss4*s4*t13*u12 - 
     8     56*m2*s2*s4**2*t13*u12 + 8*s3*s4**2*t13*u12 + 
     9     6*m2*s2*s4*t14*u12 + 4*s2*s4**2*t14*u12 + 8*m6*s3*s4*u13 + 
     1     8*m4*s3*s4**2*u13 - 6*m2*s5*t1*u13 + 16*m6*s2*s4*t1*u13 - 
     2     28*m4*s3*s4*t1*u13 - 6*s5*s4*t1*u13 + 
     3     16*m4*s2*s4**2*t1*u13 - 28*m2*s3*s4**2*t1*u13 - 
     4     10*m2*ss4*t12*u13 + 8*m6*s*s4*t12*u13 - 
     5     56*m4*s2*s4*t12*u13 + 2*m2*s3*s4*t12*u13 - 
     6     8*ss4*s4*t12*u13 + 8*m4*s*s4**2*t12*u13 - 
     7     56*m2*s2*s4**2*t12*u13 + s3*s4**2*t12*u13 - 
     8     4*m2*s3*t13*u13 - 28*m4*s*s4*t13*u13 + 8*m2*s2*s4*t13*u13 - 
     9     28*m2*s*s4**2*t13*u13 + 4*s2*s4**2*t13*u13 + 
     1     4*m2*s*s4*t14*u13 + 2*s2*s4*t14*u13 + 2*s*s4**2*t14*u13 - 
     2     8*m2*ss4*t1*u14 - 4*m4*s2*s4*t1*u14 - 8*ss4*s4*t1*u14 - 
     3     4*m2*s2*s4**2*t1*u14 - 10*m2*s3*t12*u14 -8*m4*s*s4*t12*u14 - 
     4     6*s3*s4*t12*u14 - 8*m2*s*s4**2*t12*u14 - 4*m2*s2*t13*u14 - 
     5     4*m4*s4*t13*u14 + 8*m2*s*s4*t13*u14 + 7*s2*s4*t13*u14 - 
     6     4*m2*s4**2*t13*u14 + 4*s*s4**2*t13*u14 + 
     7     4*m2*s4*t14*u14 + 8*s*s4*t14*u14 + 2*s4**2*t14*u14 + 
     8     2*s4*t1**5*u14 - 6*m2*s3*t1*u15 - 6*s3*s4*t1*u15 - 
     9     6*m2*s2*t12*u15 - 2*m2*s*s4*t12*u15 - 4*s2*s4*t12*u15 - 
     1     s*s4**2*t12*u15 - 4*m2*s*t13*u15 + 2*s*s4*t13*u15 + 
     2     2*s4*t14*u15 - 2*m2*s2*t1*u16 - 2*s2*s4*t1*u16 - 
     3     2*m2*s*t12*u16 - 2*s*s4*t12*u16 - 2*m2*t13*u16 - 
     4     s4*t13*u16)/(2*(m2 + s4)*t12*(s + t1)**2*u14*(s + u1)**2)
       part2 = - cf * ((2*m2*s + s2 + 2*s*t1 + s*u1 + t1*u1)*
     1     Log(m2/(m2 + s4))/(u1*(s + u1)**2))
       part3 =  cf *(-8*m4*s3 - 8*m4*s2*t1 - 8*m4*s2*u1 + 
     1     8*m2*s2*t1*u1 + 8*m2*s*t12*u1 - 4*m4*s*u12 + 4*m4*t1*u12 + 
     2     8*m2*s*t1*u12 - 2*s2*t1*u12 + 4*m2*t12*u12 - 4*s*t12*u12 - 
     3     4*t13*u12 + 4*m2*t1*u13 - 2*s*t1*u13 - 2*t12*u13 - 
     4      t1*u14)* Log((m2 + s4)*t12*u12/
     5      (m2*(s + t1)**2*(s + u1)**2))/(2*t12*u14)
      qeh2finite=(part1+part2+part3)
      return
      end
c ***
c ******************************************************
c this routine contains mu dependence of the el**2 quark
c coefficient dqbar 
c ******************************************************
c ***
      double precision function qel2fact(s,t1,u1,m)
      implicit double precision (a-z)
      common/color/cf,nc
c      
      m2 = m*m
      qel2fact = - cf *        ! log(muf2/m2) *    
     1     (s**2 + 2*s*t1 + 2*t1**2 + 2*s*u1 + 2*t1*u1 + u1**2)*
     2     (2*m2*s**2 - s**2*t1 + 2*m2*s*u1 - 2*s*t1*u1 - 2*t1*u1**2)/
     3     (2*s**2*t1**2*(s + u1)**2)
      return
      end
c ***
c *********************************************
c the next two routines contain the el**2 quark
c coefficient dq 
c *********************************************
c ***
      double precision function qel2pole(s,t1,u1,m)
      implicit double precision (a-z)
      common/color/cf,nc
c      
      m2 = m*m
      s4 = s+t1+u1
      part1 = cf * (s**2 + 2*s*t1 + 2*t1**2 + 2*s*u1 + 2*t1*u1 + u1**2)*
     1     (2*m2*s**2 - s**2*t1 + 2*m2*s*u1 - 
     2     2*s*t1*u1 - 2*t1*u1**2)*
     3     Log(s4**2/(m2*(m2 + s4)))/(2*s**2*t1**2*(s + u1)**2)
      part2 = cf * (s**2 + 2*s*t1 + 2*t1**2 + 2*s*u1 + 2*t1*u1 + u1**2)*
     1     (-(m2*s**2) + s**2*t1 - m2*s*u1 + s*t1*u1 + t1*u1**2)/
     2     (s**2*t1**2*(s + u1)**2)
      qel2pole = part1+part2
      return
      end
C ***
      double precision function qel2finite(s,t1,u1,m)
      implicit double precision (a-z)
      common/color/cf,nc
      common/par/eta
c      
      m2 = m*m
      m4 = m2*m2
      m6 = m2*m4
      s2 = s*s
      s3 = s*s2
      ss4 = s2 *s2
      s5= s2*s3
      t12 = t1*t1
      t13 = t1*t12
      t14 = t12*t12
      t15 = t12*t13
      t16 = t13*t13
      u12 = u1*u1
      u13 = u1*u12
      u14 = u12*u12
      u15 = u12*u13
      u16 = u13*u13
      s4 = s+t1+u1
      part1 = cf * (-8*m6*s5 + 16*m6*ss4*s4 - 8*m4*s5*s4 + 
     1     16*m4*ss4*s4**2 + 8*m4*s5*t1 + 8*m2*s5*s4*t1 + 
     2     10*m4*ss4*t12 - 32*m4*s3*s4*t12 + 4*m2*ss4*s4*t12 - 
     3     16*m2*s3*s4**2*t12 + 8*m4*s3*t13 - 2*m2*ss4*t13 - 
     4     ss4*s4*t13 - 2*m2*s3*t14 + 8*m2*s2*s4*t14 + 
     5     4*s2*s4**2*t14 - 2*m2*s2*t15 - 24*m6*ss4*u1 + 
     6     32*m6*s3*s4*u1 - 24*m4*ss4*s4*u1 + 32*m4*s3*s4**2*u1 + 
     7     28*m4*ss4*t1*u1 - 16*m4*s3*s4*t1*u1 + 28*m2*ss4*s4*t1*u1 - 
     8     16*m2*s3*s4**2*t1*u1 + 14*m4*s3*t12*u1 - 4*m2*ss4*t12*u1 - 
     9     32*m4*s2*s4*t12*u1 + 2*m2*s3*s4*t12*u1 - 4*ss4*s4*t12*u1 -
     1     24*m2*s2*s4**2*t12*u1 - s3*s4**2*t12*u1 - 10*m2*s3*t13*u1 + 
     1     16*m2*s2*s4*t13*u1 - 4*s3*s4*t13*u1 + 8*s2*s4**2*t13*u1 - 
     2     6*m2*s2*t14*u1 + 8*m2*s*s4*t14*u1 + 2*s2*s4*t14*u1 + 
     3     6*s*s4**2*t14*u1 - 24*m6*s3*u12 + 2*m4*ss4*u12 + 
     4     16*m6*s2*s4*u12 - 28*m4*s3*s4*u12 + 2*m2*ss4*s4*u12 + 
     5     16*m4*s2*s4**2*u12 - 4*m2*s3*s4**2*u12 + 44*m4*s3*t1*u12 - 
     6     2*m2*ss4*t1*u12 - 32*m4*s2*s4*t1*u12 + 44*m2*s3*s4*t1*u12 - 
     7     2*ss4*s4*t1*u12 - 32*m2*s2*s4**2*t1*u12 + 6*m4*s2*t12*u12 - 
     8     14*m2*s3*t12*u12 - 16*m4*s*s4*t12*u12 + 10*m2*s2*s4*t12*u12 - 
     9     12*s3*s4*t12*u12 - 16*m2*s*s4**2*t12*u12 + 
     1     4*s2*s4**2*t12*u12 - 14*m2*s2*t13*u12 + 16*m2*s*s4*t13*u12 - 
     1     3*s2*s4*t13*u12 + 12*s*s4**2*t13*u12 + 4*m2*s4*t14*u12 + 
     2     2*s*s4*t14*u12 + 4*s4**2*t14*u12 - 8*m6*s2*u13 + 
     3     6*m4*s3*u13 - 16*m4*s2*s4*u13 + 6*m2*s3*s4*u13 - 
     4     8*m2*s2*s4**2*u13 + 36*m4*s2*t1*u13 - 6*m2*s3*t1*u13 - 
     5     16*m4*s*s4*t1*u13 + 38*m2*s2*s4*t1*u13 - 6*s3*s4*t1*u13 - 
     6     16*m2*s*s4**2*t1*u13 + 2*s2*s4**2*t1*u13 + 2*m4*s*t12*u13 - 
     7     18*m2*s2*t12*u13 + 14*m2*s*s4*t12*u13 - 14*s2*s4*t12*u13 + 
     8     9*s*s4**2*t12*u13 - 6*m2*s*t13*u13 + 8*m2*s4*t13*u13 - 
     9     2*s*s4*t13*u13 + 8*s4**2*t13*u13 + 6*m4*s2*u14 - 
     1     4*m4*s*s4*u14 + 6*m2*s2*s4*u14 - 4*m2*s*s4**2*u14 + 
     1     12*m4*s*t1*u14 - 8*m2*s2*t1*u14 + 16*m2*s*s4*t1*u14 - 
     2     8*s2*s4*t1*u14 + 4*s*s4**2*t1*u14 - 12*m2*s*t12*u14 + 
     3     6*m2*s4*t12*u14 - 10*s*s4*t12*u14 + 6*s4**2*t12*u14 - 
     4     2*m2*t13*u14 - 2*s4*t13*u14 + 2*m4*s*u15 + 2*m2*s*s4*u15 - 
     5     6*m2*s*t1*u15 + 2*m2*s4*t1*u15 - 6*s*s4*t1*u15 + 
     6     2*s4**2*t1*u15 - 4*m2*t12*u15 - 4*s4*t12*u15 - 
     7     2*m2*t1*u16 - 2*s4*t1*u16)/(2*s2*(m2 + s4)*t12*(s + u1)**2*
     8     (-4*m2*s + t12 + 2*t1*u1 + u12))
      part2 = cf * (2*m2*s*s4 + 2*m2*s*t1 - s2*t1 + 2*s*s4*t1 - 
     1     2*s4**2*t1 - 2*t13)*Log((m2 + s4)*t12/(m2*(s + u1)**2))/
     2     (2*s2*t12)
      lll = Log((2*m2*s - s*(t1 + u1) - (t1 + u1)**2 + 
     4     s4*Sqrt(-4*m2*s + (t1 + u1)**2))/
     5     (2*m2*s - s*(t1 + u1) - (t1 + u1)**2 - 
     6     s4*Sqrt(-4*m2*s + (t1 + u1)**2)))
      part3 = cf *(-12*m4*s - 2*m2*s**2 - 6*m2*s*t1 + 4*m2*t1**2 + 
     1     s*t12 + 2*t13 - 2*m2*s*u1 + 6*m2*t1*u1 + s*t1*u1 + 
     2     4*t12*u1 + 2*m2*u12 + 2*t1*u12)*lll/
     3     (2*s*(-4*m2*s + t12 + 2*t1*u1 + u12)**(1.5))   !math (3/2)!!!! 
      qel2finite=part1+part2+part3
      return
      end
c ***
c *** dilog function
c ***
      double precision function dilog(x)
      implicit double precision  (a-z)
      dimension b(8)
      integer ncall
      data ncall/0/,pi6/1.644934066848226d+00/,een,vier/1.d+00,.25d+00/
      ncall = 0
      if(ncall.eq.0)go to 2
 1    if(x.lt.0)go to 3
      if(x.gt.0.5)go to 4
      z=-dlog(1.-x)
 7    z2=z*z
      dilog=z*(z2*(z2*(z2*(z2*(z2*(z2*(z2*b(8)+b(7))+b(6))
     1     +b(5))+b(4))+b(3))+b(2))+een)-z2*vier
      if(x.gt.een)dilog=-dilog-.5*u*u+2.*pi6
      return
 2    b(1)=een
      b(2)=een/36.
      b(3)=-een/3600.
      b(4)=een/211680.
      b(5)=-een/(30.*362880.d+00)
      b(6)=5./(66.*39916800.d+00)
      b(7)=-691./(2730.*39916800.d+00*156.)
      b(8)=een/(39916800.d+00*28080.)
      ncall=1
      go to 1
 3    if(x.gt.-een)go to 5
      y=een/(een-x)
      z=-dlog(een-y)
      z2=z*z
      u=dlog(y)
      dilog=z*(z2*(z2*(z2*(z2*(z2*(z2*(z2*b(8)+b(7))+b(6))
     1     +b(5))+b(4))+b(3))+b(2))+een)-z2*vier-u*(z+.5*u)-pi6
      return
 4    if(x.ge.een)go to 10
      y=een-x
      z=-dlog(x)
 6    u=dlog(y)
      z2=z*z
      dilog=-z*(z2*(z2*(z2*(z2*(z2*(z2*(z2*b(8)+b(7))+b(6))
     1     +b(5))+b(4))+b(3))+b(2))+een-u)+z2*vier+pi6
      if(x.gt.een)dilog=-dilog-.5*z*z+pi6*2.
      return
 5    y=een/(een-x)
      z=-dlog(y)
      z2=z*z
      dilog=-z*(z2*(z2*(z2*(z2*(z2*(z2*(z2*b(8)+b(7))+b(6))
     1     +b(5))+b(4))+b(3))+b(2))+een)-z2*vier
      return
 10   if(x.eq.een)go to 20
      xx=1./x
      if(x.gt.2.)go to 11
      z=dlog(x)
      y=1.-xx
      go to 6
 11   u=dlog(x)
      z=-dlog(1.-xx)
      go to 7
 20   dilog=pi6
      return
      end
C
C*************************************************************
C integration routine for MAX
C*************************************************************
      subroutine vegas(fxn,bcc,ndim,ncall,itmx,nprn,igraph)
      implicit double precision ( a-h,o-z )
      common/bveg2/ndo,it,si,si2,swgt,schi,xi(50,10),scalls
     +,d(50,10),di(50,10),nxi(50,10)
      dimension xin(50),r(50),dx(10),ia(10),kg(10),dt(10)
      dimension xl(10),xu(10),qran(10),x(10)
      common/result/s1,s2,s3,s4
      external fxn
      data xl,xu/10*0.D+00,10*1.0D+00/
      data ndmx/50/,alph/1.5/,one/1./,mds/1/
      ipr=1
      if(nprn.gt.0)ipr=0
      ndo=1
      do 1 j=1,ndim
1     xi(1,j)=one
      entry vegas1(fxn,bcc,ndim,ncall,itmx,nprn,igraph)
      now=igraph
      if(igraph.gt.0)call inplot(now,f1,w)
      it=0
      si=0.
      si2=si
      swgt=si
      schi=si
      scalls=si
      entry vegas2(fxn,bcc,ndim,ncall,itmx,nprn,igraph)
      nd=ndmx
      ng=1
      if(mds.eq.0) go to 2
      ng=(ncall*0.5D+00)**(1.D+00/ndim)
      mds=1
      if((2*ng-ndmx).lt.0) go to 2
      mds=-1
      npg=ng/ndmx+1
      nd=ng/npg
      ng=npg*nd
2     k=ng**ndim
      npg=ncall/k
      if(npg.lt.2)npg=2
      calls=npg*k
      dxg=one/ng
      dv2g=dxg**(2*ndim)/npg/npg/(npg-one)
      xnd=nd
      ndm=nd-1
      dxg=dxg*xnd
      xjac=one
      do 3 j=1,ndim
      dx(j)=xu(j)-xl(j)
3     xjac=xjac*dx(j)
      if(nd.eq.ndo) go to 8
      rc=ndo/xnd
      do 7 j=1,ndim
      k=0
      xn=0.
      dr=xn
      i=k
4     k=k+1
      dr=dr+one
      xo=xn
      xn=xi(k,j)
5     if(rc.gt.dr) go to 4
      i=i+1
      dr=dr-rc
      xin(i)=xn-(xn-xo)*dr
      if(i.lt.ndm) go to 5
      do 6  i=1,ndm
6     xi(i,j)=xin(i)
7     xi(nd,j)=one
      ndo=nd
      acc=bcc
8     if(nprn.ne.0.and.nprn.ne.10)print 200,ndim,calls,it,itmx
     1,acc,mds,nd
      if(nprn.eq.10)print 290,ndim,calls,itmx,acc,mds,nd
      entry vegas3(fxn,bcc,ndim,ncall,itmx,nprn,igraph)
9     it=it+1
      ti=0.
      tsi=ti
      if(igraph.gt.0)call replot(now,f1,w)
      do 10 j=1,ndim
      kg(j)=1
      do 10 i=1,nd
      nxi(i,j)=0
      d(i,j)=ti
10    di(i,j)=ti
11    fb=0.d0
      f2b=fb
      k=0
12    k=k+1
      do 121 j=1,ndim
121   qran(j)=ranf(0.d0)
      wgt=xjac
      do 15 j=1,ndim
      xn=(kg(j)-qran(j))*dxg+one
      ia(j)=xn
      iaj=ia(j)
      iaj1=iaj-1
      if(iaj.gt.1) go to 13
      xo=xi(iaj,j)
      rc=(xn-iaj)*xo
      go to 14
13    xo=xi(iaj,j)-xi(iaj1,j)
      rc=xi(iaj1,j)+(xn-iaj)*xo
14    x(j)=xl(j)+rc*dx(j)
15    wgt=wgt*xo*xnd
      f=fxn(x)*wgt
      f1=f/calls
      w=wgt/calls
      if(igraph.gt.0)call xplot(now,f1,w)
      f2=f*f
      fb=fb+f
      f2b=f2b+f2
      do 16 j=1,ndim
      iaj=ia(j)
      nxi(iaj,j)=nxi(iaj,j)+1
      di(iaj,j)=di(iaj,j)+f/calls
16    if(mds.ge.0)  d(iaj,j)=d(iaj,j)+f2
      if(k.lt.npg) go to 12
      f2b=f2b*npg
      f2b=dsqrt(f2b)
      f2b=(f2b-fb)*(f2b+fb)
      ti=ti+fb
      tsi=tsi+f2b
      if(mds.ge.0) go to 18
      do 17 j=1,ndim
      iaj=ia(j)
17    d(iaj,j)=d(iaj,j)+f2b
18    k=ndim
19    kg(k)=mod(kg(k),ng)+1
      if(kg(k).ne.1) go to 11
      k=k-1
      if(k.gt.0) go to 19
      ti=ti/calls
      tsi=tsi*dv2g
      ti2=ti*ti
      wgt=ti2/tsi
      si=si+ti*wgt
      si2=si2+ti2
      swgt=swgt+wgt
      schi=schi+ti2*wgt
      scalls=scalls+calls
      avgi=si/swgt
      sd=swgt*it/si2
      chi2a=0.
      if(it.gt.1)chi2a=sd*(schi/swgt-avgi*avgi)/(it-1)
      sd=one/sd
      sd=dsqrt(sd)
      if(nprn.eq.0) go to 21
      tsi=dsqrt(tsi)
      if(nprn.ne.10)print 201,ipr,it,ti,tsi,avgi,sd,chi2a
      if(nprn.eq.10)print 203,it,ti,tsi,avgi,sd,chi2a
      if(nprn.ge.0) go to 21
      do 20 j=1,ndim
      print 202,j
20    print 204,(xi(i,j),di(i,j),d(i,j),i=1,nd)
21    if(dabs(sd/avgi).le.dabs(acc).or.it.ge.itmx)now=2
      s1=avgi
      s2=sd
      s3=ti
      s4=tsi
      if(igraph.gt.0)call plotit(now,f1,w)
c      do 23 j=1,ndim
c      xo=d(1,j)
c      xn=d(2,j)
c      d(1,j)=(xo+xn)*0.5
c      dt(j)=d(1,j)
c      do 22 i=2,ndm
c      d(i,j)=xo+xn
c      xo=xn
c      xn=d(i+1,j)
c      d(i,j)=(d(i,j)+xn)/3.
c22    dt(j)=dt(j)+d(i,j)
c      d(nd,j)=(xn+xo)*0.5
c23    dt(j)=dt(j)+d(nd,j)
c-----this part of the vegas-algorithm is unstable
c-----it should be replaced by
      do 23 j=1,ndim
      dt(j)=0.
      do 23 i=1,nd
      if(nxi(i,j).gt.0)d(i,j)=d(i,j)/nxi(i,j)
23    dt(j)=dt(j)+d(i,j)
      do 28 j=1,ndim
      rc=0.
      do 24 i=1,nd
      r(i)=0.
      if(d(i,j).le.0.)go to 24
      xo=dt(j)/d(i,j)
      r(i)=((xo-one)/xo/dlog(xo))**alph
24    rc=rc+r(i)
      rc=rc/xnd
      k=0
      xn=0.
      dr=xn
      i=k
25    k=k+1
      dr=dr+r(k)
      xo=xn
      xn=xi(k,j)
26    if(rc.gt.dr) go to 25
      i=i+1
      dr=dr-rc
      xin(i)=xn-(xn-xo)*dr/r(k)
      if(i.lt.ndm) go to 26
      do 27 i=1,ndm
27    xi(i,j)=xin(i)
28    xi(nd,j)=one
      if(it.lt.itmx.and.dabs(acc).lt.dabs(sd/avgi))go to 9
200   format(35h0input parameters for vegas   ndim=,i3,
     18h  ncall=,f8.0/28x,5h  it=,i5,8h  itmx =,i5/28x,
     26h  acc=,g9.3/28x,6h  mds=,i3,6h   nd=,i4//)
290   format(13h0vegas  ndim=,i3,8h  ncall=,f8.0,8h  itmx =,i5,
     16h  acc=,g9.3,6h  mds=,i3,6h   nd=,i4)
201   format(/i1,20hintegration by vegas/13h0iteration no,i3,
     114h.   integral =,g14.8/20x,10hstd dev  =,g10.4/
     234h accumulated results.   integral =,g14.8/
     324x,10hstd dev  =,g10.4 / 24x,18hchi**2 per itn   =,g10.4)
202   format(14h0data for axis,i2 / 7x,1hx,7x,10h  delt i  ,
     12x,11h convce    ,11x,1hx,7x,10h  delt i  ,2x,11h convce
     2,11x,1hx,7x,10h  delt i  ,2x,11h convce     /)
204   format(1x,3g12.4,5x,3g12.4,5x,3g12.4)
203   format(1h ,i3,g20.8,g12.4,g20.8,g12.4,g12.4)
      s1=avgi
      s2=sd
      s3=chi2a
      return
      end
c
      subroutine inplot(now,ff,pdx)
      implicit double precision (a-h,o-z)
      common/lplot/xl(25),v1(10),v2(10),av(10)
      dimension zav(10),yav(10),zsv(10),ysv(10),ztv(10)
      dimension xlmax(25),xlmin(25),nlp(25),ltop(25),text(8,25)
     1,ll(25)
      dimension numb(12)
      dimension xls(42,25),yls(42,25),nlsn(42,25),mlsn(42,25)
     1,dls(25)
     1,xlav(25),xlsq(25),xlava(25),sxa(25),tlim(6),top(25),xltq(25)
      dimension nbin(41),nlog(41),slog(41),tlog(41),hv(12)
      dimension v1max(10),v1min(10),v2max(10),v2min(10),nv1(10)
     1,nv2(10),vtext(6,10)
      dimension vm(12,12,10),nvm(12,12,10),bin1(10),bin2(10),vol(10)
     1,wm(12,12,10),mvm(12,12,10)
      common/result/y,si,u,v
      character*1 hmin,hplus,hblank,hstar,char(40)
      save
      data tlim/1.6d+00,2.5d+00,4.0d+00,6.666666667d+00,10.d+00,
     +16.d+00/
      data hmin,hplus,hblank,hstar/'-','+',' ','*'/
      data mls,mav,ndmax/25,10,10/
      data ngraph/0/
c      print '('' igraph = '',i8)',now
      igraph=now
      now=0
      kk=0
      itt=0
      if(igraph.le.0) go to 800
      if(igraph.ne.ngraph)read (12,810)nls
      if(igraph.ne.ngraph)print 814,nls
      if(nls.lt.0) nls=0
      if(nls.eq.0) go to 802
      if(nls.gt.mls) go to 807
      if(igraph.ne.ngraph)print 815
      do 801 i=1,nls
      if(igraph.ne.ngraph)
     1read (12,811)xlmin(i),xlmax(i),nlp(i),ltop(i),ll(i),
     2(text(j,i),j=1,8)
      if(igraph.ne.ngraph) print 816,i,xlmin(i),xlmax(i)
     1,nlp(i),ltop(i),ll(i),(text(j,i),j=1,8)
      if(nlp(i).lt.1)nlp(i)=1
      if(nlp(i).gt.40)nlp(i)=40
      dls(i)=(xlmax(i)-xlmin(i))/nlp(i)
      nlps=nlp(i)+2
      do 300 j=1,nlps
      yls(j,i)=0
300   mlsn(j,i)=0
801   continue
802   if(igraph.ne.ngraph) read (12,810)ndd
      if(igraph.ne.ngraph) print 817,ndd
      if(ndd.lt.0) ndd=0
      if(ndd.eq.0) go to 804
      if(ndd.gt.ndmax) go to 807
      if(igraph.ne.ngraph) print 818
      do 803 i=1,ndd
      if(igraph.ne.ngraph)
     1read (12,812)v1min(i),v1max(i),nv1(i),v2min(i),v2max(i)
     1,nv2(i),(vtext(j,i),j=1,6)
      if(igraph.ne.ngraph) print 819,i,v1min(i),v1max(i),nv1(i)
     1,v2min(i),v2max(i),nv2(i),(vtext(j,i),j=1,6)
      if(nv1(i).lt.1)nv1(i)=1
      if(nv2(i).lt.1)nv2(i)=1
      if(nv1(i).gt.10)nv1(i)=10
      if(nv2(i).gt.10)nv2(i)=10
      bin1(i)=(v1max(i)-v1min(i))/nv1(i)
      bin2(i)=(v2max(i)-v2min(i))/nv2(i)
      vol(i)=bin1(i)*bin2(i)
803   continue
      wtow=0.
      do 805 i=1,ndd
      do 805 j=1,12
      do 805 k=1,12
      wm(k,j,i)=0.
805   mvm(k,j,i)=0
804   continue
      if(igraph.ne.ngraph)read (12,810)nave
      if(igraph.ne.ngraph)print 820,nave
      if(nave.lt.0)nave=0
      if(nave.gt.mav)go to 807
      do 11 i=1,mav
      yav(i)=0.
11    ysv(i)=0.
      kt=0
      go to 808
800   nave=0
      nls=0
      ndd=0
      go to 808
807   print 813,mav,mls,ndmax
      stop
808   ngraph=igraph
      return
      entry replot(now,ff,pdx)
      if(nave.eq.0) go to 49
      do 62 i=1,nave
      zav(i)=0.
      ztv(i)=0.
62    zsv(i)=0.
49    fsqa=0.
      kt=kt+1
      if(nls.eq.0) go to 303
      do 302 i=1,nls
      nlps=nlp(i)+2
      xlav(i)=0
      xltq(i)=0.
      xlsq(i)=0
      do 302 j=1,nlps
      xls(j,i)=0
302   nlsn(j,i)=0
303   continue
      if(ndd.eq.0) go to 403
      do 402 i=1,ndd
      n1=nv1(i)+2
      n2=nv2(i)+2
      do 402 i1=1,n1
      do 402 i2=1,n2
      vm(i1,i2,i)=0
402   nvm(i1,i2,i)=0
403   continue
      return
      entry xplot(now,ff,pdx)
      fsqa=fsqa+ff*ff/pdx
      itt=itt+1
      if(nls.eq.0) go to 305
      do 304  i=1,nls
      nlps=(xl(i)-xlmin(i))/dls(i)+1.
      if(nlps.lt.0)nlps=0
      if(nlps.gt.nlp(i))nlps=nlp(i)+1
      nlps=nlps+1
      xls(nlps,i)=xls(nlps,i)+ff/dls(i)
      nlsn(nlps,i)=nlsn(nlps,i)+1
      xlav(i)=xlav(i)+ff*xl(i)
      xltq(i)=xltq(i)+ff*ff*xl(i)/pdx
304   xlsq(i)=xlsq(i)+(ff*xl(i))**2/pdx
305   continue
      if(ndd.eq.0)go to 405
      do 404 i=1,ndd
      i1=(v1(i)-v1min(i))/bin1(i)+2
      if(i1.lt.1) i1=1
      if(i1.gt.nv1(i)+2) i1=nv1(i)+2
      i2=(v2(i)-v2min(i))/bin2(i)+2
      if(i2.lt.1) i2=1
      if(i2.gt.nv2(i)+2) i2=nv2(i)+2
      vm(i1,i2,i)=vm(i1,i2,i)+ff/vol(i)
404   nvm(i1,i2,i)=nvm(i1,i2,i)+1
405   continue
      if(nave.eq.0)go to 99
      do 22 i=1,nave
      zav(i)=zav(i)+av(i)*ff
      ztv(i)=ztv(i)+ff*ff*av(i)/pdx
22    zsv(i)=zsv(i)+(av(i)*ff)**2/pdx
99    return
      entry plotit(now,ff,pdx)
      if(nls.eq.0)go to 315
      if(kk.gt.0)go to 307
      do 306 i=1,nls
      nlps=nlp(i)+2
      do 306 j=1,nlps
      mlsn(j,i)=nlsn(j,i)
306   yls(j,i)=xls(j,i)
      go to 310
307   vbef=vtot
      vu=(v/u)**2
      do 309 i=1,nls
      nlps=nlp(i)+2
      do 309 j=1,nlps
      if(nlsn(j,i).eq.0)go to 309
      if(mlsn(j,i).eq.0)go to 308
      al1=vu/nlsn(j,i)
      al2=vbef/mlsn(j,i)
      mlsn(j,i)=mlsn(j,i)+nlsn(j,i)
      yls(j,i)=(al2*xls(j,i)+al1*yls(j,i))/(al1+al2)
      go to 309
308   mlsn(j,i)=nlsn(j,i)
      yls(j,i)=xls(j,i)
309   continue
310   continue
      do 311 i=1,nls
      sxf=xlsq(i)-xlav(i)*xlav(i)
      sxt=xltq(i)-xlav(i)*u
      sx2=xlsq(i)/xlav(i)**2+fsqa/u**2-2.*xltq(i)/(xlav(i)*u)
      sx2=sx2*(xlav(i)/u)**2
      if(kt.ne.1)go to 312
      xlava(i)=xlav(i)/u
      sxa(i)=sx2
      go to 311
312   xhelp=sx2+sxa(i)
      if(xhelp.eq.0)go to 311
      xlava(i)=(xlav(i)*sxa(i)/u+xlava(i)*sx2)/xhelp
      sxa(i)=sxa(i)*sx2/xhelp
311   continue
      vtot=(si/y)**2
      if(now.ne.2)go to 315
      do 341 i=1,nls
      top(i)=0.
      nlps=nlp(i)+1
      do 341 j=2,nlps
      xls(j,i)=yls(j,i)/y
      if(xls(j,i).gt.top(i))top(i)=xls(j,i)
341   continue
      do 342 i=1,nls
      if(ltop(i).le.0)ltop(i)=i
      lto=ltop(i)
      if(top(i).gt.top(lto))top(lto)=top(i)
342   continue
      ylog=0.5*dlog10(y*y)
      do 314 i=1,nls
      print 321,i
      nlps=nlp(i)+1
      lto=ltop(i)
      top(i)=top(lto)
      if(top(i).eq.0)top(i)=1.
      an1=dlog10(top(i))
      n1=an1
      if(n1.gt.an1)n1=n1-1
      z1=top(i)*10.**(-n1)
      do 343 l=1,4
      if(z1.lt.tlim(l))go to 344
343   continue
      l=5
344   if(top(i).lt.1.6/(xlmax(i)-xlmin(i)))l=l+1
      topm=tlim(l)*10.**n1
      do 345 j=2,nlps
      nbin(j)=xls(j,i)*40./topm+1.5
      if(ll(i).lt.0)nbin(j)=0
      if(xls(j,i).le.0) go to 346
      tlog(j)=dlog10(xls(j,i))
      slog(j)=tlog(j)+ylog
      nlog(j)=(tlog(j)-n1)*8.+33.5
      if(ll(i).gt.0)nlog(j)=0
      go to 345
346   slog(j)=0
      tlog(j)=0
      nlog(j)=0
345   continue
      print 322,(text(j,i),j=1,8)
      n1p1=n1+1
      n1m4=n1-4
      print 323,tlim(l),n1,n1p1,n1m4
      do 347 l=1,40
      char(l)=hmin
      if(nlog(l+1).eq.41)char(l)=hplus
      if(nbin(l+1).eq.41)char(l)=hstar
347   continue
      xmin=xlmin(i)
      xmax=xmin+dls(i)
      print 324,xmin,xmax,yls(2,i),slog(2),xls(2,i),tlog(2)
     1,mlsn(2,i),char
      do 348 j=3,nlps
      xmin=xmax
      xmax=xmin+dls(i)
      do 349 l=1,40
      char(l)=hblank
      if(nlog(l+1).eq.43-j)char(l)=hplus
      if(nbin(l+1).eq.43-j)char(l)=hstar
349   continue
      print 324,xmin,xmax,yls(j,i),slog(j),xls(j,i),tlog(j)
     1,mlsn(j,i),char
348   continue
      nlps1=nlps+1
      if(nlps.eq.41)go to 352
      do 351 j=nlps1,41
      do 350 l=1,40
      char(l)=hblank
      if(nlog(l+1).eq.43-j)char(l)=hplus
      if(nbin(l+1).eq.43-j)char(l)=hstar
350   continue
351   print 325,char
352   do 353 l=1,40
      char(l)=hmin
      if(nlog(l+1).eq.1)char(l)=hplus
      if(nbin(l+1).eq.1)char(l)=hstar
353   continue
      print 326,char
      el1=yls(1,i)*dls(i)
      el2=el1/y
      print 327,el1,el2,mlsn(1,i)
      el1=yls(42,i)*dls(i)
      el2=el1/y
      print 328,el1,el2,mlsn(nlps1,i)
      sxsq=dsqrt(sxa(i)/itt)
      print 329,xlava(i),sxsq
314   continue
315   continue
      if(ndd.eq.0)go to 409
      wbef=wtot
      do 500 i=1,ndd
      nx=nv1(i)+2
      ny=nv2(i)+2
      if(kk.gt.0)go to 502
      do 501 j=1,nx
      do 501 k=1,ny
      wm(j,k,i)=vm(j,k,i)
501   mvm(j,k,i)=nvm(j,k,i)
      go to 500
502   vu=(v/u)**2
      do 503 j=1,nx
      do 503 k=1,ny
      if(nvm(j,k,i).eq.0)go to 503
      if(mvm(j,k,i).eq.0)go to 504
      al1=vu/nvm(j,k,i)
      al2=vbef/mvm(j,k,i)
      mvm(j,k,i)=mvm(j,k,i)+nvm(j,k,i)
      wm(j,k,i)=(al2*vm(j,k,i)+al1*wm(j,k,i))/(al1+al2)
      go to 503
504   mvm(j,k,i)=nvm(j,k,i)
      wm(j,k,i)=vm(j,k,i)
503   continue
500   continue
      wtot=(si/y)**2
      if(now.ne.2) go to 409
      do 408 i=1,ndd
      print 481,i,(vtext(j,i),j=1,6)
      vvv=v2max(i)
      mvv=nv1(i)+2
      nvv=nv2(i)+1
      size=vol(i)/y
      do 406 i2=1,nvv
      j2=nvv+2-i2
      do 410 i1=1,mvv
410   numb(i1)=1000.*wm(i1,j2,i)*size+.5
      print 486,(numb(i1),i1=1,mvv)
      print 483,(wm(i1,j2,i),i1=1,mvv)
      print 486,(mvm(i1,j2,i),i1=1,mvv)
      print 484,vvv
      vvv=vvv-bin2(i)
      if(dabs(vvv/bin2(i)).lt.1.d-10)vvv=0.
406   continue
      do 411 i1=1,mvv
411   numb(i1)=1000.*wm(i1,1,i)*size+.5
      print 486,(numb(i1),i1=1,mvv)
      print 483,(wm(i1,1,i),i1=1,mvv)
      print 486,(mvm(i1,1,i),i1=1,mvv)
      print 482
      mvv=mvv-1
      do 407 i1=1,mvv
      hv(i1)=v1min(i)+(i1-1)*bin1(i)
      if(dabs(hv(i1)/bin1(i)).lt.1.d-10)hv(i1)=0.
407   continue
      print 485,(hv(i1),i1=1,mvv)
408   continue
409   continue
      if(nave.eq.0) go to 23
      if(now.eq.2) print 26
      do 24 i=1,nave
      sxf=zsv(i)-zav(i)*zav(i)
      sxt=zsv(i)/zav(i)**2+fsqa/u**2-2.*ztv(i)/(zav(i)*u)
      sx2=sxt*(zav(i)/u)**2
      if(kt.ne.1) go to 21
      yav(i)=zav(i)/u
      ysv(i)=sx2
      go to 30
21    xhelp=sx2+ysv(i)
      if(xhelp.eq.0)go to 30
      yav(i)=(ysv(i)*zav(i)/u+yav(i)*sx2)/xhelp
      ysv(i)=ysv(i)*sx2/xhelp
30    yssq=dsqrt(ysv(i)/itt)
      if(now.eq.2)print 27,i,yav(i),yssq
24    continue
23    now=1
      kk=kk+1
      return
27    format(12x,i2,9x,d15.5,5x,d15.3)
26    format(1h1,10x)
321   format(1h1,40x,
     140hsingle differential cross-section number,i3///)
322   format(38h single differential cross section of ,8a4/)
323   format(11x,6hlimits,9x,1hi,16x,
     119haccumulated results,15x,1hi,24x,
     29hupper bin,6x,9hlower bin/26x,1hi,50x,
     320hi * linear      plot,f8.2,5h*10**,i3,8x,1h0/5x,
     45hlower,7x,5hupper,4x,1hi,5x,5hds/dx,4x,
     556halog10   (ds/dx)/s  alog10  points  i + logarithmic plot,
     66x,4h10**,i3,8x,4h10**,i3/2x,24(1h-),1hi,50(1h-),1hi)
324   format(d12.4,d12.4,3h  i,2(d12.4,f8.2),i8,3h  i,
     14x,1hi,40a1,1hi)
325   format(26x,1hi,50x,1hi,4x,1hi,40a1,1hi)
326   format(2x,24(1h-),1hi,50(1h-),1hi,4x,1hi,40a1,1hi)
327   format(7x,15htotal underflow,4x,1hi,d12.4,
     1d20.4,i16,2x,1hi)
328   format(7x,15htotal  overflow,4x,1hi,d12.4,d20.4,
     1i16,2x,1hi)
329   format(//19x,21haccumulated average =,d12.5
     1/19x,21hestimated error     =,d12.5)
481   format(1h1,45x)
482   format(20x,11(1hi,9x))
483   format(11x,d9.3,11(1hi,d9.3))
484   format(1x,d10.3,  9h---------,11(10hi---------))
485   format(1h0,14x,11d10.3)
486   format(11x,i8,1x,11(1hi,i8,1x))
810   format(i2)
811   format(2d12.4,3i2,8a4)
812   format(2(2d10.3,i4),6a4)
813   format(12h1***error***,10x,24htoo many plots requested/)
814   format(37h1number of single differential cross
     1,20hsections requested =,i3/)
815   format(30h information on the data cards//
     13h  i,10x,5hxlmin,12x,5hxlmax,7x,
     224hbins  correllation  type,19x,4htext/)
816   format(i3,2e17.4,i8,i9,i10,5x,8a4)
817   format(37h0number of double differential cross
     1,20hsections requested =,i3/)
818   format(30h information on the data cards//
     13h  i,8x,5hv1min,10x,5hv1max,4x,4hbins,8x,5hv2min
     2,10x,5hv2max,4x,4hbins,8x,6htext 1,8x,6htext 2/)
819   format(i3,2d15.3,i5,1x,2d15.3,i5,6x,3a4,2x,3a4)
820   format(31h0number of averages requested =,i3)
      end
c
       subroutine in55(ia,ix)
       parameter (modulo=1000000000)
       integer ia(55)
       ia(55)=ix
       j=ix
       k=1
       do 10 i=1,54
       ii=mod(21*i,55)
       ia(ii)=k
       k=j-k
       if(k.lt.0)k=k+modulo
       j=ia(ii)
   10  continue
       do 20 i=1,10
       call irn55(ia)
   20  continue
       end

       subroutine irn55(ia)
       parameter (modulo=1000000000)
       integer ia(55)
       do 10 i=1,24
       j=ia(i)-ia(i+31)
       if(j.lt.0)j=j+modulo
       ia(i)=j
   10  continue
       do 20 i=25,55
       j=ia(i)-ia(i-24)
       if(j.lt.0)j=j+modulo
       ia(i)=j
   20  continue
       end

       double precision function ranf(dummy)
*
*      random number function taken from knuth
*      (seminumerical algorithms).
*      method is x(n)=mod(x(n-55)-x(n-24),1/fmodul)
*      no provision yet for control over the seed number.
*
*      ranf gives one random number between 0 and 1.
*      irn55 generates 55 random numbers between 0 and 1/fmodul.
*      in55  initializes the 55 numbers and warms up the sequence.
*
        implicit double precision (a-h,o-z)
       parameter (fmodul=1.d-09)
       integer ia(55)
       save ia
       data ncall/0/
       data mcall/55/
       if( ncall.eq.0 ) then
           call in55 ( ia,234612947 )
           ncall = 1
       endif
       if ( mcall.eq.0 ) then
           call irn55(ia)
           mcall=55
       endif
       ranf=ia(mcall)*fmodul
       mcall=mcall-1
       end

      subroutine save(ndim,ntape)
      implicit double precision (a-h,o-z)
      common/bveg2/ndo,it,si,si2,swgt,schi,xi(50,10),scalls
     1 ,d(50,10),di(50,10),nxi(50,10)
c
c   stores vegas data (unit ntape) for later re-initialization
      write(ntape,200) ndo,it,si,si2,swgt,schi,
     1      ((xi(i,j),i=1,ndo),j=1,ndim)
     2     ,((di(i,j),i=1,ndo),j=1,ndim)
      return
      entry restr(ndim,ntape)
c
c   enters initialization data for vegas
      read(ntape,200) ndo,it,si,si2,swgt,schi,
     1      ((xi(i,j),i=1,ndo),j=1,ndim)
     2     ,((di(i,j),i=1,ndo),j=1,ndim)
200   format(2i8,4z16/(5z16))
      return
      end
