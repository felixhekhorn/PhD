      PROGRAM EGC
cstr  vollstaendig korrekte Version (GRVHO)
CEL**** LAST MODIFIED 5/9/93
C=============================================================
C
C PROGRAM FOR PARTONIC RESULTS OF `COMPLETE O(ALFA_S) CORRECTIONS
C TO HEAVY FLAVOUR STRUCTURE FUNCTIONS IN ELECTROPRODUCTION',
C BY E.LAENEN, S.RIEMERSMA, J.SMITH AND W.L.VAN NEERVEN,
C ITP-SB-92-09, TO APPEAR IN NUCLEAR PHYSICS B.
C
C*****************************************************************
C
C
C               PHOTON + G   ---> Q + Q_BAR ( + G)
C
C                    AT THE PARTON LEVEL
C
C --------------------------------------------------------------
C
C  ICOEF = 0: COMPUTES C'S IN MSBAR SCHEME
C
C  ICOEF = 1: COMPUTES CBAR'S
C
C*********************************************************************
C
      IMPLICIT DOUBLE PRECISION (A-Z)
      INTEGER ITS,PTS,NBORN,NCORR,NPOS,NSCALE,NALFAS
      INTEGER NEXCT,ISF,IOPTION,ICOEF,ILOOP
      INTEGER COUNT1,COUNT2,count3,count4
C
      PARAMETER( PI = 3.14159265359D0 )
C
      EXTERNAL FG
      EXTERNAL FL
C
      COMMON/PARAM/S,MQ,S4MIN,S4MAX,DEL,SRS,SP,QF2
      COMMON/CNSTS1/CBORN,CSV1,CSV2
      COMMON/CNSTS3/CRGK0,CRGKQ,CRG1,CRG2
      COMMON/CNSTS5/CF,CA,KFQ,CFCF,CFCA,CFCFCA
      COMMON/CFERM/CSVFF,CSVF0,CSVFK,CSVFQ
      COMMON/CBORN1/CALFAS,NBORN,NCORR,NPOS,NALFAS,NSCALE
      COMMON/CAPRX/NEXCT
      COMMON/QCDPAR/Q2,QCDL,QCDL2,NLF,EH
      COMMON/FLAGS/ICOEF
      COMMON/RESULT/S1,S2,S3,S4
      COMMON/FALTPAR/XBJ,ZMAX,MASS2
C
      OPEN(UNIT=11, FILE= 'egc.dat', STATUS= 'OLD')
      REWIND 11
      READ (11,*) IOPTION
      READ (11,*) ICOEF
      READ (11,*) MQ
      READ (11,*) QF2
      READ (11,*) DEL
      READ (11,*) PTS
      READ (11,*) ITS
      READ (11,*) CALFAS
      READ (11,*) NF
      READ (11,*) NLF
      READ (11,*) NBORN
      READ (11,*) NCORR
      READ (11,*) NEXCT
      READ (11,*) NPOS
      READ (11,*) ISF
      READ (11,*) NALFAS
      READ (11,*) NSCALE
      READ (11,*) QCDL
      READ (11,*) QCDL2
      READ (11,*) EH
C
C PRINT HEADER
C
      PRINT '(''0 *** PROGRAM EGC '')'
      PRINT '(''0   IOPTION (SEE PROGRAM FOR EXPL. = '',I2)',IOPTION
      PRINT '(''0   ICOEF  (SEE PROGRAM FOR EXPL. = '',I2)',ICOEF
      PRINT '(''0        MASS OF QUARK (GEV)       = '',D20.7)',MQ
      PRINT '(''0        MASS OF PHOTON (GEVå2)    = '',D20.7)',QF2
      PRINT '(''0               DELTA (GEV2)       = '',D20.7)',DEL
      PRINT '(''0                        PTS       = '',I20)',PTS
      PRINT '(''0                 ITERATIONS       = '',I20)',ITS
      PRINT '(''0          CONST. ALFAS            = '',D20.7)',CALFAS
      PRINT '(''0                 NF               = '',D20.7)',NF
      PRINT '(''0                 NLF              = '',D20.7)',NLF
      PRINT '(''0 BORN CONTRIBUTIONS INCLUDED (1)  = '',I2)',NBORN
      PRINT '(''0 G**6 CONTRIBUTIONS INCLUDED (1)  = '',I2)',NCORR
      PRINT '(''0 EXACT(1)MS(2)DIS,APPROX(-1)MS(-2)DIS= '',I2)',NEXCT
      PRINT '(''0 NEGATIVE, POSITIVE OR ALL (=0)   = '',I2)',NPOS
      PRINT '(''0 CROSS SECT(=0), STRUCT FN(=1),BOTH=2)   = '',I2)',ISF
      PRINT '(''0 (0)CONST,(1)1-LOOP,(2)2-LOOP ALFA = '',I2)',NALFAS
      PRINT '(''0 Q=M/2(0),M(1),2M(2),M2*E(3),M(4),2M(ELSE)= '',
     &                                                      I2)',NSCALE
      PRINT '(''0 1-LOOP LAMBDA(QCD)               = '',D20.7)',QCDL
      PRINT '(''0 2-LOOP LAMBDA(QCD)               = '',D20.7)',QCDL2
      PRINT '(''0 HEAVY QUARK CHARGE               = '',D20.7)',EH
C
       OPEN (UNIT=12, FILE='egc.plo', STATUS='OLD')
       REWIND 12
       OPEN (13,FILE='convglu2.dat')
C
       NORM = 19.733D0*19.733D0
       CGG0 = 0.D0
       CGG1 = 0.D0
       CLG0 = 0.D0
       CLG1 = 0.D0
       CTG0 = 0.D0
       CTG1 = 0.D0
       F1 = 0.D0
       F2 = 0.D0
       FLONG = 0.D0
C      EH=2.d0/3.D0
       EH2 = EH*EH
       M2 = MQ*MQ
       THRESH = 4.D0*M2
C
       ALFAE = 1.0D0/137.0D0
C
C  HERE STARTS THE DO LOOP
C
c      do 3000 count3=0,1,1
c      mq=1.7d0-count3*0.2d0
       mq=1.5d0
       m2=mq*mq
       thresh=4.d0*m2
       do 4000 count4=1,2,1
       if(count4.eq.1) then
       qf2=-4.5d0
       mass2=4.d0*m2
       endif
       if(count4.eq.2) then
       qf2=-6.d0
       mass2=4.d0*m2
       endif
       if(count4.eq.3) then
       qf2=-30.d0
       mass2=4.d0*m2
       endif
       if(count4.eq.4) then
       qf2=-50.d0
       mass2=4.d0*m2
       endif
       DO 1000 COUNT1=0,2
       DO 2000 COUNT2=1,9,2
c
       xbj=count2*10.d0**(-4+count1)
       if(xbj.ge.0.02d0) then
       goto 2000
       endif
c      if(xbj.lt.0.02d0) then
c      goto 2000
c      endif
c      mass2=4.d0*m2
       asscale=mass2
       if(mass2.gt.20.d0) then
       NF=5.d0
       QCDL2=0.131d0
       else
       NF=4.d0 
       QCDL2=0.2d0
       endif       
       write(*,*) 'q2  = ',qf2
       write(*,*) 'x   = ',xbj
       write(*,*) 'scale = ',asscale,mass2
       write(*,*) 'nf / lam = ',nf,qcdl2
C
       ZMAX=XBJ*(4.D0*M2-QF2)/QF2/(-1.D0)
C      CALCULATE F2_G(1)
C
C      C-PART  (LONGITUDINAL + TRANSVERSE)
C
       ICOEF=0
       write(*,*) 'cl'
       CALL VEGAS(FL,1D-6,3,PTS,ITS,1,0)
       SL=S1
       write(*,*) 'cg'
       CALL VEGAS(FG,1D-6,3,PTS,ITS,1,0)
       SG=S1
       ST=SG+SL/2.D0
       CGG0=M2*SG/4.D0/PI/CALFAS**2/ALFAE/NORM/EH2
       CLG0=M2*SL/4.D0/PI/CALFAS**2/ALFAE/NORM/EH2
       CTG0=CGG0+CLG0/2.D0
       AS = 12.D0*PI/( (33.D0-2.D0*NF)*LOG(ASSCALE/QCDL2**2) )*
     &     ( 1.D0 - 6.D0*(153.D0-19.D0*NF)/(33.D0-2.D0*NF)**2
     &     *LOG(LOG(ASSCALE/QCDL2**2))
     &           /LOG(ASSCALE/QCDL2**2)               )
c      as=1.d0
       CLG=AS**2*(-1.D0)*QF2/M2/PI*4.D0/9.D0*CLG0
       CTG=AS**2*(-1.D0)*QF2/M2/PI*4.D0/9.D0*CTG0
C
C      CBAR-PART   (LONGITUDINAL + TRANSVERSE)
C
       ICOEF=1
       write(*,*) 'cbl'
       CALL VEGAS(FL,1D-6,3,pts,its,1,0)
       SL=S1
       write(*,*) 'cbg'
       CALL VEGAS(FG,1D-6,3,PTS,ITS,1,0)
       SG=S1
       ST=SG+SL/2.D0
       CGG0=M2*SG/4.D0/PI/CALFAS**2/ALFAE/NORM/EH2
       CLG0=M2*SL/4.D0/PI/CALFAS**2/ALFAE/NORM/EH2
       CTG0=CGG0+CLG0/2.d0
       CTG=CTG+AS**2*(-1.D0)*QF2/M2/PI*4.D0/9.D0*CTG0*LOG(MASS2/M2)
       CLG=CLG+AS**2*(-1.D0)*QF2/M2/PI*4.D0/9.D0*CLG0*LOG(MASS2/M2)
C
      WRITE(*,3) (-1.d0)*qf2,XBJ,mass2,CLG,CTG,CLG+CTG
      WRITE(13,3) (-1.d0)*qf2,XBJ,mass2,CLG,CTG,CLG+CTG
3     format(6f14.8)
C
2000  CONTINUE
1000  CONTINUE
4000  continue
3000  continue
      STOP
      END
C
C***********************************************************************
C
      DOUBLE PRECISION FUNCTION FG(X)
C
C     MODIFIED FOR CONVOLUTION
C
      IMPLICIT DOUBLE PRECISION (A-Z)
      INTEGER I,NBORN,NCORR,NPOS,NALFAS,NSCALE
      INTEGER NEXCT
      DIMENSION X(10)
C
      PARAMETER( PI = 3.14159265359D0 )
C
      COMMON/CAPRX/NEXCT
      COMMON/CBORN1/CALFAS,NBORN,NCORR,NPOS,NALFAS,NSCALE
      COMMON/CNSTS1/CBORN,CSV1,CSV2
      COMMON/CNSTS3/CRGK0,CRGKQ,CRG1,CRG2
      COMMON/CNSTS5/CF,CA,KFQ,CFCF,CFCA,CFCFCA
      COMMON/CFERM/CSVFF,CSVF0,CSVFK,CSVFQ
      COMMON/QCDPAR/Q2,QCDL,QCDL2,NLF,EH
      COMMON/PARAM/S,MQ,S4MIN,S4MAX,DEL,SRS,SP,QF2
      COMMON/FALTPAR/XBJ,ZMAX,MASS2
C
      COMMON/LPLOT/XL(25),V1(10),V2(10),AV(10)
      COMMON/QPLOT/EQQ,BETAQQ,COSQQ,ANGQQ,ETAQQ,PQQ
      COMMON/QPLOTS/PTQQ,ETQQ2
C
C CALCULATE M2
      M2 = MQ**2
      THRESH = 4.0D0*M2
C
C     Z=XBJ+(ZMAX-XBJ)*X(3)
      Z=ZMAX+(1.D0-ZMAX)*X(3)
      ZL=XBJ/Z
      zintv=1.d0-zmax
C     ETA=(1.D0-ZL)/ZL*(-1.D0)*QF2/4.D0/M2-1.D0
C
      S=(-1.D0)*QF2*(1.D0/ZL-1.D0)
C     S=4.D0*M2*(1.D0+ETA)
      SP=S-QF2
      SRS=DSQRT(S)
C
C     PARTON-DISTRIBUTIONS
C
      XTUNG=Z
      xgrv=z
      q2grv=mass2
c     CALL TUNGB(XTUNG,MASS2,UV,DV,GL,UBAR,CSEA,BSEA,TSEA,2)
      call grvho(xgrv,q2grv,gl)
      GLUON=GL/Z
C
      IF ( S.LE.THRESH) GOTO 50
C
C CALCULATE SCALE AND RUNNING COUPLING ALPHA_S
      IF    (NSCALE.EQ.0) THEN
        QQ2 = (M2)/4.D0
      ELSEIF(NSCALE.EQ.1) THEN
        QQ2 = M2
      ELSEIF(NSCALE.EQ.2) THEN
        QQ2 = 4.D0*(M2)
      ELSEIF(NSCALE.EQ.3) THEN
        QQ2 = M2*2.72D0
      ELSEIF(NSCALE.EQ.4) THEN
        QQ2 = M2
      ELSE
        QQ2 = 4.D0*M2
      ENDIF
C
C  SCALE FOR THE COUPLING
      Q2    = QQ2
C
      IF    (NALFAS.EQ.0) THEN
        ALFAS = CALFAS
      ELSEIF(NALFAS.EQ.1) THEN
        ALFAS = 12.D0*PI/( (33.D0-2.D0*NLF)*LOG(QQ2/QCDL**2) )
      ELSE
        ALFAS = 12.D0*PI/( (33.D0-2.D0*NLF)*LOG(QQ2/QCDL2**2) )
     &           *( 1.D0 - 6.D0*(153.D0-19.D0*NLF)/(33.D0-2.D0*NLF)**2
     &                *LOG(LOG(QQ2/QCDL2**2))
     &                /LOG(QQ2/QCDL2**2)               )
      ENDIF
      ALFAS2 = ALFAS * ALFAS
      ALFAS3 = ALFAS * ALFAS2
      GAL2 = 4.0D0*PI*ALFAS
      GAL4 = GAL2 * GAL2
      GAL6 = GAL4 * GAL2
      NCAP  = 3.0D0
      NCAP2 =  NCAP * NCAP
      NCAPM1= 1.0D0/(NCAP2-1.0D0)
      NCAPM2= NCAPM1*NCAPM1
      ALFAE = 1.0D0/137.0D0
      EH2 = EH*EH
      KFG = NCAPM1
      CF = (NCAP2 - 1.0D0)/2.0D0/NCAP
      CA = NCAP
      CFCF = CF*CF
      CFCA = CF*CA
      CFCFCA = CF*CF*CA
C
C DEFINE SEP = 1/(4PI)å2
C
      SEP = 1.0D0/(16.0D0*PI*PI)
C
C CONVERSION FACTOR FROM GEVå-2 TO UNITS OF 10å-30 CMå2 [MICROBARN]
C
      NORM = 19.733D0*19.733D0
C
C IN THE PAPER, WE DEFINE SP**2 TIMES THE DIFFERENTIAL CROSS
C SECTION SO DIVIDE THE NORMALIZATION FACTOR BY SP**2.
C
      FACTOR = NORM/SP/SP
C
C DEFINE ALL THE COUPLING CONSTANTS
C (SINCE A(GAMMA) = 1 WE DO NOT NEED TO DEFINE IT)
C
      CRR0 = KFG*NCAP*ALFAE*ALFAS*FACTOR
C
C THE FOLLOWING DEFINITION OF CBORN IS EQUIVALENT TO
C 32*PIå3*SEP*CRR0*CF*EH2 (WHICH CORRESPONDS TO EQN.(2.14))
C
      CBORN = 2.0D0*PI*CRR0*CF*EH2
C
C THE FOLLOWING DEFINITION IS EQUIVALENT TO
C 128*PIå4*SEP*CRR0*ALFAS (WHICH CORRESPONDS TO (3.3))
C
      CRRA = CRR0*ALFAS
C SEE (3.1) - (3.3): (THE LAST 1/(16*PIå2) COMES
C FROM THE LOOP INTEGRALS, WHICH ALWAYS HAVE AN C_EPS)
      CSV1 = CRRA*      CFCA*EH2*8.0D0*PI*PI*SEP
      CSV2 = CRRA*2.0D0*CFCF*EH2*8.0D0*PI*PI*SEP
C THE FOLLOWING DEFINITION CORRESPONDS TO (3.15) AND (4.7).
C IS EQUIVALENT TO 64*PIå3*SEPå2*CRRA*CF\CA
      CRGK0 = CRRA*CFCA*EH2/4.0D0/PI
      CRGKQ = CRRA*CFCF*EH2/2.0D0/PI
      CRG1  = CRRA*CFCA*EH2
      CRG2  = CRRA*CF*NLF*EH2
C
C  CALCULATE COSINE
      JACOB1 = 2.0D0
      COSINE = -1.0D0 + JACOB1 * X(1)
C
C APPLY A MAPPING FOR SMALL S4
      S4MAX=SRS*(SRS - 2.0D0*MQ)
      S4MIN = DEL
      JACOBD = S4MAX - S4MIN
      IF(S4MAX.LE.S4MIN) GOTO 50
      S4B = S4MAX
      S4A = S4MIN
      SSW = X(2)
      CALL MAPS2(S4,SSW,S4A,S4B,DS4)
      JACOB2= DS4
C------------------------------------------------------------------
C THIS IS THE JACOBIAN FOR THE MAPPING BETWEEN DT DU AND DS4 DCOSINE
      S4T = S4 + M2
      LAM = S*S + M2*M2 + S4T*S4T -2.0D0*(S*M2+S*S4T+S4T*M2)
      IF (LAM.LE.0.0D0) GOTO 50
      JACOB3 = SP*DSQRT(LAM)/2.0D0/S
      SA = S + M2 - S4T
      T1 = -SP*SA/2.0D0/S + JACOB3 * COSINE
      U1 = QF2 - (S + QF2)*SA/2.0D0/S - JACOB3 * COSINE
C
      IF( CUTH( SP,T1,U1,M2,QF2 ).LT.0.0D0 ) GOTO 50
C
C THIS IS THE JACOBIAN FOR ELASTIC CASE: DT DU AND DS4 DCOSINE
      S4TE = M2
      LAME = S*S + M2*M2 + S4TE*S4TE -2.0D0*(S*M2+S*S4TE+S4TE*M2)
      IF (LAME.LE.0.0D0) GOTO 50
      JACOB4 = SP*DSQRT(LAME)/2.0D0/S
      SAE = S + M2 - S4TE
      TE1 = -SP*SAE/2.0D0/S + JACOB4 * COSINE
      UE1 = QF2 - (S + QF2)*SAE/2.0D0/S - JACOB4 * COSINE
C
C MAKE CALLS TO THE NECESSARY SUBROUTINES TO DETERMINE THE
C MATRIX ELEMENT.
      MU  = DSQRT(QQ2)
C      MU  = 2.0D0*MU
C      MU  = MU/2.0D0
C
      FH   = 0.D0
      FSV  = 0.D0
      FB   = 0.D0
      IF (NCORR.NE.0) THEN
        FH   = MAEGH(SP,T1,U1,M2,QF2,MU)*JACOB1*JACOB2*JACOB3
C  ADD THE SOFT+VIRTUAL CONTRIBUTIONS FROM THE SOFT PIECE
        FSV  = MAEGSV(SP,TE1,UE1,M2,QF2,MU,DEL,S4MAX,S4)
     &                    *JACOB1*JACOB2*JACOB4
        FSV  = FSV / JACOBD
      ENDIF
C  ADD THE BORN CONTRIBUTIONS
      IF (NBORN.NE.0) THEN
        FB   = MAEGB(SP,TE1,UE1,M2,QF2)*JACOB1*JACOB2*JACOB4
        FB   = FB/JACOBD
      ENDIF
C
      FG = (FH + FSV + FB)*GLUON*zintv
C
C
      IF(NPOS.LT.0 .AND. F.GT.0.D0) GOTO 55
      IF(NPOS.GT.0 .AND. F.LT.0.D0) GOTO 55
C
C
C      COMPUTE VARIABLES TO BE GRAPHED
C
      XL(1) = X(1)
      XL(2) = COSINE
      XL(3) = S4
      XL(4) = S4
      XL(5) = X(1)
      XL(6) = X(2)
C
      RETURN
C
C BRANCH HERE IF ANY VARIABLE IS OUT OF RANGE
C
   50 DO 60 I=1,10
   60 XL(I)=-100.
      DO 70 I=1,2
        V1(I)=-100.
        V2(I)=-100.
   70 AV(I)=-100.
      FG=0.
      RETURN
C
   55 DO 66 I=1,10
   66 XL(I)=+1.D20
      DO 77 I=1,2
        V1(I)=+1.D20
        V2(I)=+1.D20
   77 AV(I)=+1.D20
      FG=0.
C
      RETURN
      END
C
C***********************************************************************
C
      DOUBLE PRECISION FUNCTION FL(X)
C
C     MODIFIED FOR CONVOLUTION
C
      IMPLICIT DOUBLE PRECISION (A-Z)
      INTEGER I,NBORN,NCORR,NPOS,NALFAS,NSCALE
      INTEGER NEXCT
      DIMENSION X(10)
C
      PARAMETER( PI = 3.14159265359D0 )
C
      COMMON/CAPRX/NEXCT
      COMMON/CBORN1/CALFAS,NBORN,NCORR,NPOS,NALFAS,NSCALE
      COMMON/CNSTS1/CBORNL,CSV1,CSV2
      COMMON/CNSTS3/CRGK0,CRGKQ,CRG1,CRG2
      COMMON/CNSTS5/CF,CA,KFQ,CFCF,CFCA,CFCFCA
      COMMON/CFERM/CSVFF,CSVF0,CSVFK,CSVFQ
      COMMON/QCDPAR/Q2,QCDL,QCDL2,NLF,EH
      COMMON/PARAM/S,MQ,S4MIN,S4MAX,DEL,SRS,SP,QF2
      COMMON/FALTPAR/XBJ,ZMAX,MASS2
C
      COMMON/LPLOT/XL(25),V1(10),V2(10),AV(10)
      COMMON/QPLOT/EQQ,BETAQQ,COSQQ,ANGQQ,ETAQQ,PQQ
      COMMON/QPLOTS/PTQQ,ETQQ2
C
C CALCULATE M2
      M2 = MQ**2
      THRESH = 4.0D0*M2
C
C     Z=XBJ+(ZMAX-XBJ)*X(3)
      Z=ZMAX+(1.D0-ZMAX)*X(3)
      zintv=1.d0-zmax
      ZL=XBJ/Z
C     ETA=(1.D0-ZL)/ZL*(-1.D0)*QF2/4.D0/M2-1.D0
C
      S=(-1.D0)*QF2*(1.D0/ZL-1.D0)
c
      SP=S-QF2
      SRS=DSQRT(S)
C
C     PARTON-DISTRIBUTIONS
C
      xgrv=Z
      q2grv=mass2
c     CALL TUNGB(XTUNG,MASS2,UV,DV,GL,UBAR,CSEA,BSEA,TSEA,2)
      call grvho(xgrv,q2grv,gl)
      GLUON=GL/xgrv
C
      IF ( S.LE.THRESH) GOTO 50
C
C CALCULATE RUNNING COUPLING ALPHA_S
      IF    (NSCALE.EQ.0) THEN
        QQ2 = (M2)/4.D0
      ELSEIF(NSCALE.EQ.1) THEN
        QQ2 = M2
      ELSEIF(NSCALE.EQ.2) THEN
        QQ2 = 4.D0*(M2)
      ELSEIF(NSCALE.EQ.3) THEN
        QQ2 = M2*2.72D0
      ELSEIF(NSCALE.EQ.4) THEN
        QQ2 = M2
      ELSE
        QQ2 = 4.D0*M2
      ENDIF
C
C  SCALE FOR THE COUPLING
      Q2    = QQ2
C
      IF    (NALFAS.EQ.0) THEN
        ALFAS = CALFAS
      ELSEIF(NALFAS.EQ.1) THEN
        ALFAS = 12.D0*PI/( (33.D0-2.D0*NLF)*LOG(QQ2/QCDL**2) )
      ELSE
        ALFAS = 12.D0*PI/( (33.D0-2.D0*NLF)*LOG(QQ2/QCDL2**2) )
     &           *( 1.D0 - 6.D0*(153.D0-19.D0*NLF)/(33.D0-2.D0*NLF)**2
     &                *LOG(LOG(QQ2/QCDL2**2))
     &                /LOG(QQ2/QCDL2**2)               )
      ENDIF
      ALFAS2 = ALFAS * ALFAS
      ALFAS3 = ALFAS * ALFAS2
      GAL2 = 4.0D0*PI*ALFAS
      GAL4 = GAL2 * GAL2
      GAL6 = GAL4 * GAL2
      NCAP  = 3.0D0
      NCAP2 =  NCAP * NCAP
      NCAPM1= 1.0D0/(NCAP2-1.0D0)
      NCAPM2= NCAPM1*NCAPM1
      ALFAE = 1.0D0/137.0D0
      EH2 = EH*EH
      KFG = NCAPM1
      CF = (NCAP2 - 1.0D0)/2.0D0/NCAP
      CA = NCAP
      CFCF = CF*CF
      CFCA = CF*CA
      CFCFCA = CF*CF*CA
C
C DEFINE SEP = 1/(4PI)å2
C
      SEP = 1.0D0/(16.0D0*PI*PI)
C
C CONVERSION FACTOR FROM GEVå-2 TO UNITS OF 10å-30 CMå2
C
      NORM = 19.733D0*19.733D0
C
C IN THE PAPER, WE DEFINE SP**2 TIMES THE DIFFERENTIAL CROSS
C SECTION SO DIVIDE THE NORMALIZATION FACTOR BY SP**2.
C
      FACTOR = NORM/SP/SP
C
C DEFINE ALL THE COUPLING CONSTANTS
C
      CRR0 = KFG*NCAP*ALFAE*ALFAS*FACTOR
C
C THE FOLLOWING DEFINITION OF CBORN IS EQUIVALENT TO
C 32*PIå3*SEP*CRR0*CF*EH2 (WHICH CORRESPONDS TO EQN.(2.14))
C
      CBORNL = 2.0D0*PI*CRR0*CF*EH2
C
C THE FOLLOWING DEFINITION IS EQUIVALENT TO
C 128*PIå4*SEP*CRR0*ALFAS (WHICH CORRESPONDS TO (3.3))
C
      CRRA = CRR0*ALFAS
C THE LAST `SEP' COMES FROM THE C_EPS IN THE LOOP INTEGRALS:
      CSV1 = CRRA*      CFCA*EH2*8.0D0*PI*PI*SEP
      CSV2 = CRRA*2.0D0*CFCF*EH2*8.0D0*PI*PI*SEP
C THE FOLLOWING DEFINITION CORRESPONDS TO (3.17) AND (4.8).
C IS EQUIVALENT TO 64*PIå3*SEPå2*CRRA*CF\CA
      CRGK0 = CRRA*CFCA*EH2/4.0D0/PI
      CRGKQ = CRRA*CFCF*EH2/2.0D0/PI
      CRG1  = CRRA*CFCA*EH2
      CRG2  = CRRA*CF*NLF*EH2
C
C  CALCULATE COSINE
      JACOB1 = 2.0D0
      COSINE = -1.0D0 + JACOB1 * X(1)
C
C APPLY A MAPPING FOR SMALL S4
      S4MAX=SRS*(SRS - 2.0D0*MQ)
      S4MIN = DEL
      JACOBD = S4MAX - S4MIN
      IF(S4MAX.LE.S4MIN) GOTO 50
      S4B = S4MAX
      S4A = S4MIN
      SSW = X(2)
      CALL MAPS2(S4,SSW,S4A,S4B,DS4)
      JACOB2= DS4
C------------------------------------------------------------------
C THIS IS THE JACOBIAN FOR THE MAPPING BETWEEN DT DU AND DS4 DCOSINE
      S4T = S4 + M2
      LAM = S*S + M2*M2 + S4T*S4T -2.0D0*(S*M2+S*S4T+S4T*M2)
      IF (LAM.LE.0.0D0) GOTO 50
      JACOB3 = SP*DSQRT(LAM)/2.0D0/S
      SA = S + M2 - S4T
      T1 = -SP*SA/2.0D0/S + JACOB3 * COSINE
      U1 = QF2 - (S + QF2)*SA/2.0D0/S - JACOB3 * COSINE
C
      IF( CUTH( SP,T1,U1,M2,QF2 ).LT.0.0D0 ) GOTO 50
C
C THIS IS THE JACOBIAN FOR ELASTIC CASE: DT DU AND DS4 DCOSINE
      S4TE = M2
      LAME = S*S + M2*M2 + S4TE*S4TE -2.0D0*(S*M2+S*S4TE+S4TE*M2)
      IF (LAME.LE.0.0D0) GOTO 50
      JACOB4 = SP*DSQRT(LAME)/2.0D0/S
      SAE = S + M2 - S4TE
      TE1 = -SP*SAE/2.0D0/S + JACOB4 * COSINE
      UE1 = QF2 - (S + QF2)*SAE/2.0D0/S - JACOB4 * COSINE
C
C MAKE CALLS TO THE NECESSARY SUBROUTINES TO DETERMINE THE
C MATRIX ELEMENT.
      MU  = DSQRT(QQ2)
C      MU  = 2.0D0*MU
C      MU  = MU/2.0D0
C
      FH   = 0.D0
      FSV  = 0.D0
      FB   = 0.D0
      IF (NCORR.NE.0) THEN
        FH   = MAEGH_L(SP,T1,U1,M2,QF2,MU)*JACOB1*JACOB2*JACOB3
C  ADD THE SOFT+VIRTUAL CONTRIBUTIONS FROM THE SOFT PIECE
        FSV  = MAEGSV_L(SP,TE1,UE1,M2,QF2,MU,DEL,S4MAX,S4)
     &                    *JACOB1*JACOB2*JACOB4
        FSV  = FSV / JACOBD
      ENDIF
C  ADD THE BORN CONTRIBUTIONS
      IF (NBORN.NE.0) THEN
        FB   = MAEGB_L(SP,TE1,UE1,M2,QF2)*JACOB1*JACOB2*JACOB4
        FB   = FB/JACOBD
      ENDIF
C
      FL = (FH + FSV + FB)*GLUON*zintv
C
C
      IF(NPOS.LT.0 .AND. F.GT.0.D0) GOTO 55
      IF(NPOS.GT.0 .AND. F.LT.0.D0) GOTO 55
C
C
C      COMPUTE VARIABLES TO BE GRAPHED
C
      XL(1) = X(1)
      XL(2) = X(2)
      XL(3) = S4
      XL(4) = S4
      XL(5) = X(1)
      XL(6) = X(2)
C
      RETURN
C
C BRANCH HERE IF ANY VARIABLE IS OUT OF RANGE
C
   50 DO 60 I=1,10
   60 XL(I)=-100.
      DO 70 I=1,2
        V1(I)=-100.
        V2(I)=-100.
   70 AV(I)=-100.
      FL=0.
      RETURN
C
   55 DO 66 I=1,10
   66 XL(I)=+1.D20
      DO 77 I=1,2
        V1(I)=+1.D20
        V2(I)=+1.D20
   77 AV(I)=+1.D20
      FL=0.
C
      RETURN
      END
C
       SUBROUTINE GRVHO (X, Q2, GL)
       IMPLICIT double precision (A - Z)
       MU2  = 0.3d0
       LAM2 = 0.248d0 * 0.248d0
       S  = LOG (LOG(Q2/LAM2) / LOG(MU2/LAM2))
       DS = SQRT (S)
       S2 = S * S
       S3 = S2 * S
C...X * G :
       ALG =  1.128d0
       BEG =  1.575d0
       AKG =  0.323d0 + 1.653d0 * S
       BKG =  0.811d0 + 2.044d0 * S
       AGG =   0.0d0  + 1.963d0 * S - 0.519d0 * S2
       BGG =  0.078d0 +  6.24d0 * S
       CG  =  30.77d0 - 24.19d0 * S
       DG  =  3.188d0 + 0.720d0 * S
       EG  = -0.881d0 + 2.687d0 * S
       ESG =  2.466d0
       GL  = FW (X, S, ALG, BEG, AKG, BKG, AGG, BGG, CG, DG, EG, ESG)
       RETURN
       END
C
       FUNCTION FW (X, S, AL, BE, AK, BK, AG, BG, C, D, E, ES)
       IMPLICIT double precision (A - Z)
       LX = LOG (1.d0/X)
       FW = (X**AK * (AG + X * (BG + X*C)) * LX**BK + S**AL
     1      * EXP (-E + SQRT (ES * S**BE * LX))) * (1.d0- X)**D
       RETURN
       END
C
C
C***********************************************************************
C
      DOUBLE PRECISION FUNCTION CUTH( SP,T1,U1,M2,QF2 )
C FUNCTION TO DETERMINE WHETHER OR NOT THIS "EVENT" SHOULD BE CUT OR NOT.
C  THIS IS FOR THE INELASTIC PARTON-PARTON SCATTERING
       IMPLICIT DOUBLE PRECISION (A-Z)
C
      COMMON/QPLOT/EQQ,BETAQQ,COSQQ,ANGQQ,ETAQQ,PQQ
      COMMON/QPLOTS/PTQQ,ETQQ2
      PARAMETER( PI = 3.14159265359D0 )
C
C REMEMBER THE CUTS ARE ON THE QUARK ANGLE AND/OR ENERGY
C  WE ARE USING THE SYSTEM WHERE THE QUARK RECOILS AGAINST THE REST
C  SO S4T IS THE INVARIANT MASS OF THE REST
C
      S4T= SP + T1 + U1 + M2
      MQ = DSQRT ( M2)
      S = SP + QF2
      SRS = DSQRT ( S )
      S4TEST = (SRS -MQ)*(SRS - MQ)
      IF ( S4T.LE.M2) GOTO 999
      IF ( S4T.GE.S4TEST) GOTO 999
C DETERMINE THE QUARK ENERGY
      EQQ =  (S + M2 - S4T)/2.0D0/SRS
C DETERMINE THE QUARK MOMENTUM
      LAM = S*S+S4T*S4T+M2*M2-2.0D0*(S*S4T +S*M2 +M2*S4T)
      IF (LAM.LE.0.0) GO TO 999
      PQQ = DSQRT(LAM)/2.0D0/SRS
C DETERMINE THE QUARK ANGLE
      COSQQ = ( T1*S/SP +EQQ*SRS)/(PQQ*SRS )
      IF ( ABS(COSQQ).GE.1.0D0) GOTO 999
C
C DETERMINE THE QUARK TRANSVERSE MOMENTUM
      ANGQQ = DACOS(COSQQ)
      PTQQ = PQQ*DSIN(ANGQQ)
C DETERMINE THE QUARK TRANSVERSE ENERGY
      ETQQ2 = PTQQ*PTQQ + M2
C  ADD A RAPIDITY CUT IN CASE
C
      TTAN = DTAN(ANGQQ/2.0D0)
      ETAQQ = DLOG(1.0/TTAN)
C
C        IF(ABS(ETAQQ).GE.3.5) GOTO 999
C EXAMINE THE EVENT TO DETERMINE WHETHER IT SHOULD BE KEPT OR NOT.
C LOOK AT QUARK ENERGY
C       IF( EQQ.LT.0.1 ) GOTO 999
C LOOK AT QUARK ANGLE
C       IF( ANGQQ.LT.0.1D0 ) GOTO 999
C       IF( ANGQQ.GT.(PI-0.1D0) ) GOTO 999
C RETURN HERE IF THE EVENT IS TO BE KEPT.
      CUTH = +1.0D0
      RETURN
C GO HERE IF THE EVENT IS TO BE CUT OUT.
  999 CUTH = -1.0D0
      RETURN
      END
C
C***********************************************************************
C
      SUBROUTINE MAPS2(S2,X,SMIN,SMAX,DS)
       IMPLICIT DOUBLE PRECISION (A-Z)
C
      Y=SMAX/SMIN
      S2=SMIN*Y**X
      DS=S2*DLOG(Y)
      RETURN
      END
C
C***********************************************************************
C
      SUBROUTINE MAPS3(S2,X,SMIN,SMAX,DS)
       IMPLICIT DOUBLE PRECISION (A-Z)
C
      DS = (SMAX - SMIN) / (SMAX*SMIN)
      S2 = SMIN / ( 1.D0 - X * DS * SMIN )
      DS = DS * S2**2
      RETURN
      END
C
C***********************************************************************
C
      SUBROUTINE MAPBW(S2,X,BB,SMAX,DS)
C MAPPING FOR INTEGRATION OF BREIT-WIGNER TYPE OF FUNCTION.
       IMPLICIT DOUBLE PRECISION (A-Z)
C
      CC = DATAN(SMAX/BB)
      S2 = DTAN(X*CC)*BB
      DS = CC/BB
      RETURN
      END
C
C***********************************************************************
C
      SUBROUTINE MAPEXP(S2,X,AA,SMIN,SMAX,DS)
C MAPPING FOR INTEGRATION OF THE EXPONENTIAL TYPE FUNCTION 'EXP(-AA*S2)'
       IMPLICIT DOUBLE PRECISION (A-Z)
C
      DS    = 1.D0/AA*(DEXP(-AA*SMIN) - DEXP(-AA*SMAX))
      S2    = -1.D0/AA*DLOG(DEXP(-AA*SMIN) - AA*DS*X)
      DS    = DS*DEXP(AA*S2)
C
CM    JACOB1 = 1.D0/AC*(DEXP(-AC*PT2MIN) - DEXP(-AC*PT2MAX))
CM    PT2    = -1.D0/AC*DLOG(DEXP(-AC*PT2MIN) - AC*JACOB1*X(1))
CM    JACOB1 = JACOB1*DEXP(AC*PT2)
C
      RETURN
      END
C  CALLING THE HARD, SOFT+VIRTUAL AND BORN PIECES.
      DOUBLE PRECISION FUNCTION MAEGH(SP,T1,U1,M2,QF2,MU)
      IMPLICIT DOUBLE PRECISION (A - Z)
      PARAMETER( PI = 3.14159265359D0 )
      INTEGER NEXCT,NCORR,NALFAS,NSCALE,NPROCS,NMOMT,NPOS,ICOEF
      COMMON/CAPRX/NEXCT
      COMMON/CBORN1/CALFAS,NBORN,NCORR,NPOS,NALFAS,NSCALE
      COMMON/CNSTS3/CRGK0,CRGKQ,CRG1,CRG2
      COMMON/FLAGS/ICOEF
C  NOW WE HAVE TO INPUT THE FORMULAE FOR Så2Då2SIG/DT1DU1.
C ----------------------------------------------------
      S4 = SP + T1 + U1
      IF (NEXCT.GT.0) THEN
        CALL RSTEGG( SP,T1,U1,M2,QF2 )
      ENDIF

      IF(ICOEF.EQ.1) GOTO 20

C THE SUBROUTINES FOR THE EXACT CALCULATION
       SUM  = 0.0D0
        IF (NEXCT.GT.0) THEN
        SUM = SUM + CRGK0*S4/(S4+M2)*ROKGAM( SP,T1,U1,M2,QF2 )
        SUM = SUM + CRGKQ*S4/(S4+M2)*RQEDGAM( SP,T1,U1,M2,QF2 )
        SUM = SUM + CRG1 * REGH(SP,T1,U1,M2,QF2)
       IF(NSCALE.NE.1)THEN
       SUM = SUM + CRG1*DLOG(MU*MU/M2)*REGHM(SP,T1,U1,M2,QF2)
cel       SUM = SUM + CRG1*REGHM(SP,T1,U1,M2,QF2)
       ENDIF
       ENDIF

C THESE TERMS SHOULD BE ADDED FOR THE DIS SCHEME
      IF (NEXCT.EQ.2) THEN
        SUM = SUM + CRG2 * REGHD(SP,T1,U1,M2,QF2)
      ENDIF
      GOTO 30

 20   CONTINUE
      SUM = 0.0D0
      SUM = SUM + CRG1*REGHM(SP,T1,U1,M2,QF2)

 30   CONTINUE

      MAEGH = SUM
C
      RETURN
      END
C********************************************************************
C
      DOUBLE PRECISION FUNCTION MAEGSV(SP,T1,U1,M2,QF2,MU,DEL,S4MAX,S4)

      IMPLICIT DOUBLE PRECISION(A-Z)
      PARAMETER( PI = 3.14159265359D0 )
      INTEGER NEXCT,NCORR,NALFAS,NSCALE,NPROCS,NMOMT,ICOEF
      COMMON/CAPRX/NEXCT,NPROCS,NMOMT
      COMMON/CBORN/CALFAS,NBORN,NCORR,NALFAS,NSCALE
      COMMON/CNSTS1/CBORN1,CSV1,CSV2
      COMMON/FLAGS/ICOEF
C ---------------------------------------------------------
C  FIRST THE EXACT FORMULAE
      SUM  = 0.0D0
C WE NOW CALL THE SOFT PLUS VIRTUAL WITH T1 AND U1
C INTERCHANGED WITH RESPECT TO SVCACF AND SVCFCF.
C THIS IS BECAUSE THE T1 IN THE FORM PROGRAM THAT
C SPAWNED THE ROUTINE IS EQUAL TO OUR U1 IN THE
C PAPER AND VV. THE HARD ROUTINES ARE OK.
C
        SUM = SUM + CSV1*VOKGAM(SP,U1,T1,M2,QF2,DEL,S4MAX,S4)
        SUM = SUM + CSV2*VQEDGAM(SP,U1,T1,M2,QF2,DEL,S4MAX,S4)
C NOW THE SOFT PLUS VIRTUAL TERMS FROM THE MASS FACTORIZATION
C THESE TERMS ARE PROPORTIONAL TO LN(MUå2/M2), WHICH
C SHOULD STILL BE ADDED.
cel           SUM = SUM + CSV1*SVEGMF(SP,T1,U1,M2,QF2,DEL,S4MAX,S4)
       IF(ICOEF.EQ.1)SUM=CSV1*SVEGMF(SP,T1,U1,M2,QF2,DEL,S4MAX,S4)
       MAEGSV =  SUM
       RETURN
       END
C****************************************************************
      DOUBLE PRECISION FUNCTION MAEGB( SP,T1,U1,M2,QF2 )
      IMPLICIT DOUBLE PRECISION(A-Z)
      COMMON/CNSTS1/CBORN,CSV1,CSV2
C
C      REMEMBER WE CALL THE ROUTINE WITH T=T1 AND U=U1
C
      MAEGB = CBORN*
     ^  (T1/U1 + U1/T1 +4.0D0*M2*SP/T1/U1
     ^          -4.0D0*M2*M2*SP*SP/T1/T1/U1/U1
     ^ + 2.D0*SP*QF2/T1/U1 + 2.D0*QF2*QF2/T1/U1
     ^ + 4.D0*M2*QF2/T1/U1 - 2.D0*M2*QF2*SP*SP/T1/T1/U1/U1)
C
      RETURN
      END
C
C*******************************************************************
       DOUBLE PRECISION FUNCTION SVEGMF(SP,T1,U1,M2,QF2
     ^                  ,DEL,S4MAX,S4)
C THESE ARE THE MASS FACTORIZATION PIECES COMING INTO THE
C SOFT PLUS VIRTUAL TERMS. THEY ARISE FROM THE DELTA(1-X)
C PART OF THE GG SPLITTING FUNCTION.
       IMPLICIT DOUBLE PRECISION (A-Z)
       S = SP + QF2
       T1M1 = 1.0D0/T1
       U1M1 = 1.0D0/U1
       TB = T1M1*U1M1
C
       LOG3 = DLOG(-U1/M2)
       DIST = S4MAX - DEL
       L12 = DLOG(S4MAX/M2)
       LOGDEL = L12 - DIST/S4
c
       BGQED =
     ^  (T1/U1 + U1/T1 +4.0D0*M2*SP/T1/U1
     ^          -4.0D0*M2*M2*SP*SP/T1/T1/U1/U1
     ^ + 2.D0*SP*QF2/T1/U1 + 2.D0*QF2*QF2/T1/U1
     ^ + 4.D0*M2*QF2/T1/U1 - 2.D0*M2*QF2*SP*SP/T1/T1/U1/U1)
c
       SVEGMF = -4.0D0*(LOGDEL - LOG3)*BGQED
       RETURN
       END
C  CALLING THE HARD, SOFT+VIRTUAL AND BORN PIECES.
      DOUBLE PRECISION FUNCTION MAEGH_L(SP,T1,U1,M2,QF2,MU)
      IMPLICIT DOUBLE PRECISION (A - Z)
      PARAMETER( PI = 3.14159265359D0 )
      INTEGER NEXCT,NCORR,NALFAS,NSCALE,NPROCS,NMOMT,NPOS,ICOEF
      COMMON/CAPRX/NEXCT
      COMMON/CBORN1/CALFAS,NBORN,NCORR,NPOS,NALFAS,NSCALE
      COMMON/CNSTS3/CRGK0,CRGKQ,CRG1,CRG2
      COMMON/FLAGS/ICOEF
C  NOW WE HAVE TO INPUT THE FORMULAE FOR Så2Då2SIG/DT1DU1.
C ----------------------------------------------------
      S4 = SP + T1 + U1
      IF (NEXCT.GT.0) THEN
        CALL RSTEGG( SP,T1,U1,M2,QF2 )
      ENDIF

C THE SUBROUTINES FOR THE EXACT CALCULATION
       SUM  = 0.0D0
C NORMALIZATION FOR LONGITUDINAL CROSS SECTIONS:
C (SEE (2.7) AND (2.15))
       ALONG = 2.0D0
       LNORM = -4.D0*QF2/SP/SP
C

      IF(ICOEF.EQ.1) GOTO 20

        IF (NEXCT.GT.0) THEN
        SUM = SUM+CRGK0*LNORM*ALONG*S4/(S4+M2)*ROKL(SP,T1,U1,M2,QF2)
        SUM = SUM+CRGKQ*LNORM*ALONG*S4/(S4+M2)*RQEDL(SP,T1,U1,M2,QF2)
        SUM = SUM+CRG1*ALONG*REGH_L(SP,T1,U1,M2,QF2)
         IF(NSCALE.NE.1)THEN
          SUM = SUM+CRG1*ALONG*DLOG(MU*MU/M2)*REGHM_L(SP,T1,U1,M2,QF2)
cel          SUM = SUM+CRG1*ALONG*REGHM_L(SP,T1,U1,M2,QF2)
         ENDIF
       ENDIF

C THESE TERMS SHOULD BE ADDED FOR THE DIS SCHEME
      IF (NEXCT.EQ.2) THEN
        SUM = SUM + CRG2*ALONG*REGHD_L(SP,T1,U1,M2,QF2)
      ENDIF
      GOTO 30

 20   CONTINUE
      SUM =  CRG1*ALONG*REGHM_L(SP,T1,U1,M2,QF2)

 30   CONTINUE

      MAEGH_L = SUM
C
      RETURN
      END
C********************************************************************
C
      DOUBLE PRECISION FUNCTION MAEGSV_L(SP,T1,U1,M2
     #  ,QF2,MU,DEL,S4MAX,S4)
      IMPLICIT DOUBLE PRECISION(A-Z)
      PARAMETER( PI = 3.14159265359D0 )
      INTEGER NEXCT,NCORR,NALFAS,NSCALE,NPROCS,NMOMT,ICOEF
      COMMON/CAPRX/NEXCT,NPROCS,NMOMT
      COMMON/CBORN/CALFAS,NBORN,NCORR,NALFAS,NSCALE
      COMMON/CNSTS1/CBORN1,CSV1,CSV2
      COMMON/FLAGS/ICOEF
C ---------------------------------------------------------
C  FIRST THE EXACT FORMULAE
      SUM  = 0.0D0
C WE NOW CALL THE SOFT PLUS VIRTUAL WITH T1 AND U1
C INTERCHANGED WITH RESPECT TO SVCACF_L AND SVCFCF_L.
C THIS IS BECAUSE THE T1 IN THE FORM PROGRAM THAT
C SPAWNED THE ROUTINE IS EQUAL TO OUR U1 IN THE
C PAPER AND VV. THE HARD ROUTINES ARE OK.
C
C NORMALIZATION FOR LONGITUDINAL CROSS SECTIONS:
C (SEE (2.7) AND (2.15))
       ALONG = 2.0D0
       LNORM = -4.D0*QF2/SP/SP

       IF(ICOEF.EQ.1)GOTO 20
C
        SUM = SUM+CSV1*LNORM*ALONG*VOKL(SP,U1,T1,M2,QF2,DEL,S4MAX,S4)
        SUM = SUM+CSV2*LNORM*ALONG*VQEDL(SP,U1,T1,M2,QF2,DEL,S4MAX,S4)
C NOW THE SOFT PLUS VIRTUAL TERMS FROM THE MASS FACTORIZATION
C THESE TERMS ARE PROPORTIONAL TO LN(MUå2/M2), WHICH
C SHOULD STILL BE ADDED.
cel         SUM = SUM + CSV1*ALONG*SVEGMF_L(SP,T1,U1,M2,QF2,DEL,S4MAX,S4)
        GOTO 30

 20     CONTINUE
       SUM=CSV1*ALONG*SVEGMF_L(SP,T1,U1,M2,QF2,DEL,S4MAX,S4)

 30    CONTINUE
       MAEGSV_L =  SUM
       RETURN
       END
C****************************************************************
      DOUBLE PRECISION FUNCTION MAEGB_L( SP,T1,U1,M2,QF2 )
       IMPLICIT DOUBLE PRECISION(A-Z)
       COMMON/CNSTS1/CBORNL,CSV1,CSV2
C
C NORMALIZATION FOR LONGITUDINAL CROSS SECTIONS:
C (SEE (2.7) AND (2.15))
       ALONG = 2.0D0
       LNORM = -4.D0*QF2/SP/SP
       S = SP + QF2
C
      MAEGB_L = CBORNL*LNORM*ALONG*
     ^  (S - M2*SP*SP/T1/U1)
C
      RETURN
      END
C*******************************************************************
       DOUBLE PRECISION FUNCTION SVEGMF_L(SP,T1,U1,M2,QF2
     ^                  ,DEL,S4MAX,S4)
C THESE ARE THE MASS FACTORIZATION PIECES COMING INTO THE
C SOFT PLUS VIRTUAL TERMS. THEY ARISE FROM THE DELTA(1-X)
C PART OF THE GG SPLITTING FUNCTION.
       IMPLICIT DOUBLE PRECISION (A-Z)
       S = SP + QF2
       T1M1 = 1.0D0/T1
       U1M1 = 1.0D0/U1
       TB = T1M1*U1M1
C
       LOG3 = DLOG(-U1/M2)
       DIST = S4MAX - DEL
       L12 = DLOG(S4MAX/M2)
       LOGDEL = L12 - DIST/S4
c
       BLQED = -4.D0*QF2/SP/SP*(S - M2*SP*SP/T1/U1)
c
       SVEGMF_L = -4.0D0*(LOGDEL - LOG3)*BLQED
       RETURN
       END
      double precision function vokgam(sp,t1,u1,m2,q2,del,s4max,s4)
c
c Here we compute the expression for the CA*CF part of the
c soft plus virtual matrix element.
c
      implicit double precision (a-z)
      integer i,ii
      dimension spv(48),sppv(4)
      parameter( pi = 3.14159265359d0 )
      data zeta2/1.644934066848226d+00/
c
c      logdel = dlog(del/m2)
c      logdel2 = logdel*logdel
C HERE WE REPLACE THE LOGDEL TERMS BY INTEGRALS OVER S4
        DIST = S4MAX - DEL
        L11 = DLOG(S4/M2)
        L12 = DLOG(S4MAX/M2)
        LOGDEL = L12 - DIST/S4
        LOGDEL2 = L12*L12 -2.0D0*DIST*L11/S4
      s = sp + q2
      mu2 = m2
      cep = 1.d0/16.d0/pi/pi
      s1 = 4.0d0*m2 -s
      s1m1 = 1.d0/s1
      t = t1+m2
      u = u1+m2
      xsq = dsqrt(1.0d0 - 4.0d0*m2/s)
      ysq = dsqrt(1.0d0 - 4.0d0*m2/q2)
      x = (1.d0 - xsq)/(1.d0 + xsq)
      sq = s*xsq
      sqm = 1.d0/sq
      sp = s - q2
      y = (1.d0-ysq)/(1.d0+ysq)
      x1 = (1.d0+ysq)/2.d0
      x2 = (1.d0-ysq)/2.d0
      aa = dsqrt(4.d0*m2 -q2)
      aa2 = 4.d0*m2 -q2
      bb = dsqrt(-q2)
      cc = dsqrt(4.d0*m2*q2/s - q2)
      lat = t*t + m2*m2 + q2*q2 - 2.d0*t*m2 - 2.d0*t*q2 - 2*m2*q2
      lau = u*u + m2*m2 + q2*q2 - 2.d0*u*m2 - 2.d0*u*q2 - 2*m2*q2
      lh = dsqrt(lat)
      lhp = dsqrt(lau)
      log1 = dlog(x)
      log2 = dlog(s/m2)
      log3 = dlog(-t1/m2)
      log3x2 = log3*log3
      log4 = dlog(-u1/m2)
      log4x2 = log4*log4
      log5 = dlog(1.d0-x)
      log6 = dlog(1.d0+x)
      log7 = dlog(-y)
      log7x2 = log7*log7
      log8 = dlog(-q2/s)
      log9 = dlog(x1)
      log10 = dlog(-x2)
      logmu = dlog(mu2/m2)
      logq1 = dlog((aa+cc)*(aa+cc)/4.d0/m2)
      logq2 = dlog((aa-bb)/(aa+bb))
      logq3 = dlog((aa-cc)/(aa-bb))
      logq3x2 = logq3*logq3
      dlog1 = dilog(-x)
      dlog2 = dilog(x)
      dlog3 = dilog(t1/m2 + 1.d0)
      dlog4 = dilog(u1/m2 + 1.d0)
      dlog5 = dilog(1.d0-u1/x/t1)
      dlog6 = dilog(1.d0-t1/x/u1)
      dlog7 = dilog(q2*x1/m2)
      dlog8 = dilog(q2*x2/m2)
      dlogq1 = dilog((aa-bb)/(aa-cc))
      dlogq2 = dilog((aa-cc)/(aa+bb))
      dlogq3 = dilog((bb+cc)/(aa+cc))
      dlogq4 = dilog((cc-bb)/(aa+cc))
      dlogq5 = dilog(s/sp)
      dlogq6t = dilog((t1+aa2+lh)/(t1-ysq*(lh+q2*ysq)))
      dlogq6u = dilog((u1+aa2+lhp)/(u1-ysq*(lhp+q2*ysq)))
      dlogq7t = dilog((t1+aa2+lh)/(t1+ysq*(lh-q2*ysq)))
      dlogq7u = dilog((u1+aa2+lhp)/(u1+ysq*(lhp-q2*ysq)))
      dlogq8t = dilog((t1+aa2-lh)/(t1-ysq*(lh+q2*ysq)))
      dlogq8u = dilog((u1+aa2-lhp)/(u1-ysq*(lhp+q2*ysq)))
      dlogq9t = dilog((t1+aa2-lh)/(t1+ysq*(lh-q2*ysq)))
      dlogq9u = dilog((u1+aa2-lhp)/(u1+ysq*(lhp-q2*ysq)))
      dlogq10t = dilog( (t1*(q2 - t - m2 - lh) - 2.d0*m2*lh)/
     &     (t1*(q2 - t - m2 + lh)))
      dlogq10u = dilog( (u1*(q2 - u - m2 - lhp) - 2.d0*m2*lhp)/
     &     (u1*(q2 - u - m2 + lhp)))
      dlogq11t = dilog( (t1*(q2 - t - m2 - lh) - 2.d0*m2*lh)/
     &     (t1*(q2 - t - m2 - lh)))
      dlogq11u = dilog( (u1*(q2 - u - m2 - lhp) - 2.d0*m2*lhp)/
     &     (u1*(q2 - u - m2 - lhp)))
      dlogq12t = dilog( (q2 - t - m2 + lh)/(q2 - t - m2 - lh))
      dlogq12u = dilog( (q2 - u - m2 + lhp)/(q2 - u - m2 - lhp))
      dlogq13t = dilog( (m2 - t - lh)/(m2 - t))
      dlogq13u = dilog( (m2 - u - lhp)/(m2 - u))
c More useful definitions:
      CFCA = 4.d0
      m22 = m2*m2
      m23 = m2*m22
      t1p2 = t1*t1
      t1p3 = t1*t1p2
      t1p4 = t1*t1p3
      t1p5 = t1*t1p4
      t1m1 = 1.d0/t1
      t1m2 = t1m1*t1m1
      t1m3 = t1m2*t1m1
      u1p2 = u1*u1
      u1p3 = u1*u1p2
      u1p4 = u1*u1p3
      u1p5 = u1*u1p4
cjs      u1p6 = u1*u1p5
      u1m1 = 1.d0/u1
      u1m2 = u1m1*u1m1
      u1m3 = u1m1*u1m2
      um1 = 1.d0/u
      um2 = um1*um1
      tm1 = 1.d0/t
      tm2 = tm1*tm1
      q22 = q2*q2
      q23 = q2*q22
      q24 = q22*q22
      tb = t1m1*u1m1
      sm1 = 1.d0/s
      sm2 = sm1*sm1
      sqm1 = 1.d0/sq
      spm1 = 1.d0/sp
      spm2 = spm1*spm1
      spm3 = spm1*spm2
      spm4 = spm2*spm2
      lhm1 = 1.d0/lh
      lhm2 = lhm1*lhm1
      lhm3 = lhm1*lhm2
      lhm4 = lhm2*lhm2
      lhm5 = lhm2*lhm3
      lhpm1 = 1.d0/lhp
      lhpm2 = lhpm1*lhpm1
      lhpm3 = lhpm1*lhpm2
      lhpm4 = lhpm2*lhpm2
      lhpm5 = lhpm2*lhpm3
      xsqm1 = 1.d0/xsq
      log1x2 = log1*log1
      Bqed =
     # (( -4*(t1 + u1)**2*m22 - 2*m2*( q2*( t1p2 + u1p2)
     #  + 2*t1*u1*(t1 + u1)) + t1*u1*(t1p2 + u1p2 -
     #  2*q2*(t1 + u1) + 2* q22)) *t1m2*u1m2 )
      Mqed =
     # (   m2*(u1*t1m2 + t1*u1m2 - u1m1 - t1m1
     #   -3*q2*(t1m2 + u1m2) + 2*q22*(u1m1*t1m2 + t1m1*u1m2)
     #   -8*m2*(q2/2.d0*(t1m3+u1m3)+u1m1*t1m1 + t1m2 + u1m2)
     #  -8*m22*(t1m3 + u1m3 + u1m1*t1m2 + t1m1*u1m2)))
c
c Here is the matrix element.
c
        spv(1) =
     # +m23*log1*log5*sqm*(-512*tb-256*u1m2-256*t1m2)
     # +m23*log1*log6*sqm*(512*tb+256*u1m2+256*t1m2)
     # +m23*log1*log3*sqm*(-256*tb-256*t1m2)
     # +m23*log1*log4*sqm*(-256*tb-256*u1m2)
     # +m23*log1*sqm*logq1*(256*tb+128*u1m2+128*t1m2)
     # +m23*log4*lhpm4*(128*u1p2*t1m1*um1*q2+128*u1*um1*q2)
     # +m23*dlog2*sqm*(-512*tb-256*u1m2-256*t1m2)
     # +m23*dlog1*sqm*(512*tb+256*u1m2+256*t1m2)
     # +m23*zeta2*sqm*(-1792*tb-896*u1m2-896*t1m2)
     # +m23*zeta2*lhpm5*(128*u1p2*t1m1*q2+128*u1*q2)
     # +m23*sqm*log8*logq2*(256*tb+128*u1m2+128*t1m2)
     # +m23*sqm*dlogq1*(512*tb+256*u1m2+256*t1m2)
     # +m23*sqm*dlogq2*(512*tb+256*u1m2+256*t1m2)
     # +m23*sqm*dlogq3*(512*tb+256*u1m2+256*t1m2)
     # +m23*sqm*dlogq4*(-512*tb-256*u1m2-256*t1m2)
     # +m23*sqm*logq3x2*(256*tb+128*u1m2+128*t1m2)
     # +m23*lhpm5*dlogq6u*(-128*u1p2*t1m1*q2-128*u1*q2)
     # +m23*lhpm5*dlogq7u*(-128*u1p2*t1m1*q2-128*u1*q2)
        spv(2) =
     # +m23*lhpm5*dlogq8u*(128*u1p2*t1m1*q2+128*u1*q2)
     # +m23*lhpm5*dlogq9u*(128*u1p2*t1m1*q2+128*u1*q2)
     # +m23*lhpm5*dlogq10u*(128*u1p2*t1m1*q2+128*u1*q2)
     # +m23*lhpm5*dlogq11u*(128*u1p2*t1m1*q2+128*u1*q2)
     # +m23*lhpm5*dlogq12u*(-128*u1p2*t1m1*q2-128*u1*q2)
     # +m23*lhpm5*dlogq13u*(-256*u1p2*t1m1*q2-256*u1*q2)
     # +m22*log1x2*sqm*(-32*u1m1-32*t1m1)
     # +m22*log1x2*(-32*u1m1*spm1-32*t1m1*spm1)
     # +m22*log1*log5*sqm*(-128*u1*t1m2+256*tb*q2-640*
     #    u1m1-128*u1m2*t1-640*t1m1)
     # +m22*log1*log6*sqm*(128*u1*t1m2-256*tb*q2+768*
     #    u1m1+128*u1m2*t1+768*t1m1)
     # +m22*log1*log3*sqm*(-128*u1*t1m2+128*tb*q2-384*
     #    u1m1-384*t1m1)
     # +m22*log1*log4*sqm*(128*tb*q2-384*u1m1-128*u1m2*
     #    t1-384*t1m1)
     # +m22*log1*sqm*logq1*(64*u1*t1m2-128*tb*q2+384*
     #    u1m1+64*u1m2*t1+384*t1m1)
        spv(3)=
     # +m22*log1*sqm*(-256*u1*t1m1*q2*spm2+128*u1*t1m1*spm1-
     #    256*u1m1*t1*q2*spm2+128*u1m1*t1*spm1-384*u1m1*q2*spm1+128
     #    *u1m1-384*t1m1*q2*spm1+128*t1m1-512*q2*spm2+256*spm1)
     # +m22*log3x2*(64*tb)
     # +m22*log3*log4*(128*tb+128*u1m2+128*t1m2)
     # +m22*log3*(16*u1*t1m2*tm1+16*u1m1*tm1+32*t1m1*tm1)
     # +m22*log4x2*(64*tb)
     # +m22*log4*lhpm2*(32*u1p3*t1m1*um2+32*u1p2*t1m1*um1+32*u1p2
     #    *t1m1*um2*q2+32*u1p2*um2+32*u1*um1+32*u1*um2*q2)
     # +m22*log4*lhpm4*(-32*u1p4*t1m1*um1+192*u1p3*t1m1*um1*q2-
     #    32*u1p3*um1+32*u1p2*t1m1*um1*q22+64*u1p2*um1*q2-128*u1*t1*
     #    um1*q2+32*u1*um1*q22)
     # +m22*log4*(-32*u1*t1m1*um2+32*u1m1*um1+16*u1m2*t1*um1
     #    +16*t1m1*um1-32*um2)
     # +m22*dlog2*sqm*(-128*u1*t1m2+256*tb*q2-640*u1m1
     #    -128*u1m2*t1-640*t1m1)
     # +m22*dlog3*(16*u1*t1m3+16*tb+32*t1m2)
     # +m22*dlog4*(16*tb+32*u1m2+16*u1m3*t1)
        spv(4)=
     # +m22*dlog1*sqm*(128*u1*t1m2-256*tb*q2+768*u1m1
     #    +128*u1m2*t1+768*t1m1)
     # +m22*zeta2*sqm*(-448*u1*t1m2+896*tb*q2-2432*
     #    u1m1-448*u1m2*t1-2432*t1m1)
     # +m22*zeta2*lhm1*(-64*u1m1)
     # +m22*zeta2*lhm3*(-64*u1m1*t1*q2-128*q2)
     # +m22*zeta2*lhpm1*(-64*t1m1)
     # +m22*zeta2*lhpm3*(32*u1p2*t1m1-64*u1*t1m1*q2+32*u1-64*q2)
     # +m22*zeta2*lhpm5*(-32*u1p4*t1m1-32*u1p3+224*u1p2*t1m1*
     #    q22-128*u1p2*q2-128*u1*t1*q2+224*u1*q22)
     # +m22*zeta2*(-16*u1*t1m3-96*tb+192*u1m1*spm1-
     #    256*u1m2-16*u1m3*t1+192*t1m1*spm1-256*t1m2)
     # +m22*sqm*log8*logq2*(64*u1*t1m2-128*tb*q2+384*
     #    u1m1+64*u1m2*t1+384*t1m1)
     # +m22*sqm*dlogq1*(128*u1*t1m2-256*tb*q2+768*u1m1
     #    +128*u1m2*t1+768*t1m1)
     # +m22*sqm*dlogq2*(128*u1*t1m2-256*tb*q2+768*u1m1
     #    +128*u1m2*t1+768*t1m1)
        spv(5)=
     # +m22*sqm*dlogq3*(128*u1*t1m2-256*tb*q2+768*u1m1
     #    +128*u1m2*t1+768*t1m1)
     # +m22*sqm*dlogq4*(-128*u1*t1m2+256*tb*q2-768*
     #    u1m1-128*u1m2*t1-768*t1m1)
     # +m22*sqm*logq3x2*(64*u1*t1m2-128*tb*q2+384*u1m1
     #    +64*u1m2*t1+384*t1m1)
     # +m22*log9*lhm2*(-64*u1m1*q2*x1+64*u1m1*q2*x2-128*t1m1*q2
     #    *x1+128*t1m1*q2*x2)
     # +m22*log9*lhpm2*(-128*u1m1*q2*x1+128*u1m1*q2*x2-128*t1m1
     #    *q2*x1+128*t1m1*q2*x2)
     # +m22*log9*lhpm4*(-192*u1p2*t1m1*q2*x1+192*u1p2*t1m1*q2*x2
     #    +192*u1*t1m1*q22*x1-192*u1*t1m1*q22*x2-192*u1*q2*x1+192*
     #    u1*q2*x2+192*q22*x1-192*q22*x2)
     # +m22*log10*lhm2*(64*u1m1*q2*x1-64*u1m1*q2*x2+128*t1m1*q2*
     #    x1-128*t1m1*q2*x2)
     # +m22*log10*lhpm2*(128*u1m1*q2*x1-128*u1m1*q2*x2+128*t1m1*
     #    q2*x1-128*t1m1*q2*x2)
        spv(6)=
     # +m22*log10*lhpm4*(192*u1p2*t1m1*q2*x1-192*u1p2*t1m1*q2*x2-
     #    192*u1*t1m1*q22*x1+192*u1*t1m1*q22*x2+192*u1*q2*x1-192*u1*
     #    q2*x2-192*q22*x1+192*q22*x2)
     # +m22*lhm1*dlogq6t*(64*u1m1)
     # +m22*lhm1*dlogq7t*(64*u1m1)
     # +m22*lhm1*dlogq8t*(-64*u1m1)
     # +m22*lhm1*dlogq9t*(-64*u1m1)
     # +m22*lhm1*dlogq10t*(-64*u1m1)
     # +m22*lhm1*dlogq11t*(-64*u1m1)
     # +m22*lhm1*dlogq12t*(64*u1m1)
     # +m22*lhm1*dlogq13t*(128*u1m1)
     # +m22*lhm3*dlogq6t*(64*u1m1*t1*q2+128*q2)
     # +m22*lhm3*dlogq7t*(64*u1m1*t1*q2+128*q2)
     # +m22*lhm3*dlogq8t*(-64*u1m1*t1*q2-128*q2)
     # +m22*lhm3*dlogq9t*(-64*u1m1*t1*q2-128*q2)
     # +m22*lhm3*dlogq10t*(-64*u1m1*t1*q2-128*q2)
     # +m22*lhm3*dlogq11t*(-64*u1m1*t1*q2-128*q2)
     # +m22*lhm3*dlogq12t*(64*u1m1*t1*q2+128*q2)
        spv(7)=
     # +m22*lhm3*dlogq13t*(128*u1m1*t1*q2+256*q2)
     # +m22*lhpm1*dlogq6u*(64*t1m1)
     # +m22*lhpm1*dlogq7u*(64*t1m1)
     # +m22*lhpm1*dlogq8u*(-64*t1m1)
     # +m22*lhpm1*dlogq9u*(-64*t1m1)
     # +m22*lhpm1*dlogq10u*(-64*t1m1)
     # +m22*lhpm1*dlogq11u*(-64*t1m1)
     # +m22*lhpm1*dlogq12u*(64*t1m1)
     # +m22*lhpm1*dlogq13u*(128*t1m1)
     # +m22*lhpm2*(-32*u1p2*t1m1*um1-32*u1*t1m1*um1*q2-32*u1*
     #    um1-32*um1*q2)
     # +m22*lhpm3*dlogq6u*(-32*u1p2*t1m1+64*u1*t1m1*q2-32*u1+64*
     #    q2)
     # +m22*lhpm3*dlogq7u*(-32*u1p2*t1m1+64*u1*t1m1*q2-32*u1+64*
     #    q2)
     # +m22*lhpm3*dlogq8u*(32*u1p2*t1m1-64*u1*t1m1*q2+32*u1-64*q2)
     # +m22*lhpm3*dlogq9u*(32*u1p2*t1m1-64*u1*t1m1*q2+32*u1-64*q2)
     # +m22*lhpm3*dlogq10u*(32*u1p2*t1m1-64*u1*t1m1*q2+32*u1-64*q2)
        spv(8)=
     # +m22*lhpm3*dlogq11u*(32*u1p2*t1m1-64*u1*t1m1*q2+32*u1-64*q2)
     # +m22*lhpm3*dlogq12u*(-32*u1p2*t1m1+64*u1*t1m1*q2-32*u1+64
     #    *q2)
     # +m22*lhpm3*dlogq13u*(-64*u1p2*t1m1+128*u1*t1m1*q2-64*u1+
     #    128*q2)
     # +m22*lhpm5*dlogq6u*(32*u1p4*t1m1+32*u1p3-224*u1p2*t1m1*q22
     #    +128*u1p2*q2+128*u1*t1*q2-224*u1*q22)
     # +m22*lhpm5*dlogq7u*(32*u1p4*t1m1+32*u1p3-224*u1p2*t1m1*q22
     #    +128*u1p2*q2+128*u1*t1*q2-224*u1*q22)
     # +m22*lhpm5*dlogq8u*(-32*u1p4*t1m1-32*u1p3+224*u1p2*t1m1*
     #    q22-128*u1p2*q2-128*u1*t1*q2+224*u1*q22)
     # +m22*lhpm5*dlogq9u*(-32*u1p4*t1m1-32*u1p3+224*u1p2*t1m1*
     #    q22-128*u1p2*q2-128*u1*t1*q2+224*u1*q22)
     # +m22*lhpm5*dlogq10u*(-32*u1p4*t1m1-32*u1p3+224*u1p2*t1m1*
     #    q22-128*u1p2*q2-128*u1*t1*q2+224*u1*q22)
     # +m22*lhpm5*dlogq11u*(-32*u1p4*t1m1-32*u1p3+224*u1p2*t1m1*
     #    q22-128*u1p2*q2-128*u1*t1*q2+224*u1*q22)
        spv(9)=
     # +m22*lhpm5*dlogq12u*(32*u1p4*t1m1+32*u1p3-224*u1p2*t1m1*q22
     #    +128*u1p2*q2+128*u1*t1*q2-224*u1*q22)
     # +m22*lhpm5*dlogq13u*(64*u1p4*t1m1+64*u1p3-448*u1p2*t1m1*q22
     #    +256*u1p2*q2+256*u1*t1*q2-448*u1*q22)
     # +m22*log7x2*(32*u1m1*spm1+32*t1m1*spm1)
     # +m22*dlog7*(128*tb+128*u1m2+128*t1m2)
     # +m22*dlog8*(128*tb+128*u1m2+128*t1m2)
     # +m22*(32*u1m1*um1+32*t1m1*um1)
     # +m2*log1x2*sqm*(48+8*u1*t1m1+8*u1m1*t1-24*u1m1*q2-24*
     #    t1m1*q2-32*Bqed)
     # +m2*log1x2*(16*u1p2*t1m1*q2*spm3-16*u1p2*t1m1*spm2+32*u1*
     #    t1m1*q2*spm2-16*u1*t1m1*spm1+16*u1*q2*spm3-80*u1*spm2+
     #    16*u1m1*t1p2*q2*spm3-16*u1m1*t1p2*spm2+32*u1m1*t1*q2*spm2
     #    -16*u1m1*t1*spm1+16*u1m1*q2*spm1+16*t1*q2*spm3-80*t1*
     #    spm2+16*t1m1*q2*spm1+64*q2*spm2-64*spm1)
     # +m2*log1*log5*sqm*(-256-64*u1*t1m1-64*u1*t1m2*q2-64*
     #    u1m1*t1+128*tb*q22-64*u1m1*q2-64*u1m2*t1*q2+64*
     #    u1m2*q22-64*t1m1*q2+64*t1m2*q22+64*Bqed)
        spv(10)=
     # +m2*log1*log6*sqm*(64+32*u1*t1m1+64*u1*t1m2*q2+32*u1m1*
     #    t1-128*tb*q22+160*u1m1*q2+64*u1m2*t1*q2-64*u1m2*
     #    q22+160*t1m1*q2-64*t1m2*q22+64*Bqed)
     # +m2*log1*log3*sqm*(-32-32*u1*t1m1-64*u1*t1m2*q2+64*
     #    tb*q22-96*u1m1*q2-64*t1m1*q2+64*t1m2*q22)
     # +m2*log1*log4*sqm*(-32-32*u1m1*t1+64*tb*q22-64
     #    *u1m1*q2-64*u1m2*t1*q2+64*u1m2*q22-96*t1m1*q2)
     # +m2*log1*sqm*logq1*(32+16*u1*t1m1+32*u1*t1m2*q2+16*u1m1*
     #    t1-64*tb*q22+80*u1m1*q2+32*u1m2*t1*q2-32*u1m2*
     #    q22+80*t1m1*q2-32*t1m2*q22)
        spv(11)=
     # +m2*log1*sqm*(128+192*u1p3*t1m1*q2*spm3+64*u1p3*t1m1*
     #    spm2-192*u1p2*t1m1*q22*spm3+256*u1p2*t1m1*q2*spm2-32*u1p2
     #    *t1m1*s1m1+160*u1p2*t1m1*spm1+384*u1p2*q2*spm3+384*u1*t1*
     #    q2*spm3-128*u1*t1*spm2-384*u1*t1m1*q22*spm2+32*u1*t1m1*q2
     #    *s1m1-64*u1*t1m1*q2*spm1+128*u1*t1m1-192*u1*q22*spm3+
     #    640*u1*q2*spm2+32*u1*s1m1+96*u1*spm1+192*u1m1*t1p3*q2*spm3
     #    +64*u1m1*t1p3*spm2-192*u1m1*t1p2*q22*spm3+256*u1m1*t1p2*
     #    q2*spm2-32*u1m1*t1p2*s1m1+160*u1m1*t1p2*spm1-384*u1m1*t1*
     #    q22*spm2+32*u1m1*t1*q2*s1m1-64*u1m1*t1*q2*spm1+128*u1m1*
     #    t1-160*u1m1*q22*spm1-96*u1m1*q2+384*t1p2*q2*spm3-192*t1*
     #    q22*spm3+640*t1*q2*spm2+32*t1*s1m1+96*t1*spm1-160*t1m1*
     #    q22*spm1-96*t1m1*q2-512*q22*spm2-64*q2*s1m1+128*q2*
     #    spm1-64*Bqed*logdel)
     # +m2*log3x2*(32*u1m1+32*t1m1)
     # +m2*log3*log4*(64*u1m1+64*u1m2*q2+64*t1m1+64*t1m2*q2)
     # +m2*log3*lhm2*(-16*u1m1*t1p3*tm1+16*u1m1*t1p2*tm1*q2-16*
     #    t1p2*tm1+16*t1*tm1*q2)
        spv(12)=
     # +m2*log3*(16*u1*t1m1*tm1-16*u1m1*t1p2*tm2-16*t1*tm2-16*
     #    t1m1*tm1*q2+16*tm1)
     # +m2*log4x2*(32*u1m1+32*t1m1)
     # +m2*log4*lhpm2*(48*u1p4*t1m1*um2-16*u1p3*t1m1*um1+48*u1p3*
     #    t1m1*um2*q2+48*u1p3*um2-48*u1p2*um1+48*u1p2*um2*q2-32*u1
     #    *t1*um1)
     # +m2*log4*lhpm4*(-32*u1p5*t1m1*um1+80*u1p4*t1m1*um1*q2+32*
     #    u1p3*t1*um1+96*u1p3*t1m1*um1*q22-112*u1p3*um1*q2-192*u1p2*
     #    t1*um1*q2-16*u1p2*t1m1*um1*q23+128*u1p2*um1*q22+32*u1*t1*
     #    um1*q22-16*u1*um1*q23)
     # +m2*log4*(-48*u1p2*t1m1*um2+32*u1*t1m1*um1+16*u1*t1m1*
     #    um2*q2-48*u1*um2+16*u1m1*t1*um1-16*u1m1*um1*q2+48*um1
     #    +16*um2*q2)
     # +m2*dlog2*sqm*(-256-64*u1*t1m1-64*u1*t1m2*q2-64*u1m1*
     #    t1+128*tb*q22-64*u1m1*q2-64*u1m2*t1*q2+64*u1m2*
     #    q22-64*t1m1*q2+64*t1m2*q22+64*Bqed)
     # +m2*dlog3*(16*u1m1+48*t1m1-16*t1m2*q2)
     # +m2*dlog4*(48*u1m1-16*u1m2*q2+16*t1m1)
        spv(13)=
     # +m2*dlog1*sqm*(64+32*u1*t1m1+64*u1*t1m2*q2+32*u1m1*t1
     #    -128*tb*q22+160*u1m1*q2+64*u1m2*t1*q2-64*u1m2*
     #    q22+160*t1m1*q2-64*t1m2*q22+64*Bqed)
     # +m2*zeta2*sqm*(-608-176*u1*t1m1-224*u1*t1m2*q2-176*
     #    u1m1*t1+448*tb*q22-368*u1m1*q2-224*u1m2*t1*q2+
     #    224*u1m2*q22-368*t1m1*q2+224*t1m2*q22-32*Bqed)
     # +m2*zeta2*lhm1*(-16-32*u1m1*t1-48*u1m1*q2)
     # +m2*zeta2*lhm3*(16*u1*q2+144*u1m1*t1p2*q2-128*u1m1*t1*q22
     #    +16*t1p2+160*t1*q2-48*q22)
     # +m2*zeta2*lhpm1*(-32*u1*t1m1-48*t1m1*q2)
     # +m2*zeta2*lhpm3*(-16*u1p3*t1m1+240*u1p2*t1m1*q2-48*u1p2-
     #    32*u1*t1-176*u1*t1m1*q22+272*u1*q2+32*t1*q2-48*q22)
     # +m2*zeta2*lhpm5*(16*u1p5*t1m1-160*u1p4*t1m1*q2+48*u1p4+32*
     #    u1p3*t1+272*u1p3*t1m1*q22-288*u1p3*q2-128*u1p2*t1*q2-128*
     #    u1p2*t1m1*q23+368*u1p2*q22+96*u1*t1*q22-128*u1*q23)
        spv(14)=
     # +m2*zeta2*(-96*u1p2*t1m1*q2*spm3+96*u1p2*t1m1*spm2-192*u1
     #    *t1m1*q2*spm2+96*u1*t1m1*spm1-96*u1*q2*spm3+480*u1*spm2
     #    -96*u1m1*t1p2*q2*spm3+96*u1m1*t1p2*spm2-192*u1m1*t1*q2*
     #    spm2+96*u1m1*t1*spm1-96*u1m1*q2*spm1-96*u1m1-96*u1m2*
     #    q2-96*t1*q2*spm3+480*t1*spm2-96*t1m1*q2*spm1-96*t1m1-
     #    96*t1m2*q2-384*q2*spm2+384*spm1)
     # +m2*sqm*log8*logq2*(32+16*u1*t1m1+32*u1*t1m2*q2+16*u1m1
     #    *t1-64*tb*q22+80*u1m1*q2+32*u1m2*t1*q2-32*u1m2*
     #    q22+80*t1m1*q2-32*t1m2*q22)
     # +m2*sqm*dlogq1*(64+32*u1*t1m1+64*u1*t1m2*q2+32*u1m1*t1
     #    -128*tb*q22+160*u1m1*q2+64*u1m2*t1*q2-64*u1m2*
     #    q22+160*t1m1*q2-64*t1m2*q22)
     # +m2*sqm*dlogq2*(64+32*u1*t1m1+64*u1*t1m2*q2+32*u1m1*t1
     #    -128*tb*q22+160*u1m1*q2+64*u1m2*t1*q2-64*u1m2*
     #    q22+160*t1m1*q2-64*t1m2*q22)
     # +m2*sqm*dlogq3*(64+32*u1*t1m1+64*u1*t1m2*q2+32*u1m1*t1
     #    -128*tb*q22+160*u1m1*q2+64*u1m2*t1*q2-64*u1m2*
     #    q22+160*t1m1*q2-64*t1m2*q22)
        spv(15)=
     # +m2*sqm*dlogq4*(-64-32*u1*t1m1-64*u1*t1m2*q2-32*u1m1*
     #    t1+128*tb*q22-160*u1m1*q2-64*u1m2*t1*q2+64*u1m2*
     #    q22-160*t1m1*q2+64*t1m2*q22)
     # +m2*sqm*logq3x2*(32+16*u1*t1m1+32*u1*t1m2*q2+16*u1m1*t1
     #    -64*tb*q22+80*u1m1*q2+32*u1m2*t1*q2-32*u1m2*q22
     #    +80*t1m1*q2-32*t1m2*q22)
     # +m2*log9*lhm2*(16*u1*t1m1*q2*x1-16*u1*t1m1*q2*x2+16*u1m1*
     #    t1p2*x1-16*u1m1*t1p2*x2+128*u1m1*t1*q2*x1-128*u1m1*t1*q2*x2
     #    -128*u1m1*q22*x1+128*u1m1*q22*x2+32*t1*x1-32*t1*x2-48*
     #    t1m1*q22*x1+48*t1m1*q22*x2+144*q2*x1-144*q2*x2)
     # +m2*log9*lhpm2*(-16*u1p2*t1m1*x1+16*u1p2*t1m1*x2+144*u1*
     #    t1m1*q2*x1-144*u1*t1m1*q2*x2-16*u1*x1+16*u1*x2-128*t1m1*
     #    q22*x1+128*t1m1*q22*x2+144*q2*x1-144*q2*x2)
     # +m2*log9*lhpm4*(48*u1p4*t1m1*x1-48*u1p4*t1m1*x2-240*u1p3*
     #    t1m1*q2*x1+240*u1p3*t1m1*q2*x2+48*u1p3*x1-48*u1p3*x2+176*
     #    u1p2*t1m1*q22*x1-176*u1p2*t1m1*q22*x2-176*u1p2*q2*x1+176*
     #    u1p2*q2*x2+64*u1*t1*q2*x1-64*u1*t1*q2*x2-112*u1*t1m1*q23*x1
     #    +112*u1*t1m1*q23*x2+240*u1*q22*x1-240*u1*q22*x2+64*t1*
     #    q22*x1-64*t1*q22*x2-112*q23*x1+112*q23*x2)
        spv(16)=
     # +m2*log9*(64*u1*t1m1*q2*spm2*x1-64*u1*t1m1*q2*spm2*x2-64*u1
     #    *t1m1*spm1*x1+64*u1*t1m1*spm1*x2+64*u1m1*t1*q2*spm2*x1-64
     #    *u1m1*t1*q2*spm2*x2-64*u1m1*t1*spm1*x1+64*u1m1*t1*spm1*x2
     #    +96*u1m1*q2*spm1*x1-96*u1m1*q2*spm1*x2-112*u1m1*x1+112*
     #    u1m1*x2+96*t1m1*q2*spm1*x1-96*t1m1*q2*spm1*x2-128*t1m1*x1
     #    +128*t1m1*x2+128*q2*spm2*x1-128*q2*spm2*x2-128*spm1*x1+
     #    128*spm1*x2)
     # +m2*log10*lhm2*(-16*u1*t1m1*q2*x1+16*u1*t1m1*q2*x2-16*
     #    u1m1*t1p2*x1+16*u1m1*t1p2*x2-128*u1m1*t1*q2*x1+128*u1m1*t1*
     #    q2*x2+128*u1m1*q22*x1-128*u1m1*q22*x2-32*t1*x1+32*t1*x2
     #    +48*t1m1*q22*x1-48*t1m1*q22*x2-144*q2*x1+144*q2*x2)
     # +m2*log10*lhpm2*(16*u1p2*t1m1*x1-16*u1p2*t1m1*x2-144*u1*
     #    t1m1*q2*x1+144*u1*t1m1*q2*x2+16*u1*x1-16*u1*x2+128*t1m1*
     #    q22*x1-128*t1m1*q22*x2-144*q2*x1+144*q2*x2)
        spv(17)=
     # +m2*log10*lhpm4*(-48*u1p4*t1m1*x1+48*u1p4*t1m1*x2+240*u1p3
     #    *t1m1*q2*x1-240*u1p3*t1m1*q2*x2-48*u1p3*x1+48*u1p3*x2-176*
     #    u1p2*t1m1*q22*x1+176*u1p2*t1m1*q22*x2+176*u1p2*q2*x1-176*
     #    u1p2*q2*x2-64*u1*t1*q2*x1+64*u1*t1*q2*x2+112*u1*t1m1*q23*x1
     #    -112*u1*t1m1*q23*x2-240*u1*q22*x1+240*u1*q22*x2-64*t1*
     #    q22*x1+64*t1*q22*x2+112*q23*x1-112*q23*x2)
     # +m2*log10*(-64*u1*t1m1*q2*spm2*x1+64*u1*t1m1*q2*spm2*x2+
     #    64*u1*t1m1*spm1*x1-64*u1*t1m1*spm1*x2-64*u1m1*t1*q2*spm2*x1
     #    +64*u1m1*t1*q2*spm2*x2+64*u1m1*t1*spm1*x1-64*u1m1*t1*spm1
     #    *x2-96*u1m1*q2*spm1*x1+96*u1m1*q2*spm1*x2+112*u1m1*x1-
     #    112*u1m1*x2-96*t1m1*q2*spm1*x1+96*t1m1*q2*spm1*x2+128*
     #    t1m1*x1-128*t1m1*x2-128*q2*spm2*x1+128*q2*spm2*x2+128*
     #    spm1*x1-128*spm1*x2)
     # +m2*lhm1*dlogq6t*(16+32*u1m1*t1+48*u1m1*q2)
     # +m2*lhm1*dlogq7t*(16+32*u1m1*t1+48*u1m1*q2)
     # +m2*lhm1*dlogq8t*(-16-32*u1m1*t1-48*u1m1*q2)
     # +m2*lhm1*dlogq9t*(-16-32*u1m1*t1-48*u1m1*q2)
     # +m2*lhm1*dlogq10t*(-16-32*u1m1*t1-48*u1m1*q2)
        spv(18)=
     # +m2*lhm1*dlogq11t*(-16-32*u1m1*t1-48*u1m1*q2)
     # +m2*lhm1*dlogq12t*(16+32*u1m1*t1+48*u1m1*q2)
     # +m2*lhm1*dlogq13t*(32+64*u1m1*t1+96*u1m1*q2)
     # +m2*lhm3*dlogq6t*(-16*u1*q2-144*u1m1*t1p2*q2+128*u1m1*t1*
     #    q22-16*t1p2-160*t1*q2+48*q22)
     # +m2*lhm3*dlogq7t*(-16*u1*q2-144*u1m1*t1p2*q2+128*u1m1*t1*
     #    q22-16*t1p2-160*t1*q2+48*q22)
     # +m2*lhm3*dlogq8t*(16*u1*q2+144*u1m1*t1p2*q2-128*u1m1*t1*q22
     #    +16*t1p2+160*t1*q2-48*q22)
     # +m2*lhm3*dlogq9t*(16*u1*q2+144*u1m1*t1p2*q2-128*u1m1*t1*q22
     #    +16*t1p2+160*t1*q2-48*q22)
     # +m2*lhm3*dlogq10t*(16*u1*q2+144*u1m1*t1p2*q2-128*u1m1*t1*q22
     #    +16*t1p2+160*t1*q2-48*q22)
     # +m2*lhm3*dlogq11t*(16*u1*q2+144*u1m1*t1p2*q2-128*u1m1*t1*q22
     #    +16*t1p2+160*t1*q2-48*q22)
     # +m2*lhm3*dlogq12t*(-16*u1*q2-144*u1m1*t1p2*q2+128*u1m1*t1*
     #    q22-16*t1p2-160*t1*q2+48*q22)
        spv(19)=
     # +m2*lhm3*dlogq13t*(-32*u1*q2-288*u1m1*t1p2*q2+256*u1m1*t1*
     #    q22-32*t1p2-320*t1*q2+96*q22)
     # +m2*lhpm1*dlogq6u*(32*u1*t1m1+48*t1m1*q2)
     # +m2*lhpm1*dlogq7u*(32*u1*t1m1+48*t1m1*q2)
     # +m2*lhpm1*dlogq8u*(-32*u1*t1m1-48*t1m1*q2)
     # +m2*lhpm1*dlogq9u*(-32*u1*t1m1-48*t1m1*q2)
     # +m2*lhpm1*dlogq10u*(-32*u1*t1m1-48*t1m1*q2)
     # +m2*lhpm1*dlogq11u*(-32*u1*t1m1-48*t1m1*q2)
     # +m2*lhpm1*dlogq12u*(32*u1*t1m1+48*t1m1*q2)
     # +m2*lhpm1*dlogq13u*(64*u1*t1m1+96*t1m1*q2)
     # +m2*lhpm2*(-48*u1p3*t1m1*um1-48*u1p2*t1m1*um1*q2+32*u1p2
     #    *t1m1-48*u1p2*um1+32*u1*t1m1*q2-48*u1*um1*q2+32*u1+32*
     #    u1m1*t1*q2-32*u1m1*q22-32*t1m1*q22+64*q2)
     # +m2*lhpm3*dlogq6u*(16*u1p3*t1m1-240*u1p2*t1m1*q2+48*u1p2+32*
     #    u1*t1+176*u1*t1m1*q22-272*u1*q2-32*t1*q2+48*q22)
     # +m2*lhpm3*dlogq7u*(16*u1p3*t1m1-240*u1p2*t1m1*q2+48*u1p2+32*
     #    u1*t1+176*u1*t1m1*q22-272*u1*q2-32*t1*q2+48*q22)
        spv(20)=
     # +m2*lhpm3*dlogq8u*(-16*u1p3*t1m1+240*u1p2*t1m1*q2-48*u1p2-
     #    32*u1*t1-176*u1*t1m1*q22+272*u1*q2+32*t1*q2-48*q22)
     # +m2*lhpm3*dlogq9u*(-16*u1p3*t1m1+240*u1p2*t1m1*q2-48*u1p2-
     #    32*u1*t1-176*u1*t1m1*q22+272*u1*q2+32*t1*q2-48*q22)
     # +m2*lhpm3*dlogq10u*(-16*u1p3*t1m1+240*u1p2*t1m1*q2-48*u1p2
     #    -32*u1*t1-176*u1*t1m1*q22+272*u1*q2+32*t1*q2-48*q22)
     # +m2*lhpm3*dlogq11u*(-16*u1p3*t1m1+240*u1p2*t1m1*q2-48*u1p2
     #    -32*u1*t1-176*u1*t1m1*q22+272*u1*q2+32*t1*q2-48*q22)
     # +m2*lhpm3*dlogq12u*(16*u1p3*t1m1-240*u1p2*t1m1*q2+48*u1p2+32
     #    *u1*t1+176*u1*t1m1*q22-272*u1*q2-32*t1*q2+48*q22)
     # +m2*lhpm3*dlogq13u*(32*u1p3*t1m1-480*u1p2*t1m1*q2+96*u1p2+64
     #    *u1*t1+352*u1*t1m1*q22-544*u1*q2-64*t1*q2+96*q22)
     # +m2*lhpm5*dlogq6u*(-16*u1p5*t1m1+160*u1p4*t1m1*q2-48*u1p4-
     #    32*u1p3*t1-272*u1p3*t1m1*q22+288*u1p3*q2+128*u1p2*t1*q2+128
     #    *u1p2*t1m1*q23-368*u1p2*q22-96*u1*t1*q22+128*u1*q23)
     # +m2*lhpm5*dlogq7u*(-16*u1p5*t1m1+160*u1p4*t1m1*q2-48*u1p4-
     #    32*u1p3*t1-272*u1p3*t1m1*q22+288*u1p3*q2+128*u1p2*t1*q2+128
     #    *u1p2*t1m1*q23-368*u1p2*q22-96*u1*t1*q22+128*u1*q23)
        spv(21)=
     # +m2*lhpm5*dlogq8u*(16*u1p5*t1m1-160*u1p4*t1m1*q2+48*u1p4+32*
     #    u1p3*t1+272*u1p3*t1m1*q22-288*u1p3*q2-128*u1p2*t1*q2-128*
     #    u1p2*t1m1*q23+368*u1p2*q22+96*u1*t1*q22-128*u1*q23)
     # +m2*lhpm5*dlogq9u*(16*u1p5*t1m1-160*u1p4*t1m1*q2+48*u1p4+32*
     #    u1p3*t1+272*u1p3*t1m1*q22-288*u1p3*q2-128*u1p2*t1*q2-128*
     #    u1p2*t1m1*q23+368*u1p2*q22+96*u1*t1*q22-128*u1*q23)
     # +m2*lhpm5*dlogq10u*(16*u1p5*t1m1-160*u1p4*t1m1*q2+48*u1p4+32
     #    *u1p3*t1+272*u1p3*t1m1*q22-288*u1p3*q2-128*u1p2*t1*q2-128*
     #    u1p2*t1m1*q23+368*u1p2*q22+96*u1*t1*q22-128*u1*q23)
     # +m2*lhpm5*dlogq11u*(16*u1p5*t1m1-160*u1p4*t1m1*q2+48*u1p4+32
     #    *u1p3*t1+272*u1p3*t1m1*q22-288*u1p3*q2-128*u1p2*t1*q2-128*
     #    u1p2*t1m1*q23+368*u1p2*q22+96*u1*t1*q22-128*u1*q23)
     # +m2*lhpm5*dlogq12u*(-16*u1p5*t1m1+160*u1p4*t1m1*q2-48*u1p4
     #    -32*u1p3*t1-272*u1p3*t1m1*q22+288*u1p3*q2+128*u1p2*t1*q2+
     #    128*u1p2*t1m1*q23-368*u1p2*q22-96*u1*t1*q22+128*u1*q23)
     # +m2*lhpm5*dlogq13u*(-32*u1p5*t1m1+320*u1p4*t1m1*q2-96*u1p4
     #    -64*u1p3*t1-544*u1p3*t1m1*q22+576*u1p3*q2+256*u1p2*t1*q2+
     #    256*u1p2*t1m1*q23-736*u1p2*q22-192*u1*t1*q22+256*u1*q23)
        spv(22)=
     # +m2*log7x2*(-16*u1p2*t1m1*q2*spm3+16*u1p2*t1m1*spm2-32*u1
     #    *t1m1*q2*spm2+16*u1*t1m1*spm1-16*u1*q2*spm3+80*u1*spm2-
     #    16*u1m1*t1p2*q2*spm3+16*u1m1*t1p2*spm2-32*u1m1*t1*q2*spm2
     #    +16*u1m1*t1*spm1-16*u1m1*q2*spm1-16*t1*q2*spm3+80*t1*
     #    spm2-16*t1m1*q2*spm1-64*q2*spm2+64*spm1)
     # +m2*dlog7*(64*u1m1+64*u1m2*q2+64*t1m1+64*t1m2*q2)
     # +m2*dlog8*(64*u1m1+64*u1m2*q2+64*t1m1+64*t1m2*q2)
     # +m2*(48*u1*t1m1*um1+64*u1*t1m1*spm1-16*u1*t1m2+16*u1m1*
     #    t1*tm1+64*u1m1*t1*spm1-16*u1m1*um1*q2+16*u1m1-16*u1m2*
     #    t1-16*t1m1*um1*q2+16*t1m1+48*um1+16*tm1+128*spm1)
     # +xsqm1*log1x2*(16*Bqed)
     # +xsqm1*log1*log5*(-32*Bqed)
     # +xsqm1*log1*log6*(-32*Bqed)
     # +xsqm1*log1*(32*Bqed*logdel)
     # +xsqm1*dlog2*(-32*Bqed)
     # +xsqm1*dlog1*(-32*Bqed)
     # +xsqm1*zeta2*(16*Bqed)
        spv(23)=
     # +log1x2*sqm*(4*u1p2*t1m1-12*u1*t1m1*q2+20*u1+4*u1m1*
     #    t1p2-12*u1m1*t1*q2+8*u1m1*q22+20*t1+8*t1m1*q22-32*q2)
     # +log1x2*(8*u1p4*t1m1*spm3-16*u1p3*t1m1*q2*spm3+24*u1p3*t1m1
     #    *spm2+24*u1p3*spm3+32*u1p2*t1*spm3+8*u1p2*t1m1*q22*spm3
     #    -48*u1p2*t1m1*q2*spm2+28*u1p2*t1m1*spm1-32*u1p2*q2*spm3+
     #    64*u1p2*spm2+32*u1*t1p2*spm3-32*u1*t1*q2*spm3+80*u1*t1*spm2
     #    +24*u1*t1m1*q22*spm2-56*u1*t1m1*q2*spm1+8*u1*q22*spm3-
     #    96*u1*q2*spm2+60*u1*spm1+8*u1m1*t1p4*spm3-16*u1m1*t1p3*q2*
     #    spm3+24*u1m1*t1p3*spm2+8*u1m1*t1p2*q22*spm3-48*u1m1*t1p2
     #    *q2*spm2+28*u1m1*t1p2*spm1+24*u1m1*t1*q22*spm2-56*u1m1*
     #    t1*q2*spm1+32*u1m1*q22*spm1+24*t1p3*spm3-32*t1p2*q2*spm3
     #    +64*t1p2*spm2+8*t1*q22*spm3-96*t1*q2*spm2+60*t1*spm1+
     #    32*t1m1*q22*spm1+32*q22*spm2-96*q2*spm1-8*Bqed)
     # +log1*log5*sqm*(32*u1p2*t1m1-96*u1*t1m1*q2+32*u1+32*
     #    u1m1*t1p2-96*u1m1*t1*q2-64*tb*q23+128*u1m1*q22+
     #    32*t1+128*t1m1*q22-128*q2)
     # +log1*log6*sqm*(-48*u1p2*t1m1+144*u1*t1m1*q2-112*u1-48
     #    *u1m1*t1p2+144*u1m1*t1*q2+64*tb*q23-160*u1m1*q22
     #    -112*t1-160*t1m1*q22+256*q2)
        spv(24)=
     # +log1*log3*sqm*(16*u1p2*t1m1-48*u1*t1m1*q2+48*u1+32*u1m1
     #    *t1p2-96*u1m1*t1*q2-32*tb*q23+96*u1m1*q22+64*t1
     #    +64*t1m1*q22-128*q2)
     # +log1*log3*(16*Bqed)
     # +log1*log4*sqm*(32*u1p2*t1m1-96*u1*t1m1*q2+64*u1+16*u1m1
     #    *t1p2-48*u1m1*t1*q2-32*tb*q23+64*u1m1*q22+48*t1
     #    +96*t1m1*q22-128*q2)
     # +log1*log4*(-16*Bqed)
     # +log1*sqm*logq1*(-24*u1p2*t1m1+72*u1*t1m1*q2-56*u1-24*
     #    u1m1*t1p2+72*u1m1*t1*q2+32*tb*q23-80*u1m1*q22-
     #    56*t1-80*t1m1*q22+128*q2)
        spv(25)=
     # +log1*sqm*(48*u1p4*t1m1*q2*spm3+16*u1p4*t1m1*spm2-96*
     #    u1p3*t1m1*q22*spm3+64*u1p3*t1m1*q2*spm2-8*u1p3*t1m1*s1m1
     #    +32*u1p3*t1m1*spm1+144*u1p3*q2*spm3+16*u1p3*spm2+192*u1p2
     #    *t1*q2*spm3-32*u1p2*t1*spm2+48*u1p2*t1m1*q23*spm3-192*u1p2
     #    *t1m1*q22*spm2+16*u1p2*t1m1*q2*s1m1-16*u1p2*t1m1*q2*spm1
     #    +24*u1p2*t1m1-192*u1p2*q22*spm3+288*u1p2*q2*spm2+32*u1p2*
     #    spm1+192*u1*t1p2*q2*spm3-32*u1*t1p2*spm2-192*u1*t1*q22*
     #    spm3+448*u1*t1*q2*spm2+16*u1*t1*s1m1+112*u1*t1m1*q23*spm2
     #    -8*u1*t1m1*q22*s1m1-80*u1*t1m1*q22*spm1-40*u1*t1m1*q2)
        spv(26)=        log1*sqm*(
     #    +48*u1*q23*spm3-480*u1*q22*spm2-16*u1*q2*s1m1+112*u1*q2*
     #    spm1+40*u1+48*u1m1*t1p4*q2*spm3+16*u1m1*t1p4*spm2-96*
     #    u1m1*t1p3*q22*spm3+64*u1m1*t1p3*q2*spm2-8*u1m1*t1p3*s1m1
     #    +32*u1m1*t1p3*spm1+48*u1m1*t1p2*q23*spm3-192*u1m1*t1p2*
     #    q22*spm2+16*u1m1*t1p2*q2*s1m1-16*u1m1*t1p2*q2*spm1+24*
     #    u1m1*t1p2+112*u1m1*t1*q23*spm2-8*u1m1*t1*q22*s1m1-80*
     #    u1m1*t1*q22*spm1-40*u1m1*t1*q2+64*u1m1*q23*spm1+16*u1m1
     #    *q22+144*t1p3*q2*spm3+16*t1p3*spm2-192*t1p2*q22*spm3+288
     #    *t1p2*q2*spm2+32*t1p2*spm1+48*t1*q23*spm3-480*t1*q22*spm2
     #    -16*t1*q2*s1m1+112*t1*q2*spm1+40*t1+64*t1m1*q23*spm1+
     #    16*t1m1*q22+160*q23*spm2+16*q22*s1m1-224*q22*spm1-48*
     #    q2)
     # +log3x2*(-8*u1*t1m1-8*u1m1*t1-16*tb*q22+16*u1m1
     #    *q2+16*t1m1*q2+8*Bqed)
     # +log3*log4*(-16*u1*t1m1-16*u1m1*t1-32*tb*q22+32*
     #    u1m1*q2+32*t1m1*q2-16*Bqed)
     # +log3*lhm2*(-8*u1m1*t1p4*tm1+16*u1m1*t1p3*tm1*q2-8*u1m1*
     #    t1p2*tm1*q22-16*t1p3*tm1+16*t1p2*tm1*q2)
        spv(27)=
     # +log3*(-16*u1m1*t1p3*tm2+24*u1m1*t1p2*tm1-16*t1p2*tm2+
     #    16*t1*tm1-32*Bqed*logdel+32*Bqed*logmu)
     # +log4x2*(-8*u1*t1m1-8*u1m1*t1-16*tb*q22+16*u1m1
     #    *q2+16*t1m1*q2+8*Bqed)
     # +log4*lhpm2*(16*u1p5*t1m1*um2-16*u1p4*t1m1*um1+16*u1p4*
     #    t1m1*um2*q2+16*u1p4*um2+24*u1p3*t1m1*um1*q2-56*u1p3*um1
     #    +16*u1p3*um2*q2-32*u1p2*t1*um1-8*u1p2*t1m1*um1*q22+24*
     #    u1p2*um1*q2)
cjs
     # +log4*lhpm4*u1*(-8*u1p5*t1m1*um1-8*u1p4*t1m1*um1*q2+24*u1p4*
     #    um1+32*u1p3*t1*um1+40*u1p3*t1m1*um1*q22-72*u1p3*um1*q2-
     #    64*u1p2*t1*um1*q2-24*u1p2*t1m1*um1*q23+72*u1p2*um1*q22+32
     #    *u1*t1*um1*q22-24*u1*um1*q23)
     # +log4*(-16*u1p3*t1m1*um2+24*u1p2*t1m1*um1+16*u1p2*t1m1*
     #    um2*q2-16*u1p2*um2-16*u1*t1m1*um1*q2+16*u1*um1+16*u1*
     #    um2*q2-16*um1*q2+32*Bqed*logdel)
     # +dlog2*sqm*(32*u1p2*t1m1-96*u1*t1m1*q2+32*u1+32*u1m1*
     #    t1p2-96*u1m1*t1*q2-64*tb*q23+128*u1m1*q22+32*t1
     #    +128*t1m1*q22-128*q2)
        spv(28)=
     # +dlog3*(16+8*u1m1*t1-16*u1m1*q2)
     # +dlog4*(16+8*u1*t1m1-16*t1m1*q2)
     # +dlog1*sqm*(-48*u1p2*t1m1+144*u1*t1m1*q2-112*u1-48*
     #    u1m1*t1p2+144*u1m1*t1*q2+64*tb*q23-160*u1m1*q22
     #    -112*t1-160*t1m1*q22+256*q2)
     # +zeta2*sqm*(136*u1p2*t1m1-408*u1*t1m1*q2+232*u1+136*
     #    u1m1*t1p2-408*u1m1*t1*q2-224*tb*q23+496*u1m1*q22
     #    +232*t1+496*t1m1*q22-640*q2)
     # +zeta2*lhm1*(4*u1+48*u1m1*t1p2-60*u1m1*t1*q2+16*u1m1*q22
     #    +76*t1-36*q2)
     # +zeta2*lhm3*(-4*u1*t1p2+8*u1*t1*q2-4*u1*q22-40*u1m1*t1p4
     #    +116*u1m1*t1p3*q2-112*u1m1*t1p2*q22+36*u1m1*t1*q23-60*
     #    t1p3+140*t1p2*q2-100*t1*q22+20*q23)
     # +zeta2*lhpm1*(56*u1p2*t1m1-72*u1*t1m1*q2+80*u1+8*t1+16*
     #    t1m1*q22-32*q2)
     # +zeta2*lhpm3*(-64*u1p4*t1m1+176*u1p3*t1m1*q2-96*u1p3-24*
     #    u1p2*t1-160*u1p2*t1m1*q22+192*u1p2*q2+32*u1*t1*q2+48*u1*
     #    t1m1*q23-112*u1*q22-8*t1*q22+16*q23)
        spv(29)=
cjs
     # +zeta2*lhpm5*u1*(16*u1p5*t1m1-64*u1p4*t1m1*q2+32*u1p4+16*u1p3
     #    *t1+96*u1p3*t1m1*q22-112*u1p3*q2-48*u1p2*t1*q2-64*u1p2*
     #    t1m1*q23+144*u1p2*q22+48*u1*t1*q22+16*u1*t1m1*q24-
     #    80*u1*q23-16*t1*q23+16*q24)
     # +zeta2*(-32-48*u1p4*t1m1*spm3+96*u1p3*t1m1*q2*spm3-144*
     #    u1p3*t1m1*spm2-144*u1p3*spm3-192*u1p2*t1*spm3-48*u1p2*t1m1
     #    *q22*spm3+288*u1p2*t1m1*q2*spm2-168*u1p2*t1m1*spm1+192*
     #    u1p2*q2*spm3-384*u1p2*spm2-192*u1*t1p2*spm3+192*u1*t1*q2*
     #    spm3-480*u1*t1*spm2-144*u1*t1m1*q22*spm2+336*u1*t1m1*q2*
     #    spm1-48*u1*q22*spm3+576*u1*q2*spm2-360*u1*spm1-48*u1m1*
     #    t1p4*spm3+96*u1m1*t1p3*q2*spm3-144*u1m1*t1p3*spm2-48*u1m1
     #    *t1p2*q22*spm3+288*u1m1*t1p2*q2*spm2-168*u1m1*t1p2*spm1-
     #    144*u1m1*t1*q22*spm2+336*u1m1*t1*q2*spm1+16*tb*q22
     #    -192*u1m1*q22*spm1-144*t1p3*spm3+192*t1p2*q2*spm3-384*
     #    t1p2*spm2-48*t1*q22*spm3+576*t1*q2*spm2-360*t1*spm1-192*
     #    t1m1*q22*spm1-192*q22*spm2+576*q2*spm1-24*Bqed)
        spv(30)=
     # +sqm*log8*logq2*(-24*u1p2*t1m1+72*u1*t1m1*q2-56*u1-24*
     #    u1m1*t1p2+72*u1m1*t1*q2+32*tb*q23-80*u1m1*q22-
     #    56*t1-80*t1m1*q22+128*q2)
     # +sqm*dlogq1*(-48*u1p2*t1m1+144*u1*t1m1*q2-112*u1-48*
     #    u1m1*t1p2+144*u1m1*t1*q2+64*tb*q23-160*u1m1*q22
     #    -112*t1-160*t1m1*q22+256*q2)
     # +sqm*dlogq2*(-48*u1p2*t1m1+144*u1*t1m1*q2-112*u1-48*
     #    u1m1*t1p2+144*u1m1*t1*q2+64*tb*q23-160*u1m1*q22
     #    -112*t1-160*t1m1*q22+256*q2)
     # +sqm*dlogq3*(-48*u1p2*t1m1+144*u1*t1m1*q2-112*u1-48*
     #    u1m1*t1p2+144*u1m1*t1*q2+64*tb*q23-160*u1m1*q22
     #    -112*t1-160*t1m1*q22+256*q2)
     # +sqm*dlogq4*(48*u1p2*t1m1-144*u1*t1m1*q2+112*u1+48*u1m1*
     #    t1p2-144*u1m1*t1*q2-64*tb*q23+160*u1m1*q22+112*
     #    t1+160*t1m1*q22-256*q2)
     # +sqm*logq3x2*(-24*u1p2*t1m1+72*u1*t1m1*q2-56*u1-24*
     #    u1m1*t1p2+72*u1m1*t1*q2+32*tb*q23-80*u1m1*q22-
     #    56*t1-80*t1m1*q22+128*q2)
        spv(31)=
     # +log9*lhm2*(-4*u1*t1*x1+4*u1*t1*x2-4*u1*t1m1*q22*x1+4*u1
     #    *t1m1*q22*x2+8*u1*q2*x1-8*u1*q2*x2-32*u1m1*t1p3*x1+32*
     #    u1m1*t1p3*x2+100*u1m1*t1p2*q2*x1-100*u1m1*t1p2*q2*x2-104*
     #    u1m1*t1*q22*x1+104*u1m1*t1*q22*x2+36*u1m1*q23*x1-36*u1m1
     #    *q23*x2-44*t1p2*x1+44*t1p2*x2+124*t1*q2*x1-124*t1*q2*x2+20
     #    *t1m1*q23*x1-20*t1m1*q23*x2-100*q22*x1+100*q22*x2)
     # +log9*lhpm2*(-56*u1p3*t1m1*x1+56*u1p3*t1m1*x2+112*u1p2*
     #    t1m1*q2*x1-112*u1p2*t1m1*q2*x2-40*u1p2*x1+40*u1p2*x2+16*u1*
     #    t1*x1-16*u1*t1*x2-128*u1*t1m1*q22*x1+128*u1*t1m1*q22*x2+
     #    112*u1*q2*x1-112*u1*q2*x2+8*u1m1*q23*x1-8*u1m1*q23*x2+16*
     #    t1*q2*x1-16*t1*q2*x2+40*t1m1*q23*x1-40*t1m1*q23*x2-80*
     #    q22*x1+80*q22*x2)
        spv(32)=
     # +log9*lhpm4*(24*u1p5*t1m1*x1-24*u1p5*t1m1*x2-56*u1p4*t1m1*
     #    q2*x1+56*u1p4*t1m1*q2*x2+8*u1p4*x1-8*u1p4*x2-16*u1p3*t1*x1
     #    +16*u1p3*t1*x2+56*u1p3*t1m1*q22*x1-56*u1p3*t1m1*q22*x2-40
     #    *u1p3*q2*x1+40*u1p3*q2*x2+16*u1p2*t1*q2*x1-16*u1p2*t1*q2*x2-
     #    40*u1p2*t1m1*q23*x1+40*u1p2*t1m1*q23*x2+72*u1p2*q22*x1-72*
     #    u1p2*q22*x2+16*u1*t1*q22*x1-16*u1*t1*q22*x2+16*u1*t1m1*q24
     #    *x1-16*u1*t1m1*q24*x2-56*u1*q23*x1+56*u1*q23*x2-16*t1*
     #    q23*x1+16*t1*q23*x2+16*q24*x1-16*q24*x2)
        spv(33)=
     # +log9*(-48*u1p3*t1m1*q2*spm3*x1+48*u1p3*t1m1*q2*spm3*x2+
     #    48*u1p2*t1m1*q22*spm3*x1-48*u1p2*t1m1*q22*spm3*x2-96*u1p2*
     #    t1m1*q2*spm2*x1+96*u1p2*t1m1*q2*spm2*x2+8*u1p2*t1m1*spm1*x1
     #    -8*u1p2*t1m1*spm1*x2-96*u1p2*q2*spm3*x1+96*u1p2*q2*spm3*x2
     #    +32*u1p2*spm2*x1-32*u1p2*spm2*x2-96*u1*t1*q2*spm3*x1+96*u1
     #    *t1*q2*spm3*x2+64*u1*t1*spm2*x1-64*u1*t1*spm2*x2+112*u1*
     #    t1m1*q22*spm2*x1-112*u1*t1m1*q22*spm2*x2-64*u1*t1m1*q2*
     #    spm1*x1+64*u1*t1m1*q2*spm1*x2+44*u1*t1m1*x1-44*u1*t1m1*x2
     #    +48*u1*q22*spm3*x1-48*u1*q22*spm3*x2-224*u1*q2*spm2*x1+
     #    224*u1*q2*spm2*x2+72*u1*spm1*x1-72*u1*spm1*x2-48*u1m1*t1p3*
     #    q2*spm3*x1+48*u1m1*t1p3*q2*spm3*x2+48*u1m1*t1p2*q22*spm3*x1
     #    -48*u1m1*t1p2*q22*spm3*x2-96*u1m1*t1p2*q2*spm2*x1+96*u1m1
     #    *t1p2*q2*spm2*x2+8*u1m1*t1p2*spm1*x1-8*u1m1*t1p2*spm1*x2)
        spv(34)=        log9*(
     #    112*u1m1*t1*q22*spm2*x1-112*u1m1*t1*q22*spm2*x2-64*u1m1*t1
     #    *q2*spm1*x1+64*u1m1*t1*q2*spm1*x2+40*u1m1*t1*x1-40*u1m1*t1
     #    *x2+64*u1m1*q22*spm1*x1-64*u1m1*q22*spm1*x2-60*u1m1*q2*
     #    x1+60*u1m1*q2*x2-96*t1p2*q2*spm3*x1+96*t1p2*q2*spm3*x2+32*
     #    t1p2*spm2*x1-32*t1p2*spm2*x2+48*t1*q22*spm3*x1-48*t1*q22*
     #    spm3*x2-224*t1*q2*spm2*x1+224*t1*q2*spm2*x2+72*t1*spm1*x1
     #    -72*t1*spm1*x2+64*t1m1*q22*spm1*x1-64*t1m1*q22*spm1*x2
     #    -76*t1m1*q2*x1+76*t1m1*q2*x2+160*q22*spm2*x1-160*q22*
     #    spm2*x2-160*q2*spm1*x1+160*q2*spm1*x2+108*x1-108*x2)
     # +log10*lhm2*(4*u1*t1*x1-4*u1*t1*x2+4*u1*t1m1*q22*x1-4*u1*
     #    t1m1*q22*x2-8*u1*q2*x1+8*u1*q2*x2+32*u1m1*t1p3*x1-32*u1m1
     #    *t1p3*x2-100*u1m1*t1p2*q2*x1+100*u1m1*t1p2*q2*x2+104*u1m1*t1
     #    *q22*x1-104*u1m1*t1*q22*x2-36*u1m1*q23*x1+36*u1m1*q23*x2
     #    +44*t1p2*x1-44*t1p2*x2-124*t1*q2*x1+124*t1*q2*x2-20*t1m1*
     #    q23*x1+20*t1m1*q23*x2+100*q22*x1-100*q22*x2)
        sppv(1)=
     # +log10*lhpm2*(56*u1p3*t1m1*x1-56*u1p3*t1m1*x2-112*u1p2*t1m1
     #    *q2*x1+112*u1p2*t1m1*q2*x2+40*u1p2*x1-40*u1p2*x2-16*u1*t1*x1
     #    +16*u1*t1*x2+128*u1*t1m1*q22*x1-128*u1*t1m1*q22*x2-112*u1
     #    *q2*x1+112*u1*q2*x2-8*u1m1*q23*x1+8*u1m1*q23*x2-16*t1*q2*
     #    x1+16*t1*q2*x2-40*t1m1*q23*x1+40*t1m1*q23*x2+80*q22*x1
     #    -80*q22*x2)
        sppv(2)=
     # +log10*lhpm4*(-24*u1p5*t1m1*x1+24*u1p5*t1m1*x2+56*u1p4*
     #    t1m1*q2*x1-56*u1p4*t1m1*q2*x2-8*u1p4*x1+8*u1p4*x2+16*u1p3*
     #    t1*x1-16*u1p3*t1*x2-56*u1p3*t1m1*q22*x1+56*u1p3*t1m1*q22*x2
     #    +40*u1p3*q2*x1-40*u1p3*q2*x2-16*u1p2*t1*q2*x1+16*u1p2*t1*q2*
     #    x2+40*u1p2*t1m1*q23*x1-40*u1p2*t1m1*q23*x2-72*u1p2*q22*x1
     #    +72*u1p2*q22*x2-16*u1*t1*q22*x1+16*u1*t1*q22*x2-16*u1*
     #    t1m1*q24*x1+16*u1*t1m1*q24*x2+56*u1*q23*x1-56*u1*q23*x2
     #    +16*t1*q23*x1-16*t1*q23*x2-16*q24*x1+16*q24*x2)
        spv(35) = sppv(1)+sppv(2)
        spv(36)=
     # +log10*(48*u1p3*t1m1*q2*spm3*x1-48*u1p3*t1m1*q2*spm3*x2-48*
     #    u1p2*t1m1*q22*spm3*x1+48*u1p2*t1m1*q22*spm3*x2+96*u1p2*
     #    t1m1*q2*spm2*x1-96*u1p2*t1m1*q2*spm2*x2-8*u1p2*t1m1*spm1*x1
     #    +8*u1p2*t1m1*spm1*x2+96*u1p2*q2*spm3*x1-96*u1p2*q2*spm3*x2
     #    -32*u1p2*spm2*x1+32*u1p2*spm2*x2+96*u1*t1*q2*spm3*x1-96*u1
     #    *t1*q2*spm3*x2-64*u1*t1*spm2*x1+64*u1*t1*spm2*x2-112*u1*
     #    t1m1*q22*spm2*x1+112*u1*t1m1*q22*spm2*x2+64*u1*t1m1*q2*
     #    spm1*x1-64*u1*t1m1*q2*spm1*x2-44*u1*t1m1*x1+44*u1*t1m1*x2
     #    -48*u1*q22*spm3*x1+48*u1*q22*spm3*x2+224*u1*q2*spm2*x1-
     #    224*u1*q2*spm2*x2-72*u1*spm1*x1+72*u1*spm1*x2+48*u1m1*t1p3*
     #    q2*spm3*x1-48*u1m1*t1p3*q2*spm3*x2-48*u1m1*t1p2*q22*spm3*x1
     #    +48*u1m1*t1p2*q22*spm3*x2+96*u1m1*t1p2*q2*spm2*x1-96*u1m1
     #    *t1p2*q2*spm2*x2-8*u1m1*t1p2*spm1*x1+8*u1m1*t1p2*spm1*x2)
        spv(37)= log10*(
     #    -112*u1m1*t1*q22*spm2*x1+112*u1m1*t1*q22*spm2*x2+64*u1m1*t1
     #    *q2*spm1*x1-64*u1m1*t1*q2*spm1*x2-40*u1m1*t1*x1+40*u1m1*t1
     #    *x2-64*u1m1*q22*spm1*x1+64*u1m1*q22*spm1*x2+60*u1m1*q2*
     #    x1-60*u1m1*q2*x2+96*t1p2*q2*spm3*x1-96*t1p2*q2*spm3*x2-32*
     #    t1p2*spm2*x1+32*t1p2*spm2*x2-48*t1*q22*spm3*x1+48*t1*q22*
     #    spm3*x2+224*t1*q2*spm2*x1-224*t1*q2*spm2*x2-72*t1*spm1*x1
     #    +72*t1*spm1*x2-64*t1m1*q22*spm1*x1+64*t1m1*q22*spm1*x2
     #    +76*t1m1*q2*x1-76*t1m1*q2*x2-160*q22*spm2*x1+160*q22*
     #    spm2*x2+160*q2*spm1*x1-160*q2*spm1*x2-108*x1+108*x2)
     # +lhm1*dlogq6t*(-4*u1-48*u1m1*t1p2+60*u1m1*t1*q2-16*u1m1*
     #    q22-76*t1+36*q2)
     # +lhm1*dlogq7t*(-4*u1-48*u1m1*t1p2+60*u1m1*t1*q2-16*u1m1*
     #    q22-76*t1+36*q2)
     # +lhm1*dlogq8t*(4*u1+48*u1m1*t1p2-60*u1m1*t1*q2+16*u1m1*q22
     #    +76*t1-36*q2)
     # +lhm1*dlogq9t*(4*u1+48*u1m1*t1p2-60*u1m1*t1*q2+16*u1m1*q22
     #    +76*t1-36*q2)
        spv(38)=
     # +lhm1*dlogq10t*(4*u1+48*u1m1*t1p2-60*u1m1*t1*q2+16*u1m1*
     #    q22+76*t1-36*q2)
     # +lhm1*dlogq11t*(4*u1+48*u1m1*t1p2-60*u1m1*t1*q2+16*u1m1*
     #    q22+76*t1-36*q2)
     # +lhm1*dlogq12t*(-4*u1-48*u1m1*t1p2+60*u1m1*t1*q2-16*u1m1*
     #    q22-76*t1+36*q2)
     # +lhm1*dlogq13t*(-8*u1-96*u1m1*t1p2+120*u1m1*t1*q2-32*u1m1
     #    *q22-152*t1+72*q2)
     # +lhm3*dlogq6t*(4*u1*t1p2-8*u1*t1*q2+4*u1*q22+40*u1m1*t1p4-
     #    116*u1m1*t1p3*q2+112*u1m1*t1p2*q22-36*u1m1*t1*q23+60*t1p3
     #    -140*t1p2*q2+100*t1*q22-20*q23)
     # +lhm3*dlogq7t*(4*u1*t1p2-8*u1*t1*q2+4*u1*q22+40*u1m1*t1p4-
     #    116*u1m1*t1p3*q2+112*u1m1*t1p2*q22-36*u1m1*t1*q23+60*t1p3
     #    -140*t1p2*q2+100*t1*q22-20*q23)
     # +lhm3*dlogq8t*(-4*u1*t1p2+8*u1*t1*q2-4*u1*q22-40*u1m1*t1p4
     #    +116*u1m1*t1p3*q2-112*u1m1*t1p2*q22+36*u1m1*t1*q23-60*
     #    t1p3+140*t1p2*q2-100*t1*q22+20*q23)
        spv(39)=
     # +lhm3*dlogq9t*(-4*u1*t1p2+8*u1*t1*q2-4*u1*q22-40*u1m1*t1p4
     #    +116*u1m1*t1p3*q2-112*u1m1*t1p2*q22+36*u1m1*t1*q23-60*
     #    t1p3+140*t1p2*q2-100*t1*q22+20*q23)
     # +lhm3*dlogq10t*(-4*u1*t1p2+8*u1*t1*q2-4*u1*q22-40*u1m1*
     #    t1p4+116*u1m1*t1p3*q2-112*u1m1*t1p2*q22+36*u1m1*t1*q23-
     #    60*t1p3+140*t1p2*q2-100*t1*q22+20*q23)
     # +lhm3*dlogq11t*(-4*u1*t1p2+8*u1*t1*q2-4*u1*q22-40*u1m1*
     #    t1p4+116*u1m1*t1p3*q2-112*u1m1*t1p2*q22+36*u1m1*t1*q23-
     #    60*t1p3+140*t1p2*q2-100*t1*q22+20*q23)
     # +lhm3*dlogq12t*(4*u1*t1p2-8*u1*t1*q2+4*u1*q22+40*u1m1*t1p4
     #    -116*u1m1*t1p3*q2+112*u1m1*t1p2*q22-36*u1m1*t1*q23+60*
     #    t1p3-140*t1p2*q2+100*t1*q22-20*q23)
     # +lhm3*dlogq13t*(8*u1*t1p2-16*u1*t1*q2+8*u1*q22+80*u1m1*t1p4
     #    -232*u1m1*t1p3*q2+224*u1m1*t1p2*q22-72*u1m1*t1*q23+120*
     #    t1p3-280*t1p2*q2+200*t1*q22-40*q23)
     # +lhpm1*dlogq6u*(-56*u1p2*t1m1+72*u1*t1m1*q2-80*u1-8*t1-
     #    16*t1m1*q22+32*q2)
        spv(40)=
     # +lhpm1*dlogq7u*(-56*u1p2*t1m1+72*u1*t1m1*q2-80*u1-8*t1-
     #    16*t1m1*q22+32*q2)
     # +lhpm1*dlogq8u*(56*u1p2*t1m1-72*u1*t1m1*q2+80*u1+8*t1+16*
     #    t1m1*q22-32*q2)
     # +lhpm1*dlogq9u*(56*u1p2*t1m1-72*u1*t1m1*q2+80*u1+8*t1+16*
     #    t1m1*q22-32*q2)
     # +lhpm1*dlogq10u*(56*u1p2*t1m1-72*u1*t1m1*q2+80*u1+8*t1+16*
     #    t1m1*q22-32*q2)
     # +lhpm1*dlogq11u*(56*u1p2*t1m1-72*u1*t1m1*q2+80*u1+8*t1+16*
     #    t1m1*q22-32*q2)
     # +lhpm1*dlogq12u*(-56*u1p2*t1m1+72*u1*t1m1*q2-80*u1-8*t1-
     #    16*t1m1*q22+32*q2)
     # +lhpm1*dlogq13u*(-112*u1p2*t1m1+144*u1*t1m1*q2-160*u1-16*
     #    t1-32*t1m1*q22+64*q2)
     # +lhpm2*(-16*u1p4*t1m1*um1-16*u1p3*t1m1*um1*q2+16*u1p3*
     #    t1m1-16*u1p3*um1+24*u1p2*t1m1*q2-16*u1p2*um1*q2+8*u1p2-
     #    8*u1*t1-16*u1*t1m1*q22+40*u1*q2-8*u1m1*t1*q22+8*u1m1*
     #    q23+16*t1*q2+8*t1m1*q23-24*q22)
        spv(41)=
     # +lhpm3*dlogq6u*(64*u1p4*t1m1-176*u1p3*t1m1*q2+96*u1p3+24*
     #    u1p2*t1+160*u1p2*t1m1*q22-192*u1p2*q2-32*u1*t1*q2-48*u1*
     #    t1m1*q23+112*u1*q22+8*t1*q22-16*q23)
     # +lhpm3*dlogq7u*(64*u1p4*t1m1-176*u1p3*t1m1*q2+96*u1p3+24*
     #    u1p2*t1+160*u1p2*t1m1*q22-192*u1p2*q2-32*u1*t1*q2-48*u1*
     #    t1m1*q23+112*u1*q22+8*t1*q22-16*q23)
     # +lhpm3*dlogq8u*(-64*u1p4*t1m1+176*u1p3*t1m1*q2-96*u1p3-24*
     #    u1p2*t1-160*u1p2*t1m1*q22+192*u1p2*q2+32*u1*t1*q2+48*u1*
     #    t1m1*q23-112*u1*q22-8*t1*q22+16*q23)
     # +lhpm3*dlogq9u*(-64*u1p4*t1m1+176*u1p3*t1m1*q2-96*u1p3-24*
     #    u1p2*t1-160*u1p2*t1m1*q22+192*u1p2*q2+32*u1*t1*q2+48*u1*
     #    t1m1*q23-112*u1*q22-8*t1*q22+16*q23)
     # +lhpm3*dlogq10u*(-64*u1p4*t1m1+176*u1p3*t1m1*q2-96*u1p3-24
     #    *u1p2*t1-160*u1p2*t1m1*q22+192*u1p2*q2+32*u1*t1*q2+48*u1*
     #    t1m1*q23-112*u1*q22-8*t1*q22+16*q23)
     # +lhpm3*dlogq11u*(-64*u1p4*t1m1+176*u1p3*t1m1*q2-96*u1p3-24
     #    *u1p2*t1-160*u1p2*t1m1*q22+192*u1p2*q2+32*u1*t1*q2+48*u1*
     #    t1m1*q23-112*u1*q22-8*t1*q22+16*q23)
        spv(42) =
     # +lhpm3*dlogq12u*(64*u1p4*t1m1-176*u1p3*t1m1*q2+96*u1p3+24*
     #    u1p2*t1+160*u1p2*t1m1*q22-192*u1p2*q2-32*u1*t1*q2-48*u1*
     #    t1m1*q23+112*u1*q22+8*t1*q22-16*q23)
     # +lhpm3*dlogq13u*(128*u1p4*t1m1-352*u1p3*t1m1*q2+192*u1p3+48*
     #    u1p2*t1+320*u1p2*t1m1*q22-384*u1p2*q2-64*u1*t1*q2-96*u1*
     #    t1m1*q23+224*u1*q22+16*t1*q22-32*q23)
cjs
     # +lhpm5*dlogq6u*u1*(-16*u1p5*t1m1+64*u1p4*t1m1*q2-32*u1p4-16*
     #    u1p3*t1-96*u1p3*t1m1*q22+112*u1p3*q2+48*u1p2*t1*q2+64*u1p2*
     #    t1m1*q23-144*u1p2*q22-48*u1*t1*q22-16*u1*t1m1*q24+
     #    80*u1*q23+16*t1*q23-16*q24)
cjs
     # +lhpm5*dlogq7u*u1*(-16*u1p5*t1m1+64*u1p4*t1m1*q2-32*u1p4-16*
     #    u1p3*t1-96*u1p3*t1m1*q22+112*u1p3*q2+48*u1p2*t1*q2+64*u1p2*
     #    t1m1*q23-144*u1p2*q22-48*u1*t1*q22-16*u1*t1m1*q24+
     #    80*u1*q23+16*t1*q23-16*q24)
cjs
     # +lhpm5*dlogq8u*u1*(16*u1p5*t1m1-64*u1p4*t1m1*q2+32*u1p4+16*u1p3
     #    *t1+96*u1p3*t1m1*q22-112*u1p3*q2-48*u1p2*t1*q2-64*u1p2*
     #    t1m1*q23+144*u1p2*q22+48*u1*t1*q22+16*u1*t1m1*q24-
     #    80*u1*q23-16*t1*q23+16*q24)
        spv(43)=
cjs
     # +lhpm5*dlogq9u*u1*(16*u1p5*t1m1-64*u1p4*t1m1*q2+32*u1p4+16*u1p3
     #    *t1+96*u1p3*t1m1*q22-112*u1p3*q2-48*u1p2*t1*q2-64*u1p2*
     #    t1m1*q23+144*u1p2*q22+48*u1*t1*q22+16*u1*t1m1*q24-
     #    80*u1*q23-16*t1*q23+16*q24)
cjs
     # +lhpm5*dlogq10u*u1*(16*u1p5*t1m1-64*u1p4*t1m1*q2+32*u1p4+16*
     #    u1p3*t1+96*u1p3*t1m1*q22-112*u1p3*q2-48*u1p2*t1*q2-64*u1p2*
     #    t1m1*q23+144*u1p2*q22+48*u1*t1*q22+16*u1*t1m1*q24-
     #    80*u1*q23-16*t1*q23+16*q24)
cjs
     # +lhpm5*dlogq11u*u1*(16*u1p5*t1m1-64*u1p4*t1m1*q2+32*u1p4+16*
     #    u1p3*t1+96*u1p3*t1m1*q22-112*u1p3*q2-48*u1p2*t1*q2-64*u1p2*
     #    t1m1*q23+144*u1p2*q22+48*u1*t1*q22+16*u1*t1m1*q24-
     #    80*u1*q23-16*t1*q23+16*q24)
cjs
     # +lhpm5*dlogq12u*u1*(-16*u1p5*t1m1+64*u1p4*t1m1*q2-32*u1p4-16*
     #    u1p3*t1-96*u1p3*t1m1*q22+112*u1p3*q2+48*u1p2*t1*q2+64*u1p2*
     #    t1m1*q23-144*u1p2*q22-48*u1*t1*q22-16*u1*t1m1*q24+
     #    80*u1*q23+16*t1*q23-16*q24)
        spv(44)=
cjs
     # +lhpm5*dlogq13u*u1*(-32*u1p5*t1m1+128*u1p4*t1m1*q2-64*u1p4-32
     #    *u1p3*t1-192*u1p3*t1m1*q22+224*u1p3*q2+96*u1p2*t1*q2+128*
     #    u1p2*t1m1*q23-288*u1p2*q22-96*u1*t1*q22-32*u1*t1m1*
     #    q24+160*u1*q23+32*t1*q23-32*q24)
     # +dlog6*(-16*Bqed)
     # +dlog5*(16*Bqed)
     # +log7x2*(-8*u1p4*t1m1*spm3+16*u1p3*t1m1*q2*spm3-24*u1p3*
     #    t1m1*spm2-24*u1p3*spm3-32*u1p2*t1*spm3-8*u1p2*t1m1*q22*
     #    spm3+48*u1p2*t1m1*q2*spm2-28*u1p2*t1m1*spm1+32*u1p2*q2*
     #    spm3-64*u1p2*spm2-32*u1*t1p2*spm3+32*u1*t1*q2*spm3-80*u1*
     #    t1*spm2-24*u1*t1m1*q22*spm2+56*u1*t1m1*q2*spm1-8*u1*q22*
     #    spm3+96*u1*q2*spm2-60*u1*spm1-8*u1m1*t1p4*spm3+16*u1m1*
     #    t1p3*q2*spm3-24*u1m1*t1p3*spm2-8*u1m1*t1p2*q22*spm3+48*
     #    u1m1*t1p2*q2*spm2-28*u1m1*t1p2*spm1-24*u1m1*t1*q22*spm2+
     #    56*u1m1*t1*q2*spm1-32*u1m1*q22*spm1-24*t1p3*spm3+32*t1p2*
     #    q2*spm3-64*t1p2*spm2-8*t1*q22*spm3+96*t1*q2*spm2-60*t1*
     #    spm1-32*t1m1*q22*spm1-32*q22*spm2+96*q2*spm1)
        spv(45)=
     # +dlog7*(-16*u1*t1m1-16*u1m1*t1-32*tb*q22+32*
     #    u1m1*q2+32*t1m1*q2)
     # +dlog8*(-16*u1*t1m1-16*u1m1*t1-32*tb*q22+32*
     #    u1m1*q2+32*t1m1*q2)
     # -120-32*u1p3*t1m1*spm2+16*u1p2*t1m1*um1+48*u1p2*t1m1*q2*
     #    spm2-80*u1p2*t1m1*spm1-64*u1p2*spm2-64*u1*t1*spm2-16*u1*
     #    t1m1*um1*q2+112*u1*t1m1*q2*spm1-64*u1*t1m1+16*u1*um1+48
     #    *u1*q2*spm2-176*u1*spm1-32*u1m1*t1p3*spm2+16*u1m1*t1p2*
     #    tm1+48*u1m1*t1p2*q2*spm2-80*u1m1*t1p2*spm1+112*u1m1*t1*q2
     #    *spm1-56*u1m1*t1+88*u1m1*q2-64*t1p2*spm2+16*t1*tm1+48*
     #    t1*q2*spm2-176*t1*spm1+88*t1m1*q2-16*um1*q2+160*q2*spm1
     #    +32*Bqed*logdel2-32*Bqed*logdel*logmu
c sum contributions and multiply by common factor:
        splusv = 0.d0
        do 10 i = 1,45
c           write(6,1000) i,spv(i)
 10     splusv = splusv + spv(i)
c
        svcacf = splusv
c Divide by 8 in order to get the normalization correct.
c The - in the defin. cancels the - from the gl. pol.
        vokgam = svcacf/8.0d0
c
c       do 20 ii = 1,2
c 20        write(6,2000) ii,sppv(ii)
 1000   format('spv(',i3,')  =  ',d20.10)
 2000   format('sppv(',i3,')  =  ',d20.10)
      return
      end
      double precision function vqedgam(sp,t1,u1,m2,q2,del,s4max,s4)
c
c Here we compute the expression for the CF*CF part of the
c soft plus virtual matrix element.
c
      implicit double precision (a-z)
      integer i,ii
      dimension vps(110)
      parameter( pi = 3.14159265359d0 )
      data zeta2/1.644934066848226d+00/
c
c      logdel = dlog(del/m2)
c      logdel2 = logdel*logdel
C HERE WE REPLACE THE LOGDEL TERMS BY INTEGRALS OVER S4
        DIST = S4MAX - DEL
        L11 = DLOG(S4/M2)
        L12 = DLOG(S4MAX/M2)
        LOGDEL = L12 - DIST/S4
        LOGDEL2 = L12*L12 -2.0D0*DIST*L11/S4
      s = sp + q2
      mu2 = m2
      cep = 1.d0/16.d0/pi/pi
      s1 = 4.0d0*m2 -s
      s1m1 = 1.d0/s1
      t = t1+m2
      u = u1+m2
      xsq = dsqrt(1.0d0 - 4.0d0*m2/s)
      ysq = dsqrt(1.0d0 - 4.0d0*m2/q2)
      x = (1.d0 - xsq)/(1.d0 + xsq)
      sq = s*xsq
      sqm = 1.d0/sq
      sp = s - q2
      y = (1.d0-ysq)/(1.d0+ysq)
      x1 = (1.d0+ysq)/2.d0
      x2 = 1.0d0 - x1
      aa = dsqrt(4.d0*m2 -q2)
      aa2 = 4.d0*m2 -q2
      bb = dsqrt(-q2)
      cc = dsqrt(4.d0*m2*q2/s - q2)
      lat = t*t + m2*m2 + q2*q2 - 2.d0*t*m2 - 2.d0*t*q2 - 2*m2*q2
      lau = u*u + m2*m2 + q2*q2 - 2.d0*u*m2 - 2.d0*u*q2 - 2*m2*q2
      lh = dsqrt(lat)
      lhp = dsqrt(lau)
      log1 = dlog(x)
      log2 = dlog(s/m2)
      log3 = dlog(-t1/m2)
      log3x2 = log3*log3
      log4 = dlog(-u1/m2)
      log4x2 = log4*log4
      log5 = dlog(1.d0-x)
      log6 = dlog(1.d0+x)
      log7 = dlog(-y)
      log7x2 = log7*log7
      log8 = dlog(-q2/s)
      log9 = dlog(x1)
      log10 = dlog(-x2)
      logmu = dlog(mu2/m2)
      logq1 = dlog((aa+cc)*(aa+cc)/4.d0/m2)
      logq2 = dlog((aa-bb)/(aa+bb))
      logq3 = dlog((aa-cc)/(aa-bb))
      logq3x2 = logq3*logq3
      dlog1 = dilog(-x)
      dlog2 = dilog(x)
      dlog3 = dilog(t1/m2 + 1.d0)
      dlog4 = dilog(u1/m2 + 1.d0)
      dlog5 = dilog(1.d0-u1/x/t1)
      dlog6 = dilog(1.d0-t1/x/u1)
      dlog7 = dilog(q2*x1/m2)
      dlog8 = dilog(q2*x2/m2)
      dlogq1 = dilog((aa-bb)/(aa-cc))
      dlogq2 = dilog((aa-cc)/(aa+bb))
      dlogq3 = dilog((bb+cc)/(aa+cc))
      dlogq4 = dilog((cc-bb)/(aa+cc))
      dlogq5 = dilog(s/sp)
      dlogq6t = dilog((t1+aa2+lh)/(t1-ysq*(lh+q2*ysq)))
      dlogq6u = dilog((u1+aa2+lhp)/(u1-ysq*(lhp+q2*ysq)))
      dlogq7t = dilog((t1+aa2+lh)/(t1+ysq*(lh-q2*ysq)))
      dlogq7u = dilog((u1+aa2+lhp)/(u1+ysq*(lhp-q2*ysq)))
      dlogq8t = dilog((t1+aa2-lh)/(t1-ysq*(lh+q2*ysq)))
      dlogq8u = dilog((u1+aa2-lhp)/(u1-ysq*(lhp+q2*ysq)))
      dlogq9t = dilog((t1+aa2-lh)/(t1+ysq*(lh-q2*ysq)))
      dlogq9u = dilog((u1+aa2-lhp)/(u1+ysq*(lhp-q2*ysq)))
      dlogq10t = dilog( (t1*(q2 - t - m2 - lh) - 2.d0*m2*lh)/
     &     (t1*(q2 - t - m2 + lh)))
      dlogq10u = dilog( (u1*(q2 - u - m2 - lhp) - 2.d0*m2*lhp)/
     &     (u1*(q2 - u - m2 + lhp)))
      dlogq11t = dilog( (t1*(q2 - t - m2 - lh) - 2.d0*m2*lh)/
     &     (t1*(q2 - t - m2 - lh)))
      dlogq11u = dilog( (u1*(q2 - u - m2 - lhp) - 2.d0*m2*lhp)/
     &     (u1*(q2 - u - m2 - lhp)))
      dlogq12t = dilog( (q2 - t - m2 + lh)/(q2 - t - m2 - lh))
      dlogq12u = dilog( (q2 - u - m2 + lhp)/(q2 - u - m2 - lhp))
      dlogq13t = dilog( (m2 - t - lh)/(m2 - t))
      dlogq13u = dilog( (m2 - u - lhp)/(m2 - u))
c More useful definitions:
      m22 = m2*m2
      m23 = m2*m22
      m24 = m22*m22
      t1p2 = t1*t1
      t1p3 = t1*t1p2
      t1p4 = t1*t1p3
      t1p5 = t1*t1p4
cjs      t1p6 = t1*t1p5
      t1m1 = 1.d0/t1
      t1m2 = t1m1*t1m1
      t1m3 = t1m2*t1m1
      u1p2 = u1*u1
      u1p3 = u1*u1p2
      u1p4 = u1*u1p3
      u1p5 = u1*u1p4
cjs      u1p6 = u1*u1p5
      u1m1 = 1.d0/u1
      u1m2 = u1m1*u1m1
      u1m3 = u1m1*u1m2
      um1 = 1.d0/u
      um2 = um1*um1
      tm1 = 1.d0/t
      tm2 = tm1*tm1
      q22 = q2*q2
      q23 = q2*q22
      q24 = q22*q22
      q25 = q22*q23
      tb = t1m1*u1m1
      sm1 = 1.d0/s
      sm2 = sm1*sm1
      sm3 = sm1*sm2
      sqm1 = 1.d0/sq
      spm1 = 1.d0/sp
      spm2 = spm1*spm1
      spm3 = spm1*spm2
      spm4 = spm2*spm2
      lhm1 = 1.d0/lh
      lhm2 = lhm1*lhm1
      lhm3 = lhm1*lhm2
      lhm4 = lhm2*lhm2
      lhm5 = lhm2*lhm3
      lhpm1 = 1.d0/lhp
      lhpm2 = lhpm1*lhpm1
      lhpm3 = lhpm1*lhpm2
      lhpm4 = lhpm2*lhpm2
      lhpm5 = lhpm2*lhpm3
      xsqm1 = 1.d0/xsq
      log1x2 = log1*log1
      Bqed =
     # (( -4*(t1 + u1)**2*m22 - 2*m2*( q2*( t1p2 + u1p2)
     #  + 2*t1*u1*(t1 + u1)) + t1*u1*(t1p2 + u1p2 -
     #  2*q2*(t1 + u1) + 2* q22)) *t1m2*u1m2 )
      Mqed =
     # (   m2*(u1*t1m2 + t1*u1m2 - u1m1 - t1m1
     #   -3*q2*(t1m2 + u1m2) + 2*q22*(u1m1*t1m2 + t1m1*u1m2)
     #   -8*m2*(q2/2.d0*(t1m3+u1m3)+u1m1*t1m1 + t1m2 + u1m2)
     #  -8*m22*(t1m3 + u1m3 + u1m1*t1m2 + t1m1*u1m2)))
c
c Here is the matrix element.
c
        vps(1) =
     # +m24*log3*lhm4*(-512*u1m1*t1*tm1*q2-512*tm1*q2)
     # +m24*log4*lhpm4*(-512*u1*t1m1*um1*q2-512*um1*q2)
     # +m24*zeta2*lhm5*(-512*u1m1*t1*q2-512*q2)
     # +m24*zeta2*lhpm5*(-512*u1*t1m1*q2-512*q2)
     # +m24*lhm5*dlogq6t*(512*u1m1*t1*q2+512*q2)
     # +m24*lhm5*dlogq7t*(512*u1m1*t1*q2+512*q2)
     # +m24*lhm5*dlogq8t*(-512*u1m1*t1*q2-512*q2)
     # +m24*lhm5*dlogq9t*(-512*u1m1*t1*q2-512*q2)
     # +m24*lhm5*dlogq10t*(-512*u1m1*t1*q2-512*q2)
     # +m24*lhm5*dlogq11t*(-512*u1m1*t1*q2-512*q2)
     # +m24*lhm5*dlogq12t*(512*u1m1*t1*q2+512*q2)
     # +m24*lhm5*dlogq13t*(1024*u1m1*t1*q2+1024*q2)
        vps(2) =
     # +m24*lhpm5*dlogq6u*(512*u1*t1m1*q2+512*q2)
     # +m24*lhpm5*dlogq7u*(512*u1*t1m1*q2+512*q2)
     # +m24*lhpm5*dlogq8u*(-512*u1*t1m1*q2-512*q2)
     # +m24*lhpm5*dlogq9u*(-512*u1*t1m1*q2-512*q2)
     # +m24*lhpm5*dlogq10u*(-512*u1*t1m1*q2-512*q2)
     # +m24*lhpm5*dlogq11u*(-512*u1*t1m1*q2-512*q2)
     # +m24*lhpm5*dlogq12u*(512*u1*t1m1*q2+512*q2)
     # +m24*lhpm5*dlogq13u*(1024*u1*t1m1*q2+1024*q2)
     # +m23*log1*log5*sqm*(1024*tb+512*u1m2+512*
     #    t1m2)
     # +m23*log1*log6*sqm*(-1024*tb-512*u1m2-512*
     #    t1m2)
        vps(3) =
     # +m23*log1*log3*sqm*(512*tb+512*t1m2)
     # +m23*log1*log4*sqm*(512*tb+512*u1m2)
     # +m23*log1*sqm*logq1*(-512*tb-256*u1m2-256*
     #    t1m2)
     # +m23*log3*lhm2*(-128*u1m1*t1p2*tm2-384*u1m1*t1*tm1-
     #    128*u1m1*t1*tm2*q2-128*t1*tm2-384*tm1-128*tm2*q2)
     # +m23*log3*lhm4*(128*u1m1*t1p3*tm1-1024*u1m1*t1p2*tm1*q2
     #    +128*u1m1*t1*tm1*q22+128*t1p2*tm1-1280*t1*tm1*q2-128*
     #    tm1*q22)
     # +m23*log3*(128*u1m1*tm2+128*t1m1*tm2)
     # +m23*log4*lhpm2*(-128*u1p2*t1m1*um2-384*u1*t1m1*um1
     #    -128*u1*t1m1*um2*q2-128*u1*um2-384*um1-128*um2*q2)
        vps(4) =
     # +m23*log4*lhpm4*(128*u1p3*t1m1*um1-1024*u1p2*t1m1*um1*
     #    q2+128*u1p2*um1+128*u1*t1m1*um1*q22-1280*u1*um1*q2-128*
     #    um1*q22)
     # +m23*log4*(128*u1m1*um2+128*t1m1*um2)
     # +m23*dlog2*sqm*(1024*tb+512*u1m2+512*t1m2)
     # +m23*dlog1*sqm*(-1024*tb-512*u1m2-512*
     #    t1m2)
     # +m23*zeta2*sqm*(3584*tb+1792*u1m2+1792*
     #    t1m2)
     # +m23*zeta2*lhm1*(256*tb+256*t1m2)
     # +m23*zeta2*lhm3*(-384-384*u1m1*t1+512*u1m1*q2+512*
     #    t1m1*q2)
        vps(5) =
     # +m23*zeta2*lhm5*(128*u1m1*t1p3-256*u1m1*t1p2*q2-640*
     #    u1m1*t1*q22+128*t1p2-512*t1*q2-896*q22)
     # +m23*zeta2*lhpm1*(256*tb+256*u1m2)
     # +m23*zeta2*lhpm3*(-384-384*u1*t1m1+512*u1m1*q2+512
     #    *t1m1*q2)
     # +m23*zeta2*lhpm5*(128*u1p3*t1m1-256*u1p2*t1m1*q2+128*
     #    u1p2-640*u1*t1m1*q22-512*u1*q2-896*q22)
     # +m23*sqm*log8*logq2*(-512*tb-256*u1m2-256*
     #    t1m2)
     # +m23*sqm*dlogq1*(-1024*tb-512*u1m2-512*
     #    t1m2)
     # +m23*sqm*dlogq2*(-1024*tb-512*u1m2-512*
     #    t1m2)
        vps(6) =
     # +m23*sqm*dlogq3*(-1024*tb-512*u1m2-512*
     #    t1m2)
     # +m23*sqm*dlogq4*(1024*tb+512*u1m2+512*t1m2)
     # +m23*sqm*logq3x2*(-512*tb-256*u1m2-256*
     #    t1m2)
     # +m23*log9*lhm2*(768*tb*q2*x1-768*tb*q2*
     #    x2+768*t1m2*q2*x1-768*t1m2*q2*x2)
     # +m23*log9*lhm4*(768*u1m1*t1*q2*x1-768*u1m1*t1*q2*x2-
     #    768*u1m1*q22*x1+768*u1m1*q22*x2-768*t1m1*q22*x1+768*t1m1
     #    *q22*x2+768*q2*x1-768*q2*x2)
     # +m23*log9*lhpm2*(768*tb*q2*x1-768*tb*q2*
     #    x2+768*u1m2*q2*x1-768*u1m2*q2*x2)
        vps(7) =
     # +m23*log9*lhpm4*(768*u1*t1m1*q2*x1-768*u1*t1m1*q2*x2-
     #    768*u1m1*q22*x1+768*u1m1*q22*x2-768*t1m1*q22*x1+768*t1m1
     #    *q22*x2+768*q2*x1-768*q2*x2)
     # +m23*log10*lhm2*(-768*tb*q2*x1+768*tb*
     #    q2*x2-768*t1m2*q2*x1+768*t1m2*q2*x2)
     # +m23*log10*lhm4*(-768*u1m1*t1*q2*x1+768*u1m1*t1*q2*x2
     #    +768*u1m1*q22*x1-768*u1m1*q22*x2+768*t1m1*q22*x1-768*
     #    t1m1*q22*x2-768*q2*x1+768*q2*x2)
     # +m23*log10*lhpm2*(-768*tb*q2*x1+768*tb
     #    *q2*x2-768*u1m2*q2*x1+768*u1m2*q2*x2)
     # +m23*log10*lhpm4*(-768*u1*t1m1*q2*x1+768*u1*t1m1*q2*x2
     #    +768*u1m1*q22*x1-768*u1m1*q22*x2+768*t1m1*q22*x1-768*
     #    t1m1*q22*x2-768*q2*x1+768*q2*x2)
        vps(8) =
     # +m23*lhm1*dlogq6t*(-256*tb-256*t1m2)
     # +m23*lhm1*dlogq7t*(-256*tb-256*t1m2)
     # +m23*lhm1*dlogq8t*(256*tb+256*t1m2)
     # +m23*lhm1*dlogq9t*(256*tb+256*t1m2)
     # +m23*lhm1*dlogq10t*(256*tb+256*t1m2)
     # +m23*lhm1*dlogq11t*(256*tb+256*t1m2)
     # +m23*lhm1*dlogq12t*(-256*tb-256*t1m2)
     # +m23*lhm1*dlogq13t*(-512*tb-512*t1m2)
     # +m23*lhm2*(128*u1m1*t1*tm1+128*u1m1*tm1*q2+128*t1m1
     #    *tm1*q2+128*tm1)
     # +m23*lhm3*dlogq6t*(384+384*u1m1*t1-512*u1m1*q2-512*
     #    t1m1*q2)
        vps(9) =
     # +m23*lhm3*dlogq7t*(384+384*u1m1*t1-512*u1m1*q2-512*
     #    t1m1*q2)
     # +m23*lhm3*dlogq8t*(-384-384*u1m1*t1+512*u1m1*q2+512*
     #    t1m1*q2)
     # +m23*lhm3*dlogq9t*(-384-384*u1m1*t1+512*u1m1*q2+512*
     #    t1m1*q2)
     # +m23*lhm3*dlogq10t*(-384-384*u1m1*t1+512*u1m1*q2+512
     #    *t1m1*q2)
     # +m23*lhm3*dlogq11t*(-384-384*u1m1*t1+512*u1m1*q2+512
     #    *t1m1*q2)
     # +m23*lhm3*dlogq12t*(384+384*u1m1*t1-512*u1m1*q2-512*
     #    t1m1*q2)
        vps(10) =
     # +m23*lhm3*dlogq13t*(768+768*u1m1*t1-1024*u1m1*q2-1024*
     #    t1m1*q2)
     # +m23*lhm5*dlogq6t*(-128*u1m1*t1p3+256*u1m1*t1p2*q2+640
     #    *u1m1*t1*q22-128*t1p2+512*t1*q2+896*q22)
     # +m23*lhm5*dlogq7t*(-128*u1m1*t1p3+256*u1m1*t1p2*q2+640
     #    *u1m1*t1*q22-128*t1p2+512*t1*q2+896*q22)
     # +m23*lhm5*dlogq8t*(128*u1m1*t1p3-256*u1m1*t1p2*q2-640*
     #    u1m1*t1*q22+128*t1p2-512*t1*q2-896*q22)
     # +m23*lhm5*dlogq9t*(128*u1m1*t1p3-256*u1m1*t1p2*q2-640*
     #    u1m1*t1*q22+128*t1p2-512*t1*q2-896*q22)
     # +m23*lhm5*dlogq10t*(128*u1m1*t1p3-256*u1m1*t1p2*q2-640*
     #    u1m1*t1*q22+128*t1p2-512*t1*q2-896*q22)
        vps(11) =
     # +m23*lhm5*dlogq11t*(128*u1m1*t1p3-256*u1m1*t1p2*q2-640*
     #    u1m1*t1*q22+128*t1p2-512*t1*q2-896*q22)
     # +m23*lhm5*dlogq12t*(-128*u1m1*t1p3+256*u1m1*t1p2*q2+
     #    640*u1m1*t1*q22-128*t1p2+512*t1*q2+896*q22)
     # +m23*lhm5*dlogq13t*(-256*u1m1*t1p3+512*u1m1*t1p2*q2+
     #    1280*u1m1*t1*q22-256*t1p2+1024*t1*q2+1792*q22)
     # +m23*lhpm1*dlogq6u*(-256*tb-256*u1m2)
     # +m23*lhpm1*dlogq7u*(-256*tb-256*u1m2)
     # +m23*lhpm1*dlogq8u*(256*tb+256*u1m2)
     # +m23*lhpm1*dlogq9u*(256*tb+256*u1m2)
     # +m23*lhpm1*dlogq10u*(256*tb+256*u1m2)
     # +m23*lhpm1*dlogq11u*(256*tb+256*u1m2)
        vps(12) =
     # +m23*lhpm1*dlogq12u*(-256*tb-256*u1m2)
     # +m23*lhpm1*dlogq13u*(-512*tb-512*u1m2)
     # +m23*lhpm2*(128*u1*t1m1*um1+128*u1m1*um1*q2+128*
     #    t1m1*um1*q2+128*um1)
     # +m23*lhpm3*dlogq6u*(384+384*u1*t1m1-512*u1m1*q2-512*
     #    t1m1*q2)
     # +m23*lhpm3*dlogq7u*(384+384*u1*t1m1-512*u1m1*q2-512*
     #    t1m1*q2)
     # +m23*lhpm3*dlogq8u*(-384-384*u1*t1m1+512*u1m1*q2+512
     #    *t1m1*q2)
     # +m23*lhpm3*dlogq9u*(-384-384*u1*t1m1+512*u1m1*q2+512
     #    *t1m1*q2)
        vps(13) =
     # +m23*lhpm3*dlogq10u*(-384-384*u1*t1m1+512*u1m1*q2+
     #    512*t1m1*q2)
     # +m23*lhpm3*dlogq11u*(-384-384*u1*t1m1+512*u1m1*q2+
     #    512*t1m1*q2)
     # +m23*lhpm3*dlogq12u*(384+384*u1*t1m1-512*u1m1*q2-512*
     #    t1m1*q2)
     # +m23*lhpm3*dlogq13u*(768+768*u1*t1m1-1024*u1m1*q2-1024
     #    *t1m1*q2)
     # +m23*lhpm5*dlogq6u*(-128*u1p3*t1m1+256*u1p2*t1m1*q2-
     #    128*u1p2+640*u1*t1m1*q22+512*u1*q2+896*q22)
     # +m23*lhpm5*dlogq7u*(-128*u1p3*t1m1+256*u1p2*t1m1*q2-
     #    128*u1p2+640*u1*t1m1*q22+512*u1*q2+896*q22)
        vps(14) =
     # +m23*lhpm5*dlogq8u*(128*u1p3*t1m1-256*u1p2*t1m1*q2+128*
     #    u1p2-640*u1*t1m1*q22-512*u1*q2-896*q22)
     # +m23*lhpm5*dlogq9u*(128*u1p3*t1m1-256*u1p2*t1m1*q2+128*
     #    u1p2-640*u1*t1m1*q22-512*u1*q2-896*q22)
     # +m23*lhpm5*dlogq10u*(128*u1p3*t1m1-256*u1p2*t1m1*q2+128*
     #    u1p2-640*u1*t1m1*q22-512*u1*q2-896*q22)
     # +m23*lhpm5*dlogq11u*(128*u1p3*t1m1-256*u1p2*t1m1*q2+128*
     #    u1p2-640*u1*t1m1*q22-512*u1*q2-896*q22)
     # +m23*lhpm5*dlogq12u*(-128*u1p3*t1m1+256*u1p2*t1m1*q2-
     #    128*u1p2+640*u1*t1m1*q22+512*u1*q2+896*q22)
     # +m23*lhpm5*dlogq13u*(-256*u1p3*t1m1+512*u1p2*t1m1*q2-
     #    256*u1p2+1280*u1*t1m1*q22+1024*u1*q2+1792*q22)
        vps(15) =
     # +m23*(-160*tb*um1-160*tb*tm1+64*
     #    u1m1*t1m2*tm1*q2-512*u1m1*t1m2+64*u1m2*t1m1*um1*q2-512*
     #    u1m2*t1m1-128*u1m2*um1+64*u1m3*um1*q2-512*u1m3-128*
     #    t1m2*tm1+64*t1m3*tm1*q2-512*t1m3)
     # +m22*log1x2*sqm*(64*u1m1+64*t1m1)
     # +m22*log1x2*(64*u1m1*spm1+64*t1m1*spm1)
     # +m22*log1*log5*sqm*(256*u1*t1m2-512*tb*q2+
     #    1280*u1m1+256*u1m2*t1+1280*t1m1)
     # +m22*log1*log6*sqm*(-256*u1*t1m2+512*tb*q2
     #    -1536*u1m1-256*u1m2*t1-1536*t1m1)
     # +m22*log1*log3*sqm*(256*u1*t1m2-256*tb*q2+768
     #    *u1m1+768*t1m1)
        vps(16) =
     # +m22*log1*log4*sqm*(-256*tb*q2+768*u1m1+256
     #    *u1m2*t1+768*t1m1)
     # +m22*log1*sqm*logq1*(-128*u1*t1m2+256*tb*q2
     #    -768*u1m1-128*u1m2*t1-768*t1m1)
     # +m22*log1*sqm*(512*u1*t1m1*q2*spm2-256*u1*t1m1*spm1
     #    +512*u1m1*t1*q2*spm2-256*u1m1*t1*spm1+768*u1m1*q2*spm1-
     #    256*u1m1+768*t1m1*q2*spm1-256*t1m1+1024*q2*spm2-512*
     #    spm1)
     # +m22*log3*lhm2*(64*u1*tm1-256*u1m1*t1p3*tm2-256*u1m1*
     #    t1p2*tm1-192*u1m1*t1p2*tm2*q2+64*u1m1*t1*tm1*q2+64*u1m1*
     #    t1*tm2*q22-320*t1p2*tm2-384*t1*tm1-320*t1*tm2*q2-128*
     #    tm1*q2)
        vps(17) =
     # +m22*log3*lhm4*(-96*u1*t1p2*tm1+480*u1*t1*tm1*q2+96*
     #    u1m1*t1p4*tm1-480*u1m1*t1p3*tm1*q2-64*u1m1*t1p2*tm1*q22+
     #    128*u1m1*t1*tm1*q23+64*t1p3*tm1-192*t1p2*tm1*q2-512*t1*
     #    tm1*q22+64*tm1*q23)
     # +m22*log3*(-32*u1*t1m2*tm1+192*u1m1*t1*tm2-160*u1m1
     #    *tm1-192*t1m1*tm1+64*t1m1*tm2*q2+320*tm2)
     # +m22*log4*lhpm2*(-256*u1p3*t1m1*um2-256*u1p2*t1m1*um1
     #    -192*u1p2*t1m1*um2*q2-320*u1p2*um2+64*u1*t1m1*um1*q2+64*
     #    u1*t1m1*um2*q22-384*u1*um1-320*u1*um2*q2+64*t1*um1-128*
     #    um1*q2)
     # +m22*log4*lhpm4*(96*u1p4*t1m1*um1-480*u1p3*t1m1*um1*q2
     #    +64*u1p3*um1-96*u1p2*t1*um1-64*u1p2*t1m1*um1*q22-192*
     #    u1p2*um1*q2+480*u1*t1*um1*q2+128*u1*t1m1*um1*q23-512*u1*
     #    um1*q22+64*um1*q23)
        vps(18) =
     # +m22*log4*(192*u1*t1m1*um2-192*u1m1*um1+64*u1m1*um2*
     #    q2-32*u1m2*t1*um1-160*t1m1*um1+320*um2)
     # +m22*dlog2*sqm*(256*u1*t1m2-512*tb*q2+1280*
     #    u1m1+256*u1m2*t1+1280*t1m1)
     # +m22*dlog3*(-32*u1*t1m3+96*tb-64*t1m2)
     # +m22*dlog4*(96*tb-64*u1m2-32*u1m3*t1)
     # +m22*dlog1*sqm*(-256*u1*t1m2+512*tb*q2-
     #    1536*u1m1-256*u1m2*t1-1536*t1m1)
     # +m22*zeta2*sqm*(896*u1*t1m2-1792*tb*q2+4864
     #    *u1m1+896*u1m2*t1+4864*t1m1)
     # +m22*zeta2*lhm1*(-128*tb*q2+384*u1m1+384*
     #    t1m1)
        vps(19) =
     # +m22*zeta2*lhm3*(64*u1-192*u1m1*t1p2+128*u1m1*q22-
     #    320*t1+384*t1m1*q22+64*q2)
     # +m22*zeta2*lhm5*(-96*u1*t1p2+480*u1*t1*q2-96*u1m1*
     #    t1p4+864*u1m1*t1p3*q2-1536*u1m1*t1p2*q22+960*u1m1*t1*q23
     #    -128*t1p3+1536*t1p2*q2-1984*t1*q22+512*q23)
     # +m22*zeta2*lhpm1*(-128*tb*q2+384*u1m1+384*
     #    t1m1)
     # +m22*zeta2*lhpm3*(-192*u1p2*t1m1-320*u1+384*u1m1*
     #    q22+64*t1+128*t1m1*q22+64*q2)
     # +m22*zeta2*lhpm5*(-96*u1p4*t1m1+864*u1p3*t1m1*q2-128
     #    *u1p3-96*u1p2*t1-1536*u1p2*t1m1*q22+1536*u1p2*q2+480*u1*t1*
     #    q2+960*u1*t1m1*q23-1984*u1*q22+512*q23)
        vps(20) =
     # +m22*zeta2*(32*u1*t1m3-192*tb-384*u1m1*spm1
     #    +64*u1m2+32*u1m3*t1-384*t1m1*spm1+64*t1m2)
     # +m22*sqm*log8*logq2*(-128*u1*t1m2+256*tb*q2
     #    -768*u1m1-128*u1m2*t1-768*t1m1)
     # +m22*sqm*dlogq1*(-256*u1*t1m2+512*tb*q2-
     #    1536*u1m1-256*u1m2*t1-1536*t1m1)
     # +m22*sqm*dlogq2*(-256*u1*t1m2+512*tb*q2-
     #    1536*u1m1-256*u1m2*t1-1536*t1m1)
     # +m22*sqm*dlogq3*(-256*u1*t1m2+512*tb*q2-
     #    1536*u1m1-256*u1m2*t1-1536*t1m1)
     # +m22*sqm*dlogq4*(256*u1*t1m2-512*tb*q2+1536*
     #    u1m1+256*u1m2*t1+1536*t1m1)
        vps(21) =
     # +m22*sqm*logq3x2*(-128*u1*t1m2+256*tb*q2-
     #    768*u1m1-128*u1m2*t1-768*t1m1)
     # +m22*log9*lhm2*(128*u1m1*t1*x1-128*u1m1*t1*x2-192*
     #    tb*q22*x1+192*tb*q22*x2+448*u1m1*q2*x1-448
     #    *u1m1*q2*x2+832*t1m1*q2*x1-832*t1m1*q2*x2+192*t1m2*q22*x1
     #    -192*t1m2*q22*x2+128*x1-128*x2)
     # +m22*log9*lhm4*(-192*u1m1*t1p3*x1+192*u1m1*t1p3*x2+
     #    1344*u1m1*t1p2*q2*x1-1344*u1m1*t1p2*q2*x2-1472*u1m1*t1*q22*x1
     #    +1472*u1m1*t1*q22*x2+832*u1m1*q23*x1-832*u1m1*q23*x2-
     #    192*t1p2*x1+192*t1p2*x2+1728*t1*q2*x1-1728*t1*q2*x2+448*t1m1
     #    *q23*x1-448*t1m1*q23*x2-1472*q22*x1+1472*q22*x2)
        vps(22) =
     # +m22*log9*lhpm2*(128*u1*t1m1*x1-128*u1*t1m1*x2-192*
     #    tb*q22*x1+192*tb*q22*x2+832*u1m1*q2*x1-832
     #    *u1m1*q2*x2+192*u1m2*q22*x1-192*u1m2*q22*x2+448*t1m1*q2*
     #    x1-448*t1m1*q2*x2+128*x1-128*x2)
     # +m22*log9*lhpm4*(-192*u1p3*t1m1*x1+192*u1p3*t1m1*x2+
     #    1344*u1p2*t1m1*q2*x1-1344*u1p2*t1m1*q2*x2-192*u1p2*x1+192*
     #    u1p2*x2-1472*u1*t1m1*q22*x1+1472*u1*t1m1*q22*x2+1728*u1*q2*
     #    x1-1728*u1*q2*x2+448*u1m1*q23*x1-448*u1m1*q23*x2+832*
     #    t1m1*q23*x1-832*t1m1*q23*x2-1472*q22*x1+1472*q22*x2)
     # +m22*log9*(128*tb*x1-128*tb*x2+64*u1m2
     #    *x1-64*u1m2*x2+64*t1m2*x1-64*t1m2*x2)
        vps(23) =
     # +m22*log10*lhm2*(-128*u1m1*t1*x1+128*u1m1*t1*x2+192*
     #    tb*q22*x1-192*tb*q22*x2-448*u1m1*q2*x1+448
     #    *u1m1*q2*x2-832*t1m1*q2*x1+832*t1m1*q2*x2-192*t1m2*q22*x1
     #    +192*t1m2*q22*x2-128*x1+128*x2)
     # +m22*log10*lhm4*(192*u1m1*t1p3*x1-192*u1m1*t1p3*x2-
     #    1344*u1m1*t1p2*q2*x1+1344*u1m1*t1p2*q2*x2+1472*u1m1*t1*q22*x1
     #    -1472*u1m1*t1*q22*x2-832*u1m1*q23*x1+832*u1m1*q23*x2+
     #    192*t1p2*x1-192*t1p2*x2-1728*t1*q2*x1+1728*t1*q2*x2-448*t1m1
     #    *q23*x1+448*t1m1*q23*x2+1472*q22*x1-1472*q22*x2)
     # +m22*log10*lhpm2*(-128*u1*t1m1*x1+128*u1*t1m1*x2+192
     #    *tb*q22*x1-192*tb*q22*x2-832*u1m1*q2*x1+
     #    832*u1m1*q2*x2-192*u1m2*q22*x1+192*u1m2*q22*x2-448*t1m1*
     #    q2*x1+448*t1m1*q2*x2-128*x1+128*x2)
        vps(24) =
     # +m22*log10*lhpm4*(192*u1p3*t1m1*x1-192*u1p3*t1m1*x2-
     #    1344*u1p2*t1m1*q2*x1+1344*u1p2*t1m1*q2*x2+192*u1p2*x1-192*
     #    u1p2*x2+1472*u1*t1m1*q22*x1-1472*u1*t1m1*q22*x2-1728*u1*q2*
     #    x1+1728*u1*q2*x2-448*u1m1*q23*x1+448*u1m1*q23*x2-832*
     #    t1m1*q23*x1+832*t1m1*q23*x2+1472*q22*x1-1472*q22*x2)
     # +m22*log10*(-128*tb*x1+128*tb*x2-64*
     #    u1m2*x1+64*u1m2*x2-64*t1m2*x1+64*t1m2*x2)
     # +m22*lhm1*dlogq6t*(128*tb*q2-384*u1m1-384*t1m1
     #    )
     # +m22*lhm1*dlogq7t*(128*tb*q2-384*u1m1-384*t1m1
     #    )
     # +m22*lhm1*dlogq8t*(-128*tb*q2+384*u1m1+384*
     #    t1m1)
        vps(25) =
     # +m22*lhm1*dlogq9t*(-128*tb*q2+384*u1m1+384*
     #    t1m1)
     # +m22*lhm1*dlogq10t*(-128*tb*q2+384*u1m1+384*
     #    t1m1)
     # +m22*lhm1*dlogq11t*(-128*tb*q2+384*u1m1+384*
     #    t1m1)
     # +m22*lhm1*dlogq12t*(128*tb*q2-384*u1m1-384*t1m1
     #    )
     # +m22*lhm1*dlogq13t*(256*tb*q2-768*u1m1-768*t1m1
     #    )
     # +m22*lhm2*(-128+272*u1m1*t1p2*tm1+208*u1m1*t1*tm1*
     #    q2-128*u1m1*t1+128*tb*q22-64*u1m1*tm1*q22-128*
     #    u1m1*q2+336*t1*tm1-128*t1m1*q2+128*t1m2*q22+336*tm1*q2
     #    )
        vps(26) =
     # +m22*lhm3*dlogq6t*(-64*u1+192*u1m1*t1p2-128*u1m1*q22
     #    +320*t1-384*t1m1*q22-64*q2)
     # +m22*lhm3*dlogq7t*(-64*u1+192*u1m1*t1p2-128*u1m1*q22
     #    +320*t1-384*t1m1*q22-64*q2)
     # +m22*lhm3*dlogq8t*(64*u1-192*u1m1*t1p2+128*u1m1*q22-
     #    320*t1+384*t1m1*q22+64*q2)
     # +m22*lhm3*dlogq9t*(64*u1-192*u1m1*t1p2+128*u1m1*q22-
     #    320*t1+384*t1m1*q22+64*q2)
     # +m22*lhm3*dlogq10t*(64*u1-192*u1m1*t1p2+128*u1m1*q22-
     #    320*t1+384*t1m1*q22+64*q2)
     # +m22*lhm3*dlogq11t*(64*u1-192*u1m1*t1p2+128*u1m1*q22-
     #    320*t1+384*t1m1*q22+64*q2)
        vps(27) =
     # +m22*lhm3*dlogq12t*(-64*u1+192*u1m1*t1p2-128*u1m1*q22
     #    +320*t1-384*t1m1*q22-64*q2)
     # +m22*lhm3*dlogq13t*(-128*u1+384*u1m1*t1p2-256*u1m1*
     #    q22+640*t1-768*t1m1*q22-128*q2)
     # +m22*lhm5*dlogq6t*(96*u1*t1p2-480*u1*t1*q2+96*u1m1*t1p4
     #    -864*u1m1*t1p3*q2+1536*u1m1*t1p2*q22-960*u1m1*t1*q23+128
     #    *t1p3-1536*t1p2*q2+1984*t1*q22-512*q23)
     # +m22*lhm5*dlogq7t*(96*u1*t1p2-480*u1*t1*q2+96*u1m1*t1p4
     #    -864*u1m1*t1p3*q2+1536*u1m1*t1p2*q22-960*u1m1*t1*q23+128
     #    *t1p3-1536*t1p2*q2+1984*t1*q22-512*q23)
     # +m22*lhm5*dlogq8t*(-96*u1*t1p2+480*u1*t1*q2-96*u1m1*
     #    t1p4+864*u1m1*t1p3*q2-1536*u1m1*t1p2*q22+960*u1m1*t1*q23
     #    -128*t1p3+1536*t1p2*q2-1984*t1*q22+512*q23)
        vps(28) =
     # +m22*lhm5*dlogq9t*(-96*u1*t1p2+480*u1*t1*q2-96*u1m1*
     #    t1p4+864*u1m1*t1p3*q2-1536*u1m1*t1p2*q22+960*u1m1*t1*q23
     #    -128*t1p3+1536*t1p2*q2-1984*t1*q22+512*q23)
     # +m22*lhm5*dlogq10t*(-96*u1*t1p2+480*u1*t1*q2-96*u1m1*
     #    t1p4+864*u1m1*t1p3*q2-1536*u1m1*t1p2*q22+960*u1m1*t1*q23
     #    -128*t1p3+1536*t1p2*q2-1984*t1*q22+512*q23)
     # +m22*lhm5*dlogq11t*(-96*u1*t1p2+480*u1*t1*q2-96*u1m1*
     #    t1p4+864*u1m1*t1p3*q2-1536*u1m1*t1p2*q22+960*u1m1*t1*q23
     #    -128*t1p3+1536*t1p2*q2-1984*t1*q22+512*q23)
     # +m22*lhm5*dlogq12t*(96*u1*t1p2-480*u1*t1*q2+96*u1m1*t1p4
     #    -864*u1m1*t1p3*q2+1536*u1m1*t1p2*q22-960*u1m1*t1*q23+128
     #    *t1p3-1536*t1p2*q2+1984*t1*q22-512*q23)
        vps(29) =
     # +m22*lhm5*dlogq13t*(192*u1*t1p2-960*u1*t1*q2+192*u1m1*
     #    t1p4-1728*u1m1*t1p3*q2+3072*u1m1*t1p2*q22-1920*u1m1*t1*q23
     #    +256*t1p3-3072*t1p2*q2+3968*t1*q22-1024*q23)
     # +m22*lhpm1*dlogq6u*(128*tb*q2-384*u1m1-384*t1m1
     #    )
     # +m22*lhpm1*dlogq7u*(128*tb*q2-384*u1m1-384*t1m1
     #    )
     # +m22*lhpm1*dlogq8u*(-128*tb*q2+384*u1m1+384*
     #    t1m1)
     # +m22*lhpm1*dlogq9u*(-128*tb*q2+384*u1m1+384*
     #    t1m1)
     # +m22*lhpm1*dlogq10u*(-128*tb*q2+384*u1m1+384*
     #    t1m1)
        vps(30) =
     # +m22*lhpm1*dlogq11u*(-128*tb*q2+384*u1m1+384*
     #    t1m1)
     # +m22*lhpm1*dlogq12u*(128*tb*q2-384*u1m1-384*
     #    t1m1)
     # +m22*lhpm1*dlogq13u*(256*tb*q2-768*u1m1-768*
     #    t1m1)
     # +m22*lhpm2*(-128+272*u1p2*t1m1*um1+208*u1*t1m1*um1
     #    *q2-128*u1*t1m1+336*u1*um1+128*tb*q22-128*u1m1*
     #    q2+128*u1m2*q22-64*t1m1*um1*q22-128*t1m1*q2+336*um1*q2
     #    )
     # +m22*lhpm3*dlogq6u*(192*u1p2*t1m1+320*u1-384*u1m1*q22
     #    -64*t1-128*t1m1*q22-64*q2)
        vps(31) =
     # +m22*lhpm3*dlogq7u*(192*u1p2*t1m1+320*u1-384*u1m1*q22
     #    -64*t1-128*t1m1*q22-64*q2)
     # +m22*lhpm3*dlogq8u*(-192*u1p2*t1m1-320*u1+384*u1m1*
     #    q22+64*t1+128*t1m1*q22+64*q2)
     # +m22*lhpm3*dlogq9u*(-192*u1p2*t1m1-320*u1+384*u1m1*
     #    q22+64*t1+128*t1m1*q22+64*q2)
     # +m22*lhpm3*dlogq10u*(-192*u1p2*t1m1-320*u1+384*u1m1*
     #    q22+64*t1+128*t1m1*q22+64*q2)
     # +m22*lhpm3*dlogq11u*(-192*u1p2*t1m1-320*u1+384*u1m1*
     #    q22+64*t1+128*t1m1*q22+64*q2)
     # +m22*lhpm3*dlogq12u*(192*u1p2*t1m1+320*u1-384*u1m1*q22
     #    -64*t1-128*t1m1*q22-64*q2)
        vps(32) =
     # +m22*lhpm3*dlogq13u*(384*u1p2*t1m1+640*u1-768*u1m1*q22
     #    -128*t1-256*t1m1*q22-128*q2)
     # +m22*lhpm5*dlogq6u*(96*u1p4*t1m1-864*u1p3*t1m1*q2+128*
     #    u1p3+96*u1p2*t1+1536*u1p2*t1m1*q22-1536*u1p2*q2-480*u1*t1*
     #    q2-960*u1*t1m1*q23+1984*u1*q22-512*q23)
     # +m22*lhpm5*dlogq7u*(96*u1p4*t1m1-864*u1p3*t1m1*q2+128*
     #    u1p3+96*u1p2*t1+1536*u1p2*t1m1*q22-1536*u1p2*q2-480*u1*t1*
     #    q2-960*u1*t1m1*q23+1984*u1*q22-512*q23)
     # +m22*lhpm5*dlogq8u*(-96*u1p4*t1m1+864*u1p3*t1m1*q2-128
     #    *u1p3-96*u1p2*t1-1536*u1p2*t1m1*q22+1536*u1p2*q2+480*u1*t1*
     #    q2+960*u1*t1m1*q23-1984*u1*q22+512*q23)
        vps(33) =
     # +m22*lhpm5*dlogq9u*(-96*u1p4*t1m1+864*u1p3*t1m1*q2-128
     #    *u1p3-96*u1p2*t1-1536*u1p2*t1m1*q22+1536*u1p2*q2+480*u1*t1*
     #    q2+960*u1*t1m1*q23-1984*u1*q22+512*q23)
     # +m22*lhpm5*dlogq10u*(-96*u1p4*t1m1+864*u1p3*t1m1*q2-
     #    128*u1p3-96*u1p2*t1-1536*u1p2*t1m1*q22+1536*u1p2*q2+480*u1*
     #    t1*q2+960*u1*t1m1*q23-1984*u1*q22+512*q23)
     # +m22*lhpm5*dlogq11u*(-96*u1p4*t1m1+864*u1p3*t1m1*q2-
     #    128*u1p3-96*u1p2*t1-1536*u1p2*t1m1*q22+1536*u1p2*q2+480*u1*
     #    t1*q2+960*u1*t1m1*q23-1984*u1*q22+512*q23)
     # +m22*lhpm5*dlogq12u*(96*u1p4*t1m1-864*u1p3*t1m1*q2+128*
     #    u1p3+96*u1p2*t1+1536*u1p2*t1m1*q22-1536*u1p2*q2-480*u1*t1*
     #    q2-960*u1*t1m1*q23+1984*u1*q22-512*q23)
        vps(34) =
     # +m22*lhpm5*dlogq13u*(192*u1p4*t1m1-1728*u1p3*t1m1*q2+256
     #    *u1p3+192*u1p2*t1+3072*u1p2*t1m1*q22-3072*u1p2*q2-960*u1*t1
     #    *q2-1920*u1*t1m1*q23+3968*u1*q22-1024*q23)
     # +m22*log7x2*(-64*u1m1*spm1-64*t1m1*spm1)
     # +m22*(-16*u1*t1m2*tm1+160*tb*um1*q2+160*
     #    tb*tm1*q2-192*tb-32*u1m1*t1m2*tm1*q22-64
     #    *u1m1*t1m2*q2-352*u1m1*um1-256*u1m1*tm1-16*u1m2*t1*um1
     #    -32*u1m2*t1m1*um1*q22-64*u1m2*t1m1*q2+112*u1m2*um1*q2
     #    -384*u1m2-320*u1m3*q2-256*t1m1*um1-352*t1m1*tm1+112*
     #    t1m2*tm1*q2-384*t1m2-320*t1m3*q2)
     # +m2*log1x2*sqm*(-96-16*u1*t1m1-16*u1m1*t1+48*
     #    u1m1*q2+48*t1m1*q2+64*Bqed)
        vps(35) =
     # +m2*log1x2*(-32*u1p2*t1m1*q2*spm3+32*u1p2*t1m1*spm2-
     #    64*u1*t1m1*q2*spm2+32*u1*t1m1*spm1-32*u1*q2*spm3+160*u1*
     #    spm2-32*u1m1*t1p2*q2*spm3+32*u1m1*t1p2*spm2-64*u1m1*t1*q2
     #    *spm2+32*u1m1*t1*spm1-32*u1m1*q2*spm1-32*t1*q2*spm3+160
     #    *t1*spm2-32*t1m1*q2*spm1-128*q2*spm2+128*spm1)
     # +m2*log1*log5*sqm*(512+128*u1*t1m1+128*u1*t1m2*q2+
     #    128*u1m1*t1-256*tb*q22+128*u1m1*q2+128*u1m2*t1*q2
     #    -128*u1m2*q22+128*t1m1*q2-128*t1m2*q22-128*Bqed)
     # +m2*log1*log6*sqm*(-128-64*u1*t1m1-128*u1*t1m2*q2
     #    -64*u1m1*t1+256*tb*q22-320*u1m1*q2-128*u1m2*t1*
     #    q2+128*u1m2*q22-320*t1m1*q2+128*t1m2*q22-128*Bqed)
        vps(36) =
     # +m2*log1*log3*sqm*(64+64*u1*t1m1+128*u1*t1m2*q2-128*
     #    tb*q22+192*u1m1*q2+128*t1m1*q2-128*t1m2*q22)
     # +m2*log1*log4*sqm*(64+64*u1m1*t1-128*tb*q22
     #    +128*u1m1*q2+128*u1m2*t1*q2-128*u1m2*q22+192*t1m1*q2)
     # +m2*log1*sqm*logq1*(-64-32*u1*t1m1-64*u1*t1m2*q2-
     #    32*u1m1*t1+128*tb*q22-160*u1m1*q2-64*u1m2*t1*q2+
     #    64*u1m2*q22-160*t1m1*q2+64*t1m2*q22)
        vps(37) =
     # +m2*log1*sqm*(-256-384*u1p3*t1m1*q2*spm3-128*u1p3*
     #    t1m1*spm2+384*u1p2*t1m1*q22*spm3-512*u1p2*t1m1*q2*spm2+
     #    64*u1p2*t1m1*s1m1-320*u1p2*t1m1*spm1-768*u1p2*q2*spm3-768*
     #    u1*t1*q2*spm3+256*u1*t1*spm2+768*u1*t1m1*q22*spm2-64*u1*
     #    t1m1*q2*s1m1+128*u1*t1m1*q2*spm1-256*u1*t1m1+384*u1*q22*
     #    spm3-1280*u1*q2*spm2-64*u1*s1m1-192*u1*spm1-384*u1m1*
     #    t1p3*q2*spm3-128*u1m1*t1p3*spm2+384*u1m1*t1p2*q22*spm3-
     #    512*u1m1*t1p2*q2*spm2+64*u1m1*t1p2*s1m1-320*u1m1*t1p2*spm1
     #    +768*u1m1*t1*q22*spm2-64*u1m1*t1*q2*s1m1+128*u1m1*t1*q2*
     #    spm1-256*u1m1*t1+320*u1m1*q22*spm1+192*u1m1*q2-768*t1p2
     #    *q2*spm3+384*t1*q22*spm3-1280*t1*q2*spm2-64*t1*s1m1-192*
     #    t1*spm1+320*t1m1*q22*spm1+192*t1m1*q2+1024*q22*spm2+
     #    128*q2*s1m1-256*q2*spm1+128*Bqed*logdel+64*Bqed)
        vps(38) =
     # +m2*log3*lhm2*(256*u1*t1*tm1-64*u1*tm1*q2-144*u1m1*t1p4
     #    *tm2+80*u1m1*t1p3*tm1-48*u1m1*t1p3*tm2*q2-160*u1m1*t1p2*
     #    tm1*q2+96*u1m1*t1p2*tm2*q22+128*u1m1*t1*tm1*q22-208*t1p3
     #    *tm2+304*t1p2*tm1-208*t1p2*tm2*q2-352*t1*tm1*q2+64*tm1*
     #    q22)
     # +m2*log3*lhm4*(-240*u1*t1p3*tm1+768*u1*t1p2*tm1*q2-144
     #    *u1*t1*tm1*q22+96*u1m1*t1p4*tm1*q2-256*u1m1*t1p3*tm1*q22
     #    +320*u1m1*t1p2*tm1*q23-32*u1m1*t1*tm1*q24-208*t1p4*tm1
     #    +928*t1p3*tm1*q2-880*t1p2*tm1*q22+160*t1*tm1*q23)
     # +m2*log3*(-16*u1*t1m1*tm1+112*u1m1*t1p2*tm2-112*u1m1
     #    *t1*tm1-32*u1m1*tm2*q22+240*t1*tm2-32*t1m1*tm1*q2-320*
     #    tm1+112*tm2*q2)
        vps(39) =
     # +m2*log4*lhpm2*(-144*u1p4*t1m1*um2+80*u1p3*t1m1*um1-
     #    48*u1p3*t1m1*um2*q2-208*u1p3*um2-160*u1p2*t1m1*um1*q2+96*
     #    u1p2*t1m1*um2*q22+304*u1p2*um1-208*u1p2*um2*q2+256*u1*t1*
     #    um1+128*u1*t1m1*um1*q22-352*u1*um1*q2-64*t1*um1*q2+64*
     #    um1*q22)
     # +m2*log4*lhpm4*(96*u1p4*t1m1*um1*q2-208*u1p4*um1-240*
     #    u1p3*t1*um1-256*u1p3*t1m1*um1*q22+928*u1p3*um1*q2+768*u1p2
     #    *t1*um1*q2+320*u1p2*t1m1*um1*q23-880*u1p2*um1*q22-144*u1*
     #    t1*um1*q22-32*u1*t1m1*um1*q24+160*u1*um1*q23)
     # +m2*log4*(112*u1p2*t1m1*um2-112*u1*t1m1*um1+240*u1*um2
     #    -16*u1m1*t1*um1-32*u1m1*um1*q2-32*t1m1*um2*q22-320*
     #    um1+112*um2*q2)
        vps(40) =
     # +m2*dlog2*sqm*(512+128*u1*t1m1+128*u1*t1m2*q2+128*
     #    u1m1*t1-256*tb*q22+128*u1m1*q2+128*u1m2*t1*q2-
     #    128*u1m2*q22+128*t1m1*q2-128*t1m2*q22-128*Bqed)
     # +m2*dlog3*(32*u1m1-32*t1m1+32*t1m2*q2)
     # +m2*dlog4*(-32*u1m1+32*u1m2*q2+32*t1m1)
     # +m2*dlog1*sqm*(-128-64*u1*t1m1-128*u1*t1m2*q2-64*
     #    u1m1*t1+256*tb*q22-320*u1m1*q2-128*u1m2*t1*q2+
     #    128*u1m2*q22-320*t1m1*q2+128*t1m2*q22-128*Bqed)
     # +m2*zeta2*sqm*(1216+352*u1*t1m1+448*u1*t1m2*q2+352
     #    *u1m1*t1-896*tb*q22+736*u1m1*q2+448*u1m2*t1*q2-
     #    448*u1m2*q22+736*t1m1*q2-448*t1m2*q22+64*Bqed)
        vps(41) =
     # +m2*zeta2*lhm1*(-32*u1*t1m1+32*u1m1*t1-64*tb
     #    *q22+96*u1m1*q2+192*t1m1*q2-64*t1m2*q22)
     # +m2*zeta2*lhm3*(224*u1*t1-224*u1*q2+144*u1m1*t1p3-704*
     #    u1m1*t1p2*q2+992*u1m1*t1*q22-320*u1m1*q23+368*t1p2-1120*
     #    t1*q2-128*t1m1*q23+704*q22)
     # +m2*zeta2*lhm5*(-192*u1*t1p3+544*u1*t1p2*q2-352*u1*t1*
     #    q22-144*u1m1*t1p5+704*u1m1*t1p4*q2-1296*u1m1*t1p3*q22+
     #    1056*u1m1*t1p2*q23-320*u1m1*t1*q24-400*t1p4+1504*t1p3*q2-
     #    1808*t1p2*q22+768*t1*q23-64*q24)
     # +m2*zeta2*lhpm1*(32*u1*t1m1-32*u1m1*t1-64*tb*
     #    q22+192*u1m1*q2-64*u1m2*q22+96*t1m1*q2)
        vps(42) =
     # +m2*zeta2*lhpm3*(144*u1p3*t1m1-704*u1p2*t1m1*q2+368*
     #    u1p2+224*u1*t1+992*u1*t1m1*q22-1120*u1*q2-128*u1m1*q23-
     #    224*t1*q2-320*t1m1*q23+704*q22)
     # +m2*zeta2*lhpm5*(-144*u1p5*t1m1+704*u1p4*t1m1*q2-400*
     #    u1p4-192*u1p3*t1-1296*u1p3*t1m1*q22+1504*u1p3*q2+544*u1p2*
     #    t1*q2+1056*u1p2*t1m1*q23-1808*u1p2*q22-352*u1*t1*q22-320*
     #    u1*t1m1*q24+768*u1*q23-64*q24)
     # +m2*zeta2*(192*u1p2*t1m1*q2*spm3-192*u1p2*t1m1*spm2+
     #    384*u1*t1m1*q2*spm2-192*u1*t1m1*spm1+192*u1*q2*spm3-960*u1
     #    *spm2+192*u1m1*t1p2*q2*spm3-192*u1m1*t1p2*spm2+384*u1m1*
     #    t1*q2*spm2-192*u1m1*t1*spm1+192*u1m1*q2*spm1-32*u1m2*q2
     #    +192*t1*q2*spm3-960*t1*spm2+192*t1m1*q2*spm1-32*t1m2*q2
     #    +768*q2*spm2-768*spm1)
        vps(43) =
     # +m2*sqm*log8*logq2*(-64-32*u1*t1m1-64*u1*t1m2*q2-
     #    32*u1m1*t1+128*tb*q22-160*u1m1*q2-64*u1m2*t1*q2+
     #    64*u1m2*q22-160*t1m1*q2+64*t1m2*q22)
     # +m2*sqm*dlogq1*(-128-64*u1*t1m1-128*u1*t1m2*q2-64*
     #    u1m1*t1+256*tb*q22-320*u1m1*q2-128*u1m2*t1*q2+
     #    128*u1m2*q22-320*t1m1*q2+128*t1m2*q22)
     # +m2*sqm*dlogq2*(-128-64*u1*t1m1-128*u1*t1m2*q2-64*
     #    u1m1*t1+256*tb*q22-320*u1m1*q2-128*u1m2*t1*q2+
     #    128*u1m2*q22-320*t1m1*q2+128*t1m2*q22)
     # +m2*sqm*dlogq3*(-128-64*u1*t1m1-128*u1*t1m2*q2-64*
     #    u1m1*t1+256*tb*q22-320*u1m1*q2-128*u1m2*t1*q2+
     #    128*u1m2*q22-320*t1m1*q2+128*t1m2*q22)
        vps(44) =
     # +m2*sqm*dlogq4*(128+64*u1*t1m1+128*u1*t1m2*q2+64*
     #    u1m1*t1-256*tb*q22+320*u1m1*q2+128*u1m2*t1*q2-
     #    128*u1m2*q22+320*t1m1*q2-128*t1m2*q22)
     # +m2*sqm*logq3x2*(-64-32*u1*t1m1-64*u1*t1m2*q2-32*
     #    u1m1*t1+128*tb*q22-160*u1m1*q2-64*u1m2*t1*q2+64*
     #    u1m2*q22-160*t1m1*q2+64*t1m2*q22)
     # +m2*log9*lhm2*(-48*u1*t1m1*q2*x1+48*u1*t1m1*q2*x2-48*
     #    u1*x1+48*u1*x2+112*u1m1*t1p2*x1-112*u1m1*t1p2*x2-208*u1m1*
     #    t1*q2*x1+208*u1m1*t1*q2*x2-192*tb*q23*x1+192*u1m1*
     #    t1m1*q23*x2+480*u1m1*q22*x1-480*u1m1*q22*x2+128*t1*x1-
     #    128*t1*x2+352*t1m1*q22*x1-352*t1m1*q22*x2-96*t1m2*q23*x1
     #    +96*t1m2*q23*x2-160*q2*x1+160*q2*x2)
        vps(45) =
     # +m2*log9*lhm4*(48*u1*t1p2*x1-48*u1*t1p2*x2-224*u1*t1*q2*
     #    x1+224*u1*t1*q2*x2-208*u1*q22*x1+208*u1*q22*x2-144*u1m1*
     #    t1p4*x1+144*u1m1*t1p4*x2+608*u1m1*t1p3*q2*x1-608*u1m1*t1p3*
     #    q2*x2-1040*u1m1*t1p2*q22*x1+1040*u1m1*t1p2*q22*x2+736*u1m1
     #    *t1*q23*x1-736*u1m1*t1*q23*x2-288*u1m1*q24*x1+288*u1m1*
     #    q24*x2-192*t1p3*x1+192*t1p3*x2+576*t1p2*q2*x1-576*t1p2*q2*x2
     #    -928*t1*q22*x1+928*t1*q22*x2-64*t1m1*q24*x1+64*t1m1*q24
     #    *x2+608*q23*x1-608*q23*x2)
     # +m2*log9*lhpm2*(112*u1p2*t1m1*x1-112*u1p2*t1m1*x2-208*
     #    u1*t1m1*q2*x1+208*u1*t1m1*q2*x2+128*u1*x1-128*u1*x2-48*
     #    u1m1*t1*q2*x1+48*u1m1*t1*q2*x2-192*tb*q23*x1+192*
     #    tb*q23*x2+352*u1m1*q22*x1-352*u1m1*q22*x2-96*
     #    u1m2*q23*x1+96*u1m2*q23*x2-48*t1*x1+48*t1*x2+480*t1m1*
     #    q22*x1-480*t1m1*q22*x2-160*q2*x1+160*q2*x2)
        vps(46) =
     # +m2*log9*lhpm4*(-144*u1p4*t1m1*x1+144*u1p4*t1m1*x2+
     #    608*u1p3*t1m1*q2*x1-608*u1p3*t1m1*q2*x2-192*u1p3*x1+192*u1p3*
     #    x2+48*u1p2*t1*x1-48*u1p2*t1*x2-1040*u1p2*t1m1*q22*x1+1040*
     #    u1p2*t1m1*q22*x2+576*u1p2*q2*x1-576*u1p2*q2*x2-224*u1*t1*q2*
     #    x1+224*u1*t1*q2*x2+736*u1*t1m1*q23*x1-736*u1*t1m1*q23*x2-
     #    928*u1*q22*x1+928*u1*q22*x2-64*u1m1*q24*x1+64*u1m1*q24*x2
     #    -208*t1*q22*x1+208*t1*q22*x2-288*t1m1*q24*x1+288*t1m1*
     #    q24*x2+608*q23*x1-608*q23*x2)
        vps(47) =
     # +m2*log9*(-128*u1*t1m1*q2*spm2*x1+128*u1*t1m1*q2*spm2*
     #    x2+128*u1*t1m1*spm1*x1-128*u1*t1m1*spm1*x2-128*u1m1*t1*q2*
     #    spm2*x1+128*u1m1*t1*q2*spm2*x2+128*u1m1*t1*spm1*x1-128*
     #    u1m1*t1*spm1*x2-64*tb*q2*x1+64*tb*q2*x2-192
     #    *u1m1*q2*spm1*x1+192*u1m1*q2*spm1*x2+224*u1m1*x1-224*u1m1
     #    *x2-192*t1m1*q2*spm1*x1+192*t1m1*q2*spm1*x2+224*t1m1*x1-
     #    224*t1m1*x2-256*q2*spm2*x1+256*q2*spm2*x2+256*spm1*x1-256
     #    *spm1*x2)
     # +m2*log10*lhm2*(48*u1*t1m1*q2*x1-48*u1*t1m1*q2*x2+48*u1
     #    *x1-48*u1*x2-112*u1m1*t1p2*x1+112*u1m1*t1p2*x2+208*u1m1*t1
     #    *q2*x1-208*u1m1*t1*q2*x2+192*tb*q23*x1-192*u1m1*
     #    t1m1*q23*x2-480*u1m1*q22*x1+480*u1m1*q22*x2-128*t1*x1+
     #    128*t1*x2-352*t1m1*q22*x1+352*t1m1*q22*x2+96*t1m2*q23*x1
     #    -96*t1m2*q23*x2+160*q2*x1-160*q2*x2)
        vps(48) =
     # +m2*log10*lhm4*(-48*u1*t1p2*x1+48*u1*t1p2*x2+224*u1*t1*
     #    q2*x1-224*u1*t1*q2*x2+208*u1*q22*x1-208*u1*q22*x2+144*u1m1
     #    *t1p4*x1-144*u1m1*t1p4*x2-608*u1m1*t1p3*q2*x1+608*u1m1*t1p3*
     #    q2*x2+1040*u1m1*t1p2*q22*x1-1040*u1m1*t1p2*q22*x2-736*u1m1
     #    *t1*q23*x1+736*u1m1*t1*q23*x2+288*u1m1*q24*x1-288*u1m1*
     #    q24*x2+192*t1p3*x1-192*t1p3*x2-576*t1p2*q2*x1+576*t1p2*q2*x2
     #    +928*t1*q22*x1-928*t1*q22*x2+64*t1m1*q24*x1-64*t1m1*q24
     #    *x2-608*q23*x1+608*q23*x2)
     # +m2*log10*lhpm2*(-112*u1p2*t1m1*x1+112*u1p2*t1m1*x2+
     #    208*u1*t1m1*q2*x1-208*u1*t1m1*q2*x2-128*u1*x1+128*u1*x2+48*
     #    u1m1*t1*q2*x1-48*u1m1*t1*q2*x2+192*tb*q23*x1-192*
     #    tb*q23*x2-352*u1m1*q22*x1+352*u1m1*q22*x2+96*
     #    u1m2*q23*x1-96*u1m2*q23*x2+48*t1*x1-48*t1*x2-480*t1m1*
     #    q22*x1+480*t1m1*q22*x2+160*q2*x1-160*q2*x2)
        vps(49) =
     # +m2*log10*lhpm4*(144*u1p4*t1m1*x1-144*u1p4*t1m1*x2-608*
     #    u1p3*t1m1*q2*x1+608*u1p3*t1m1*q2*x2+192*u1p3*x1-192*u1p3*x2
     #    -48*u1p2*t1*x1+48*u1p2*t1*x2+1040*u1p2*t1m1*q22*x1-1040*
     #    u1p2*t1m1*q22*x2-576*u1p2*q2*x1+576*u1p2*q2*x2+224*u1*t1*q2*
     #    x1-224*u1*t1*q2*x2-736*u1*t1m1*q23*x1+736*u1*t1m1*q23*x2+
     #    928*u1*q22*x1-928*u1*q22*x2+64*u1m1*q24*x1-64*u1m1*q24*x2
     #    +208*t1*q22*x1-208*t1*q22*x2+288*t1m1*q24*x1-288*t1m1*
     #    q24*x2-608*q23*x1+608*q23*x2)
        vps(50) =
     # +m2*log10*(128*u1*t1m1*q2*spm2*x1-128*u1*t1m1*q2*spm2*x2
     #    -128*u1*t1m1*spm1*x1+128*u1*t1m1*spm1*x2+128*u1m1*t1*q2*
     #    spm2*x1-128*u1m1*t1*q2*spm2*x2-128*u1m1*t1*spm1*x1+128*
     #    u1m1*t1*spm1*x2+64*tb*q2*x1-64*tb*q2*x2+192
     #    *u1m1*q2*spm1*x1-192*u1m1*q2*spm1*x2-224*u1m1*x1+224*u1m1
     #    *x2+192*t1m1*q2*spm1*x1-192*t1m1*q2*spm1*x2-224*t1m1*x1+
     #    224*t1m1*x2+256*q2*spm2*x1-256*q2*spm2*x2-256*spm1*x1+256
     #    *spm1*x2)
     # +m2*lhm1*dlogq6t*(32*u1*t1m1-32*u1m1*t1+64*tb*
     #    q22-96*u1m1*q2-192*t1m1*q2+64*t1m2*q22)
     # +m2*lhm1*dlogq7t*(32*u1*t1m1-32*u1m1*t1+64*tb*
     #    q22-96*u1m1*q2-192*t1m1*q2+64*t1m2*q22)
        vps(51) =
     # +m2*lhm1*dlogq8t*(-32*u1*t1m1+32*u1m1*t1-64*tb
     #    *q22+96*u1m1*q2+192*t1m1*q2-64*t1m2*q22)
     # +m2*lhm1*dlogq9t*(-32*u1*t1m1+32*u1m1*t1-64*tb
     #    *q22+96*u1m1*q2+192*t1m1*q2-64*t1m2*q22)
     # +m2*lhm1*dlogq10t*(-32*u1*t1m1+32*u1m1*t1-64*u1m1*
     #    t1m1*q22+96*u1m1*q2+192*t1m1*q2-64*t1m2*q22)
     # +m2*lhm1*dlogq11t*(-32*u1*t1m1+32*u1m1*t1-64*u1m1*
     #    t1m1*q22+96*u1m1*q2+192*t1m1*q2-64*t1m2*q22)
     # +m2*lhm1*dlogq12t*(32*u1*t1m1-32*u1m1*t1+64*tb*
     #    q22-96*u1m1*q2-192*t1m1*q2+64*t1m2*q22)
     # +m2*lhm1*dlogq13t*(64*u1*t1m1-64*u1m1*t1+128*tb*
     #    q22-192*u1m1*q2-384*t1m1*q2+128*t1m2*q22)
        vps(52) =
     # +m2*lhm2*(-128*u1*t1m1*q2+32*u1+168*u1m1*t1p3*tm1+
     #    80*u1m1*t1p2*tm1*q2-112*u1m1*t1p2-88*u1m1*t1*tm1*q22-176*
     #    u1m1*t1*q2-96*tb*q23+192*u1m1*q22+240*t1p2*tm1+
     #    240*t1*tm1*q2-144*t1+192*t1m1*q22-32*t1m2*q23-432*q2)
     # +m2*lhm3*dlogq6t*(-224*u1*t1+224*u1*q2-144*u1m1*t1p3+
     #    704*u1m1*t1p2*q2-992*u1m1*t1*q22+320*u1m1*q23-368*t1p2+
     #    1120*t1*q2+128*t1m1*q23-704*q22)
     # +m2*lhm3*dlogq7t*(-224*u1*t1+224*u1*q2-144*u1m1*t1p3+
     #    704*u1m1*t1p2*q2-992*u1m1*t1*q22+320*u1m1*q23-368*t1p2+
     #    1120*t1*q2+128*t1m1*q23-704*q22)
     # +m2*lhm3*dlogq8t*(224*u1*t1-224*u1*q2+144*u1m1*t1p3-704*
     #    u1m1*t1p2*q2+992*u1m1*t1*q22-320*u1m1*q23+368*t1p2-1120*
     #    t1*q2-128*t1m1*q23+704*q22)
        vps(53) =
     # +m2*lhm3*dlogq9t*(224*u1*t1-224*u1*q2+144*u1m1*t1p3-704*
     #    u1m1*t1p2*q2+992*u1m1*t1*q22-320*u1m1*q23+368*t1p2-1120*
     #    t1*q2-128*t1m1*q23+704*q22)
     # +m2*lhm3*dlogq10t*(224*u1*t1-224*u1*q2+144*u1m1*t1p3-704
     #    *u1m1*t1p2*q2+992*u1m1*t1*q22-320*u1m1*q23+368*t1p2-1120
     #    *t1*q2-128*t1m1*q23+704*q22)
     # +m2*lhm3*dlogq11t*(224*u1*t1-224*u1*q2+144*u1m1*t1p3-704
     #    *u1m1*t1p2*q2+992*u1m1*t1*q22-320*u1m1*q23+368*t1p2-1120
     #    *t1*q2-128*t1m1*q23+704*q22)
     # +m2*lhm3*dlogq12t*(-224*u1*t1+224*u1*q2-144*u1m1*t1p3+
     #    704*u1m1*t1p2*q2-992*u1m1*t1*q22+320*u1m1*q23-368*t1p2+
     #    1120*t1*q2+128*t1m1*q23-704*q22)
        vps(54) =
     # +m2*lhm3*dlogq13t*(-448*u1*t1+448*u1*q2-288*u1m1*t1p3+
     #    1408*u1m1*t1p2*q2-1984*u1m1*t1*q22+640*u1m1*q23-736*t1p2
     #    +2240*t1*q2+256*t1m1*q23-1408*q22)
     # +m2*lhm5*dlogq6t*(192*u1*t1p3-544*u1*t1p2*q2+352*u1*t1*q22
     #    +144*u1m1*t1p5-704*u1m1*t1p4*q2+1296*u1m1*t1p3*q22-1056*
     #    u1m1*t1p2*q23+320*u1m1*t1*q24+400*t1p4-1504*t1p3*q2+1808*
     #    t1p2*q22-768*t1*q23+64*q24)
     # +m2*lhm5*dlogq7t*(192*u1*t1p3-544*u1*t1p2*q2+352*u1*t1*q22
     #    +144*u1m1*t1p5-704*u1m1*t1p4*q2+1296*u1m1*t1p3*q22-1056*
     #    u1m1*t1p2*q23+320*u1m1*t1*q24+400*t1p4-1504*t1p3*q2+1808*
     #    t1p2*q22-768*t1*q23+64*q24)
        vps(55) =
     # +m2*lhm5*dlogq8t*(-192*u1*t1p3+544*u1*t1p2*q2-352*u1*t1*
     #    q22-144*u1m1*t1p5+704*u1m1*t1p4*q2-1296*u1m1*t1p3*q22+
     #    1056*u1m1*t1p2*q23-320*u1m1*t1*q24-400*t1p4+1504*t1p3*q2-
     #    1808*t1p2*q22+768*t1*q23-64*q24)
     # +m2*lhm5*dlogq9t*(-192*u1*t1p3+544*u1*t1p2*q2-352*u1*t1*
     #    q22-144*u1m1*t1p5+704*u1m1*t1p4*q2-1296*u1m1*t1p3*q22+
     #    1056*u1m1*t1p2*q23-320*u1m1*t1*q24-400*t1p4+1504*t1p3*q2-
     #    1808*t1p2*q22+768*t1*q23-64*q24)
     # +m2*lhm5*dlogq10t*(-192*u1*t1p3+544*u1*t1p2*q2-352*u1*t1*
     #    q22-144*u1m1*t1p5+704*u1m1*t1p4*q2-1296*u1m1*t1p3*q22+
     #    1056*u1m1*t1p2*q23-320*u1m1*t1*q24-400*t1p4+1504*t1p3*q2-
     #    1808*t1p2*q22+768*t1*q23-64*q24)
        vps(56) =
     # +m2*lhm5*dlogq11t*(-192*u1*t1p3+544*u1*t1p2*q2-352*u1*t1*
     #    q22-144*u1m1*t1p5+704*u1m1*t1p4*q2-1296*u1m1*t1p3*q22+
     #    1056*u1m1*t1p2*q23-320*u1m1*t1*q24-400*t1p4+1504*t1p3*q2-
     #    1808*t1p2*q22+768*t1*q23-64*q24)
     # +m2*lhm5*dlogq12t*(192*u1*t1p3-544*u1*t1p2*q2+352*u1*t1*
     #    q22+144*u1m1*t1p5-704*u1m1*t1p4*q2+1296*u1m1*t1p3*q22-
     #    1056*u1m1*t1p2*q23+320*u1m1*t1*q24+400*t1p4-1504*t1p3*q2+
     #    1808*t1p2*q22-768*t1*q23+64*q24)
     # +m2*lhm5*dlogq13t*(384*u1*t1p3-1088*u1*t1p2*q2+704*u1*t1*
     #    q22+288*u1m1*t1p5-1408*u1m1*t1p4*q2+2592*u1m1*t1p3*q22-
     #    2112*u1m1*t1p2*q23+640*u1m1*t1*q24+800*t1p4-3008*t1p3*q2+
     #    3616*t1p2*q22-1536*t1*q23+128*q24)
        vps(57) =
     # +m2*lhpm1*dlogq6u*(-32*u1*t1m1+32*u1m1*t1+64*u1m1*
     #    t1m1*q22-192*u1m1*q2+64*u1m2*q22-96*t1m1*q2)
     # +m2*lhpm1*dlogq7u*(-32*u1*t1m1+32*u1m1*t1+64*u1m1*
     #    t1m1*q22-192*u1m1*q2+64*u1m2*q22-96*t1m1*q2)
     # +m2*lhpm1*dlogq8u*(32*u1*t1m1-32*u1m1*t1-64*tb*
     #    q22+192*u1m1*q2-64*u1m2*q22+96*t1m1*q2)
     # +m2*lhpm1*dlogq9u*(32*u1*t1m1-32*u1m1*t1-64*tb*
     #    q22+192*u1m1*q2-64*u1m2*q22+96*t1m1*q2)
     # +m2*lhpm1*dlogq10u*(32*u1*t1m1-32*u1m1*t1-64*tb*
     #    q22+192*u1m1*q2-64*u1m2*q22+96*t1m1*q2)
     # +m2*lhpm1*dlogq11u*(32*u1*t1m1-32*u1m1*t1-64*tb*
     #    q22+192*u1m1*q2-64*u1m2*q22+96*t1m1*q2)
        vps(58) =
     # +m2*lhpm1*dlogq12u*(-32*u1*t1m1+32*u1m1*t1+64*u1m1*
     #    t1m1*q22-192*u1m1*q2+64*u1m2*q22-96*t1m1*q2)
     # +m2*lhpm1*dlogq13u*(-64*u1*t1m1+64*u1m1*t1+128*u1m1*
     #    t1m1*q22-384*u1m1*q2+128*u1m2*q22-192*t1m1*q2)
     # +m2*lhpm2*(168*u1p3*t1m1*um1+80*u1p2*t1m1*um1*q2-112*
     #    u1p2*t1m1+240*u1p2*um1-88*u1*t1m1*um1*q22-176*u1*t1m1*q2
     #    +240*u1*um1*q2-144*u1-128*u1m1*t1*q2-96*tb*q23+
     #    192*u1m1*q22-32*u1m2*q23+32*t1+192*t1m1*q22-432*q2)
     # +m2*lhpm3*dlogq6u*(-144*u1p3*t1m1+704*u1p2*t1m1*q2-368*
     #    u1p2-224*u1*t1-992*u1*t1m1*q22+1120*u1*q2+128*u1m1*q23+
     #    224*t1*q2+320*t1m1*q23-704*q22)
        vps(59) =
     # +m2*lhpm3*dlogq7u*(-144*u1p3*t1m1+704*u1p2*t1m1*q2-368*
     #    u1p2-224*u1*t1-992*u1*t1m1*q22+1120*u1*q2+128*u1m1*q23+
     #    224*t1*q2+320*t1m1*q23-704*q22)
     # +m2*lhpm3*dlogq8u*(144*u1p3*t1m1-704*u1p2*t1m1*q2+368*
     #    u1p2+224*u1*t1+992*u1*t1m1*q22-1120*u1*q2-128*u1m1*q23-
     #    224*t1*q2-320*t1m1*q23+704*q22)
     # +m2*lhpm3*dlogq9u*(144*u1p3*t1m1-704*u1p2*t1m1*q2+368*
     #    u1p2+224*u1*t1+992*u1*t1m1*q22-1120*u1*q2-128*u1m1*q23-
     #    224*t1*q2-320*t1m1*q23+704*q22)
     # +m2*lhpm3*dlogq10u*(144*u1p3*t1m1-704*u1p2*t1m1*q2+368*
     #    u1p2+224*u1*t1+992*u1*t1m1*q22-1120*u1*q2-128*u1m1*q23-
     #    224*t1*q2-320*t1m1*q23+704*q22)
        vps(60) =
     # +m2*lhpm3*dlogq11u*(144*u1p3*t1m1-704*u1p2*t1m1*q2+368*
     #    u1p2+224*u1*t1+992*u1*t1m1*q22-1120*u1*q2-128*u1m1*q23-
     #    224*t1*q2-320*t1m1*q23+704*q22)
     # +m2*lhpm3*dlogq12u*(-144*u1p3*t1m1+704*u1p2*t1m1*q2-368
     #    *u1p2-224*u1*t1-992*u1*t1m1*q22+1120*u1*q2+128*u1m1*q23
     #    +224*t1*q2+320*t1m1*q23-704*q22)
     # +m2*lhpm3*dlogq13u*(-288*u1p3*t1m1+1408*u1p2*t1m1*q2-
     #    736*u1p2-448*u1*t1-1984*u1*t1m1*q22+2240*u1*q2+256*u1m1*
     #    q23+448*t1*q2+640*t1m1*q23-1408*q22)
     # +m2*lhpm5*dlogq6u*(144*u1p5*t1m1-704*u1p4*t1m1*q2+400*
     #    u1p4+192*u1p3*t1+1296*u1p3*t1m1*q22-1504*u1p3*q2-544*u1p2*
     #    t1*q2-1056*u1p2*t1m1*q23+1808*u1p2*q22+352*u1*t1*q22+320*
     #    u1*t1m1*q24-768*u1*q23+64*q24)
        vps(61) =
     # +m2*lhpm5*dlogq7u*(144*u1p5*t1m1-704*u1p4*t1m1*q2+400*
     #    u1p4+192*u1p3*t1+1296*u1p3*t1m1*q22-1504*u1p3*q2-544*u1p2*
     #    t1*q2-1056*u1p2*t1m1*q23+1808*u1p2*q22+352*u1*t1*q22+320*
     #    u1*t1m1*q24-768*u1*q23+64*q24)
     # +m2*lhpm5*dlogq8u*(-144*u1p5*t1m1+704*u1p4*t1m1*q2-400*
     #    u1p4-192*u1p3*t1-1296*u1p3*t1m1*q22+1504*u1p3*q2+544*u1p2*
     #    t1*q2+1056*u1p2*t1m1*q23-1808*u1p2*q22-352*u1*t1*q22-320*
     #    u1*t1m1*q24+768*u1*q23-64*q24)
     # +m2*lhpm5*dlogq9u*(-144*u1p5*t1m1+704*u1p4*t1m1*q2-400*
     #    u1p4-192*u1p3*t1-1296*u1p3*t1m1*q22+1504*u1p3*q2+544*u1p2*
     #    t1*q2+1056*u1p2*t1m1*q23-1808*u1p2*q22-352*u1*t1*q22-320*
     #    u1*t1m1*q24+768*u1*q23-64*q24)
        vps(62) =
     # +m2*lhpm5*dlogq10u*(-144*u1p5*t1m1+704*u1p4*t1m1*q2-400
     #    *u1p4-192*u1p3*t1-1296*u1p3*t1m1*q22+1504*u1p3*q2+544*u1p2*
     #    t1*q2+1056*u1p2*t1m1*q23-1808*u1p2*q22-352*u1*t1*q22-320*
     #    u1*t1m1*q24+768*u1*q23-64*q24)
     # +m2*lhpm5*dlogq11u*(-144*u1p5*t1m1+704*u1p4*t1m1*q2-400
     #    *u1p4-192*u1p3*t1-1296*u1p3*t1m1*q22+1504*u1p3*q2+544*u1p2*
     #    t1*q2+1056*u1p2*t1m1*q23-1808*u1p2*q22-352*u1*t1*q22-320*
     #    u1*t1m1*q24+768*u1*q23-64*q24)
     # +m2*lhpm5*dlogq12u*(144*u1p5*t1m1-704*u1p4*t1m1*q2+400*
     #    u1p4+192*u1p3*t1+1296*u1p3*t1m1*q22-1504*u1p3*q2-544*u1p2*
     #    t1*q2-1056*u1p2*t1m1*q23+1808*u1p2*q22+352*u1*t1*q22+320*
     #    u1*t1m1*q24-768*u1*q23+64*q24)
        vps(63) =
     # +m2*lhpm5*dlogq13u*(288*u1p5*t1m1-1408*u1p4*t1m1*q2+800*
     #    u1p4+384*u1p3*t1+2592*u1p3*t1m1*q22-3008*u1p3*q2-1088*u1p2*
     #    t1*q2-2112*u1p2*t1m1*q23+3616*u1p2*q22+704*u1*t1*q22+640*
     #    u1*t1m1*q24-1536*u1*q23+128*q24)
     # +m2*log7x2*(32*u1p2*t1m1*q2*spm3-32*u1p2*t1m1*spm2+64*
     #    u1*t1m1*q2*spm2-32*u1*t1m1*spm1+32*u1*q2*spm3-160*u1*spm2
     #    +32*u1m1*t1p2*q2*spm3-32*u1m1*t1p2*spm2+64*u1m1*t1*q2*
     #    spm2-32*u1m1*t1*spm1+32*u1m1*q2*spm1+32*t1*q2*spm3-160*
     #    t1*spm2+32*t1m1*q2*spm1+128*q2*spm2-128*spm1)
        vps(64) =
     # +m2*(-152*u1*t1m1*um1-32*u1*t1m1*tm1-128*u1*t1m1*
     #    spm1+112*u1*t1m2-32*u1m1*t1*um1-152*u1m1*t1*tm1-128*
     #    u1m1*t1*spm1-32*tb*um1*q22-32*tb*tm1*q22
     #    -128*tb*q2+160*u1m1*t1m2*q22+32*u1m1*um1*q2+128
     #    *u1m1*tm1*q2+160*u1m1+112*u1m2*t1+160*u1m2*t1m1*q22-
     #    208*u1m2*q2+128*t1m1*um1*q2+32*t1m1*tm1*q2+160*t1m1-208
     #    *t1m2*q2-304*um1-304*tm1-256*spm1)
     # +xsqm1*log1x2*(-32*Bqed)
     # +xsqm1*log1*log5*(64*Bqed)
     # +xsqm1*log1*log6*(64*Bqed)
     # +xsqm1*log1*(-64*Bqed*logdel-32*Bqed)
     # +xsqm1*dlog2*(64*Bqed)
        vps(65) =
     # +xsqm1*dlog1*(64*Bqed)
     # +xsqm1*zeta2*(-32*Bqed)
     # +log1x2*sqm*(-8*u1p2*t1m1+24*u1*t1m1*q2-40*u1-8*
     #    u1m1*t1p2+24*u1m1*t1*q2-16*u1m1*q22-40*t1-16*t1m1*q22
     #    +64*q2)
        vps(66) =
     # +log1x2*(-16*u1p4*t1m1*spm3+32*u1p3*t1m1*q2*spm3-48*
     #    u1p3*t1m1*spm2-48*u1p3*spm3-64*u1p2*t1*spm3-16*u1p2*t1m1*
     #    q22*spm3+96*u1p2*t1m1*q2*spm2-56*u1p2*t1m1*spm1+64*u1p2*
     #    q2*spm3-128*u1p2*spm2-64*u1*t1p2*spm3+64*u1*t1*q2*spm3-
     #    160*u1*t1*spm2-48*u1*t1m1*q22*spm2+112*u1*t1m1*q2*spm1-16
     #    *u1*q22*spm3+192*u1*q2*spm2-120*u1*spm1-16*u1m1*t1p4*spm3
     #    +32*u1m1*t1p3*q2*spm3-48*u1m1*t1p3*spm2-16*u1m1*t1p2*q22*
     #    spm3+96*u1m1*t1p2*q2*spm2-56*u1m1*t1p2*spm1-48*u1m1*t1*
     #    q22*spm2+112*u1m1*t1*q2*spm1-64*u1m1*q22*spm1-48*t1p3*
     #    spm3+64*t1p2*q2*spm3-128*t1p2*spm2-16*t1*q22*spm3+192*t1
     #    *q2*spm2-120*t1*spm1-64*t1m1*q22*spm1-64*q22*spm2+192*
     #    q2*spm1)
        vps(67) =
     # +log1*log5*sqm*(-64*u1p2*t1m1+192*u1*t1m1*q2-64*u1
     #    -64*u1m1*t1p2+192*u1m1*t1*q2+128*tb*q23-256*u1m1
     #    *q22-64*t1-256*t1m1*q22+256*q2)
     # +log1*log6*sqm*(96*u1p2*t1m1-288*u1*t1m1*q2+224*u1+
     #    96*u1m1*t1p2-288*u1m1*t1*q2-128*tb*q23+320*u1m1*
     #    q22+224*t1+320*t1m1*q22-512*q2)
     # +log1*log3*sqm*(-32*u1p2*t1m1+96*u1*t1m1*q2-96*u1-
     #    64*u1m1*t1p2+192*u1m1*t1*q2+64*tb*q23-192*u1m1*
     #    q22-128*t1-128*t1m1*q22+256*q2)
     # +log1*log4*sqm*(-64*u1p2*t1m1+192*u1*t1m1*q2-128*u1
     #    -32*u1m1*t1p2+96*u1m1*t1*q2+64*tb*q23-128*u1m1*
     #    q22-96*t1-192*t1m1*q22+256*q2)
        vps(68) =
     # +log1*sqm*logq1*(48*u1p2*t1m1-144*u1*t1m1*q2+112*u1+
     #    48*u1m1*t1p2-144*u1m1*t1*q2-64*tb*q23+160*u1m1*
     #    q22+112*t1+160*t1m1*q22-256*q2)
     # +log1*sqm*(-96*u1p4*t1m1*q2*spm3-32*u1p4*t1m1*spm2
     #    +192*u1p3*t1m1*q22*spm3-128*u1p3*t1m1*q2*spm2+16*u1p3*
     #    t1m1*s1m1-64*u1p3*t1m1*spm1-288*u1p3*q2*spm3-32*u1p3*spm2
     #    -384*u1p2*t1*q2*spm3+64*u1p2*t1*spm2-96*u1p2*t1m1*q23*spm3
     #    +384*u1p2*t1m1*q22*spm2-32*u1p2*t1m1*q2*s1m1+32*u1p2*t1m1
     #    *q2*spm1-48*u1p2*t1m1+384*u1p2*q22*spm3-576*u1p2*q2*spm2
     #    -64*u1p2*spm1-384*u1*t1p2*q2*spm3+64*u1*t1p2*spm2+384*u1*
     #    t1*q22*spm3-896*u1*t1*q2*spm2-32*u1*t1*s1m1-224*u1*t1m1*
     #    q23*spm2+16*u1*t1m1*q22*s1m1+160*u1*t1m1*q22*spm1+80*u1
     #    *t1m1*q2-96*u1*q23*spm3+960*u1*q22*spm2+32*u1*q2*s1m1)
        vps(69) = log1*sqm*(
     #    -224*u1*q2*spm1-80*u1-96*u1m1*t1p4*q2*spm3-32*u1m1*t1p4*
     #    spm2+192*u1m1*t1p3*q22*spm3-128*u1m1*t1p3*q2*spm2+16*
     #    u1m1*t1p3*s1m1-64*u1m1*t1p3*spm1-96*u1m1*t1p2*q23*spm3+
     #    384*u1m1*t1p2*q22*spm2-32*u1m1*t1p2*q2*s1m1+32*u1m1*t1p2*q2
     #    *spm1-48*u1m1*t1p2-224*u1m1*t1*q23*spm2+16*u1m1*t1*q22*
     #    s1m1+160*u1m1*t1*q22*spm1+80*u1m1*t1*q2-128*u1m1*q23*
     #    spm1-32*u1m1*q22-288*t1p3*q2*spm3-32*t1p3*spm2+384*t1p2*
     #    q22*spm3-576*t1p2*q2*spm2-64*t1p2*spm1-96*t1*q23*spm3+
     #    960*t1*q22*spm2+32*t1*q2*s1m1-224*t1*q2*spm1-80*t1-128*
     #    t1m1*q23*spm1-32*t1m1*q22-320*q23*spm2-32*q22*s1m1+
     #    448*q22*spm1+96*q2)
        vps(70) =
     # +log3*lhm2*(192*u1*t1p2*tm1-64*u1*t1*tm1*q2-24*u1m1*
     #    t1p5*tm2+56*u1m1*t1p4*tm1+16*u1m1*t1p4*tm2*q2-120*u1m1*
     #    t1p3*tm1*q2+40*u1m1*t1p3*tm2*q22+96*u1m1*t1p2*tm1*q22-32
     #    *u1m1*t1*tm1*q23-16*t1p4*tm2+216*t1p3*tm1-16*t1p3*tm2*q2
     #    -280*t1p2*tm1*q2+96*t1*tm1*q22)
cjs
     # +log3*lhm4*t1*(-144*u1*t1p3*tm1+288*u1*t1p2*tm1*q2-144*u1
     #    *t1*tm1*q22-8*u1m1*t1p5*tm1+40*u1m1*t1p4*tm1*q2-104*
     #    u1m1*t1p3*tm1*q22+120*u1m1*t1p2*tm1*q23-48*u1m1*t1*tm1*
     #    q24-136*t1p4*tm1+408*t1p3*tm1*q2-408*t1p2*tm1*q22+136*
     #    t1*tm1*q23)
        vps(71) =
     # +log3*(24*u1m1*t1p3*tm2-48*u1m1*t1p2*tm1+32*u1m1*t1*
     #    tm1*q2-32*u1m1*t1*tm2*q22+32*u1m1*tm1*q22+32*t1p2*tm2
     #    -64*t1*tm1+32*t1*tm2*q2-32*tm1*q2)
     # +log4*lhpm2*(-24*u1p5*t1m1*um2+56*u1p4*t1m1*um1+16*
     #    u1p4*t1m1*um2*q2-16*u1p4*um2-120*u1p3*t1m1*um1*q2+40*u1p3*
     #    t1m1*um2*q22+216*u1p3*um1-16*u1p3*um2*q2+192*u1p2*t1*um1
     #    +96*u1p2*t1m1*um1*q22-280*u1p2*um1*q2-64*u1*t1*um1*q2-32
     #    *u1*t1m1*um1*q23+96*u1*um1*q22)
cjs
     # +log4*lhpm4*u1*(-8*u1p5*t1m1*um1+40*u1p4*t1m1*um1*q2-
     #    136*u1p4*um1-144*u1p3*t1*um1-104*u1p3*t1m1*um1*q22+408*
     #    u1p3*um1*q2+288*u1p2*t1*um1*q2+120*u1p2*t1m1*um1*q23-408*
     #    u1p2*um1*q22-144*u1*t1*um1*q22-48*u1*t1m1*um1*q24+
     #    136*u1*um1*q23)
        vps(72) =
     # +log4*(24*u1p3*t1m1*um2-48*u1p2*t1m1*um1+32*u1p2*um2
     #    +32*u1*t1m1*um1*q2-32*u1*t1m1*um2*q22-64*u1*um1+32*u1*
     #    um2*q2+32*t1m1*um1*q22-32*um1*q2)
     # +dlog2*sqm*(-64*u1p2*t1m1+192*u1*t1m1*q2-64*u1-64*
     #    u1m1*t1p2+192*u1m1*t1*q2+128*tb*q23-256*u1m1*q22
     #    -64*t1-256*t1m1*q22+256*q2)
     # +dlog3*(-32-16*u1*t1m1-32*u1m1*t1-32*tb*q22
     #    +64*u1m1*q2+32*t1m1*q2)
     # +dlog4*(-32-32*u1*t1m1-16*u1m1*t1-32*tb*q22
     #    +32*u1m1*q2+64*t1m1*q2)
     # +dlog1*sqm*(96*u1p2*t1m1-288*u1*t1m1*q2+224*u1+96*
     #    u1m1*t1p2-288*u1m1*t1*q2-128*tb*q23+320*u1m1*q22
     #    +224*t1+320*t1m1*q22-512*q2)
        vps(73) =
     # +zeta2*sqm*(-272*u1p2*t1m1+816*u1*t1m1*q2-464*u1
     #    -272*u1m1*t1p2+816*u1m1*t1*q2+448*tb*q23-992*
     #    u1m1*q22-464*t1-992*t1m1*q22+1280*q2)
     # +zeta2*lhm1*(16*u1*t1m1*q2-80*u1-112*u1m1*t1p2+256*
     #    u1m1*t1*q2+32*tb*q23-160*u1m1*q22-160*t1-32*
     #    t1m1*q22+160*q2)
     # +zeta2*lhm3*(128*u1*t1p2-192*u1*t1*q2+64*u1*q22+112*
     #    u1m1*t1p4-416*u1m1*t1p3*q2+560*u1m1*t1p2*q22-320*u1m1*t1*
     #    q23+64*u1m1*q24+208*t1p3-496*t1p2*q2+384*t1*q22-96*q23
     #    )
        vps(74) =
     # +zeta2*lhm5*t1*(-64*u1*t1p3+192*u1*t1p2*q2-192*u1*t1*
     #    q22+64*u1*q23-32*u1m1*t1p5+160*u1m1*t1p4*q2-320*u1m1*
     #    t1p3*q22+320*u1m1*t1p2*q23-160*u1m1*t1*q24+32*u1m1*
     #    q25-80*t1p4+304*t1p3*q2-432*t1p2*q22+272*t1*q23-64*
     #    q24)
     # +zeta2*lhpm1*(-112*u1p2*t1m1+256*u1*t1m1*q2-160*u1+
     #    16*u1m1*t1*q2+32*tb*q23-32*u1m1*q22-80*t1-160*
     #    t1m1*q22+160*q2)
     # +zeta2*lhpm3*(112*u1p4*t1m1-416*u1p3*t1m1*q2+208*u1p3
     #    +128*u1p2*t1+560*u1p2*t1m1*q22-496*u1p2*q2-192*u1*t1*q2-
     #    320*u1*t1m1*q23+384*u1*q22+64*t1*q22+64*t1m1*q24-96*
     #    q23)
        vps(75) =
cjs
     # +zeta2*lhpm5*u1*(-32*u1p5*t1m1+160*u1p4*t1m1*q2-80*u1p4
     #    -64*u1p3*t1-320*u1p3*t1m1*q22+304*u1p3*q2+192*u1p2*t1*q2+
     #    320*u1p2*t1m1*q23-432*u1p2*q22-192*u1*t1*q22-160*u1*
     #    t1m1*q24+272*u1*q23+64*t1*q23+32*t1m1*q25-64
     #    *q24)
        vps(76) =
     # +zeta2*(64+96*u1p4*t1m1*spm3-192*u1p3*t1m1*q2*spm3+
     #    288*u1p3*t1m1*spm2+288*u1p3*spm3+384*u1p2*t1*spm3+96*u1p2*
     #    t1m1*q22*spm3-576*u1p2*t1m1*q2*spm2+336*u1p2*t1m1*spm1-
     #    384*u1p2*q2*spm3+768*u1p2*spm2+384*u1*t1p2*spm3-384*u1*t1*q2
     #    *spm3+960*u1*t1*spm2+288*u1*t1m1*q22*spm2-672*u1*t1m1*q2*
     #    spm1+48*u1*t1m1+96*u1*q22*spm3-1152*u1*q2*spm2+720*u1*
     #    spm1+96*u1m1*t1p4*spm3-192*u1m1*t1p3*q2*spm3+288*u1m1*
     #    t1p3*spm2+96*u1m1*t1p2*q22*spm3-576*u1m1*t1p2*q2*spm2+336
     #    *u1m1*t1p2*spm1+288*u1m1*t1*q22*spm2-672*u1m1*t1*q2*spm1
     #    +48*u1m1*t1+64*tb*q22+384*u1m1*q22*spm1-96*
     #    u1m1*q2+288*t1p3*spm3-384*t1p2*q2*spm3+768*t1p2*spm2+96*
     #    t1*q22*spm3-1152*t1*q2*spm2+720*t1*spm1+384*t1m1*q22*
     #    spm1-96*t1m1*q2+384*q22*spm2-1152*q2*spm1)
        vps(77) =
     # +sqm*log8*logq2*(48*u1p2*t1m1-144*u1*t1m1*q2+112*u1
     #    +48*u1m1*t1p2-144*u1m1*t1*q2-64*tb*q23+160*u1m1*
     #    q22+112*t1+160*t1m1*q22-256*q2)
     # +sqm*dlogq1*(96*u1p2*t1m1-288*u1*t1m1*q2+224*u1+96*
     #    u1m1*t1p2-288*u1m1*t1*q2-128*tb*q23+320*u1m1*q22
     #    +224*t1+320*t1m1*q22-512*q2)
     # +sqm*dlogq2*(96*u1p2*t1m1-288*u1*t1m1*q2+224*u1+96*
     #    u1m1*t1p2-288*u1m1*t1*q2-128*tb*q23+320*u1m1*q22
     #    +224*t1+320*t1m1*q22-512*q2)
     # +sqm*dlogq3*(96*u1p2*t1m1-288*u1*t1m1*q2+224*u1+96*
     #    u1m1*t1p2-288*u1m1*t1*q2-128*tb*q23+320*u1m1*q22
     #    +224*t1+320*t1m1*q22-512*q2)
        vps(78) =
     # +sqm*dlogq4*(-96*u1p2*t1m1+288*u1*t1m1*q2-224*u1-
     #    96*u1m1*t1p2+288*u1m1*t1*q2+128*tb*q23-320*u1m1*
     #    q22-224*t1-320*t1m1*q22+512*q2)
     # +sqm*logq3x2*(48*u1p2*t1m1-144*u1*t1m1*q2+112*u1+48
     #    *u1m1*t1p2-144*u1m1*t1*q2-64*tb*q23+160*u1m1*q22
     #    +112*t1+160*t1m1*q22-256*q2)
     # +log9*lhm2*(-96*u1*t1*x1+96*u1*t1*x2+32*u1*t1m1*q22*
     #    x1-32*u1*t1m1*q22*x2-64*u1*q2*x1+64*u1*q2*x2+64*u1m1*t1p3*
     #    x1-64*u1m1*t1p3*x2-248*u1m1*t1p2*q2*x1+248*u1m1*t1p2*q2*x2
     #    +328*u1m1*t1*q22*x1-328*u1m1*t1*q22*x2+48*tb*q24*
     #    x1-48*tb*q24*x2-224*u1m1*q23*x1+224*u1m1*q23*x2
     #    -32*t1p2*x1+32*t1p2*x2-88*t1*q2*x1+88*t1*q2*x2-64*t1m1*
     #    q23*x1+64*t1m1*q23*x2+184*q22*x1-184*q22*x2)
        vps(79) =
     # +log9*lhm4*(80*u1*t1p3*x1-80*u1*t1p3*x2-96*u1*t1p2*q2*x1
     #    +96*u1*t1p2*q2*x2-48*u1*t1*q22*x1+48*u1*t1*q22*x2+64*u1*
     #    q23*x1-64*u1*q23*x2-24*u1m1*t1p5*x1+24*u1m1*t1p5*x2+120*
     #    u1m1*t1p4*q2*x1-120*u1m1*t1p4*q2*x2-216*u1m1*t1p3*q22*x1+
     #    216*u1m1*t1p3*q22*x2+200*u1m1*t1p2*q23*x1-200*u1m1*t1p2*q23
     #    *x2-112*u1m1*t1*q24*x1+112*u1m1*t1*q24*x2+32*u1m1*q25*x1
     #    -32*u1m1*q25*x2+56*t1p4*x1-56*t1p4*x2-104*t1p3*q2*x1+104*
     #    t1p3*q2*x2-24*t1p2*q22*x1+24*t1p2*q22*x2+136*t1*q23*x1-136
     #    *t1*q23*x2-64*q24*x1+64*q24*x2)
        vps(80) =
     # +log9*lhpm2*(64*u1p3*t1m1*x1-64*u1p3*t1m1*x2-248*u1p2*
     #    t1m1*q2*x1+248*u1p2*t1m1*q2*x2-32*u1p2*x1+32*u1p2*x2-96*u1*
     #    t1*x1+96*u1*t1*x2+328*u1*t1m1*q22*x1-328*u1*t1m1*q22*x2-
     #    88*u1*q2*x1+88*u1*q2*x2+32*u1m1*t1*q22*x1-32*u1m1*t1*q22*x2
     #    +48*tb*q24*x1-48*tb*q24*x2-64*u1m1*q23*x1
     #    +64*u1m1*q23*x2-64*t1*q2*x1+64*t1*q2*x2-224*t1m1*q23*x1
     #    +224*t1m1*q23*x2+184*q22*x1-184*q22*x2)
        vps(81) =
     # +log9*lhpm4*(-24*u1p5*t1m1*x1+24*u1p5*t1m1*x2+120*
     #    u1p4*t1m1*q2*x1-120*u1p4*t1m1*q2*x2+56*u1p4*x1-56*u1p4*x2+
     #    80*u1p3*t1*x1-80*u1p3*t1*x2-216*u1p3*t1m1*q22*x1+216*u1p3*
     #    t1m1*q22*x2-104*u1p3*q2*x1+104*u1p3*q2*x2-96*u1p2*t1*q2*x1+
     #    96*u1p2*t1*q2*x2+200*u1p2*t1m1*q23*x1-200*u1p2*t1m1*q23*x2-
     #    24*u1p2*q22*x1+24*u1p2*q22*x2-48*u1*t1*q22*x1+48*u1*t1*q22*
     #    x2-112*u1*t1m1*q24*x1+112*u1*t1m1*q24*x2+136*u1*q23*x1-
     #    136*u1*q23*x2+64*t1*q23*x1-64*t1*q23*x2+32*t1m1*q25*x1-
     #    32*t1m1*q25*x2-64*q24*x1+64*q24*x2)
        vps(82) =
     # +log9*(96*u1p3*t1m1*q2*spm3*x1-96*u1p3*t1m1*q2*spm3*x2
     #    -96*u1p2*t1m1*q22*spm3*x1+96*u1p2*t1m1*q22*spm3*x2+192*
     #    u1p2*t1m1*q2*spm2*x1-192*u1p2*t1m1*q2*spm2*x2-16*u1p2*t1m1*
     #    spm1*x1+16*u1p2*t1m1*spm1*x2+192*u1p2*q2*spm3*x1-192*u1p2*
     #    q2*spm3*x2-64*u1p2*spm2*x1+64*u1p2*spm2*x2+192*u1*t1*q2*
     #    spm3*x1-192*u1*t1*q2*spm3*x2-128*u1*t1*spm2*x1+128*u1*t1*
     #    spm2*x2-224*u1*t1m1*q22*spm2*x1+224*u1*t1m1*q22*spm2*x2+
     #    128*u1*t1m1*q2*spm1*x1-128*u1*t1m1*q2*spm1*x2-40*u1*t1m1*x1
     #    +40*u1*t1m1*x2-96*u1*q22*spm3*x1+96*u1*q22*spm3*x2+448*
     #    u1*q2*spm2*x1-448*u1*q2*spm2*x2-144*u1*spm1*x1+144*u1*spm1*
     #    x2+96*u1m1*t1p3*q2*spm3*x1-96*u1m1*t1p3*q2*spm3*x2-96*u1m1
     #    *t1p2*q22*spm3*x1+96*u1m1*t1p2*q22*spm3*x2+192*u1m1*t1p2*q2
     #    *spm2*x1-192*u1m1*t1p2*q2*spm2*x2-16*u1m1*t1p2*spm1*x1)
        vps(83) = log9*(+16*
     #    u1m1*t1p2*spm1*x2-224*u1m1*t1*q22*spm2*x1+224*u1m1*t1*q22*
     #    spm2*x2+128*u1m1*t1*q2*spm1*x1-128*u1m1*t1*q2*spm1*x2-40*
     #    u1m1*t1*x1+40*u1m1*t1*x2-128*u1m1*q22*spm1*x1+128*u1m1*
     #    q22*spm1*x2+96*u1m1*q2*x1-96*u1m1*q2*x2+192*t1p2*q2*spm3*
     #    x1-192*t1p2*q2*spm3*x2-64*t1p2*spm2*x1+64*t1p2*spm2*x2-96*
     #    t1*q22*spm3*x1+96*t1*q22*spm3*x2+448*t1*q2*spm2*x1-448*t1*
     #    q2*spm2*x2-144*t1*spm1*x1+144*t1*spm1*x2-128*t1m1*q22*
     #    spm1*x1+128*t1m1*q22*spm1*x2+96*t1m1*q2*x1-96*t1m1*q2*x2
     #    -320*q22*spm2*x1+320*q22*spm2*x2+320*q2*spm1*x1-320*q2*
     #    spm1*x2-112*x1+112*x2)
        vps(84) =
     # +log10*lhm2*(96*u1*t1*x1-96*u1*t1*x2-32*u1*t1m1*q22*x1
     #    +32*u1*t1m1*q22*x2+64*u1*q2*x1-64*u1*q2*x2-64*u1m1*t1p3*x1
     #    +64*u1m1*t1p3*x2+248*u1m1*t1p2*q2*x1-248*u1m1*t1p2*q2*x2-
     #    328*u1m1*t1*q22*x1+328*u1m1*t1*q22*x2-48*tb*q24*x1
     #    +48*tb*q24*x2+224*u1m1*q23*x1-224*u1m1*q23*x2+
     #    32*t1p2*x1-32*t1p2*x2+88*t1*q2*x1-88*t1*q2*x2+64*t1m1*q23*
     #    x1-64*t1m1*q23*x2-184*q22*x1+184*q22*x2)
        vps(85) =
     # +log10*lhm4*(-80*u1*t1p3*x1+80*u1*t1p3*x2+96*u1*t1p2*q2
     #    *x1-96*u1*t1p2*q2*x2+48*u1*t1*q22*x1-48*u1*t1*q22*x2-64*u1*
     #    q23*x1+64*u1*q23*x2+24*u1m1*t1p5*x1-24*u1m1*t1p5*x2-120*
     #    u1m1*t1p4*q2*x1+120*u1m1*t1p4*q2*x2+216*u1m1*t1p3*q22*x1-
     #    216*u1m1*t1p3*q22*x2-200*u1m1*t1p2*q23*x1+200*u1m1*t1p2*q23
     #    *x2+112*u1m1*t1*q24*x1-112*u1m1*t1*q24*x2-32*u1m1*q25*x1
     #    +32*u1m1*q25*x2-56*t1p4*x1+56*t1p4*x2+104*t1p3*q2*x1-104*
     #    t1p3*q2*x2+24*t1p2*q22*x1-24*t1p2*q22*x2-136*t1*q23*x1+136
     #    *t1*q23*x2+64*q24*x1-64*q24*x2)
        vps(86) =
     # +log10*lhpm2*(-64*u1p3*t1m1*x1+64*u1p3*t1m1*x2+248*
     #    u1p2*t1m1*q2*x1-248*u1p2*t1m1*q2*x2+32*u1p2*x1-32*u1p2*x2+
     #    96*u1*t1*x1-96*u1*t1*x2-328*u1*t1m1*q22*x1+328*u1*t1m1*q22*
     #    x2+88*u1*q2*x1-88*u1*q2*x2-32*u1m1*t1*q22*x1+32*u1m1*t1*
     #    q22*x2-48*tb*q24*x1+48*tb*q24*x2+64*u1m1*
     #    q23*x1-64*u1m1*q23*x2+64*t1*q2*x1-64*t1*q2*x2+224*t1m1*
     #    q23*x1-224*t1m1*q23*x2-184*q22*x1+184*q22*x2)
        vps(87) =
     # +log10*lhpm4*(24*u1p5*t1m1*x1-24*u1p5*t1m1*x2-120*u1p4*
     #    t1m1*q2*x1+120*u1p4*t1m1*q2*x2-56*u1p4*x1+56*u1p4*x2-80*
     #    u1p3*t1*x1+80*u1p3*t1*x2+216*u1p3*t1m1*q22*x1-216*u1p3*t1m1*
     #    q22*x2+104*u1p3*q2*x1-104*u1p3*q2*x2+96*u1p2*t1*q2*x1-96*
     #    u1p2*t1*q2*x2-200*u1p2*t1m1*q23*x1+200*u1p2*t1m1*q23*x2+24*
     #    u1p2*q22*x1-24*u1p2*q22*x2+48*u1*t1*q22*x1-48*u1*t1*q22*x2
     #    +112*u1*t1m1*q24*x1-112*u1*t1m1*q24*x2-136*u1*q23*x1+136
     #    *u1*q23*x2-64*t1*q23*x1+64*t1*q23*x2-32*t1m1*q25*x1+32*
     #    t1m1*q25*x2+64*q24*x1-64*q24*x2)
        vps(88) =
     # +log10*(-96*u1p3*t1m1*q2*spm3*x1+96*u1p3*t1m1*q2*spm3*
     #    x2+96*u1p2*t1m1*q22*spm3*x1-96*u1p2*t1m1*q22*spm3*x2-192*
     #    u1p2*t1m1*q2*spm2*x1+192*u1p2*t1m1*q2*spm2*x2+16*u1p2*t1m1*
     #    spm1*x1-16*u1p2*t1m1*spm1*x2-192*u1p2*q2*spm3*x1+192*u1p2*
     #    q2*spm3*x2+64*u1p2*spm2*x1-64*u1p2*spm2*x2-192*u1*t1*q2*
     #    spm3*x1+192*u1*t1*q2*spm3*x2+128*u1*t1*spm2*x1-128*u1*t1*
     #    spm2*x2+224*u1*t1m1*q22*spm2*x1-224*u1*t1m1*q22*spm2*x2-
     #    128*u1*t1m1*q2*spm1*x1+128*u1*t1m1*q2*spm1*x2+40*u1*t1m1*x1
     #    -40*u1*t1m1*x2+96*u1*q22*spm3*x1-96*u1*q22*spm3*x2-448*
     #    u1*q2*spm2*x1+448*u1*q2*spm2*x2+144*u1*spm1*x1-144*u1*spm1*
     #    x2-96*u1m1*t1p3*q2*spm3*x1+96*u1m1*t1p3*q2*spm3*x2+96*u1m1
     #    *t1p2*q22*spm3*x1-96*u1m1*t1p2*q22*spm3*x2-192*u1m1*t1p2*q2
     #    *spm2*x1+192*u1m1*t1p2*q2*spm2*x2+16*u1m1*t1p2*spm1*x1)
        vps(89) = log10*(-16*
     #    u1m1*t1p2*spm1*x2+224*u1m1*t1*q22*spm2*x1-224*u1m1*t1*q22*
     #    spm2*x2-128*u1m1*t1*q2*spm1*x1+128*u1m1*t1*q2*spm1*x2+40*
     #    u1m1*t1*x1-40*u1m1*t1*x2+128*u1m1*q22*spm1*x1-128*u1m1*
     #    q22*spm1*x2-96*u1m1*q2*x1+96*u1m1*q2*x2-192*t1p2*q2*spm3*
     #    x1+192*t1p2*q2*spm3*x2+64*t1p2*spm2*x1-64*t1p2*spm2*x2+96*
     #    t1*q22*spm3*x1-96*t1*q22*spm3*x2-448*t1*q2*spm2*x1+448*t1*
     #    q2*spm2*x2+144*t1*spm1*x1-144*t1*spm1*x2+128*t1m1*q22*
     #    spm1*x1-128*t1m1*q22*spm1*x2-96*t1m1*q2*x1+96*t1m1*q2*x2
     #    +320*q22*spm2*x1-320*q22*spm2*x2-320*q2*spm1*x1+320*q2*
     #    spm1*x2+112*x1-112*x2)
     # +lhm1*dlogq6t*(-16*u1*t1m1*q2+80*u1+112*u1m1*t1p2-256
     #    *u1m1*t1*q2-32*tb*q23+160*u1m1*q22+160*t1+32*
     #    t1m1*q22-160*q2)
        vps(90) =
     # +lhm1*dlogq7t*(-16*u1*t1m1*q2+80*u1+112*u1m1*t1p2-256
     #    *u1m1*t1*q2-32*tb*q23+160*u1m1*q22+160*t1+32*
     #    t1m1*q22-160*q2)
     # +lhm1*dlogq8t*(16*u1*t1m1*q2-80*u1-112*u1m1*t1p2+256*
     #    u1m1*t1*q2+32*tb*q23-160*u1m1*q22-160*t1-32*
     #    t1m1*q22+160*q2)
     # +lhm1*dlogq9t*(16*u1*t1m1*q2-80*u1-112*u1m1*t1p2+256*
     #    u1m1*t1*q2+32*tb*q23-160*u1m1*q22-160*t1-32*
     #    t1m1*q22+160*q2)
     # +lhm1*dlogq10t*(16*u1*t1m1*q2-80*u1-112*u1m1*t1p2+256*
     #    u1m1*t1*q2+32*tb*q23-160*u1m1*q22-160*t1-32*
     #    t1m1*q22+160*q2)
        vps(91) =
     # +lhm1*dlogq11t*(16*u1*t1m1*q2-80*u1-112*u1m1*t1p2+256*
     #    u1m1*t1*q2+32*tb*q23-160*u1m1*q22-160*t1-32*
     #    t1m1*q22+160*q2)
     # +lhm1*dlogq12t*(-16*u1*t1m1*q2+80*u1+112*u1m1*t1p2-
     #    256*u1m1*t1*q2-32*tb*q23+160*u1m1*q22+160*t1+32*
     #    t1m1*q22-160*q2)
     # +lhm1*dlogq13t*(-32*u1*t1m1*q2+160*u1+224*u1m1*t1p2-
     #    512*u1m1*t1*q2-64*tb*q23+320*u1m1*q22+320*t1+64*
     #    t1m1*q22-320*q2)
     # +lhm2*(48*u1*t1+32*u1*t1m1*q22-80*u1*q2+32*u1m1*t1p4
     #    *tm1-24*u1m1*t1p3-32*u1m1*t1p2*tm1*q22-32*u1m1*t1p2*q2+
     #    88*u1m1*t1*q22+16*tb*q24-48*u1m1*q23+32*t1p3*tm1
     #    +32*t1p2*tm1*q2+16*t1p2-160*t1*q2-32*t1m1*q23+112*q22)
        vps(92) =
     # +lhm3*dlogq6t*(-128*u1*t1p2+192*u1*t1*q2-64*u1*q22-112
     #    *u1m1*t1p4+416*u1m1*t1p3*q2-560*u1m1*t1p2*q22+320*u1m1*t1*
     #    q23-64*u1m1*q24-208*t1p3+496*t1p2*q2-384*t1*q22+96*q23
     #    )
     # +lhm3*dlogq7t*(-128*u1*t1p2+192*u1*t1*q2-64*u1*q22-112
     #    *u1m1*t1p4+416*u1m1*t1p3*q2-560*u1m1*t1p2*q22+320*u1m1*t1*
     #    q23-64*u1m1*q24-208*t1p3+496*t1p2*q2-384*t1*q22+96*q23
     #    )
     # +lhm3*dlogq8t*(128*u1*t1p2-192*u1*t1*q2+64*u1*q22+112*
     #    u1m1*t1p4-416*u1m1*t1p3*q2+560*u1m1*t1p2*q22-320*u1m1*t1*
     #    q23+64*u1m1*q24+208*t1p3-496*t1p2*q2+384*t1*q22-96*q23
     #    )
        vps(93) =
     # +lhm3*dlogq9t*(128*u1*t1p2-192*u1*t1*q2+64*u1*q22+112*
     #    u1m1*t1p4-416*u1m1*t1p3*q2+560*u1m1*t1p2*q22-320*u1m1*t1*
     #    q23+64*u1m1*q24+208*t1p3-496*t1p2*q2+384*t1*q22-96*q23
     #    )
     # +lhm3*dlogq10t*(128*u1*t1p2-192*u1*t1*q2+64*u1*q22+112*
     #    u1m1*t1p4-416*u1m1*t1p3*q2+560*u1m1*t1p2*q22-320*u1m1*t1*
     #    q23+64*u1m1*q24+208*t1p3-496*t1p2*q2+384*t1*q22-96*q23
     #    )
     # +lhm3*dlogq11t*(128*u1*t1p2-192*u1*t1*q2+64*u1*q22+112*
     #    u1m1*t1p4-416*u1m1*t1p3*q2+560*u1m1*t1p2*q22-320*u1m1*t1*
     #    q23+64*u1m1*q24+208*t1p3-496*t1p2*q2+384*t1*q22-96*q23
     #    )
        vps(94) =
     # +lhm3*dlogq12t*(-128*u1*t1p2+192*u1*t1*q2-64*u1*q22-
     #    112*u1m1*t1p4+416*u1m1*t1p3*q2-560*u1m1*t1p2*q22+320*u1m1*
     #    t1*q23-64*u1m1*q24-208*t1p3+496*t1p2*q2-384*t1*q22+96*
     #    q23)
     # +lhm3*dlogq13t*(-256*u1*t1p2+384*u1*t1*q2-128*u1*q22-
     #    224*u1m1*t1p4+832*u1m1*t1p3*q2-1120*u1m1*t1p2*q22+640*u1m1
     #    *t1*q23-128*u1m1*q24-416*t1p3+992*t1p2*q2-768*t1*q22+
     #    192*q23)
cjs
     # +lhm5*dlogq6t*t1*(64*u1*t1p3-192*u1*t1p2*q2+192*u1*t1*q22
     #    -64*u1*q23+32*u1m1*t1p5-160*u1m1*t1p4*q2+320*u1m1*t1p3
     #    *q22-320*u1m1*t1p2*q23+160*u1m1*t1*q24-32*u1m1*q25
     #    +80*t1p4-304*t1p3*q2+432*t1p2*q22-272*t1*q23+64*q24
     #    )
        vps(95) =
cjs
     # +lhm5*dlogq7t*t1*(64*u1*t1p3-192*u1*t1p2*q2+192*u1*t1*q22
     #    -64*u1*q23+32*u1m1*t1p5-160*u1m1*t1p4*q2+320*u1m1*t1p3
     #    *q22-320*u1m1*t1p2*q23+160*u1m1*t1*q24-32*u1m1*q25
     #    +80*t1p4-304*t1p3*q2+432*t1p2*q22-272*t1*q23+64*q24
     #    )
cjs
     # +lhm5*dlogq8t*t1*(-64*u1*t1p3+192*u1*t1p2*q2-192*u1*t1*
     #    q22+64*u1*q23-32*u1m1*t1p5+160*u1m1*t1p4*q2-320*u1m1*
     #    t1p3*q22+320*u1m1*t1p2*q23-160*u1m1*t1*q24+32*u1m1*
     #    q25-80*t1p4+304*t1p3*q2-432*t1p2*q22+272*t1*q23-64*
     #    q24)
        vps(96) =
cjs
     # +lhm5*dlogq9t*t1*(-64*u1*t1p3+192*u1*t1p2*q2-192*u1*t1*
     #    q22+64*u1*q23-32*u1m1*t1p5+160*u1m1*t1p4*q2-320*u1m1*
     #    t1p3*q22+320*u1m1*t1p2*q23-160*u1m1*t1*q24+32*u1m1*
     #    q25-80*t1p4+304*t1p3*q2-432*t1p2*q22+272*t1*q23-64*
     #    q24)
cjs
     # +lhm5*dlogq10t*t1*(-64*u1*t1p3+192*u1*t1p2*q2-192*u1*t1*
     #    q22+64*u1*q23-32*u1m1*t1p5+160*u1m1*t1p4*q2-320*u1m1*
     #    t1p3*q22+320*u1m1*t1p2*q23-160*u1m1*t1*q24+32*u1m1*
     #    q25-80*t1p4+304*t1p3*q2-432*t1p2*q22+272*t1*q23-64*
     #    q24)
        vps(97) =
cjs
     # +lhm5*dlogq11t*t1*(-64*u1*t1p3+192*u1*t1p2*q2-192*u1*t1*
     #    q22+64*u1*q23-32*u1m1*t1p5+160*u1m1*t1p4*q2-320*u1m1*
     #    t1p3*q22+320*u1m1*t1p2*q23-160*u1m1*t1*q24+32*u1m1*
     #    q25-80*t1p4+304*t1p3*q2-432*t1p2*q22+272*t1*q23-64*
     #    q24)
cjs
     # +lhm5*dlogq12t*t1*(64*u1*t1p3-192*u1*t1p2*q2+192*u1*t1*q22
     #    -64*u1*q23+32*u1m1*t1p5-160*u1m1*t1p4*q2+320*u1m1*t1p3
     #    *q22-320*u1m1*t1p2*q23+160*u1m1*t1*q24-32*u1m1*q25
     #    +80*t1p4-304*t1p3*q2+432*t1p2*q22-272*t1*q23+64*q24
     #    )
        vps(98) =
cjs
     # +lhm5*dlogq13t*t1*(128*u1*t1p3-384*u1*t1p2*q2+384*u1*t1*q22
     #    -128*u1*q23+64*u1m1*t1p5-320*u1m1*t1p4*q2+640*u1m1*
     #    t1p3*q22-640*u1m1*t1p2*q23+320*u1m1*t1*q24-64*u1m1*
     #    q25+160*t1p4-608*t1p3*q2+864*t1p2*q22-544*t1*q23+128*
     #    q24)
     # +lhpm1*dlogq6u*(112*u1p2*t1m1-256*u1*t1m1*q2+160*u1-16*
     #    u1m1*t1*q2-32*tb*q23+32*u1m1*q22+80*t1+160*t1m1
     #    *q22-160*q2)
     # +lhpm1*dlogq7u*(112*u1p2*t1m1-256*u1*t1m1*q2+160*u1-16*
     #    u1m1*t1*q2-32*tb*q23+32*u1m1*q22+80*t1+160*t1m1
     #    *q22-160*q2)
        vps(99) =
     # +lhpm1*dlogq8u*(-112*u1p2*t1m1+256*u1*t1m1*q2-160*u1+
     #    16*u1m1*t1*q2+32*tb*q23-32*u1m1*q22-80*t1-160*
     #    t1m1*q22+160*q2)
     # +lhpm1*dlogq9u*(-112*u1p2*t1m1+256*u1*t1m1*q2-160*u1+
     #    16*u1m1*t1*q2+32*tb*q23-32*u1m1*q22-80*t1-160*
     #    t1m1*q22+160*q2)
     # +lhpm1*dlogq10u*(-112*u1p2*t1m1+256*u1*t1m1*q2-160*u1
     #    +16*u1m1*t1*q2+32*tb*q23-32*u1m1*q22-80*t1-160
     #    *t1m1*q22+160*q2)
     # +lhpm1*dlogq11u*(-112*u1p2*t1m1+256*u1*t1m1*q2-160*u1
     #    +16*u1m1*t1*q2+32*tb*q23-32*u1m1*q22-80*t1-160
     #    *t1m1*q22+160*q2)
        vps(100) =
     # +lhpm1*dlogq12u*(112*u1p2*t1m1-256*u1*t1m1*q2+160*u1-16
     #    *u1m1*t1*q2-32*tb*q23+32*u1m1*q22+80*t1+160*
     #    t1m1*q22-160*q2)
     # +lhpm1*dlogq13u*(224*u1p2*t1m1-512*u1*t1m1*q2+320*u1-32
     #    *u1m1*t1*q2-64*tb*q23+64*u1m1*q22+160*t1+320*
     #    t1m1*q22-320*q2)
     # +lhpm2*(32*u1p4*t1m1*um1-24*u1p3*t1m1+32*u1p3*um1-
     #    32*u1p2*t1m1*um1*q22-32*u1p2*t1m1*q2+32*u1p2*um1*q2+16*
     #    u1p2+48*u1*t1+88*u1*t1m1*q22-160*u1*q2+32*u1m1*t1*q22+
     #    16*tb*q24-32*u1m1*q23-80*t1*q2-48*t1m1*q23+112*
     #    q22)
        vps(101) =
     # +lhpm3*dlogq6u*(-112*u1p4*t1m1+416*u1p3*t1m1*q2-208*
     #    u1p3-128*u1p2*t1-560*u1p2*t1m1*q22+496*u1p2*q2+192*u1*t1*q2
     #    +320*u1*t1m1*q23-384*u1*q22-64*t1*q22-64*t1m1*q24+96*
     #    q23)
     # +lhpm3*dlogq7u*(-112*u1p4*t1m1+416*u1p3*t1m1*q2-208*
     #    u1p3-128*u1p2*t1-560*u1p2*t1m1*q22+496*u1p2*q2+192*u1*t1*q2
     #    +320*u1*t1m1*q23-384*u1*q22-64*t1*q22-64*t1m1*q24+96*
     #    q23)
     # +lhpm3*dlogq8u*(112*u1p4*t1m1-416*u1p3*t1m1*q2+208*u1p3
     #    +128*u1p2*t1+560*u1p2*t1m1*q22-496*u1p2*q2-192*u1*t1*q2-
     #    320*u1*t1m1*q23+384*u1*q22+64*t1*q22+64*t1m1*q24-96*
     #    q23)
        vps(102) =
     # +lhpm3*dlogq9u*(112*u1p4*t1m1-416*u1p3*t1m1*q2+208*u1p3
     #    +128*u1p2*t1+560*u1p2*t1m1*q22-496*u1p2*q2-192*u1*t1*q2-
     #    320*u1*t1m1*q23+384*u1*q22+64*t1*q22+64*t1m1*q24-96*
     #    q23)
     # +lhpm3*dlogq10u*(112*u1p4*t1m1-416*u1p3*t1m1*q2+208*u1p3
     #    +128*u1p2*t1+560*u1p2*t1m1*q22-496*u1p2*q2-192*u1*t1*q2-
     #    320*u1*t1m1*q23+384*u1*q22+64*t1*q22+64*t1m1*q24-96*
     #    q23)
     # +lhpm3*dlogq11u*(112*u1p4*t1m1-416*u1p3*t1m1*q2+208*u1p3
     #    +128*u1p2*t1+560*u1p2*t1m1*q22-496*u1p2*q2-192*u1*t1*q2-
     #    320*u1*t1m1*q23+384*u1*q22+64*t1*q22+64*t1m1*q24-96*
     #    q23)
        vps(103) =
     # +lhpm3*dlogq12u*(-112*u1p4*t1m1+416*u1p3*t1m1*q2-208*
     #    u1p3-128*u1p2*t1-560*u1p2*t1m1*q22+496*u1p2*q2+192*u1*t1*q2
     #    +320*u1*t1m1*q23-384*u1*q22-64*t1*q22-64*t1m1*q24+96*
     #    q23)
     # +lhpm3*dlogq13u*(-224*u1p4*t1m1+832*u1p3*t1m1*q2-416*
     #    u1p3-256*u1p2*t1-1120*u1p2*t1m1*q22+992*u1p2*q2+384*u1*t1*
     #    q2+640*u1*t1m1*q23-768*u1*q22-128*t1*q22-128*t1m1*q24
     #    +192*q23)
cjs
     # +lhpm5*dlogq6u*u1*(32*u1p5*t1m1-160*u1p4*t1m1*q2+80*u1p4+
     #    64*u1p3*t1+320*u1p3*t1m1*q22-304*u1p3*q2-192*u1p2*t1*q2-320
     #    *u1p2*t1m1*q23+432*u1p2*q22+192*u1*t1*q22+160*u1*t1m1*
     #    q24-272*u1*q23-64*t1*q23-32*t1m1*q25+64*q24
     #    )
        vps(104) =
cjs
     # +lhpm5*dlogq7u*u1*(32*u1p5*t1m1-160*u1p4*t1m1*q2+80*u1p4+
     #    64*u1p3*t1+320*u1p3*t1m1*q22-304*u1p3*q2-192*u1p2*t1*q2-320
     #    *u1p2*t1m1*q23+432*u1p2*q22+192*u1*t1*q22+160*u1*t1m1*
     #    q24-272*u1*q23-64*t1*q23-32*t1m1*q25+64*q24
     #    )
cjs
     # +lhpm5*dlogq8u*u1*(-32*u1p5*t1m1+160*u1p4*t1m1*q2-80*u1p4
     #    -64*u1p3*t1-320*u1p3*t1m1*q22+304*u1p3*q2+192*u1p2*t1*q2+
     #    320*u1p2*t1m1*q23-432*u1p2*q22-192*u1*t1*q22-160*u1*
     #    t1m1*q24+272*u1*q23+64*t1*q23+32*t1m1*q25-64
     #    *q24)
        vps(105) =
cjs
     # +lhpm5*dlogq9u*u1*(-32*u1p5*t1m1+160*u1p4*t1m1*q2-80*u1p4
     #    -64*u1p3*t1-320*u1p3*t1m1*q22+304*u1p3*q2+192*u1p2*t1*q2+
     #    320*u1p2*t1m1*q23-432*u1p2*q22-192*u1*t1*q22-160*u1*
     #    t1m1*q24+272*u1*q23+64*t1*q23+32*t1m1*q25-64
     #    *q24)
cjs
     # +lhpm5*dlogq10u*u1*(-32*u1p5*t1m1+160*u1p4*t1m1*q2-80*u1p4
     #    -64*u1p3*t1-320*u1p3*t1m1*q22+304*u1p3*q2+192*u1p2*t1*q2+
     #    320*u1p2*t1m1*q23-432*u1p2*q22-192*u1*t1*q22-160*u1*
     #    t1m1*q24+272*u1*q23+64*t1*q23+32*t1m1*q25-64
     #    *q24)
        vps(106) =
cjs
     # +lhpm5*dlogq11u*u1*(-32*u1p5*t1m1+160*u1p4*t1m1*q2-80*u1p4
     #    -64*u1p3*t1-320*u1p3*t1m1*q22+304*u1p3*q2+192*u1p2*t1*q2+
     #    320*u1p2*t1m1*q23-432*u1p2*q22-192*u1*t1*q22-160*u1*
     #    t1m1*q24+272*u1*q23+64*t1*q23+32*t1m1*q25-64
     #    *q24)
cjs
     # +lhpm5*dlogq12u*u1*(32*u1p5*t1m1-160*u1p4*t1m1*q2+80*u1p4+
     #    64*u1p3*t1+320*u1p3*t1m1*q22-304*u1p3*q2-192*u1p2*t1*q2-320
     #    *u1p2*t1m1*q23+432*u1p2*q22+192*u1*t1*q22+160*u1*t1m1*
     #    q24-272*u1*q23-64*t1*q23-32*t1m1*q25+64*q24
     #    )
        vps(107) =
cjs
     # +lhpm5*dlogq13u*u1*(64*u1p5*t1m1-320*u1p4*t1m1*q2+160*u1p4
     #    +128*u1p3*t1+640*u1p3*t1m1*q22-608*u1p3*q2-384*u1p2*t1*q2
     #    -640*u1p2*t1m1*q23+864*u1p2*q22+384*u1*t1*q22+320*u1*
     #    t1m1*q24-544*u1*q23-128*t1*q23-64*t1m1*q25+128*
     #    q24)
        vps(108) =
     # +log7x2*(16*u1p4*t1m1*spm3-32*u1p3*t1m1*q2*spm3+48*
     #    u1p3*t1m1*spm2+48*u1p3*spm3+64*u1p2*t1*spm3+16*u1p2*t1m1*
     #    q22*spm3-96*u1p2*t1m1*q2*spm2+56*u1p2*t1m1*spm1-64*u1p2*
     #    q2*spm3+128*u1p2*spm2+64*u1*t1p2*spm3-64*u1*t1*q2*spm3+
     #    160*u1*t1*spm2+48*u1*t1m1*q22*spm2-112*u1*t1m1*q2*spm1+16
     #    *u1*q22*spm3-192*u1*q2*spm2+120*u1*spm1+16*u1m1*t1p4*spm3
     #    -32*u1m1*t1p3*q2*spm3+48*u1m1*t1p3*spm2+16*u1m1*t1p2*q22*
     #    spm3-96*u1m1*t1p2*q2*spm2+56*u1m1*t1p2*spm1+48*u1m1*t1*
     #    q22*spm2-112*u1m1*t1*q2*spm1+64*u1m1*q22*spm1+48*t1p3*
     #    spm3-64*t1p2*q2*spm3+128*t1p2*spm2+16*t1*q22*spm3-192*t1
     #    *q2*spm2+120*t1*spm1+64*t1m1*q22*spm1+64*q22*spm2-192*
     #    q2*spm1)
        vps(109) =
     # +(224+64*u1p3*t1m1*spm2-32*u1p2*t1m1*um1-96*u1p2*
     #    t1m1*q2*spm2+160*u1p2*t1m1*spm1+128*u1p2*spm2+128*u1*t1*
     #    spm2+32*u1*t1m1*um1*q2-224*u1*t1m1*q2*spm1+104*u1*t1m1-
     #    64*u1*um1-16*u1*tm1-96*u1*q2*spm2+352*u1*spm1+64*u1m1*
     #    t1p3*spm2-32*u1m1*t1p2*tm1-96*u1m1*t1p2*q2*spm2+160*u1m1*
     #    t1p2*spm1+32*u1m1*t1*tm1*q2-224*u1m1*t1*q2*spm1+104*u1m1*
     #    t1-32*tb*q22-128*u1m1*q2+128*t1p2*spm2-16*t1*um1
     #    -64*t1*tm1-96*t1*q2*spm2+352*t1*spm1-128*t1m1*q2-320*q2
     #    *spm1-64*Bqed*logdel-32*Bqed-64*Mqed)
c sum contributions and multiply by common factor:
        splusv = 0.d0
        do 10 i = 1,109
c        print '(''0     vps  = '',d20.7)',vps(i)
 10     splusv = splusv + vps(i)
c        do 20 ii= 1,109
c 20        write(6,1000) ii,vps(ii)
        svcfcf = splusv
c Divide by 16 to get the normalization correct
c The - in the def. cancel the - from the gl. pol.
        vqedgam = svcfcf/16.0d0
c
 1000      format('vps(',i2,') =',d20.10)
      return
      end
      double precision function vokl(sp,t1,u1,m2,q2,del,s4max,s4)
c
c Here we compute the expression for the CA*CF part of the
c soft plus virtual matrix element.
c NOTE: residues for external lines have not been included yet.
c
      implicit double precision (a-z)
      integer i,ii
      dimension vps(48),sppv(4)
      parameter( pi = 3.14159265359d0 )
      data zeta2/1.644934066848226d+00/
c
c      logdel = dlog(del/m2)
c      logdel2 = logdel*logdel
C HERE WE REPLACE THE LOGDEL TERMS BY INTEGRALS OVER S4
        DIST = S4MAX - DEL
        L11 = DLOG(S4/M2)
        L12 = DLOG(S4MAX/M2)
        LOGDEL = L12 - DIST/S4
        LOGDEL2 = L12*L12 -2.0D0*DIST*L11/S4
c
      s = sp + q2
      mu2 = m2
      cep = 1.d0/16.d0/pi/pi
      s1 = 4.0d0*m2 -s
      s1m1 = 1.d0/s1
      t = t1+m2
      u = u1+m2
      xsq = dsqrt(1.0d0 - 4.0d0*m2/s)
      ysq = dsqrt(1.0d0 - 4.0d0*m2/q2)
      x = (1.d0 - xsq)/(1.d0 + xsq)
      sq = s*xsq
      sqm = 1.d0/sq
      y = (1.d0-ysq)/(1.d0+ysq)
      x1 = (1.d0+ysq)/2.d0
      x2 = (1.d0-ysq)/2.d0
      aa = dsqrt(4.d0*m2 -q2)
      aa2 = 4.d0*m2 -q2
      bb = dsqrt(-q2)
      cc = dsqrt(4.d0*m2*q2/s - q2)
      lat = t*t + m2*m2 + q2*q2 - 2.d0*t*m2 - 2.d0*t*q2 - 2*m2*q2
      lau = u*u + m2*m2 + q2*q2 - 2.d0*u*m2 - 2.d0*u*q2 - 2*m2*q2
      lh = dsqrt(lat)
      lhp = dsqrt(lau)
      log1 = dlog(x)
      log2 = dlog(s/m2)
      log3 = dlog(-t1/m2)
      log3x2 = log3*log3
      log4 = dlog(-u1/m2)
      log4x2 = log4*log4
      log5 = dlog(1.d0-x)
      log6 = dlog(1.d0+x)
      log7 = dlog(-y)
      log7x2 = log7*log7
      log8 = dlog(-q2/s)
      log9 = dlog(x1)
      log10 = dlog(-x2)
      logmu = dlog(mu2/m2)
      logq1 = dlog((aa+cc)*(aa+cc)/4.d0/m2)
      logq2 = dlog((aa-bb)/(aa+bb))
      logq3 = dlog((aa-cc)/(aa-bb))
      logq3x2 = logq3*logq3
      dlog1 = dilog(-x)
      dlog2 = dilog(x)
      dlog3 = dilog(t1/m2 + 1.d0)
      dlog4 = dilog(u1/m2 + 1.d0)
      dlog5 = dilog(1.d0-u1/x/t1)
      dlog6 = dilog(1.d0-t1/x/u1)
      dlog7 = dilog(q2*x1/m2)
      dlog8 = dilog(q2*x2/m2)
      dlogq1 = dilog((aa-bb)/(aa-cc))
      dlogq2 = dilog((aa-cc)/(aa+bb))
      dlogq3 = dilog((bb+cc)/(aa+cc))
      dlogq4 = dilog((cc-bb)/(aa+cc))
      dlogq5 = dilog(s/sp)
      dlogq6t = dilog((t1+aa2+lh)/(t1-ysq*(lh+q2*ysq)))
      dlogq6u = dilog((u1+aa2+lhp)/(u1-ysq*(lhp+q2*ysq)))
      dlogq7t = dilog((t1+aa2+lh)/(t1+ysq*(lh-q2*ysq)))
      dlogq7u = dilog((u1+aa2+lhp)/(u1+ysq*(lhp-q2*ysq)))
      dlogq8t = dilog((t1+aa2-lh)/(t1-ysq*(lh+q2*ysq)))
      dlogq8u = dilog((u1+aa2-lhp)/(u1-ysq*(lhp+q2*ysq)))
      dlogq9t = dilog((t1+aa2-lh)/(t1+ysq*(lh-q2*ysq)))
      dlogq9u = dilog((u1+aa2-lhp)/(u1+ysq*(lhp-q2*ysq)))
      dlogq10t = dilog( (t1*(q2 - t - m2 - lh) - 2.d0*m2*lh)/
     &     (t1*(q2 - t - m2 + lh)))
      dlogq10u = dilog( (u1*(q2 - u - m2 - lhp) - 2.d0*m2*lhp)/
     &     (u1*(q2 - u - m2 + lhp)))
      dlogq11t = dilog( (t1*(q2 - t - m2 - lh) - 2.d0*m2*lh)/
     &     (t1*(q2 - t - m2 - lh)))
      dlogq11u = dilog( (u1*(q2 - u - m2 - lhp) - 2.d0*m2*lhp)/
     &     (u1*(q2 - u - m2 - lhp)))
      dlogq12t = dilog( (q2 - t - m2 + lh)/(q2 - t - m2 - lh))
      dlogq12u = dilog( (q2 - u - m2 + lhp)/(q2 - u - m2 - lhp))
      dlogq13t = dilog( (m2 - t - lh)/(m2 - t))
      dlogq13u = dilog( (m2 - u - lhp)/(m2 - u))
c More useful definitions:
      CFCA = 4.d0
      m22 = m2*m2
      m23 = m2*m22
      t1p2 = t1*t1
      t1p3 = t1*t1p2
      t1p4 = t1*t1p3
      t1p5 = t1*t1p4
      t1m1 = 1.d0/t1
      t1m2 = t1m1*t1m1
      t1m3 = t1m2*t1m1
      u1p2 = u1*u1
      u1p3 = u1*u1p2
      u1p4 = u1*u1p3
      u1p5 = u1*u1p4
cjs      u1p6 = u1*u1p5
      u1m1 = 1.d0/u1
      u1m2 = u1m1*u1m1
      u1m3 = u1m1*u1m2
      um1 = 1.d0/u
      um2 = um1*um1
      tm1 = 1.d0/t
      tm2 = tm1*tm1
      q22 = q2*q2
      q23 = q2*q22
      q24 = q22*q22
      tb = t1m1*u1m1
      sm1 = 1.d0/s
      sm2 = sm1*sm1
      sqm1 = 1.d0/sq
      spm1 = 1.d0/sp
      spm2 = spm1*spm1
      spm3 = spm1*spm2
      spm4 = spm2*spm2
      lhm1 = 1.d0/lh
      lhm2 = lhm1*lhm1
      lhm3 = lhm1*lhm2
      lhm4 = lhm2*lhm2
      lhm5 = lhm2*lhm3
      lhpm1 = 1.d0/lhp
      lhpm2 = lhpm1*lhpm1
      lhpm3 = lhpm1*lhpm2
      lhpm4 = lhpm2*lhpm2
      lhpm5 = lhpm2*lhpm3
      xsqm1 = 1.d0/xsq
      log1x2 = log1*log1
      Bqed = -s + m2*sp*sp*t1m1*u1m1
      Mqed =2*m22*u1*t1m2 + 2*m22*t1m1 - m2*t1m1*s
     #  + 2*m22*t1*u1m2 + 2*m22*u1m1 - m2*u1m1*s
c
c Here is the matrix element.
c
c   splusv =
        vps(1) =
     # +m22*log1*log5*sqm*(128+64*u1*t1m1+64*u1m1*t1)
     # +m22*log1*log6*sqm*(-128-64*u1*t1m1-64*u1m1*t1)
     # +m22*log1*log3*sqm*(64+32*u1*t1m1+32*u1m1*t1)
     # +m22*log1*log4*sqm*(64+32*u1*t1m1+32*u1m1*t1)
     # +m22*log1*sqm*logq1*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*log1*sqm*(32*u1*t1m1*q2*s1m1-64*u1*s1m1+32*
     #    u1m1*t1*q2*s1m1-64*t1*s1m1+64*q2*s1m1)
     # +m22*log3*lhm2*(-16*u1*tm1*q2-16*u1m1*t1p2*tm1*q2-
     #    32*t1*tm1*q2)
     # +m22*log4*lhpm2*(-16*u1p2*t1m1*um1*q2-32*u1*um1*q2-
     #    16*t1*um1*q2)
     # +m22*log4*lhpm4*(-48*u1p3*t1m1*um1*q22+96*u1p3*um1*
     #    q2+64*u1p2*t1*um1*q2-80*u1p2*um1*q22-32*u1*t1*um1*q22)
     # +m22*dlog2*sqm*(128+64*u1*t1m1+64*u1m1*t1)
     # +m22*dlog1*sqm*(-128-64*u1*t1m1-64*u1m1*t1)
     # +m22*zeta2*sqm*(448+224*u1*t1m1+224*u1m1*t1)
     # +m22*zeta2*lhm1*(-16*u1*t1m1+16*u1m1*t1)
     # +m22*zeta2*lhm3*(-32*u1m1*t1p2*q2-32*t1*q2)
        vps(2) =
     # +m22*zeta2*lhpm1*(16*u1*t1m1-16*u1m1*t1)
     # +m22*zeta2*lhpm3*(-16*u1p2*t1m1*q2-32*u1*q2-16*t1*q2
     #    )
     # +m22*zeta2*lhpm5*(-48*u1p3*t1m1*q22+96*u1p3*q2+64*
     #    u1p2*t1*q2-80*u1p2*q22-32*u1*t1*q22)
     # +m22*sqm*log8*logq2*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*sqm*dlogq1*(-128-64*u1*t1m1-64*u1m1*t1)
     # +m22*sqm*dlogq2*(-128-64*u1*t1m1-64*u1m1*t1)
     # +m22*sqm*dlogq3*(-128-64*u1*t1m1-64*u1m1*t1)
     # +m22*sqm*dlogq4*(128+64*u1*t1m1+64*u1m1*t1)
     # +m22*sqm*logq3x2*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*log9*lhm2*(16*u1*t1m1*q2*x1-16*u1*t1m1*q2*x2-16*
     #    u1m1*t1*q2*x1+16*u1m1*t1*q2*x2)
     # +m22*log10*lhm2*(-16*u1*t1m1*q2*x1+16*u1*t1m1*q2*x2
     #    +16*u1m1*t1*q2*x1-16*u1m1*t1*q2*x2)
     # +m22*lhm1*dlogq6t*(16*u1*t1m1-16*u1m1*t1)
     # +m22*lhm1*dlogq7t*(16*u1*t1m1-16*u1m1*t1)
     # +m22*lhm1*dlogq8t*(-16*u1*t1m1+16*u1m1*t1)
        vps(3) =
     # +m22*lhm1*dlogq9t*(-16*u1*t1m1+16*u1m1*t1)
     # +m22*lhm1*dlogq10t*(-16*u1*t1m1+16*u1m1*t1)
     # +m22*lhm1*dlogq11t*(-16*u1*t1m1+16*u1m1*t1)
     # +m22*lhm1*dlogq12t*(16*u1*t1m1-16*u1m1*t1)
     # +m22*lhm1*dlogq13t*(32*u1*t1m1-32*u1m1*t1)
     # +m22*lhm3*dlogq6t*(32*u1m1*t1p2*q2+32*t1*q2)
     # +m22*lhm3*dlogq7t*(32*u1m1*t1p2*q2+32*t1*q2)
     # +m22*lhm3*dlogq8t*(-32*u1m1*t1p2*q2-32*t1*q2)
     # +m22*lhm3*dlogq9t*(-32*u1m1*t1p2*q2-32*t1*q2)
     # +m22*lhm3*dlogq10t*(-32*u1m1*t1p2*q2-32*t1*q2)
     # +m22*lhm3*dlogq11t*(-32*u1m1*t1p2*q2-32*t1*q2)
     # +m22*lhm3*dlogq12t*(32*u1m1*t1p2*q2+32*t1*q2)
     # +m22*lhm3*dlogq13t*(64*u1m1*t1p2*q2+64*t1*q2)
     # +m22*lhpm1*dlogq6u*(-16*u1*t1m1+16*u1m1*t1)
     # +m22*lhpm1*dlogq7u*(-16*u1*t1m1+16*u1m1*t1)
     # +m22*lhpm1*dlogq8u*(16*u1*t1m1-16*u1m1*t1)
     # +m22*lhpm1*dlogq9u*(16*u1*t1m1-16*u1m1*t1)
     # +m22*lhpm1*dlogq10u*(16*u1*t1m1-16*u1m1*t1)
        vps(4) =
     # +m22*lhpm1*dlogq11u*(16*u1*t1m1-16*u1m1*t1)
     # +m22*lhpm1*dlogq12u*(-16*u1*t1m1+16*u1m1*t1)
     # +m22*lhpm1*dlogq13u*(-32*u1*t1m1+32*u1m1*t1)
     # +m22*lhpm3*dlogq6u*(16*u1p2*t1m1*q2+32*u1*q2+16*t1*q2)
     # +m22*lhpm3*dlogq7u*(16*u1p2*t1m1*q2+32*u1*q2+16*t1*q2)
     # +m22*lhpm3*dlogq8u*(-16*u1p2*t1m1*q2-32*u1*q2-16*t1*q2
     #    )
     # +m22*lhpm3*dlogq9u*(-16*u1p2*t1m1*q2-32*u1*q2-16*t1*q2
     #    )
     # +m22*lhpm3*dlogq10u*(-16*u1p2*t1m1*q2-32*u1*q2-16*t1*
     #    q2)
     # +m22*lhpm3*dlogq11u*(-16*u1p2*t1m1*q2-32*u1*q2-16*t1*
     #    q2)
     # +m22*lhpm3*dlogq12u*(16*u1p2*t1m1*q2+32*u1*q2+16*t1*q2)
     # +m22*lhpm3*dlogq13u*(32*u1p2*t1m1*q2+64*u1*q2+32*t1*q2)
     # +m22*lhpm5*dlogq6u*(48*u1p3*t1m1*q22-96*u1p3*q2-64*u1p2
     #    *t1*q2+80*u1p2*q22+32*u1*t1*q22)
        vps(5) =
     # +m22*lhpm5*dlogq7u*(48*u1p3*t1m1*q22-96*u1p3*q2-64*u1p2
     #    *t1*q2+80*u1p2*q22+32*u1*t1*q22)
     # +m22*lhpm5*dlogq8u*(-48*u1p3*t1m1*q22+96*u1p3*q2+64*
     #    u1p2*t1*q2-80*u1p2*q22-32*u1*t1*q22)
     # +m22*lhpm5*dlogq9u*(-48*u1p3*t1m1*q22+96*u1p3*q2+64*
     #    u1p2*t1*q2-80*u1p2*q22-32*u1*t1*q22)
     # +m22*lhpm5*dlogq10u*(-48*u1p3*t1m1*q22+96*u1p3*q2+64*
     #    u1p2*t1*q2-80*u1p2*q22-32*u1*t1*q22)
     # +m22*lhpm5*dlogq11u*(-48*u1p3*t1m1*q22+96*u1p3*q2+64*
     #    u1p2*t1*q2-80*u1p2*q22-32*u1*t1*q22)
     # +m22*lhpm5*dlogq12u*(48*u1p3*t1m1*q22-96*u1p3*q2-64*
     #    u1p2*t1*q2+80*u1p2*q22+32*u1*t1*q22)
     # +m22*lhpm5*dlogq13u*(96*u1p3*t1m1*q22-192*u1p3*q2-128*
     #    u1p2*t1*q2+160*u1p2*q22+64*u1*t1*q22)
     # +m2*log1x2*sqm*(-16*u1-16*t1+16*q2-32*Bqed)
     # +m2*log1x2*(4*u1p2*t1m1*spm1+12*u1*spm1+4*u1m1*t1p2*
     #    spm1+12*t1*spm1)
        vps(6) =
     # +m2*log1*log5*sqm*(32*u1p2*t1m1-32*u1*t1m1*q2+160*u1
     #    +32*u1m1*t1p2-32*u1m1*t1*q2+160*t1-128*q2+64*Bqed)
     # +m2*log1*log6*sqm*(-32*u1p2*t1m1+32*u1*t1m1*q2-96*
     #    u1-32*u1m1*t1p2+32*u1m1*t1*q2-96*t1+64*q2+64*Bqed)
     # +m2*log1*log3*sqm*(16*u1p2*t1m1-16*u1*t1m1*q2+48*u1
     #    +16*u1m1*t1p2-16*u1m1*t1*q2+48*t1-32*q2)
     # +m2*log1*log4*sqm*(16*u1p2*t1m1-16*u1*t1m1*q2+48*u1
     #    +16*u1m1*t1p2-16*u1m1*t1*q2+48*t1-32*q2)
     # +m2*log1*sqm*logq1*(-16*u1p2*t1m1+16*u1*t1m1*q2-48*
     #    u1-16*u1m1*t1p2+16*u1m1*t1*q2-48*t1+32*q2)
     # +m2*log1*sqm*(16*u1p3*t1m1*s1m1-16*u1p3*t1m1*spm1-
     #    16*u1p2*t1m1*q2*s1m1+16*u1p2*t1m1*q2*spm1-32*u1p2*t1m1+64*
     #    u1p2*q2*spm2-32*u1p2*s1m1+128*u1*t1*q2*spm2-96*u1*t1*s1m1
     #    +32*u1*t1*spm1+24*u1*t1m1*q2+112*u1*q2*s1m1+48*u1*q2*spm1
     #    -16*u1+16*u1m1*t1p3*s1m1-16*u1m1*t1p3*spm1-16*u1m1*t1p2*
     #    q2*s1m1+16*u1m1*t1p2*q2*spm1-32*u1m1*t1p2+24*u1m1*t1*q2+
     #    64*t1p2*q2*spm2-32*t1p2*s1m1+112*t1*q2*s1m1+48*t1*q2*spm1
     #    -16*t1-64*q22*s1m1-16*q2-64*Bqed*logdel)
        vps(7) =
     # +m2*log3x2*(-16)
     # +m2*log3*log4*(-32-32*u1*t1m1-32*u1m1*t1)
     # +m2*log3*lhm2*(8*u1*t1p2*tm1-24*u1*t1*tm1*q2+8*u1m1*
     #    t1p4*tm1-24*u1m1*t1p3*tm1*q2+16*u1m1*t1p2*tm1*q22+16*t1p3
     #    *tm1-48*t1p2*tm1*q2+16*t1*tm1*q22)
     # +m2*log3*(-8*u1m1*t1p3*tm2)
     # +m2*log4x2*(-16)
     # +m2*log4*lhpm2*(8*u1p4*t1m1*um1-4*u1p4*t1m1*um2*q2+4*
     #    u1p4*um2-36*u1p3*t1m1*um1*q2-4*u1p3*t1m1*um2*q22+40*u1p3*
     #    um1+8*u1p3*um2*q2+4*u1p2*t1p2*um2+24*u1p2*t1*um1+16*u1p2*
     #    t1m1*um1*q22-68*u1p2*um1*q2-4*u1p2*um2*q22-4*u1*t1p2*um2
     #    *q2-32*u1*t1*um1*q2+16*u1*um1*q22)
     # +m2*log4*lhpm4*(12*u1p5*t1m1*um1*q2-24*u1p5*um1-16*
     #    u1p4*t1*um1-64*u1p4*t1m1*um1*q22+132*u1p4*um1*q2+104*u1p3*
     #    t1*um1*q2+20*u1p3*t1m1*um1*q23-136*u1p3*um1*q22+16*u1p2*
     #    t1p2*um1*q2-64*u1p2*t1*um1*q22+28*u1p2*um1*q23-16*u1*t1p2*
     #    um1*q22+8*u1*t1*um1*q23)
        vps(8) =
     # +m2*log4*(-4*u1p3*t1m1*um2+4*u1*t1*um2)
     # +m2*dlog2*sqm*(32*u1p2*t1m1-32*u1*t1m1*q2+160*u1+32
     #    *u1m1*t1p2-32*u1m1*t1*q2+160*t1-128*q2+64*Bqed)
     # +m2*dlog3*(-8+8*u1m1*t1)
     # +m2*dlog4*(-8+8*u1*t1m1)
     # +m2*dlog1*sqm*(-32*u1p2*t1m1+32*u1*t1m1*q2-96*u1
     #    -32*u1m1*t1p2+32*u1m1*t1*q2-96*t1+64*q2+64*Bqed)
     # +m2*zeta2*sqm*(112*u1p2*t1m1-112*u1*t1m1*q2+464*u1
     #    +112*u1m1*t1p2-112*u1m1*t1*q2+464*t1-352*q2-32*Bqed)
     # +m2*zeta2*lhm1*(8*u1*t1m1*q2-20*u1-4*u1m1*t1p2-8*
     #    u1m1*t1*q2-8*t1+16*q2)
     # +m2*zeta2*lhm3*(16*u1p2*q2+4*u1*t1p2+40*u1*t1*q2-12*u1
     #    *q22+12*u1m1*t1p4+8*u1m1*t1p3*q2+28*u1m1*t1p2*q22+16*
     #    t1p3-16*t1p2*q2+16*t1*q22)
     # +m2*zeta2*lhpm1*(-8*u1*t1m1*q2-8*u1+8*u1m1*t1*q2-
     #    24*t1+16*q2)
        vps(9) =
     # +m2*zeta2*lhpm3*(8*u1p4*t1m1-12*u1p3*t1m1*q2+40*u1p3
     #    +24*u1p2*t1+8*u1p2*t1m1*q22-20*u1p2*q2+8*u1*t1*q2+16*u1*
     #    q22+16*t1p2*q2+8*t1*q22)
     # +m2*zeta2*lhpm5*(12*u1p5*t1m1*q2-24*u1p5-16*u1p4*t1-
     #    24*u1p4*t1m1*q22+68*u1p4*q2+72*u1p3*t1*q2+12*u1p3*t1m1*q23
     #    -80*u1p3*q22-80*u1p2*t1*q22+36*u1p2*q23+24*u1*t1*q23)
     # +m2*zeta2*(32-24*u1p2*t1m1*spm1+48*u1*t1m1-72*u1*
     #    spm1-24*u1m1*t1p2*spm1+48*u1m1*t1-72*t1*spm1)
     # +m2*sqm*log8*logq2*(-16*u1p2*t1m1+16*u1*t1m1*q2-48
     #    *u1-16*u1m1*t1p2+16*u1m1*t1*q2-48*t1+32*q2)
     # +m2*sqm*dlogq1*(-32*u1p2*t1m1+32*u1*t1m1*q2-96*u1
     #    -32*u1m1*t1p2+32*u1m1*t1*q2-96*t1+64*q2)
     # +m2*sqm*dlogq2*(-32*u1p2*t1m1+32*u1*t1m1*q2-96*u1
     #    -32*u1m1*t1p2+32*u1m1*t1*q2-96*t1+64*q2)
     # +m2*sqm*dlogq3*(-32*u1p2*t1m1+32*u1*t1m1*q2-96*u1
     #    -32*u1m1*t1p2+32*u1m1*t1*q2-96*t1+64*q2)
     # +m2*sqm*dlogq4*(32*u1p2*t1m1-32*u1*t1m1*q2+96*u1+32
     #    *u1m1*t1p2-32*u1m1*t1*q2+96*t1-64*q2)
        vps(10) =
     # +m2*sqm*logq3x2*(-16*u1p2*t1m1+16*u1*t1m1*q2-48*u1
     #    -16*u1m1*t1p2+16*u1m1*t1*q2-48*t1+32*q2)
     # +m2*log9*lhm2*(16*u1p2*t1m1*q2*x1-16*u1p2*t1m1*q2*x2-4
     #    *u1*t1*x1+4*u1*t1*x2-12*u1*t1m1*q22*x1+12*u1*t1m1*q22*x2+
     #    64*u1*q2*x1-64*u1*q2*x2+4*u1m1*t1p3*x1-4*u1m1*t1p3*x2+32*
     #    u1m1*t1p2*q2*x1-32*u1m1*t1p2*q2*x2+12*u1m1*t1*q22*x1-12*
     #    u1m1*t1*q22*x2+32*t1*q2*x1-32*t1*q2*x2)
     # +m2*log9*lhpm2*(24*u1p2*t1m1*q2*x1-24*u1p2*t1m1*q2*x2-
     #    8*u1*t1m1*q22*x1+8*u1*t1m1*q22*x2+48*u1*q2*x1-48*u1*q2*x2
     #    +16*u1m1*t1p2*q2*x1-16*u1m1*t1p2*q2*x2+56*t1*q2*x1-56*t1*q2
     #    *x2-8*q22*x1+8*q22*x2)
     # +m2*log9*lhpm4*(40*u1p3*t1m1*q22*x1-40*u1p3*t1m1*q22*
     #    x2-64*u1p3*q2*x1+64*u1p3*q2*x2-32*u1p2*t1*q2*x1+32*u1p2*t1*q2
     #    *x2-8*u1p2*t1m1*q23*x1+8*u1p2*t1m1*q23*x2+56*u1p2*q22*x1
     #    -56*u1p2*q22*x2-16*u1*t1p2*q2*x1+16*u1*t1p2*q2*x2-16*u1*t1*
     #    q22*x1+16*u1*t1*q22*x2+8*u1*q23*x1-8*u1*q23*x2+16*t1p2*
     #    q22*x1-16*t1p2*q22*x2+16*t1*q23*x1-16*t1*q23*x2)
     # +m2*log9*(4*u1*t1m1*x1-4*u1*t1m1*x2-4*u1m1*t1*x1+4*
     #    u1m1*t1*x2)
        vps(11) =
     # +m2*log10*lhm2*(-16*u1p2*t1m1*q2*x1+16*u1p2*t1m1*q2*x2
     #    +4*u1*t1*x1-4*u1*t1*x2+12*u1*t1m1*q22*x1-12*u1*t1m1*q22*
     #    x2-64*u1*q2*x1+64*u1*q2*x2-4*u1m1*t1p3*x1+4*u1m1*t1p3*x2-
     #    32*u1m1*t1p2*q2*x1+32*u1m1*t1p2*q2*x2-12*u1m1*t1*q22*x1+12*
     #    u1m1*t1*q22*x2-32*t1*q2*x1+32*t1*q2*x2)
     # +m2*log10*lhpm2*(-24*u1p2*t1m1*q2*x1+24*u1p2*t1m1*q2*
     #    x2+8*u1*t1m1*q22*x1-8*u1*t1m1*q22*x2-48*u1*q2*x1+48*u1*q2
     #    *x2-16*u1m1*t1p2*q2*x1+16*u1m1*t1p2*q2*x2-56*t1*q2*x1+56*t1
     #    *q2*x2+8*q22*x1-8*q22*x2)
     # +m2*log10*lhpm4*(-40*u1p3*t1m1*q22*x1+40*u1p3*t1m1*
     #    q22*x2+64*u1p3*q2*x1-64*u1p3*q2*x2+32*u1p2*t1*q2*x1-32*u1p2*
     #    t1*q2*x2+8*u1p2*t1m1*q23*x1-8*u1p2*t1m1*q23*x2-56*u1p2*q22
     #    *x1+56*u1p2*q22*x2+16*u1*t1p2*q2*x1-16*u1*t1p2*q2*x2+16*u1*
     #    t1*q22*x1-16*u1*t1*q22*x2-8*u1*q23*x1+8*u1*q23*x2-16*t1p2
     #    *q22*x1+16*t1p2*q22*x2-16*t1*q23*x1+16*t1*q23*x2)
     # +m2*log10*(-4*u1*t1m1*x1+4*u1*t1m1*x2+4*u1m1*t1*x1
     #    -4*u1m1*t1*x2)
        vps(12) =
     # +m2*lhm1*dlogq6t*(-8*u1*t1m1*q2+20*u1+4*u1m1*t1p2+8*
     #    u1m1*t1*q2+8*t1-16*q2)
     # +m2*lhm1*dlogq7t*(-8*u1*t1m1*q2+20*u1+4*u1m1*t1p2+8*
     #    u1m1*t1*q2+8*t1-16*q2)
     # +m2*lhm1*dlogq8t*(8*u1*t1m1*q2-20*u1-4*u1m1*t1p2-8*
     #    u1m1*t1*q2-8*t1+16*q2)
     # +m2*lhm1*dlogq9t*(8*u1*t1m1*q2-20*u1-4*u1m1*t1p2-8*
     #    u1m1*t1*q2-8*t1+16*q2)
     # +m2*lhm1*dlogq10t*(8*u1*t1m1*q2-20*u1-4*u1m1*t1p2-8*
     #    u1m1*t1*q2-8*t1+16*q2)
     # +m2*lhm1*dlogq11t*(8*u1*t1m1*q2-20*u1-4*u1m1*t1p2-8*
     #    u1m1*t1*q2-8*t1+16*q2)
     # +m2*lhm1*dlogq12t*(-8*u1*t1m1*q2+20*u1+4*u1m1*t1p2+8
     #    *u1m1*t1*q2+8*t1-16*q2)
     # +m2*lhm1*dlogq13t*(-16*u1*t1m1*q2+40*u1+8*u1m1*t1p2+
     #    16*u1m1*t1*q2+16*t1-32*q2)
        vps(13) =
     # +m2*lhm3*dlogq6t*(-16*u1p2*q2-4*u1*t1p2-40*u1*t1*q2+12
     #    *u1*q22-12*u1m1*t1p4-8*u1m1*t1p3*q2-28*u1m1*t1p2*q22-16*
     #    t1p3+16*t1p2*q2-16*t1*q22)
     # +m2*lhm3*dlogq7t*(-16*u1p2*q2-4*u1*t1p2-40*u1*t1*q2+12
     #    *u1*q22-12*u1m1*t1p4-8*u1m1*t1p3*q2-28*u1m1*t1p2*q22-16*
     #    t1p3+16*t1p2*q2-16*t1*q22)
     # +m2*lhm3*dlogq8t*(16*u1p2*q2+4*u1*t1p2+40*u1*t1*q2-12*u1
     #    *q22+12*u1m1*t1p4+8*u1m1*t1p3*q2+28*u1m1*t1p2*q22+16*
     #    t1p3-16*t1p2*q2+16*t1*q22)
     # +m2*lhm3*dlogq9t*(16*u1p2*q2+4*u1*t1p2+40*u1*t1*q2-12*u1
     #    *q22+12*u1m1*t1p4+8*u1m1*t1p3*q2+28*u1m1*t1p2*q22+16*
     #    t1p3-16*t1p2*q2+16*t1*q22)
     # +m2*lhm3*dlogq10t*(16*u1p2*q2+4*u1*t1p2+40*u1*t1*q2-12*
     #    u1*q22+12*u1m1*t1p4+8*u1m1*t1p3*q2+28*u1m1*t1p2*q22+16*
     #    t1p3-16*t1p2*q2+16*t1*q22)
     # +m2*lhm3*dlogq11t*(16*u1p2*q2+4*u1*t1p2+40*u1*t1*q2-12*
     #    u1*q22+12*u1m1*t1p4+8*u1m1*t1p3*q2+28*u1m1*t1p2*q22+16*
     #    t1p3-16*t1p2*q2+16*t1*q22)
        vps(14) =
     # +m2*lhm3*dlogq12t*(-16*u1p2*q2-4*u1*t1p2-40*u1*t1*q2+
     #    12*u1*q22-12*u1m1*t1p4-8*u1m1*t1p3*q2-28*u1m1*t1p2*q22-
     #    16*t1p3+16*t1p2*q2-16*t1*q22)
     # +m2*lhm3*dlogq13t*(-32*u1p2*q2-8*u1*t1p2-80*u1*t1*q2+
     #    24*u1*q22-24*u1m1*t1p4-16*u1m1*t1p3*q2-56*u1m1*t1p2*q22-
     #    32*t1p3+32*t1p2*q2-32*t1*q22)
     # +m2*lhpm1*dlogq6u*(8*u1*t1m1*q2+8*u1-8*u1m1*t1*q2+24*
     #    t1-16*q2)
     # +m2*lhpm1*dlogq7u*(8*u1*t1m1*q2+8*u1-8*u1m1*t1*q2+24*
     #    t1-16*q2)
     # +m2*lhpm1*dlogq8u*(-8*u1*t1m1*q2-8*u1+8*u1m1*t1*q2-
     #    24*t1+16*q2)
     # +m2*lhpm1*dlogq9u*(-8*u1*t1m1*q2-8*u1+8*u1m1*t1*q2-
     #    24*t1+16*q2)
     # +m2*lhpm1*dlogq10u*(-8*u1*t1m1*q2-8*u1+8*u1m1*t1*q2-
     #    24*t1+16*q2)
     # +m2*lhpm1*dlogq11u*(-8*u1*t1m1*q2-8*u1+8*u1m1*t1*q2-
     #    24*t1+16*q2)
        vps(15) =
     # +m2*lhpm1*dlogq12u*(8*u1*t1m1*q2+8*u1-8*u1m1*t1*q2+24*
     #    t1-16*q2)
     # +m2*lhpm1*dlogq13u*(16*u1*t1m1*q2+16*u1-16*u1m1*t1*q2+
     #    48*t1-32*q2)
     # +m2*lhpm2*(4*u1p3*t1m1*um1*q2-4*u1p3*um1+4*u1p2*t1m1
     #    *um1*q22-8*u1p2*um1*q2-4*u1*t1p2*um1+8*u1*t1m1*q22+4*u1
     #    *um1*q22-16*u1*q2+8*u1m1*t1*q22+4*t1p2*um1*q2-16*t1*q2
     #    +16*q22)
     # +m2*lhpm3*dlogq6u*(-8*u1p4*t1m1+12*u1p3*t1m1*q2-40*
     #    u1p3-24*u1p2*t1-8*u1p2*t1m1*q22+20*u1p2*q2-8*u1*t1*q2-16*
     #    u1*q22-16*t1p2*q2-8*t1*q22)
     # +m2*lhpm3*dlogq7u*(-8*u1p4*t1m1+12*u1p3*t1m1*q2-40*
     #    u1p3-24*u1p2*t1-8*u1p2*t1m1*q22+20*u1p2*q2-8*u1*t1*q2-16*
     #    u1*q22-16*t1p2*q2-8*t1*q22)
     # +m2*lhpm3*dlogq8u*(8*u1p4*t1m1-12*u1p3*t1m1*q2+40*u1p3
     #    +24*u1p2*t1+8*u1p2*t1m1*q22-20*u1p2*q2+8*u1*t1*q2+16*u1*
     #    q22+16*t1p2*q2+8*t1*q22)
        vps(16) =
     # +m2*lhpm3*dlogq9u*(8*u1p4*t1m1-12*u1p3*t1m1*q2+40*u1p3
     #    +24*u1p2*t1+8*u1p2*t1m1*q22-20*u1p2*q2+8*u1*t1*q2+16*u1*
     #    q22+16*t1p2*q2+8*t1*q22)
     # +m2*lhpm3*dlogq10u*(8*u1p4*t1m1-12*u1p3*t1m1*q2+40*u1p3
     #    +24*u1p2*t1+8*u1p2*t1m1*q22-20*u1p2*q2+8*u1*t1*q2+16*u1*
     #    q22+16*t1p2*q2+8*t1*q22)
     # +m2*lhpm3*dlogq11u*(8*u1p4*t1m1-12*u1p3*t1m1*q2+40*u1p3
     #    +24*u1p2*t1+8*u1p2*t1m1*q22-20*u1p2*q2+8*u1*t1*q2+16*u1*
     #    q22+16*t1p2*q2+8*t1*q22)
     # +m2*lhpm3*dlogq12u*(-8*u1p4*t1m1+12*u1p3*t1m1*q2-40*
     #    u1p3-24*u1p2*t1-8*u1p2*t1m1*q22+20*u1p2*q2-8*u1*t1*q2-16*
     #    u1*q22-16*t1p2*q2-8*t1*q22)
     # +m2*lhpm3*dlogq13u*(-16*u1p4*t1m1+24*u1p3*t1m1*q2-80*
     #    u1p3-48*u1p2*t1-16*u1p2*t1m1*q22+40*u1p2*q2-16*u1*t1*q2-
     #    32*u1*q22-32*t1p2*q2-16*t1*q22)
     # +m2*lhpm5*dlogq6u*(-12*u1p5*t1m1*q2+24*u1p5+16*u1p4*t1
     #    +24*u1p4*t1m1*q22-68*u1p4*q2-72*u1p3*t1*q2-12*u1p3*t1m1*
     #    q23+80*u1p3*q22+80*u1p2*t1*q22-36*u1p2*q23-24*u1*t1*q23
     #    )
        vps(17) =
     # +m2*lhpm5*dlogq7u*(-12*u1p5*t1m1*q2+24*u1p5+16*u1p4*t1
     #    +24*u1p4*t1m1*q22-68*u1p4*q2-72*u1p3*t1*q2-12*u1p3*t1m1*
     #    q23+80*u1p3*q22+80*u1p2*t1*q22-36*u1p2*q23-24*u1*t1*q23
     #    )
     # +m2*lhpm5*dlogq8u*(12*u1p5*t1m1*q2-24*u1p5-16*u1p4*t1-
     #    24*u1p4*t1m1*q22+68*u1p4*q2+72*u1p3*t1*q2+12*u1p3*t1m1*q23
     #    -80*u1p3*q22-80*u1p2*t1*q22+36*u1p2*q23+24*u1*t1*q23)
     # +m2*lhpm5*dlogq9u*(12*u1p5*t1m1*q2-24*u1p5-16*u1p4*t1-
     #    24*u1p4*t1m1*q22+68*u1p4*q2+72*u1p3*t1*q2+12*u1p3*t1m1*q23
     #    -80*u1p3*q22-80*u1p2*t1*q22+36*u1p2*q23+24*u1*t1*q23)
     # +m2*lhpm5*dlogq10u*(12*u1p5*t1m1*q2-24*u1p5-16*u1p4*t1-
     #    24*u1p4*t1m1*q22+68*u1p4*q2+72*u1p3*t1*q2+12*u1p3*t1m1*q23
     #    -80*u1p3*q22-80*u1p2*t1*q22+36*u1p2*q23+24*u1*t1*q23)
     # +m2*lhpm5*dlogq11u*(12*u1p5*t1m1*q2-24*u1p5-16*u1p4*t1-
     #    24*u1p4*t1m1*q22+68*u1p4*q2+72*u1p3*t1*q2+12*u1p3*t1m1*q23
     #    -80*u1p3*q22-80*u1p2*t1*q22+36*u1p2*q23+24*u1*t1*q23)
        vps(18) =
     # +m2*lhpm5*dlogq12u*(-12*u1p5*t1m1*q2+24*u1p5+16*u1p4*t1
     #    +24*u1p4*t1m1*q22-68*u1p4*q2-72*u1p3*t1*q2-12*u1p3*t1m1*
     #    q23+80*u1p3*q22+80*u1p2*t1*q22-36*u1p2*q23-24*u1*t1*q23
     #    )
     # +m2*lhpm5*dlogq13u*(-24*u1p5*t1m1*q2+48*u1p5+32*u1p4*t1
     #    +48*u1p4*t1m1*q22-136*u1p4*q2-144*u1p3*t1*q2-24*u1p3*t1m1*
     #    q23+160*u1p3*q22+160*u1p2*t1*q22-72*u1p2*q23-48*u1*t1*
     #    q23)
     # +m2*log7x2*(-4*u1p2*t1m1*spm1-12*u1*spm1-4*u1m1*
     #    t1p2*spm1-12*t1*spm1)
     # +m2*dlog7*(-32-32*u1*t1m1-32*u1m1*t1)
     # +m2*dlog8*(-32-32*u1*t1m1-32*u1m1*t1)
     # +m2*(4*u1p2*t1m1*um1-16*u1*t1m1*q2*s1m1+32*u1*s1m1
     #    +8*u1m1*t1p2*tm1-16*u1m1*t1*q2*s1m1-4*t1*um1+32*t1*s1m1
     #    -32*q2*s1m1)
     # +xsqm1*log1x2*(16*Bqed)
     # +xsqm1*log1*log5*(-32*Bqed)
     # +xsqm1*log1*log6*(-32*Bqed)
        vps(19) =
     # +xsqm1*log1*(32*Bqed*logdel)
     # +xsqm1*dlog2*(-32*Bqed)
     # +xsqm1*dlog1*(-32*Bqed)
     # +xsqm1*zeta2*(16*Bqed)
     # +log1x2*sqm*(-4*u1p2-8*u1*t1+8*u1*q2-4*t1p2+8*t1
     #    *q2-4*q22)
     # +log1x2*(4*u1p3*spm2+12*u1p2*t1*spm2-4*u1p2*q2*spm2+8
     #    *u1p2*spm1+12*u1*t1p2*spm2-8*u1*t1*q2*spm2+16*u1*t1*spm1-
     #    8*u1*q2*spm1+4*t1p3*spm2-4*t1p2*q2*spm2+8*t1p2*spm1-8*t1*
     #    q2*spm1-8*Bqed)
     # +log1*log5*sqm*(32*u1p2+64*u1*t1-64*u1*q2+32*t1p2-
     #    64*t1*q2+32*q22)
     # +log1*log6*sqm*(-16*u1p2-32*u1*t1+32*u1*q2-16*t1p2
     #    +32*t1*q2-16*q22)
     # +log1*log3*sqm*(8*u1p2+16*u1*t1-16*u1*q2+8*t1p2-16*
     #    t1*q2+8*q22)
     # +log1*log3*(16*Bqed)
        vps(20) =
     # +log1*log4*sqm*(8*u1p2+16*u1*t1-16*u1*q2+8*t1p2-16*
     #    t1*q2+8*q22)
     # +log1*log4*(-16*Bqed)
     # +log1*sqm*logq1*(-8*u1p2-16*u1*t1+16*u1*q2-8*t1p2
     #    +16*t1*q2-8*q22)
        vps(21) =
     # +log1*sqm*(4*u1p4*t1m1*s1m1-4*u1p4*t1m1*spm1-10*
     #    u1p3*t1m1*q2*s1m1+8*u1p3*t1m1*q2*spm1-8*u1p3*t1m1+16*u1p3*
     #    q2*spm2-4*u1p3*spm1+48*u1p2*t1*q2*spm2-20*u1p2*t1*s1m1+8*
     #    u1p2*t1*spm1+8*u1p2*t1m1*q22*s1m1-4*u1p2*t1m1*q22*spm1+
     #    14*u1p2*t1m1*q2-16*u1p2*q22*spm2+16*u1p2*q2*s1m1+16*u1p2*q2
     #    *spm1-12*u1p2+48*u1*t1p2*q2*spm2-20*u1*t1p2*s1m1+8*u1*t1p2
     #    *spm1-32*u1*t1*q22*spm2+52*u1*t1*q2*s1m1+16*u1*t1*q2*spm1
     #    -8*u1*t1-2*u1*t1m1*q23*s1m1-6*u1*t1m1*q22-28*u1*q22*
     #    s1m1-12*u1*q22*spm1+6*u1*q2+4*u1m1*t1p4*s1m1-4*u1m1*
     #    t1p4*spm1-10*u1m1*t1p3*q2*s1m1+8*u1m1*t1p3*q2*spm1-8*u1m1
     #    *t1p3+8*u1m1*t1p2*q22*s1m1-4*u1m1*t1p2*q22*spm1+14*u1m1*
     #    t1p2*q2-2*u1m1*t1*q23*s1m1-6*u1m1*t1*q22+16*t1p3*q2*spm2
     #    -4*t1p3*spm1-16*t1p2*q22*spm2+16*t1p2*q2*s1m1+16*t1p2*q2*
     #    spm1-12*t1p2-28*t1*q22*s1m1-12*t1*q22*spm1+6*t1*q2+12*
     #    q23*s1m1+4*q22)
     # +log3x2*(-8*u1-8*t1+8*q2+8*Bqed)
     # +log3*log4*(-16*u1-16*t1+16*q2-16*Bqed)
        vps(22) =
     # +log3*lhm2*(8*u1*t1p3*tm1-8*u1*t1p2*tm1*q2+4*u1m1*t1p5
     #    *tm1-12*u1m1*t1p4*tm1*q2+12*u1m1*t1p3*tm1*q22-4*u1m1*
     #    t1p2*tm1*q23+12*t1p4*tm1-24*t1p3*tm1*q2+12*t1p2*tm1*q22)
     # +log3*(-8*u1m1*t1p4*tm2+4*u1m1*t1p3*tm1+4*u1m1*t1p2
     #    *tm1*q2-4*t1p2*tm1-32*Bqed*logdel+32*Bqed*logmu)
     # +log4x2*(-8*u1-8*t1+8*q2+8*Bqed)
     # +log4*lhpm2*(4*u1p5*t1m1*um1-4*u1p5*t1m1*um2*q2+4*
     #    u1p5*um2-18*u1p4*t1m1*um1*q2-4*u1p4*t1m1*um2*q22+24*u1p4*
     #    um1+8*u1p4*um2*q2+4*u1p3*t1p2*um2+24*u1p3*t1*um1+18*u1p3*
     #    t1m1*um1*q22-50*u1p3*um1*q2-4*u1p3*um2*q22-4*u1p2*t1p2*
     #    um2*q2-16*u1p2*t1*um1*q2-4*u1p2*t1m1*um1*q23+18*u1p2*um1*
     #    q22)
cjs
     # +log4*lhpm4*u1*(10*u1p5*t1m1*um1*q2-16*u1p5*um1-16*u1p4*
     #    t1*um1-22*u1p4*t1m1*um1*q22+50*u1p4*um1*q2-4*u1p3*t1p2*
     #    um1+40*u1p3*t1*um1*q2+14*u1p3*t1m1*um1*q23-54*u1p3*um1*
     #    q22+12*u1p2*t1p2*um1*q2-32*u1p2*t1*um1*q22-2*u1p2*t1m1*
     #    um1*q24+22*u1p2*um1*q23-12*u1*t1p2*um1*q22+8*u1*t1*
     #    um1*q23-2*u1*um1*q24+4*t1p2*um1*q23)
        vps(23) =
     # +log4*(-4*u1p4*t1m1*um2+4*u1p2*t1*um2+4*u1p2*t1m1*
     #    um1*q2-4*u1p2*um1-4*u1*t1*um1+32*Bqed*logdel)
     # +dlog2*sqm*(32*u1p2+64*u1*t1-64*u1*q2+32*t1p2-64*t1
     #    *q2+32*q22)
     # +dlog3*(-4*u1-4*t1+4*q2)
     # +dlog4*(-4*u1-4*t1+4*q2)
     # +dlog1*sqm*(-16*u1p2-32*u1*t1+32*u1*q2-16*t1p2+
     #    32*t1*q2-16*q22)
     # +zeta2*sqm*(88*u1p2+176*u1*t1-176*u1*q2+88*t1p2-
     #    176*t1*q2+88*q22)
     # +zeta2*lhm1*(4*u1p2+4*u1*t1+8*u1m1*t1p3+4*u1m1*t1p2*
     #    q2-4*t1p2+12*t1*q2-4*q22)
     # +zeta2*lhm3*(-4*u1p2*t1p2+8*u1p2*t1*q2-4*u1p2*q22-8
     #    *u1*t1p3+20*u1*t1p2*q2-16*u1*t1*q22+4*u1*q23-8*u1m1*t1p5
     #    +12*u1m1*t1p4*q2-4*u1m1*t1p2*q23-4*t1p3*q2+8*t1p2*q22-4
     #    *t1*q23)
     # +zeta2*lhpm1*(4*u1p3*t1m1+12*u1*q2+4*t1p2+4*t1*q2-4
     #    *q22)
        vps(24) =
     # +zeta2*lhpm3*(-4*u1p5*t1m1+8*u1p4*t1m1*q2-4*u1p4+4
     #    *u1p3*t1-4*u1p3*t1m1*q22-4*u1p2*t1p2-4*u1p2*t1*q2+8*u1p2*
     #    q22+8*u1*t1p2*q2-4*u1*q23-4*t1p2*q22)
     # +zeta2*lhpm5*(-8*u1p5*t1+4*u1p5*q2+28*u1p4*t1*q2-12*
     #    u1p4*q22-36*u1p3*t1*q22+12*u1p3*q23+20*u1p2*t1*q23-4*u1p2
     #    *q24-4*u1*t1*q24)
     # +zeta2*(-24*u1p3*spm2-72*u1p2*t1*spm2+24*u1p2*q2*
     #    spm2-48*u1p2*spm1-72*u1*t1p2*spm2+48*u1*t1*q2*spm2-96*u1*
     #    t1*spm1+48*u1*q2*spm1+16*u1-24*t1p3*spm2+24*t1p2*q2*spm2
     #    -48*t1p2*spm1+48*t1*q2*spm1+16*t1-16*q2-24*Bqed)
     # +sqm*log8*logq2*(-8*u1p2-16*u1*t1+16*u1*q2-8*t1p2
     #    +16*t1*q2-8*q22)
     # +sqm*dlogq1*(-16*u1p2-32*u1*t1+32*u1*q2-16*t1p2+
     #    32*t1*q2-16*q22)
     # +sqm*dlogq2*(-16*u1p2-32*u1*t1+32*u1*q2-16*t1p2+
     #    32*t1*q2-16*q22)
     # +sqm*dlogq3*(-16*u1p2-32*u1*t1+32*u1*q2-16*t1p2+
     #    32*t1*q2-16*q22)
        vps(25) =
     # +sqm*dlogq4*(16*u1p2+32*u1*t1-32*u1*q2+16*t1p2-32*
     #    t1*q2+16*q22)
     # +sqm*logq3x2*(-8*u1p2-16*u1*t1+16*u1*q2-8*t1p2+
     #    16*t1*q2-8*q22)
     # +log9*lhm2*(-4*u1p2*t1*x1+4*u1p2*t1*x2-4*u1p2*t1m1*
     #    q22*x1+4*u1p2*t1m1*q22*x2+8*u1p2*q2*x1-8*u1p2*q2*x2-16*u1*
     #    t1p2*x1+16*u1*t1p2*x2+28*u1*t1*q2*x1-28*u1*t1*q2*x2+4*u1*
     #    t1m1*q23*x1-4*u1*t1m1*q23*x2-16*u1*q22*x1+16*u1*q22*x2-
     #    12*u1m1*t1p4*x1+12*u1m1*t1p4*x2+24*u1m1*t1p3*q2*x1-24*u1m1*
     #    t1p3*q2*x2-12*u1m1*t1p2*q22*x1+12*u1m1*t1p2*q22*x2-12*t1p3*
     #    x1+12*t1p3*x2+20*t1p2*q2*x1-20*t1p2*q2*x2-4*t1*q22*x1+4*t1
     #    *q22*x2-4*q23*x1+4*q23*x2)
        vps(26) =
     # +log9*lhpm2*(-8*u1p4*t1m1*x1+8*u1p4*t1m1*x2+30*u1p3*
     #    t1m1*q2*x1-30*u1p3*t1m1*q2*x2-32*u1p3*x1+32*u1p3*x2-24*u1p2
     #    *t1*x1+24*u1p2*t1*x2-18*u1p2*t1m1*q22*x1+18*u1p2*t1m1*q22*
     #    x2+44*u1p2*q2*x1-44*u1p2*q2*x2-8*u1*t1p2*x1+8*u1*t1p2*x2+22
     #    *u1*t1*q2*x1-22*u1*t1*q2*x2+4*u1*t1m1*q23*x1-4*u1*t1m1*q23*
     #    x2-10*u1*q22*x1+10*u1*q22*x2-4*u1m1*t1p2*q22*x1+4*u1m1*
     #    t1p2*q22*x2+2*u1m1*t1*q23*x1-2*u1m1*t1*q23*x2+12*t1p2*q2*
     #    x1-12*t1p2*q2*x2-8*t1*q22*x1+8*t1*q22*x2-2*q23*x1+2*q23
     #    *x2)
        vps(27) =
     # +log9*lhpm4*(-10*u1p5*t1m1*q2*x1+10*u1p5*t1m1*q2*x2+
     #    16*u1p5*x1-16*u1p5*x2+8*u1p4*t1*x1-8*u1p4*t1*x2+22*u1p4*t1m1
     #    *q22*x1-22*u1p4*t1m1*q22*x2-46*u1p4*q2*x1+46*u1p4*q2*x2+4*
     #    u1p3*t1p2*x1-4*u1p3*t1p2*x2-12*u1p3*t1*q2*x1+12*u1p3*t1*q2*x2
     #    -14*u1p3*t1m1*q23*x1+14*u1p3*t1m1*q23*x2+42*u1p3*q22*x1-
     #    42*u1p3*q22*x2-12*u1p2*t1p2*q2*x1+12*u1p2*t1p2*q2*x2-4*u1p2*t1
     #    *q22*x1+4*u1p2*t1*q22*x2+2*u1p2*t1m1*q24*x1-2*u1p2*t1m1*
     #    q24*x2-10*u1p2*q23*x1+10*u1p2*q23*x2+12*u1*t1p2*q22*x1-12
     #    *u1*t1p2*q22*x2+12*u1*t1*q23*x1-12*u1*t1*q23*x2-2*u1*q24*x1
     #    +2*u1*q24*x2-4*t1p2*q23*x1+4*t1p2*q23*x2-4*t1*q24*x1+4*
     #    t1*q24*x2)
        vps(28) =
     # +log9*(4*u1p3*t1m1*spm1*x1-4*u1p3*t1m1*spm1*x2-4*u1p2
     #    *t1m1*q2*spm1*x1+4*u1p2*t1m1*q2*spm1*x2+16*u1p2*t1m1*x1-16
     #    *u1p2*t1m1*x2-16*u1p2*q2*spm2*x1+16*u1p2*q2*spm2*x2+8*u1p2*
     #    spm1*x1-8*u1p2*spm1*x2-32*u1*t1*q2*spm2*x1+32*u1*t1*q2*spm2
     #    *x2+8*u1*t1*spm1*x1-8*u1*t1*spm1*x2-12*u1*t1m1*q2*x1+12*u1
     #    *t1m1*q2*x2-12*u1*q2*spm1*x1+12*u1*q2*spm1*x2+36*u1*x1-36*
     #    u1*x2+4*u1m1*t1p3*spm1*x1-4*u1m1*t1p3*spm1*x2-4*u1m1*t1p2*
     #    q2*spm1*x1+4*u1m1*t1p2*q2*spm1*x2+20*u1m1*t1p2*x1-20*u1m1*
     #    t1p2*x2-6*u1m1*t1*q2*x1+6*u1m1*t1*q2*x2-16*t1p2*q2*spm2*x1
     #    +16*t1p2*q2*spm2*x2+8*t1p2*spm1*x1-8*t1p2*spm1*x2-12*t1*q2
     #    *spm1*x1+12*t1*q2*spm1*x2+32*t1*x1-32*t1*x2-2*q2*x1+2*q2*
     #    x2)
        vps(29) =
     # +log10*lhm2*(4*u1p2*t1*x1-4*u1p2*t1*x2+4*u1p2*t1m1*q22
     #    *x1-4*u1p2*t1m1*q22*x2-8*u1p2*q2*x1+8*u1p2*q2*x2+16*u1*t1p2
     #    *x1-16*u1*t1p2*x2-28*u1*t1*q2*x1+28*u1*t1*q2*x2-4*u1*t1m1*
     #    q23*x1+4*u1*t1m1*q23*x2+16*u1*q22*x1-16*u1*q22*x2+12*
     #    u1m1*t1p4*x1-12*u1m1*t1p4*x2-24*u1m1*t1p3*q2*x1+24*u1m1*
     #    t1p3*q2*x2+12*u1m1*t1p2*q22*x1-12*u1m1*t1p2*q22*x2+12*t1p3*
     #    x1-12*t1p3*x2-20*t1p2*q2*x1+20*t1p2*q2*x2+4*t1*q22*x1-4*t1
     #    *q22*x2+4*q23*x1-4*q23*x2)
     # +log10*lhpm2*(8*u1p4*t1m1*x1-8*u1p4*t1m1*x2-30*u1p3*
     #    t1m1*q2*x1+30*u1p3*t1m1*q2*x2+32*u1p3*x1-32*u1p3*x2+24*u1p2
     #    *t1*x1-24*u1p2*t1*x2+18*u1p2*t1m1*q22*x1-18*u1p2*t1m1*q22*
     #    x2-44*u1p2*q2*x1+44*u1p2*q2*x2+8*u1*t1p2*x1-8*u1*t1p2*x2-22
     #    *u1*t1*q2*x1+22*u1*t1*q2*x2-4*u1*t1m1*q23*x1+4*u1*t1m1*q23*
     #    x2+10*u1*q22*x1-10*u1*q22*x2+4*u1m1*t1p2*q22*x1-4*u1m1*
     #    t1p2*q22*x2-2*u1m1*t1*q23*x1+2*u1m1*t1*q23*x2-12*t1p2*q2*
     #    x1+12*t1p2*q2*x2+8*t1*q22*x1-8*t1*q22*x2+2*q23*x1-2*q23
     #    *x2)
        vps(30) =
     # +log10*lhpm4*(10*u1p5*t1m1*q2*x1-10*u1p5*t1m1*q2*x2-16
     #    *u1p5*x1+16*u1p5*x2-8*u1p4*t1*x1+8*u1p4*t1*x2-22*u1p4*t1m1*
     #    q22*x1+22*u1p4*t1m1*q22*x2+46*u1p4*q2*x1-46*u1p4*q2*x2-4*
     #    u1p3*t1p2*x1+4*u1p3*t1p2*x2+12*u1p3*t1*q2*x1-12*u1p3*t1*q2*x2
     #    +14*u1p3*t1m1*q23*x1-14*u1p3*t1m1*q23*x2-42*u1p3*q22*x1+
     #    42*u1p3*q22*x2+12*u1p2*t1p2*q2*x1-12*u1p2*t1p2*q2*x2+4*u1p2*t1
     #    *q22*x1-4*u1p2*t1*q22*x2-2*u1p2*t1m1*q24*x1+2*u1p2*t1m1*
     #    q24*x2+10*u1p2*q23*x1-10*u1p2*q23*x2-12*u1*t1p2*q22*x1+12
     #    *u1*t1p2*q22*x2-12*u1*t1*q23*x1+12*u1*t1*q23*x2+2*u1*q24*x1
     #    -2*u1*q24*x2+4*t1p2*q23*x1-4*t1p2*q23*x2+4*t1*q24*x1-4*
     #    t1*q24*x2)
        vps(31) =
     # +log10*(-4*u1p3*t1m1*spm1*x1+4*u1p3*t1m1*spm1*x2+4*
     #    u1p2*t1m1*q2*spm1*x1-4*u1p2*t1m1*q2*spm1*x2-16*u1p2*t1m1*x1
     #    +16*u1p2*t1m1*x2+16*u1p2*q2*spm2*x1-16*u1p2*q2*spm2*x2-8*
     #    u1p2*spm1*x1+8*u1p2*spm1*x2+32*u1*t1*q2*spm2*x1-32*u1*t1*q2*
     #    spm2*x2-8*u1*t1*spm1*x1+8*u1*t1*spm1*x2+12*u1*t1m1*q2*x1-
     #    12*u1*t1m1*q2*x2+12*u1*q2*spm1*x1-12*u1*q2*spm1*x2-36*u1*x1
     #    +36*u1*x2-4*u1m1*t1p3*spm1*x1+4*u1m1*t1p3*spm1*x2+4*u1m1
     #    *t1p2*q2*spm1*x1-4*u1m1*t1p2*q2*spm1*x2-20*u1m1*t1p2*x1+20*
     #    u1m1*t1p2*x2+6*u1m1*t1*q2*x1-6*u1m1*t1*q2*x2+16*t1p2*q2*
     #    spm2*x1-16*t1p2*q2*spm2*x2-8*t1p2*spm1*x1+8*t1p2*spm1*x2+
     #    12*t1*q2*spm1*x1-12*t1*q2*spm1*x2-32*t1*x1+32*t1*x2+2*q2*x1
     #    -2*q2*x2)
     # +lhm1*dlogq6t*(-4*u1p2-4*u1*t1-8*u1m1*t1p3-4*u1m1*
     #    t1p2*q2+4*t1p2-12*t1*q2+4*q22)
     # +lhm1*dlogq7t*(-4*u1p2-4*u1*t1-8*u1m1*t1p3-4*u1m1*
     #    t1p2*q2+4*t1p2-12*t1*q2+4*q22)
     # +lhm1*dlogq8t*(4*u1p2+4*u1*t1+8*u1m1*t1p3+4*u1m1*t1p2*
     #    q2-4*t1p2+12*t1*q2-4*q22)
        vps(32) =
     # +lhm1*dlogq9t*(4*u1p2+4*u1*t1+8*u1m1*t1p3+4*u1m1*t1p2*
     #    q2-4*t1p2+12*t1*q2-4*q22)
     # +lhm1*dlogq10t*(4*u1p2+4*u1*t1+8*u1m1*t1p3+4*u1m1*t1p2
     #    *q2-4*t1p2+12*t1*q2-4*q22)
     # +lhm1*dlogq11t*(4*u1p2+4*u1*t1+8*u1m1*t1p3+4*u1m1*t1p2
     #    *q2-4*t1p2+12*t1*q2-4*q22)
     # +lhm1*dlogq12t*(-4*u1p2-4*u1*t1-8*u1m1*t1p3-4*u1m1*
     #    t1p2*q2+4*t1p2-12*t1*q2+4*q22)
     # +lhm1*dlogq13t*(-8*u1p2-8*u1*t1-16*u1m1*t1p3-8*u1m1*
     #    t1p2*q2+8*t1p2-24*t1*q2+8*q22)
     # +lhm3*dlogq6t*(4*u1p2*t1p2-8*u1p2*t1*q2+4*u1p2*q22+8*u1
     #    *t1p3-20*u1*t1p2*q2+16*u1*t1*q22-4*u1*q23+8*u1m1*t1p5-12
     #    *u1m1*t1p4*q2+4*u1m1*t1p2*q23+4*t1p3*q2-8*t1p2*q22+4*t1*
     #    q23)
     # +lhm3*dlogq7t*(4*u1p2*t1p2-8*u1p2*t1*q2+4*u1p2*q22+8*u1
     #    *t1p3-20*u1*t1p2*q2+16*u1*t1*q22-4*u1*q23+8*u1m1*t1p5-12
     #    *u1m1*t1p4*q2+4*u1m1*t1p2*q23+4*t1p3*q2-8*t1p2*q22+4*t1*
     #    q23)
        vps(33) =
     # +lhm3*dlogq8t*(-4*u1p2*t1p2+8*u1p2*t1*q2-4*u1p2*q22-8
     #    *u1*t1p3+20*u1*t1p2*q2-16*u1*t1*q22+4*u1*q23-8*u1m1*t1p5
     #    +12*u1m1*t1p4*q2-4*u1m1*t1p2*q23-4*t1p3*q2+8*t1p2*q22-4
     #    *t1*q23)
     # +lhm3*dlogq9t*(-4*u1p2*t1p2+8*u1p2*t1*q2-4*u1p2*q22-8
     #    *u1*t1p3+20*u1*t1p2*q2-16*u1*t1*q22+4*u1*q23-8*u1m1*t1p5
     #    +12*u1m1*t1p4*q2-4*u1m1*t1p2*q23-4*t1p3*q2+8*t1p2*q22-4
     #    *t1*q23)
     # +lhm3*dlogq10t*(-4*u1p2*t1p2+8*u1p2*t1*q2-4*u1p2*q22-
     #    8*u1*t1p3+20*u1*t1p2*q2-16*u1*t1*q22+4*u1*q23-8*u1m1*t1p5
     #    +12*u1m1*t1p4*q2-4*u1m1*t1p2*q23-4*t1p3*q2+8*t1p2*q22-4
     #    *t1*q23)
     # +lhm3*dlogq11t*(-4*u1p2*t1p2+8*u1p2*t1*q2-4*u1p2*q22-
     #    8*u1*t1p3+20*u1*t1p2*q2-16*u1*t1*q22+4*u1*q23-8*u1m1*t1p5
     #    +12*u1m1*t1p4*q2-4*u1m1*t1p2*q23-4*t1p3*q2+8*t1p2*q22-4
     #    *t1*q23)
        vps(34) =
     # +lhm3*dlogq12t*(4*u1p2*t1p2-8*u1p2*t1*q2+4*u1p2*q22+8*
     #    u1*t1p3-20*u1*t1p2*q2+16*u1*t1*q22-4*u1*q23+8*u1m1*t1p5-
     #    12*u1m1*t1p4*q2+4*u1m1*t1p2*q23+4*t1p3*q2-8*t1p2*q22+4*t1
     #    *q23)
     # +lhm3*dlogq13t*(8*u1p2*t1p2-16*u1p2*t1*q2+8*u1p2*q22+16
     #    *u1*t1p3-40*u1*t1p2*q2+32*u1*t1*q22-8*u1*q23+16*u1m1*t1p5
     #    -24*u1m1*t1p4*q2+8*u1m1*t1p2*q23+8*t1p3*q2-16*t1p2*q22+
     #    8*t1*q23)
     # +lhpm1*dlogq6u*(-4*u1p3*t1m1-12*u1*q2-4*t1p2-4*t1*q2
     #    +4*q22)
     # +lhpm1*dlogq7u*(-4*u1p3*t1m1-12*u1*q2-4*t1p2-4*t1*q2
     #    +4*q22)
     # +lhpm1*dlogq8u*(4*u1p3*t1m1+12*u1*q2+4*t1p2+4*t1*q2-4
     #    *q22)
     # +lhpm1*dlogq9u*(4*u1p3*t1m1+12*u1*q2+4*t1p2+4*t1*q2-4
     #    *q22)
     # +lhpm1*dlogq10u*(4*u1p3*t1m1+12*u1*q2+4*t1p2+4*t1*q2-
     #    4*q22)
        vps(35) =
     # +lhpm1*dlogq11u*(4*u1p3*t1m1+12*u1*q2+4*t1p2+4*t1*q2-
     #    4*q22)
     # +lhpm1*dlogq12u*(-4*u1p3*t1m1-12*u1*q2-4*t1p2-4*t1*q2
     #    +4*q22)
     # +lhpm1*dlogq13u*(-8*u1p3*t1m1-24*u1*q2-8*t1p2-8*t1*q2
     #    +8*q22)
     # +lhpm2*(4*u1p4*t1m1*um1*q2-4*u1p4*um1+4*u1p3*t1m1*
     #    um1*q22-6*u1p3*t1m1*q2-8*u1p3*um1*q2+8*u1p3-4*u1p2*t1p2*
     #    um1+4*u1p2*t1+4*u1p2*um1*q22-4*u1p2*q2+4*u1*t1p2*um1*q2
     #    +4*u1*t1p2-10*u1*t1*q2-2*u1*t1m1*q23+8*u1*q22-2*u1m1*t1
     #    *q23-4*t1p2*q2+8*t1*q22-4*q23)
     # +lhpm3*dlogq6u*(4*u1p5*t1m1-8*u1p4*t1m1*q2+4*u1p4-4*
     #    u1p3*t1+4*u1p3*t1m1*q22+4*u1p2*t1p2+4*u1p2*t1*q2-8*u1p2*
     #    q22-8*u1*t1p2*q2+4*u1*q23+4*t1p2*q22)
     # +lhpm3*dlogq7u*(4*u1p5*t1m1-8*u1p4*t1m1*q2+4*u1p4-4*
     #    u1p3*t1+4*u1p3*t1m1*q22+4*u1p2*t1p2+4*u1p2*t1*q2-8*u1p2*
     #    q22-8*u1*t1p2*q2+4*u1*q23+4*t1p2*q22)
        vps(36) =
     # +lhpm3*dlogq8u*(-4*u1p5*t1m1+8*u1p4*t1m1*q2-4*u1p4+4
     #    *u1p3*t1-4*u1p3*t1m1*q22-4*u1p2*t1p2-4*u1p2*t1*q2+8*u1p2*
     #    q22+8*u1*t1p2*q2-4*u1*q23-4*t1p2*q22)
     # +lhpm3*dlogq9u*(-4*u1p5*t1m1+8*u1p4*t1m1*q2-4*u1p4+4
     #    *u1p3*t1-4*u1p3*t1m1*q22-4*u1p2*t1p2-4*u1p2*t1*q2+8*u1p2*
     #    q22+8*u1*t1p2*q2-4*u1*q23-4*t1p2*q22)
     # +lhpm3*dlogq10u*(-4*u1p5*t1m1+8*u1p4*t1m1*q2-4*u1p4+
     #    4*u1p3*t1-4*u1p3*t1m1*q22-4*u1p2*t1p2-4*u1p2*t1*q2+8*u1p2*
     #    q22+8*u1*t1p2*q2-4*u1*q23-4*t1p2*q22)
     # +lhpm3*dlogq11u*(-4*u1p5*t1m1+8*u1p4*t1m1*q2-4*u1p4+
     #    4*u1p3*t1-4*u1p3*t1m1*q22-4*u1p2*t1p2-4*u1p2*t1*q2+8*u1p2*
     #    q22+8*u1*t1p2*q2-4*u1*q23-4*t1p2*q22)
     # +lhpm3*dlogq12u*(4*u1p5*t1m1-8*u1p4*t1m1*q2+4*u1p4-4*
     #    u1p3*t1+4*u1p3*t1m1*q22+4*u1p2*t1p2+4*u1p2*t1*q2-8*u1p2*
     #    q22-8*u1*t1p2*q2+4*u1*q23+4*t1p2*q22)
     # +lhpm3*dlogq13u*(8*u1p5*t1m1-16*u1p4*t1m1*q2+8*u1p4-8*
     #    u1p3*t1+8*u1p3*t1m1*q22+8*u1p2*t1p2+8*u1p2*t1*q2-16*u1p2*
     #    q22-16*u1*t1p2*q2+8*u1*q23+8*t1p2*q22)
        vps(37) =
     # +lhpm5*dlogq6u*(8*u1p5*t1-4*u1p5*q2-28*u1p4*t1*q2+12*
     #    u1p4*q22+36*u1p3*t1*q22-12*u1p3*q23-20*u1p2*t1*q23+4*u1p2
     #    *q24+4*u1*t1*q24)
     # +lhpm5*dlogq7u*(8*u1p5*t1-4*u1p5*q2-28*u1p4*t1*q2+12*
     #    u1p4*q22+36*u1p3*t1*q22-12*u1p3*q23-20*u1p2*t1*q23+4*u1p2
     #    *q24+4*u1*t1*q24)
     # +lhpm5*dlogq8u*(-8*u1p5*t1+4*u1p5*q2+28*u1p4*t1*q2-12*
     #    u1p4*q22-36*u1p3*t1*q22+12*u1p3*q23+20*u1p2*t1*q23-4*u1p2
     #    *q24-4*u1*t1*q24)
     # +lhpm5*dlogq9u*(-8*u1p5*t1+4*u1p5*q2+28*u1p4*t1*q2-12*
     #    u1p4*q22-36*u1p3*t1*q22+12*u1p3*q23+20*u1p2*t1*q23-4*u1p2
     #    *q24-4*u1*t1*q24)
     # +lhpm5*dlogq10u*(-8*u1p5*t1+4*u1p5*q2+28*u1p4*t1*q2-12
     #    *u1p4*q22-36*u1p3*t1*q22+12*u1p3*q23+20*u1p2*t1*q23-4*
     #    u1p2*q24-4*u1*t1*q24)
     # +lhpm5*dlogq11u*(-8*u1p5*t1+4*u1p5*q2+28*u1p4*t1*q2-12
     #    *u1p4*q22-36*u1p3*t1*q22+12*u1p3*q23+20*u1p2*t1*q23-4*
     #    u1p2*q24-4*u1*t1*q24)
        vps(38) =
     # +lhpm5*dlogq12u*(8*u1p5*t1-4*u1p5*q2-28*u1p4*t1*q2+12*
     #    u1p4*q22+36*u1p3*t1*q22-12*u1p3*q23-20*u1p2*t1*q23+4*u1p2
     #    *q24+4*u1*t1*q24)
     # +lhpm5*dlogq13u*(16*u1p5*t1-8*u1p5*q2-56*u1p4*t1*q2+24*
     #    u1p4*q22+72*u1p3*t1*q22-24*u1p3*q23-40*u1p2*t1*q23+8*u1p2
     #    *q24+8*u1*t1*q24)
     # +dlog6*(-16*Bqed)
     # +dlog5*(16*Bqed)
     # +log7x2*(-4*u1p3*spm2-12*u1p2*t1*spm2+4*u1p2*q2*spm2
     #    -8*u1p2*spm1-12*u1*t1p2*spm2+8*u1*t1*q2*spm2-16*u1*t1*
     #    spm1+8*u1*q2*spm1-4*t1p3*spm2+4*t1p2*q2*spm2-8*t1p2*spm1
     #    +8*t1*q2*spm1)
     # +dlog7*(-16*u1-16*t1+16*q2)
     # +dlog8*(-16*u1-16*t1+16*q2)
        vps(39) =
     # +(4*u1p3*t1m1*um1-4*u1p2*t1m1*q2*s1m1-4*u1p2*t1m1+
     #    8*u1p2*s1m1-16*u1p2*spm1-4*u1*t1*um1+16*u1*t1*s1m1-32*u1*
     #    t1*spm1+4*u1*t1m1*q22*s1m1+6*u1*t1m1*q2-20*u1*q2*s1m1-
     #    28*u1+8*u1m1*t1p3*tm1-4*u1m1*t1p2*q2*s1m1-8*u1m1*t1p2+4*
     #    u1m1*t1*q22*s1m1+6*u1m1*t1*q2+8*t1p2*s1m1-16*t1p2*spm1-
     #    20*t1*q2*s1m1-24*t1+8*q22*s1m1+12*q2+32*Bqed*logdel2-32
     #    *Bqed*logdel*logmu)


c sum contributions and multiply by common factor:
        splusv = 0.d0
        do 10 i = 1,39
c           write(6,1000) i,vps(i)
 10     splusv = splusv + vps(i)
c
        svcacf_l = splusv
c Divide by -8 to get normalization right
        vokl = svcacf_l/(-1.d0*8.0d0)
c
c       do 20 ii = 1,39
c 20        write(6,2000) ii,vps(ii)
 1000   format('vps(',i3,')  =  ',d20.10)
 2000   format('vps(',i3,')  =  ',d20.10)
      return
      end
      double precision function vqedl(sp,t1,u1,m2,q2,del,s4max,s4)
c
c Here we compute the expression for the CF*CF part of the
c soft plus virtual matrix element.
c NOTE: residues for external lines have not been included yet.
c
      implicit double precision (a-z)
      integer i,ii
      dimension vps(110)
      parameter( pi = 3.14159265359d0 )
      data zeta2/1.644934066848226d+00/
c
c      logdel = dlog(del/m2)
c      logdel2 = logdel*logdel
C HERE WE REPLACE THE LOGDEL TERMS BY INTEGRALS OVER S4
        DIST = S4MAX - DEL
        L11 = DLOG(S4/M2)
        L12 = DLOG(S4MAX/M2)
        LOGDEL = L12 - DIST/S4
        LOGDEL2 = L12*L12 -2.0D0*DIST*L11/S4
c
      s = sp + q2
      mu2 = m2
      cep = 1.d0/16.d0/pi/pi
      s1 = 4.0d0*m2 -s
      s1m1 = 1.d0/s1
      t = t1+m2
      u = u1+m2
      xsq = dsqrt(1.0d0 - 4.0d0*m2/s)
      ysq = dsqrt(1.0d0 - 4.0d0*m2/q2)
      x = (1.d0 - xsq)/(1.d0 + xsq)
      sq = s*xsq
      sqm = 1.d0/sq
      y = (1.d0-ysq)/(1.d0+ysq)
      x1 = (1.d0+ysq)/2.d0
      x2 = 1.0d0 - x1
      aa = dsqrt(4.d0*m2 -q2)
      aa2 = 4.d0*m2 -q2
      bb = dsqrt(-q2)
      cc = dsqrt(4.d0*m2*q2/s - q2)
      lat = t*t + m2*m2 + q2*q2 - 2.d0*t*m2 - 2.d0*t*q2 - 2*m2*q2
      lau = u*u + m2*m2 + q2*q2 - 2.d0*u*m2 - 2.d0*u*q2 - 2*m2*q2
      lh = dsqrt(lat)
      lhp = dsqrt(lau)
      log1 = dlog(x)
      log2 = dlog(s/m2)
      log3 = dlog(-t1/m2)
      log3x2 = log3*log3
      log4 = dlog(-u1/m2)
      log4x2 = log4*log4
      log5 = dlog(1.d0-x)
      log6 = dlog(1.d0+x)
      log7 = dlog(-y)
      log7x2 = log7*log7
      log8 = dlog(-q2/s)
      log9 = dlog(x1)
      log10 = dlog(-x2)
      logmu = dlog(mu2/m2)
      logq1 = dlog((aa+cc)*(aa+cc)/4.d0/m2)
      logq2 = dlog((aa-bb)/(aa+bb))
      logq3 = dlog((aa-cc)/(aa-bb))
      logq3x2 = logq3*logq3
      dlog1 = dilog(-x)
      dlog2 = dilog(x)
      dlog3 = dilog(t1/m2 + 1.d0)
      dlog4 = dilog(u1/m2 + 1.d0)
      dlog5 = dilog(1.d0-u1/x/t1)
      dlog6 = dilog(1.d0-t1/x/u1)
      dlog7 = dilog(q2*x1/m2)
      dlog8 = dilog(q2*x2/m2)
      dlogq1 = dilog((aa-bb)/(aa-cc))
      dlogq2 = dilog((aa-cc)/(aa+bb))
      dlogq3 = dilog((bb+cc)/(aa+cc))
      dlogq4 = dilog((cc-bb)/(aa+cc))
      dlogq5 = dilog(s/sp)
      dlogq6t = dilog((t1+aa2+lh)/(t1-ysq*(lh+q2*ysq)))
      dlogq6u = dilog((u1+aa2+lhp)/(u1-ysq*(lhp+q2*ysq)))
      dlogq7t = dilog((t1+aa2+lh)/(t1+ysq*(lh-q2*ysq)))
      dlogq7u = dilog((u1+aa2+lhp)/(u1+ysq*(lhp-q2*ysq)))
      dlogq8t = dilog((t1+aa2-lh)/(t1-ysq*(lh+q2*ysq)))
      dlogq8u = dilog((u1+aa2-lhp)/(u1-ysq*(lhp+q2*ysq)))
      dlogq9t = dilog((t1+aa2-lh)/(t1+ysq*(lh-q2*ysq)))
      dlogq9u = dilog((u1+aa2-lhp)/(u1+ysq*(lhp-q2*ysq)))
      dlogq10t = dilog( (t1*(q2 - t - m2 - lh) - 2.d0*m2*lh)/
     &     (t1*(q2 - t - m2 + lh)))
      dlogq10u = dilog( (u1*(q2 - u - m2 - lhp) - 2.d0*m2*lhp)/
     &     (u1*(q2 - u - m2 + lhp)))
      dlogq11t = dilog( (t1*(q2 - t - m2 - lh) - 2.d0*m2*lh)/
     &     (t1*(q2 - t - m2 - lh)))
      dlogq11u = dilog( (u1*(q2 - u - m2 - lhp) - 2.d0*m2*lhp)/
     &     (u1*(q2 - u - m2 - lhp)))
      dlogq12t = dilog( (q2 - t - m2 + lh)/(q2 - t - m2 - lh))
      dlogq12u = dilog( (q2 - u - m2 + lhp)/(q2 - u - m2 - lhp))
      dlogq13t = dilog( (m2 - t - lh)/(m2 - t))
      dlogq13u = dilog( (m2 - u - lhp)/(m2 - u))
c More useful definitions:
      CF2 = 16.d0/9.d0
      m22 = m2*m2
      m23 = m2*m22
      m24 = m22*m22
      t1p2 = t1*t1
      t1p3 = t1*t1p2
      t1p4 = t1*t1p3
      t1p5 = t1*t1p4
cjs      t1p6 = t1*t1p5
cjs      t1p7 = t1*t1p6
      t1m1 = 1.d0/t1
      t1m2 = t1m1*t1m1
      t1m3 = t1m2*t1m1
      u1p2 = u1*u1
      u1p3 = u1*u1p2
      u1p4 = u1*u1p3
      u1p5 = u1*u1p4
cjs      u1p6 = u1*u1p5
cjs      u1p7 = u1*u1p6
      u1m1 = 1.d0/u1
      u1m2 = u1m1*u1m1
      u1m3 = u1m1*u1m2
      um1 = 1.d0/u
      um2 = um1*um1
      tm1 = 1.d0/t
      tm2 = tm1*tm1
      q22 = q2*q2
      q23 = q2*q22
      q24 = q22*q22
      q25 = q22*q23
      tb = t1m1*u1m1
      sm1 = 1.d0/s
      sm2 = sm1*sm1
      sm3 = sm1*sm2
      sqm1 = 1.d0/sq
      spm1 = 1.d0/sp
      spm2 = spm1*spm1
      spm3 = spm1*spm2
      spm4 = spm2*spm2
      lhm1 = 1.d0/lh
      lhm2 = lhm1*lhm1
      lhm3 = lhm1*lhm2
      lhm4 = lhm2*lhm2
      lhm5 = lhm2*lhm3
      lhpm1 = 1.d0/lhp
      lhpm2 = lhpm1*lhpm1
      lhpm3 = lhpm1*lhpm2
      lhpm4 = lhpm2*lhpm2
      lhpm5 = lhpm2*lhpm3
      xsqm1 = 1.d0/xsq
      log1x2 = log1*log1
      Bqed = -s + m2*sp*sp*t1m1*u1m1
      Mqed =2*m22*u1*t1m2 + 2*m22*t1m1 - m2*t1m1*s
     #  + 2*m22*t1*u1m2 + 2*m22*u1m1 - m2*u1m1*s
c
c Here is the matrix element.
c
c   splusv =
        vps(1) =
     # +m23*log3*lhm2*(-64*u1p2*t1m1*tm1-64*u1*tm1+64*u1m1
     #    *t1p2*tm1+64*t1*tm1)
     # +m23*log3*lhm4*(32*u1p2*tm1*q2-96*u1*t1*tm1*q2-288*
     #    u1m1*t1p3*tm1*q2-416*t1p2*tm1*q2)
     # +m23*log4*lhpm2*(64*u1p2*t1m1*um1+64*u1*um1-64*u1m1*
     #    t1p2*um1-64*t1*um1)
     # +m23*log4*lhpm4*(-288*u1p3*t1m1*um1*q2-416*u1p2*um1*q2
     #    -96*u1*t1*um1*q2+32*t1p2*um1*q2)
     # +m23*zeta2*lhm3*(-64*u1p2*t1m1-64*u1+64*u1m1*t1p2+
     #    64*t1)
     # +m23*zeta2*lhm5*(32*u1p2*q2-96*u1*t1*q2-288*u1m1*t1p3*
     #    q2-416*t1p2*q2)
     # +m23*zeta2*lhpm3*(64*u1p2*t1m1+64*u1-64*u1m1*t1p2-64
     #    *t1)
     # +m23*zeta2*lhpm5*(-288*u1p3*t1m1*q2-416*u1p2*q2-96*u1
     #    *t1*q2+32*t1p2*q2)
     # +m23*lhm3*dlogq6t*(64*u1p2*t1m1+64*u1-64*u1m1*t1p2-64*
     #    t1)
        vps(2) =
     # +m23*lhm3*dlogq7t*(64*u1p2*t1m1+64*u1-64*u1m1*t1p2-64*
     #    t1)
     # +m23*lhm3*dlogq8t*(-64*u1p2*t1m1-64*u1+64*u1m1*t1p2+
     #    64*t1)
     # +m23*lhm3*dlogq9t*(-64*u1p2*t1m1-64*u1+64*u1m1*t1p2+
     #    64*t1)
     # +m23*lhm3*dlogq10t*(-64*u1p2*t1m1-64*u1+64*u1m1*t1p2
     #    +64*t1)
     # +m23*lhm3*dlogq11t*(-64*u1p2*t1m1-64*u1+64*u1m1*t1p2
     #    +64*t1)
     # +m23*lhm3*dlogq12t*(64*u1p2*t1m1+64*u1-64*u1m1*t1p2-64
     #    *t1)
     # +m23*lhm3*dlogq13t*(128*u1p2*t1m1+128*u1-128*u1m1*t1p2
     #    -128*t1)
     # +m23*lhm5*dlogq6t*(-32*u1p2*q2+96*u1*t1*q2+288*u1m1*
     #    t1p3*q2+416*t1p2*q2)
     # +m23*lhm5*dlogq7t*(-32*u1p2*q2+96*u1*t1*q2+288*u1m1*
     #    t1p3*q2+416*t1p2*q2)
        vps(3) =
     # +m23*lhm5*dlogq8t*(32*u1p2*q2-96*u1*t1*q2-288*u1m1*t1p3*
     #    q2-416*t1p2*q2)
     # +m23*lhm5*dlogq9t*(32*u1p2*q2-96*u1*t1*q2-288*u1m1*t1p3*
     #    q2-416*t1p2*q2)
     # +m23*lhm5*dlogq10t*(32*u1p2*q2-96*u1*t1*q2-288*u1m1*t1p3*
     #    q2-416*t1p2*q2)
     # +m23*lhm5*dlogq11t*(32*u1p2*q2-96*u1*t1*q2-288*u1m1*t1p3*
     #    q2-416*t1p2*q2)
     # +m23*lhm5*dlogq12t*(-32*u1p2*q2+96*u1*t1*q2+288*u1m1*
     #    t1p3*q2+416*t1p2*q2)
     # +m23*lhm5*dlogq13t*(-64*u1p2*q2+192*u1*t1*q2+576*u1m1*
     #    t1p3*q2+832*t1p2*q2)
     # +m23*lhpm3*dlogq6u*(-64*u1p2*t1m1-64*u1+64*u1m1*t1p2
     #    +64*t1)
     # +m23*lhpm3*dlogq7u*(-64*u1p2*t1m1-64*u1+64*u1m1*t1p2
     #    +64*t1)
     # +m23*lhpm3*dlogq8u*(64*u1p2*t1m1+64*u1-64*u1m1*t1p2-64
     #    *t1)
        vps(4) =
     # +m23*lhpm3*dlogq9u*(64*u1p2*t1m1+64*u1-64*u1m1*t1p2-64
     #    *t1)
     # +m23*lhpm3*dlogq10u*(64*u1p2*t1m1+64*u1-64*u1m1*t1p2-
     #    64*t1)
     # +m23*lhpm3*dlogq11u*(64*u1p2*t1m1+64*u1-64*u1m1*t1p2-
     #    64*t1)
     # +m23*lhpm3*dlogq12u*(-64*u1p2*t1m1-64*u1+64*u1m1*t1p2
     #    +64*t1)
     # +m23*lhpm3*dlogq13u*(-128*u1p2*t1m1-128*u1+128*u1m1*
     #    t1p2+128*t1)
     # +m23*lhpm5*dlogq6u*(288*u1p3*t1m1*q2+416*u1p2*q2+96*u1*t1
     #    *q2-32*t1p2*q2)
     # +m23*lhpm5*dlogq7u*(288*u1p3*t1m1*q2+416*u1p2*q2+96*u1*t1
     #    *q2-32*t1p2*q2)
     # +m23*lhpm5*dlogq8u*(-288*u1p3*t1m1*q2-416*u1p2*q2-96*u1
     #    *t1*q2+32*t1p2*q2)
     # +m23*lhpm5*dlogq9u*(-288*u1p3*t1m1*q2-416*u1p2*q2-96*u1
     #    *t1*q2+32*t1p2*q2)
        vps(5) =
     # +m23*lhpm5*dlogq10u*(-288*u1p3*t1m1*q2-416*u1p2*q2-96*
     #    u1*t1*q2+32*t1p2*q2)
     # +m23*lhpm5*dlogq11u*(-288*u1p3*t1m1*q2-416*u1p2*q2-96*
     #    u1*t1*q2+32*t1p2*q2)
     # +m23*lhpm5*dlogq12u*(288*u1p3*t1m1*q2+416*u1p2*q2+96*u1*
     #    t1*q2-32*t1p2*q2)
     # +m23*lhpm5*dlogq13u*(576*u1p3*t1m1*q2+832*u1p2*q2+192*u1*
     #    t1*q2-64*t1p2*q2)
     # +m22*log1*log5*sqm*(-256-128*u1*t1m1-128*u1m1*t1)
     # +m22*log1*log6*sqm*(256+128*u1*t1m1+128*u1m1*t1)
     # +m22*log1*log3*sqm*(-128-64*u1*t1m1-64*u1m1*t1)
     # +m22*log1*log4*sqm*(-128-64*u1*t1m1-64*u1m1*t1)
     # +m22*log1*sqm*logq1*(128+64*u1*t1m1+64*u1m1*t1)
     # +m22*log1*sqm*(-64*u1*t1m1*q2*s1m1+128*u1*s1m1-64
     #    *u1m1*t1*q2*s1m1+128*t1*s1m1-128*q2*s1m1)
     # +m22*log3*lhm2*(32*u1p2*t1m1*tm1*q2-128*u1p2*tm1+16*u1
     #    *t1p2*tm2-112*u1*t1*tm1+16*u1*t1*tm2*q2+128*u1*tm1*q2-16*
     #    u1m1*t1p4*tm2-16*u1m1*t1p3*tm1-16*u1m1*t1p3*tm2*q2-64*
     #    u1m1*t1p2*tm1*q2+32*t1*tm1*q2)
        vps(6) =
     # +m22*log3*lhm4*(16*u1p2*t1p2*tm1+16*u1p2*tm1*q22+96*u1
     #    *t1p3*tm1-464*u1*t1p2*tm1*q2+80*u1*t1*tm1*q22+96*u1m1*t1p5
     #    *tm1-496*u1m1*t1p4*tm1*q2+304*u1m1*t1p3*tm1*q22+176*t1p4*
     #    tm1-1024*t1p3*tm1*q2+304*t1p2*tm1*q22)
     # +m22*log3*(-32*u1*tm2-32*t1*tm2)
     # +m22*log4*lhpm2*(-16*u1p4*t1m1*um2-16*u1p3*t1m1*um1
     #    -16*u1p3*t1m1*um2*q2+16*u1p2*t1*um2-64*u1p2*t1m1*um1*q2-
     #    112*u1*t1*um1+16*u1*t1*um2*q2+32*u1*um1*q2+32*u1m1*t1p2*
     #    um1*q2-128*t1p2*um1+128*t1*um1*q2)
     # +m22*log4*lhpm4*(96*u1p5*t1m1*um1-496*u1p4*t1m1*um1*q2
     #    +176*u1p4*um1+96*u1p3*t1*um1+304*u1p3*t1m1*um1*q22-1024*
     #    u1p3*um1*q2+16*u1p2*t1p2*um1-464*u1p2*t1*um1*q2+304*u1p2*
     #    um1*q22+80*u1*t1*um1*q22+16*t1p2*um1*q22)
     # +m22*log4*(-32*u1*um2-32*t1*um2)
     # +m22*dlog2*sqm*(-256-128*u1*t1m1-128*u1m1*t1)
     # +m22*dlog1*sqm*(256+128*u1*t1m1+128*u1m1*t1)
     # +m22*zeta2*sqm*(-896-448*u1*t1m1-448*u1m1*t1)
     # +m22*zeta2*lhm1*(-64-32*u1*t1m1-32*u1m1*t1)
        vps(7) =
     # +m22*zeta2*lhm3*(-96*u1p2-80*u1*t1-96*u1*q2-48*u1m1
     #    *t1p3-96*u1m1*t1p2*q2-32*t1p2-192*t1*q2)
     # +m22*zeta2*lhm5*(16*u1p2*t1p2-16*u1p2*t1*q2-32*u1p2*q22
     #    +96*u1*t1p3-480*u1*t1p2*q2+160*u1*t1*q22+96*u1m1*t1p5-288
     #    *u1m1*t1p4*q2+288*u1m1*t1p3*q22+176*t1p4-816*t1p3*q2+416*
     #    t1p2*q22)
     # +m22*zeta2*lhpm1*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*zeta2*lhpm3*(-48*u1p3*t1m1-96*u1p2*t1m1*q2-32*
     #    u1p2-80*u1*t1-192*u1*q2-96*t1p2-96*t1*q2)
     # +m22*zeta2*lhpm5*(96*u1p5*t1m1-288*u1p4*t1m1*q2+176*
     #    u1p4+96*u1p3*t1+288*u1p3*t1m1*q22-816*u1p3*q2+16*u1p2*t1p2
     #    -480*u1p2*t1*q2+416*u1p2*q22-16*u1*t1p2*q2+160*u1*t1*q22-
     #    32*t1p2*q22)
     # +m22*sqm*log8*logq2*(128+64*u1*t1m1+64*u1m1*t1)
     # +m22*sqm*dlogq1*(256+128*u1*t1m1+128*u1m1*t1)
     # +m22*sqm*dlogq2*(256+128*u1*t1m1+128*u1m1*t1)
     # +m22*sqm*dlogq3*(256+128*u1*t1m1+128*u1m1*t1)
     # +m22*sqm*dlogq4*(-256-128*u1*t1m1-128*u1m1*t1)
        vps(8) =
     # +m22*sqm*logq3x2*(128+64*u1*t1m1+64*u1m1*t1)
     # +m22*log9*lhm2*(32*u1p2*t1m1*x1-32*u1p2*t1m1*x2-16*
     #    u1p2*t1m2*q2*x1+16*u1p2*t1m2*q2*x2-272*u1*t1m1*q2*x1+272*u1*
     #    t1m1*q2*x2+32*u1*x1-32*u1*x2-32*u1m1*t1p2*x1+32*u1m1*t1p2*
     #    x2-48*u1m1*t1*q2*x1+48*u1m1*t1*q2*x2-32*t1*x1+32*t1*x2-
     #    304*q2*x1+304*q2*x2)
     # +m22*log9*lhm4*(-48*u1p2*t1m1*q22*x1+48*u1p2*t1m1*
     #    q22*x2-16*u1p2*q2*x1+16*u1p2*q2*x2-16*u1*t1*q2*x1+16*u1*t1*
     #    q2*x2+80*u1*q22*x1-80*u1*q22*x2+208*u1m1*t1p3*q2*x1-208*
     #    u1m1*t1p3*q2*x2-16*u1m1*t1p2*q22*x1+16*u1m1*t1p2*q22*x2+
     #    208*t1p2*q2*x1-208*t1p2*q2*x2+112*t1*q22*x1-112*t1*q22*x2)
     # +m22*log9*lhpm2*(-32*u1p2*t1m1*x1+32*u1p2*t1m1*x2-48
     #    *u1*t1m1*q2*x1+48*u1*t1m1*q2*x2-32*u1*x1+32*u1*x2+32*u1m1*
     #    t1p2*x1-32*u1m1*t1p2*x2-272*u1m1*t1*q2*x1+272*u1m1*t1*q2*x2
     #    -16*u1m2*t1p2*q2*x1+16*u1m2*t1p2*q2*x2+32*t1*x1-32*t1*x2-
     #    304*q2*x1+304*q2*x2)
        vps(9) =
     # +m22*log9*lhpm4*(208*u1p3*t1m1*q2*x1-208*u1p3*t1m1*q2*x2
     #    -16*u1p2*t1m1*q22*x1+16*u1p2*t1m1*q22*x2+208*u1p2*q2*x1-
     #    208*u1p2*q2*x2-16*u1*t1*q2*x1+16*u1*t1*q2*x2+112*u1*q22*x1-
     #    112*u1*q22*x2-48*u1m1*t1p2*q22*x1+48*u1m1*t1p2*q22*x2-16*
     #    t1p2*q2*x1+16*t1p2*q2*x2+80*t1*q22*x1-80*t1*q22*x2)
     # +m22*log10*lhm2*(-32*u1p2*t1m1*x1+32*u1p2*t1m1*x2+16
     #    *u1p2*t1m2*q2*x1-16*u1p2*t1m2*q2*x2+272*u1*t1m1*q2*x1-272*u1
     #    *t1m1*q2*x2-32*u1*x1+32*u1*x2+32*u1m1*t1p2*x1-32*u1m1*t1p2
     #    *x2+48*u1m1*t1*q2*x1-48*u1m1*t1*q2*x2+32*t1*x1-32*t1*x2+
     #    304*q2*x1-304*q2*x2)
     # +m22*log10*lhm4*(48*u1p2*t1m1*q22*x1-48*u1p2*t1m1*q22*
     #    x2+16*u1p2*q2*x1-16*u1p2*q2*x2+16*u1*t1*q2*x1-16*u1*t1*q2*x2
     #    -80*u1*q22*x1+80*u1*q22*x2-208*u1m1*t1p3*q2*x1+208*u1m1*
     #    t1p3*q2*x2+16*u1m1*t1p2*q22*x1-16*u1m1*t1p2*q22*x2-208*t1p2
     #    *q2*x1+208*t1p2*q2*x2-112*t1*q22*x1+112*t1*q22*x2)
        vps(10) =
     # +m22*log10*lhpm2*(32*u1p2*t1m1*x1-32*u1p2*t1m1*x2+48*
     #    u1*t1m1*q2*x1-48*u1*t1m1*q2*x2+32*u1*x1-32*u1*x2-32*u1m1*
     #    t1p2*x1+32*u1m1*t1p2*x2+272*u1m1*t1*q2*x1-272*u1m1*t1*q2*x2
     #    +16*u1m2*t1p2*q2*x1-16*u1m2*t1p2*q2*x2-32*t1*x1+32*t1*x2+
     #    304*q2*x1-304*q2*x2)
     # +m22*log10*lhpm4*(-208*u1p3*t1m1*q2*x1+208*u1p3*t1m1*
     #    q2*x2+16*u1p2*t1m1*q22*x1-16*u1p2*t1m1*q22*x2-208*u1p2*q2*
     #    x1+208*u1p2*q2*x2+16*u1*t1*q2*x1-16*u1*t1*q2*x2-112*u1*q22*
     #    x1+112*u1*q22*x2+48*u1m1*t1p2*q22*x1-48*u1m1*t1p2*q22*x2
     #    +16*t1p2*q2*x1-16*t1p2*q2*x2-80*t1*q22*x1+80*t1*q22*x2)
     # +m22*lhm1*dlogq6t*(64+32*u1*t1m1+32*u1m1*t1)
     # +m22*lhm1*dlogq7t*(64+32*u1*t1m1+32*u1m1*t1)
     # +m22*lhm1*dlogq8t*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*lhm1*dlogq9t*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*lhm1*dlogq10t*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*lhm1*dlogq11t*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*lhm1*dlogq12t*(64+32*u1*t1m1+32*u1m1*t1)
     # +m22*lhm1*dlogq13t*(128+64*u1*t1m1+64*u1m1*t1)
        vps(11) =
     # +m22*lhm2*(-16*u1*t1*tm1+64*u1*t1m1*q2-16*u1*tm1*q2
     #    +16*u1m1*t1p3*tm1+16*u1m1*t1p2*tm1*q2+64*u1m1*t1*q2+128*
     #    q2)
     # +m22*lhm3*dlogq6t*(96*u1p2+80*u1*t1+96*u1*q2+48*u1m1*
     #    t1p3+96*u1m1*t1p2*q2+32*t1p2+192*t1*q2)
     # +m22*lhm3*dlogq7t*(96*u1p2+80*u1*t1+96*u1*q2+48*u1m1*
     #    t1p3+96*u1m1*t1p2*q2+32*t1p2+192*t1*q2)
     # +m22*lhm3*dlogq8t*(-96*u1p2-80*u1*t1-96*u1*q2-48*u1m1
     #    *t1p3-96*u1m1*t1p2*q2-32*t1p2-192*t1*q2)
     # +m22*lhm3*dlogq9t*(-96*u1p2-80*u1*t1-96*u1*q2-48*u1m1
     #    *t1p3-96*u1m1*t1p2*q2-32*t1p2-192*t1*q2)
     # +m22*lhm3*dlogq10t*(-96*u1p2-80*u1*t1-96*u1*q2-48*
     #    u1m1*t1p3-96*u1m1*t1p2*q2-32*t1p2-192*t1*q2)
     # +m22*lhm3*dlogq11t*(-96*u1p2-80*u1*t1-96*u1*q2-48*
     #    u1m1*t1p3-96*u1m1*t1p2*q2-32*t1p2-192*t1*q2)
     # +m22*lhm3*dlogq12t*(96*u1p2+80*u1*t1+96*u1*q2+48*u1m1*
     #    t1p3+96*u1m1*t1p2*q2+32*t1p2+192*t1*q2)
        vps(12) =
     # +m22*lhm3*dlogq13t*(192*u1p2+160*u1*t1+192*u1*q2+96*
     #    u1m1*t1p3+192*u1m1*t1p2*q2+64*t1p2+384*t1*q2)
     # +m22*lhm5*dlogq6t*(-16*u1p2*t1p2+16*u1p2*t1*q2+32*u1p2*
     #    q22-96*u1*t1p3+480*u1*t1p2*q2-160*u1*t1*q22-96*u1m1*t1p5
     #    +288*u1m1*t1p4*q2-288*u1m1*t1p3*q22-176*t1p4+816*t1p3*q2
     #    -416*t1p2*q22)
     # +m22*lhm5*dlogq7t*(-16*u1p2*t1p2+16*u1p2*t1*q2+32*u1p2*
     #    q22-96*u1*t1p3+480*u1*t1p2*q2-160*u1*t1*q22-96*u1m1*t1p5
     #    +288*u1m1*t1p4*q2-288*u1m1*t1p3*q22-176*t1p4+816*t1p3*q2
     #    -416*t1p2*q22)
     # +m22*lhm5*dlogq8t*(16*u1p2*t1p2-16*u1p2*t1*q2-32*u1p2*q22
     #    +96*u1*t1p3-480*u1*t1p2*q2+160*u1*t1*q22+96*u1m1*t1p5-288
     #    *u1m1*t1p4*q2+288*u1m1*t1p3*q22+176*t1p4-816*t1p3*q2+416*
     #    t1p2*q22)
     # +m22*lhm5*dlogq9t*(16*u1p2*t1p2-16*u1p2*t1*q2-32*u1p2*q22
     #    +96*u1*t1p3-480*u1*t1p2*q2+160*u1*t1*q22+96*u1m1*t1p5-288
     #    *u1m1*t1p4*q2+288*u1m1*t1p3*q22+176*t1p4-816*t1p3*q2+416*
     #    t1p2*q22)
        vps(13) =
     # +m22*lhm5*dlogq10t*(16*u1p2*t1p2-16*u1p2*t1*q2-32*u1p2*
     #    q22+96*u1*t1p3-480*u1*t1p2*q2+160*u1*t1*q22+96*u1m1*t1p5
     #    -288*u1m1*t1p4*q2+288*u1m1*t1p3*q22+176*t1p4-816*t1p3*q2
     #    +416*t1p2*q22)
     # +m22*lhm5*dlogq11t*(16*u1p2*t1p2-16*u1p2*t1*q2-32*u1p2*
     #    q22+96*u1*t1p3-480*u1*t1p2*q2+160*u1*t1*q22+96*u1m1*t1p5
     #    -288*u1m1*t1p4*q2+288*u1m1*t1p3*q22+176*t1p4-816*t1p3*q2
     #    +416*t1p2*q22)
     # +m22*lhm5*dlogq12t*(-16*u1p2*t1p2+16*u1p2*t1*q2+32*u1p2*
     #    q22-96*u1*t1p3+480*u1*t1p2*q2-160*u1*t1*q22-96*u1m1*t1p5
     #    +288*u1m1*t1p4*q2-288*u1m1*t1p3*q22-176*t1p4+816*t1p3*q2
     #    -416*t1p2*q22)
     # +m22*lhm5*dlogq13t*(-32*u1p2*t1p2+32*u1p2*t1*q2+64*u1p2*
     #    q22-192*u1*t1p3+960*u1*t1p2*q2-320*u1*t1*q22-192*u1m1*t1p5
     #    +576*u1m1*t1p4*q2-576*u1m1*t1p3*q22-352*t1p4+1632*t1p3*q2
     #    -832*t1p2*q22)
     # +m22*lhpm1*dlogq6u*(64+32*u1*t1m1+32*u1m1*t1)
     # +m22*lhpm1*dlogq7u*(64+32*u1*t1m1+32*u1m1*t1)
        vps(14) =
     # +m22*lhpm1*dlogq8u*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*lhpm1*dlogq9u*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*lhpm1*dlogq10u*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*lhpm1*dlogq11u*(-64-32*u1*t1m1-32*u1m1*t1)
     # +m22*lhpm1*dlogq12u*(64+32*u1*t1m1+32*u1m1*t1)
     # +m22*lhpm1*dlogq13u*(128+64*u1*t1m1+64*u1m1*t1)
     # +m22*lhpm2*(16*u1p3*t1m1*um1+16*u1p2*t1m1*um1*q2-16*
     #    u1*t1*um1+64*u1*t1m1*q2+64*u1m1*t1*q2-16*t1*um1*q2+128*q2)
     # +m22*lhpm3*dlogq6u*(48*u1p3*t1m1+96*u1p2*t1m1*q2+32*u1p2
     #    +80*u1*t1+192*u1*q2+96*t1p2+96*t1*q2)
     # +m22*lhpm3*dlogq7u*(48*u1p3*t1m1+96*u1p2*t1m1*q2+32*u1p2
     #    +80*u1*t1+192*u1*q2+96*t1p2+96*t1*q2)
     # +m22*lhpm3*dlogq8u*(-48*u1p3*t1m1-96*u1p2*t1m1*q2-32*
     #    u1p2-80*u1*t1-192*u1*q2-96*t1p2-96*t1*q2)
     # +m22*lhpm3*dlogq9u*(-48*u1p3*t1m1-96*u1p2*t1m1*q2-32*
     #    u1p2-80*u1*t1-192*u1*q2-96*t1p2-96*t1*q2)
     # +m22*lhpm3*dlogq10u*(-48*u1p3*t1m1-96*u1p2*t1m1*q2-32*
     #    u1p2-80*u1*t1-192*u1*q2-96*t1p2-96*t1*q2)
        vps(15) =
     # +m22*lhpm3*dlogq11u*(-48*u1p3*t1m1-96*u1p2*t1m1*q2-32*
     #    u1p2-80*u1*t1-192*u1*q2-96*t1p2-96*t1*q2)
     # +m22*lhpm3*dlogq12u*(48*u1p3*t1m1+96*u1p2*t1m1*q2+32*
     #    u1p2+80*u1*t1+192*u1*q2+96*t1p2+96*t1*q2)
     # +m22*lhpm3*dlogq13u*(96*u1p3*t1m1+192*u1p2*t1m1*q2+64*
     #    u1p2+160*u1*t1+384*u1*q2+192*t1p2+192*t1*q2)
     # +m22*lhpm5*dlogq6u*(-96*u1p5*t1m1+288*u1p4*t1m1*q2-176
     #    *u1p4-96*u1p3*t1-288*u1p3*t1m1*q22+816*u1p3*q2-16*u1p2*t1p2
     #    +480*u1p2*t1*q2-416*u1p2*q22+16*u1*t1p2*q2-160*u1*t1*q22+
     #    32*t1p2*q22)
     # +m22*lhpm5*dlogq7u*(-96*u1p5*t1m1+288*u1p4*t1m1*q2-176
     #    *u1p4-96*u1p3*t1-288*u1p3*t1m1*q22+816*u1p3*q2-16*u1p2*t1p2
     #    +480*u1p2*t1*q2-416*u1p2*q22+16*u1*t1p2*q2-160*u1*t1*q22+
     #    32*t1p2*q22)
     # +m22*lhpm5*dlogq8u*(96*u1p5*t1m1-288*u1p4*t1m1*q2+176*
     #    u1p4+96*u1p3*t1+288*u1p3*t1m1*q22-816*u1p3*q2+16*u1p2*t1p2
     #    -480*u1p2*t1*q2+416*u1p2*q22-16*u1*t1p2*q2+160*u1*t1*q22-
     #    32*t1p2*q22)
        vps(16) =
     # +m22*lhpm5*dlogq9u*(96*u1p5*t1m1-288*u1p4*t1m1*q2+176*
     #    u1p4+96*u1p3*t1+288*u1p3*t1m1*q22-816*u1p3*q2+16*u1p2*t1p2
     #    -480*u1p2*t1*q2+416*u1p2*q22-16*u1*t1p2*q2+160*u1*t1*q22-
     #    32*t1p2*q22)
     # +m22*lhpm5*dlogq10u*(96*u1p5*t1m1-288*u1p4*t1m1*q2+176*
     #    u1p4+96*u1p3*t1+288*u1p3*t1m1*q22-816*u1p3*q2+16*u1p2*t1p2
     #    -480*u1p2*t1*q2+416*u1p2*q22-16*u1*t1p2*q2+160*u1*t1*q22-
     #    32*t1p2*q22)
     # +m22*lhpm5*dlogq11u*(96*u1p5*t1m1-288*u1p4*t1m1*q2+176*
     #    u1p4+96*u1p3*t1+288*u1p3*t1m1*q22-816*u1p3*q2+16*u1p2*t1p2
     #    -480*u1p2*t1*q2+416*u1p2*q22-16*u1*t1p2*q2+160*u1*t1*q22-
     #    32*t1p2*q22)
     # +m22*lhpm5*dlogq12u*(-96*u1p5*t1m1+288*u1p4*t1m1*q2-
     #    176*u1p4-96*u1p3*t1-288*u1p3*t1m1*q22+816*u1p3*q2-16*u1p2*
     #    t1p2+480*u1p2*t1*q2-416*u1p2*q22+16*u1*t1p2*q2-160*u1*t1*
     #    q22+32*t1p2*q22)
        vps(17) =
     # +m22*lhpm5*dlogq13u*(-192*u1p5*t1m1+576*u1p4*t1m1*q2-
     #    352*u1p4-192*u1p3*t1-576*u1p3*t1m1*q22+1632*u1p3*q2-32*u1p2
     #    *t1p2+960*u1p2*t1*q2-832*u1p2*q22+32*u1*t1p2*q2-320*u1*t1*
     #    q22+64*t1p2*q22)
     # +m22* (32*u1*t1m1*tm1+128*u1*t1m2+32*u1m1*t1*um1+
     #    128*u1m1+128*u1m2*t1+128*t1m1+32*um1+32*tm1)
     # +m2*log1x2*sqm*(32*u1+32*t1-32*q2+64*Bqed)
     # +m2*log1x2*(-8*u1p2*t1m1*spm1-24*u1*spm1-8*u1m1*t1p2*
     #    spm1-24*t1*spm1)
     # +m2*log1*log5*sqm*(-64*u1p2*t1m1+64*u1*t1m1*q2-320*
     #    u1-64*u1m1*t1p2+64*u1m1*t1*q2-320*t1+256*q2-128*Bqed)
     # +m2*log1*log6*sqm*(64*u1p2*t1m1-64*u1*t1m1*q2+192*u1
     #    +64*u1m1*t1p2-64*u1m1*t1*q2+192*t1-128*q2-128*Bqed)
     # +m2*log1*log3*sqm*(-32*u1p2*t1m1+32*u1*t1m1*q2-96*u1
     #    -32*u1m1*t1p2+32*u1m1*t1*q2-96*t1+64*q2)
     # +m2*log1*log4*sqm*(-32*u1p2*t1m1+32*u1*t1m1*q2-96*u1
     #    -32*u1m1*t1p2+32*u1m1*t1*q2-96*t1+64*q2)
        vps(18) =
     # +m2*log1*sqm*logq1*(32*u1p2*t1m1-32*u1*t1m1*q2+96*u1
     #    +32*u1m1*t1p2-32*u1m1*t1*q2+96*t1-64*q2)
     # +m2*log1*sqm*(-32*u1p3*t1m1*s1m1+32*u1p3*t1m1*spm1
     #    +32*u1p2*t1m1*q2*s1m1-32*u1p2*t1m1*q2*spm1+64*u1p2*t1m1-
     #    128*u1p2*q2*spm2+64*u1p2*s1m1-256*u1*t1*q2*spm2+192*u1*t1*
     #    s1m1-64*u1*t1*spm1-48*u1*t1m1*q2-224*u1*q2*s1m1-96*u1*q2*
     #    spm1+32*u1-32*u1m1*t1p3*s1m1+32*u1m1*t1p3*spm1+32*u1m1*
     #    t1p2*q2*s1m1-32*u1m1*t1p2*q2*spm1+64*u1m1*t1p2-48*u1m1*t1*
     #    q2-128*t1p2*q2*spm2+64*t1p2*s1m1-224*t1*q2*s1m1-96*t1*q2*
     #    spm1+32*t1+128*q22*s1m1+32*q2+128*Bqed*logdel+64*Bqed)
     # +m2*log3*lhm2*(-96*u1p2*t1*tm1+48*u1p2*tm1*q2+16*u1*
     #    t1p3*tm2-168*u1*t1p2*tm1+16*u1*t1p2*tm2*q2+168*u1*t1*tm1*q2
     #    -32*u1*tm1*q22-24*u1m1*t1p5*tm2-48*u1m1*t1p4*tm1-16*
     #    u1m1*t1p4*tm2*q2+56*u1m1*t1p3*tm1*q2+8*u1m1*t1p3*tm2*q22
     #    +16*u1m1*t1p2*tm1*q22-24*t1p4*tm2-168*t1p3*tm1-32*t1p3*
     #    tm2*q2+96*t1p2*tm1*q2-8*t1p2*tm2*q22-48*t1*tm1*q22)
        vps(19) =
cjs
     # +m2*log3*lhm4*t1*(40*u1p2*t1p2*tm1-80*u1p2*t1*tm1*q2+40*
     #    u1p2*tm1*q22+176*u1*t1p3*tm1-560*u1*t1p2*tm1*q2+224*u1*
     #    t1*tm1*q22-32*u1*tm1*q23+88*u1m1*t1p5*tm1-288*u1m1*
     #    t1p4*tm1*q2+328*u1m1*t1p3*tm1*q22-64*u1m1*t1p2*tm1*q23+
     #    240*t1p4*tm1-816*t1p3*tm1*q2+512*t1p2*tm1*q22-64*t1*tm1*
     #    q23)
     # +m2*log3*(-48*u1*t1*tm2+32*u1*tm1+8*u1m1*t1p3*tm2-
     #    16*u1m1*t1p2*tm1-40*t1p2*tm2+48*t1*tm1+16*t1*tm2*q2)
     # +m2*log4*lhpm2*(-24*u1p5*t1m1*um2-48*u1p4*t1m1*um1-
     #    16*u1p4*t1m1*um2*q2-24*u1p4*um2+16*u1p3*t1*um2+56*u1p3*
     #    t1m1*um1*q2+8*u1p3*t1m1*um2*q22-168*u1p3*um1-32*u1p3*um2
     #    *q2-168*u1p2*t1*um1+16*u1p2*t1*um2*q2+16*u1p2*t1m1*um1*q22
     #    +96*u1p2*um1*q2-8*u1p2*um2*q22-96*u1*t1p2*um1+168*u1*t1*
     #    um1*q2-48*u1*um1*q22+48*t1p2*um1*q2-32*t1*um1*q22)
        vps(20) =
cjs
     # +m2*log4*lhpm4*u1*(88*u1p5*t1m1*um1-288*u1p4*t1m1*um1*q2+
     #    240*u1p4*um1+176*u1p3*t1*um1+328*u1p3*t1m1*um1*q22-816*
     #    u1p3*um1*q2+40*u1p2*t1p2*um1-560*u1p2*t1*um1*q2-64*u1p2*
     #    t1m1*um1*q23+512*u1p2*um1*q22-80*u1*t1p2*um1*q2+224*
     #    u1*t1*um1*q22-64*u1*um1*q23+40*t1p2*um1*q22-32*
     #    t1*um1*q23)
     # +m2*log4*(8*u1p3*t1m1*um2-16*u1p2*t1m1*um1-40*u1p2*um2
     #    -48*u1*t1*um2+48*u1*um1+16*u1*um2*q2+32*t1*um1)
     # +m2*dlog2*sqm*(-64*u1p2*t1m1+64*u1*t1m1*q2-320*u1-
     #    64*u1m1*t1p2+64*u1m1*t1*q2-320*t1+256*q2-128*Bqed)
     # +m2*dlog3*(-16-16*u1m1*t1)
     # +m2*dlog4*(-16-16*u1*t1m1)
     # +m2*dlog1*sqm*(64*u1p2*t1m1-64*u1*t1m1*q2+192*u1+64
     #    *u1m1*t1p2-64*u1m1*t1*q2+192*t1-128*q2-128*Bqed)
     # +m2*zeta2*sqm*(-224*u1p2*t1m1+224*u1*t1m1*q2-928*
     #    u1-224*u1m1*t1p2+224*u1m1*t1*q2-928*t1+704*q2+64*Bqed)
     # +m2*zeta2*lhm1*(16*u1*t1m1*q2-64*u1-32*u1m1*t1p2+16*
     #    u1m1*t1*q2-64*t1+32*q2)
        vps(21) =
     # +m2*zeta2*lhm3*(-48*u1p2*t1-80*u1*t1p2-112*u1*t1*q2+
     #    32*u1*q22-8*u1m1*t1p4-48*u1m1*t1p3*q2+48*u1m1*t1p2*q22-
     #    88*t1p3-176*t1p2*q2+112*t1*q22)
cjs
     # +m2*zeta2*lhm5*t1*(32*u1p2*t1p2-48*u1p2*t1*q2+16*u1p2*
     #    q22+144*u1*t1p3-432*u1*t1p2*q2+336*u1*t1*q22-48*u1*
     #    q23+24*u1m1*t1p5-96*u1m1*t1p4*q2+120*u1m1*t1p3*q22-48*
     #    u1m1*t1p2*q23+152*t1p4-432*t1p3*q2+440*t1p2*q22-160*t1*
     #    q23)
     # +m2*zeta2*lhpm1*(-32*u1p2*t1m1+16*u1*t1m1*q2-64*u1+
     #    16*u1m1*t1*q2-64*t1+32*q2)
     # +m2*zeta2*lhpm3*(-8*u1p4*t1m1-48*u1p3*t1m1*q2-88*u1p3
     #    -80*u1p2*t1+48*u1p2*t1m1*q22-176*u1p2*q2-48*u1*t1p2-112*
     #    u1*t1*q2+112*u1*q22+32*t1*q22)
cjs
     # +m2*zeta2*lhpm5*u1*(24*u1p5*t1m1-96*u1p4*t1m1*q2+152*u1p4
     #    +144*u1p3*t1+120*u1p3*t1m1*q22-432*u1p3*q2+32*u1p2*t1p2-
     #    432*u1p2*t1*q2-48*u1p2*t1m1*q23+440*u1p2*q22-48*u1*t1p2*q2
     #    +336*u1*t1*q22-160*u1*q23+16*t1p2*q22-48*t1*q23)
        vps(22) =
     # +m2*zeta2*(32+48*u1p2*t1m1*spm1+16*u1*t1m1+144*u1*
     #    spm1+48*u1m1*t1p2*spm1+16*u1m1*t1+144*t1*spm1)
     # +m2*sqm*log8*logq2*(32*u1p2*t1m1-32*u1*t1m1*q2+96*u1
     #    +32*u1m1*t1p2-32*u1m1*t1*q2+96*t1-64*q2)
     # +m2*sqm*dlogq1*(64*u1p2*t1m1-64*u1*t1m1*q2+192*u1+64
     #    *u1m1*t1p2-64*u1m1*t1*q2+192*t1-128*q2)
     # +m2*sqm*dlogq2*(64*u1p2*t1m1-64*u1*t1m1*q2+192*u1+64
     #    *u1m1*t1p2-64*u1m1*t1*q2+192*t1-128*q2)
     # +m2*sqm*dlogq3*(64*u1p2*t1m1-64*u1*t1m1*q2+192*u1+64
     #    *u1m1*t1p2-64*u1m1*t1*q2+192*t1-128*q2)
     # +m2*sqm*dlogq4*(-64*u1p2*t1m1+64*u1*t1m1*q2-192*u1
     #    -64*u1m1*t1p2+64*u1m1*t1*q2-192*t1+128*q2)
     # +m2*sqm*logq3x2*(32*u1p2*t1m1-32*u1*t1m1*q2+96*u1+
     #    32*u1m1*t1p2-32*u1m1*t1*q2+96*t1-64*q2)
        vps(23) =
     # +m2*log9*lhm2*(-48*u1p2*t1m1*q2*x1+48*u1p2*t1m1*q2*x2
     #    +48*u1p2*x1-48*u1p2*x2+96*u1*t1*x1-96*u1*t1*x2+80*u1*t1m1*
     #    q22*x1-80*u1*t1m1*q22*x2-384*u1*q2*x1+384*u1*q2*x2+64*
     #    u1m1*t1p3*x1-64*u1m1*t1p3*x2-96*u1m1*t1p2*q2*x1+96*u1m1*
     #    t1p2*q2*x2+48*u1m1*t1*q22*x1-48*u1m1*t1*q22*x2+112*t1p2*x1
     #    -112*t1p2*x2-336*t1*q2*x1+336*t1*q2*x2+224*q22*x1-224*q22
     #    *x2)
     # +m2*log9*lhm4*(-8*u1p2*t1p2*x1+8*u1p2*t1p2*x2+32*u1p2*
     #    t1*q2*x1-32*u1p2*t1*q2*x2-24*u1p2*q22*x1+24*u1p2*q22*x2-32*
     #    u1*t1p3*x1+32*u1*t1p3*x2+128*u1*t1p2*q2*x1-128*u1*t1p2*q2*x2+
     #    112*u1*t1*q22*x1-112*u1*t1*q22*x2-16*u1*q23*x1+16*u1*q23*x2
     #    -64*u1m1*t1p5*x1+64*u1m1*t1p5*x2+192*u1m1*t1p4*q2*x1-192*
     #    u1m1*t1p4*q2*x2-208*u1m1*t1p3*q22*x1+208*u1m1*t1p3*q22*x2+
     #    16*u1m1*t1p2*q23*x1-16*u1m1*t1p2*q23*x2-88*t1p4*x1+88*t1p4*
     #    x2+384*t1p3*q2*x1-384*t1p3*q2*x2-72*t1p2*q22*x1+72*t1p2*q22
     #    *x2-96*t1*q23*x1+96*t1*q23*x2)
        vps(24) =
     # +m2*log9*lhpm2*(64*u1p3*t1m1*x1-64*u1p3*t1m1*x2-96*u1p2
     #    *t1m1*q2*x1+96*u1p2*t1m1*q2*x2+112*u1p2*x1-112*u1p2*x2+96*
     #    u1*t1*x1-96*u1*t1*x2+48*u1*t1m1*q22*x1-48*u1*t1m1*q22*x2-
     #    336*u1*q2*x1+336*u1*q2*x2-48*u1m1*t1p2*q2*x1+48*u1m1*t1p2*q2*
     #    x2+80*u1m1*t1*q22*x1-80*u1m1*t1*q22*x2+48*t1p2*x1-48*t1p2
     #    *x2-384*t1*q2*x1+384*t1*q2*x2+224*q22*x1-224*q22*x2)
     # +m2*log9*lhpm4*(-64*u1p5*t1m1*x1+64*u1p5*t1m1*x2+192*
     #    u1p4*t1m1*q2*x1-192*u1p4*t1m1*q2*x2-88*u1p4*x1+88*u1p4*x2-
     #    32*u1p3*t1*x1+32*u1p3*t1*x2-208*u1p3*t1m1*q22*x1+208*u1p3*
     #    t1m1*q22*x2+384*u1p3*q2*x1-384*u1p3*q2*x2-8*u1p2*t1p2*x1+8*
     #    u1p2*t1p2*x2+128*u1p2*t1*q2*x1-128*u1p2*t1*q2*x2+16*u1p2*t1m1*
     #    q23*x1-16*u1p2*t1m1*q23*x2-72*u1p2*q22*x1+72*u1p2*q22*x2
     #    +32*u1*t1p2*q2*x1-32*u1*t1p2*q2*x2+112*u1*t1*q22*x1-112*u1*
     #    t1*q22*x2-96*u1*q23*x1+96*u1*q23*x2-24*t1p2*q22*x1+24*
     #    t1p2*q22*x2-16*t1*q23*x1+16*t1*q23*x2)
     # +m2*log9*(-32*u1*t1m1*x1+32*u1*t1m1*x2-32*u1m1*t1*x1
     #    +32*u1m1*t1*x2-64*x1+64*x2)
        vps(25) =
     # +m2*log10*lhm2*(48*u1p2*t1m1*q2*x1-48*u1p2*t1m1*q2*x2-
     #    48*u1p2*x1+48*u1p2*x2-96*u1*t1*x1+96*u1*t1*x2-80*u1*t1m1*
     #    q22*x1+80*u1*t1m1*q22*x2+384*u1*q2*x1-384*u1*q2*x2-64*
     #    u1m1*t1p3*x1+64*u1m1*t1p3*x2+96*u1m1*t1p2*q2*x1-96*u1m1*
     #    t1p2*q2*x2-48*u1m1*t1*q22*x1+48*u1m1*t1*q22*x2-112*t1p2*x1
     #    +112*t1p2*x2+336*t1*q2*x1-336*t1*q2*x2-224*q22*x1+224*q22
     #    *x2)
     # +m2*log10*lhm4*(8*u1p2*t1p2*x1-8*u1p2*t1p2*x2-32*u1p2*t1*
     #    q2*x1+32*u1p2*t1*q2*x2+24*u1p2*q22*x1-24*u1p2*q22*x2+32*u1*
     #    t1p3*x1-32*u1*t1p3*x2-128*u1*t1p2*q2*x1+128*u1*t1p2*q2*x2-112
     #    *u1*t1*q22*x1+112*u1*t1*q22*x2+16*u1*q23*x1-16*u1*q23*x2+
     #    64*u1m1*t1p5*x1-64*u1m1*t1p5*x2-192*u1m1*t1p4*q2*x1+192*
     #    u1m1*t1p4*q2*x2+208*u1m1*t1p3*q22*x1-208*u1m1*t1p3*q22*x2-
     #    16*u1m1*t1p2*q23*x1+16*u1m1*t1p2*q23*x2+88*t1p4*x1-88*t1p4*
     #    x2-384*t1p3*q2*x1+384*t1p3*q2*x2+72*t1p2*q22*x1-72*t1p2*q22
     #    *x2+96*t1*q23*x1-96*t1*q23*x2)
        vps(26) =
     # +m2*log10*lhpm2*(-64*u1p3*t1m1*x1+64*u1p3*t1m1*x2+96*
     #    u1p2*t1m1*q2*x1-96*u1p2*t1m1*q2*x2-112*u1p2*x1+112*u1p2*x2-
     #    96*u1*t1*x1+96*u1*t1*x2-48*u1*t1m1*q22*x1+48*u1*t1m1*q22*x2
     #    +336*u1*q2*x1-336*u1*q2*x2+48*u1m1*t1p2*q2*x1-48*u1m1*t1p2*
     #    q2*x2-80*u1m1*t1*q22*x1+80*u1m1*t1*q22*x2-48*t1p2*x1+48*
     #    t1p2*x2+384*t1*q2*x1-384*t1*q2*x2-224*q22*x1+224*q22*x2)
     # +m2*log10*lhpm4*(64*u1p5*t1m1*x1-64*u1p5*t1m1*x2-192*
     #    u1p4*t1m1*q2*x1+192*u1p4*t1m1*q2*x2+88*u1p4*x1-88*u1p4*x2+
     #    32*u1p3*t1*x1-32*u1p3*t1*x2+208*u1p3*t1m1*q22*x1-208*u1p3*
     #    t1m1*q22*x2-384*u1p3*q2*x1+384*u1p3*q2*x2+8*u1p2*t1p2*x1-8*
     #    u1p2*t1p2*x2-128*u1p2*t1*q2*x1+128*u1p2*t1*q2*x2-16*u1p2*t1m1*
     #    q23*x1+16*u1p2*t1m1*q23*x2+72*u1p2*q22*x1-72*u1p2*q22*x2
     #    -32*u1*t1p2*q2*x1+32*u1*t1p2*q2*x2-112*u1*t1*q22*x1+112*u1*
     #    t1*q22*x2+96*u1*q23*x1-96*u1*q23*x2+24*t1p2*q22*x1-24*
     #    t1p2*q22*x2+16*t1*q23*x1-16*t1*q23*x2)
     # +m2*log10*(32*u1*t1m1*x1-32*u1*t1m1*x2+32*u1m1*t1*x1-
     #    32*u1m1*t1*x2+64*x1-64*x2)
        vps(27) =
     # +m2*lhm1*dlogq6t*(-16*u1*t1m1*q2+64*u1+32*u1m1*t1p2-
     #    16*u1m1*t1*q2+64*t1-32*q2)
     # +m2*lhm1*dlogq7t*(-16*u1*t1m1*q2+64*u1+32*u1m1*t1p2-
     #    16*u1m1*t1*q2+64*t1-32*q2)
     # +m2*lhm1*dlogq8t*(16*u1*t1m1*q2-64*u1-32*u1m1*t1p2+16*
     #    u1m1*t1*q2-64*t1+32*q2)
     # +m2*lhm1*dlogq9t*(16*u1*t1m1*q2-64*u1-32*u1m1*t1p2+16*
     #    u1m1*t1*q2-64*t1+32*q2)
     # +m2*lhm1*dlogq10t*(16*u1*t1m1*q2-64*u1-32*u1m1*t1p2+16*
     #    u1m1*t1*q2-64*t1+32*q2)
     # +m2*lhm1*dlogq11t*(16*u1*t1m1*q2-64*u1-32*u1m1*t1p2+16*
     #    u1m1*t1*q2-64*t1+32*q2)
     # +m2*lhm1*dlogq12t*(-16*u1*t1m1*q2+64*u1+32*u1m1*t1p2-
     #    16*u1m1*t1*q2+64*t1-32*q2)
     # +m2*lhm1*dlogq13t*(-32*u1*t1m1*q2+128*u1+64*u1m1*t1p2
     #    -32*u1m1*t1*q2+128*t1-64*q2)
        vps(28) =
     # +m2*lhm2*(24*u1p2*t1m1*q2-8*u1p2-16*u1*t1p2*tm1-16*u1
     #    *t1*tm1*q2-24*u1*t1-32*u1*t1m1*q22+152*u1*q2+24*u1m1*t1p4
     #    *tm1+16*u1m1*t1p3*tm1*q2-40*u1m1*t1p3-8*u1m1*t1p2*tm1*
     #    q22+40*u1m1*t1p2*q2-64*u1m1*t1*q22+24*t1p3*tm1+32*t1p2*
     #    tm1*q2-56*t1p2+8*t1*tm1*q22+168*t1*q2-96*q22)
     # +m2*lhm3*dlogq6t*(48*u1p2*t1+80*u1*t1p2+112*u1*t1*q2-32*
     #    u1*q22+8*u1m1*t1p4+48*u1m1*t1p3*q2-48*u1m1*t1p2*q22+88*
     #    t1p3+176*t1p2*q2-112*t1*q22)
     # +m2*lhm3*dlogq7t*(48*u1p2*t1+80*u1*t1p2+112*u1*t1*q2-32*
     #    u1*q22+8*u1m1*t1p4+48*u1m1*t1p3*q2-48*u1m1*t1p2*q22+88*
     #    t1p3+176*t1p2*q2-112*t1*q22)
     # +m2*lhm3*dlogq8t*(-48*u1p2*t1-80*u1*t1p2-112*u1*t1*q2+
     #    32*u1*q22-8*u1m1*t1p4-48*u1m1*t1p3*q2+48*u1m1*t1p2*q22-
     #    88*t1p3-176*t1p2*q2+112*t1*q22)
     # +m2*lhm3*dlogq9t*(-48*u1p2*t1-80*u1*t1p2-112*u1*t1*q2+
     #    32*u1*q22-8*u1m1*t1p4-48*u1m1*t1p3*q2+48*u1m1*t1p2*q22-
     #    88*t1p3-176*t1p2*q2+112*t1*q22)
        vps(29) =
     # +m2*lhm3*dlogq10t*(-48*u1p2*t1-80*u1*t1p2-112*u1*t1*q2+
     #    32*u1*q22-8*u1m1*t1p4-48*u1m1*t1p3*q2+48*u1m1*t1p2*q22-
     #    88*t1p3-176*t1p2*q2+112*t1*q22)
     # +m2*lhm3*dlogq11t*(-48*u1p2*t1-80*u1*t1p2-112*u1*t1*q2+
     #    32*u1*q22-8*u1m1*t1p4-48*u1m1*t1p3*q2+48*u1m1*t1p2*q22-
     #    88*t1p3-176*t1p2*q2+112*t1*q22)
     # +m2*lhm3*dlogq12t*(48*u1p2*t1+80*u1*t1p2+112*u1*t1*q2-32*
     #    u1*q22+8*u1m1*t1p4+48*u1m1*t1p3*q2-48*u1m1*t1p2*q22+88*
     #    t1p3+176*t1p2*q2-112*t1*q22)
     # +m2*lhm3*dlogq13t*(96*u1p2*t1+160*u1*t1p2+224*u1*t1*q2-64
     #    *u1*q22+16*u1m1*t1p4+96*u1m1*t1p3*q2-96*u1m1*t1p2*q22+
     #    176*t1p3+352*t1p2*q2-224*t1*q22)
cjs
     # +m2*lhm5*dlogq6t*t1*(-32*u1p2*t1p2+48*u1p2*t1*q2-16*u1p2*
     #    q22-144*u1*t1p3+432*u1*t1p2*q2-336*u1*t1*q22+48*u1*
     #    q23-24*u1m1*t1p5+96*u1m1*t1p4*q2-120*u1m1*t1p3*q22+48*
     #    u1m1*t1p2*q23-152*t1p4+432*t1p3*q2-440*t1p2*q22+160*t1*
     #    q23)
        vps(30) =
cjs
     # +m2*lhm5*dlogq7t*t1*(-32*u1p2*t1p2+48*u1p2*t1*q2-16*u1p2*
     #    q22-144*u1*t1p3+432*u1*t1p2*q2-336*u1*t1*q22+48*u1*
     #    q23-24*u1m1*t1p5+96*u1m1*t1p4*q2-120*u1m1*t1p3*q22+48*
     #    u1m1*t1p2*q23-152*t1p4+432*t1p3*q2-440*t1p2*q22+160*t1*
     #    q23)
cjs
     # +m2*lhm5*dlogq8t*t1*(32*u1p2*t1p2-48*u1p2*t1*q2+16*u1p2*
     #    q22+144*u1*t1p3-432*u1*t1p2*q2+336*u1*t1*q22-48*u1*
     #    q23+24*u1m1*t1p5-96*u1m1*t1p4*q2+120*u1m1*t1p3*q22-48*
     #    u1m1*t1p2*q23+152*t1p4-432*t1p3*q2+440*t1p2*q22-160*t1*
     #    q23)
cjs
     # +m2*lhm5*dlogq9t*t1*(32*u1p2*t1p2-48*u1p2*t1*q2+16*u1p2*
     #    q22+144*u1*t1p3-432*u1*t1p2*q2+336*u1*t1*q22-48*u1*
     #    q23+24*u1m1*t1p5-96*u1m1*t1p4*q2+120*u1m1*t1p3*q22-48*
     #    u1m1*t1p2*q23+152*t1p4-432*t1p3*q2+440*t1p2*q22-160*t1*
     #    q23)
        vps(31) =
cjs
     # +m2*lhm5*dlogq10t*t1*(32*u1p2*t1p2-48*u1p2*t1*q2+16*u1p2*
     #    q22+144*u1*t1p3-432*u1*t1p2*q2+336*u1*t1*q22-48*u1*
     #    q23+24*u1m1*t1p5-96*u1m1*t1p4*q2+120*u1m1*t1p3*q22-48*
     #    u1m1*t1p2*q23+152*t1p4-432*t1p3*q2+440*t1p2*q22-160*t1*
     #    q23)
cjs
     # +m2*lhm5*dlogq11t*t1*(32*u1p2*t1p2-48*u1p2*t1*q2+16*u1p2*
     #    q22+144*u1*t1p3-432*u1*t1p2*q2+336*u1*t1*q22-48*u1*
     #    q23+24*u1m1*t1p5-96*u1m1*t1p4*q2+120*u1m1*t1p3*q22-48*
     #    u1m1*t1p2*q23+152*t1p4-432*t1p3*q2+440*t1p2*q22-160*t1*
     #    q23)
cjs
     # +m2*lhm5*dlogq12t*t1*(-32*u1p2*t1p2+48*u1p2*t1*q2-16*u1p2*
     #    q22-144*u1*t1p3+432*u1*t1p2*q2-336*u1*t1*q22+48*u1*
     #    q23-24*u1m1*t1p5+96*u1m1*t1p4*q2-120*u1m1*t1p3*q22+48*
     #    u1m1*t1p2*q23-152*t1p4+432*t1p3*q2-440*t1p2*q22+160*t1*
     #    q23)
        vps(32) =
cjs
     # +m2*lhm5*dlogq13t*t1*(-64*u1p2*t1p2+96*u1p2*t1*q2-32*u1p2*
     #    q22-288*u1*t1p3+864*u1*t1p2*q2-672*u1*t1*q22+96*u1*
     #    q23-48*u1m1*t1p5+192*u1m1*t1p4*q2-240*u1m1*t1p3*q22+96*
     #    u1m1*t1p2*q23-304*t1p4+864*t1p3*q2-880*t1p2*q22+320*t1*
     #    q23)
     # +m2*lhpm1*dlogq6u*(32*u1p2*t1m1-16*u1*t1m1*q2+64*u1-16*
     #    u1m1*t1*q2+64*t1-32*q2)
     # +m2*lhpm1*dlogq7u*(32*u1p2*t1m1-16*u1*t1m1*q2+64*u1-16*
     #    u1m1*t1*q2+64*t1-32*q2)
     # +m2*lhpm1*dlogq8u*(-32*u1p2*t1m1+16*u1*t1m1*q2-64*u1+
     #    16*u1m1*t1*q2-64*t1+32*q2)
     # +m2*lhpm1*dlogq9u*(-32*u1p2*t1m1+16*u1*t1m1*q2-64*u1+
     #    16*u1m1*t1*q2-64*t1+32*q2)
     # +m2*lhpm1*dlogq10u*(-32*u1p2*t1m1+16*u1*t1m1*q2-64*u1
     #    +16*u1m1*t1*q2-64*t1+32*q2)
     # +m2*lhpm1*dlogq11u*(-32*u1p2*t1m1+16*u1*t1m1*q2-64*u1
     #    +16*u1m1*t1*q2-64*t1+32*q2)
        vps(33) =
     # +m2*lhpm1*dlogq12u*(32*u1p2*t1m1-16*u1*t1m1*q2+64*u1-16
     #    *u1m1*t1*q2+64*t1-32*q2)
     # +m2*lhpm1*dlogq13u*(64*u1p2*t1m1-32*u1*t1m1*q2+128*u1-
     #    32*u1m1*t1*q2+128*t1-64*q2)
     # +m2*lhpm2*(24*u1p4*t1m1*um1+16*u1p3*t1m1*um1*q2-40*
     #    u1p3*t1m1+24*u1p3*um1-16*u1p2*t1*um1-8*u1p2*t1m1*um1*q22
     #    +40*u1p2*t1m1*q2+32*u1p2*um1*q2-56*u1p2-16*u1*t1*um1*q2-
     #    24*u1*t1-64*u1*t1m1*q22+8*u1*um1*q22+168*u1*q2+24*u1m1*
     #    t1p2*q2-32*u1m1*t1*q22-8*t1p2+152*t1*q2-96*q22)
     # +m2*lhpm3*dlogq6u*(8*u1p4*t1m1+48*u1p3*t1m1*q2+88*u1p3+
     #    80*u1p2*t1-48*u1p2*t1m1*q22+176*u1p2*q2+48*u1*t1p2+112*u1*
     #    t1*q2-112*u1*q22-32*t1*q22)
     # +m2*lhpm3*dlogq7u*(8*u1p4*t1m1+48*u1p3*t1m1*q2+88*u1p3+
     #    80*u1p2*t1-48*u1p2*t1m1*q22+176*u1p2*q2+48*u1*t1p2+112*u1*
     #    t1*q2-112*u1*q22-32*t1*q22)
     # +m2*lhpm3*dlogq8u*(-8*u1p4*t1m1-48*u1p3*t1m1*q2-88*u1p3
     #    -80*u1p2*t1+48*u1p2*t1m1*q22-176*u1p2*q2-48*u1*t1p2-112*
     #    u1*t1*q2+112*u1*q22+32*t1*q22)
        vps(34) =
     # +m2*lhpm3*dlogq9u*(-8*u1p4*t1m1-48*u1p3*t1m1*q2-88*u1p3
     #    -80*u1p2*t1+48*u1p2*t1m1*q22-176*u1p2*q2-48*u1*t1p2-112*
     #    u1*t1*q2+112*u1*q22+32*t1*q22)
     # +m2*lhpm3*dlogq10u*(-8*u1p4*t1m1-48*u1p3*t1m1*q2-88*
     #    u1p3-80*u1p2*t1+48*u1p2*t1m1*q22-176*u1p2*q2-48*u1*t1p2-
     #    112*u1*t1*q2+112*u1*q22+32*t1*q22)
     # +m2*lhpm3*dlogq11u*(-8*u1p4*t1m1-48*u1p3*t1m1*q2-88*
     #    u1p3-80*u1p2*t1+48*u1p2*t1m1*q22-176*u1p2*q2-48*u1*t1p2-
     #    112*u1*t1*q2+112*u1*q22+32*t1*q22)
     # +m2*lhpm3*dlogq12u*(8*u1p4*t1m1+48*u1p3*t1m1*q2+88*u1p3
     #    +80*u1p2*t1-48*u1p2*t1m1*q22+176*u1p2*q2+48*u1*t1p2+112*
     #    u1*t1*q2-112*u1*q22-32*t1*q22)
     # +m2*lhpm3*dlogq13u*(16*u1p4*t1m1+96*u1p3*t1m1*q2+176*u1p3
     #    +160*u1p2*t1-96*u1p2*t1m1*q22+352*u1p2*q2+96*u1*t1p2+224*
     #    u1*t1*q2-224*u1*q22-64*t1*q22)
        vps(35) =
cjs
     # +m2*lhpm5*dlogq6u*u1*(-24*u1p5*t1m1+96*u1p4*t1m1*q2-152*
     #    u1p4-144*u1p3*t1-120*u1p3*t1m1*q22+432*u1p3*q2-32*u1p2*t1p2
     #    +432*u1p2*t1*q2+48*u1p2*t1m1*q23-440*u1p2*q22+48*u1*t1p2
     #    *q2-336*u1*t1*q22+160*u1*q23-16*t1p2*q22+48*t1*
     #    q23)
cjs
     # +m2*lhpm5*dlogq7u*u1*(-24*u1p5*t1m1+96*u1p4*t1m1*q2-152*
     #    u1p4-144*u1p3*t1-120*u1p3*t1m1*q22+432*u1p3*q2-32*u1p2*t1p2
     #    +432*u1p2*t1*q2+48*u1p2*t1m1*q23-440*u1p2*q22+48*u1*t1p2
     #    *q2-336*u1*t1*q22+160*u1*q23-16*t1p2*q22+48*t1*
     #    q23)
cjs
     # +m2*lhpm5*dlogq8u*u1*(24*u1p5*t1m1-96*u1p4*t1m1*q2+152*u1p4
     #    +144*u1p3*t1+120*u1p3*t1m1*q22-432*u1p3*q2+32*u1p2*t1p2-
     #    432*u1p2*t1*q2-48*u1p2*t1m1*q23+440*u1p2*q22-48*u1*t1p2*q2
     #    +336*u1*t1*q22-160*u1*q23+16*t1p2*q22-48*t1*q23
     #    )
        vps(36) =
cjs
     # +m2*lhpm5*dlogq9u*u1*(24*u1p5*t1m1-96*u1p4*t1m1*q2+152*u1p4
     #    +144*u1p3*t1+120*u1p3*t1m1*q22-432*u1p3*q2+32*u1p2*t1p2-
     #    432*u1p2*t1*q2-48*u1p2*t1m1*q23+440*u1p2*q22-48*u1*t1p2*q2
     #    +336*u1*t1*q22-160*u1*q23+16*t1p2*q22-48*t1*q23
     #    )
cjs
     # +m2*lhpm5*dlogq10u*u1*(24*u1p5*t1m1-96*u1p4*t1m1*q2+152*u1p4
     #    +144*u1p3*t1+120*u1p3*t1m1*q22-432*u1p3*q2+32*u1p2*t1p2-
     #    432*u1p2*t1*q2-48*u1p2*t1m1*q23+440*u1p2*q22-48*u1*t1p2*q2
     #    +336*u1*t1*q22-160*u1*q23+16*t1p2*q22-48*t1*q23
     #    )
cjs
     # +m2*lhpm5*dlogq11u*u1*(24*u1p5*t1m1-96*u1p4*t1m1*q2+152*u1p4
     #    +144*u1p3*t1+120*u1p3*t1m1*q22-432*u1p3*q2+32*u1p2*t1p2-
     #    432*u1p2*t1*q2-48*u1p2*t1m1*q23+440*u1p2*q22-48*u1*t1p2*q2
     #    +336*u1*t1*q22-160*u1*q23+16*t1p2*q22-48*t1*q23
     #    )
        vps(37) =
cjs
     # +m2*lhpm5*dlogq12u*u1*(-24*u1p5*t1m1+96*u1p4*t1m1*q2-152*
     #    u1p4-144*u1p3*t1-120*u1p3*t1m1*q22+432*u1p3*q2-32*u1p2*t1p2
     #    +432*u1p2*t1*q2+48*u1p2*t1m1*q23-440*u1p2*q22+48*u1*t1p2
     #    *q2-336*u1*t1*q22+160*u1*q23-16*t1p2*q22+48*t1*
     #    q23)
cjs
     # +m2*lhpm5*dlogq13u*u1*(-48*u1p5*t1m1+192*u1p4*t1m1*q2-304*
     #    u1p4-288*u1p3*t1-240*u1p3*t1m1*q22+864*u1p3*q2-64*u1p2*t1p2
     #    +864*u1p2*t1*q2+96*u1p2*t1m1*q23-880*u1p2*q22+96*u1*t1p2
     #    *q2-672*u1*t1*q22+320*u1*q23-32*t1p2*q22+96*t1*
     #    q23)
     # +m2*log7x2*(8*u1p2*t1m1*spm1+24*u1*spm1+8*u1m1*t1p2*
     #    spm1+24*t1*spm1)
     # +m2* (128-8*u1p2*t1m1*um1+32*u1*t1m1*q2*s1m1+64*u1*
     #    t1m1+40*u1*um1+48*u1*tm1-64*u1*s1m1-8*u1m1*t1p2*tm1+
     #    32*u1m1*t1*q2*s1m1+64*u1m1*t1-64*u1m1*q2+48*t1*um1+40*t1
     #    *tm1-64*t1*s1m1-64*t1m1*q2-16*um1*q2-16*tm1*q2+64*q2*
     #    s1m1)
     # +xsqm1*log1x2*(-32*Bqed)
        vps(38) =
     # +xsqm1*log1*log5*(64*Bqed)
     # +xsqm1*log1*log6*(64*Bqed)
     # +xsqm1*log1*(-64*Bqed*logdel-32*Bqed)
     # +xsqm1*dlog2*(64*Bqed)
     # +xsqm1*dlog1*(64*Bqed)
     # +xsqm1*zeta2*(-32*Bqed)
     # +log1x2*sqm*(8*u1p2+16*u1*t1-16*u1*q2+8*t1p2-16*t1*
     #    q2+8*q22)
     # +log1x2*(-8*u1p3*spm2-24*u1p2*t1*spm2+8*u1p2*q2*spm2
     #    -16*u1p2*spm1-24*u1*t1p2*spm2+16*u1*t1*q2*spm2-32*u1*t1*
     #    spm1+16*u1*q2*spm1-8*t1p3*spm2+8*t1p2*q2*spm2-16*t1p2*
     #    spm1+16*t1*q2*spm1)
     # +log1*log5*sqm*(-64*u1p2-128*u1*t1+128*u1*q2-64*
     #    t1p2+128*t1*q2-64*q22)
     # +log1*log6*sqm*(32*u1p2+64*u1*t1-64*u1*q2+32*t1p2-
     #    64*t1*q2+32*q22)
     # +log1*log3*sqm*(-16*u1p2-32*u1*t1+32*u1*q2-16*t1p2
     #    +32*t1*q2-16*q22)
        vps(40) =
     # +log1*log4*sqm*(-16*u1p2-32*u1*t1+32*u1*q2-16*t1p2
     #    +32*t1*q2-16*q22)
     # +log1*sqm*logq1*(16*u1p2+32*u1*t1-32*u1*q2+16*t1p2-
     #    32*t1*q2+16*q22)
     # +log1*sqm*(-8*u1p4*t1m1*s1m1+8*u1p4*t1m1*spm1+20*
     #    u1p3*t1m1*q2*s1m1-16*u1p3*t1m1*q2*spm1+16*u1p3*t1m1-32*
     #    u1p3*q2*spm2+8*u1p3*spm1-96*u1p2*t1*q2*spm2+40*u1p2*t1*s1m1
     #    -16*u1p2*t1*spm1-16*u1p2*t1m1*q22*s1m1+8*u1p2*t1m1*q22*
     #    spm1-28*u1p2*t1m1*q2+32*u1p2*q22*spm2-32*u1p2*q2*s1m1-32
     #    *u1p2*q2*spm1+24*u1p2-96*u1*t1p2*q2*spm2+40*u1*t1p2*s1m1-
     #    16*u1*t1p2*spm1+64*u1*t1*q22*spm2-104*u1*t1*q2*s1m1-32*u1*
     #    t1*q2*spm1+16*u1*t1+4*u1*t1m1*q23*s1m1+12*u1*t1m1*q22+
     #    56*u1*q22*s1m1+24*u1*q22*spm1-12*u1*q2-8*u1m1*t1p4*s1m1
     #    +8*u1m1*t1p4*spm1+20*u1m1*t1p3*q2*s1m1-16*u1m1*t1p3*q2*
     #    spm1+16*u1m1*t1p3-16*u1m1*t1p2*q22*s1m1+8*u1m1*t1p2*q22*
     #    spm1-28*u1m1*t1p2*q2+4*u1m1*t1*q23*s1m1+12*u1m1*t1*q22
     #    -32*t1p3*q2*spm2+8*t1p3*spm1+32*t1p2*q22*spm2-32*t1p2*q2*
     #    s1m1-32*t1p2*q2*spm1+24*t1p2+56*t1*q22*s1m1+24*t1*q22*
     #    spm1-12*t1*q2-24*q23*s1m1-8*q22)
        vps(41) =
cjs
     # +log3*lhm2*t1*(-32*u1p2*t1*tm1+16*u1p2*tm1*q2-96*u1*
     #    t1p2*tm1+72*u1*t1*tm1*q2-24*u1*tm1*q22-4*u1m1*t1p5*
     #    tm2-12*u1m1*t1p4*tm1+4*u1m1*t1p4*tm2*q2+36*u1m1*t1p3*tm1
     #    *q2+12*u1m1*t1p3*tm2*q22-24*u1m1*t1p2*tm1*q22+4*u1m1*
     #    t1p2*tm2*q23-20*t1p4*tm2-68*t1p3*tm1-24*t1p3*tm2*q2+108*
     #    t1p2*tm1*q2-4*t1p2*tm2*q22-32*t1*tm1*q22+8*tm1*q23
     #    )
cjs
     # +log3*lhm4*t1p2*(24*u1p2*t1p2*tm1-48*u1p2*t1*tm1*q2+24*u1p2
     #    *tm1*q22+80*u1*t1p3*tm1-192*u1*t1p2*tm1*q2+144*u1*t1
     #    *tm1*q22-32*u1*tm1*q23+12*u1m1*t1p5*tm1-52*u1m1*
     #    t1p4*tm1*q2+68*u1m1*t1p3*tm1*q22-28*u1m1*t1p2*tm1*q23+76
     #    *t1p4*tm1-204*t1p3*tm1*q2+188*t1p2*tm1*q22-68*t1*tm1*
     #    q23+8*tm1*q24)
     # +log3*(-16*u1*t1p2*tm2+24*u1*t1*tm1+12*u1m1*t1p4*tm2
     #    -8*u1m1*t1p3*tm1-4*u1m1*t1p3*tm2*q2-4*t1p3*tm2+16*t1p2*
     #    tm1+16*t1p2*tm2*q2-24*t1*tm1*q2)
        vps(42) =
cjs
     # +log4*lhpm2*u1*(-4*u1p5*t1m1*um2-12*u1p4*t1m1*um1+4*
     #    u1p4*t1m1*um2*q2-20*u1p4*um2+36*u1p3*t1m1*um1*q2+12*u1p3*
     #    t1m1*um2*q22-68*u1p3*um1-24*u1p3*um2*q2-96*u1p2*t1*um1-
     #    24*u1p2*t1m1*um1*q22+4*u1p2*t1m1*um2*q23+108*u1p2*um1*q2
     #    -4*u1p2*um2*q22-32*u1*t1p2*um1+72*u1*t1*um1*q2-32*
     #    u1*um1*q22+16*t1p2*um1*q2-24*t1*um1*q22+8*um1*
     #    q23)
cjs
     # +log4*lhpm4*u1p2*(12*u1p5*t1m1*um1-52*u1p4*t1m1*um1*q2+76*
     #    u1p4*um1+80*u1p3*t1*um1+68*u1p3*t1m1*um1*q22-204*u1p3*um1
     #    *q2+24*u1p2*t1p2*um1-192*u1p2*t1*um1*q2-28*u1p2*t1m1*um1*
     #    q23+188*u1p2*um1*q22-48*u1*t1p2*um1*q2+144*u1*t1*um1*
     #    q22-68*u1*um1*q23+24*t1p2*um1*q22-32*t1*um1*
     #    q23+8*um1*q24)
     # +log4*(12*u1p4*t1m1*um2-8*u1p3*t1m1*um1-4*u1p3*t1m1*
     #    um2*q2-4*u1p3*um2-16*u1p2*t1*um2+16*u1p2*um1+16*u1p2*um2
     #    *q2+24*u1*t1*um1-24*u1*um1*q2)
     # +dlog2*sqm*(-64*u1p2-128*u1*t1+128*u1*q2-64*t1p2+
     #    128*t1*q2-64*q22)
        vps(43) =
     # +dlog3*(-8*u1-8*t1+8*q2)
     # +dlog4*(-8*u1-8*t1+8*q2)
     # +dlog1*sqm*(32*u1p2+64*u1*t1-64*u1*q2+32*t1p2-64*t1
     #    *q2+32*q22)
     # +zeta2*sqm*(-176*u1p2-352*u1*t1+352*u1*q2-176*t1p2
     #    +352*t1*q2-176*q22)
     # +zeta2*lhm1*(-32*u1*t1+8*u1*q2-16*u1m1*t1p3+8*u1m1*
     #    t1p2*q2-48*t1p2+32*t1*q2-8*q22)
     # +zeta2*lhm3*(-8*u1p2*t1p2+8*u1p2*t1*q2-8*u1*t1p3-8*u1
     #    *t1p2*q2+16*u1*t1*q22+16*u1m1*t1p5-40*u1m1*t1p4*q2+32*
     #    u1m1*t1p3*q22-8*u1m1*t1p2*q23+32*t1p4-72*t1p3*q2+56*t1p2*
     #    q22-16*t1*q23)
cjs
     # +zeta2*lhm5*t1*(8*u1p2*t1p3-24*u1p2*t1p2*q2+24*u1p2*t1*
     #    q22-8*u1p2*q23+32*u1*t1p4-104*u1*t1p3*q2+120*u1*t1p2*
     #    q22-56*u1*t1*q23+8*u1*q24+8*t1p5-40*t1p4*q2+72*t1p3
     #    *q22-56*t1p2*q23+16*t1*q24)
     # +zeta2*lhpm1*(-16*u1p3*t1m1+8*u1p2*t1m1*q2-48*u1p2-
     #    32*u1*t1+32*u1*q2+8*t1*q2-8*q22)
        vps(44) =
     # +zeta2*lhpm3*(16*u1p5*t1m1-40*u1p4*t1m1*q2+32*u1p4-8*
     #    u1p3*t1+32*u1p3*t1m1*q22-72*u1p3*q2-8*u1p2*t1p2-8*u1p2*t1*
     #    q2-8*u1p2*t1m1*q23+56*u1p2*q22+8*u1*t1p2*q2+16*u1*t1*q22
     #    -16*u1*q23)
cjs
     # +zeta2*lhpm5*u1*(8*u1p5+32*u1p4*t1-40*u1p4*q2+8*u1p3*t1p2
     #    -104*u1p3*t1*q2+72*u1p3*q22-24*u1p2*t1p2*q2+120*u1p2*t1*q22
     #    -56*u1p2*q23+24*u1*t1p2*q22-56*u1*t1*q23+16*u1*q24
     #    -8*t1p2*q23+8*t1*q24)
     # +zeta2*(48*u1p3*spm2+144*u1p2*t1*spm2-48*u1p2*q2*spm2
     #    +96*u1p2*spm1+144*u1*t1p2*spm2-96*u1*t1*q2*spm2+192*u1*t1*
     #    spm1-96*u1*q2*spm1+16*u1+48*t1p3*spm2-48*t1p2*q2*spm2+
     #    96*t1p2*spm1-96*t1*q2*spm1+16*t1-16*q2)
     # +sqm*log8*logq2*(16*u1p2+32*u1*t1-32*u1*q2+16*t1p2-
     #    32*t1*q2+16*q22)
     # +sqm*dlogq1*(32*u1p2+64*u1*t1-64*u1*q2+32*t1p2-64*t1
     #    *q2+32*q22)
     # +sqm*dlogq2*(32*u1p2+64*u1*t1-64*u1*q2+32*t1p2-64*t1
     #    *q2+32*q22)
        vps(45) =
     # +sqm*dlogq3*(32*u1p2+64*u1*t1-64*u1*q2+32*t1p2-64*t1
     #    *q2+32*q22)
     # +sqm*dlogq4*(-32*u1p2-64*u1*t1+64*u1*q2-32*t1p2+64
     #    *t1*q2-32*q22)
     # +sqm*logq3x2*(16*u1p2+32*u1*t1-32*u1*q2+16*t1p2-32*
     #    t1*q2+16*q22)
     # +log9*lhm2*(28*u1p2*t1*x1-28*u1p2*t1*x2+4*u1p2*t1m1*q22
     #    *x1-4*u1p2*t1m1*q22*x2-16*u1p2*q2*x1+16*u1p2*q2*x2+104*u1*
     #    t1p2*x1-104*u1*t1p2*x2-116*u1*t1*q2*x1+116*u1*t1*q2*x2-4*u1*
     #    t1m1*q23*x1+4*u1*t1m1*q23*x2+64*u1*q22*x1-64*u1*q22*x2+
     #    32*u1m1*t1p4*x1-32*u1m1*t1p4*x2-80*u1m1*t1p3*q2*x1+80*u1m1*
     #    t1p3*q2*x2+44*u1m1*t1p2*q22*x1-44*u1m1*t1p2*q22*x2-12*u1m1
     #    *t1*q23*x1+12*u1m1*t1*q23*x2+124*t1p3*x1-124*t1p3*x2-172*
     #    t1p2*q2*x1+172*t1p2*q2*x2+112*t1*q22*x1-112*t1*q22*x2-32*
     #    q23*x1+32*q23*x2)
        vps(46) =
cjs
     # +log9*lhm4*t1*(-16*u1p2*t1p2*x1+16*u1p2*t1p2*x2+24*u1p2*
     #    t1*q2*x1-24*u1p2*t1*q2*x2-8*u1p2*q23*x1*t1m1
     #    +8*u1p2*q23*x2*t1m1-
     #    48*u1*t1p3*x1+48*u1*t1p3*x2+88*u1*t1p2*q2*x1-88*u1*t1p2*q2*x2
     #    -24*u1*t1*q22*x1+24*u1*t1*q22*x2-24*u1*q23*x1+24*u1
     #    *q23*x2+8*u1*q24*x1*t1m1-8*u1*q24*x2*t1m1-12*u1m1*t1p5*x1+12*
     #    u1m1*t1p5*x2+52*u1m1*t1p4*q2*x1-52*u1m1*t1p4*q2*x2-68*u1m1*
     #    t1p3*q22*x1+68*u1m1*t1p3*q22*x2+28*u1m1*t1p2*q23*x1-28*
     #    u1m1*t1p2*q23*x2-68*t1p4*x1+68*t1p4*x2+164*t1p3*q2*x1-164*
     #    t1p3*q2*x2-116*t1p2*q22*x1+116*t1p2*q22*x2+12*t1*q23*x1-
     #    12*t1*q23*x2+8*q24*x1-8*q24*x2)
         vps(46) = vps(46)
     # +log9*lhpm2*(32*u1p4*t1m1*x1-32*u1p4*t1m1*x2-80*u1p3*
     #    t1m1*q2*x1+80*u1p3*t1m1*q2*x2+124*u1p3*x1-124*u1p3*x2+104*
     #    u1p2*t1*x1-104*u1p2*t1*x2+44*u1p2*t1m1*q22*x1-44*u1p2*t1m1*
     #    q22*x2-172*u1p2*q2*x1+172*u1p2*q2*x2+28*u1*t1p2*x1-28*u1*
     #    t1p2*x2-116*u1*t1*q2*x1+116*u1*t1*q2*x2-12*u1*t1m1*q23*x1+
     #    12*u1*t1m1*q23*x2+112*u1*q22*x1-112*u1*q22*x2+4*u1m1*t1p2*
     #    q22*x1-4*u1m1*t1p2*q22*x2-4*u1m1*t1*q23*x1+4*u1m1*t1*q23
     #    *x2-16*t1p2*q2*x1+16*t1p2*q2*x2+64*t1*q22*x1-64*t1*q22*x2
     #    -32*q23*x1+32*q23*x2)
        vps(47) =
cjs
     # +log9*lhpm4*u1*(-12*u1p5*t1m1*x1+12*u1p5*t1m1*x2+52*u1p4
     #    *t1m1*q2*x1-52*u1p4*t1m1*q2*x2-68*u1p4*x1+68*u1p4*x2-48*
     #    u1p3*t1*x1+48*u1p3*t1*x2-68*u1p3*t1m1*q22*x1+68*u1p3*t1m1*
     #    q22*x2+164*u1p3*q2*x1-164*u1p3*q2*x2-16*u1p2*t1p2*x1+16*u1p2
     #    *t1p2*x2+88*u1p2*t1*q2*x1-88*u1p2*t1*q2*x2+28*u1p2*t1m1*q23*
     #    x1-28*u1p2*t1m1*q23*x2-116*u1p2*q22*x1+116*u1p2*q22*x2+24
     #    *u1*t1p2*q2*x1-24*u1*t1p2*q2*x2-24*u1*t1*q22*x1+24*u1*
     #    t1*q22*x2+12*u1*q23*x1-12*u1*q23*x2-24*t1*q23*x1+
     #    24*t1*q23*x2+8*q24*x1-8*q24*x2-8*t1p2*q23*x1*u1m1+8*
     #    t1p2*q23*x2*u1m1+8*t1*q24*x1*u1m1-8*t1*q24*x2*u1m1)
        vps(48) =
     # +log9*(-8*u1p3*t1m1*spm1*x1+8*u1p3*t1m1*spm1*x2+8*
     #    u1p2*t1m1*q2*spm1*x1-8*u1p2*t1m1*q2*spm1*x2-32*u1p2*t1m1*x1
     #    +32*u1p2*t1m1*x2+32*u1p2*q2*spm2*x1-32*u1p2*q2*spm2*x2-16*
     #    u1p2*spm1*x1+16*u1p2*spm1*x2+64*u1*t1*q2*spm2*x1-64*u1*t1*q2
     #    *spm2*x2-16*u1*t1*spm1*x1+16*u1*t1*spm1*x2+24*u1*t1m1*q2*x1
     #    -24*u1*t1m1*q2*x2+24*u1*q2*spm1*x1-24*u1*q2*spm1*x2-96*u1*
     #    x1+96*u1*x2-8*u1m1*t1p3*spm1*x1+8*u1m1*t1p3*spm1*x2+8*
     #    u1m1*t1p2*q2*spm1*x1-8*u1m1*t1p2*q2*spm1*x2-32*u1m1*t1p2*x1
     #    +32*u1m1*t1p2*x2+24*u1m1*t1*q2*x1-24*u1m1*t1*q2*x2+32*t1p2
     #    *q2*spm2*x1-32*t1p2*q2*spm2*x2-16*t1p2*spm1*x1+16*t1p2*spm1
     #    *x2+24*t1*q2*spm1*x1-24*t1*q2*spm1*x2-96*t1*x1+96*t1*x2+
     #    32*q2*x1-32*q2*x2)
        vps49a =
     # +log10*lhm2*(-28*u1p2*t1*x1+28*u1p2*t1*x2-4*u1p2*t1m1*
     #    q22*x1+4*u1p2*t1m1*q22*x2+16*u1p2*q2*x1-16*u1p2*q2*x2-104*
     #    u1*t1p2*x1+104*u1*t1p2*x2+116*u1*t1*q2*x1-116*u1*t1*q2*x2+4*
     #    u1*t1m1*q23*x1-4*u1*t1m1*q23*x2-64*u1*q22*x1+64*u1*q22*x2
     #    -32*u1m1*t1p4*x1+32*u1m1*t1p4*x2+80*u1m1*t1p3*q2*x1-80*
     #    u1m1*t1p3*q2*x2-44*u1m1*t1p2*q22*x1+44*u1m1*t1p2*q22*x2+12
     #    *u1m1*t1*q23*x1-12*u1m1*t1*q23*x2-124*t1p3*x1+124*t1p3*x2
     #    +172*t1p2*q2*x1-172*t1p2*q2*x2-112*t1*q22*x1+112*t1*q22*x2
     #    +32*q23*x1-32*q23*x2)
cjs
        vps49b =
     # +log10*lhm4*t1*(16*u1p2*t1p2*x1-16*u1p2*t1p2*x2-24*u1p2*t1*q2
     #    *x1+24*u1p2*t1*q2*x2+(8*u1p2*q23*x1-8*u1p2*q23*x2)*t1m1+48*u1
     #    *t1p3*x1-48*u1*t1p3*x2-88*u1*t1p2*q2*x1+88*u1*t1p2*q2*x2+24*
     #    u1*t1*q22*x1-24*u1*t1*q22*x2+24*u1*q23*x1-24*u1*
     #    q23*x2-8*u1*q24*x1*t1m1+8*u1*q24*x2*t1m1
     #    +12*u1m1*t1p5*x1-12*u1m1*
     #    t1p5*x2-52*u1m1*t1p4*q2*x1+52*u1m1*t1p4*q2*x2+68*u1m1*t1p3*
     #    q22*x1-68*u1m1*t1p3*q22*x2-28*u1m1*t1p2*q23*x1+28*u1m1*
     #    t1p2*q23*x2+68*t1p4*x1-68*t1p4*x2-164*t1p3*q2*x1+164*t1p3*q2
     #    *x2+116*t1p2*q22*x1-116*t1p2*q22*x2-12*t1*q23*x1+12*t1
     #    *q23*x2-8*q24*x1+8*q24*x2)
        vps(49) = vps49a+vps49b
        vps(50) =
     # +log10*lhpm2*(-32*u1p4*t1m1*x1+32*u1p4*t1m1*x2+80*
     #    u1p3*t1m1*q2*x1-80*u1p3*t1m1*q2*x2-124*u1p3*x1+124*u1p3*x2-
     #    104*u1p2*t1*x1+104*u1p2*t1*x2-44*u1p2*t1m1*q22*x1+44*u1p2*
     #    t1m1*q22*x2+172*u1p2*q2*x1-172*u1p2*q2*x2-28*u1*t1p2*x1+28*
     #    u1*t1p2*x2+116*u1*t1*q2*x1-116*u1*t1*q2*x2+12*u1*t1m1*q23*x1
     #    -12*u1*t1m1*q23*x2-112*u1*q22*x1+112*u1*q22*x2-4*u1m1*
     #    t1p2*q22*x1+4*u1m1*t1p2*q22*x2+4*u1m1*t1*q23*x1-4*u1m1*t1
     #    *q23*x2+16*t1p2*q2*x1-16*t1p2*q2*x2-64*t1*q22*x1+64*t1*q22
     #    *x2+32*q23*x1-32*q23*x2)
cjs
     # +log10*lhpm4*u1*(12*u1p5*t1m1*x1-12*u1p5*t1m1*x2-52*u1p4*
     #    t1m1*q2*x1+52*u1p4*t1m1*q2*x2+68*u1p4*x1-68*u1p4*x2+48*u1p3
     #    *t1*x1-48*u1p3*t1*x2+68*u1p3*t1m1*q22*x1-68*u1p3*t1m1*q22*
     #    x2-164*u1p3*q2*x1+164*u1p3*q2*x2+16*u1p2*t1p2*x1-16*u1p2*t1p2
     #    *x2-88*u1p2*t1*q2*x1+88*u1p2*t1*q2*x2-28*u1p2*t1m1*q23*x1+
     #    28*u1p2*t1m1*q23*x2+116*u1p2*q22*x1-116*u1p2*q22*x2-24*u1
     #    *t1p2*q2*x1+24*u1*t1p2*q2*x2+24*u1*t1*q22*x1-24*u1*t1*
     #    q22*x2-12*u1*q23*x1+12*u1*q23*x2+24*t1*q23*x1-24*
     #    t1*q23*x2-8*q24*x1+8*q24*x2+8*t1p2*q23*x1*u1m1-8*t1p2
     #    *q23*x2*u1m1-8*t1*q24*x1*u1m1+8*t1*q24*x2*u1m1)
        vps(51) =
     # +log10*(8*u1p3*t1m1*spm1*x1-8*u1p3*t1m1*spm1*x2-8*u1p2
     #    *t1m1*q2*spm1*x1+8*u1p2*t1m1*q2*spm1*x2+32*u1p2*t1m1*x1-32
     #    *u1p2*t1m1*x2-32*u1p2*q2*spm2*x1+32*u1p2*q2*spm2*x2+16*u1p2*
     #    spm1*x1-16*u1p2*spm1*x2-64*u1*t1*q2*spm2*x1+64*u1*t1*q2*
     #    spm2*x2+16*u1*t1*spm1*x1-16*u1*t1*spm1*x2-24*u1*t1m1*q2*x1
     #    +24*u1*t1m1*q2*x2-24*u1*q2*spm1*x1+24*u1*q2*spm1*x2+96*u1*
     #    x1-96*u1*x2+8*u1m1*t1p3*spm1*x1-8*u1m1*t1p3*spm1*x2-8*
     #    u1m1*t1p2*q2*spm1*x1+8*u1m1*t1p2*q2*spm1*x2+32*u1m1*t1p2*x1
     #    -32*u1m1*t1p2*x2-24*u1m1*t1*q2*x1+24*u1m1*t1*q2*x2-32*t1p2
     #    *q2*spm2*x1+32*t1p2*q2*spm2*x2+16*t1p2*spm1*x1-16*t1p2*spm1
     #    *x2-24*t1*q2*spm1*x1+24*t1*q2*spm1*x2+96*t1*x1-96*t1*x2-
     #    32*q2*x1+32*q2*x2)
     # +lhm1*dlogq6t*(32*u1*t1-8*u1*q2+16*u1m1*t1p3-8*u1m1*
     #    t1p2*q2+48*t1p2-32*t1*q2+8*q22)
     # +lhm1*dlogq7t*(32*u1*t1-8*u1*q2+16*u1m1*t1p3-8*u1m1*
     #    t1p2*q2+48*t1p2-32*t1*q2+8*q22)
     # +lhm1*dlogq8t*(-32*u1*t1+8*u1*q2-16*u1m1*t1p3+8*u1m1*
     #    t1p2*q2-48*t1p2+32*t1*q2-8*q22)
        vps(52) =
     # +lhm1*dlogq9t*(-32*u1*t1+8*u1*q2-16*u1m1*t1p3+8*u1m1*
     #    t1p2*q2-48*t1p2+32*t1*q2-8*q22)
     # +lhm1*dlogq10t*(-32*u1*t1+8*u1*q2-16*u1m1*t1p3+8*u1m1
     #    *t1p2*q2-48*t1p2+32*t1*q2-8*q22)
     # +lhm1*dlogq11t*(-32*u1*t1+8*u1*q2-16*u1m1*t1p3+8*u1m1
     #    *t1p2*q2-48*t1p2+32*t1*q2-8*q22)
     # +lhm1*dlogq12t*(32*u1*t1-8*u1*q2+16*u1m1*t1p3-8*u1m1*
     #    t1p2*q2+48*t1p2-32*t1*q2+8*q22)
     # +lhm1*dlogq13t*(64*u1*t1-16*u1*q2+32*u1m1*t1p3-16*u1m1*
     #    t1p2*q2+96*t1p2-64*t1*q2+16*q22)
     # +lhm2*(-12*u1p2*t1-4*u1p2*t1m1*q22+16*u1p2*q2-32*u1
     #    *t1p2+68*u1*t1*q2+4*u1*t1m1*q23-40*u1*q22+4*u1m1*t1p5*
     #    tm1-4*u1m1*t1p4*tm1*q2-8*u1m1*t1p4-12*u1m1*t1p3*tm1*q22
     #    +20*u1m1*t1p3*q2-4*u1m1*t1p2*tm1*q23-8*u1m1*t1p2*q22+12
     #    *u1m1*t1*q23+20*t1p4*tm1+24*t1p3*tm1*q2-44*t1p3+4*t1p2*
     #    tm1*q22+40*t1p2*q2-60*t1*q22+16*q23)
        vps(53) =
     # +lhm3*dlogq6t*(8*u1p2*t1p2-8*u1p2*t1*q2+8*u1*t1p3+8*u1*
     #    t1p2*q2-16*u1*t1*q22-16*u1m1*t1p5+40*u1m1*t1p4*q2-32*u1m1
     #    *t1p3*q22+8*u1m1*t1p2*q23-32*t1p4+72*t1p3*q2-56*t1p2*q22
     #    +16*t1*q23)
     # +lhm3*dlogq7t*(8*u1p2*t1p2-8*u1p2*t1*q2+8*u1*t1p3+8*u1*
     #    t1p2*q2-16*u1*t1*q22-16*u1m1*t1p5+40*u1m1*t1p4*q2-32*u1m1
     #    *t1p3*q22+8*u1m1*t1p2*q23-32*t1p4+72*t1p3*q2-56*t1p2*q22
     #    +16*t1*q23)
     # +lhm3*dlogq8t*(-8*u1p2*t1p2+8*u1p2*t1*q2-8*u1*t1p3-8*u1
     #    *t1p2*q2+16*u1*t1*q22+16*u1m1*t1p5-40*u1m1*t1p4*q2+32*
     #    u1m1*t1p3*q22-8*u1m1*t1p2*q23+32*t1p4-72*t1p3*q2+56*t1p2*
     #    q22-16*t1*q23)
     # +lhm3*dlogq9t*(-8*u1p2*t1p2+8*u1p2*t1*q2-8*u1*t1p3-8*u1
     #    *t1p2*q2+16*u1*t1*q22+16*u1m1*t1p5-40*u1m1*t1p4*q2+32*
     #    u1m1*t1p3*q22-8*u1m1*t1p2*q23+32*t1p4-72*t1p3*q2+56*t1p2*
     #    q22-16*t1*q23)
        vps(54) =
     # +lhm3*dlogq10t*(-8*u1p2*t1p2+8*u1p2*t1*q2-8*u1*t1p3-8*
     #    u1*t1p2*q2+16*u1*t1*q22+16*u1m1*t1p5-40*u1m1*t1p4*q2+32*
     #    u1m1*t1p3*q22-8*u1m1*t1p2*q23+32*t1p4-72*t1p3*q2+56*t1p2*
     #    q22-16*t1*q23)
     # +lhm3*dlogq11t*(-8*u1p2*t1p2+8*u1p2*t1*q2-8*u1*t1p3-8*
     #    u1*t1p2*q2+16*u1*t1*q22+16*u1m1*t1p5-40*u1m1*t1p4*q2+32*
     #    u1m1*t1p3*q22-8*u1m1*t1p2*q23+32*t1p4-72*t1p3*q2+56*t1p2*
     #    q22-16*t1*q23)
     # +lhm3*dlogq12t*(8*u1p2*t1p2-8*u1p2*t1*q2+8*u1*t1p3+8*u1*
     #    t1p2*q2-16*u1*t1*q22-16*u1m1*t1p5+40*u1m1*t1p4*q2-32*u1m1
     #    *t1p3*q22+8*u1m1*t1p2*q23-32*t1p4+72*t1p3*q2-56*t1p2*q22
     #    +16*t1*q23)
     # +lhm3*dlogq13t*(16*u1p2*t1p2-16*u1p2*t1*q2+16*u1*t1p3+16*
     #    u1*t1p2*q2-32*u1*t1*q22-32*u1m1*t1p5+80*u1m1*t1p4*q2-64*
     #    u1m1*t1p3*q22+16*u1m1*t1p2*q23-64*t1p4+144*t1p3*q2-112*
     #    t1p2*q22+32*t1*q23)
        vps(55) =
cjs
     # +lhm5*dlogq6t*t1*(-8*u1p2*t1p3+24*u1p2*t1p2*q2-24*u1p2*t1*
     #    q22+8*u1p2*q23-32*u1*t1p4+104*u1*t1p3*q2-120*u1*t1p2*
     #    q22+56*u1*t1*q23-8*u1*q24-8*t1p5+40*t1p4*q2-72*t1p3
     #    *q22+56*t1p2*q23-16*t1*q24)
cjs
     # +lhm5*dlogq7t*t1*(-8*u1p2*t1p3+24*u1p2*t1p2*q2-24*u1p2*t1*
     #    q22+8*u1p2*q23-32*u1*t1p4+104*u1*t1p3*q2-120*u1*t1p2*
     #    q22+56*u1*t1*q23-8*u1*q24-8*t1p5+40*t1p4*q2-72*t1p3
     #    *q22+56*t1p2*q23-16*t1*q24)
cjs
     # +lhm5*dlogq8t*t1*(8*u1p2*t1p3-24*u1p2*t1p2*q2+24*u1p2*t1*
     #    q22-8*u1p2*q23+32*u1*t1p4-104*u1*t1p3*q2+120*u1*t1p2*
     #    q22-56*u1*t1*q23+8*u1*q24+8*t1p5-40*t1p4*q2+72*t1p3
     #    *q22-56*t1p2*q23+16*t1*q24)
cjs
     # +lhm5*dlogq9t*t1*(8*u1p2*t1p3-24*u1p2*t1p2*q2+24*u1p2*t1*
     #    q22-8*u1p2*q23+32*u1*t1p4-104*u1*t1p3*q2+120*u1*t1p2*
     #    q22-56*u1*t1*q23+8*u1*q24+8*t1p5-40*t1p4*q2+72*t1p3
     #    *q22-56*t1p2*q23+16*t1*q24)
        vps(56) =
cjs
     # +lhm5*dlogq10t*t1*(8*u1p2*t1p3-24*u1p2*t1p2*q2+24*u1p2*t1*
     #    q22-8*u1p2*q23+32*u1*t1p4-104*u1*t1p3*q2+120*u1*t1p2*
     #    q22-56*u1*t1*q23+8*u1*q24+8*t1p5-40*t1p4*q2+72*t1p3
     #    *q22-56*t1p2*q23+16*t1*q24)
cjs
     # +lhm5*dlogq11t*t1*(8*u1p2*t1p3-24*u1p2*t1p2*q2+24*u1p2*t1*
     #    q22-8*u1p2*q23+32*u1*t1p4-104*u1*t1p3*q2+120*u1*t1p2*
     #    q22-56*u1*t1*q23+8*u1*q24+8*t1p5-40*t1p4*q2+72*t1p3
     #    *q22-56*t1p2*q23+16*t1*q24)
cjs
     # +lhm5*dlogq12t*t1*(-8*u1p2*t1p3+24*u1p2*t1p2*q2-24*u1p2*t1
     #    *q22+8*u1p2*q23-32*u1*t1p4+104*u1*t1p3*q2-120*u1*t1p2*
     #    q22+56*u1*t1*q23-8*u1*q24-8*t1p5+40*t1p4*q2-72*t1p3
     #    *q22+56*t1p2*q23-16*t1*q24)
cjs
     # +lhm5*dlogq13t*t1*(-16*u1p2*t1p3+48*u1p2*t1p2*q2-48*u1p2*
     #    t1*q22+16*u1p2*q23-64*u1*t1p4+208*u1*t1p3*q2-240*u1*
     #    t1p2*q22+112*u1*t1*q23-16*u1*q24-16*t1p5+80*t1p4*q2
     #    -144*t1p3*q22+112*t1p2*q23-32*t1*q24)
     # +lhpm1*dlogq6u*(16*u1p3*t1m1-8*u1p2*t1m1*q2+48*u1p2+32*
     #    u1*t1-32*u1*q2-8*t1*q2+8*q22)
        vps(57) =
     # +lhpm1*dlogq7u*(16*u1p3*t1m1-8*u1p2*t1m1*q2+48*u1p2+32*
     #    u1*t1-32*u1*q2-8*t1*q2+8*q22)
     # +lhpm1*dlogq8u*(-16*u1p3*t1m1+8*u1p2*t1m1*q2-48*u1p2-
     #    32*u1*t1+32*u1*q2+8*t1*q2-8*q22)
     # +lhpm1*dlogq9u*(-16*u1p3*t1m1+8*u1p2*t1m1*q2-48*u1p2-
     #    32*u1*t1+32*u1*q2+8*t1*q2-8*q22)
     # +lhpm1*dlogq10u*(-16*u1p3*t1m1+8*u1p2*t1m1*q2-48*u1p2
     #    -32*u1*t1+32*u1*q2+8*t1*q2-8*q22)
     # +lhpm1*dlogq11u*(-16*u1p3*t1m1+8*u1p2*t1m1*q2-48*u1p2
     #    -32*u1*t1+32*u1*q2+8*t1*q2-8*q22)
     # +lhpm1*dlogq12u*(16*u1p3*t1m1-8*u1p2*t1m1*q2+48*u1p2+32
     #    *u1*t1-32*u1*q2-8*t1*q2+8*q22)
     # +lhpm1*dlogq13u*(32*u1p3*t1m1-16*u1p2*t1m1*q2+96*u1p2+
     #    64*u1*t1-64*u1*q2-16*t1*q2+16*q22)
        vps(58) =
     # +lhpm2*(4*u1p5*t1m1*um1-4*u1p4*t1m1*um1*q2-8*u1p4*
     #    t1m1+20*u1p4*um1-12*u1p3*t1m1*um1*q22+20*u1p3*t1m1*q2+
     #    24*u1p3*um1*q2-44*u1p3-32*u1p2*t1-4*u1p2*t1m1*um1*q23-8*
     #    u1p2*t1m1*q22+4*u1p2*um1*q22+40*u1p2*q2-12*u1*t1p2+68*u1*
     #    t1*q2+12*u1*t1m1*q23-60*u1*q22-4*u1m1*t1p2*q22+4*u1m1*
     #    t1*q23+16*t1p2*q2-40*t1*q22+16*q23)
     # +lhpm3*dlogq6u*(-16*u1p5*t1m1+40*u1p4*t1m1*q2-32*u1p4
     #    +8*u1p3*t1-32*u1p3*t1m1*q22+72*u1p3*q2+8*u1p2*t1p2+8*u1p2
     #    *t1*q2+8*u1p2*t1m1*q23-56*u1p2*q22-8*u1*t1p2*q2-16*u1*t1*
     #    q22+16*u1*q23)
     # +lhpm3*dlogq7u*(-16*u1p5*t1m1+40*u1p4*t1m1*q2-32*u1p4
     #    +8*u1p3*t1-32*u1p3*t1m1*q22+72*u1p3*q2+8*u1p2*t1p2+8*u1p2
     #    *t1*q2+8*u1p2*t1m1*q23-56*u1p2*q22-8*u1*t1p2*q2-16*u1*t1*
     #    q22+16*u1*q23)
     # +lhpm3*dlogq8u*(16*u1p5*t1m1-40*u1p4*t1m1*q2+32*u1p4-8*
     #    u1p3*t1+32*u1p3*t1m1*q22-72*u1p3*q2-8*u1p2*t1p2-8*u1p2*t1*
     #    q2-8*u1p2*t1m1*q23+56*u1p2*q22+8*u1*t1p2*q2+16*u1*t1*q22
     #    -16*u1*q23)
        vps(59) =
     # +lhpm3*dlogq9u*(16*u1p5*t1m1-40*u1p4*t1m1*q2+32*u1p4-8*
     #    u1p3*t1+32*u1p3*t1m1*q22-72*u1p3*q2-8*u1p2*t1p2-8*u1p2*t1*
     #    q2-8*u1p2*t1m1*q23+56*u1p2*q22+8*u1*t1p2*q2+16*u1*t1*q22
     #    -16*u1*q23)
     # +lhpm3*dlogq10u*(16*u1p5*t1m1-40*u1p4*t1m1*q2+32*u1p4-8
     #    *u1p3*t1+32*u1p3*t1m1*q22-72*u1p3*q2-8*u1p2*t1p2-8*u1p2*t1*
     #    q2-8*u1p2*t1m1*q23+56*u1p2*q22+8*u1*t1p2*q2+16*u1*t1*q22
     #    -16*u1*q23)
     # +lhpm3*dlogq11u*(16*u1p5*t1m1-40*u1p4*t1m1*q2+32*u1p4-8
     #    *u1p3*t1+32*u1p3*t1m1*q22-72*u1p3*q2-8*u1p2*t1p2-8*u1p2*t1*
     #    q2-8*u1p2*t1m1*q23+56*u1p2*q22+8*u1*t1p2*q2+16*u1*t1*q22
     #    -16*u1*q23)
     # +lhpm3*dlogq12u*(-16*u1p5*t1m1+40*u1p4*t1m1*q2-32*u1p4
     #    +8*u1p3*t1-32*u1p3*t1m1*q22+72*u1p3*q2+8*u1p2*t1p2+8*u1p2
     #    *t1*q2+8*u1p2*t1m1*q23-56*u1p2*q22-8*u1*t1p2*q2-16*u1*t1*
     #    q22+16*u1*q23)
        vps(60) =
     # +lhpm3*dlogq13u*(-32*u1p5*t1m1+80*u1p4*t1m1*q2-64*u1p4
     #    +16*u1p3*t1-64*u1p3*t1m1*q22+144*u1p3*q2+16*u1p2*t1p2+16*
     #    u1p2*t1*q2+16*u1p2*t1m1*q23-112*u1p2*q22-16*u1*t1p2*q2-32*
     #    u1*t1*q22+32*u1*q23)
cjs
     # +lhpm5*dlogq6u*u1*(-8*u1p5-32*u1p4*t1+40*u1p4*q2-8*u1p3*
     #    t1p2+104*u1p3*t1*q2-72*u1p3*q22+24*u1p2*t1p2*q2-120*u1p2*t1*
     #    q22+56*u1p2*q23-24*u1*t1p2*q22+56*u1*t1*q23-16*u1*
     #    q24+8*t1p2*q23-8*t1*q24)
cjs
     # +lhpm5*dlogq7u*u1*(-8*u1p5-32*u1p4*t1+40*u1p4*q2-8*u1p3*
     #    t1p2+104*u1p3*t1*q2-72*u1p3*q22+24*u1p2*t1p2*q2-120*u1p2*t1*
     #    q22+56*u1p2*q23-24*u1*t1p2*q22+56*u1*t1*q23-16*u1*
     #    q24+8*t1p2*q23-8*t1*q24)
cjs
     # +lhpm5*dlogq8u*u1*(8*u1p5+32*u1p4*t1-40*u1p4*q2+8*u1p3*t1p2
     #    -104*u1p3*t1*q2+72*u1p3*q22-24*u1p2*t1p2*q2+120*u1p2*t1*q22
     #    -56*u1p2*q23+24*u1*t1p2*q22-56*u1*t1*q23+16*u1*q24
     #    -8*t1p2*q23+8*t1*q24)
        vps(61) =
cjs
     # +lhpm5*dlogq9u*u1*(8*u1p5+32*u1p4*t1-40*u1p4*q2+8*u1p3*t1p2
     #    -104*u1p3*t1*q2+72*u1p3*q22-24*u1p2*t1p2*q2+120*u1p2*t1*q22
     #    -56*u1p2*q23+24*u1*t1p2*q22-56*u1*t1*q23+16*u1*q24
     #    -8*t1p2*q23+8*t1*q24)
cjs
     # +lhpm5*dlogq10u*u1*(8*u1p5+32*u1p4*t1-40*u1p4*q2+8*u1p3*t1p2
     #    -104*u1p3*t1*q2+72*u1p3*q22-24*u1p2*t1p2*q2+120*u1p2*t1*q22
     #    -56*u1p2*q23+24*u1*t1p2*q22-56*u1*t1*q23+16*u1*q24
     #    -8*t1p2*q23+8*t1*q24)
cjs
     # +lhpm5*dlogq11u*u1*(8*u1p5+32*u1p4*t1-40*u1p4*q2+8*u1p3*t1p2
     #    -104*u1p3*t1*q2+72*u1p3*q22-24*u1p2*t1p2*q2+120*u1p2*t1*q22
     #    -56*u1p2*q23+24*u1*t1p2*q22-56*u1*t1*q23+16*u1*q24
     #    -8*t1p2*q23+8*t1*q24)
cjs
     # +lhpm5*dlogq12u*u1*(-8*u1p5-32*u1p4*t1+40*u1p4*q2-8*u1p3*
     #    t1p2+104*u1p3*t1*q2-72*u1p3*q22+24*u1p2*t1p2*q2-120*u1p2*t1*
     #    q22+56*u1p2*q23-24*u1*t1p2*q22+56*u1*t1*q23-16*u1*
     #    q24+8*t1p2*q23-8*t1*q24)
        vps(62) =
cjs
     # +lhpm5*dlogq13u*u1*(-16*u1p5-64*u1p4*t1+80*u1p4*q2-16*u1p3
     #    *t1p2+208*u1p3*t1*q2-144*u1p3*q22+48*u1p2*t1p2*q2-240*u1p2*
     #    t1*q22+112*u1p2*q23-48*u1*t1p2*q22+112*u1*t1*q23-32*
     #    u1*q24+16*t1p2*q23-16*t1*q24)
     # +log7x2*(8*u1p3*spm2+24*u1p2*t1*spm2-8*u1p2*q2*spm2+
     #    16*u1p2*spm1+24*u1*t1p2*spm2-16*u1*t1*q2*spm2+32*u1*t1*spm1
     #    -16*u1*q2*spm1+8*t1p3*spm2-8*t1p2*q2*spm2+16*t1p2*spm1-
     #    16*t1*q2*spm1)
     # +(-12*u1p3*t1m1*um1+4*u1p2*t1m1*um1*q2+8*u1p2*t1m1*
     #    q2*s1m1+20*u1p2*t1m1+4*u1p2*um1-16*u1p2*s1m1+32*u1p2*
     #    spm1+16*u1*t1*um1+16*u1*t1*tm1-32*u1*t1*s1m1+64*u1*t1*
     #    spm1-8*u1*t1m1*q22*s1m1-24*u1*t1m1*q2-16*u1*um1*q2+40*
     #    u1*q2*s1m1+76*u1-12*u1m1*t1p3*tm1+4*u1m1*t1p2*tm1*q2+8*
     #    u1m1*t1p2*q2*s1m1+20*u1m1*t1p2-8*u1m1*t1*q22*s1m1-24*
     #    u1m1*t1*q2+4*t1p2*tm1-16*t1p2*s1m1+32*t1p2*spm1-16*t1*
     #    tm1*q2+40*t1*q2*s1m1+76*t1-16*q22*s1m1-16*q2-64*Bqed*
     #    logdel-32*Bqed-64*Mqed)
c sum contributions and multiply by common factor:
        splusv = 0.d0
        do 10 i = 1,62
c        print '(''0     vps  = '',d20.7)',vps(i)
 10     splusv = splusv + vps(i)
c        do 20 ii= 1,62
c 20        write(6,1000) ii,vps(ii)
        svcfcf_l = splusv
c Divide by -16 to get normalization right:
        vqedl = svcfcf_l/(-1.d0*16.0d0)
c
 1000      format('vps(',i2,') =',d20.10)
      return
      end
      DOUBLE PRECISION FUNCTION ROKGAM(SP,T1,U1,M2,Q2)
C This is the hard matrix element for gamma-gluon fusion for an off-
C  shell photon.  This is the CACF piece.
      IMPLICIT DOUBLE PRECISION (A - Z)
CEL      DIMENSION RR(0:43), SS(28), TT(2), UU(1), VV(1), YY(12), ZZ(8)
CSR      DIMENSION RR(0:38), SS(28), TT(2), UU(1), VV(1), YY(12), ZZ(8)
      DIMENSION Q(22)
      INTEGER I
C
      COMMON/INTS/RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
CEL      COMMON/INTS/RR(0:38),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
C
      M22 = M2*M2
      M23 = M2*M22

      S4 = SP + T1 + U1
      S4I = 1.0D0/S4

      TP2 = T1*T1
      T1I = 1.0D0/T1

      UP2 = U1*U1
      UP3 = U1*UP2
      U1I = 1.0D0/U1
      U1I2 = U1I/U1

      SPP2 = SP*SP
      SPP3 = SP*SPP2
      SPI = 1.0D0/SP

      Q22 = Q2*Q2
      Q23 = Q2*Q22

      SPPT1 = SP + T1
      SPPT1I = 1.0D0/SPPT1

CEL      CALL RSTEG(SP,T1,U1,M2,Q2)
      CALL RSTEGG(SP,T1,U1,M2,Q2)
CEL      CALL RSTNEW(SP,T1,U1,M2)
C TP*U7å-1 TERM
      Q(1) = RR(13) *
     #    ( 2.0D0*Q2*T1I*U1I + 2.0D0*Q2*U1I*S4I + T1*U1I*S4I + 2.0D0
     #    *T1I*U1*S4I - 2.0D0*T1I*U1I*SP + 2.0D0*T1I*S4I*SP - 4.0D0*T1I
     #    + 3.0D0*U1I*S4I*SP - 9.0D0*U1I + 5.0D0*S4I )

C TP*S3å-1 TERM
      Q(2) = YY(3) *
     #    (  - 4.0D0*M2*T1I*S4I - 4.0D0*M2*U1I*S4I + 2.0D0*Q2*T1I*
     #    S4I + 2.0D0*T1I*S4I*SP - 2.0D0*T1I )

C TPå-1*U7å2 TERM CONTRIBUTES TO THE COLLINEAR SINGULARITIES
      Q(3) = RR(11) *
     #    (  - 2.0D0*T1I*U1I*S4I*SP + 4.0D0*T1I*U1I - 2.0D0*U1I*S4I )

C TPå-1*U7 TERM CONTRIBUTES TO THE COLLINEAR SINGULARITIES
      Q(4) = RR(10) *
     #    (  - 16.0D0*M22*T1I*U1I*S4I - 8.0D0*M2*Q2*T1I*U1I*S4I
     #    + 9.0D0*M2*T1I*U1I*S4I*SP - 17.0D0*M2*T1I*U1I + M2*T1I*S4I
     #    + 9.0D0*M2*U1I*S4I - 4.0D0*Q2*T1I*U1I - 4.0D0*Q2*T1I*S4I +
     #    5.0D0*T1*U1I*S4I + 3.0D0*T1I*U1*S4I + 3.0D0*T1I*S4I*SP -
     #    3.0D0*T1I + 5.0D0*U1I*S4I*SP - 13.0D0*U1I + 8.0D0*S4I -
     #    4.0D0*SPPT1I )

C TPå-1*U7å-1 TERM CONTRIBUTES TO THE COLLINEAR SINGULARITIES
      Q5A = RR(9) *
     #  (  - 12.0D0*M22*T1*U1I*S4I - 12.0D0*M22*T1I*U1*S4I -
     #  16.0D0*M22*T1I*U1*SPI - 32.0D0*M22*T1I*U1I*SP +
     #   4.0D0*M22*T1I*S4I*SP - 20*M22*T1I + 16.0D0*M22*U1*SPI*SPPT1I
     #  + 4.0D0*M22*U1I*S4I*SP + 16.0D0*M22*U1I*SP*SPPT1I +
     #   76.0D0*M22*U1I - 8.0D0*M22*S4I + 16.0D0*M22*SPPT1I -
     #  6.0D0*M2*Q2*T1*U1I*S4I - 8.0D0*M2*Q2*T1I*U1*S4I -
     #  8.0D0*M2*Q2*T1I*U1*SPI - 16.0D0*M2*Q2*T1I*U1I*SP -
     #  8.0D0*M2*Q2*T1I + 8.0D0*M2*Q2*U1*SPI*SPPT1I +
     #  2.0D0*M2*Q2*U1I*S4I*SP + 8.0D0*M2*Q2*U1I*SP*SPPT1I -
     #  26.0D0*M2*Q2*U1I + 2.0D0*M2*Q2*S4I + 2.0D0*M2*TP2*U1I*S4I +
     #  2.0D0*M2*T1*U1I*S4I*SP - 4.0D0*M2*T1*U1I*SP*SPPT1I +
     #  30.0D0*M2*T1*U1I - 7.0D0*M2*T1*S4I + 4.0D0*M2*T1*SPPT1I +
     #  12.0D0*M2*T1I*UP2*S4I + 12.0D0*M2*T1I*U1*S4I*SP -
     #  12.0D0*M2*T1I*U1 + 3.0D0*M2*U1*S4I + 8.0D0*M2*U1*SPPT1I -
     #  4.0D0*M2*U1I*SPP2*SPPT1I + 20.0D0*M2*U1I*SP - M2*S4I*SP +
     #  12.0D0*M2*SP*SPPT1I + 37.0D0*M2 - Q22*T1I*U1*S4I -
     #  Q22*T1I*S4I*SP + Q22*T1I - 32.0D0*Q22*U1I)
      Q5B = RR(9) *
     # (3.0D0*Q22*S4I - 4.0D0*Q22*SPPT1I + 2.0D0*Q2*TP2*U1I*S4I +
     #  2.0D0*Q2*T1*U1I*S4I*SP - 7.0D0*Q2*T1*U1I*SP*SPPT1I +
     #  14.0D0*Q2*T1*U1I + 7.0D0*Q2*T1*S4I - Q2*T1*SPPT1I +
     #  2.0D0*Q2*T1I*UP2*S4I - 2.0D0*Q2*T1I*U1 - 2.0D0*Q2*T1I*S4I*SPP2 +
     #  2.0D0*Q2*T1I*SP + 7.0D0*Q2*U1*S4I + 4.0D0*Q2*U1*SPPT1I -
     #  7.0D0*Q2*U1I*SPP2*SPPT1I + 15.0D0*Q2*U1I*SP + 7.0D0*Q2*S4I*SP +
     #  3.0D0*Q2*SP*SPPT1I + 12.0D0*Q2 + 2.0D0*TP2*U1I*S4I*SP +
     #  7.0D0*TP2*U1I*SP*SPPT1I - 16.0D0*TP2*U1I + 5.0D0*TP2*S4I +
     #  2.0D0*TP2*SPPT1I + 2.0D0*T1*U1*S4I + 2.0D0*T1*U1*SPPT1I +
     #  2.0D0*T1*U1I*S4I*SPP2 + 18.0D0*T1*U1I*SPP2*SPPT1I -
     #  25.0D0*T1*U1I*SP + 10*T1*S4I*SP + 18.0D0*T1*SP*SPPT1I -
     #  15.0D0*T1 - T1I*UP3*S4I + T1I*UP2*S4I*SP + T1I*UP2 +
     #  T1I*U1*S4I*SPP2 - 2.0D0*T1I*U1*SP - T1I*S4I*SPP3 + T1I*SPP2 -
     #  2.0D0*UP2*SPPT1I + 6.0D0*U1*S4I*SP + 2.0D0*U1*SP*SPPT1I -
     #  11.0D0*U1 + 11.0D0*U1I*SPP3*SPPT1I - 19.0D0*U1I*SPP2 +
     #  4.0D0*S4I*SPP2 + 14.0D0*SPP2*SPPT1I - 27.0D0*SP )
      Q(5) = Q5A + Q5B

C TPå-1*U7å-2 TERM CONTRIBUTES TO COLLINEAR SINGULARITIES
      Q(6) = RR(12) *
     #  ( 32.0D0*M22 + 16.0D0*M2*Q2 + 16.0D0*M2*T1 + 8.0D0*Q2*T1 )

C TPå-1*S3å-1 TERM CONTRIBUTES TO COLLINEAR SINGULARITIES
      Q(7) = YY(7) *
     #  ( 16.0D0*M22*T1I*U1*SPI + 16.0D0*M22*T1I*U1I*SP + 16.0D0*
     #    M22*T1I - 16.0D0*M22*U1*SPI*SPPT1I - 16.0D0*M22*U1I*SP*SPPT1I
     #  + 16.0D0*M22*U1I + 16.0D0*M22*SPPT1I + 8.0D0*M2*Q2*T1I*U1*SPI +
     #   8.0D0*M2*Q2*T1I*U1I*SP + 8.0D0*M2*Q2*T1I -
     #   8.0D0*M2*Q2*U1*SPI*SPPT1I - 8.0D0*M2*Q2*U1I*SP*SPPT1I +
     #   16.0D0*M2*Q2*U1I + 14.0D0*M2*T1*U1I*SP*SPPT1I -
     #   4.0D0*M2*T1*SPPT1I + 8.0D0*M2*U1*SPPT1I +
     #   14.0D0*M2*U1I*SPP2*SPPT1I - 6.0D0*M2*U1I*SP -
     #   12.0D0*M2*SP*SPPT1I + 12.0D0*M2 + 4.0D0*Q22*U1I -
     #   4.0D0*Q22*SPPT1I + Q2*T1*SPPT1I + 4.0D0*Q2*U1*SPPT1I +
     #   4.0D0*Q2*U1I*SP - 3.0D0*Q2*SP*SPPT1I + 3.0D0*Q2 + 4.0D0*TP2*U1I
     #   - 2.0D0*TP2*SPPT1I - 2.0D0*T1*U1*SPPT1I +
     #   2.0D0*T1*U1I*SPP2*SPPT1I + 4.0D0*T1*U1I*SP - T1*SP*SPPT1I -
     #   2.0D0*UP2*SPPT1I - 2.0D0*U1*SP*SPPT1I + 2.0D0*U1 +
     #   2.0D0*U1I*SPP3*SPPT1I - SPP2*SPPT1I + SP )

C TPå-1 TERM CONTRIBUTES TO COLLINEAR SINGULARITIES PURE POLE TERM
C GETS PULLED OUT
C       RR(6) *
C      ( 12.0D0 - 4.0D0*M22*T1*U1I2*S4I - 4.0D0*M22*T1I*U1I*S4I*SP -
C 12.0D0*M22*T1I*U1I - 20.0D0*M22*T1I*S4I + 8.0D0*M22*U1I*S4I + 16.0D0*
C  M22*U1I*SPPT1I - 4.0D0*M22*U1I2*S4I*SP + 36.0D0*M22*U1I2 - 2.0D0*M2*Q2
C  *T1*U1I2*S4I + 6.0D0*M2*Q2*U1I*S4I + 8.0D0*M2*Q2*U1I*SPPT1I - 2.0D0*M2
C  *Q2*U1I2*S4I*SP + 18.0D0*M2*Q2*U1I2 - 17.0D0*M2*T1*U1I*S4I - 2.0D0*M2*T1*
C   U1I2*SP*SPPT1I + 16.0D0*M2*T1*U1I2 - M2*T1I*U1*S4I - 8.0D0*M2*T1I*
C   U1I*SP + 7.0D0*M2*T1I*S4I*SP - 15.0D0*M2*T1I - 17.0D0*M2*U1I*S4I*SP
C  + 49.0D0*M2*U1I - 2.0D0*M2*U1I2*SPP2*SPPT1I + 18.0D0*M2*U1I2*SP - 10*M2*
C   S4I + 16.0D0*M2*SPPT1I + Q22*T1I*U1I*S4I*SP + 3.0D0*Q22*T1I*
C   U1I + 5.0D0*Q22*T1I*S4I + Q22*U1I*S4I - 7.0D0*Q2*T1*U1I*S4I
C  - Q2*T1*U1I2*SP*SPPT1I + 8.0D0*Q2*T1*U1I2 - 3.0D0*Q2*T1I*U1*S4I + 2.0D0*
C   Q2*T1I*U1I*S4I*SPP2 - 6.0D0*Q2*T1I*U1I*SP + 3.0D0*Q2*T1I*S4I*SP
C  - 5.0D0*Q2*T1I - 5.0D0*Q2*U1I*S4I*SP + 23*Q2*U1I - Q2*U1I2*SPP2*
C  SPPT1I + 9.0D0*Q2*U1I2*SP - 6.0D0*Q2*S4I + 8.0D0*Q2*SPPT1I - 3.0D0*TP2*U1I*
C   S4I - 6.0D0*T1*U1I*S4I*SP - 3.0D0*T1*U1I*SP*SPPT1I + 15.0D0*T1*U1I -
C   9.0D0*T1*S4I - 5.0D0*T1I*U1*S4I*SP + 4.0D0*T1I*U1 + T1I*U1I*S4I*
C   SPP3 + T1I*U1I*SPP2 - 2.0D0*T1I*S4I*SPP2 + 7.0D0*T1I*SP - 8.0D0*U1*
C   S4I - 2.0D0*U1I*S4I*SPP2 - 3.0D0*U1I*SPP2*SPPT1I + 10.0D0*U1I*SP - 12.0D0
C   *S4I*SP - 2.0D0*SP*SPPT1I )

C TPå-2*U7å-1 TERM CONTRIBUTES TO COLLINEAR SINGULARITIES
      Q(8) = RR(17) *
     #  ( 32.0D0*M2*TP2*U1I + 32.0D0*M2*T1*U1I*SP + 16.0D0*Q2*TP2*U1I +
     #  16.0D0*Q2*T1*U1I*SP )

C TPå-2*U7å-2 TERM CONTRIBUTES TO COLLINEAR SINGULARITIES
      Q(9) = RR(18) *
     #  ( 16.0D0*M2*TP2 + 8.0D0*Q2*TP2 )

C TPå-2 TERM
      Q(10) = RR(15) *
     #  ( 16.0D0*M2*TP2*U1I2 + 32.0D0*M2*T1*U1I2*SP +
     #   16.0D0*M2*U1I2*SPP2 + 8.0D0*Q2*TP2*U1I2 + 16.0D0*Q2*T1*U1I2*SP
     #   + 8.0D0*Q2*U1I2*SPP2 )

C UPå2*U6å-1 TERM
      Q(11) = RR(36) *
     #   (  - 2.0D0*T1I*U1I*S4I*SP + 4.0D0*T1I*U1I - 2.0D0*U1I*S4I )

C UP*U6å-1 TERM
      Q(12) = RR(33) *
     #   ( 16.0D0*M22*T1I*U1I*S4I + 8.0D0*M2*Q2*T1I*U1I*S4I -
     #    4.0D0*M2*T1I*U1I*S4I*SP + 8.0D0*M2*T1I*U1I - 8.0D0*M2*U1I*S4I
     #  + 4.0D0*Q2*T1I*U1I*S4I*SP - 2.0D0*Q2*T1I*U1I + 6.0D0*Q2*T1I*S4I
     #  + 4.0D0*Q2*U1I*S4I - 2.0D0*T1*U1I*S4I + 2.0D0*T1I*U1*S4I -
     #   2.0D0*T1I*U1I*SP + 4.0D0*T1I*S4I*SP + 2.0D0*T1I -
     #  2.0D0*U1I*S4I*SP + 2.0D0*U1I - 4.0D0*S4I + 4.0D0*SPPT1I )

C UP*S3å-1 TERM
      Q(13) = YY(8) *
     #   (  - 4.0D0*M2*T1I*S4I - 4.0D0*M2*U1I*S4I + 2.0D0*Q2*U1I*
     #    S4I + 2.0D0*U1I*S4I*SP - 2.0D0*U1I )

C U6å-1*U7å-1 TERM
      Q14A = UU(1) *
     #   (  - 32.0D0*M23*T1I*U1I - 32.0D0*M23*T1I*SPI +
     #   16.0D0*M22*Q2*T1I*U1I - 16.0D0*M22*T1I*U1*SPI -
     #   48.0D0*M22*T1I*U1I*SP - 48.0D0*M22*T1I +
     #   16.0D0*M22*U1*SPI*SPPT1I + 16.0D0*M22*U1I*SP*SPPT1I -
     #   16.0D0*M22*U1I + 16.0D0*M22*SPPT1I + 8.0D0*M2*Q22*T1I*U1I
     #   + 8.0D0*M2*Q22*T1I*SPI - 8.0D0*M2*Q2*T1I*U1*SPI -
     #   12.0D0*M2*Q2*T1I*U1I*SP - 8.0D0*M2*Q2*T1I +
     #   8.0D0*M2*Q2*U1*SPI*SPPT1I + 8.0D0*M2*Q2*U1I*SP*SPPT1I -
     #   12.0D0*M2*Q2*U1I - 4.0D0*M2*T1*U1I*SP*SPPT1I +
     #   4.0D0*M2*T1*SPPT1I - 4.0D0*M2*T1I*U1 - 4.0D0*M2*T1I*SP +
     #   8.0D0*M2*U1*SPPT1I - 4.0D0*M2*U1I*SPP2*SPPT1I +
     #   12.0D0*M2*SP*SPPT1I - 4.0D0*Q23*T1I*U1I +
     #   12.0D0*Q22*T1I*U1I*SP + 8.0D0*Q22*T1I + 4.0D0*Q22*U1I -
     #   4.0D0*Q22*SPPT1I)
      Q14B = UU(1) *
     #    ( - 7.0D0*Q2*T1*U1I*SP*SPPT1I - 2.0D0*Q2*T1*U1I - Q2*T1*SPPT1I
     #   - 6.0D0*Q2*T1I*U1 - 12.0D0*Q2*T1I*U1I*SPP2 - 16.0D0*Q2*T1I*SP +
     #    4.0D0*Q2*U1*SPPT1I - 7.0D0*Q2*U1I*SPP2*SPPT1I - Q2*U1I*SP +
     #    3.0D0*Q2*SP*SPPT1I - 3.0D0*Q2 + 7.0D0*TP2*U1I*SP*SPPT1I +
     #    2.0D0*TP2*SPPT1I + 2.0D0*T1*U1*SPPT1I +
     #    18.0D0*T1*U1I*SPP2*SPPT1I - 5.0D0*T1*U1I*SP +
     #    18.0D0*T1*SP*SPPT1I - 2.0D0*T1 + 2.0D0*T1I*UP2 +
     #    6.0D0*T1I*U1*SP + 4.0D0*T1I*U1I*SPP3 + 8.0D0*T1I*SPP2 -
     #    2.0D0*UP2*SPPT1I + 2.0D0*U1*SP*SPPT1I - 2.0D0*U1 +
     #    11.0D0*U1I*SPP3*SPPT1I - 7.0D0*U1I*SPP2 + 14.0D0*SPP2*SPPT1I
     #    - 10.0D0*SP )
      Q(14) = Q14A + Q14B

C S3å-1*U7å-1 TERM
      Q15A = ZZ(5) *
     #  (  - 32.0D0*M23*T1I*S4I + 32.0D0*M23*T1I*SPI -
     #  32.0D0*M23*U1I*S4I + 16.0D0*M22*Q2*U1I*S4I -
     #  32.0D0*M22*T1*U1I*S4I + 16.0D0*M22*T1I*U1*S4I -
     #  16.0D0*M22*T1I*U1I*SP + 32.0D0*M22*T1I*S4I*SP - 48.0D0*M22*T1I
     #  + 16.0D0*M22*U1I*S4I*SP + 16.0D0*M22*U1I +
     #  8.0D0*M2*Q22*T1I*S4I - 8.0D0*M2*Q22*T1I*SPI +
     #  8.0D0*M2*Q22*U1I*S4I + 4.0D0*M2*Q2*T1*U1I*S4I -
     #  8.0D0*M2*Q2*T1I*U1*S4I - 8.0D0*M2*Q2*T1I*U1I*SP -
     #  8.0D0*M2*Q2*T1I + 16.0D0*M2*Q2*U1I*S4I*SP - 16.0D0*M2*Q2*U1I +
     #  8.0D0*M2*Q2*S4I - 4.0D0*M2*TP2*U1I*S4I + 4.0D0*M2*T1*U1I*S4I*SP
     #  + 4.0D0*M2*T1*U1I - 2.0D0*M2*T1*S4I - 4.0D0*M2*T1I*U1*S4I*SP +
     #  4.0D0*M2*T1I*U1 - 4.0D0*M2*T1I*S4I*SPP2 + 4.0D0*M2*T1I*SP +
     #  2.0D0*M2*U1*S4I + 8.0D0*M2*U1I*S4I*SPP2 - 4.0D0*M2*U1I*SP)
      Q15B = ZZ(5) *
     #   ( 10.0D0*M2*S4I*SP - 6.0D0*M2 - 4.0D0*Q23*U1I*S4I -
     #  12.0D0*Q22*U1I*S4I*SP + 4.0D0*Q22*U1I - 4.0D0*Q22*S4I -
     #  2.0D0*Q2*T1*U1I - 2.0D0*Q2*T1I*U1*S4I*SP - 2.0D0*Q2*T1I*S4I*SPP2
     #  + 2.0D0*Q2*T1I*SP - 2.0D0*Q2*U1*S4I - 12.0D0*Q2*U1I*S4I*SPP2 +
     #  6.0D0*Q2*U1I*SP - 10.0D0*Q2*S4I*SP + 2.0D0*Q2 - 2.0D0*T1*U1I*SP
     #  - 2.0D0*T1I*U1*S4I*SPP2 - 2.0D0*T1I*S4I*SPP3 + 2.0D0*T1I*SPP2 -
     #  2.0D0*U1*S4I*SP - 4.0D0*U1I*S4I*SPP3 + 2.0D0*U1I*SPP2 -
     #  6.0D0*S4I*SPP2 + 2.0D0*SP )
      Q(15) = Q15A + Q15B

C U7å-1 TERM
      Q(16) = RR(7) *
     #  (  - 12.0D0 - 16.0D0*M22*T1I*U1I - 16.0D0*M22*U1I*S4I -
     #  12.0D0*M2*Q2*T1I*U1I - 12.0D0*M2*Q2*U1I*S4I -
     #  6.0D0*M2*T1*U1I*S4I - 7.0D0*M2*T1I*U1*S4I - 4.0D0*M2*T1I*U1I*SP
     #  - 7.0D0*M2*T1I*S4I*SP - M2*T1I - 2.0D0*M2*U1I*S4I*SP -
     #  10.0D0*M2*U1I - 5.0D0*M2*S4I + 4.0D0*Q22*T1I*U1I +
     #  4.0D0*Q22*U1I*S4I + 5.0D0*Q2*T1*U1I*S4I - 3.0D0*Q2*T1I*U1*S4I
     #  - 6.0D0*Q2*T1I*U1I*SP - 3.0D0*Q2*T1I*S4I*SP - Q2*T1I +
     #  11.0D0*Q2*U1I*S4I*SP - 25.0D0*Q2*U1I + 4.0D0*Q2*S4I +
     #  TP2*U1I*S4I + 6.0D0*T1*U1I*S4I*SP - 17.0D0*T1*U1I +
     #  13.0D0*T1*S4I + T1I*UP2*S4I + 2.0D0*T1I*U1*S4I*SP - T1I*U1 +
     #  2.0D0*T1I*U1I*SPP2 + T1I*S4I*SPP2 + T1I*SP + 9.0D0*U1*S4I +
     #  7.0D0*U1I*S4I*SPP2 - 13.0D0*U1I*SP + 16.0D0*S4I*SP )

C U7å-2*S3å-1 TERM
      Q(17) = ZZ(6) *
     #   (  - 32.0D0*M23*T1I - 16.0D0*M22*Q2*T1I )

C U7å-2 TERM
      Q(18) = RR(8) *
     #   ( 8.0D0*M2 + 4.0D0*Q2 )

C S3å-1*U6å-1 TERM
      Q19A = ZZ(1) *
     #  (  - 32.0D0*M23*T1I*S4I + 32.0D0*M23*T1I*SPI -
     #  32.0D0*M23*U1I*S4I + 16.0D0*M22*Q2*T1I*S4I +
     #  16.0D0*M22*T1*U1I*S4I - 32.0D0*M22*T1I*U1*S4I +
     #  16.0D0*M22*T1I*U1*SPI + 16.0D0*M22*T1I*S4I*SP -
     #  16.0D0*M22*U1*SPI*SPPT1I + 32.0D0*M22*U1I*S4I*SP -
     #  16.0D0*M22*U1I*SP*SPPT1I - 16.0D0*M22*U1I + 16.0D0*M22*SPPT1I +
     #  8.0D0*M2*Q22*T1I*S4I - 8.0D0*M2*Q22*T1I*SPI +
     #  8.0D0*M2*Q22*U1I*S4I - 4.0D0*M2*Q2*T1*U1I*S4I +
     #  4.0D0*M2*Q2*T1I*U1*S4I + 8.0D0*M2*Q2*T1I*U1*SPI +
     #  16.0D0*M2*Q2*T1I*S4I*SP - 4.0D0*M2*Q2*T1I -
     #  8.0D0*M2*Q2*U1*SPI*SPPT1I + 4.0D0*M2*Q2*U1I*S4I*SP -
     #  8.0D0*M2*Q2*U1I*SP*SPPT1I + 4.0D0*M2*Q2*U1I + 12.0D0*M2*Q2*S4I -
     #  4.0D0*M2*T1*U1I*S4I*SP + 14.0D0*M2*T1*U1I*SP*SPPT1I +
     #  2.0D0*M2*T1*S4I - 4.0D0*M2*T1*SPPT1I - 4.0D0*M2*T1I*UP2*S4I)
      Q19B = ZZ(1) * (
     #  + 4.0D0*M2*T1I*U1*S4I*SP + 8.0D0*M2*T1I*S4I*SPP2 -
     #  8.0D0*M2*T1I*SP - 2.0D0*M2*U1*S4I + 8.0D0*M2*U1*SPPT1I -
     #  4.0D0*M2*U1I*S4I*SPP2 + 14.0D0*M2*U1I*SPP2*SPPT1I -
     # 10.0D0*M2*U1I*SP + 10.0D0*M2*S4I*SP - 12.0D0*M2*SP*SPPT1I
     # - 2.0D0*M2 - 4.0D0*Q23*T1I*S4I - 2.0D0*Q22*T1*U1I*S4I -
     #  12.0D0*Q22*T1I*S4I*SP + 8.0D0*Q22*T1I - 2.0D0*Q22*U1I*S4I*SP +
     #  2.0D0*Q22*U1I - 6.0D0*Q22*S4I - 4.0D0*Q22*SPPT1I -
     #  4.0D0*Q2*T1*U1I*S4I*SP - 2.0D0*Q2*T1*S4I + Q2*T1*SPPT1I -
     #  6.0D0*Q2*T1I*U1 - 12.0D0*Q2*T1I*S4I*SPP2 + 10.0D0*Q2*T1I*SP +
     #  4.0D0*Q2*U1*SPPT1I - 4.0D0*Q2*U1I*S4I*SPP2 + 4.0D0*Q2*U1I*SP
     #  - 12.0D0*Q2*S4I*SP - 3.0D0*Q2*SP*SPPT1I + Q2 - 2.0D0*TP2*SPPT1I
     #  - 2.0D0*T1*U1*SPPT1I - 2.0D0*T1*U1I*S4I*SPP2 +
     #  2.0D0*T1*U1I*SPP2*SPPT1I - 2.0D0*T1*S4I*SP - T1*SP*SPPT1I +
     #  2.0D0*T1 + 2.0D0*T1I*UP2 - 2.0D0*T1I*U1*SP - 4.0D0*T1I*S4I*SPP3
     #  + 4.0D0*T1I*SPP2 - 2.0D0*UP2*SPPT1I - 2.0D0*U1*SP*SPPT1I
     #  + 2.0D0*U1 - 2.0D0*U1I*S4I*SPP3 + 2.0D0*U1I*SPP3*SPPT1I -
     #  6.0D0*S4I*SPP2 - SPP2*SPPT1I + SP )
      Q(19) = Q19A + Q19B

C U6å-1 TERM
      Q20A = RR(27) *
     #  ( 4.0D0 - 32.0D0*M23*T1I*U1I*S4I - 32.0D0*M23*U1I2*S4I -
     #  16.0D0*M22*Q2*T1I*U1I*S4I - 16.0D0*M22*Q2*U1I2*S4I +
     #  8.0D0*M22*T1*U1I2*S4I + 24.0D0*M22*T1I*U1I*S4I*SP -
     #  56.0D0*M22*T1I*U1I - 8.0D0*M22*T1I*S4I + 16.0D0*M22*U1I*SPPT1I +
     #  8.0D0*M22*U1I2*S4I*SP - 8.0D0*M22*U1I2 + 4.0D0*M2*Q2*T1*U1I2*S4I
     #  + 2.0D0*M2*Q2*T1I*U1I*S4I*SP - 6.0D0*M2*Q2*T1I*U1I -
     #  2.0D0*M2*Q2*T1I*S4I - 6.0D0*M2*Q2*U1I*S4I +
     #  8.0D0*M2*Q2*U1I*SPPT1I + 4.0D0*M2*Q2*U1I2*S4I*SP -
     #  4.0D0*M2*Q2*U1I2 + 8.0D0*M2*T1*U1I*S4I +
     #  6.0D0*M2*T1*U1I2*SP*SPPT1I - 8.0D0*M2*T1I*U1*S4I -
     #  10.0D0*M2*T1I*U1I*S4I*SPP2 + 10.0D0*M2*T1I*U1I*SP -
     #  18.0D0*M2*T1I*S4I*SP - 16.0D0*M2*T1I - 6.0D0*M2*U1I*S4I*SP -
     #  16.0D0*M2*U1I + 6.0D0*M2*U1I2*SPP2*SPPT1I - 6.0D0*M2*U1I2*SP +
     #  16.0D0*M2*SPPT1I + 4.0D0*Q22*T1I*U1I + 4.0D0*Q22*T1I*S4I +
     #  2.0D0*Q2*T1*U1I*S4I + 3.0D0*Q2*T1*U1I2*SP*SPPT1I)
      Q20B = RR(27) * (
     #  + 6.0D0*Q2*T1I*U1*S4I + 4.0D0*Q2*T1I*U1I*S4I*SPP2 -
     #  12.0D0*Q2*T1I*U1I*SP + 18.0D0*Q2*T1I*S4I*SP - 14.0D0*Q2*T1I +
     #  6.0D0*Q2*U1I*S4I*SP - 6.0D0*Q2*U1I + 3.0D0*Q2*U1I2*SPP2*SPPT1I -
     #  3.0D0*Q2*U1I2*SP + 10.0D0*Q2*S4I + 4.0D0*Q2*SPPT1I -
     #  4.0D0*T1*U1I*SP*SPPT1I + 2.0D0*T1*U1I + 2.0D0*T1I*UP2*S4I +
     #  8.0D0*T1I*U1*S4I*SP + 2.0D0*T1I*U1 + 2.0D0*T1I*U1I*S4I*SPP3
     #  + 2.0D0*T1I*U1I*SPP2 + 12.0D0*T1I*S4I*SPP2 - 4.0D0*T1I*SP -
     #  2.0D0*U1*S4I + 4.0D0*U1*SPPT1I + 2.0D0*U1I*S4I*SPP2 -
     #  4.0D0*U1I*SPP2*SPPT1I + 8.0D0*U1I*SP + 4.0D0*S4I*SP +
     #  2.0D0*SP*SPPT1I )
      Q(20) = Q20A + Q20B

C S3å-1 TERM
      Q(21) = YY(1) *
     # (  - 6.0D0 + 16.0D0*M22*T1I*S4I + 16.0D0*M22*U1I*S4I +
     #  16.0D0*M2*Q2*T1I*S4I + 16.0D0*M2*Q2*U1I*S4I +
     #  6.0D0*M2*T1*U1I*S4I + 6.0D0*M2*T1I*U1*S4I + 10.0D0*M2*T1I*S4I*SP
     #  - 2.0D0*M2*T1I + 10.0D0*M2*U1I*S4I*SP - 2.0D0*M2*U1I -
     #  4.0D0*M2*S4I - 4.0D0*Q22*T1I*S4I - 6.0D0*Q22*U1I*S4I -
     #  6.0D0*Q2*T1I*S4I*SP + 4.0D0*Q2*T1I - 8.0D0*Q2*U1I*S4I*SP
     #  + 6.0D0*Q2*U1I + 4.0D0*Q2*S4I + 2.0D0*T1*U1I -
     #  2.0D0*T1I*S4I*SPP2 + 2.0D0*T1I*SP - 2.0D0*U1I*S4I*SPP2 +
     #  2.0D0*U1I*SP + 4.0D0*S4I*SP )

C TERMS INDEPENDENT OF ANGLE
      Q(22) = RR(0) *
     #  ( 8.0D0*M2*T1*U1I2*S4I - 3.0D0*M2*T1I*U1I*S4I*SP +
     #  7.0D0*M2*T1I*U1I - 11.0D0*M2*T1I*S4I - 3.0D0*M2*U1I*S4I +
     #  8.0D0*M2*U1I2*S4I*SP + 4.0D0*Q2*T1*U1I2*S4I -
     #  2.0D0*Q2*T1I*U1I*S4I*SP - 2.0D0*Q2*T1I*U1I + 4.0D0*Q2*U1I*S4I +
     #  4.0D0*Q2*U1I2*S4I*SP - 2.0D0*T1*U1I*S4I - 7.0D0*T1I*U1*S4I +
     #  6.0D0*T1I*U1I*SP - 5.0D0*T1I*S4I*SP + 9.0D0*T1I + 10.0D0*U1I -
     #  9.0D0*S4I)

      EGCACF = 0.0D0
      DO 10 I = 1,22
      EGCACF = EGCACF + Q(I)
 10   CONTINUE
C IN FORM THE MATRIX ELEMENT HAS ALREADY BEEN DIVIDED BY -4, SO:
c REALIZE THAT FOR THESE DIAGRAM THERE ARE TWO GL. POLNS.
C HENCE THERE IS A MINUS LEFT FROM THE DEFINITION
      ROKGAM = EGCACF/2.0D0
      RETURN
      END
      DOUBLE PRECISION FUNCTION ROKL(SP,T1,U1,M2,Q2)
C This is the hard matrix element for gamma-gluon fusion for an off-
C  shell photon.  This is the CACF piece.
      IMPLICIT DOUBLE PRECISION (A - Z)
CEL      DIMENSION RR(0:43), SS(28), TT(2), UU(1), VV(1), YY(12), ZZ(8)
CSR      DIMENSION RR(0:38), SS(28), TT(2), UU(1), VV(1), YY(12), ZZ(8)
      DIMENSION Q(22)
      INTEGER I
C
      COMMON/INTS/RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
CSR      COMMON/INTS/RR(0:38),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
C
      M22 = M2*M2
      M23 = M2*M22

      S4 = SP + T1 + U1
      S4I = 1.0D0/S4

      TP2 = T1*T1
      TP3 = T1*TP2
      TP4 = T1*TP3
      T1I1 = 1.0D0/T1

      UP2 = U1*U1
      UP3 = U1*UP2
      U1I1 = 1.0D0/U1
      U1I2 = U1I1/U1

      SPP2 = SP*SP
      SPP3 = SP*SPP2
      SPP4 = SP*SPP3
      SPI = 1.0D0/SP

      Q22 = Q2*Q2
      Q23 = Q2*Q22

      SPPT1 = SP + T1
      SPPT1I = 1.0D0/SPPT1

CEL      CALL RSTEG(SP,T1,U1,M2,Q2)
      CALL RSTEGG(SP,T1,U1,M2,Q2)
CSR      CALL RSTNEW(SP,T1,U1,M2)
c tpå-1 term. This is pure pole term and hence can be discarded
c here.
        Q(1) = 0.D0
c       Q(1) = RR(6) *
c       ( 4*m2*tp3*u1i2*s4i-2*m2*tp2*u1i1*s4i+8*m2*tp2*
c         u1i2*s4i*sp+16*m2*tp2*u1i2*sp*sppt1i-36*m2*tp2*u1i2-4*
c         m2*t1*u1i1*s4i*sp+10*m2*t1*u1i1*sp*sppt1i-10*m2*t1*u1i1+
c         4*m2*t1*u1i2*s4i*spp2+32*m2*t1*u1i2*spp2*sppt1i-52*m2*t1*
c         u1i2*sp+4*m2*t1*s4i+4*m2*t1i1*up2*s4i+4*m2*t1i1*u1*
c         s4i*sp-4*m2*t1i1*u1-18*m2*u1*s4i-2*m2*u1i1*s4i*spp2+
c         10*m2*u1i1*spp2*sppt1i+8*m2*u1i1*sp+16*m2*u1i2*spp3*sppt1i
c         -16*m2*u1i2*spp2-8*m2*s4i*sp+22*m2-8*q2*t1*u1i1-2*q2*
c         t1i1*up2*s4i-2*q2*t1i1*u1*s4i*sp+2*q2*t1i1*u1+6*q2*u1*
c         s4i-8*q2*u1i1*sp-8*q2+8*tp3*u1i1*s4i+2*tp3*u1i2*sp*
c         sppt1i-16*tp3*u1i2+16*tp2*u1i1*s4i*sp-8*tp2*u1i1+6*
c         tp2*u1i2*spp2*sppt1i-34*tp2*u1i2*sp+6*tp2*s4i-4*t1*u1*
c         s4i+8*t1*u1i1*s4i*spp2+16*t1*u1i1*sp+6*t1*u1i2*spp3*
c         sppt1i-20*t1*u1i2*spp2+10*t1*s4i*sp-2*t1*sp*sppt1i+2*
c         t1+4*t1i1*up3*s4i+2*t1i1*up2*s4i*sp-4*t1i1*up2-2*
c         t1i1*u1*s4i*spp2+2*t1i1*u1*sp+2*up2*s4i+4*u1*s4i*sp+
c         2*u1+24*u1i1*spp2+2*u1i2*spp4*sppt1i-2*u1i2*spp3+4*s4i
c         *spp2-2*spp2*sppt1i+10*sp )
c u7å-1 term
       Q(2) = RR(7) * (
     #  -32*m22*t1*u1i1*s4i+16*m22*t1i1*u1*s4i-16*m22*
     #   t1i1*u1i1*sp-16*m22*t1i1-16*m22*u1i1*s4i*sp-32*m22*
     #   u1i1-16*m22*s4i+16*m2*q2*t1*u1i1*s4i-12*m2*q2*t1i1*u1*
     #   s4i+8*m2*q2*t1i1*u1i1*sp-4*m2*q2*t1i1*s4i*sp-4*m2*q2*
     #   t1i1+8*m2*q2*u1i1*s4i*sp+32*m2*q2*u1i1-12*m2*q2*s4i-20
     #   *m2*tp2*u1i1*s4i-14*m2*t1*u1i1*s4i*sp-44*m2*t1*u1i1-20*
     #   m2*t1*s4i-24*m2*t1i1*up2*s4i-28*m2*t1i1*u1*s4i*sp+40*
     #   m2*t1i1*u1-4*m2*t1i1*s4i*spp2+12*m2*t1i1*sp-8*m2*u1*s4i
     #   +6*m2*u1i1*s4i*spp2-38*m2*u1i1*sp-6*m2*s4i*sp-4*q22*t1
     #   *u1i1*s4i-4*q22*u1i1*s4i*sp-4*q22*u1i1+64*q2*t1*u1i1
     #   +8*q2*t1*s4i+4*q2*t1i1*up2*s4i+4*q2*t1i1*u1*s4i*sp-4
     #   *q2*t1i1*u1+20*q2*u1*s4i+32*q2*u1i1*sp+20*q2*s4i*sp-8*
     #   q2+4*tp2*u1i1*s4i*sp-48*tp2*u1i1+6*tp2*s4i-4*t1*u1*
     #   s4i+8*t1*u1i1*s4i*spp2-52*t1*u1i1*sp+10*t1*s4i*sp-6*
     #   t1+4*t1i1*up2*s4i*sp+4*t1i1*u1*s4i*spp2-4*t1i1*u1*sp-
     #    10*up2*s4i+2*u1*s4i*sp+10*u1+4*u1i1*s4i*spp3-20*u1i1
     #    *spp2+12*s4i*spp2-16*sp )
c u7å-2 term
      Q(3) = RR(8) * (
     #  -32*m22*t1i1*sp-32*m22-64*m2*t1-32*m2*sp-56*tp2
     #    -24*t1*sp )
c tpå-1*u7å-1 term
      Q(4) = RR(9) * (
     #   6*m2*tp3*u1i1*s4i+4*m2*tp2*u1i1*s4i*sp-70*m2*tp2*
     #   u1i1-2*m2*t1*u1*s4i-2*m2*t1*u1i1*s4i*spp2-62*m2*t1*u1i1*
     #   sp+2*m2*t1*sp*sppt1i+6*m2*t1+8*m2*t1i1*up3*s4i+8*m2*
     #   t1i1*up2*s4i*sp-8*m2*t1i1*up2-4*m2*up2*s4i-4*m2*u1*
     #   s4i*sp+28*m2*u1+32*m2*u1i1*spp2-8*m2*s4i*spp2+2*m2*spp2*
     #   sppt1i+22*m2*sp-4*q2*tp2*u1i1*sp*sppt1i+64*q2*tp2*u1i1
     #   -4*q2*tp2*s4i-2*q2*t1*u1*s4i-8*q2*t1*u1i1*spp2*sppt1i
     #   +68*q2*t1*u1i1*sp-4*q2*t1*s4i*sp-4*q2*t1*sp*sppt1i+4*q2*
     #   t1-6*q2*up2*s4i-6*q2*u1*s4i*sp+6*q2*u1-4*q2*u1i1*spp3*
     #   sppt1i+4*q2*u1i1*spp2-4*q2*spp2*sppt1i+4*q2*sp-64*tp3*
     #   u1i1-6*tp2*u1*s4i+4*tp2*u1i1*spp2*sppt1i-96*tp2*u1i1*
     #   sp-8*tp2*s4i*sp-6*t1*up2*s4i-12*t1*u1*s4i*sp+6*t1*u1
     #   +8*t1*u1i1*spp3*sppt1i-36*t1*u1i1*spp2-8*t1*s4i*spp2+8*
     #   t1*spp2*sppt1i-24*t1*sp-6*up2*s4i*sp-6*u1*s4i*spp2+4*
     #   u1*spp2*sppt1i+2*u1*sp+4*u1i1*spp4*sppt1i-4*u1i1*spp3+8
     #   *spp3*sppt1i-8*spp2 )
c tpå-1*u7 term
      Q(5) = RR(10) * (
     #    -2+8*m2*t1*u1i1*s4i+8*m2*u1i1*s4i*sp+8*m2*u1i1
     #    -8*m2*s4i+2*t1*s4i-4*t1i1*up2*s4i+4*t1i1*u1-4*
     #    t1i1*u1i1*spp2-4*t1i1*sp-2*u1*s4i-4*u1i1*sp+2*s4i*sp
     #     )
c tpå-1*u7å-2 term
      Q(6) = RR(12) * (
     #   -32*m2*tp2-32*m2*t1*sp-48*tp3-32*tp2*sp )
c tp*u7å-1 term
      Q(7) = RR(13) * (
     #    -10+8*m2*q2*t1i1*u1i1+8*m2*q2*t1i1*s4i+8*m2*q2*
     #    u1i1*s4i-6*m2*t1*u1i1*s4i+14*m2*t1i1*u1*s4i+14*m2*
     #    t1i1*s4i*sp-14*m2*t1i1-6*m2*u1i1*s4i*sp+6*m2*u1i1+8*
     #    m2*s4i-4*q22*t1i1*u1i1-4*q22*u1i1*s4i+4*q2*t1*u1i1*
     #    s4i-4*q2*t1i1*u1*s4i+8*q2*t1i1*u1i1*sp-4*q2*t1i1*s4i*
     #    sp+8*q2*t1i1-4*q2*u1i1*s4i*sp+28*q2*u1i1-4*q2*s4i+8*
     #    t1*u1i1*s4i*sp-16*t1*u1i1+10*t1*s4i-4*t1i1*u1*s4i*sp
     #    -4*t1i1*u1i1*spp2-4*t1i1*s4i*spp2+10*u1*s4i+4*u1i1*
     #    s4i*spp2-16*u1i1*sp+10*s4i*sp )
c tp*u7å-2 term
      Q(8) = RR(14) * (
     #   -32*m22*t1i1-32*m2-32*t1-8*sp )
c tpå-2 term
      Q(9) = RR(15) * (
     #     -16*tp4*u1i2-48*tp3*u1i2*sp-48*tp2*u1i2*spp2-16
     #    *t1*u1i2*spp3 )
c tpå-2*u7å-1 term
      Q(10) = RR(17) * (
     #   -32*tp4*u1i1-64*tp3*u1i1*sp-32*tp2*u1i1*spp2 )
c tpå-2*u7å-2 term
      Q(11) = RR(18) * (
     #   -16*tp4-16*tp3*sp )
c u6å-1 term
      Q(12) = RR(27) * (
     #   32*m22*tp2*u1i2*s4i+16*m22*t1*u1i1*s4i+32*m22*
     #   t1*u1i2*s4i*sp+16*m22*u1i1*s4i*sp+16*m22*u1i1-16*m22*
     #   s4i-8*m2*tp3*u1i2*s4i-4*m2*tp2*u1i1*s4i-16*m2*tp2*
     #   u1i2*s4i*sp+16*m2*tp2*u1i2*sp*sppt1i+8*m2*tp2*u1i2-12*
     #   m2*t1*u1i1*s4i*sp+10*m2*t1*u1i1*sp*sppt1i-4*m2*t1*u1i1-8
     #   *m2*t1*u1i2*s4i*spp2+32*m2*t1*u1i2*spp2*sppt1i-8*m2*t1*
     #   u1i2*sp-16*m2*t1*s4i-8*m2*t1i1*up2*s4i+8*m2*t1i1*u1-8
     #   *m2*t1i1*u1i1*spp2-8*m2*t1i1*sp-12*m2*u1*s4i-8*m2*u1i1*
     #   s4i*spp2+10*m2*u1i1*spp2*sppt1i-10*m2*u1i1*sp+16*m2*u1i2
     #   *spp3*sppt1i-16*m2*u1i2*spp2-12*m2*s4i*sp+4*m2-4*q2*t1*
     #   u1i1+4*q2*u1*s4i-4*q2*u1i1*sp-4*q2-6*tp3*u1i2*sp*
     #   sppt1i-8*tp2*u1i1*sp*sppt1i-18*tp2*u1i2*spp2*sppt1i+6
     #   *tp2*u1i2*sp+4*tp2*s4i+12*t1*u1*s4i-16*t1*u1i1*spp2*
     #   sppt1i+12*t1*u1i1*sp-18*t1*u1i2*spp3*sppt1i+12*t1*u1i2*
     #   spp2+12*t1*s4i*sp-2*t1*sp*sppt1i-4*t1+8*up2*s4i+20*
     #   u1*s4i*sp-8*u1-8*u1i1*spp3*sppt1i+12*u1i1*spp2-6*u1i2*
     #    spp4*sppt1i+6*u1i2*spp3+8*s4i*spp2-2*spp2*sppt1i-2*sp
     #     )
c up*u6å-1 term
      Q(13) = RR(33) * (
     #    -8.D0-8*m2*t1*u1i1*s4i-8*m2*u1i1*s4i*sp-8*m2*u1i1
     #    +8*m2*s4i+8*t1*s4i+8*u1*s4i+8*s4i*sp )
c tpå2*u7å-2 term
      Q(14) = RR(40) * ( -8.D0 )
c s3å-1 term
      Q(15) = YY(1) * (
     #   8*m2*q22*t1i1*s4i+8*m2*q22*u1i1*s4i+4*m2*q2*t1i1*
     #   u1*s4i+12*m2*q2*t1i1*s4i*sp-4*m2*q2*t1i1+12*m2*q2*u1i1*
     #   s4i*sp-24*m2*q2*u1i1+44*m2*q2*s4i+12*m2*tp2*u1i1*s4i
     #   +16*m2*t1*u1i1*s4i*sp-28*m2*t1*u1i1+12*m2*t1i1*up2*s4i
     #   +16*m2*t1i1*u1*s4i*sp-20*m2*t1i1*u1+4*m2*t1i1*s4i*spp2
     #   -12*m2*t1i1*sp+4*m2*u1i1*s4i*spp2-40*m2*u1i1*sp+28*m2*
     #   s4i*sp-20*m2-4*q23*t1i1*s4i-8*q22*t1i1*s4i*sp+12*
     #   q22*t1i1+4*q22*u1i1*s4i*sp-4*q22*s4i-4*q2*tp2*u1i1*
     #   s4i-8*q2*t1*u1i1*s4i*sp-8*q2*t1*s4i-4*q2*t1i1*up2*
     #   s4i-4*q2*t1i1*u1*s4i*sp-8*q2*t1i1*u1-4*q2*t1i1*s4i*
     #   spp2+4*q2*t1i1*sp-8*q2*u1*s4i+4*q2*u1i1*sp-20*q2*s4i*sp
     #   -4*q2-4*tp2*u1i1*s4i*sp-8*t1*u1i1*s4i*spp2-8*t1*s4i*
     #   sp+8*t1-4*t1i1*up2*s4i*sp+4*t1i1*up2-4*t1i1*u1*s4i*
     #   spp2+4*t1i1*u1*sp-8*u1*s4i*sp+12*u1-4*u1i1*s4i*spp3+4
     #   *u1i1*spp2-16*s4i*spp2+16*sp )
c tp*s3å-1 term
      Q(16) = YY(3) * (
     #   8-8*m2*q2*t1i1*s4i-8*m2*q2*u1i1*s4i+12*m2*t1*u1i1
     #   *s4i-8*m2*t1i1*u1*s4i-16*m2*t1i1*s4i*sp+16*m2*t1i1-
     #   12*m2*u1i1-4*m2*s4i+4*q22*u1i1*s4i+4*q2*t1i1*u1*s4i
     #   +4*q2*t1i1*s4i*sp-8*q2*t1i1+4*q2*u1i1*s4i*sp+4*t1i1*
     #   u1*s4i*sp+4*t1i1*u1+4*t1i1*s4i*spp2-4*t1i1*sp )
c tpå-1*s3å-1 term
      Q(17) = YY(7) * (
     #   12*m2*tp2*u1i1*sp*sppt1i-16*m2*tp2*u1i1+16*m2*t1*
     #   u1i1*spp2*sppt1i-28*m2*t1*u1i1*sp+4*m2*t1*sp*sppt1i-32*m2
     #   *t1-16*m2*u1+4*m2*u1i1*spp3*sppt1i-20*m2*u1i1*spp2+4*m2*
     #   spp2*sppt1i-20*m2*sp-2*q2*tp2*u1i1*sp*sppt1i-8*q2*tp2*
     #   u1i1-4*q2*t1*u1i1*spp2*sppt1i-6*q2*t1*u1i1*sp-2*q2*t1*sp*
     #   sppt1i+8*q2*t1-2*q2*u1i1*spp3*sppt1i+2*q2*u1i1*spp2-2*
     #   q2*spp2*sppt1i+2*q2*sp-2*tp2*u1i1*spp2*sppt1i-8*tp2*
     #   u1i1*sp-4*tp2*sp*sppt1i-4*t1*u1*sp*sppt1i-4*t1*u1i1*spp3
     #   *sppt1i-6*t1*u1i1*spp2-6*t1*spp2*sppt1i+8*t1*sp-2*u1i1*
     #   spp4*sppt1i+2*u1i1*spp3-2*spp3*sppt1i+2*spp2 )
c up*s3å-1 term
      Q(18) = YY(8) * (
     #   8-8*m2*q2*t1i1*s4i-8*m2*q2*u1i1*s4i-4*m2*t1*u1i1*
     #   s4i-8*m2*t1i1*s4i*sp+8*m2*t1i1-16*m2*u1i1*s4i*sp+4*
     #   m2*u1i1-12*m2*s4i+4*q22*t1i1*s4i+4*q2*t1*u1i1*s4i+8
     #   *q2*t1i1*s4i*sp-8*q2*t1i1+4*t1*u1i1*s4i*sp+4*t1i1*u1+
     #   4*t1i1*s4i*spp2-4*t1i1*sp )
c s3å-1*u6å-1 term
      Q(19) = ZZ(1) * (
     #   16*m22*tp2*u1i1*s4i+16*m22*t1*u1i1*s4i*sp-16*m22
     #   *t1*u1i1+16*m22*t1*s4i-16*m22*t1i1*up2*s4i+16*m22*
     #   t1i1*u1-16*m22*t1i1*sp-16*m22*u1*s4i-16*m22*u1i1*sp+
     #   16*m22*s4i*sp-8*m2*q2*tp2*u1i1*s4i-8*m2*q2*t1*u1i1*s4i*
     #   sp-4*m2*q2*t1*s4i+8*m2*q2*t1i1*up2*s4i-8*m2*q2*t1i1*u1
     #   +8*m2*q2*t1i1*sp+12*m2*q2*u1*s4i-4*m2*q2*s4i*sp-4*m2*q2
     #   -8*m2*tp2*u1i1*s4i*sp+12*m2*tp2*u1i1*sp*sppt1i+4*m2*
     #   tp2*s4i+4*m2*t1*u1*s4i-8*m2*t1*u1i1*s4i*spp2+16*m2*t1*
     #   u1i1*spp2*sppt1i-4*m2*t1*u1i1*sp+4*m2*t1*sp*sppt1i-4*m2*
     #   t1+8*m2*t1i1*up2*s4i*sp-8*m2*t1i1*u1*sp+12*m2*u1*s4i*sp
     #   +4*m2*u1i1*spp3*sppt1i-4*m2*u1i1*spp2-4*m2*s4i*spp2+4*
     #   m2*spp2*sppt1i-4*q22*u1*s4i+4*q22-2*q2*tp2*u1i1*sp*
     #   sppt1i-4*q2*t1*u1i1*spp2*sppt1i+2*q2*t1*u1i1*sp-2*q2*t1*
     #   sp*sppt1i-8*q2*u1*s4i*sp-2*q2*u1i1*spp3*sppt1i+2*q2*
     #   u1i1*spp2-2*q2*spp2*sppt1i+2*q2*sp-4*tp3*u1i1*sp*sppt1i
     #   -10*tp2*u1i1*spp2*sppt1i+4*tp2*u1i1*sp-8*tp2*sp*sppt1i
     #   -4*t1*u1*sp*sppt1i-8*t1*u1i1*spp3*sppt1i+6*t1*u1i1*spp2
     #   -10*t1*spp2*sppt1i+8*t1*sp-4*u1*s4i*spp2+4*u1*sp-2*
     #   u1i1*spp4*sppt1i+2*u1i1*spp3-2*spp3*sppt1i+2*spp2 )
c s3å-1*u7å-1 term
      Q(20) = ZZ(5) * (
     #   16*m22*t1*u1i1*s4i*sp-16*m22*t1*s4i+16*m22*t1i1*
     #   up2*s4i+16*m22*t1i1*u1*s4i*sp-16*m22*t1i1*u1+32*m22*
     #   t1i1*sp+16*m22-8*m2*q2*tp2*u1i1*s4i-8*m2*q2*t1*u1i1*
     #   s4i*sp+4*m2*q2*t1*s4i-8*m2*q2*t1i1*up2*s4i-8*m2*q2*
     #   t1i1*u1*s4i*sp+8*m2*q2*t1i1*u1+4*m2*q2*u1*s4i+8*m2*q2*
     #   u1i1*s4i*spp2-8*m2*q2*u1i1*sp+12*m2*q2*s4i*sp-12*m2*q2+
     #   12*m2*tp3*u1i1*s4i+12*m2*tp2*u1i1*s4i*sp-12*m2*tp2*u1i1
     #   -4*m2*tp2*s4i-28*m2*t1*u1*s4i-20*m2*t1*s4i*sp+16*m2*t1
     #   -8*m2*t1i1*up2*s4i*sp-8*m2*t1i1*u1*s4i*spp2+8*m2*t1i1*
     #   u1*sp-12*m2*up2*s4i-24*m2*u1*s4i*sp+12*m2*u1+8*m2*u1i1*
     #   s4i*spp3-4*m2*s4i*spp2+12*m2*sp+4*q22*tp2*u1i1*s4i+4
     #   *q22*t1*u1i1*s4i*sp+4*q2*tp2*u1i1*s4i*sp+4*q2*tp2*s4i
     #   +8*q2*t1*u1*s4i+4*q2*t1*u1i1*sp-4*q2*t1+4*q2*up2*s4i+
     #   4*q2*u1*s4i*sp-4*q2*u1-4*q2*u1i1*s4i*spp3+4*q2*u1i1*spp2
     #   -4*q2*s4i*spp2+4*tp2*s4i*sp+8*t1*u1*s4i*sp-4*t1*u1i1*
     #   s4i*spp3+4*t1*u1i1*spp2-4*t1*sp+4*up2*s4i*sp+4*u1*s4i
     #   *spp2-4*u1*sp-4*u1i1*s4i*spp4+4*u1i1*spp3-4*s4i*spp3 )
c u6å-1*u7å-1 term
      Q(21) = UU(1) * (
     #   -16*m22*t1i1*u1i1*spp2-16*m22*u1i1*sp-8*m2*q2*t1*
     #   u1i1+8*m2*q2*t1i1*u1i1*spp2+2*m2*t1*sp*sppt1i-8*m2*t1i1*
     #   u1i1*spp3-8*m2*t1i1*spp2+2*m2*spp2*sppt1i+6*m2*sp+4*q22*
     #   t1*u1i1+4*q22*u1i1*sp-4*q2*tp2*u1i1*sp*sppt1i-8*q2*t1*
     #   u1i1*spp2*sppt1i-4*q2*t1*u1i1*sp-4*q2*t1*sp*sppt1i-4*q2*
     #   u1i1*spp3*sppt1i-4*q2*u1i1*spp2-4*q2*spp2*sppt1i-4*q2*sp
     #   +4*tp2*u1i1*spp2*sppt1i+8*t1*u1i1*spp3*sppt1i+8*t1*spp2*
     #   sppt1i+4*u1*spp2*sppt1i+4*u1i1*spp4*sppt1i+8*spp3*
     #   sppt1i )
c terms independent of angle
       Q(22) = RR(0) * (
     #  +18-8*m2*q2*t1i1*s4i-8*m2*q2*u1i1*s4i+2*m2*t1*u1i1*s4i
     #   -6*m2*t1i1*u1*s4i+8*m2*t1i1*u1i1*sp-6*m2*t1i1*s4i*sp+
     #   14*m2*t1i1-2*m2*u1i1*s4i*sp-2*m2*u1i1-12*m2*s4i+4*q22
     #   *t1i1*s4i+10*q2*t1i1*u1*s4i-8*q2*t1i1*u1i1*sp+10*q2*
     #   t1i1*s4i*sp-18*q2*t1i1-4*q2*u1i1*s4i*sp+2*q2*s4i-8*
     #   tp3*u1i2*s4i-4*tp2*u1i1*s4i-16*tp2*u1i2*s4i*sp+4*t1
     #   *u1i1*s4i*sp-4*t1*u1i1-8*t1*u1i2*s4i*spp2-6*t1*s4i-4
     #   *t1i1*up2*s4i+2*t1i1*u1*s4i*sp+8*t1i1*u1+8*t1i1*u1i1*
     #   spp2+6*t1i1*s4i*spp2-2*t1i1*sp-14*u1*s4i+4*u1i1*s4i*
     #   spp2+16*u1i1*sp )
      EGCACF_L = 0.0D0
      DO 10 I = 1,22
      EGCACF_L = EGCACF_L + Q(I)
 10   CONTINUE
C IN FORM WE HAVEN'T DIVIDED BY ANYTHING YET, HENCE
C DIVIDE HERE BY 8 (TWO GL. POL. MINUSSES CANCEL!)
      ROKL = EGCACF_L/8.D0
      RETURN
      END
      DOUBLE PRECISION FUNCTION REGH(SP,T1,U1,M2,QF2)
      IMPLICIT DOUBLE PRECISION (A-Z)
C
      S4 = SP + T1 + U1
      S4P2 = S4*S4
      S4M2 = S4 + M2
      S4I = 1.0D0/S4

      SPPT1 = SP + T1
      SPT1P2 = SPPT1*SPPT1
      SPPT1I = 1.0D0/SPPT1
      SPT1I2 = 1.0D0/SPT1P2

      UP2 = U1*U1
      UP3 = U1*UP2
      UP4 = U1*UP3
      U1I = 1.0D0/U1
      U1I2 = U1I*U1I
      U1I3 = U1I*U1I2
      U1I4 = U1I*U1I3

      TP2 = T1*T1
      T1I = 1.0D0/T1
      T1I2 = T1I*T1I

      QF22 = QF2*QF2

      A1 = (SPT1P2 + UP2)*S4I*SPPT1I
      A2 = (SPT1P2 + S4P2)*U1I*SPPT1I
      A3 = (UP2 + S4P2)*SPT1I2

      B1 = (TP2 + SPT1P2)*SPPT1I*T1I
      B2 = T1I2*U1I2*(QF2 + 2.0D0*M2)*(SP*T1*(U1 - QF2) - M2*SP**2 -
     #  QF2*TP2)

      C1 = S4*T1I2*U1I4*(QF2 + 2.0D0*M2)*(SP*T1*(U1 - QF2) - M2*SP**2 -
     #  QF2*TP2)
      LN1 = DLOG(S4P2/M2/S4M2)

      REGH = (- LN1*(A1 - A2 - A3)*(-B1 + 2.0D0*B2))/U1 + 4.0D0*C1

      RETURN
      END
      DOUBLE PRECISION FUNCTION REGHM(SP,T1,U1,M2,QF2)
      IMPLICIT DOUBLE PRECISION (A-Z)
C THE COEFFICIENT OF THE MASS FACTORIZATION SCALE LOG
      S4 = SP + T1 + U1
      S4P2 = S4*S4
      S4M2 = S4 + M2
      S4I = 1.0D0/S4

      SPPT1 = SP + T1
      SPT1P2 = SPPT1*SPPT1
      SPPT1I = 1.0D0/SPPT1
      SPT1I2 = 1.0D0/SPT1P2

      UP2 = U1*U1
      UP3 = U1*UP2
      UP4 = U1*UP3
      U1I = 1.0D0/U1
      U1I2 = U1I*U1I
      U1I3 = U1I*U1I2
      U1I4 = U1I*U1I3

      TP2 = T1*T1
      T1I = 1.0D0/T1
      T1I2 = T1I*T1I

      QF22 = QF2*QF2

      A1 = (SPT1P2 + UP2)*S4I*SPPT1I
      A2 = (SPT1P2 + S4P2)*U1I*SPPT1I
      A3 = (UP2 + S4P2)*SPT1I2

      B1 = (TP2 + SPT1P2)*SPPT1I*T1I
      B2 = 4.D0*M2*SP*U1I*T1I*(1.D0 - M2*SP*T1I*U1I)
     &  + 2.D0*QF2*SP*T1I*U1I -2.D0*QF22*SPPT1*T1I*U1I2
     &  - 2.D0*M2*QF2*(TP2 + SPT1P2)*T1I2*U1I2


      REGHM =  (A1 - A2 - A3)*(-B1 + B2)/U1

      RETURN
      END

      DOUBLE PRECISION FUNCTION REGHD(SP,T1,U1,M2,QF2)
      IMPLICIT DOUBLE PRECISION (A-Z)
C THE TERMS TO GO FROM MS TO DIS SCHEME
      S4 = SP + T1 + U1
      S4P2 = S4*S4
      S4M2 = S4 + M2

      SPPT1 = SP + T1
      SPPT1I = 1.D0/SPPT1
      SPT1P2 = SPPT1*SPPT1

      UP2 = U1*U1
      UP3 = U1*UP2
      UP4 = U1*UP3
      U1I = 1.D0/U1
      U1I2 = U1I*U1I

      TP2 = T1*T1
      T1I = 1.D0/T1
      T1I2 = T1I*T1I

      QF22 = QF2*QF2

      A1 = (SPT1P2 + UP2)/S4/SPPT1
      A2 = (SPT1P2 + S4P2)/U1/SPPT1
      A3 = (UP2 + S4P2)/SPT1P2

      B1 = (TP2 + SPT1P2)*SPPT1I*T1I
      B2 = 4.D0*M2*SP*U1I*T1I*(1.D0 - M2*SP*T1I*U1I)
     &  + 2.D0*QF2*SP*T1I*U1I -2.D0*QF22*SPPT1*T1I*U1I2
     &  - 2.D0*M2*QF2*(TP2 + SPT1P2)*T1I2*U1I2

      D1 = 8.0D0*U1*S4/SPT1P2

      LN1 = DLOG(-S4/U1)

      REGHD = - (A3*LN1 - 1.0D0 - D1)*(-B1 + B2)/U1

      RETURN
      END
      DOUBLE PRECISION FUNCTION REGH_L(SP,T1,U1,M2,QF2)
      IMPLICIT DOUBLE PRECISION (A-Z)
C
      S4 = SP + T1 + U1
      S4P2 = S4*S4
      S4M2 = S4 + M2
      S4I = 1.0D0/S4

      SPPT1 = SP + T1
      SPT1P2 = SPPT1*SPPT1
      SPPT1I = 1.0D0/SPPT1
      SPT1I2 = 1.0D0/SPT1P2

      UP2 = U1*U1
      UP3 = U1*UP2
      UP4 = U1*UP3
      U1I = 1.0D0/U1
      U1I2 = U1I*U1I
      U1I3 = U1I*U1I2
      U1I4 = U1I*U1I3

      TP2 = T1*T1
      T1I = 1.0D0/T1
      T1I2 = T1I*T1I

      QF22 = QF2*QF2

      A1 = (SPT1P2 + UP2)*S4I*SPPT1I
      A2 = (SPT1P2 + S4P2)*U1I*SPPT1I
      A3 = (UP2 + S4P2)*SPT1I2

      B1 = 4.D0*QF2/SP/SP*(SP*T1*(U1-QF2) - M2*SP**2 - QF2*TP2)
     #   /T1/SPPT1

      C1 = 8.D0*QF2*SPPT1*S4*U1I4
     #   *(SP*T1*(U1-QF2) - M2*SP**2 - QF2*TP2)*T1I/SP/SP
      LN1 = DLOG(S4P2/M2/S4M2)

      REGH_L = -SPT1P2*U1I3*LN1*(A1 - A2 - A3)*B1 + C1

      RETURN
      END
      DOUBLE PRECISION FUNCTION REGHM_L(SP,T1,U1,M2,QF2)
      IMPLICIT DOUBLE PRECISION (A-Z)
C THE COEFFICIENT OF THE MASS FACTORIZATION SCALE LOG(MU2/M2)
      S4 = SP + T1 + U1
      S4P2 = S4*S4
      S4M2 = S4 + M2
      S4I = 1.0D0/S4

      SPPT1 = SP + T1
      SPT1P2 = SPPT1*SPPT1
      SPPT1I = 1.0D0/SPPT1
      SPT1I2 = 1.0D0/SPT1P2

      UP2 = U1*U1
      UP3 = U1*UP2
      UP4 = U1*UP3
      U1I = 1.0D0/U1
      U1I2 = U1I*U1I
      U1I3 = U1I*U1I2
      U1I4 = U1I*U1I3

      TP2 = T1*T1
      T1I = 1.0D0/T1
      T1I2 = T1I*T1I

      QF22 = QF2*QF2

      A1 = (SPT1P2 + UP2)*S4I*SPPT1I
      A2 = (SPT1P2 + S4P2)*U1I*SPPT1I
      A3 = (UP2 + S4P2)*SPT1I2

      B1 = 4.D0*QF2/SP/SP*(SP*T1*(U1-QF2) - M2*SP**2 - QF2*TP2)
     #   /T1/SPPT1


      REGHM_L =  (A1 - A2 - A3)*B1/U1*SPT1P2*U1I2

      RETURN
      END
      DOUBLE PRECISION FUNCTION REGHD_L(SP,T1,U1,M2,QF2)
      IMPLICIT DOUBLE PRECISION (A-Z)
C THE TERMS TO GO FROM MS TO DIS SCHEME
      S4 = SP + T1 + U1
      S4P2 = S4*S4
      S4M2 = S4 + M2

      SPPT1 = SP + T1
      SPT1P2 = SPPT1*SPPT1

      UP2 = U1*U1
      UP3 = U1*UP2
      UP4 = U1*UP3

      TP2 = T1*T1

      QF22 = QF2*QF2

      A1 = (SPT1P2 + UP2)/S4/SPPT1
      A2 = (SPT1P2 + S4P2)/U1/SPPT1
      A3 = (UP2 + S4P2)/SPT1P2

      D1 = 8.0D0*U1*S4/SPT1P2
      D2 = 4.D0*QF2/SP/SP*(SP*T1*(U1-QF2) - M2*SP**2 - QF2*TP2)
     #   /T1/SPPT1
      D3 = SPT1P2/UP2
      LN1 = DLOG(-S4/U1)

      REGHD_L = - (A3*LN1 - 1.0D0 - D1)*D2*D3/U1

      RETURN
      END
C THIS PROGRAM TESTS THE ANALYTIC EVALUATION OF THE INTEGRALS
C  FOR THE ELECTROPRODUCTION PROGRAM. IT IS BASED UPON THE ROUTINE
C   DOUBLE PRECISION FUNCTION RSTNEW(S,T1,U1,M2)
C  Called from: FUNCTION EGCACF, EGCFCF
C Last Modified: SR
C  Date: 2/27/92
C  Modified the expressions for VV(1) RR(26) RR(30) RR(42) RR(43)
C  the parameters for the S integrals involving up,u5 SS(22) SS(27)
C the parameters for the y-integrals involving up,s3
c***************************************************************

      subroutine rstegg(sp,t1,u1,m2,q2)
c***************************************************************
C  we substitute in the values of a,b,aa,bb,cc
C  in the integrals in appendix c.
      IMPLICIT DOUBLE PRECISION(A-Z)
      COMMON/INTS/RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
c      DIMENSION RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
      PARAMETER( PI = 3.14159265359D0 )
      S4 = SP + T1 + U1
      SPT = SP + T1
      SPU = SP + U1
      S4M = S4 + M2

C first the r-type integrals with tp and u7

      RR(0) = 2.0D0*PI

      RR(1) = -PI*S4*SPT/S4M

      RR(2) = 2.0D0*PI*S4*S4*SPT*SPT/S4M/S4M/3.0D0

      RR(3) = PI*(S4*Q2-(S4+2.0D0*M2)*SPU)/S4M

      B2PC2= S4*S4*((S4-T1)*(S4-T1)-2.0D0*Q2*(S4+T1+2.0D0*M2)+Q2*Q2)
     1 /S4M/S4M/4.0D0
      RR(4) = RR(3) * RR(3)/2.0D0/PI + 2.0D0*PI*B2PC2/3.0D0

      ALOW = -S4*SPT/S4M/2.0D0
      ACAP = (S4*Q2-(S4+2.0D0*M2)*(S4-T1))/S4M/2.0D0
      BCAP = S4*(SP*(S4+2.0D0*M2)-T1*U1-Q2*SPT)/SPT/S4M/2.0D0
      ALB = ALOW/B2PC2
      RR(5) = 2.0D0*PI*ALOW*(ACAP-BCAP/3.0D0)

      RR(6) = 0.0D0

      SQBPC = DSQRT(B2PC2)
      A2MB2MC2 = (M2*(S4-T1)*(S4-T1)+T1*S4*Q2)/S4M
CSR      RR(7) = PI*DLOG(A2MB2MC2/(ACAP*ACAP+B2PC2-2.0D0*ACAP*SQBPC))
CSR     1     /SQBPC
      RR(7) = PI*DLOG((ACAP*ACAP+B2PC2+2.0D0*ACAP*SQBPC)/A2MB2MC2)
     1     /SQBPC

      RR(8) = 2.0D0*PI*S4M/(M2*SPU*SPU +T1*S4*Q2)

      RR9A = T1*T1*U1*U1*S4M/SPT/SPT/(M2*SPU*SPU+T1*S4*Q2)
      RR9B = DLOG(RR9A)
      RR(9) = 2.0D0*PI*S4M*RR9B/S4/T1/U1

      RR(10) = 2.0D0*PI*(SP*(S4+2.0D0*M2)-T1*U1-Q2*SPT)
     &     /SPT/SPT

      CCAP2 = S4*S4*(SP*T1*U1-M2*SP*SP-Q2*T1*SPT)/SPT/SPT/S4M
      RR(11) = PI*(CCAP2-4.0D0*ACAP*BCAP-2.0D0*BCAP*BCAP)/ALOW

      APB = -T1*U1/SPT
      B2PC2PAB = S4*((S4-T1)*(T1*U1-2.0D0*M2*SP)-T1*Q2*(2.0D0*S4-U1))
     &   /2.0D0/SPT/S4M
      RR12A = RR9B
      RR12B = 2.0D0*B2PC2PAB/A2MB2MC2
      RR(12) = PI*(RR12A + RR12B)/ALOW/APB/APB

      RR13A = (SP*(S4+2.0D0*M2)-T1*U1-Q2*SPT)
     &     /(SPU*SPU-2.0D0*Q2*(S4+T1+2.0D0*M2)+Q2*Q2)
      RR13B = ((S4-T1)*(T1*U1-2.0D0*M2*SP)-T1*Q2*(2.0D0*S4-U1))
     &     /(SPU*SPU-2.0D0*Q2*(S4+T1+2.0D0*M2)+Q2*Q2)
      RR(13) = 2.0D0*PI*RR13A - RR13B * RR(7)

      RR14A = S4M*RR13B/(M2*(S4-T1)*(S4-T1)+T1*S4*Q2)
      RR14B = RR13A
      RR(14) = -2.0D0 * PI* RR14A + RR14B * RR(7)

      RR(15) = -4.0D0*PI*S4M*S4M/S4/S4/SPT/SPT

      RR16A = -4.0D0*PI*ALB*ALOW*BCAP
      RR16B = PI*ALB*ALB*ACAP*(CCAP2-2.0D0*BCAP*BCAP)
      RR16C = ALB*ALB*B2PC2PAB*B2PC2PAB
      RR16D = - ALB*ALB*CCAP2*A2MB2MC2/2.0D0
      RR(16) = RR16A + RR16B + (RR16C + RR16D)*RR(7)

      RR17A = B2PC2PAB/APB/APB
      RR17B = -2.0D0*CCAP2/APB/APB - 1.0D0
      RR(17) = PI*(RR17A*RR9B + RR17B)/ALOW/ALOW/APB

      RR18A = PI/ALOW/ALOW/APB/APB
      RR18B = 3.0D0*CCAP2/APB/APB + 2.0D0*BCAP/APB
      RR18C = RR9B
      RR18D = -8.0D0*CCAP2/APB/APB
      RR18E = 2.0D0*B2PC2/A2MB2MC2
      RR(18) = RR18A*(RR18B*RR18C + RR18D + RR18E - 1.0D0)

      RR(19) = 0.0D0

      RR(20) = 0.0D0

      RR(39) = 4.0D0*PI*ALOW*ALOW*ALOW

      RR40A = 2.0D0*PI*ALB*ALB*(BCAP*BCAP-CCAP2)
      RR40B = 2.0D0*PI*ALB*ALB*B2PC2PAB*B2PC2PAB/A2MB2MC2
      RR40C = -2.0D0*ALB*ALB*BCAP*B2PC2PAB
      RR40D = ALB*ALB*ACAP*CCAP2
      RR(40) = RR40A + RR40B +(RR40C+RR40D)*RR(7)

      RR41A = 2.0D0*PI*ALOW*ALOW*ALOW/A2MB2MC2
      RR41B = 6.0D0*PI*ALB*ALOW*ALOW*ACAP*BCAP/A2MB2MC2
      RR41C = 6.0D0*PI*ALB*ALB*ALOW*(BCAP*BCAP-CCAP2)
      RR41D = 6.0D0*PI*ALB*ALB*ALOW*ACAP*ACAP*BCAP*BCAP
     & /A2MB2MC2
      RR41E = -9.0D0*PI*ALB*ALB*ALB*ACAP*BCAP*CCAP2
      RR41F = -4.0D0*PI*ALB*ALB*ALOW*ACAP*BCAP*BCAP*BCAP
     & /A2MB2MC2
CJS
      RAT41 = ALB*ACAP*BCAP
      RR41G1 = 6.0D0*PI*RAT41*RAT41*RAT41
      RR41G2 = 1.0D0/(A2MB2MC2)
      RR41G = RR41G1*RR41G2
      RR41H = -3.0D0*ALB*ALOW*ALOW*BCAP
      RR41I = 3.0D0*ALOW*ALB*ALB*ACAP*(CCAP2-2.0D0*BCAP*BCAP)
      RR41J = -3.0D0*ALB*ALB*ALB*BCAP*
     & (CCAP2*B2PC2+2.0D0*ACAP*ACAP*BCAP*BCAP-3.0D0*ACAP*ACAP
     & *CCAP2)/2.0D0
      RR(41) = RR41A + RR41B + RR41C + RR41D + RR41E +RR41F +
     & RR41G + (RR41H + RR41I + RR41J)*RR(7)

C  now the s-integrals with tp and u5

      SS(1) = PI*(S4*(T1+U1-Q2)-2.0D0*M2*(SP +Q2))/S4M

      B2PC2 = S4*S4*((T1+U1)*(T1+U1)-4.0D0*M2*SP
     & -2.0D0*Q2*(T1+U1+2.0D0*M2) +Q2*Q2)/S4M/S4M/4.0D0
      SQBPC = DSQRT(B2PC2)
      A2MB2MC2 = M2*(SP*SP+2.0D0*Q2*SP + Q2*Q2)/S4M
      ACAP = (S4*(T1+U1-Q2) -2.0D0*M2*(SP+Q2))/S4M/2.0D0
      BCAP = -S4*(T1*(S4+Q2)-SP*(U1-Q2+2.0D0*M2))/SPT/S4M/2.0D0
      CCAP2 = S4*S4*(SP*T1*(U1-Q2)-M2*SP*SP-Q2*T1*T1)/SPT/SPT/S4M
CSR      SS2A = (A2MB2MC2/(ACAP*ACAP +B2PC2-2.0D0*ACAP*SQBPC))
      SS2A = ((ACAP*ACAP +B2PC2+2.0D0*ACAP*SQBPC)/A2MB2MC2)
      SS2B = DLOG(SS2A)
      SS(2) = PI*SS2B/SQBPC

      SS(3) = 2.0D0*PI/A2MB2MC2

      ALOW = -S4*SPT/S4M/2.0D0
      APB = ((SP+Q2)*U1-Q2*S4)/SPT
      ALB = ALOW/B2PC2
      SS4A = DLOG(APB*APB/A2MB2MC2)
      SS(4) = PI*SS4A/ALOW/APB

      SS5A = B2PC2 + ACAP*BCAP
      SS5B = 2.0D0*SP*S4M*(U1*(S4-SP)-2.0D0*M2*SP)
     & +2.0D0*Q2*(-S4*(SPT*(T1+U1)+SP*U1) +M2*(-3.0D0*S4*SP
     & -S4*T1+SP*T1-SP*U1+SP*SP) - 2.0D0*M2*M2*SP)
     &  +2.0D0*Q2*Q2*SPT*S4M
      SS5B = SS5B*S4/SPT/S4M/S4M/4.0D0
      SS5C = 2.0D0*SS5A/A2MB2MC2
      SS(5) = PI*(SS4A + SS5C)/ALOW/APB/APB

      SS6A = -2.0D0*PI*ALB*BCAP
      SS6B = ALB*SS5A
      SS(6) = SS6A +SS6B*SS(2)

      SS7A = 2.0D0*PI*ALB*SS5A/A2MB2MC2
      SS7B = -ALB*BCAP
      SS(7) = SS7A + SS7B*SS(2)

      SS8B = -4.0D0*PI*ALB*ALOW*BCAP
      SS8C = PI*ALB*ALB*ACAP*(CCAP2-2.0D0*BCAP*BCAP)
      SS8D = ALB*ALB*SS5A*SS5A
      SS8E = -ALB*ALB*CCAP2*A2MB2MC2/2.0D0
      SS(8) = SS8B + SS8C +(SS8D+SS8E)*SS(2)

      SS9A = PI*2.0D0*ALB*ALB*(BCAP*BCAP-CCAP2)
      SS9B = 2.0D0*PI*ALB*ALB*SS5A*SS5A/A2MB2MC2
      SS9C = -2.0D0*ALB*ALB*BCAP*SS5A
      SS9D = ALB*ALB*ACAP*CCAP2
      SS(9) = SS9A + SS9B +(SS9C + SS9D)*SS(2)

      SS10A = SS5A/APB/APB
      SS10B = 2.0D0*CCAP2/APB/APB
      SS(10) = PI*(SS10A*SS4A-SS10B-1.0D0)/ALOW/ALOW/APB

      SS11A = 3.0D0*CCAP2/APB/APB
      SS11B = 2.0D0*BCAP/APB
      SS11C = -8.0D0*CCAP2/APB/APB
      SS11D = 2.0D0*B2PC2/A2MB2MC2
      SS(11) = PI*((SS11A+SS11B)*SS4A + SS11C + SS11D -1.0D0)
     &   /ALOW/ALOW/APB/APB

      SS(12) = 0.0D0
      SS(13) = 0.0D0
      SS(14) = 0.0D0
      SS(15) = 0.0D0
      SS(16) = 0.0D0
      SS(17) = 0.0D0
      SS(18) = 0.0D0
      SS(19) = 0.0D0
      SS(20) = 0.0D0

C  now the t-integrals with u5 and u6

      A2MB2 = M2*SPT*SPT/S4M
      A2MB2MC2 = M2*(SP+Q2)*(SP+Q2)/S4M
      AAMBB = (-S4*S4*T1+2.0D0*M2*SPT*(SP+Q2))/2.0D0/S4M
      XX1 = S4*S4/4.0D0/S4M/S4M
      XX = XX1*(S4*S4*T1*T1 - 4.0D0*M2*T1*SPT*(SP+Q2))
      SQXX = DSQRT(XX)
      TT1A = (AAMBB*AAMBB + XX +2.0D0*AAMBB*SQXX)/A2MB2MC2/A2MB2
      TT(1) = PI*DLOG(TT1A)/SQXX

C  now the u-integral

      ALOW = -SPT*(S4+2.0D0*M2)/2.0D0/S4M
      BLOW = -S4*SPT/2.0D0/S4M
      ACAP = (Q2*2.0D0*S4M-(S4+2.0D0*M2)*(SPU+Q2))/2.0D0/S4M
      BCAP = S4*(SP*(S4+2.0D0*M2)-T1*U1-Q2*SPT)/2.0D0/SPT/S4M
      CCAP2 = S4*S4*(SP*T1*(U1-Q2)-M2*SP*SP-Q2*T1*T1)
     & /SPT/SPT/S4M
      A2MB2 = M2*SPT*SPT/S4M
      A2MB2MC2 = (M2*(S4-T1)*(S4-T1) + T1*S4*Q2)/S4M
      AAMBB = (SP*S4*S4+2.0D0*M2*SPT*SPU-Q2*S4*SPT)/2.0D0/S4M
      AAMBBY = ALOW*ACAP - BLOW*BCAP
      XXY = AAMBB*AAMBB-A2MB2*A2MB2MC2
      XX1 = S4*S4/4.0D0/S4M/S4M
      XX = XX1*(SP*SP*S4*S4 + 4.0D0*M2*SPT*SPU*SP
     & -2.0D0*Q2*SP*S4*SPT+Q2*Q2*SPT*SPT-4.0D0*M2*Q2*SPT*SPT)
      SQXX = DSQRT(XX)
      UUA = (AAMBB*AAMBB + XX +2.0D0*AAMBB*SQXX)/A2MB2MC2/A2MB2
      UU(1) = PI*DLOG(UUA)/SQXX

C  now the v-integral

      EXP1 = SP*(S4 + 2.0D0*M2) - T1*U1 - Q2*SPT
      EXP2 = SP*T1*(U1 - Q2) - M2*SP**2 - Q2*T1**2
      ALOW = -S4*SPT/2.0D0/S4M
      ACAP = (2.0D0*Q2*S4M-S4*(SP+Q2+U1))/2.0D0/S4M
      BCAP = -S4*(SP*(S4 + 2.0D0*M2) - T1*U1 - Q2*SPT)/2.0D0/SPT/S4M
      CCAP = S4*DSQRT(EXP2)/SPT/DSQRT(S4M)
      CCAP2 = S4*S4*(SP*T1*(U1 - Q2) - M2*SP*SP - Q2*T1*T1)/SPT/SPT/S4M
      APB = (-S4*SP+Q2*SPT)/SPT
CSR      APB = ACAP + BCAP
      A2MB2MC2 = Q2*(S4*T1+Q2*M2)/S4M
CSR      A2MB2MC2 = ACAP*ACAP - BCAP*BCAP - CCAP2
      VV(1) = PI*DLOG(APB*APB/A2MB2MC2)/ALOW/APB

C  now the y-integrals with tp and s3

      ALOW = -S4*SPT/2.0D0/S4M
      ACAP = -S4*(T1+U1+2.0D0*M2-Q2)/2.0D0/S4M
      BCAP = -S4*(T1*S4+T1*Q2-SP*(U1-Q2+2.0D0*M2))/2.0D0/SPT/S4M
      CCAP2 = S4*S4*(SP*T1*(U1-Q2)-M2*SP*SP-Q2*T1*T1)
     &     /SPT/SPT/S4M
      B2PC2 = S4*S4*((T1+U1)*(T1+U1)-4.0D0*M2*SP
     &   -2.0D0*Q2*(T1+U1+2.0D0*M2) +Q2*Q2)/4.0D0/S4M/S4M
      SQBPC = DSQRT(B2PC2)
      A2MB2MC2 = M2*S4*S4/S4M
      ALB = ALOW/B2PC2
      YY1A = (ACAP*ACAP + B2PC2 + 2.0D0*ACAP*SQBPC)/A2MB2MC2
      YY(1) = PI*DLOG(YY1A)/SQBPC

      YY(2) =2.0D0*PI/A2MB2MC2

      YY3A = B2PC2 + ACAP*BCAP
      YY3B = -2.0D0*PI*ALOW*BCAP/B2PC2
      YY3C = ALOW*YY3A/B2PC2
      YY(3) = YY3B + YY3C*YY(1)

      YY4A = -PI*4.0D0*ALB*ALOW*BCAP
      YY4B = PI*ALB*ALB*ACAP*(CCAP2-2.0D0*BCAP*BCAP)
      YY4C = ALB*ALB*YY3A*YY3A
      YY4D = -ALB*ALB*CCAP2*A2MB2MC2/2.0D0
      YY(4) = YY4A + YY4B +(YY4C+YY4D)*YY(1)

      YY5A = 2.0D0*PI*ALB*YY3A/A2MB2MC2
      YY5B = -ALOW*BCAP/B2PC2
      YY(5) = YY5A + YY5B*YY(1)

      YY6A = 2.0D0*PI*ALB*ALB*(BCAP*BCAP-CCAP2)
      YY6B = 2.0D0*PI*ALB*ALB*YY3A*YY3A/A2MB2MC2
      YY6C = -2.0D0*ALB*ALB*BCAP*YY3A
      YY6D = ALB*ALB*ACAP*CCAP2
      YY(6) = YY6A+YY6B+(YY6C+YY6D)*YY(1)

      YY7A = (ACAP+BCAP)*(ACAP+BCAP)/A2MB2MC2
      YY7B = DLOG(YY7A)
      YY(7) = PI*YY7B/ALOW/(ACAP+BCAP)

C  now the z-integrals with s3 and s6

      ALOW = -SPT*(S4+2.0D0*M2)/2.0D0/S4M
      BLOW = -S4*SPT/2.0D0/S4M
      ACAP = -S4*(T1+U1+2.0D0*M2-Q2)/2.0D0/S4M
      BCAP = -S4*(T1*S4+T1*Q2-SP*(U1-Q2+2.0D0*M2))
     &  /2.0D0/SPT/S4M
      CCAP2 = S4*S4*(SP*T1*(U1-Q2)-M2*SP*SP-Q2*T1*T1)
     &     /SPT/SPT/S4M
      B2PC2 = S4*S4*((T1+U1)*(T1+U1)-4.0D0*M2*SP
     &   -2.0D0*Q2*(T1+U1+2.0D0*M2) +Q2*Q2)/4.0D0/S4M/S4M
      SQBPC = DSQRT(B2PC2)
      A2MB2MC2 = M2*S4*S4/S4M
      AAMBB = S4*(SP*U1+SPT*(2.0D0*M2-Q2))/2.0D0/S4M
      A2MB2 = M2*SPT*SPT/S4M
      XXY = AAMBB*AAMBB-A3MB2MC2*AAMBB
      XX1 = S4*S4/4.0D0/S4M/S4M
      XX = XX1*(SP*SP*U1*U1 + 2.0D0*SPT*SP*U1*(2.0D0*M2-Q2)
     &  -Q2*SPT*SPT*(4.0D0*M2-Q2))
      SQXX = DSQRT(XX)

      ZZ1A = A2MB2MC2*A2MB2/(AAMBB*AAMBB + XX -2.0D0*AAMBB*SQXX)
CJS      ZZ1A = (AAMBB*AAMBB + XX +2.0D0*AAMBB*SQXX)/A2MB2MC2/A2MB2
      ZZ(1) = PI*DLOG(ZZ1A)/SQXX

      BAMAB = BLOW*ACAP-ALOW*BCAP
      ZZ2A = 2.0D0*PI*BLOW*BAMAB/A2MB2/XX
      ZZ2B = (ALOW*B2PC2-BLOW*ACAP*BCAP)/XX
      ZZ(2) = ZZ2A + ZZ2B*ZZ(1)

      ZZ3A = 2.0D0*PI*ZZ2B/A2MB2MC2
      ZZ3B = BLOW*BAMAB/XX
      ZZ(3) = ZZ3A + ZZ3B * ZZ(1)

      ZZ4A = 2.0D0*PI*BLOW*BLOW/A2MB2/XX
      ZZ4B = 2.0D0*PI*B2PC2/A2MB2MC2/XX
      ZZ4C = -6.0D0*PI*BLOW*BLOW*CCAP2/XX/XX
      ZZ4D = BLOW*BCAP/XX
      ZZ4E = 3.0D0*BLOW*BAMAB*ZZ2B/XX
      ZZ(4) = ZZ4A + ZZ4B + ZZ4C +(ZZ4D+ZZ4E) * ZZ(1)

C now the r-integrals with up and u6

      ALOW = (2.0D0*Q2*S4M-S4*(SP+Q2+U1))/2.0D0/S4M
      DDD = (SP+Q2+U1)*(SP+Q2+U1)-4.0D0*Q2*S4M
      SQDDD = DSQRT(DDD)
      BLOW = S4*SQDDD/2.0D0/S4M
      ACAP = -SPT*(S4+2.0D0*M2)/2.0D0/S4M
      BCAP = S4*((SP+Q2)*(S4+2.0D0*M2)-U1*(T1-Q2)-2.0D0*Q2*S4M)
     &    /2.0D0/S4M/SQDDD
      CCAP2 = S4*S4*(SP*T1*(U1-Q2)-M2*SP*SP-T1*T1*Q2)/S4M/DDD
C      B2PC2 = BCAP*BCAP +CCAP2
      B2PC2 = S4*S4*SPT*SPT/4.0D0/S4M/S4M
      SQB2PC2 = DSQRT(B2PC2)
C      A2MB2 = ALOW*ALOW - BLOW*BLOW
      A2MB2 = (Q2*T1*S4 + M2*Q2*Q2)/S4M
C      A2MB2MC2 = ACAP*ACAP-B2PC2
      A2MB2MC2 = M2*SPT*SPT/S4M
C      AAMBB = ALOW*ACAP - BLOW*BCAP
      AAMBB = (T1*U1*S4-2.0D0*M2*Q2*(SP+T1))/2.0D0/S4M
C      XX = AAMBB*AAMBB -A2MB2MC2*A2MB2
      XX1 = S4*S4/4.0D0/S4M/S4M
      XX2 = T1*T1*U1*U1-4.0D0*M2*Q2*T1*U1
      XX = XX1*XX2
      SQXX = DSQRT(XX)
      APB = ACAP + BCAP
      BLB = BLOW/B2PC2
C ADDITIONAL INTEGRALS NEED
      BAMAB = BLOW*ACAP - ALOW*BCAP
      TERM1 = -T1*U1*(SP+U1) + Q2*(S4*2.0D0*T1
     & -T1*U1 +2.0D0*M2*(SP+2.0D0*T1))
      BAMAB = S4*TERM1/2.0D0/S4M/SQDDD

      RR(21)= 2.0D0*PI*ALOW

      RR(22) = 2.0D0*PI*(ALOW*ALOW+BLOW*BLOW/3.0D0)

      RR(23) = 2.0D0*PI *ACAP

      RR(24) = 2.0D0*PI*(ACAP*ACAP+B2PC2/3.0D0)

      RR(25) = 2.0D0*PI*(ALOW*ACAP+BLOW*BCAP/3.0D0)

CSR      RR26A = (ALOW+BLOW)/(ALOW-BLOW)
      RR26A = (Q2*(S4+2.0D0*M2)-S4*SPU + S4*SQDDD)/
     &        (Q2*(S4+2.0D0*M2)-S4*SPU - S4*SQDDD)
CSR      RR(26) = PI*DLOG(RR26A)/BLOW
      RR(26) = 2.0D0*PI*S4M*DLOG(RR26A)/S4/SQDDD

CSR      RR27A = A2MB2MC2/(ACAP*ACAP +B2PC2-2.0D0*ACAP*SQB2PC2)
      RR27A = (ACAP*ACAP + B2PC2 + 2.0D0*ACAP*SQB2PC2)/A2MB2MC2
      RR(27) = PI*DLOG(RR27A)/SQB2PC2

      RR(28) = 2.0D0*PI/A2MB2MC2

CSR      RR29A = A2MB2MC2*A2MB2/(AAMBB - SQXX)**2
      RR29A = (AAMBB*AAMBB + XX + 2.0D0*AAMBB*SQXX)/A2MB2MC2/A2MB2
      RR(29) =  PI*DLOG(RR29A)/SQXX

CSR      RR30A = 2.0D0*PI*BCAP/BLOW
      RR30A = 2.0D0*PI*((SP+Q2)*(S4+2.0D0*M2)-U1*(T1-Q2)-
     &  2.0D0*Q2*S4M)/DDD
      RR30B = (-T1*U1*(SP+U1) +Q2*(2.0D0*S4*T1 -T1*U1+2.0D0*M2*
     & (SP+2.0D0*T1)))/DDD
      RR(30) = RR30A + RR30B*RR(26)
CSR      RR(30) = RR30A + BAMAB*RR(26)/BLOW

      RR31A = PI*(4.0D0*BLOW*ACAP*BCAP-ALOW*(2.0D0*BCAP*BCAP-
     &    CCAP2))/BLOW/BLOW
      RR31B = ((2.0D0*ACAP*ACAP+CCAP2)*BLOW*BLOW -4.0D0*ALOW*BLOW
     &    *ACAP*BCAP +ALOW*ALOW*(2.0D0*BCAP*BCAP-CCAP2))/2.0D0/
     &       BLOW/BLOW
      RR(31) = RR31A +RR31B*RR(26)

      RR32A = 2.0D0*PI*(ALOW*(BCAP*BCAP+CCAP2)-BLOW*ACAP*BCAP)
     & /A2MB2MC2/XX
      RR32B = BLOW*BAMAB/XX
      RR(32) = RR32A + RR32B*RR(29)

      RR33A = 2.0D0*PI*BLB*BCAP
      RR33B = ALOW*B2PC2-BLOW*ACAP*BCAP
      RR(33) = RR33A + RR33B*RR(27)/B2PC2

      RR34A = 2.0D0*PI*RR33B/B2PC2/A2MB2MC2
      RR34B = BLB*BCAP*RR(27)
      RR(34) = RR34A + RR34B

      RR(35) = 2.0D0*PI/A2MB2

      RR36A = 4.0D0*PI*ALOW*BLB*BCAP
      RR36B = PI*BLB*BLB*ACAP*(CCAP2-2.0D0*BCAP*BCAP)
      RR36C1 = RR33B/B2PC2
C      RR36C = RR33B*RR33B/B2PC2/B2PC2
      RR36C = RR36C1*RR36C1
      RR36D = -BLB*BLB*CCAP2*A2MB2MC2/2.0D0
      RR(36) = RR36A + RR36B + (RR36C + RR36D)*RR(27)

      RR37A = 2.0D0*PI*BLOW*BAMAB/A2MB2/XX
      RR37B = (ALOW*(BCAP*BCAP+CCAP2)-BLOW*ACAP*BCAP)/XX
      RR(37) = RR37A + RR37B*RR(29)

      RR38A =  2.0D0*PI*BLOW*BLOW/A2MB2/XX
      RR38B =  2.0D0*PI*B2PC2/A2MB2MC2/XX
      RR38C = -6.0D0*PI*BLOW*BLOW*CCAP2/XX/XX
      RR38D = BLOW*BCAP/XX
      RR38E1 = 3.0D0*BLOW/XX
      RR38E = RR38E1*BAMAB*(ALOW*B2PC2-BLOW*ACAP*BCAP)/XX
      RR(38) = RR38A+RR38B+RR38C+(RR38D+RR38E)*RR(29)

C additional integrals

C      RR42A = 2.0D0*BAMAB/BLOW/A2MB2
C      RR42B = DLOG((ALOW+BLOW)/(ALOW-BLOW))
C      RR(42) = PI*(RR42A+BCAP*RR42B/BLOW/BLOW)
      RR42A = 2.0D0*PI*S4M*(-T1*U1*(SP+U1)+Q2*(2.0D0*S4*T1-T1*U1
     & +2.0D0*M2*(SP+2.0D0*T1)))/DDD/Q2/(S4*T1+M2*Q2)
      RR42B = ((SP+Q2)*(S4+2.0D0*M2) -U1*(T1-Q2)-2.0D0*Q2*S4M)
     &  /DDD
      RR(42) = RR42A + RR42B*RR(26)

C      RR43A = 2.0D0*(BCAP*BCAP-CCAP2)/BLOW/BLOW
C      RR43B = 2.0D0*BAMAB*BAMAB/BLOW/BLOW/A2MB2
C      RR43C = (ALOW*CCAP2 + 2.0D0*BCAP*BAMAB)/BLOW/BLOW/BLOW
C      RR(43) = PI*(RR43A+RR43B+RR43C*RR42B)
CSR      RR43A = BCAP*BCAP - CCAP2
CSR      PRINT'(''0 RR43A = '',D20.7)',RR43A
      RR43A1 = S4*S4/4.0D0/S4M/S4M
      RR43A2 = (S4*S4*SP*SP -6.0D0*SP*T1*U1*S4+T1*T1*U1*U1
     & +8.0D0*SP*M2*(SP*S4-T1*U1+SP*M2) +M2*Q2*(4.0D0*SP*T1
     & +4.0D0*SP*U1-4.0D0*SP*S4+4.0D0*T1*T1)
     & +2.0D0*Q2*(2.0D0*SP*T1*S4 +SP*U1*S4-SP*S4*S4
     & +2.0D0*T1*T1*S4 -T1*U1*U1+T1*U1*S4)
     &  +Q2*Q2*(U1*U1-2.0D0*U1*S4 +S4*S4))
      RR43A = RR43A1*RR43A2/DDD
C      PRINT'(''0 RR43A = '',D20.7)',RR43A
CSR      RR43B = (BLOW*ACAP-ALOW*BCAP)*(BLOW*ACAP-ALOW*BCAP)
CSR     &  /BLOW/BLOW/(ALOW*ALOW-BLOW*BLOW)
CSR      PRINT'(''0 RR43B = '',D20.7)',RR43B
      RR43B1 = S4*(-T1*U1*(SP+U1)+Q2*(2.0D0*S4*T1-T1*U1+2.0D0*M2
     & *(SP+2.0D0*T1)))/2.0D0/S4M/SQDDD
      RR43B2 = RR43B1*S4M/S4/DDD
      RR43B = RR43B2*RR43B2*4.0D0*S4M*DDD/Q2/
     &    (T1*S4+M2*Q2)
C      PRINT'(''0 RR43B = '',D20.7)',RR43B
CSR      RR43C = ALOW*CCAP2+2.0D0*BCAP*(BLOW*ACAP-ALOW*BCAP)
      RR43C = SPU*(-2.0D0*SP*T1*U1*S4M +T1*T1*U1*U1+M2*SP*SP*S4)
     & +Q2*(S4*(2.0D0*SP*T1*S4 -T1*T1*U1+2.0D0*SP*T1*U1+SP*T1*T1
     & + SP*SP*T1+ T1*U1*U1) +T1*T1*U1*U1 - SPU*T1*U1*U1
     & +M2*(SP*SP*S4 +8.0D0*SP*T1*S4 -4.0D0*T1*T1*U1-2.0D0*SP*T1
     & *U1) +2.0D0*M2*M2*(SP*SP+4.0D0*T1*SP))
     & +Q2*Q2*(S4*(-SP*T1-2.0D0*T1*S4+3.0D0*T1*U1-T1*T1)
     & -T1*U1*U1+2.0D0*M2*(-SP*T1-2.0D0*T1*S4+2.0D0*T1*U1-T1*T1+SP*U1
     & -SP*S4))
C      PRINT'(''0 RR43C = '',D20.7)',RR43C
C      PRINT'(''0 DDD = '',D20.7)',DDD
C      PRINT'(''0 T1 = '',D20.7)',T1
C      PRINT'(''0 U1 = '',D20.7)',U1
C      PRINT'(''0 Q2 = '',D20.7)',Q2
C      PRINT'(''0 S4 = '',D20.7)',S4
      RR43C1 = RR43C/DDD
      RR43C = RR43C1*S4*S4/2.0D0/S4M/S4M
      RR(43)=2.0D0*PI*RR43A/BLOW/BLOW + 2.0D0*PI*RR43B
     & + RR43C*RR(26)/BLOW/BLOW

C now the s-integrals with up and u5

      ALOW = (2.0D0*Q2*S4M-S4*(SP+Q2+U1))/2.0D0/S4M
      BLOW = S4*SQDDD/2.0D0/S4M
      ACAP = (S4*(T1+U1-Q2)-2.0D0*M2*(SP+Q2))/2.0D0/S4M
      BCAP = -S4*((U1-Q2)*(S4-Q2)-(SP+2.0D0*Q2)*(T1+2.0D0*M2))
     & /2.0D0/S4M/SQDDD
      B2PC2 = BCAP*BCAP + CCAP2
C NOW INSERT THE RESULT OF THE EVALUATION
      B2PC2 = S4*S4*((T1+U1)*(T1+U1)-4.0D0*M2*SP-2.0D0*(T1+U1)
     & *Q2 - 4.0D0*M2*Q2 + Q2*Q2)/4.0D0/S4M/S4M
      SQB2PC2 = DSQRT(B2PC2)
C      A2MB2MC2 = ACAP*ACAP - B2PC2
      A2MB2MC2 = M2*(SP+Q2)*(SP+Q2)/S4M
C      A2MB2 = ALOW*ALOW - BLOW*BLOW
      A2MB2 = Q2*(Q2*M2+S4*T1)/S4M
C      AAMBB = ALOW*ACAP - BLOW*BCAP
      AAMBB = -(SP+Q2)*(T1*S4+2.0D0*M2*Q2)/2.0D0/S4M
C      XX = AAMBB*AAMBB - A2MB2MC2*A2MB2
C      XX = T1*T1*S4*S4*(SP+Q2)*(SP+Q2)/4.0D0/S4M/S4M
CSR      SQXX = DSQRT(XX)
      SQXX = -T1*S4*(SP + Q2)/2.0D0/S4M
      XX = SQXX*SQXX
      APB = ACAP + BCAP
      B2PC2PAB = B2PC2 +ACAP*BCAP
CSR      BAMAB = BLOW*ACAP - ALOW*BCAP
      BAMAB = S4*(SP*T1*(SP+U1) -Q2*T1*(2.0D0*T1+U1)
     &  +T1*Q2*Q2 +2.0D0*M2*Q2*SP)/2.0D0/S4M/SQDDD
       BLB = BLOW/B2PC2
CSR      SS21A = A2MB2MC2*A2MB2/(AAMBB*AAMBB+XX-2.0D0*AAMBB*SQXX)
      SS21A = (T1*S4 + M2*Q2)/M2/Q2
      SS(21) = PI*DLOG(SS21A)/SQXX

CSR      SS22A = 2.0D0*PI*(ALOW*B2PC2-BLOW*ACAP*BCAP)/A2MB2MC2/XX
CSR      SS22B = BLOW*BAMAB/XX
CSR      SS(22) = SS22A + SS22B*SS(21)
      SS22A = 2.0D0*PI*(-SP*T1*(T1+U1) +2.0D0*M2*SP*SP +Q2*T1
     & *(SP-T1-U1) +2.0D0*M2*Q2*SP+Q2*Q2*T1)*S4M/
     & M2/T1/T1/(SP+Q2)/(SP+Q2)/(SP+Q2)/(SP+Q2)
      SS22B = (SP*T1*(SP+U1)-Q2*T1*(2.0D0*T1+U1)+T1*Q2*Q2
     &  +2.0D0*M2*Q2*SP)/T1/T1/(SP+Q2)/(SP+Q2)
      SS(22) = SS22A + SS22B*SS(21)

CSR      SS23A = A2MB2MC2/(ACAP*ACAP +B2PC2 -2.0D0*ACAP*SQB2PC2)
      SS23A = (ACAP*ACAP +B2PC2 +2.0D0*ACAP*SQB2PC2)/A2MB2MC2
      SS23B = PI*DLOG(SS23A)/SQB2PC2
      SS23C = 2.0D0*PI*BLB*BCAP
CJS      SS23D = ALOW*B2PC2-BLOW*ACAP*BCAP
      SS23D = ALOW-BLB*ACAP*BCAP
      SS(23) = SS23C + SS23D*SS23B

      SS24A = 2.0D0*PI*SS23D/A2MB2MC2
      SS24B = BLB*BCAP
      SS(24) = SS24A + SS24B*SS23B

      SS25A = 4.0D0*PI*ALOW*BLB*BCAP
      SS25B = PI*BLB*BLB*ACAP*(CCAP2-2.0D0*BCAP*BCAP)
CJS      SS25C = SS23D*SS23D/B2PC2/B2PC2
      SS25C = SS23D*SS23D
      SS25D = -BLB*BLB*CCAP2*A2MB2MC2/2.0D0
      SS(25) = SS25A + SS25B +(SS25C+SS25D)*SS23B

      SS26A = 2.0D0*PI*BLB*BLB*(BCAP*BCAP-CCAP2)
CJS      SS26B = 2.0D0*PI*SS23D*SS23D/A2MB2MC2/B2PC2/B2PC2
      SS26B = 2.0D0*PI*SS25C/A2MB2MC2
      SS26C = 2.0D0*BLB*BCAP*SS23D
      SS26D = BLB*BLB*ACAP*CCAP2
      SS(26) = SS26A + SS26B +(SS26C+SS26D)*SS23B

CSR      SS27A = 2.0D0*PI*BLOW*BAMAB/A2MB2/XX
      SS27A = 2.0D0*PI*S4M*(SP*T1*SPU-Q2*T1*(2.0D0*T1+U1)+T1*Q2*Q2
     & +2.0D0*M2*Q2*SP)/Q2/T1/T1/(SP+Q2)/(SP+Q2)/(S4*T1+M2*Q2)
CSR      SS27B = (ALOW*B2PC2-BLOW*ACAP*BCAP)/XX
      SS27B = (-SP*T1*(T1+U1)+2.0D0*M2*SP*SP +Q2*T1*(SP-T1-U1)
     &  +2.0D0*M2*Q2*SP +Q2*Q2*T1)/T1/T1/(SP+Q2)/(SP+Q2)
      SS(27) = SS27A + SS27B*SS(21)

      SS28A = 2.0D0*PI*BLOW*BLOW/A2MB2/XX
      SS28B = 2.0D0*PI*B2PC2/A2MB2MC2/XX
      SS28C = -6.0D0*PI*BLOW*BLOW*CCAP2/XX/XX
      SS28D =  BLOW*BCAP/XX
      SS28E = 3.0D0*BLOW*BAMAB*SS27B/XX/XX
      SS(28) =SS28A+SS28B+SS28C+(SS28D+SS28E)*SS(21)

C  now the t-integral with u5 and u7

      ALOW = (2.0D0*Q2*S4M-(SP+Q2+U1)*(S4+2.0D0*M2))/2.0D0/S4M
      BLOW = -S4*SQDDD/2.0D0/S4M
C      A2MB2 = ALOW*ALOW - BLOW*BLOW
      A2MB2 = (Q2*S4*T1+M2*(S4-T1)*(S4-T1))/S4M
C      AAMBB = ALOW*ACAP - BLOW*BCAP
      AAMBB = (S4*S4*(SP+Q2+T1-S4) + Q2*S4*(-SP-Q2+S4)
     & +2.0D0*M2*(SP+Q2)*(-T1+S4))/2.0D0/S4M
C      XX = AAMBB*AAMBB - A2MB2MC2*A2MB2
      XX1 = S4*S4/4.0D0/S4M/S4M
      XX2 = (S4*(S4-SP-Q2-T1)-Q2*(S4-SP-Q2))
     &           *(S4*(S4-SP-Q2-T1)-Q2*(S4-SP-Q2))
     &  -4.0D0*M2*(SP+Q2)*(S4-SP-Q2-T1)*(S4-T1-Q2)
      XX = XX1*XX2
      SQXX = DSQRT(XX)
CSR      TT2A = A2MB2MC2*A2MB2/(AAMBB*AAMBB + XX - 2.0D0*AAMBB*SQXX)
      TT2A = (AAMBB*AAMBB + XX + 2.0D0*AAMBB*SQXX)/A2MB2MC2/A2MB2
      TT(2) = PI*DLOG(TT2A)/SQXX


C now the y-integrals with t1<->u1
      ALOW = (2.0D0*Q2*S4M-S4*(SP+Q2+U1))/2.0D0/S4M
      BLOW = S4*SQDDD/2.0D0/S4M
      ACAP = -S4*(T1+U1-Q2+2.0D0*M2)/2.0D0/S4M
CSR      A2MB2MC2 = ACAP*ACAP - B2PC2
      A2MB2MC2 = M2*S4*S4/S4M
C      A2MB2 = ALOW*ALOW - BLOW*BLOW
      A2MB2 = (Q2*S4*T1+Q2*Q2*M2)/S4M
CSR      AAMBB = ALOW*ACAP - BLOW*BCAP
      AAMBB = S4*(U1*S4+Q2*SP-2.0D0*Q2*S4M+Q2*Q2)/2.0D0/S4M
      XX = AAMBB*AAMBB - A2MB2MC2*A2MB2
      SQXX = DSQRT(XX)
      APB = ACAP + BCAP
      B2PC2PAB = B2PC2 +ACAP*BCAP
      BLB = BLOW/B2PC2
CSR      YY8Y = A2MB2MC2/(ACAP*ACAP+B2PC2-2.0D0*ACAP*SQB2PC2)
      YY8Y = (ACAP*ACAP+B2PC2+2.0D0*ACAP*SQB2PC2)/A2MB2MC2
      YY8Z = PI*DLOG(YY8Y)/SQB2PC2
      YY8A = ALOW*B2PC2 - BLOW*ACAP*BCAP
      YY8B = 2.0D0*PI*BLB*BCAP
      YY8C = YY8A/B2PC2
      YY(8) = YY8B + YY8C*YY8Z

      YY9A = PI*4.0D0*ALOW*BLB*BCAP
      YY9B = PI*BLB*BLB*ACAP*(CCAP2-2.0D0*BCAP*BCAP)
      YY9C1 = YY8A/B2PC2
C      YY9C = YY8A*YY8A/B2PC2/B2PC2
      YY9C = YY9C1*YY9C1
      YY9D = -BLB*BLB*CCAP2*A2MB2MC2/2.0D0
      YY(9) = YY9A + YY9B +(YY9C+YY9D)*YY8Z

      YY10A = 2.0D0*PI*YY8A/B2PC2/A2MB2MC2
      YY10B = BLB*BCAP
      YY(10) = YY10A + YY10B*YY8Z

      YY11A = 2.0D0*PI*BLB*BLB*(BCAP*BCAP-CCAP2)
      YY11B1 = YY8A/B2PC2
      YY11B = 2.0D0*PI*YY11B1*YY11B1/A2MB2MC2
      YY11C = 2.0D0*BLB*BCAP*YY8A
      YY11D = BLB*BLB*ACAP*CCAP2
      YY(11) = YY11A+YY11B+(YY11C+YY11D)*YY8Z

      YY12A = A2MB2*A2MB2MC2/(AAMBB*AAMBB + XX - 2.0D0*AAMBB*SQXX)
      YY(12) = PI*DLOG(YY12A)/SQXX

C now the z-integrals with s3 and u7

      ALOW = (2.0D0*Q2*S4M-(SP+Q2+U1)*(S4+2.0D0*M2))/2.0D0/S4M
      BLOW = -S4*SQDDD/2.0D0/S4M
      ACAP = -S4*(T1+U1-Q2+2.0D0*M2)/2.0D0/S4M
C      A2MB2 = ALOW*ALOW - BLOW*BLOW
      A2MB2 = (Q2*S4*T1+M2*(S4-T1)*(S4-T1))/S4M
C      AAMBB = ALOW*ACAP - BLOW*BCAP
      AAMBB = S4*(2.0D0*M2*(S4-T1)+(SP+Q2)*T1)/2.0D0/S4M
C      XX = AAMBB*AAMBB - A2MB2MC2*A2MB2
C      XX = S4*S4*((SP+Q2)*(SP+Q2)*T1*T1+4.0D0*(SP+Q2)
C     & *T1*(S4-T1)*M2-4.0D0*M2*S4*Q2*T1)/4.0D0/S4M/S4M
      XX1 = S4*S4/4.D0/S4M/S4M
      XX2 = (SP+Q2)*(SP+Q2)*T1*T1+4.0D0*(SP+Q2)
     & *T1*(S4-T1)*M2-4.0D0*M2*S4*Q2*T1
      XX = XX1*XX2
      SQXX = DSQRT(XX)
      APB = ACAP + BCAP
      B2PC2PAB = B2PC2 +ACAP*BCAP

      ZZ5A = A2MB2MC2*A2MB2/(AAMBB*AAMBB + XX - 2.0D0*AAMBB*SQXX)
CJS      ZZ5A = (AAMBB*AAMBB + XX + 2.0D0*AAMBB*SQXX)/A2MB2MC2/A2MB2
      ZZ(5) = PI*DLOG(ZZ5A)/SQXX

      BAMAB = BLOW*ACAP-ALOW*BCAP
      ZZ6A = 2.0D0*PI*BLOW*BAMAB/A2MB2/XX
      ZZ6B = (ALOW*B2PC2-BLOW*ACAP*BCAP)/XX
      ZZ(6) = ZZ6A + ZZ6B*ZZ(5)

      ZZ7A = 2.0D0*PI*ZZ6B/A2MB2MC2
      ZZ7B = BLOW*BAMAB/XX
      ZZ(7) = ZZ7A + ZZ7B * ZZ(5)

      ZZ8A = 2.0D0*PI*BLOW*BLOW/A2MB2/XX
      ZZ8B = 2.0D0*PI*B2PC2/A2MB2MC2/XX
      ZZ8C = -6.0D0*PI*BLOW*BLOW*CCAP2/XX/XX
      ZZ8D = BLOW*BCAP/XX
      ZZ8E = 3.0D0*BLOW*BAMAB*ZZ6B/XX
      ZZ(8) = ZZ8A + ZZ8B + ZZ8C +(ZZ8D+ZZ8E) * ZZ(5)

C NOW CALL THE INTEGRALS

      GOTO 998
 999  PRINT*,'VALUE FOR ARGUMENT OF LOG OF RR(29) < 0'
 998  CONTINUE
      RETURN
      END
       DOUBLE PRECISION FUNCTION DILOG(X)

C       IMPLICIT DOUBLE PRECISION (A-H,O-Z)
        DOUBLE PRECISION X
        DOUBLE PRECISION PI6
        DOUBLE PRECISION EEN
        DOUBLE PRECISION VIER
        DOUBLE PRECISION Z
        DOUBLE PRECISION Z2
        DOUBLE PRECISION U
        DOUBLE PRECISION Y
        DOUBLE PRECISION XX
        DOUBLE PRECISION B

       DIMENSION B(8)
       INTEGER NCALL
       DATA NCALL/0/,PI6/1.644934066848226D+00/,EEN,VIER/1.D+00,.25D+00/
       NCALL=0
       IF(NCALL.EQ.0)GO TO 2
1      IF(X.LT.0)GO TO 3
       IF(X.GT.0.5)GO TO 4
       Z=-DLOG(1.-X)
7      Z2=Z*Z
       DILOG=Z*(Z2*(Z2*(Z2*(Z2*(Z2*(Z2*(Z2*B(8)+B(7))+B(6))
     1 +B(5))+B(4))+B(3))+B(2))+EEN)-Z2*VIER
       IF(X.GT.EEN)DILOG=-DILOG-.5*U*U+2.*PI6
       RETURN
2      B(1)=EEN
       B(2)=EEN/36.
       B(3)=-EEN/3600.
       B(4)=EEN/211680.
       B(5)=-EEN/(30.*362880.D+00)
       B(6)=5./(66.*39916800.D+00)
       B(7)=-691./(2730.*39916800.D+00*156.)
       B(8)=EEN/(39916800.D+00*28080.)
       NCALL=1
       GO TO 1
3      IF(X.GT.-EEN)GO TO 5
       Y=EEN/(EEN-X)
       Z=-DLOG(EEN-Y)
       Z2=Z*Z
       U=DLOG(Y)
       DILOG=Z*(Z2*(Z2*(Z2*(Z2*(Z2*(Z2*(Z2*B(8)+B(7))+B(6))
     1 +B(5))+B(4))+B(3))+B(2))+EEN)-Z2*VIER-U*(Z+.5*U)-PI6
       RETURN
4      IF(X.GE.EEN)GO TO 10
       Y=EEN-X
       Z=-DLOG(X)
6      U=DLOG(Y)
       Z2=Z*Z
       DILOG=-Z*(Z2*(Z2*(Z2*(Z2*(Z2*(Z2*(Z2*B(8)+B(7))+B(6))
     1 +B(5))+B(4))+B(3))+B(2))+EEN-U)+Z2*VIER+PI6
       IF(X.GT.EEN)DILOG=-DILOG-.5*Z*Z+PI6*2.
       RETURN
5      Y=EEN/(EEN-X)
       Z=-DLOG(Y)
       Z2=Z*Z
       DILOG=-Z*(Z2*(Z2*(Z2*(Z2*(Z2*(Z2*(Z2*B(8)+B(7))+B(6))
     1 +B(5))+B(4))+B(3))+B(2))+EEN)-Z2*VIER
       RETURN
10     IF(X.EQ.EEN)GO TO 20
       XX=1./X
       IF(X.GT.2.)GO TO 11
       Z=DLOG(X)
       Y=1.-XX
       GO TO 6
11     U=DLOG(X)
       Z=-DLOG(1.-XX)
       GO TO 7
20     DILOG=PI6
       RETURN
       END
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
121   qran(j)=ranf(0)
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
26    format(1h1,10x,46hthe following are
     1averages with error estimate/)
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
481   format(1h1,45x,40hdouble differential cross-section
     1number,i3//60x,7hx-axis ,3a4/60x,7hy-axis ,3a4/)
482   format(20x,11(1hi,9x))
483   format(11x,d9.3,11(1hi,d9.3))
484   format(1x,d10.3,  9h---------,11(10hi---------))
485   format(1h0,14x,11d10.3)
486   format(11x,i8,1x,11(1hi,i8,1x))
810   format(i2)
811   format(2d12.4,3i2,8a4)
812   format(2(2d10.3,i4),6a4)
813   format(12h1***error***,10x,24htoo many plots requested//
     122x,20hthe upper limits are //19x,i2,9h
     2averages//19x,i2,22h one
     3dmensional plots//19x,i2,22h
     4two dimensional plots////22x,25h***exe
     5cution is halted***   )
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
      DOUBLE PRECISION FUNCTION RQEDGAM(SP,T1,U1,M2,Q2)
      IMPLICIT DOUBLE PRECISION (A - Z)
      INTEGER I
CEL      DIMENSION RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
CSR      DIMENSION RR(0:38),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
      COMMON/INTS/RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
CEL      COMMON/INTS/RR(0:38),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
      DIMENSION Q(26)

      M22 = M2*M2
      M23 = M2*M22

      S4 = SP + T1 + U1
      S4I = 1.0D0/S4
      S4I2 = S4I*S4I

      TP2 = T1*T1
      T1I = 1.0D0/T1
      T1I2 = T1I*T1I

      UP2 = U1*U1
      UP3 = U1*UP2
      U1I = 1.0D0/U1
      U1I2 = U1I/U1

      SPP2 = SP*SP
      SPP3 = SP*SPP2
      SPI = 1.0D0/SP
      SPI2 = SPI*SPI

      Q22 = Q2*Q2
      Q23 = Q2*Q22

      SPPT1 = SP + T1
      SPPT1I = 1.0D0/SPPT1

CEL      CALL RSTEG(SP,T1,U1,M2,Q2)
      CALL RSTEGG(SP,T1,U1,M2,Q2)
CEL      CALL RSTNEW(SP,T1,U1,M2)
C tpå2*u7å-1 term
      Q(1) = RR(16) *
     #  ( 4.0D0*Q2*T1I*U1I*S4I + 4.0D0*T1I*U1I*S4I*SP - 8.0D0*T1I*U1I
     #   + 4.0D0*T1I*S4I )
C tp*u7å-1 term
      Q(2) = RR(13) *
     # (  - 32.0D0*M22*T1I*U1I*S4I - 24.0D0*M2*Q2*T1I*U1I*S4I +
     #  8.0D0*M2*T1I*U1I*S4I*SP - 16.0D0*M2*T1I*U1I +
     #  16.0D0*M2*T1I*S4I + 8.0D0*Q22*T1I*U1I*S4I +
     #  8.0D0*Q2*T1I*U1I*S4I*SP - 20.0D0*Q2*T1I*U1I - 4.0D0*Q2*U1I*S4I
     #  - 4.0D0*T1*U1I*S4I + 4.0D0*T1I*U1*S4I + 4.0D0*T1I*U1I*SP +
     #  4.0D0*T1I*S4I*SP - 8.0D0*U1I*S4I*SP - 4.0D0*U1I + 8.0D0*S4I )
C tp*u7å-2 term
      Q(3) = RR(14) *
     #    ( 8.0D0*M2*T1I + 4.0D0*Q2*T1I )
C tp*s3å-1 term
      Q(4) = YY(3) *
     #    ( 8.0D0*M2*T1I*S4I + 8.0D0*M2*U1I*S4I - 4.0D0*Q2*T1I*S4I
     #     - 4.0D0*T1I*S4I*SP + 4.0D0*T1I )
C tp term
      Q(5) = RR(1) *
     # ( 8.0D0*M2*T1I*U1I*S4I + 8.0D0*M2*U1I2*S4I - 8.0D0*Q2*T1I*U1I*
     # S4I + 4.0D0*Q2*U1I2*S4I + 12.0D0*T1I*U1I*S4I*SP + 12.0D0*T1I*S4I
     #  + 12.0D0*U1I*S4I )
C upå2*u6å-1 term
      Q(6) = RR(36) *
     #    ( 4.0D0*T1I*U1I*S4I*SP - 8.0D0*T1I*U1I + 4.0D0*U1I*S4I)
C up*u6å-1 term
      Q(7) = RR(33) *
     #   (  - 32.0D0*M22*T1I*U1I*S4I - 16.0D0*M2*Q2*T1I*U1I*
     #   S4I + 8.0D0*M2*T1I*U1I*S4I*SP - 16.0D0*M2*T1I*U1I +
     #   16.0D0*M2*U1I*S4I - 8.0D0*Q2*T1I*U1I*S4I*SP + 4.0D0*Q2*T1I*U1I
     #    - 12.0D0*Q2*T1I*S4I - 8.0D0*Q2*U1I*S4I + 4.0D0*T1*U1I*S4I -
     #   4.0D0*T1I*U1*S4I + 4.0D0*T1I*U1I*SP - 8.0D0*T1I*S4I*SP -
     #   4.0D0*T1I + 4.0D0*U1I*S4I*SP + 8.0D0*S4I )
C up*u6å-2 term
      Q(8) = RR(34) *
     #    ( 8.0D0*M2*U1I )
C up*s3å-1 term
      Q(9) = YY(8) *
     #   ( 8.0D0*M2*T1I*S4I + 8.0D0*M2*U1I*S4I - 4.0D0*Q2*U1I*S4I
     #     - 4.0D0*U1I*S4I*SP + 4.0D0*U1I )
C up term
      Q(10) = RR(21) *
     #  ( 8.0D0*M2*T1I*U1I*S4I + 8.0D0*M2*T1I2*S4I -
     #   4.0D0*Q2*T1I*U1I*S4I + 12.0D0*T1I*U1I*S4I*SP + 12.0D0*T1I*S4I
     #   + 12.0D0*U1I*S4I )
C u6å-1*u7å-1 term
      Q11A = UU(1) *
     #  ( 64.0D0*M23*T1I*U1I + 64.0D0*M23*T1I*SPI + 64.0D0*M23*U1I*SPI
     #   + 64.0D0*M23*SPI2 - 32.0D0*M22*Q2*T1I*U1I -
     #   32.0D0*M22*Q2*U1I*SPI + 32.0D0*M22*T1*U1I*SPI +
     #   32.0D0*M22*T1I*U1*SPI + 96.0D0*M22*T1I*U1I*SP + 96.0D0*M22*T1I
     #   + 96.0D0*M22*U1I + 64.0D0*M22*SPI - 16.0D0*M2*Q22*T1I*U1I -
     #   16.0D0*M2*Q22*T1I*SPI - 16.0D0*M2*Q22*U1I*SPI -
     #   16.0D0*M2*Q22*SPI2 + 24.0D0*M2*Q2*T1*U1I*SPI +
     #   16.0D0*M2*Q2*T1I*U1*SPI + 24.0D0*M2*Q2*T1I*U1I*SP +
     #   16.0D0*M2*Q2*T1I + 32.0D0*M2*Q2*U1I + 16.0D0*M2*Q2*SPI +
     #   8.0D0*M2*T1*U1I - 8.0D0*M2*T1*SPI + 8.0D0*M2*T1I*U1)
      Q11B = UU(1) *
     # (8.0D0*M2*T1I*SP - 8.0D0*M2*U1*SPI + 8.0D0*M2*U1I*SP - 16.0D0*M2
     #   + 8.0D0*Q23*T1I*U1I + 8.0D0*Q23*U1I*SPI - 8.0D0*Q22*T1*U1I*SPI
     #   - 24.0D0*Q22*T1I*U1I*SP - 16.0D0*Q22*T1I - 32.0D0*Q22*U1I -
     #   8.0D0*Q22*SPI + 4.0D0*Q2*TP2*U1I*SPI + 20.0D0*Q2*T1*U1I +
     #   8.0D0*Q2*T1*SPI + 12.0D0*Q2*T1I*U1 + 24.0D0*Q2*T1I*U1I*SPP2 +
     #   32.0D0*Q2*T1I*SP + 4.0D0*Q2*U1*SPI + 40*Q2*U1I*SP + 32.0D0*Q2
     #   - 4.0D0*TP2*U1I - 12.0D0*T1*U1I*SP - 12.0D0*T1 - 4.0D0*T1I*UP2
     #   - 12.0D0*T1I*U1*SP - 8.0D0*T1I*U1I*SPP3 - 16.0D0*T1I*SPP2 -
     #   12.0D0*U1 - 16.0D0*U1I*SPP2 - 24.0D0*SP )
      Q(11) = Q11A + Q11B
C s3å-1*u7å-1 term
      Q12A = ZZ(5) *
     #  ( 64.0D0*M23*T1I*S4I - 64.0D0*M23*T1I*SPI +
     #   64.0D0*M23*U1I*S4I - 64.0D0*M23*U1I*SPI - 64.0D0*M23*SPI2 -
     #   32.0D0*M22*Q2*U1I*S4I + 32.0D0*M22*Q2*U1I*SPI +
     #   64.0D0*M22*T1*U1I*S4I - 32.0D0*M22*T1*U1I*SPI -
     #   32.0D0*M22*T1I*U1*S4I - 32.0D0*M22*T1I*U1*SPI -
     #   64.0D0*M22*T1I*S4I*SP + 64.0D0*M22*T1I - 32.0D0*M22*U1I*S4I*SP
     #   - 64.0D0*M22*SPI - 16.0D0*M2*Q22*T1I*S4I +
     #   16.0D0*M2*Q22*T1I*SPI - 16.0D0*M2*Q22*U1I*S4I +
     #   16.0D0*M2*Q22*U1I*SPI + 16.0D0*M2*Q22*SPI2 -
     #   8.0D0*M2*Q2*T1*U1I*S4I - 24.0D0*M2*Q2*T1*U1I*SPI +
     #   16.0D0*M2*Q2*T1I*U1*S4I - 16.0D0*M2*Q2*T1I*U1*SPI -
     #   32.0D0*M2*Q2*U1I*S4I*SP + 16.0D0*M2*Q2*U1I - 16.0D0*M2*Q2*S4I
     #   - 16.0D0*M2*Q2*SPI + 8.0D0*M2*TP2*U1I*S4I -
     #   8.0D0*M2*T1*U1I*S4I*SP + 4.0D0*M2*T1*S4I + 8.0D0*M2*T1*SPI)
      Q12B = ZZ(5) *
     #   (  + 8.0D0*M2*T1I*U1*S4I*SP - 8.0D0*M2*T1I*U1 +
     #   8.0D0*M2*T1I*S4I*SPP2 - 8.0D0*M2*T1I*SP - 4.0D0*M2*U1*S4I +
     #   8.0D0*M2*U1*SPI - 16.0D0*M2*U1I*S4I*SPP2 + 16.0D0*M2*U1I*SP -
     #   20.0D0*M2*S4I*SP + 68.0D0*M2 + 8.0D0*Q23*U1I*S4I -
     #   8.0D0*Q23*U1I*SPI + 8.0D0*Q22*T1*U1I*SPI +
     #   24.0D0*Q22*U1I*S4I*SP - 24.0D0*Q22*U1I + 8.0D0*Q22*S4I +
     #   8.0D0*Q22*SPI - 4.0D0*Q2*TP2*U1I*SPI + 12.0D0*Q2*T1*U1I -
     #   8.0D0*Q2*T1*SPI + 4.0D0*Q2*T1I*U1*S4I*SP +
     #   4.0D0*Q2*T1I*S4I*SPP2 - 4.0D0*Q2*T1I*SP + 4.0D0*Q2*U1*S4I -
     #   4.0D0*Q2*U1*SPI + 24.0D0*Q2*U1I*S4I*SPP2 - 24.0D0*Q2*U1I*SP +
     #   20.0D0*Q2*S4I*SP - 4.0D0*Q2 - 4.0D0*TP2*U1I + 4.0D0*T1*U1I*SP
     #   + 4.0D0*T1I*U1*S4I*SPP2 + 4.0D0*T1I*S4I*SPP3 - 4.0D0*T1I*SPP2
     #   + 4.0D0*U1*S4I*SP + 8.0D0*U1I*S4I*SPP3 - 8.0D0*U1I*SPP2 +
     #   12.0D0*S4I*SPP2 - 4.0D0*SP )
      Q(12) = Q12A + Q12B
C u7å-1*s3å-2 term
      Q(13) = ZZ(7) *
     # (  - 64.0D0*M23*SPI + 32.0D0*M22 + 16.0D0*M2*Q22*SPI +
     #   16.0D0*M2*Q2 + 8.0D0*M2*SP )
C u7å-1 term
      Q14A = RR(7) *
     #  ( -4.0D0 + 64.0D0*M23*T1I*U1I*S4I + 64.0D0*M23*T1I2*S4I -
     #   32.0D0*M22*Q2*T1I*U1I*S4I - 48.0D0*M22*T1I*U1I*S4I*SP +
     #   112.0D0*M22*T1I*U1I - 16.0D0*M22*T1I2*U1*S4I -
     #   16.0D0*M22*T1I2*S4I*SP + 48.0D0*M22*T1I2 + 16.0D0*M22*U1I*S4I
     #   - 16.0D0*M2*Q22*T1I*U1I*S4I - 16.0D0*M2*Q22*T1I2*S4I -
     #   4.0D0*M2*Q2*T1I*U1I*S4I*SP + 12.0D0*M2*Q2*T1I*U1I +
     #   12.0D0*M2*Q2*T1I*S4I + 16.0D0*M2*Q2*T1I2 + 4.0D0*M2*Q2*U1I*S4I
     #   + 16.0D0*M2*T1*U1I*S4I - 16.0D0*M2*T1I*U1*S4I +
     #   20.0D0*M2*T1I*U1I*S4I*SPP2 - 20.0D0*M2*T1I*U1I*SP +
     #   12.0D0*M2*T1I*S4I*SP + 64.0D0*M2*T1I - 8.0D0*M2*T1I2*U1 -
     #   8.0D0*M2*T1I2*SP + 36.0D0*M2*U1I*S4I*SP + 32.0D0*M2*U1I)
      Q14B = RR(7) *
     #   ( + 8.0D0*Q23*T1I*U1I*S4I + 12.0D0*Q22*T1I*U1I*S4I*SP -
     #   36.0D0*Q22*T1I*U1I + 4.0D0*Q22*T1I*S4I - 12.0D0*Q22*U1I*S4I -
     #   12.0D0*Q2*T1*U1I*S4I + 4.0D0*Q2*T1I*U1*S4I +
     #   24.0D0*Q2*T1I*U1I*SP + 16.0D0*Q2*T1I - 36.0D0*Q2*U1I*S4I*SP +
     #   56.0D0*Q2*U1I - 12.0D0*Q2*S4I - 4.0D0*TP2*U1I*S4I -
     #   16.0D0*T1*U1I*S4I*SP - 4.0D0*T1*U1I + 4.0D0*T1*S4I -
     #   4.0D0*T1I*U1 - 4.0D0*T1I*U1I*S4I*SPP3 - 4.0D0*T1I*U1I*SPP2 -
     #   4.0D0*T1I*S4I*SPP2 - 12.0D0*T1I*SP - 24.0D0*U1I*S4I*SPP2 +
     #   8.0D0*U1I*SP - 8.0D0*S4I*SP )
      Q(14) = Q14A + Q14B
C u7å-2*s3å-1 term
      Q(15) = ZZ(6) *
     #  ( 64.0D0*M23*T1I + 32.0D0*M22*Q2*T1I + 32.0D0*M22 +
     #   16.0D0*M2*Q2 - 8.0D0*M2*T1 - 4.0D0*Q2*T1 )
C  u7å-2*s3å-2 term
      Q(16) = ZZ(8) *
     #  ( 32.0D0*M23 + 16.0D0*M22*Q2 )
C  u7å-2 term
      Q(17) = RR(8) *
     #   ( 32.0D0*M23*T1I2 + 16.0D0*M22*Q2*T1I2 + 32.0D0*M22*T1I +
     #   16.0D0*M2*Q2*T1I + 8.0D0*M2 + 4.0D0*Q2 )
C  s3å-1*u6å-1 term
      Q18A = ZZ(1) *
     # ( 64.0D0*M23*T1I*S4I - 64.0D0*M23*T1I*SPI + 64.0D0*M23*U1I*S4I -
     #   64.0D0*M23*U1I*SPI - 64.0D0*M23*SPI2 - 32.0D0*M22*Q2*T1I*S4I +
     #   32.0D0*M22*Q2*U1I*SPI - 32.0D0*M22*T1*U1I*S4I -
     #   32.0D0*M22*T1*U1I*SPI + 64.0D0*M22*T1I*U1*S4I -
     #   32.0D0*M22*T1I*U1*SPI - 32.0D0*M22*T1I*S4I*SP -
     #   64.0D0*M22*U1I*S4I*SP + 64.0D0*M22*U1I - 64.0D0*M22*SPI -
     #   16.0D0*M2*Q22*T1I*S4I + 16.0D0*M2*Q22*T1I*SPI -
     #   16.0D0*M2*Q22*U1I*S4I + 16.0D0*M2*Q22*U1I*SPI +
     #   16.0D0*M2*Q22*SPI2 + 8.0D0*M2*Q2*T1*U1I*S4I -
     #   24.0D0*M2*Q2*T1*U1I*SPI - 8.0D0*M2*Q2*T1I*U1*S4I
     #   - 16.0D0*M2*Q2*T1I*U1*SPI - 32.0D0*M2*Q2*T1I*S4I*SP)
      Q18B = ZZ(1) *
     # ( 8.0D0*M2*Q2*T1I - 8.0D0*M2*Q2*U1I*S4I*SP - 16.0D0*M2*Q2*U1I -
     #   24.0D0*M2*Q2*S4I - 16.0D0*M2*Q2*SPI + 8.0D0*M2*T1*U1I*S4I*SP -
     #   8.0D0*M2*T1*U1I - 4.0D0*M2*T1*S4I + 8.0D0*M2*T1*SPI +
     #   8.0D0*M2*T1I*UP2*S4I - 8.0D0*M2*T1I*U1*S4I*SP -
     #   16.0D0*M2*T1I*S4I*SPP2 + 16.0D0*M2*T1I*SP + 4.0D0*M2*U1*S4I +
     #   8.0D0*M2*U1*SPI + 8.0D0*M2*U1I*S4I*SPP2 - 8.0D0*M2*U1I*SP -
     #   20.0D0*M2*S4I*SP + 68.0D0*M2 + 8.0D0*Q23*T1I*S4I -
     #   8.0D0*Q23*U1I*SPI + 4.0D0*Q22*T1*U1I*S4I + 8.0D0*Q22*T1*U1I*SPI
     #   + 24.0D0*Q22*T1I*S4I*SP - 16.0D0*Q22*T1I + 4.0D0*Q22*U1I*S4I*SP
     #   - 4.0D0*Q22*U1I + 12.0D0*Q22*S4I + 8.0D0*Q22*SPI)
      Q18C = ZZ(1) *
     # (-4.0D0*Q2*TP2*U1I*SPI + 8.0D0*Q2*T1*U1I*S4I*SP + 4.0D0*Q2*T1*S4I
     #   - 8.0D0*Q2*T1*SPI + 12.0D0*Q2*T1I*U1 + 24.0D0*Q2*T1I*S4I*SPP2 -
     #   20.0D0*Q2*T1I*SP - 4.0D0*Q2*U1*SPI + 8.0D0*Q2*U1I*S4I*SPP2 -
     #   8.0D0*Q2*U1I*SP + 24.0D0*Q2*S4I*SP - 4.0D0*Q2 +
     #   4.0D0*T1*U1I*S4I*SPP2 + 4.0D0*T1*S4I*SP - 4.0D0*T1I*UP2 +
     #   4.0D0*T1I*U1*SP + 8.0D0*T1I*S4I*SPP3 - 8.0D0*T1I*SPP2 +
     #   4.0D0*U1I*S4I*SPP3 - 4.0D0*U1I*SPP2 + 12.0D0*S4I*SPP2 -
     #   4.0D0*SP)
      Q(18) = Q18A + Q18B + Q18C
C s3å-2*u6å-1 term
      Q(19) = ZZ(3) *
     #   (  - 64.0D0*M23*SPI + 32.0D0*M22 + 16.0D0*M2*Q22*SPI +
     #   16.0D0*M2*Q2 + 8.0D0*M2*SP )
C u6å-1 term
      Q20A = RR(27) *
     #   (  - 4.0D0 + 64.0D0*M23*T1I*U1I*S4I + 64.0D0*M23*U1I2*S4I +
     #   32.0D0*M22*Q2*T1I*U1I*S4I + 32.0D0*M22*Q2*U1I2*S4I -
     #   16.0D0*M22*T1*U1I2*S4I - 48.0D0*M22*T1I*U1I*S4I*SP +
     #   112.0D0*M22*T1I*U1I + 16.0D0*M22*T1I*S4I -
     #   16.0D0*M22*U1I2*S4I*SP + 48.0D0*M22*U1I2 -
     #   8.0D0*M2*Q2*T1*U1I2*S4I - 4.0D0*M2*Q2*T1I*U1I*S4I*SP +
     #   12.0D0*M2*Q2*T1I*U1I + 4.0D0*M2*Q2*T1I*S4I +
     #   12.0D0*M2*Q2*U1I*S4I - 8.0D0*M2*Q2*U1I2*S4I*SP +
     #   24.0D0*M2*Q2*U1I2 - 16.0D0*M2*T1*U1I*S4I - 8.0D0*M2*T1*U1I2 +
     #   16.0D0*M2*T1I*U1*S4I + 20.0D0*M2*T1I*U1I*S4I*SPP2 -
     #   20.0D0*M2*T1I*U1I*SP + 36.0D0*M2*T1I*S4I*SP + 32.0D0*M2*T1I)
      Q20B = RR(27) *
     #  ( + 12.0D0*M2*U1I*S4I*SP + 64.0D0*M2*U1I - 8.0D0*M2*U1I2*SP -
     #   8.0D0*Q22*T1I*U1I - 8.0D0*Q22*T1I*S4I - 4.0D0*Q2*T1*U1I*S4I -
     #   4.0D0*Q2*T1*U1I2 - 12.0D0*Q2*T1I*U1*S4I -
     #   8.0D0*Q2*T1I*U1I*S4I*SPP2 + 24.0D0*Q2*T1I*U1I*SP -
     #   36.0D0*Q2*T1I*S4I*SP + 28.0D0*Q2*T1I - 12.0D0*Q2*U1I*S4I*SP +
     #   20.0D0*Q2*U1I - 4.0D0*Q2*U1I2*SP - 20.0D0*Q2*S4I - 4.0D0*T1*U1I
     #   - 4.0D0*T1I*UP2*S4I - 16.0D0*T1I*U1*S4I*SP - 4.0D0*T1I*U1 -
     #   4.0D0*T1I*U1I*S4I*SPP3 - 4.0D0*T1I*U1I*SPP2 -
     #   24.0D0*T1I*S4I*SPP2 + 8.0D0*T1I*SP + 4.0D0*U1*S4I -
     #   4.0D0*U1I*S4I*SPP2 - 12.0D0*U1I*SP - 8.0D0*S4I*SP )
      Q(20) = Q20A + Q20B
C s3å-1*u6å-2 term
      Q(21) = ZZ(2) *
     # (64.0D0*M23*U1I + 32.0D0*M22 - 16.0D0*M2*Q22*U1I + 16.0D0*M2*Q2
     #  - 8.0D0*M2*U1 )
C s3å-2*u6å-2 term
      Q(22) = ZZ(4) *
     #   ( 32.0D0*M23 + 16.0D0*M22*Q2 )
C u6å-2 term
      Q(23) = RR(28) *
     #   ( 32.0D0*M23*U1I2 + 16.0D0*M22*Q2*U1I2 + 32.0D0*M22*U1I +
     #   8.0D0*M2*Q2*U1I + 8.0D0*M2 )
C s3å-1 term
      Q(24) = YY(1) *
     #   ( 8.0D0 - 32.0D0*M22*T1I*S4I - 32.0D0*M22*U1I*S4I -
     #   32.0D0*M2*Q2*T1I*S4I - 32.0D0*M2*Q2*U1I*S4I -
     #   12.0D0*M2*T1*U1I*S4I - 12.0D0*M2*T1I*U1*S4I -
     #   20.0D0*M2*T1I*S4I*SP + 4.0D0*M2*T1I - 20.0D0*M2*U1I*S4I*SP +
     #   4.0D0*M2*U1I + 8.0D0*M2*S4I + 8.0D0*Q22*T1I*S4I +
     #   12.0D0*Q22*U1I*S4I + 12.0D0*Q2*T1I*S4I*SP - 8.0D0*Q2*T1I +
     #   16.0D0*Q2*U1I*S4I*SP - 16.0D0*Q2*U1I - 8.0D0*Q2*S4I +
     #   4.0D0*T1I*S4I*SPP2 - 4.0D0*T1I*SP + 4.0D0*U1I*S4I*SPP2 -
     #   4.0D0*U1I*SP - 8.0D0*S4I*SP )
C s3å-2 term
      Q(25) = YY(2) *
     #   ( 16.0D0*M2 )
C terms independent of angle
      Q(26) = RR(0) *
     #   ( 64.0D0*M23*T1I*U1I*S4I2 + 32.0D0*M23*T1I2*S4I2 +
     #   32.0D0*M23*U1I2*S4I2 + 16.0D0*M22*Q2*T1I2*S4I2 +
     #   16.0D0*M22*Q2*U1I2*S4I2 + 96.0D0*M22*T1I*U1I*S4I -
     #   32.0D0*M22*T1I*U1I*S4I2*SP + 32.0D0*M22*T1I2*S4I +
     #   32.0D0*M22*U1I2*S4I - 16.0D0*M2*Q22*T1I*U1I*S4I2 +
     #   8.0D0*M2*Q2*T1I*U1I*S4I + 16.0D0*M2*Q2*T1I*S4I2 +
     #   8.0D0*M2*Q2*T1I2*S4I + 16.0D0*M2*Q2*U1I*S4I2 +
     #   16.0D0*M2*Q2*U1I2*S4I - 24.0D0*M2*T1I*U1I*S4I*SP +
     #   16.0D0*M2*T1I*U1I*S4I2*SPP2 + 8.0D0*M2*T1I*U1I +
     #   48.0D0*M2*T1I*S4I + 24.0D0*M2*T1I*S4I2*SP + 8.0D0*M2*T1I2 +
     #   48.0D0*M2*U1I*S4I + 24.0D0*M2*U1I*S4I2*SP + 8.0D0*M2*U1I2 +
     #   16.0D0*M2*S4I2 - 4.0D0*Q22*T1I*U1I*S4I + 8.0D0*Q2*T1I*U1I +
     #   4.0D0*Q2*T1I*S4I - 4.0D0*Q2*U1I*S4I + 4.0D0*Q2*U1I2 -
     #   12.0D0*T1*U1I*S4I - 12.0D0*T1I*U1*S4I - 16.0D0*T1I*S4I*SP +
     #   20.0D0*T1I - 16.0D0*U1I*S4I*SP + 20.0D0*U1I - 24.0D0*S4I)

        EGCFCF = 0.0D0
      DO 10 I=1,26
        EGCFCF = EGCFCF + Q(I)
 10   CONTINUE
C
C  IN FORM THE EXPRESSION HAS ALREADY BEEN DIVIDED BY -4, SO:
c  REALIZE THAT THERE ARE THERE ARE TWO GLUON POL.NS IN THESE
C  DIAGRAMS, HENCE THERE IS A MINUS SIGN LEFT OVER FROM THE
C  DEFINITION
      RQEDGAM = EGCFCF/4.0D0
      RETURN
      END

      DOUBLE PRECISION FUNCTION RQEDL(SP,T1,U1,M2,Q2)
C This is the hard matrix element for gamma-gluon fusion for an off-
C  shell photon.  This is the CFCF piece.
      IMPLICIT DOUBLE PRECISION (A - Z)
CEL      DIMENSION RR(0:43), SS(28), TT(2), UU(1), VV(1), YY(12), ZZ(8)
CSR      DIMENSION RR(0:38), SS(28), TT(2), UU(1), VV(1), YY(12), ZZ(8)
      DIMENSION Q(24)
      INTEGER I
C
      COMMON/INTS/RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
CSR      COMMON/INTS/RR(0:38),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
C
      M22 = M2*M2
      M23 = M2*M22

      S4 = SP + T1 + U1
      S4I = 1.0D0/S4
      S4I2 = S4I*S4I

      TP2 = T1*T1
      TP3 = T1*TP2
      TP4 = T1*TP3
      T1I1 = 1.0D0/T1
      T1I2 = T1I1*T1I1

      UP2 = U1*U1
      UP3 = U1*UP2
      U1I1 = 1.0D0/U1
      U1I2 = U1I1/U1

      SPP2 = SP*SP
      SPP3 = SP*SPP2
      SPP4 = SP*SPP3
      SPI = 1.0D0/SP

      Q22 = Q2*Q2
      Q23 = Q2*Q22

      SPPT1 = SP + T1
      SPPT1I = 1.0D0/SPPT1

CEL      CALL RSTEG(SP,T1,U1,M2,Q2)
      CALL RSTEGG(SP,T1,U1,M2,Q2)
CSR      CALL RSTNEW(SP,T1,U1,M2)
c tp term
      Q(1) = RR(1) * (
     #  8*m2*t1i1*u1i1*s4i*sp+8*m2*t1i1*u1i1-24*m2*t1i1*
     #    s4i-16*m2*t1i2*u1*s4i+16*m2*t1i2-8*m2*u1i1*s4i-16*q2
     #    *t1i1*u1i1+8*q2*u1i1*s4i-8*tp2*u1i2*s4i+8*t1*u1i1*
     #    s4i-8*t1*u1i2*s4i*sp-24*t1i1*u1*s4i+16*t1i1*u1i1*sp
     #    -16*t1i1*s4i*sp+24*t1i1+24*u1i1*s4i*sp-16*u1i1-8*
     #    s4i )
c u7å-1 term
      Q2A = RR(7) * (
     #   64*m22*t1*u1i1*s4i+32*m22*t1i1*u1i1*s4i*spp2+32*
     #    m22*t1i1*s4i*sp-32*m22*t1i1-32*m22*t1i2*up2*s4i-32*
     #    m22*t1i2*u1*s4i*sp+32*m22*t1i2*u1+64*m22*u1i1*s4i*sp+
     #    96*m22*s4i-8*m2*q2*t1*u1i1*s4i+32*m2*q2*t1i1*u1*s4i-8*
     #    m2*q2*t1i1*u1i1*s4i*spp2-8*m2*q2*t1i1*u1i1*sp+24*m2*q2*
     #    t1i1*s4i*sp+16*m2*q2*t1i1+16*m2*q2*t1i2*up2*s4i+16*m2*
     #    q2*t1i2*u1*s4i*sp-16*m2*q2*t1i2*u1-8*m2*q2*u1i1+8*m2*q2*
     #    s4i+40*m2*tp2*u1i1*s4i+16*m2*t1*u1i1*s4i*sp-40*m2*t1*
     #    u1i1+24*m2*t1*s4i-24*m2*t1i1*up2*s4i+16*m2*t1i1*u1*
     #    s4i*sp-24*m2*t1i1*u1-8*m2*t1i1*u1i1*s4i*spp3+24*m2*t1i1
     #    *u1i1*spp2-16*m2*t1i1*s4i*spp2-8*m2*t1i1*sp-16*m2*t1i2*
     #    up3*s4i+16*m2*t1i2*up2+16*m2*t1i2*u1*s4i*spp2-16*m2*
     #    t1i2*u1*sp+8*m2*u1*s4i-16*m2*u1i1*s4i*spp2+24*m2*u1i1*sp)
       Q2B = RR(7) * (
     #    -32*m2*s4i*sp+16*m2-8*q22*t1i1*u1*s4i-8*q22*t1i1*
     #    s4i*sp+8*q22*t1i1-8*q22*u1i1+8*q2*tp2*u1i1*s4i+24*
     #    q2*t1*u1i1-32*q2*t1*s4i+8*q2*t1i1*up2*s4i+8*q2*t1i1*u1*
     #    s4i*sp-8*q2*t1i1*u1-16*q2*u1*s4i-8*q2*u1i1*s4i*spp2+
     #    24*q2*u1i1*sp-32*q2*s4i*sp+16*q2+8*tp2*u1i1*s4i*sp-32*
     #    tp2*u1i1+16*tp2*s4i+8*t1*u1*s4i-40*t1*u1i1*sp+8*t1*
     #    s4i*sp-16*t1-16*t1i1*up3*s4i-24*t1i1*up2*s4i*sp+16*
     #    t1i1*up2+8*t1i1*u1*sp+8*t1i1*s4i*spp3-8*t1i1*spp2-24*
     #    up2*s4i-16*u1*s4i*sp+8*u1-8*u1i1*s4i*spp3-8*s4i*
     #    spp2-8*sp )
        Q(2) = Q2A + Q2B
c u7å-2 term
       Q(3) =  RR(8) * ( 32*m22*t1i1*sp-16*tp2-16*t1*sp )
c tp*u7å-1 term
       Q(4) = RR(13) * (
     #    -16-32*m22*t1i1*u1i1*s4i*sp-32*m22*t1i1*s4i+
     #    32*m22*t1i2*u1*s4i-32*m22*t1i2-64*m22*u1i1*s4i-8*m2*
     #    q2*t1i1*u1i1*s4i*sp+24*m2*q2*t1i1*u1i1-56*m2*q2*t1i1*s4i
     #    -32*m2*q2*t1i2*u1*s4i-16*m2*q2*t1i2*s4i*sp+32*m2*q2*t1i2
     #    +8*m2*q2*u1i1*s4i+16*m2*t1*u1i1*s4i+24*m2*t1i1*u1*s4i
     #    +8*m2*t1i1*u1i1*s4i*spp2-8*m2*t1i1*u1i1*sp-32*m2*t1i1*
     #    s4i*sp+8*m2*t1i1-16*m2*t1i2*u1*s4i*sp-16*m2*t1i2*s4i*
     #    spp2+16*m2*t1i2*sp+24*m2*u1i1*s4i*sp-80*m2*u1i1+8*m2*
     #    s4i+8*q22*t1i1*u1i1*s4i*sp-8*q22*t1i1*u1i1+16*q22*
     #    t1i1*s4i+8*q22*u1i1*s4i-16*q2*t1i1*u1*s4i-8*q2*t1i1*
     #    s4i*sp+8*q2*t1i1+32*q2*u1i1-32*q2*s4i-16*tp2*u1i1*
     #    s4i-24*t1*u1i1*s4i*sp-16*t1*u1i1-8*t1i1*u1i1*s4i*spp3
     #    +8*t1i1*u1i1*spp2-8*t1i1*s4i*spp2+8*t1i1*sp+16*u1*s4i
     #    -16*u1i1*s4i*spp2-8*u1i1*sp-8*s4i*sp )
c tp*u7å-2 term
      Q(5) = RR(14) * (
     # -32*m22*t1i2*sp-32*m2*t1i1*sp-32*m2-32*t1-16*sp  )
c tpå2*u7å-1 term
      Q(6) = RR(16) * (
     #   16*m2*q2*t1i1*u1i1*s4i+16*m2*q2*t1i2*s4i-8*m2*
     #    t1i1*u1i1*s4i*sp+8*m2*t1i1*u1i1+8*m2*t1i1*s4i+16*m2*
     #    t1i2*u1*s4i+16*m2*t1i2*s4i*sp-16*m2*t1i2-8*m2*u1i1*
     #    s4i-8*q22*t1i1*u1i1*s4i+16*q2*t1i1*u1i1+8*q2*t1i1*
     #    s4i+16*q2*u1i1*s4i-8*t1*u1i1*s4i+16*t1i1*u1*s4i+8*
     #    t1i1*u1i1*s4i*spp2-16*t1i1*u1i1*sp+24*t1i1*s4i*sp-16*
     #    t1i1+8*u1i1*s4i*sp-8*u1i1+8*s4i )
c up term
      Q(7) = RR(21) * (
     #    16*t1*u1i1*s4i-8*t1i1*u1*s4i+8*t1i1*u1i1*sp+8*
     #    t1i1+16*u1i1*s4i*sp-16*u1i1+8*s4i )
c u6å-1 term
      Q(8) = RR(27) * (
     #    -64*m22*tp2*u1i2*s4i-32*m22*t1*u1i1*s4i-64*
     #    m22*t1*u1i2*s4i*sp-32*m22*u1i1*s4i*sp-32*m22*u1i1+32*
     #    m22*s4i+16*m2*tp3*u1i2*s4i+8*m2*tp2*u1i1*s4i+32*m2*
     #    tp2*u1i2*s4i*sp-48*m2*tp2*u1i2+24*m2*t1*u1i1*s4i*sp-24
     #    *m2*t1*u1i1+16*m2*t1*u1i2*s4i*spp2-48*m2*t1*u1i2*sp+32*m2*
     #    t1*s4i+16*m2*t1i1*up2*s4i-16*m2*t1i1*u1+16*m2*t1i1*
     #    u1i1*spp2+16*m2*t1i1*sp+24*m2*u1*s4i+16*m2*u1i1*s4i*spp2
     #    -16*m2*u1i1*sp+24*m2*s4i*sp-8*m2+8*q2*t1*u1i1-8*q2*u1*
     #    s4i+8*q2*u1i1*sp+8*q2+8*tp3*u1i2+16*tp2*u1i2*sp-8*
     #    tp2*s4i-24*t1*u1*s4i-8*t1*u1i1*sp+8*t1*u1i2*spp2-24*t1
     #    *s4i*sp+8*t1-16*up2*s4i-40*u1*s4i*sp+16*u1-8*u1i1*
     #    spp2-16*s4i*spp2+8*sp )
c u6å-2 term
      Q(9) = RR(28) * ( -32*m22*tp2*u1i2-32*m22*t1*u1i2*sp )
c up*u6å-1 term
      Q(10) = RR(33) * (
     #    16+16*m2*t1*u1i1*s4i+16*m2*u1i1*s4i*sp+16*m2*
     #    u1i1-16*m2*s4i-16*t1*s4i-16*u1*s4i-16*s4i*sp )
c tpå2*u7å-2 term
      Q(11) = RR(40) * ( -24-32*m22*t1i2-32*m2*t1i1-8*t1i1*sp )
c tpå3*u7å-2 term
      Q(12)  = RR(41) * ( -8*t1i1 )
c s3å-1 term
      Q(13) = YY(1) * (
     #    -16*m2*q22*t1i1*s4i-16*m2*q22*u1i1*s4i-8*m2*q2*
     #    t1i1*u1*s4i-24*m2*q2*t1i1*s4i*sp+8*m2*q2*t1i1-24*m2*q2*
     #    u1i1*s4i*sp+48*m2*q2*u1i1-88*m2*q2*s4i-24*m2*tp2*u1i1*
     #    s4i-32*m2*t1*u1i1*s4i*sp+56*m2*t1*u1i1-24*m2*t1i1*up2*
     #    s4i-32*m2*t1i1*u1*s4i*sp+40*m2*t1i1*u1-8*m2*t1i1*s4i*
     #    spp2+24*m2*t1i1*sp-8*m2*u1i1*s4i*spp2+80*m2*u1i1*sp-56*
     #    m2*s4i*sp+40*m2+8*q23*t1i1*s4i+16*q22*t1i1*s4i*sp-
     #    24*q22*t1i1-8*q22*u1i1*s4i*sp+8*q22*u1i1+8*q22*s4i
     #    +8*q2*tp2*u1i1*s4i+16*q2*t1*u1i1*s4i*sp-8*q2*t1*u1i1+
     #    16*q2*t1*s4i+8*q2*t1i1*up2*s4i+8*q2*t1i1*u1*s4i*sp+16*
     #    q2*t1i1*u1+8*q2*t1i1*s4i*spp2-8*q2*t1i1*sp+16*q2*u1*s4i
     #    +40*q2*s4i*sp+16*q2+8*tp2*u1i1*s4i*sp+16*t1*u1i1*s4i
     #    *spp2-8*t1*u1i1*sp+16*t1*s4i*sp-16*t1+8*t1i1*up2*s4i*
     #    sp-8*t1i1*up2+8*t1i1*u1*s4i*spp2-8*t1i1*u1*sp+16*u1*
     #    s4i*sp-24*u1+8*u1i1*s4i*spp3-8*u1i1*spp2+32*s4i*spp2
     #    -24*sp )
c s3å-2 term
      Q(14) = YY(2) * ( -32*m2*q2-32*m2*sp )
c tp*s3å-1 term
      Q(15) = YY(3) * (
     #    -16+16*m2*q2*t1i1*s4i+16*m2*q2*u1i1*s4i-24*m2*t1
     #    *u1i1*s4i+16*m2*t1i1*u1*s4i+32*m2*t1i1*s4i*sp-32*m2*
     #    t1i1+24*m2*u1i1+8*m2*s4i-8*q22*u1i1*s4i-8*q2*t1i1*u1
     #    *s4i-8*q2*t1i1*s4i*sp+16*q2*t1i1-8*q2*u1i1*s4i*sp-8*
     #    t1i1*u1*s4i*sp-8*t1i1*u1-8*t1i1*s4i*spp2+8*t1i1*sp )
c up*s3å-1 term
      Q(16) = YY(8) * (
     #   -16+16*m2*q2*t1i1*s4i+16*m2*q2*u1i1*s4i+8*m2*t1*
     #    u1i1*s4i+16*m2*t1i1*s4i*sp-16*m2*t1i1+32*m2*u1i1*s4i*
     #    sp-8*m2*u1i1+24*m2*s4i-8*q22*t1i1*s4i-8*q2*t1*u1i1*
     #    s4i-16*q2*t1i1*s4i*sp+16*q2*t1i1-8*t1*u1i1*s4i*sp-8*
     #    t1i1*u1-8*t1i1*s4i*spp2+8*t1i1*sp )
c s3å-1*u6å-1 term
      Q(17) = ZZ(1) * (
     #    -32*m22*tp2*u1i1*s4i-32*m22*t1*u1i1*s4i*sp+64*
     #    m22*t1*u1i1-32*m22*t1*s4i+32*m22*t1i1*up2*s4i-32*m22
     #    *t1i1*u1+32*m22*t1i1*sp+32*m22*u1*s4i+32*m22*u1i1*sp-
     #    32*m22*s4i*sp+16*m2*q2*tp2*u1i1*s4i-16*m2*q2*tp2*u1i1*
     #    spi+16*m2*q2*t1*u1i1*s4i*sp+8*m2*q2*t1*s4i-16*m2*q2*
     #    t1i1*up2*s4i+16*m2*q2*t1i1*u1-16*m2*q2*t1i1*sp-24*m2*q2*
     #    u1*s4i+32*m2*q2*u1i1*sp+8*m2*q2*s4i*sp+8*m2*q2+16*m2*
     #    tp2*u1i1*s4i*sp-8*m2*tp2*s4i-8*m2*t1*u1*s4i+16*m2*t1*
     #    u1i1*s4i*spp2+32*m2*t1*u1i1*sp+24*m2*t1-16*m2*t1i1*up2*
     #    s4i*sp+16*m2*t1i1*u1*sp-24*m2*u1*s4i*sp+32*m2*u1i1*spp2
     #    +8*m2*s4i*spp2+8*m2*sp+8*q22*tp2*u1i1*spi+8*q22*t1*
     #    u1i1+8*q22*u1*s4i-8*q22+8*q2*tp2*u1i1+8*q2*t1*u1i1*sp
     #    +16*q2*u1*s4i*sp-8*t1*sp+8*u1*s4i*spp2-8*u1*sp )
c s3å-1*u6å-2 term
      Q(18) = ZZ(2) * (
     #    32*m22*t1*u1i1*sp+32*m22*u1i1*spp2+16*m2*q2*tp2*u1i1
     #    +16*m2*q2*t1*u1i1*sp-16*m2*t1*sp )
c s3å-2*u6å-2 term
      Q(19) = ZZ(3) * ( -32*m22*sp )
c s3å-1*u7å-1 term
      Q(20) = ZZ(5) * (
     #    -32*m22*t1*u1i1*s4i*sp+32*m22*t1*u1i1+32*m22*t1*
     #    s4i-32*m22*t1i1*up2*s4i-32*m22*t1i1*u1*s4i*sp+32*
     #    m22*t1i1*u1-64*m22*t1i1*sp-32*m22+16*m2*q2*tp2*u1i1*
     #    s4i-16*m2*q2*tp2*u1i1*spi+16*m2*q2*t1*u1i1*s4i*sp-32*
     #    m2*q2*t1*u1i1-8*m2*q2*t1*s4i+16*m2*q2*t1i1*up2*s4i+16*m2
     #    *q2*t1i1*u1*s4i*sp-16*m2*q2*t1i1*u1-8*m2*q2*u1*s4i-16*m2*
     #    q2*u1i1*s4i*spp2+16*m2*q2*u1i1*sp-24*m2*q2*s4i*sp+56*m2*
     #    q2-24*m2*tp3*u1i1*s4i-24*m2*tp2*u1i1*s4i*sp+24*m2*tp2*
     #    u1i1+8*m2*tp2*s4i+56*m2*t1*u1*s4i+40*m2*t1*s4i*sp-16*
     #    m2*t1+16*m2*t1i1*up2*s4i*sp+16*m2*t1i1*u1*s4i*spp2-16*m2
     #    *t1i1*u1*sp+24*m2*up2*s4i+48*m2*u1*s4i*sp-24*m2*u1-16*
     #    m2*u1i1*s4i*spp3+16*m2*u1i1*spp2+8*m2*s4i*spp2-24*m2*sp
     #    -8*q22*tp2*u1i1*s4i+8*q22*tp2*u1i1*spi-8*q22*t1*
     #    u1i1*s4i*sp+8*q22*t1*u1i1-8*q2*tp2*u1i1*s4i*sp+16*q2*
     #    tp2*u1i1-8*q2*tp2*s4i-16*q2*t1*u1*s4i+8*q2*t1*u1i1*sp
     #    -8*q2*up2*s4i-8*q2*u1*s4i*sp+8*q2*u1+8*q2*u1i1*s4i*
     #    spp3-8*q2*u1i1*spp2+8*q2*s4i*spp2+8*tp2*u1i1*sp-8*tp2*
     #    s4i*sp-16*t1*u1*s4i*sp+8*t1*u1i1*s4i*spp3-8*up2*s4i*
     #    sp-8*u1*s4i*spp2+8*u1*sp+8*u1i1*s4i*spp4-8*u1i1*spp3+
     #    8*s4i*spp3 )
c s3å-1*u7å-2 term
      Q(21) = ZZ(6) * ( 32*m22*sp )
c s3å-2*u7å-1 term
      Q(22) = ZZ(7) * ( -32*m22*sp )
c u6å-1*u7å-1 term
      Q(23) = UU(1) * (
     #    32*m22*t1*u1i1+32*m22*t1i1*u1i1*spp2+64*m22*u1i1*sp
     #    +16*m2*q2*tp2*u1i1*spi+16*m2*q2*t1*u1i1-16*m2*q2*t1i1*
     #    u1i1*spp2-16*m2*q2*u1i1*sp-16*m2*t1+16*m2*t1i1*u1i1*spp3+
     #    16*m2*t1i1*spp2+16*m2*u1i1*spp2-8*q22*tp2*u1i1*spi-16*
     #    q22*t1*u1i1-8*q22*u1i1*sp+16*q2*tp2*u1i1+32*q2*t1*u1i1*
     #    sp+16*q2*t1+16*q2*u1i1*spp2+16*q2*sp-8*tp2*u1i1*sp-16*t1
     #    *u1i1*spp2-16*t1*sp-8*u1*sp-8*u1i1*spp3-16*spp2 )
c terms independent of the angle
      Q24A = RR(0) * (
     #  -40.d0
     #   -32*m22*tp2*u1i2*s4i2
     #   -32*m22*t1*u1i1*s4i2
     #    -32*m22*t1*u1i2*s4i2*sp
     #    +32*m22*t1i1*u1*s4i2
     #    -32*m22*t1i1*s4i-32*
     #    m22*u1i1*s4i-32*m22*u1i1*s4i2*sp+32*m22*s4i2+16*m2*q2*
     #    t1*u1i1*s4i2+16*m2*q2*t1i1*s4i+32*m2*q2*u1i1*s4i+16*m2*
     #    q2*u1i1*s4i2*sp-16*m2*q2*s4i2-32*m2*tp2*u1i2*s4i-48*m2*
     #    t1*u1i1*s4i+16*m2*t1*u1i1*s4i2*sp-32*m2*t1*u1i2*s4i*sp)
      Q24B = RR(0) * (
     #    16*m2*t1*s4i2+24*m2*t1i1*u1*s4i+16*m2*t1i1*u1i1*sp+8*m2*
     #    t1i1*s4i*sp-24*m2*t1i1+16*m2*t1i2*up2*s4i-16*m2*t1i2*
     #    u1+16*m2*t1i2*sp+16*m2*u1*s4i2-24*m2*u1i1*s4i*sp+16*m2*
     #    u1i1*s4i2*spp2+16*m2*u1i1+56*m2*s4i-8*q22*t1i1*s4i)
      Q24C = RR(0) * (
     #    -8*q2*t1*u1i1*s4i-8*q2*t1i1*u1*s4i-8*q2*t1i1*u1i1*sp-16*
     #    q2*t1i1*s4i*sp+24*q2*t1i1-8*q2*u1i1-16*q2*s4i-8*tp2*
     #    u1i2-16*t1*u1i1*s4i*sp-8*t1*u1i2*sp+24*t1*s4i+24*t1i1
     #    *up2*s4i+8*t1i1*u1*s4i*sp-32*t1i1*u1+8*t1i1*u1i1*spp2
     #    -8*t1i1*s4i*spp2+24*t1i1*sp+48*u1*s4i-8*u1i1*s4i*
     #    spp2+16*u1i1*sp-8*s4i*sp )
      Q(24) = Q24A + Q24B + Q24C
      EGCFCF_L = 0.0D0
      DO 10 I = 1,24
      EGCFCF_L = EGCFCF_L + Q(I)
 10   CONTINUE
C IN THE FORM PROGRAMS WE HAVEN'T DIVIDED BY ANYTHING YET
C SO DIVIDE HERE BY 16 (TWO GL. POL. MINUSSES CANCEL!)
      RQEDL = EGCFCF_L/16.D0
      RETURN
      END


