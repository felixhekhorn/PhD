CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C                                                                      C
C                     ==========================                       C
C                     | POLHQ  V0.1  FEB 1998 |                        C
C                     ==========================                       C
C                                                                      C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      program polhq
      implicit double precision (a-z)
      integer n1,n2
c
      external cq,cbarq
c
      common/color/cf
      common/result/s1,s2,s3,s4
      common/par/eta
c
      cf = 4.d0/3.d0
c
      WRITE (*,*) ' '
      WRITE (*,*) '=========================='
      WRITE (*,*) '| POLHQ  V0.1  FEB 1998  |'
      WRITE (*,*) '=========================='
      WRITE (*,*) ' '

c ***
      do 100 n1=-3,4,1
         do 300 n2=1,9,1
ccc         n2=1
            eta=dble(n2)*10.d0**n1
            if(eta.gt.10001.d0) goto 100
            CALL VEGAS(cq,1.d-6,2,10000,6,0,0)
            write(6,200) eta,s1,s2
 200        format(3(1pe12.5,1x))
 300     continue
 100  continue
      STOP
      END
c ***
      double precision function cbarq(x)
      implicit double precision (a-z)
      dimension x(10)
      common/par/eta
      pi = 3.1415926d0
      m = 10.d0
      m2 = m*m
      s = 4.d0*m2*(1.d0+eta)
      mt1up = s/2.d0 * (1.d0+sqrt(eta/(1.d0+eta)))
      mt1do = s/2.d0 * (1.d0-sqrt(eta/(1.d0+eta)))
      mt1 = mt1do + x(1) * (mt1up-mt1do)
      t1 = -mt1
      mu1up = s+t1
      mu1do = -s *m2/t1
      mu1 = mu1do + x(2) * (mu1up-mu1do)
      u1 = -mu1
      jacob = (mt1up-mt1do) * (mu1up-mu1do)
      cbarq = m2/s**2/4/pi * jacob * qeh2fact(s,t1,u1,m,muf2)
      return
      end
c ***
      double precision function cq(x)
      implicit double precision (a-z)
      dimension x(10)
      common/par/eta
      pi = 3.1415926d0
      m = 1.d0
      m2 = m*m
      s = 4.d0*m2*(1.d0+eta)
      mt1up = s/2.d0 * (1.d0+sqrt(eta/(1.d0+eta)))
      mt1do = s/2.d0 * (1.d0-sqrt(eta/(1.d0+eta)))
      mt1 = mt1do + x(1) * (mt1up-mt1do)
      t1 = -mt1
      mu1up = s+t1
      mu1do = -s *m2/t1
      mu1 = mu1do + x(2) * (mu1up-mu1do)
      u1 = -mu1
      jacob = (mt1up-mt1do) * (mu1up-mu1do)
      cq = m2/s**2/4/pi * jacob * (qeh2finite(s,t1,u1,m)+
     1                             qeh2pole(s,t1,u1,m)) 
      return
      end

c *** UNPOLARIZED MATRIX ELEMENT 
c *** gamma + qbar -> qbar Q QBar
c *** eh^2 PART 
c
      double precision function qeh2fact(s,t1,u1,m,muf2)
      implicit double precision (a-z)
      common/color/cf
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
      double precision function qeh2pole(s,t1,u1,m)
      implicit double precision (a-z)
      common/color/cf
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
ccc      part2=0.d0
      qeh2pole = (part1+part2)
      return
      end
C ***
      double precision function qeh2finite(s,t1,u1,m)
      implicit double precision (a-z)
      common/color/cf
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
ccc      qehfinite =0.d0
      return
      end


c ************************************************************************
C   20/02/90 002201221  MEMBER NAME  VEGAS    (HEAVYQ)      FVS
      SUBROUTINE VEGAS(FXN,BCC,NDIM,NCALL,ITMX,NPRN,IGRAPH)
      IMPLICIT DOUBLE PRECISION ( A-H,O-Z )
      COMMON/BVEG2/NDO,IT,SI,SI2,SWGT,SCHI,XI(50,10),SCALLS
     + ,D(50,10),DI(50,10),NXI(50,10)
      DIMENSION XIN(50),R(50),DX(10),IA(10),KG(10),DT(10)
      DIMENSION XL(10),XU(10),QRAN(10),X(10)
      COMMON/RESULT/S1,S2,S3,S4
      EXTERNAL FXN
      DATA XL,XU/10*0.D+00,10*1.D+00/
      DATA NDMX/50/,ALPH/1.5/,ONE/1./,MDS/1/
      IPR=1
      IF(NPRN.GT.0)IPR=0
      NDO=1
      DO 1 J=1,NDIM
    1 XI(1,J)=ONE
      ENTRY VEGAS1(FXN,BCC,NDIM,NCALL,ITMX,NPRN,IGRAPH)
      NOW=IGRAPH
CSR      IF(IGRAPH.GT.0)CALL INPLOT(NOW,F1,W)
      IT=0
      SI=0.
      SI2=SI
      SWGT=SI
      SCHI=SI
      SCALLS=SI
      ENTRY VEGAS2(FXN,BCC,NDIM,NCALL,ITMX,NPRN,IGRAPH)
      ND=NDMX
      NG=1
      IF(MDS.EQ.0) GO TO 2
      NG=(NCALL*0.5D+00)**(1.D+00/NDIM)
      MDS=1
      IF((2*NG-NDMX).LT.0) GO TO 2
      MDS=-1
      NPG=NG/NDMX+1
      ND=NG/NPG
      NG=NPG*ND
    2 K=NG**NDIM
      NPG=NCALL/K
      IF(NPG.LT.2)NPG=2
      CALLS=NPG*K
      DXG=ONE/NG
      DV2G=DXG**(2*NDIM)/NPG/NPG/(NPG-ONE)
      XND=ND
      NDM=ND-1
      DXG=DXG*XND
      XJAC=ONE
      DO 3 J=1,NDIM
        DX(J)=XU(J)-XL(J)
    3 XJAC=XJAC*DX(J)
      IF(ND.EQ.NDO) GO TO 8
      RC=NDO/XND
      DO 7 J=1,NDIM
        K=0
        XN=0.
        DR=XN
        I=K
    4   K=K+1
        DR=DR+ONE
        XO=XN
        XN=XI(K,J)
    5   IF(RC.GT.DR) GO TO 4
        I=I+1
        DR=DR-RC
        XIN(I)=XN-(XN-XO)*DR
        IF(I.LT.NDM) GO TO 5
        DO 6  I=1,NDM
    6   XI(I,J)=XIN(I)
    7 XI(ND,J)=ONE
      NDO=ND
      ACC=BCC
    8 IF(NPRN.NE.0.AND.NPRN.NE.10)PRINT 200,NDIM,CALLS,IT,ITMX
     1,ACC,MDS,ND
      IF(NPRN.EQ.10)PRINT 290,NDIM,CALLS,ITMX,ACC,MDS,ND
      ENTRY VEGAS3(FXN,BCC,NDIM,NCALL,ITMX,NPRN,IGRAPH)
    9 IT=IT+1
      TI=0.
      TSI=TI
CSR      IF(IGRAPH.GT.0)CALL REPLOT(NOW,F1,W)
      DO 10 J=1,NDIM
        KG(J)=1
        DO 10 I=1,ND
          NXI(I,J)=0
          D(I,J)=TI
   10 DI(I,J)=TI
   11 FB=0.
      F2B=FB
      K=0
   12 K=K+1
      DO 121 J=1,NDIM
  121 QRAN(J)=RANF(0)
      WGT=XJAC
      DO 15 J=1,NDIM
        XN=(KG(J)-QRAN(J))*DXG+ONE
        IA(J)=XN
        IAJ=IA(J)
        IAJ1=IAJ-1
        IF(IAJ.GT.1) GO TO 13
        XO=XI(IAJ,J)
        RC=(XN-IAJ)*XO
        GO TO 14
   13   XO=XI(IAJ,J)-XI(IAJ1,J)
        RC=XI(IAJ1,J)+(XN-IAJ)*XO
   14   X(J)=XL(J)+RC*DX(J)
   15 WGT=WGT*XO*XND
      F=FXN(X)*WGT
      F1=F/CALLS
      W=WGT/CALLS
CSR      IF(IGRAPH.GT.0)CALL XPLOT(NOW,F1,W)
      F2=F*F
      FB=FB+F
      F2B=F2B+F2
      DO 16 J=1,NDIM
        IAJ=IA(J)
        NXI(IAJ,J)=NXI(IAJ,J)+1
        DI(IAJ,J)=DI(IAJ,J)+F/CALLS
   16 IF(MDS.GE.0)  D(IAJ,J)=D(IAJ,J)+F2
      IF(K.LT.NPG) GO TO 12
      F2B=F2B*NPG
      F2B=DSQRT(F2B)
      F2B=(F2B-FB)*(F2B+FB)
      TI=TI+FB
      TSI=TSI+F2B
      IF(MDS.GE.0) GO TO 18
      DO 17 J=1,NDIM
        IAJ=IA(J)
   17 D(IAJ,J)=D(IAJ,J)+F2B
   18 K=NDIM
   19 KG(K)=MOD(KG(K),NG)+1
      IF(KG(K).NE.1) GO TO 11
      K=K-1
      IF(K.GT.0) GO TO 19
      TI=TI/CALLS
      TSI=TSI*DV2G
      TI2=TI*TI
      WGT=TI2/TSI
      SI=SI+TI*WGT
      SI2=SI2+TI2
      SWGT=SWGT+WGT
      SCHI=SCHI+TI2*WGT
      SCALLS=SCALLS+CALLS
      AVGI=SI/SWGT
      SD=SWGT*IT/SI2
      CHI2A=0.
      IF(IT.GT.1)CHI2A=SD*(SCHI/SWGT-AVGI*AVGI)/(IT-1)
      SD=ONE/SD
      SD=DSQRT(SD)
      IF(NPRN.EQ.0) GO TO 21
      TSI=DSQRT(TSI)
      IF(NPRN.NE.10)PRINT 201,IPR,IT,TI,TSI,AVGI,SD,CHI2A
      IF(NPRN.EQ.10)PRINT 203,IT,TI,TSI,AVGI,SD,CHI2A
      IF(NPRN.GE.0) GO TO 21
      DO 20 J=1,NDIM
        PRINT 202,J
   20 PRINT 204,(XI(I,J),DI(I,J),D(I,J),I=1,ND)
   21 IF(DABS(SD/AVGI).LE.DABS(ACC).OR.IT.GE.ITMX)NOW=2
      S1=AVGI
      S2=SD
      S3=TI
      S4=TSI
CSR      IF(IGRAPH.GT.0)CALL PLOTIT(NOW,F1,W)
C      DO 23 J=1,NDIM
C      XO=D(1,J)
C      XN=D(2,J)
C      D(1,J)=(XO+XN)*0.5
C      DT(J)=D(1,J)
C      DO 22 I=2,NDM
C      D(I,J)=XO+XN
C      XO=XN
C      XN=D(I+1,J)
C      D(I,J)=(D(I,J)+XN)/3.
C22    DT(J)=DT(J)+D(I,J)
C      D(ND,J)=(XN+XO)*0.5
C23    DT(J)=DT(J)+D(ND,J)
C-----THIS PART OF THE VEGAS-ALGORITHM IS UNSTABLE
C-----IT SHOULD BE REPLACED BY
      DO 23 J=1,NDIM
        DT(J)=0.
        DO 23 I=1,ND
          IF(NXI(I,J).GT.0)D(I,J)=D(I,J)/NXI(I,J)
   23 DT(J)=DT(J)+D(I,J)
      DO 28 J=1,NDIM
        RC=0.
        DO 24 I=1,ND
          R(I)=0.
          IF(D(I,J).LE.0.)GO TO 24
          XO=DT(J)/D(I,J)
          R(I)=((XO-ONE)/XO/DLOG(XO))**ALPH
   24   RC=RC+R(I)
        RC=RC/XND
        K=0
        XN=0.
        DR=XN
        I=K
   25   K=K+1
        DR=DR+R(K)
        XO=XN
        XN=XI(K,J)
   26   IF(RC.GT.DR) GO TO 25
        I=I+1
        DR=DR-RC
        XIN(I)=XN-(XN-XO)*DR/R(K)
        IF(I.LT.NDM) GO TO 26
        DO 27 I=1,NDM
   27   XI(I,J)=XIN(I)
   28 XI(ND,J)=ONE
      IF(IT.LT.ITMX.AND.DABS(ACC).LT.DABS(SD/AVGI))GO TO 9
  200 FORMAT(35H0INPUT PARAMETERS FOR VEGAS   NDIM=,I3
     1,8H  NCALL=,F8.0/28X,5H  IT=,I5,8H  ITMX =,I5/28X
     2,6H  ACC=,G9.3/28X,6H  MDS=,I3,6H   ND=,I4//)
  290 FORMAT(13H0VEGAS  NDIM=,I3,8H  NCALL=,F8.0,8H  ITMX =,I5
     1,6H  ACC=,G9.3,6H  MDS=,I3,6H   ND=,I4)
  201 FORMAT(/I1,20HINTEGRATION BY VEGAS/13H0ITERATION NO,I3,
     114H.   INTEGRAL =,G14.8/20X,10HSTD DEV  =,G10.4/
     234H ACCUMULATED RESULTS.   INTEGRAL =,G14.8/
     324X,10HSTD DEV  =,G10.4 / 24X,18HCHI**2 PER ITN   =,G10.4)
  202 FORMAT(14H0DATA FOR AXIS,I2 / 7X,1HX,7X,10H  DELT I  ,
     12X,11H CONVCE    ,11X,1HX,7X,10H  DELT I  ,2X,11H CONVCE
     2,11X,1HX,7X,10H  DELT I  ,2X,11H CONVCE     /)
  204 FORMAT(1X,3G12.4,5X,3G12.4,5X,3G12.4)
  203 FORMAT(1H ,I3,G20.8,G12.4,G20.8,G12.4,G12.4)
      S1=AVGI
      S2=SD
      S3=CHI2A
      RETURN
      END

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      SUBROUTINE INPLOT(NOW,FF,PDX)
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
CGERHARD
      INTEGER IFILE
      COMMON/LPLOT/XL(25),V1(10),V2(10),AV(10)
      DIMENSION ZAV(10),YAV(10),ZSV(10),YSV(10),ZTV(10)
      DIMENSION XLMAX(25),XLMIN(25),NLP(25),LTOP(25),TEXT(8,25),LL(25)
      DIMENSION NUMB(12)
      DIMENSION XLS(42,25),YLS(42,25),NLSN(42,25),MLSN(42,25),DLS(25)
     1,XLAV(25),XLSQ(25),XLAVA(25),SXA(25),TLIM(6),TOP(25),XLTQ(25)
      DIMENSION NBIN(41),NLOG(41),SLOG(41),TLOG(41),HV(12)
      DIMENSION V1MAX(10),V1MIN(10),V2MAX(10),V2MIN(10),NV1(10)
     1,NV2(10),VTEXT(6,10)
      DIMENSION VM(12,12,10),NVM(12,12,10),BIN1(10),BIN2(10),VOL(10)
     1,WM(12,12,10),MVM(12,12,10)
      COMMON/RESULT/Y,SI,U,V
      CHARACTER*1 HMIN,HPLUS,HBLANK,HSTAR,CHAR(40)
      SAVE
      DATA TLIM/1.6D+00,2.5D+00,4.0D+00,6.666666667D+00,10.D+00,
     +16.D+00/
      DATA HMIN,HPLUS,HBLANK,HSTAR/'-','+',' ','*'/
      DATA MLS,MAV,NDMAX/25,10,10/
      DATA NGRAPH/0/
CGERHARD
      DATA IFILE /5/
      IGRAPH=NOW
      NOW=0
      KK=0
      ITT=0
      IF(IGRAPH.LE.0) GO TO 800
      IF(IGRAPH.NE.NGRAPH)READ (IFILE,810)NLS
      IF(IGRAPH.NE.NGRAPH)PRINT 814,NLS
      IF(NLS.LT.0) NLS=0
      IF(NLS.EQ.0) GO TO 802
      IF(NLS.GT.MLS) GO TO 807
      IF(IGRAPH.NE.NGRAPH)PRINT 815
      DO 801 I=1,NLS
        IF(IGRAPH.NE.NGRAPH)
     1READ (IFILE,811)XLMIN(I),XLMAX(I),NLP(I),LTOP(I),LL(I),
     2(TEXT(J,I),J=1,8)
        IF(IGRAPH.NE.NGRAPH) PRINT 816,I,XLMIN(I),XLMAX(I)
     1,NLP(I),LTOP(I),LL(I),(TEXT(J,I),J=1,8)
        IF(NLP(I).LT.1)NLP(I)=1
        IF(NLP(I).GT.40)NLP(I)=40
        DLS(I)=(XLMAX(I)-XLMIN(I))/NLP(I)
        NLPS=NLP(I)+2
        DO 300 J=1,NLPS
          YLS(J,I)=0
  300   MLSN(J,I)=0
  801 CONTINUE
  802 IF(IGRAPH.NE.NGRAPH) READ (IFILE,810)NDD
      IF(IGRAPH.NE.NGRAPH) PRINT 817,NDD
      IF(NDD.LT.0) NDD=0
      IF(NDD.EQ.0) GO TO 804
      IF(NDD.GT.NDMAX) GO TO 807
      IF(IGRAPH.NE.NGRAPH) PRINT 818
      DO 803 I=1,NDD
        IF(IGRAPH.NE.NGRAPH)
     1READ (IFILE,812)V1MIN(I),V1MAX(I),NV1(I),V2MIN(I),V2MAX(I),NV2(I)
     1,(VTEXT(J,I),J=1,6)
        IF(IGRAPH.NE.NGRAPH) PRINT 819,I,V1MIN(I),V1MAX(I),NV1(I)
     1,V2MIN(I),V2MAX(I),NV2(I),(VTEXT(J,I),J=1,6)
        IF(NV1(I).LT.1)NV1(I)=1
        IF(NV2(I).LT.1)NV2(I)=1
        IF(NV1(I).GT.10)NV1(I)=10
        IF(NV2(I).GT.10)NV2(I)=10
        BIN1(I)=(V1MAX(I)-V1MIN(I))/NV1(I)
        BIN2(I)=(V2MAX(I)-V2MIN(I))/NV2(I)
        VOL(I)=BIN1(I)*BIN2(I)
  803 CONTINUE
      WTOW=0.
      DO 805 I=1,NDD
        DO 805 J=1,12
          DO 805 K=1,12
            WM(K,J,I)=0.
  805 MVM(K,J,I)=0
  804 CONTINUE
      IF(IGRAPH.NE.NGRAPH)READ (IFILE,810)NAVE
      IF(IGRAPH.NE.NGRAPH)PRINT 820,NAVE
      IF(NAVE.LT.0)NAVE=0
      IF(NAVE.GT.MAV)GO TO 807
      DO 11 I=1,MAV
        YAV(I)=0.
   11 YSV(I)=0.
      KT=0
      GO TO 808
  800 NAVE=0
      NLS=0
      NDD=0
      GO TO 808
  807 PRINT 813,MAV,MLS,NDMAX
      STOP
  808 NGRAPH=IGRAPH
      RETURN
      ENTRY REPLOT(NOW,FF,PDX)
      IF(NAVE.EQ.0) GO TO 49
      DO 62 I=1,NAVE
        ZAV(I)=0.
        ZTV(I)=0.
   62 ZSV(I)=0.
   49 FSQA=0.
      KT=KT+1
      IF(NLS.EQ.0) GO TO 303
      DO 302 I=1,NLS
        NLPS=NLP(I)+2
        XLAV(I)=0
        XLTQ(I)=0.
        XLSQ(I)=0
        DO 302 J=1,NLPS
          XLS(J,I)=0
  302 NLSN(J,I)=0
  303 CONTINUE
      IF(NDD.EQ.0) GO TO 403
      DO 402 I=1,NDD
        N1=NV1(I)+2
        N2=NV2(I)+2
        DO 402 I1=1,N1
          DO 402 I2=1,N2
            VM(I1,I2,I)=0
  402 NVM(I1,I2,I)=0
  403 CONTINUE
      RETURN
      ENTRY XPLOT(NOW,FF,PDX)
      FSQA=FSQA+FF*FF/PDX
      ITT=ITT+1
      IF(NLS.EQ.0) GO TO 305
      DO 304  I=1,NLS
        NLPS=(XL(I)-XLMIN(I))/DLS(I)+1.
        IF(NLPS.LT.0)NLPS=0
        IF(NLPS.GT.NLP(I))NLPS=NLP(I)+1
        NLPS=NLPS+1
        XLS(NLPS,I)=XLS(NLPS,I)+FF/DLS(I)
        NLSN(NLPS,I)=NLSN(NLPS,I)+1
        XLAV(I)=XLAV(I)+FF*XL(I)
        XLTQ(I)=XLTQ(I)+FF*FF*XL(I)/PDX
  304 XLSQ(I)=XLSQ(I)+(FF*XL(I))**2/PDX
  305 CONTINUE
      IF(NDD.EQ.0)GO TO 405
      DO 404 I=1,NDD
        I1=(V1(I)-V1MIN(I))/BIN1(I)+2
        IF(I1.LT.1) I1=1
        IF(I1.GT.NV1(I)+2) I1=NV1(I)+2
        I2=(V2(I)-V2MIN(I))/BIN2(I)+2
        IF(I2.LT.1) I2=1
        IF(I2.GT.NV2(I)+2) I2=NV2(I)+2
        VM(I1,I2,I)=VM(I1,I2,I)+FF/VOL(I)
  404 NVM(I1,I2,I)=NVM(I1,I2,I)+1
  405 CONTINUE
      IF(NAVE.EQ.0)GO TO 99
      DO 22 I=1,NAVE
        ZAV(I)=ZAV(I)+AV(I)*FF
        ZTV(I)=ZTV(I)+FF*FF*AV(I)/PDX
   22 ZSV(I)=ZSV(I)+(AV(I)*FF)**2/PDX
   99 RETURN
      ENTRY PLOTIT(NOW,FF,PDX)
      IF(NLS.EQ.0)GO TO 315
      IF(KK.GT.0)GO TO 307
      DO 306 I=1,NLS
        NLPS=NLP(I)+2
        DO 306 J=1,NLPS
          MLSN(J,I)=NLSN(J,I)
  306 YLS(J,I)=XLS(J,I)
      GO TO 310
  307 VBEF=VTOT
      VU=(V/U)**2
      DO 309 I=1,NLS
        NLPS=NLP(I)+2
        DO 309 J=1,NLPS
          IF(NLSN(J,I).EQ.0)GO TO 309
          IF(MLSN(J,I).EQ.0)GO TO 308
          AL1=VU/NLSN(J,I)
          AL2=VBEF/MLSN(J,I)
          MLSN(J,I)=MLSN(J,I)+NLSN(J,I)
          YLS(J,I)=(AL2*XLS(J,I)+AL1*YLS(J,I))/(AL1+AL2)
          GO TO 309
  308     MLSN(J,I)=NLSN(J,I)
          YLS(J,I)=XLS(J,I)
  309 CONTINUE
  310 CONTINUE
      DO 311 I=1,NLS
        SXF=XLSQ(I)-XLAV(I)*XLAV(I)
        SXT=XLTQ(I)-XLAV(I)*U
        SX2=XLSQ(I)/XLAV(I)**2+FSQA/U**2-2.*XLTQ(I)/(XLAV(I)*U)
        SX2=SX2*(XLAV(I)/U)**2
        IF(KT.NE.1)GO TO 312
        XLAVA(I)=XLAV(I)/U
        SXA(I)=SX2
        GO TO 311
  312   XHELP=SX2+SXA(I)
        IF(XHELP.EQ.0)GO TO 311
        XLAVA(I)=(XLAV(I)*SXA(I)/U+XLAVA(I)*SX2)/XHELP
        SXA(I)=SXA(I)*SX2/XHELP
  311 CONTINUE
      VTOT=(SI/Y)**2
      IF(NOW.NE.2)GO TO 315
      DO 341 I=1,NLS
        TOP(I)=0.
        NLPS=NLP(I)+1
        DO 341 J=2,NLPS
          XLS(J,I)=YLS(J,I)/Y
          IF(XLS(J,I).GT.TOP(I))TOP(I)=XLS(J,I)
  341 CONTINUE
      DO 342 I=1,NLS
        IF(LTOP(I).LE.0)LTOP(I)=I
        LTO=LTOP(I)
        IF(TOP(I).GT.TOP(LTO))TOP(LTO)=TOP(I)
  342 CONTINUE
      YLOG=0.5*DLOG10(Y*Y)
      DO 314 I=1,NLS
        PRINT 321,I
        NLPS=NLP(I)+1
        LTO=LTOP(I)
        TOP(I)=TOP(LTO)
        IF(TOP(I).EQ.0)TOP(I)=1.
        AN1=DLOG10(TOP(I))
        N1=AN1
        IF(N1.GT.AN1)N1=N1-1
        Z1=TOP(I)*10.**(-N1)
        DO 343 L=1,4
          IF(Z1.LT.TLIM(L))GO TO 344
  343   CONTINUE
        L=5
  344   IF(TOP(I).LT.1.6/(XLMAX(I)-XLMIN(I)))L=L+1
        TOPM=TLIM(L)*10.**N1
        DO 345 J=2,NLPS
          NBIN(J)=XLS(J,I)*40./TOPM+1.5
          IF(LL(I).LT.0)NBIN(J)=0
          IF(XLS(J,I).LE.0) GO TO 346
          TLOG(J)=DLOG10(XLS(J,I))
          SLOG(J)=TLOG(J)+YLOG
          NLOG(J)=(TLOG(J)-N1)*8.+33.5
          IF(LL(I).GT.0)NLOG(J)=0
          GO TO 345
  346     SLOG(J)=0
          TLOG(J)=0
          NLOG(J)=0
  345   CONTINUE
        PRINT 322,(TEXT(J,I),J=1,8)
        N1P1=N1+1
        N1M4=N1-4
        PRINT 323,TLIM(L),N1,N1P1,N1M4
        DO 347 L=1,40
          CHAR(L)=HMIN
          IF(NLOG(L+1).EQ.41)CHAR(L)=HPLUS
          IF(NBIN(L+1).EQ.41)CHAR(L)=HSTAR
  347   CONTINUE
        XMIN=XLMIN(I)
        XMAX=XMIN+DLS(I)
        PRINT 324,XMIN,XMAX,YLS(2,I),SLOG(2),XLS(2,I),TLOG(2),MLSN(2,I)
     #,CHAR
        DO 348 J=3,NLPS
          XMIN=XMAX
          XMAX=XMIN+DLS(I)
          DO 349 L=1,40
            CHAR(L)=HBLANK
            IF(NLOG(L+1).EQ.43-J)CHAR(L)=HPLUS
            IF(NBIN(L+1).EQ.43-J)CHAR(L)=HSTAR
  349     CONTINUE
          PRINT 324,XMIN,XMAX,YLS(J,I),SLOG(J),XLS(J,I),TLOG(J),MLSN(J,
     &      I)
     1,CHAR
  348   CONTINUE
        NLPS1=NLPS+1
        IF(NLPS.EQ.41)GO TO 352
        DO 351 J=NLPS1,41
          DO 350 L=1,40
            CHAR(L)=HBLANK
            IF(NLOG(L+1).EQ.43-J)CHAR(L)=HPLUS
            IF(NBIN(L+1).EQ.43-J)CHAR(L)=HSTAR
  350     CONTINUE
  351   PRINT 325,CHAR
  352   DO 353 L=1,40
          CHAR(L)=HMIN
          IF(NLOG(L+1).EQ.1)CHAR(L)=HPLUS
          IF(NBIN(L+1).EQ.1)CHAR(L)=HSTAR
  353   CONTINUE
        PRINT 326,CHAR
        EL1=YLS(1,I)*DLS(I)
        EL2=EL1/Y
        PRINT 327,EL1,EL2,MLSN(1,I)
        EL1=YLS(42,I)*DLS(I)
        EL2=EL1/Y
        PRINT 328,EL1,EL2,MLSN(NLPS1,I)
        SXSQ=DSQRT(SXA(I)/ITT)
        PRINT 329,XLAVA(I),SXSQ
  314 CONTINUE
  315 CONTINUE
      IF(NDD.EQ.0)GO TO 409
      WBEF=WTOT
      DO 500 I=1,NDD
        NX=NV1(I)+2
        NY=NV2(I)+2
        IF(KK.GT.0)GO TO 502
        DO 501 J=1,NX
          DO 501 K=1,NY
            WM(J,K,I)=VM(J,K,I)
  501   MVM(J,K,I)=NVM(J,K,I)
        GO TO 500
  502   VU=(V/U)**2
        DO 503 J=1,NX
          DO 503 K=1,NY
            IF(NVM(J,K,I).EQ.0)GO TO 503
            IF(MVM(J,K,I).EQ.0)GO TO 504
            AL1=VU/NVM(J,K,I)
            AL2=VBEF/MVM(J,K,I)
            MVM(J,K,I)=MVM(J,K,I)+NVM(J,K,I)
            WM(J,K,I)=(AL2*VM(J,K,I)+AL1*WM(J,K,I))/(AL1+AL2)
            GO TO 503
  504       MVM(J,K,I)=NVM(J,K,I)
            WM(J,K,I)=VM(J,K,I)
  503   CONTINUE
  500 CONTINUE
      WTOT=(SI/Y)**2
      IF(NOW.NE.2) GO TO 409
      DO 408 I=1,NDD
        PRINT 481,I,(VTEXT(J,I),J=1,6)
        VVV=V2MAX(I)
        MVV=NV1(I)+2
        NVV=NV2(I)+1
        SIZE=VOL(I)/Y
        DO 406 I2=1,NVV
          J2=NVV+2-I2
          DO 410 I1=1,MVV
  410     NUMB(I1)=1000.*WM(I1,J2,I)*SIZE+.5
          PRINT 486,(NUMB(I1),I1=1,MVV)
          PRINT 483,(WM(I1,J2,I),I1=1,MVV)
          PRINT 486,(MVM(I1,J2,I),I1=1,MVV)
          PRINT 484,VVV
          VVV=VVV-BIN2(I)
          IF(DABS(VVV/BIN2(I)).LT.1.D-10)VVV=0.
  406   CONTINUE
        DO 411 I1=1,MVV
  411   NUMB(I1)=1000.*WM(I1,1,I)*SIZE+.5
        PRINT 486,(NUMB(I1),I1=1,MVV)
        PRINT 483,(WM(I1,1,I),I1=1,MVV)
        PRINT 486,(MVM(I1,1,I),I1=1,MVV)
        PRINT 482
        MVV=MVV-1
        DO 407 I1=1,MVV
          HV(I1)=V1MIN(I)+(I1-1)*BIN1(I)
          IF(DABS(HV(I1)/BIN1(I)).LT.1.D-10)HV(I1)=0.
  407   CONTINUE
        PRINT 485,(HV(I1),I1=1,MVV)
  408 CONTINUE
  409 CONTINUE
      IF(NAVE.EQ.0) GO TO 23
      IF(NOW.EQ.2) PRINT 26
      DO 24 I=1,NAVE
        SXF=ZSV(I)-ZAV(I)*ZAV(I)
        SXT=ZSV(I)/ZAV(I)**2+FSQA/U**2-2.*ZTV(I)/(ZAV(I)*U)
        SX2=SXT*(ZAV(I)/U)**2
        IF(KT.NE.1) GO TO 21
        YAV(I)=ZAV(I)/U
        YSV(I)=SX2
        GO TO 30
   21   XHELP=SX2+YSV(I)
        IF(XHELP.EQ.0)GO TO 30
        YAV(I)=(YSV(I)*ZAV(I)/U+YAV(I)*SX2)/XHELP
        YSV(I)=YSV(I)*SX2/XHELP
   30   YSSQ=DSQRT(YSV(I)/ITT)
        IF(NOW.EQ.2)PRINT 27,I,YAV(I),YSSQ
   24 CONTINUE
   23 NOW=1
      KK=KK+1
      RETURN
   27 FORMAT(12X,I2,9X,D15.5,5X,D15.3)
   26 FORMAT(1H1,10X,46HTHE FOLLOWING ARE AVERAGES WITH ERROR ESTIMATE/)
  321 FORMAT(1H1,40X,40HSINGLE DIFFERENTIAL CROSS-SECTION NUMBER,I3///)
  322 FORMAT(38H SINGLE DIFFERENTIAL CROSS SECTION OF ,8A4/)
  323 FORMAT(11X,6HLIMITS,9X,1HI,16X,19HACCUMULATED RESULTS,15X,1HI,24X
     1,9HUPPER BIN,6X,9HLOWER BIN/26X,1HI,50X,20HI * LINEAR      PLOT,
     2F8.2,5H*10**,I3,8X,1H0/5X,5HLOWER,7X,5HUPPER,4X,1HI,5X,5HDS/DX,4X
     3,56HALOG10   (DS/DX)/S  ALOG10  POINTS  I + LOGARITHMIC PLOT,6X
     4,4H10**,I3,8X,4H10**,I3/2X,24(1H-),1HI,50(1H-),1HI)
  324 FORMAT(D12.4,D12.4,3H  I,2(D12.4,F8.2),I8,3H  I,4X,1HI,40A1,1HI)
  325 FORMAT(26X,1HI,50X,1HI,4X,1HI,40A1,1HI)
  326 FORMAT(2X,24(1H-),1HI,50(1H-),1HI,4X,1HI,40A1,1HI)
  327 FORMAT(7X,15HTOTAL UNDERFLOW,4X,1HI,D12.4,D20.4,I16,2X,1HI)
  328 FORMAT(7X,15HTOTAL  OVERFLOW,4X,1HI,D12.4,D20.4,I16,2X,1HI)
  329 FORMAT(//19X,21HACCUMULATED AVERAGE =,D12.5
     1/19X,21HESTIMATED ERROR     =,D12.5)
  481 FORMAT(1H1,45X,40HDOUBLE DIFFERENTIAL CROSS-SECTION NUMBER,I3/
     1/60X,7HX-AXIS ,3A4/60X,7HY-AXIS ,3A4/)
  482 FORMAT(20X,11(1HI,9X))
  483 FORMAT(11X,D9.3,11(1HI,D9.3))
  484 FORMAT(1X,D10.3,  9H---------,11(10HI---------))
  485 FORMAT(1H0,14X,11D10.3)
  486 FORMAT(11X,I8,1X,11(1HI,I8,1X))
  810 FORMAT(I2)
  811 FORMAT(2D12.4,3I2,8A4)
  812 FORMAT(2(2D10.3,I4),6A4)
  813 FORMAT(12H1***ERROR***,10X,24HTOO MANY PLOTS REQUESTED//
     122X,20HTHE UPPER LIMITS ARE //19X,I2,9H AVERAGES//19X,I2,22H ONE D
     2MENSIONAL PLOTS//19X,I2,22H TWO DIMENSIONAL PLOTS////22X,25H***EXE
     3CUTION IS HALTED***   )
  814 FORMAT(37H1NUMBER OF SINGLE DIFFERENTIAL CROSS
     1,20HSECTIONS REQUESTED =,I3/)
  815 FORMAT(30H INFORMATION ON THE DATA CARDS//
     13H  I,10X,5HXLMIN,12X,5HXLMAX,7X,
     224HBINS  CORRELLATION  TYPE,19X,4HTEXT/)
  816 FORMAT(I3,2E17.4,I8,I9,I10,5X,8A4)
  817 FORMAT(37H0NUMBER OF DOUBLE DIFFERENTIAL CROSS
     1,20HSECTIONS REQUESTED =,I3/)
  818 FORMAT(30H INFORMATION ON THE DATA CARDS//
     13H  I,8X,5HV1MIN,10X,5HV1MAX,4X,4HBINS,8X,5HV2MIN
     2,10X,5HV2MAX,4X,4HBINS,8X,6HTEXT 1,8X,6HTEXT 2/)
  819 FORMAT(I3,2D15.3,I5,1X,2D15.3,I5,6X,3A4,2X,3A4)
  820 FORMAT(31H0NUMBER OF AVERAGES REQUESTED =,I3)
      END

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

C
      DOUBLE PRECISION FUNCTION RANF(DUMMY)
*
*      RANDOM NUMBER FUNCTION TAKEN FROM KNUTH
*      (SEMINUMERICAL ALGORITHMS).
*      METHOD IS X(N)=MOD(X(N-55)-X(N-24),1/FMODUL)
*      NO PROVISION YET FOR CONTROL OVER THE SEED NUMBER.
*
*      RANF GIVES ONE RANDOM NUMBER BETWEEN 0 AND 1.
*      IRN55 GENERATES 55 RANDOM NUMBERS BETWEEN 0 AND 1/FMODUL.
*      IN55  INITIALIZES THE 55 NUMBERS AND WARMS UP THE SEQUENCE.
*
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER (FMODUL=1.D-09)
      INTEGER IA(55)
      SAVE IA
      DATA NCALL/0/
      DATA MCALL/55/
      IF( NCALL.EQ.0 ) THEN
        CALL IN55 ( IA,234612947 )
        NCALL = 1
      ENDIF
      IF ( MCALL.EQ.0 ) THEN
        CALL IRN55(IA)
        MCALL=55
      ENDIF
      RANF=IA(MCALL)*FMODUL
      MCALL=MCALL-1
      END

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

C
      SUBROUTINE IN55(IA,IX)
      PARAMETER (MODULO=1000000000)
      INTEGER IA(55)
      IA(55)=IX
      J=IX
      K=1
      DO 10 I=1,54
        II=MOD(21*I,55)
        IA(II)=K
        K=J-K
        IF(K.LT.0)K=K+MODULO
        J=IA(II)
   10 CONTINUE
      DO 20 I=1,10
        CALL IRN55(IA)
   20 CONTINUE
      END

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

C
      SUBROUTINE IRN55(IA)
      PARAMETER (MODULO=1000000000)
      INTEGER IA(55)
      DO 10 I=1,24
        J=IA(I)-IA(I+31)
        IF(J.LT.0)J=J+MODULO
        IA(I)=J
   10 CONTINUE
      DO 20 I=25,55
        J=IA(I)-IA(I-24)
        IF(J.LT.0)J=J+MODULO
        IA(I)=J
   20 CONTINUE
      END

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

C
      SUBROUTINE SAVE(NDIM,NTAPE)
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      COMMON/BVEG2/NDO,IT,SI,SI2,SWGT,SCHI,XI(50,10),SCALLS
     1 ,D(50,10),DI(50,10)
C
C   stores vegas data (unit ntape) for later re-initialization
      WRITE(NTAPE,200) NDO,IT,SI,SI2,SWGT,SCHI,
     1      ((XI(I,J),I=1,NDO),J=1,NDIM)
     2     ,((DI(I,J),I=1,NDO),J=1,NDIM)
      RETURN
      ENTRY RESTR(NDIM,NTAPE)
C
C   enters initialization data for vegas
      READ(NTAPE,200) NDO,IT,SI,SI2,SWGT,SCHI,
     1      ((XI(I,J),I=1,NDO),J=1,NDIM)
     2     ,((DI(I,J),I=1,NDO),J=1,NDIM)
  200 FORMAT(2I8,4Z16/(5Z16))
      RETURN
      END