      PROGRAM EQC
cstr  Vollstaendig korrekte Version GRV(HO)
c  HO heavy quark electroproduction
c  This is the quark-channel
c  HO GRV parton distributions with HO alphas (nf=3)
c
C PROGRAM FOR PARTONIC RESULTS OF `COMPLETE O(ALFA_S) CORRECTIONS
C TO HEAVY FLAVOUR STRUCTURE FUNCTIONS IN ELECTROPRODUCTION',
C BY E.LAENEN, S.RIEMERSMA, J.SMITH AND W.L.VAN NEERVEN,
C ITP-SB-92-09, TO APPEAR IN NUCLEAR PHYSICS B.
C
C*****************************************************************
C
C
C      PHOTON + LIGHT QUARK   ---> Q + Q_BAR ( + LIGHT QUARK)
C
C                    AT THE PARTON LEVEL
C
C ---------------------------------------------------------------
C THE FLAG `ICOEF' ALLOWS TO CHOOSE THE VARIOUS COEFFICIENTS:
C
C  ICOEF = 0: COMPUTES C'S/D'S IN MSBAR SCHEME
C  ICOEF = 1: COMPUTES CBAR'S/DBAR_T
C
C THE FLAG `ICD' CHOOSES BETWEEN THE C'S AND THE D'S.
C*********************************************************************
C
      IMPLICIT DOUBLE PRECISION (A-Z)
      INTEGER ITS,PTS,NBORN,NCORR,NPOS,NSCALE,NALFAS
      INTEGER NEXCT,ISF,IOPTION,ICOEF,ICD
      INTEGER COUNT1,COUNT2,count3,count4
C
      PARAMETER( PI = 3.14159265359D0 )
C
      EXTERNAL FG
      EXTERNAL FL
C
      COMMON/PARAM/S,MQ,S4MIN,S4MAX,DEL,SRS,SP,QF2
      COMMON/CNSTS1/CBORN0,CBORNK,CBORNQ,CSV,CSVL
      COMMON/CNSTS2/CRF1,CRF2,CRF3,CRR1,CRR2G,CRR2L
      COMMON/CBORN/CALFAS,NBORN,NCORR,NPOS,NALFAS,NSCALE
      COMMON/CAPRX/NEXCT
      COMMON/QCDPAR/Q2,QCDL,QCDL2,NF,EH,EL
      COMMON/FLAGS/ICOEF
      COMMON/RESULT/S1,S2,S3,S4
      COMMON/CORD/ICD
      COMMON/FALTPAR/XBJ,ZMAX,MASS2
C
      OPEN(UNIT=11, FILE= 'eqc.dat', STATUS= 'OLD')
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
      READ (11,*) NCORR
      READ (11,*) NEXCT
      READ (11,*) NPOS
      READ (11,*) ISF
      READ (11,*) NALFAS
      READ (11,*) NSCALE
      READ (11,*) QCDL
      READ (11,*) QCDL2
      READ (11,*) EH
      READ (11,*) EL
      READ (11,*) ICD
C
C PRINT HEADER
C
      PRINT '(''0 *** PROGRAM EQC '')'
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
      PRINT '(''0 G**6 CONTRIBUTIONS INCLUDED (1)  = '',I2)',NCORR
      PRINT '(''0 EXACT(1)MS(2)DIS                 = '',I2)',NEXCT
      PRINT '(''0 NEGATIVE, POSITIVE OR ALL (=0)   = '',I2)',NPOS
      PRINT '(''0 CROSS SECT(=0), STRUCT FN(=1),BOTH(=2)   = '',I2)',ISF
      PRINT '(''0 (0)CONST,(1)1-LOOP,(2)2-LOOP ALFA = '',I2)',NALFAS
      PRINT '(''0 Q=M/2(0),M(1),2M(2),M2*E(3),M(4),2M(ELSE)= '',
     &                                                      I2)',NSCALE
      PRINT '(''0 1-LOOP LAMBDA(QCD)               = '',D20.7)',QCDL
      PRINT '(''0 2-LOOP LAMBDA(QCD)               = '',D20.7)',QCDL2
      PRINT '(''0 HEAVY QUARK CHARGE               = '',D20.7)',EH
      PRINT '(''0 LIGHT QUARK CHARGE               = '',D20.7)',EL
      PRINT '(''0 C(EH2-0) OR D(EL2-1)COEFFICIENT  = '',I2)',ICD
C
       OPEN (UNIT=12, FILE='eqc.plo', STATUS='OLD')
       REWIND 12
       OPEN (UNIT=13,FILE='conv_qu.dat')
       REWIND 13
C
       NORM = 19.733D0*19.733D0
       CGQ0 = 0.D0
       CLQ0 = 0.D0
       CTG0 = 0.D0
       DGQ0 = 0.D0
       DLQ0 = 0.D0
       DTG0 = 0.D0
       CGQ1 = 0.D0
       CLQ1 = 0.D0
       CTG1 = 0.D0
       DGQ1 = 0.D0
       DLQ1 = 0.D0
       DTG1 = 0.D0
       ctq=0.d0
       dtq=0.d0
       F1 = 0.D0
       F2 = 0.D0
       FLONG = 0.D0
       EH2 = EH*EH
       EL2 = EL*EL
       M2 = MQ*MQ
       THRESH = 4.D0*M2
C
       ALFAE = 1.0D0/137.0D0
C
C  HERE STARTS THE DO LOOP
C
c      do 3000 count3=0,2,1
c      mq=1.3d0+count3*0.2d0
       mq=1.5d0
       m2=mq*mq
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
       qf2=-15.d0
       mass2=4.d0*m2
       endif
       DO 1000 COUNT1=0,2
       DO 2000 COUNT2=1,9,2
c      mass2=4.d0*m2
       xbj=count2*10.d0**(-4+count1)
       if(xbj.ge.0.02d0) then
       goto 2000
       endif
       asscale=mass2
       if(mass2.gt.20.d0) then
       NF=5.d0
       QCDL2=0.131d0
       else
       NF=4.d0
       QCDL2=0.2d0
       endif
       write(*,*) ' q2 = ',qf2
       write(*,*) ' x = ',xbj
       write(*,*) 'scale = ', mass2,asscale
       write(*,*) 'nf / lam = ', nf,qcdl2
       ZMAX=XBJ*(4.D0*M2-QF2)/QF2/(-1.D0)     
C
C      CALCULATION OF FLq(1) VIA MONTE CARLO INTEGRATION
        AS = 12.D0*PI/( (33.D0-2.D0*NF)*LOG(ASSCALE/QCDL2**2))*
     &     ( 1.D0 - 6.D0*(153.D0-19.D0*NF)/(33.D0-2.D0*NF)**2
     &           *LOG(LOG(ASSCALE/QCDL2**2))
     &           /LOG(ASSCALE/QCDL2**2)               )
C
C      C-PART
C
       ICOEF=0
       ICD=0
       s1=0.d0
       CALL VEGAS(FL,1D-6,3,PTS,ITS,0,0)
       sl=s1
       call vegas(fg,1d-6,3,pts,its,0,0)
       sg=S1
       CLQ1=M2*SL/4.D0/PI/CALFAS**2/ALFAE/NORM/EH2
       cgq1=m2*sg/4.d0/pi/calfas**2/alfae/norm/eh2
       ctq1=cgq1+clq1/2.d0
       ctq=AS**2*(-1.D0)*QF2/M2/PI*ctq1
       clq=as**2*(-1.d0)*qf2/m2/pi*clq1
C
C      CBAR-PART
C
       ICOEF=1
       ICD=0
       s1=0.d0
       CALL VEGAS(FL,1D-6,3,PTS,ITS,0,0)
       SL=S1
       s1=0.d0
       call vegas(fg,1d-6,3,pts,its,0,0)
       sg=s1
       s1=0.d0
       CLQ1=M2*SL/4.D0/PI/CALFAS**2/ALFAE/NORM/EH2
       cgq1=m2*sg/4.d0/pi/calfas**2/alfae/norm/eh2
       ctq1=cgq1+clq1/2.d0
       ctq=ctq+AS**2*(-1.D0)*QF2/M2/PI*LOG(MASS2/M2)*ctq1
       clq=clq+as**2*(-1.d0)*qf2/m2/pi*log(mass2/m2)*clq1
C
C      D-PART
C
       ICOEF=0
       ICD=1
       CALL VEGAS(FL,1D-6,3,PTS,ITS,0,0)
       SL=S1
       s1=0.d0
       call vegas(fg,1d-6,3,pts,its,0,0)
       sg=s1
       s1=0.d0
       DLQ1=M2*SL/4.D0/PI/CALFAS**2/ALFAE/NORM/EL2
       dgq1=m2*sg/4.d0/pi/calfas**2/alfae/norm/el2
       dtq1=dgq1+dlq1/2.d0
       dtq=AS**2*(-1.D0)*QF2/M2/PI*dtq1
       dlq=as**2*(-1.d0)*qf2/m2/pi*dlq1
C
       helpt=ctq+dtq
       helpl=clq+dlq
       WRITE(6,1111) (-1.d0)*qf2,XBJ,mass2,helpl,helpt,helpl+helpt
       WRITE(13,*) (-1.d0)*qf2,XBJ,mass2,helpl,helpt,helpl+helpt
1111   format(6f14.7)
C
2000   CONTINUE
1000   CONTINUE
4000  continue
3000  continue
      STOP
      END
C
C*******************************************************
        DOUBLE PRECISION FUNCTION FG(X)
C
C       CONVOLUTION IMPLEMENTED
C
        IMPLICIT DOUBLE PRECISION (A-Z)
        INTEGER I,NBORN,NCORR,NPOS,NALFAS,NSCALE
        INTEGER ICD
        real grvx,grvs,udv,dv,gl,udb,sb,cb,bb
        DIMENSION X(10)
C
        PARAMETER( PI = 3.14159265359D0 )
C
        COMMON/CNSTS1/CBORN0,CBORNK,CBORNQ,CSV,CSVL
        COMMON/CNSTS2/CRF1,CRF2,CRF3,CRR1,CRR2G,CRR2L
        COMMON/QCDPAR/Q2,QCDL,QCDL2,NF,EH,EL
C
        COMMON/PARAM/S,MQ,S4MIN,S4MAX,DEL,SRS,SP,QF2
        COMMON/LPLOT/XL(25),V1(10),V2(10),AV(10)
        COMMON/QPLOT/EQQ,BETAQQ,COSQQ,ANGQQ,ETAQQ,PQQ
        COMMON/QPLOTS/PTQQ,ETQQ2
        COMMON/CBORN/CALFAS,NBORN,NCORR,NPOS,NALFAS,NSCALE
        COMMON/FALTPAR/XBJ,ZMAX,MASS2
        COMMON/CORD/ICD
C
C CALCULATE M2
        M2 = MQ**2
        THRESH = 4.0D0*M2
C
        Z=zmax+(1.d0-zmax)*x(3)
        zintv=1.d0-zmax
        zf=xbj/z
        ETA=(1.D0-ZF)/ZF*(-1.D0)*QF2/4.D0/M2-1.D0
C
c       s=4.d0*m2*(1.d0+eta)
        S=-1.D0*QF2*(1.D0/ZF-1.D0)
c
        SP=S-QF2
        SRS=DSQRT(S)
C
C       CALCULATE PARTON DISTRIBUTIONS
C
        grvx=sngl(z)
        grvs=sngl(mass2)
        call grvho(grvx,grvs,udv,dv,gl,udb,sb,cb,bb)
        uv=dble(udv-dv)
        dv=dble(dv)
        ubar=dble(udb)
        sbar=dble(sb)
        IF(ICD.EQ.0) THEN
        PARTON=4.D0*(UV+DV+4.D0*UBAR+2.d0*sbar)/9.D0/Z
        ENDIF
        IF(ICD.EQ.1) THEN  
        PARTON=(4.D0*(UV+2.D0*UBAR)+DV+2.D0*UBAR+2.d0*sbar)/9.D0/Z
        ENDIF
C
        IF ( S.LE.THRESH) GOTO 50
C        PRINT '(''0    M2      = '',D20.7)', M2
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
c     QCDL2 = 0.173D0
C
      IF    (NALFAS.EQ.0) THEN
        ALFAS = CALFAS
      ELSEIF(NALFAS.EQ.1) THEN
        ALFAS = 12.D0*PI/( (33.D0-2.D0*NF)*LOG(QQ2/QCDL**2) )
      ELSE
        ALFAS = 12.D0*PI/( (33.D0-2.D0*NF)*LOG(QQ2/QCDL2**2) )
     &           *( 1.D0 - 6.D0*(153.D0-19.D0*NF)/(33.D0-2.D0*NF)**2
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
        KFQ = 1.0D0/NCAP
        EH2 = EH*EH
        EL2 = EL*EL
C
C DEFINE SEP = 1/(4PI)å2
C
        SEP = 1.0D0/(16.0D0*PI*PI)
C
C CONVERSION FACTOR FROM GEVå-2 TO UNITS OF 10å-30 CMå2
C
        NORM = 19.733*19.733
C
C IN THE PAPER, WE DEFINE SP**2 TIMES THE DIFFERENTIAL CROSS
C SECTION SO DIVIDE THE NORMALIZATION FACTOR BY SP**2.
C
        FACTOR = NORM/SP/SP
C
C DEFINE ALL THE COUPLING CONSTANTS
C
        C0 = NCAP*(NCAP2-1.0D0)
        CBORN0  = 0.5D0*PI*SEP*GAL4*FACTOR*C0*NCAPM2
        CK = (NCAP2-1.0D0)/NCAP
        CBORNK  = 0.5D0*PI*SEP*GAL4*FACTOR*CK*NCAPM2
        CQED = 0.0D0
        CBORNQ  = 0.5D0*PI*SEP*GAL4*FACTOR*CQED*NCAPM2
C
C HERE ARE THE CONSTANTS FOR THE APPROXIMATION
C   HIGHER ORDER FACTORS
C    F + Q -> Q + QBAR +QQ
         CF = (NCAP2-1.0D0)/NCAP/2.0D0
         CRR0 = KFQ*NCAP*CF*ALFAE*ALFAS2*FACTOR
         CRR1 = CRR0*EH2/2.0D0
         CRF1 = CRR0*EH2/PI/4.0D0
         CRR2G = -CRR0*EL2/2.0D0
         CRF2 = CRR0*EL2/PI/4.0D0
         CRF3 = CRR0*EH*EL/PI/4.0D0
         CSV = CRR0*EH2/2.0D0
C
C  CALCULATE COSINE
        JACOB1 = 2.0D0
        COSINE = -1.0D0 + JACOB1 * X(1)
C
C APPLY A MAPPING FOR SMALL S4
        S4MAX=SRS*(SRS - 2.0D0*MQ)
        S4MIN = DEL
      IF(S4MAX.LE.S4MIN) GOTO 50
        JACOBD = S4MAX - S4MIN
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
        U1 = QF2 - (S+QF2)*SA/2.0D0/S - JACOB3 * COSINE
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
C
        FH   = 0.D0
        FSV = 0.D0
        IF (NCORR.NE.0) THEN
          FH   = MAEQH(SP,T1,U1,M2,QF2,MU)*JACOB1*JACOB2*JACOB3
          FSV  =  MAEQSV(SP,TE1,UE1,M2,QF2,MU,DEL
     &  ,S4MAX,S4,XAMIN,XA,SS1,TT1,UU1)*JACOB1*JACOB2*JACOB4
           FSV  = FSV/JACOBD
          ENDIF
C
        FG = (FH + FSV)*PARTON*zintv
C
C        IF(NPOS.LT.0 .AND. F.GT.0.D0) GOTO 55
C        IF(NPOS.GT.0 .AND. F.LT.0.D0) GOTO 55
C
C COMPUTE VARIABLES TO BE GRAPHED
C
       XL(1) = x(1)
       XL(2) = x(2)
C       XL(3) = S4
C       XL(4) = S4
C       XL(5) = X(1)
C       XL(6) = X(2)
C
        RETURN
C
C BRANCH HERE IF ANY VARIABLE IS OUT OF RANGE
C
50      DO 60 I=1,10
60        XL(I)=-100.
        DO 70 I=1,2
          V1(I)=-100.
          V2(I)=-100.
70        AV(I)=-100.
        FG=0.
        RETURN
C
55      DO 66 I=1,10
66        XL(I)=+1.D20
        DO 77 I=1,2
          V1(I)=+1.D20
          V2(I)=+1.D20
77        AV(I)=+1.D20
        FG=0.
C
        RETURN
        END
C
C***********************************************************************
C
        DOUBLE PRECISION FUNCTION FL(X)
C
C       CONVOLUTION IMPLEMENTED
C
        IMPLICIT DOUBLE PRECISION (A-Z)
        INTEGER I,NBORN,NCORR,NPOS,NALFAS,NSCALE
        INTEGER ICD
        real grvx,grvs,udv,dv,gl,udb,sb,cb,bb
        DIMENSION X(10)
C
        PARAMETER( PI = 3.14159265359D0 )
C
        COMMON/CNSTS1/CBORN0,CBORNK,CBORNQ,CSV,CSVL
        COMMON/CNSTS2/CRF1,CRF2,CRF3,CRR1,CRR2G,CRR2L
        COMMON/QCDPAR/Q2,QCDL,QCDL2,NF,EH,EL
C
        COMMON/PARAM/S,MQ,S4MIN,S4MAX,DEL,SRS,SP,QF2
        COMMON/LPLOT/XL(25),V1(10),V2(10),AV(10)
        COMMON/QPLOT/EQQ,BETAQQ,COSQQ,ANGQQ,ETAQQ,PQQ
        COMMON/QPLOTS/PTQQ,ETQQ2
        COMMON/CBORN/CALFAS,NBORN,NCORR,NPOS,NALFAS,NSCALE
        COMMON/CORD/ICD
        COMMON/FALTPAR/XBJ,ZMAX,MASS2
C
C CALCULATE M2
        M2 = MQ**2
        THRESH = 4.0D0*M2
C
C
        Z=ZMAX+(1.D0-ZMAX)*X(3)
        zintv=1.d0-zmax
C
        ZF=XBJ/Z
        ETA=(1.D0-ZF)/ZF*(-1.D0)*QF2/4.D0/M2-1.D0
C
c       s=4.d0*m2*(1.d0+eta)
        S=-1.D0*QF2*(1.D0/ZF-1.D0)
c
        SP=S-QF2
        SRS=DSQRT(S)
C
C       CALCULATE PARTON DISTRIBUTIONS
C
        grvx=sngl(z)
        grvs=sngl(mass2)
        call grvho(grvx,grvs,udv,dv,gl,udb,sb,cb,bb)
        uv=dble(udv-dv)
        dv=dble(dv)
        ubar=dble(udb)
        sbar=dble(sb)
        IF(ICD.EQ.0) THEN
        PARTON=4.D0*(UV+DV+4.D0*UBAR+2.d0*sbar)/9.D0/Z
        ENDIF
        IF(ICD.EQ.1) THEN  
        PARTON=(4.D0*(UV+2.D0*UBAR)+DV+2.D0*UBAR+2.d0*sbar)/9.D0/Z
        ENDIF
C
        IF ( S.LE.THRESH) GOTO 50
C        PRINT '(''0    M2      = '',D20.7)', M2
C
C CALCULATE RUNNING COUPLING ALPHA_S
        QQ2 = M2
C
C  SCALE FOR THE COUPLING
        Q2    = QQ2
C
        ALFAS = CALFAS
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
        KFQ = 1.0D0/NCAP
        EH2 = EH*EH
        EL2 = EL*EL
C
C DEFINE SEP = 1/(4PI)å2
C
        SEP = 1.0D0/(16.0D0*PI*PI)
C
C CONVERSION FACTOR FROM GEVå-2 TO UNITS OF 10å-30 CMå2
C
        NORM = 19.733d0*19.733d0
C
C IN THE PAPER, WE DEFINE S**2 TIMES THE DIFFERENTIAL CROSS
C SECTION SO DIVIDE THE NORMALIZATION FACTOR BY S**2.
C
        FACTOR = NORM/SP/SP
C
C DEFINE ALL THE COUPLING CONSTANTS
C
        C0 = NCAP*(NCAP2-1.0D0)
        CBORN0  = 0.5D0*PI*SEP*GAL4*FACTOR*C0*NCAPM2
        CK = (NCAP2-1.0D0)/NCAP
        CBORNK  = 0.5D0*PI*SEP*GAL4*FACTOR*CK*NCAPM2
        CQED = 0.0D0
        CBORNQ  = 0.5D0*PI*SEP*GAL4*FACTOR*CQED*NCAPM2
C
C HERE ARE THE CONSTANTS FOR THE APPROXIMATION
C   HIGHER ORDER FACTORS
C    F + Q -> Q + QBAR +QQ
         CF = (NCAP2-1.0D0)/NCAP/2.0D0
         CRR0 = KFQ*NCAP*CF*ALFAE*ALFAS2*FACTOR
         CRR1 = CRR0*EH2/2.0D0
         CRF1 = CRR0*EH2/PI/4.0D0
         CRR2L = 2.0D0*CRR0*EL2
         CRF2 = CRR0*EL2/PI/4.0D0
         CRF3 = CRR0*EH*EL/PI/4.0D0
         CSVL = CRR0*EH2/2.0D0
C
C  CALCULATE COSINE
        JACOB1 = 2.0D0
        COSINE = -1.0D0 + JACOB1 * X(1)
C
C APPLY A MAPPING FOR SMALL S4
        S4MAX=SRS*(SRS - 2.0D0*MQ)
        S4MIN = DEL
      IF(S4MAX.LE.S4MIN) GOTO 50
        JACOBD = S4MAX - S4MIN
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
        U1 = QF2 - (S+QF2)*SA/2.0D0/S - JACOB3 * COSINE
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
C
        FH   = 0.D0
        FSV  = 0.D0
        IF (NCORR.NE.0) THEN
          FH   = MAEQH_L(SP,T1,U1,M2,QF2,MU)*JACOB1*JACOB2*JACOB3
        ENDIF
           FSV  =  MAEQSV_L(SP,TE1,UE1,M2,QF2,MU,DEL
     &  ,S4MAX,S4,XAMIN,XA,SS1,TT1,UU1)*JACOB1*JACOB2*JACOB4
           FSV  = FSV/JACOBD

        FL = (FH + FSV)*PARTON*zintv
C
C        IF(NPOS.LT.0 .AND. F.GT.0.D0) GOTO 55
C        IF(NPOS.GT.0 .AND. F.LT.0.D0) GOTO 55
C
C COMPUTE VARIABLES TO BE GRAPHED
C
        XL(1) = COSINE
        XL(2) = COSINE
C       XL(3) = S4
C       XL(4) = S4
C       XL(5) = X(1)
C       XL(6) = X(2)
C
        RETURN
C
C BRANCH HERE IF ANY VARIABLE IS OUT OF RANGE
C
50      DO 60 I=1,10
60        XL(I)=-100.
        DO 70 I=1,2
          V1(I)=-100.
          V2(I)=-100.
70        AV(I)=-100.
        FL=0.
        RETURN
C
55      DO 66 I=1,10
66        XL(I)=+1.D20
        DO 77 I=1,2
          V1(I)=+1.D20
          V2(I)=+1.D20
77        AV(I)=+1.D20
        FL=0.
C
        RETURN
        END
C
C
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                 *
*    G R V  -  P R O T O N  - P A R A M E T R I Z A T I O N S     *
*                                                                 *
*   HO DISTRIBUTION REFER TO THE MS-BAR SCHEME OF BARDEEN ET AL.  *
*                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
C
       SUBROUTINE GRVLO (X, Q2, UDV, DV, GL, UDB, SB, CB, BB)
       IMPLICIT REAL (A - Z)
       MU2  = 0.25
       LAM2 = 0.232 * 0.232
       S  = ALOG (ALOG(Q2/LAM2) / ALOG(MU2/LAM2))
       S2 = S * S
       S3 = S2 * S
C...X * (UV + DV) :
       NUD  = 0.663 + 0.191 * S - 0.041 * S2 + 0.031 * S3
       AKUD = 0.326
       AGUD = -1.97 +  6.74 * S -  1.96 * S2
       BUD  =  24.4 -  20.7 * S +  4.08 * S2
       DUD  =  2.86 +  0.70 * S -  0.02 * S2
       UDV  = FV (X, NUD, AKUD, AGUD, BUD, DUD)
C...X * DV :
       ND  = 0.579 + 0.283 * S + 0.047 * S2
       AKD = 0.523 - 0.015 * S
       AGD =  2.22 -  0.59 * S -  0.27 * S2
       BD  =  5.95 -  6.19 * S +  1.55 * S2
       DD  =  3.57 +  0.94 * S -  0.16 * S2
       DV  = FV (X, ND, AKD, AGD, BD, DD)
C...X * G :
       ALG =  0.558
       BEG =  1.218
       AKG =   1.00 -  0.17 * S
       BKG =   0.0
       AGG =   0.0  + 4.879 * S - 1.383 * S2
       BGG =  25.92 - 28.97 * S + 5.596 * S2
       CG  = -25.69 + 23.68 * S - 1.975 * S2
       DG  =  2.537 + 1.718 * S + 0.353 * S2
       EG  =  0.595 + 2.138 * S
       ESG =  4.066
       GL  = FW (X, S, ALG, BEG, AKG, BKG, AGG, BGG, CG, DG, EG, ESG)
C...X * UBAR = X * DBAR :
       ALU =  1.396
       BEU =  1.331
       AKU =  0.412 - 0.171 * S
       BKU =  0.566 - 0.496 * S
       AGU =  0.363
       BGU = -1.196
       CU  =  1.029 + 1.785 * S - 0.459 * S2
       DU  =  4.696 + 2.109 * S
       EU  =  3.838 + 1.944 * S
       ESU =  2.845
       UDB = FW (X, S, ALU, BEU, AKU, BKU, AGU, BGU, CU, DU, EU, ESU)
C...X * SBAR = X * S :
       SS  =   0.0
       ALS =  0.803
       BES =  0.563
       AKS =  2.082 - 0.577 * S
       AGS = -3.055 + 1.024 * S **  0.67
       BS  =   27.4 -  20.0 * S ** 0.154
       DS  =   6.22
       EST =   4.33 + 1.408 * S
       ESS =   8.27 - 0.437 * S
       SB  = FWS (X, S, SS, ALS, BES, AKS, AGS, BS, DS, EST, ESS)
C...X * CBAR = X * C :
       SC  =  0.888
       ALC =   1.01
       BEC =   0.37
       AKC =   0.0
       AGC =   0.0
       BC  =   4.24 - 0.804 * S
       DC  =   3.46 + 1.076 * S
       EC  =   4.61 + 1.490 * S
       ESC =  2.555 + 1.961 * S
       CB  = FWS (X, S, SC, ALC, BEC, AKC, AGC, BC, DC, EC, ESC)
C...X * BBAR = X * B :
       SBO =  1.351
       ALB =   1.00
       BEB =   0.51
       AKB =   0.0
       AGB =   0.0
       BBO =  1.848
       DB  =  2.929 + 1.396 * S
       EB  =   4.71 + 1.514 * S
       ESB =   4.02 + 1.239 * S
       BB  = FWS (X, S, SBO, ALB, BEB, AKB, AGB, BBO, DB, EB, ESB)
       RETURN
       END
C
       SUBROUTINE GRVHO (X, Q2, UDV, DV, GL, UDB, SB, CB, BB)
       IMPLICIT REAL (A - Z)
       MU2  = 0.3
       LAM2 = 0.248 * 0.248
       S  = ALOG (ALOG(Q2/LAM2) / ALOG(MU2/LAM2))
       DS = SQRT (S)
       S2 = S * S
       S3 = S2 * S
C...X * (UV + DV) :
       NUD  = 0.330 + 0.151 * S - 0.059 * S2 + 0.027 * S3
       AKUD = 0.285
       AGUD = -2.28 + 15.73 * S -  4.58 * S2
       BUD  =  56.7 -  53.6 * S + 11.21 * S2
       DUD  =  3.17 +  1.17 * S -  0.47 * S2 +  0.09 * S3
       UDV  = FV (X, NUD, AKUD, AGUD, BUD, DUD)
C...X * DV :
       ND  = 0.459 + 0.315 * DS + 0.515 * S
       AKD = 0.624              - 0.031 * S
       AGD =  8.13 -  6.77 * DS +  0.46 * S
       BD  =  6.59 - 12.83 * DS +  5.65 * S
       DD  =  3.98              +  1.04 * S  -  0.34 * S2
       DV  = FV (X, ND, AKD, AGD, BD, DD)
C...X * G :
       ALG =  1.128
       BEG =  1.575
       AKG =  0.323 + 1.653 * S
       BKG =  0.811 + 2.044 * S
       AGG =   0.0  + 1.963 * S - 0.519 * S2
       BGG =  0.078 +  6.24 * S
       CG  =  30.77 - 24.19 * S
       DG  =  3.188 + 0.720 * S
       EG  = -0.881 + 2.687 * S
       ESG =  2.466
       GL  = FW (X, S, ALG, BEG, AKG, BKG, AGG, BGG, CG, DG, EG, ESG)
C...X * UBAR = X * DBAR :
       ALU =  0.594
       BEU =  0.614
       AKU =  0.636 - 0.084 * S
       BKU =   0.0
       AGU =  1.121 - 0.193 * S
       BGU =  0.751 - 0.785 * S
       CU  =   8.57 - 1.763 * S
       DU  =  10.22 + 0.668 * S
       EU  =  3.784 + 1.280 * S
       ESU =  1.808 + 0.980 * S
       UDB = FW (X, S, ALU, BEU, AKU, BKU, AGU, BGU, CU, DU, EU, ESU)
C...X * SBAR = X * S :
       SS  =   0.0
       ALS =  0.756
       BES =  0.101
       AKS =  2.942 - 1.016 * S
       AGS =  -4.60 + 1.167 * S
       BS  =   9.31 - 1.324 * S
       DS  =  11.49 - 1.198 * S + 0.053 * S2
       EST =  2.630 + 1.729 * S
       ESS =   8.12
       SB  = FWS (X, S, SS, ALS, BES, AKS, AGS, BS, DS, EST, ESS)
C...X * CBAR = X * C :
       SC  =  0.820
       ALC =   0.98
       BEC =   0.0
       AKC = -0.625 - 0.523 * S
       AGC =   0.0
       BC  =  1.896 + 1.616 * S
       DC  =   4.12 + 0.683 * S
       EC  =   4.36 + 1.328 * S
       ESC =  0.677 + 0.679 * S
       CB  = FWS (X, S, SC, ALC, BEC, AKC, AGC, BC, DC, EC, ESC)
C...X * BBAR = X * B :
       SBO =  1.297
       ALB =   0.99
       BEB =   0.0
       AKB =   0.0  - 0.193 * S
       AGB =   0.0
       BBO =   0.0
       DB  =  3.447 + 0.927 * S
       EB  =   4.68 + 1.259 * S
       ESB =  1.892 + 2.199 * S
       BB  = FWS (X, S, SBO, ALB, BEB, AKB, AGB, BBO, DB, EB, ESB)
       RETURN
       END
C
       FUNCTION FV (X, N, AK, AG, B, D)
       IMPLICIT REAL (A - Z)
       DX = SQRT (X)
       FV = N * X**AK * (1.+ AG*DX + B*X) * (1.- X)**D
       RETURN
       END
C
       FUNCTION FW (X, S, AL, BE, AK, BK, AG, BG, C, D, E, ES)
       IMPLICIT REAL (A - Z)
       LX = ALOG (1./X)
       FW = (X**AK * (AG + X * (BG + X*C)) * LX**BK + S**AL
     1      * EXP (-E + SQRT (ES * S**BE * LX))) * (1.- X)**D
       RETURN
       END
C
       FUNCTION FWS (X, S, ST, AL, BE, AK, AG, B, D, E, ES)
       IMPLICIT REAL (A - Z)
       DX = SQRT (X)
       LX = ALOG (1./X)
       IF (S .LE. ST) THEN
          FWS = 0.0
       ELSE
          FWS = (S-ST)**AL / LX**AK * (1.+ AG*DX + B*X) * (1.- X)**D
     1          * EXP (-E + SQRT (ES * S**BE * LX))
       END IF
       RETURN
       END
C
C***********************************************************************
C
       DOUBLE PRECISION FUNCTION CUTH( SP,T1,U1,M2,QF2 )
C FUNCTION TO DETERMINE WHETHER OR NOT THIS "EVENT" SHOULD BE CUT OR NOT
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
        MQ = DSQRT(M2)
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
999     CUTH = -1.0D0
        RETURN
        END
C
C***********************************************************************
C
      SUBROUTINE MAPS2(S2,X,SMIN,SMAX,DS)
C       IMPLICIT DOUBLE PRECISION (A-Z)
        DOUBLE PRECISION S2
        DOUBLE PRECISION X
        DOUBLE PRECISION SMIN
        DOUBLE PRECISION SMAX
        DOUBLE PRECISION DS
        DOUBLE PRECISION Y

       Y=SMAX/SMIN
       S2=SMIN*Y**X
       DS=S2*DLOG(Y)
       RETURN
       END
C
C***********************************************************************
C
      SUBROUTINE MAPS3(S2,X,SMIN,SMAX,DS)
C       IMPLICIT DOUBLE PRECISION (A-Z)
        DOUBLE PRECISION S2
        DOUBLE PRECISION X
        DOUBLE PRECISION SMIN
        DOUBLE PRECISION SMAX
        DOUBLE PRECISION DS
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
C       IMPLICIT DOUBLE PRECISION (A-Z)
        DOUBLE PRECISION S2
        DOUBLE PRECISION X
        DOUBLE PRECISION BB
        DOUBLE PRECISION SMAX
        DOUBLE PRECISION DS
        DOUBLE PRECISION CC

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
C       IMPLICIT DOUBLE PRECISION (A-Z)
        DOUBLE PRECISION S2
        DOUBLE PRECISION X
        DOUBLE PRECISION AA
        DOUBLE PRECISION SMIN
        DOUBLE PRECISION SMAX
        DOUBLE PRECISION DS
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
C
C  THE LISTING ALLEQ.F :
C  ALL THE SUBROUTINES FOR THE QUARK-PHOTON CHANNEL
C  IN THE ELECTROPRODUCTION (Q2 =/ 0) CASE.
C  (THE GAMMA-PIECE)
C *************************************************************
      DOUBLE PRECISION FUNCTION MAEQH( SP,T1,U1,M2,Q2,MU )
C *************************************************************
C ASSEMBLES THE HARD CONTRIBUTIONS
C

      IMPLICIT DOUBLE PRECISION(A-Z)
      INTEGER NBORN,NCORR,NALFAS,NSCALE
      INTEGER NEXCT,NPROCS,NMOMT,IFLAG,NPOS,ICD,ICOEF
      COMMON/CBORN/CALFAS,NBORN,NCORR,NPOS,NALFAS,NSCALE
      COMMON/CAPRX/NEXCT,NPROCS,NMOMT,IFLAG
      COMMON/CNSTS2/CRF1,CRF2,CRF3,CRR1,CRR2G,CRR2L
      COMMON/CORD/ICD
      COMMON/FLAGS/ICOEF
      PARAMETER( PI = 3.14159265359D0 )
C
         CALL RSTEGG( SP,T1,U1,M2,Q2 )
C USE THIS FOR CHECK AGAINST PHOTOPRODUCTION:
         S = SP + Q2
cel         CALL RSTNEW( S,T1,U1,M2 )
C
         S4 = SP + T1 + U1

         IF(ICOEF.EQ.1) GOTO 20

        IF(NEXCT.GE.0) THEN
        SUM1 = CRF1 * S4/(S4+M2)*A1G ( SP,T1,U1,M2,Q2 )
        SUM2 = CRF2 * S4/(S4+M2)*A2G ( SP,T1,U1,M2,Q2 )
c       SUM3 = CRF3 * S4/(S4+M2)*A3G ( SP,T1,U1,M2,Q2 )
        sum3=0.d0
        SUM4 = CRR1 * REQ1H( SP,T1,U1,M2,Q2 )
CEL HERE WE MASS FACTORIZE THE A2 TERM IN ORDER TO
CEL GET A CONSISTENT Q2 -> 0 LIMIT. WE ALSO DEFINE
CEL HERE THE R(-Q2) FUNCTION (SEE (5.10)) WHICH SUPPRESSES
CEL THE SUBTRACTION AT LARGE Q2.
        RQ2 = DEXP(Q2*10.0D0)
        SUM5 = -CRR2G * RQ2 * REQ2H( SP,T1,U1,M2,Q2,MU )
CEL THE MF TERMS PROP TO LN(MU*MU/M2) FROM THE A2 TERM
CEL (SEE (4.17))
c        RQ2 = 1.D0
c        SUM6 = CRR2G * RQ2 * REQ2HM( SP,T1,U1,M2,Q2,MU )
        IF(NSCALE.NE.1.AND.ICD.EQ.0)
     ^   SUM7 = CRR1*DLOG(M2/MU/MU)*REQ1HM(SP,T1,U1,M2,Q2)
C SPLIT APART TO GET THE TERM IN LOG(MU2/M2)
C        SUM7 = - CRR1 * REQ1HM( SP,T1,U1,M2,Q2 )
        ENDIF

        IF(ICD.EQ.0) SUM= SUM1 + SUM3 + SUM4
        IF(ICD.EQ.1) SUM= SUM2 + SUM3 + SUM5

        IF(NEXCT.EQ.2.AND.ICD.EQ.0)
     ^   SUM = SUM + CRR1 * REQ1HD( SP,T1,U1,M2,Q2)
        GOTO 30

 20     CONTINUE
        IF(ICD.EQ.0) SUM=- CRR1 * REQ1HM( SP,T1,U1,M2,Q2 )
        IF(ICD.EQ.1) SUM=  CRR2G * REQ2HM( SP,T1,U1,M2,Q2,MU )

 30     CONTINUE
        MAEQH = SUM
       RETURN
       END
C *************************************************************
      DOUBLE PRECISION FUNCTION MAEQSV(SP,T1,U1,M2,Q2,MU,DEL
     &  ,S4MAX,S4,XAMIN,XA,SS1,TT1,UU1)
C *************************************************************
C ASSEMBLES THE SOFT PLUS VIRTUAL CONTRIBUTIONS [EXIST
C ONLY IN DIS SCHEME]
      IMPLICIT DOUBLE PRECISION(A-Z)
      PARAMETER( PI = 3.14159265359D0 )
      INTEGER NEXCT,NPROCS,NMOMT,IFLAG,ICD
      COMMON/CAPRX/NEXCT,NPROCS,NMOMT,IFLAG
      COMMON/CNSTS1/CBORN0,CBORNK,CBORNQ,CSV,CSVL
      COMMON/CORD/ICD
C ---------------------------------------------------------
      SUM  = 0.0D0
      IF (NEXCT.EQ.2.AND.ICD.EQ.0) THEN
      SUM =   CSV* SVEQ ( SP,T1,U1,M2,Q2,DEL,S4MAX,S4,XAMIN,XA,
     &     SS1,TT1,UU1)
       ENDIF
C
       MAEQSV = SUM
       RETURN
       END
C *************************************************************
       DOUBLE PRECISION FUNCTION SVEQ (SP,T1,U1,M2,Q2,DEL,S4MAX,S4,
     &    XAMIN,XA,SS1,TT1,UU1)
C *************************************************************
C SOFT+VIRTUAL CONTRIBUTIONS [ONLY IN DIS SCHEME]
       IMPLICIT DOUBLE PRECISION (A-Z)
      INTEGER NEXCT,NPROCS,NMOMT,IFLAG
      COMMON/CAPRX/NEXCT,NPROCS,NMOMT,IFLAG
C
       DATA PI6/1.644934066848226D+00/
C
       S = SP + Q2
       SPT  = SP + T1
       T1M1 = 1.0D0/T1
       U1M1 = 1.0D0/U1
       TB   = T1M1*U1M1
       LOG1 = DLOG(M2/SPT)
       LOG12 = LOG1*LOG1
C
       ZETA2 = PI6
C WE CAN COMMENT OUT THESE TERMS SINCE THEY ARE ADDED BACK INTO
C THE HARD PIECE
C       LOGDEL = DLOG(DEL/M2)
C       LGDEL2 = LOGDEL*LOGDEL

       BRQED = T1*U1M1 + U1*T1M1 + 4.0D0*M2*SP*TB*(1.0D0-M2*SP*TB)
     #  + 2.D0*SP*Q2*TB + 2.D0*Q2*Q2*TB + 2.D0*M2*Q2*TB*(2.D0
     #  - SP*SP*TB)
C HERE WE REPLACE THE LOGDEL TERMS BY INTEGRALS OVER S4
         DIST = S4MAX - DEL
         L11 = DLOG(S4/M2)
         L12 = DLOG(S4MAX/M2)
         LOGDEL = L12 - DIST/S4
         LGDEL2 = L12*L12 -2.0D0*DIST*L11/S4
C
          SVEQ = ( LGDEL2
     1     + 2.0D0*LOGDEL*(LOG1 -3.0D0/4.0D0)
     1    +LOG12 - 3.0D0*LOG1/2.0D0
     1        -9.0D0/2.0D0 - 2.0D0*ZETA2)
     1    *BRQED
       RETURN
       END

C ***************************************************************
        DOUBLE PRECISION FUNCTION REQ1H(SP,T1,U1,M2,Q2)
C ***************************************************************
        IMPLICIT DOUBLE PRECISION (A-Z)
C IN THIS FUNCTION THE TERMS PROPORTIONAL TO LN(S4å2/M2/(S4+M2))
C ARE COMPUTED, TOGETHER WITH THE EPS/EPS TERMS.
C THE ONES PROPORTIONAL TO LN(M2/MU2) ARE COMPUTED
C IN THE SUBROUTINE "REQ1HM".
C
C COMPUTE
C
C THIS IS THE OFF-SHELL CASE
C FOR THE PROCES F(K1) + Q(K2) -> Q(K3) + Q + QB
C
C  DSIG(HARD)CFCF = 1/2 *K*N*CF*ALPHA*ALPHASå2*EHå2*
C        (LN Må2/MUå2 +  LN(S4å2/Må2(S_4+Må2))) (SP+T1)*U1å-2
C       *(SP+T1)å2 + S4å2)*(SP+T1)å-2
C       * BHQED
C
C       -(T1å2+(SP+T1)å2*(SP+T1)å-2*T1å-1
C       +(SP+T1)*U1å-2*((SP+T1)å2+S4å2)*(SP+T1)å-2
C        *(4Må2*SP*(1-Må2*SP/T1/U1)/T1/U1
C      +2*(SP+T1)*U1å-2*(S4å2+(SP+T1)å2)*(SP+T1)å-2
C     *(SP*Q2*U1å-1*T1å-1-Q2å2*(SP+T1)*T1å-1*U1å-2
C     -M2*Q2*((SP+T1)å2+T1å2)*U1å-2*T1å-2)
C
C NOTE THE COEFFICIENTS ARE DEFINED IN THE MAIN PROGRAM
C HERE WE RETAIN THE TERMS WHEN MUå2 = Må2
        S = SP + Q2
        S4 = SP + T1 + U1
        S42 = S4*S4
        TP2 = T1 * T1
        UP2 = U1 * U1
        SPT = SP + T1
        SPT2 = SPT * SPT
        S4PM2 = S4 + M2
        LN1 = DLOG(S4*S4/M2/S4PM2)
        BHGQED = -(SPT2 + TP2)/T1/SPT + 2*SP*Q2/T1/U1
     #   -2*Q2*Q2*SPT/T1/U1/U1
     #   +4*M2*SP/T1/U1*(1.D0 - M2*SP/T1/U1)
     #   -2*M2*Q2*(TP2+SPT2)/U1/U1/T1/T1

        C1 = SPT*(SPT2 + S42)/SPT2/U1/U1
        C2 = -(TP2 + SPT2)/T1/SPT
        C3 =  4.0D0 * M2 * SP * (1.0D0 - M2 *SP /T1/U1)/T1/U1
        C4 = -(TP2 + SPT2)/T1/SPT2
        C5 = SP*Q2/U1/T1-Q2*Q2*SPT/T1/U1/U1-M2*Q2*
     & (SPT2+TP2)/U1/U1/T1/T1


        REQ1H = LN1 * C1 * BHGQED + C4 + C1*C3 + 2.D0*C1*C5

        RETURN
        END
C ***************************************************************
        DOUBLE PRECISION FUNCTION REQ2H(SP,T1,U1,M2,Q2,MU )
C ***************************************************************
        IMPLICIT DOUBLE PRECISION (A-Z)
        S = SP + Q2
        S4 = SP + T1 + U1
        S42 = S4*S4
        TP2 = T1 * T1
        UP2 = U1 * U1
        SPT = SP + T1
        SPU = SP + U1
        SPU2 = SPU*SPU
        STU = SP + T1 + U1
        SPT2 = SPT * SPT
        S4PM2 = S4 + M2
C
        ARG = M2*SPU2/Q2/T1/STU
        LN1 = DLOG(ARG)

        C1 = (TP2 + STU*STU)/SPU2
        C2 = 2.D0*T1*STU/SPU2
        C3 = (UP2 + SPU2)/S/S - 2.D0*M2*SPU/T1/S
C THERE ARE TWO MINUS SIGNS: THE ONE FROM THE SUBTRACTION
C (4.13) IS IN MAEQH AND THE ONE FROM 1/(-T1) IS IN CRR2G
        REQ2H = (LN1 * C1 - 1.0D0 + C2) * C3 /T1

        RETURN
        END
C ***************************************************************
        DOUBLE PRECISION FUNCTION REQ2HM(SP,T1,U1,M2,Q2,MU )
C ***************************************************************
        IMPLICIT DOUBLE PRECISION (A-Z)
        S = SP + Q2
        S4 = SP + T1 + U1
        S42 = S4*S4
        TP2 = T1 * T1
        UP2 = U1 * U1
        SPT = SP + T1
        SPU = SP + U1
        SPU2 = SPU*SPU
        STU = SP + T1 + U1
        SPT2 = SPT * SPT
        S4PM2 = S4 + M2
C

        C1 = (TP2 + STU*STU)/SPU2
        C2 = 2.D0*T1*STU/SPU2
        C3 = (UP2 + SPU2)/S/S - 2.D0*M2*SPU/T1/S
C THE MINUS FROM THE SUBTRACTION
C SITS IN CRR2G. THE ONE FROM 1/(-T1) IS HERE
        REQ2HM = -C1 * C3 /T1
C
        RETURN
        END

C ***************************************************************
        DOUBLE PRECISION FUNCTION REQ1HD(SP,T1,U1,M2,Q2)
C ***************************************************************
        IMPLICIT DOUBLE PRECISION (A-Z)
C LEFT OVER RESIDUE TERMS
C FOR THE PROCES F(K1) + Q(K2) -> Q(K3) + Q + QB
C WHEN CHANGING FROM THE MSBAR SCHEME TO THE DIS SCHEME
C
C NOTE THE COEFFICIENTS ARE DEFINED IN THE MAIN PROGRAM
C HERE WE RETAIN THE TERMS WHEN MUå2 = Må2
        S = SP + Q2
        S4 = SP + T1 + U1
        S42 = S4*S4
        TP2 = T1 * T1
        UP2 = U1 * U1
        SPT = SP + T1
        SPT2 = SPT * SPT
        LN1 = DLOG(-S4/U1) -3.0D0/4.0D0
        BHGQED = -(SPT2 + TP2)/T1/SPT + 2*SP*Q2/T1/U1
     #   -2*Q2*Q2*SPT/T1/U1/U1
     #   +4*M2*SP/T1/U1*(1.D0 - M2*SP/T1/U1)
     #   -2*M2*Q2*(TP2+SPT2)/U1/U1/T1/T1

        D1 = (UP2 + SPT2)/S4/SPT
        D2 = 9.0D0/4.0D0 -5.0D0*U1/4.0D0/SPT

        REQ1HD =-(D1*LN1 + D2)*BHGQED/U1
        RETURN
        END
C ****************************************************************
        DOUBLE PRECISION FUNCTION REQ1HM(SP,T1,U1,M2,Q2)
C ****************************************************************
        IMPLICIT DOUBLE PRECISION (A-Z)
C IN THIS SUBROUTINE WE COMPUTE THE RESIDUE TERMS EXPLICITLY
C PROPORTIONAL TO LN(M2/MU2) - THE OTHERS BEING COMPUTED IN
C "ReQ1H". WE DO THIS IN ORDER TO GET EXPLICITLY THE TERMS
C IN FBAR ( THE NDE DECOMPOSITION OF THE PARTONIC CROSS SECTION).
C
C FOR THE PROCES F(K1) + Q(K2) -> Q(K3) + Q + QB
C
C  DSIG(HARD)CFCF = 1/2 *K*N*CF*ALPHA*ALPHASå2*EHå2*
C
C        (LN Må2/MUå2 +  LN(S4å2/Må2(S_4+Må2))) (SP+T1)*U1å-2
C       *(SP+T1)å2 + S4å2)*(SP+T1)å-2
C       * BHGQED
C
C ***************************************************************
C NOTE THE COEFFICIENTS ARE DEFINED IN THE MAIN PROGRAM
C HERE WE RETAIN THE TERMS WHEN MUå2 = Må2
        S = SP + Q2
        S4 = SP + T1 + U1
        S42 = S4*S4
        TP2 = T1 * T1
        UP2 = U1 * U1
        SPT = SP + T1
        SPT2 = SPT * SPT
        S4PM2 = S4 + M2
        LN1 = DLOG(S4*S4/M2/S4PM2)
        BHGQED = -(SPT2 + TP2)/T1/SPT + 2*SP*Q2/T1/U1
     #   -2*Q2*Q2*SPT/T1/U1/U1
     #   +4*M2*SP/T1/U1*(1.D0 - M2*SP/T1/U1)
     #   -2*M2*Q2*(TP2+SPT2)/U1/U1/T1/T1

        C1 = SPT*(SPT2 + S42)/SPT2/U1/U1

        REQ1HM =  C1*BHGQED
        RETURN
        END
C****************************************************************
       DOUBLE PRECISION FUNCTION A1G ( SP,T1,U1,M2,Q2)
C****************************************************************
C
C  THESE ARE THE 4 DIMENSIONAL PIECES OF THE ANGULAR
C
C  INTEGRALS INVOLVED IN THE PHOTON QUARK CHANNEL.
C
C  RECALL THAT ONLY THE BETHE-HEITLER GRAPHS HAD
C
C  TO BE MASS FACTORIZED ("EQ1H"), WHEREAS THE
C
C  COMPTON GRAPHS ("EQ2H") AND THE INTERFERENCE TERM
C
C  DID NOT.
C
C   THE VARIABLES ARE U1,U2,U3,U4,U5,U6,U7,S3,S4,U,T,UP,TP
C
C A0^-1=U1+T1
C
C A1^-1=-S-U1
C
C A2^-1=-S-T1
C
C RELATION S4=SP+U1+T1
C
C REMEMBER THAT Q2, T1 AND U1 ARE IN THE CALLING PROGRAM
C
C WE NOW DO THE PARTIAL FRACTIONING
        IMPLICIT DOUBLE PRECISION (A-Z)
        INTEGER I
        COMMON/INTS/RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
c        COMMON/INTS/RR(0:38),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
        DIMENSION Q(11)
C
           DO 110 I = 1,11
 110          Q(I) = 0.D0
        M22 = M2**2
        M23 = M2**3
        Q22 = Q2**2
        Q23 = Q2**3

        S = SP + Q2
        U1P = U1 - Q2
        S4 = SP + T1 + U1

        T1E2 = T1*T1
        T1E3 = T1E2*T1
        T1E4 = T1E2*T1E2
        U1E2 = U1*U1
        U1E3 = U1E2*U1
        U1E4 = U1E2*U1E2
        U1PE2 = U1P*U1P
        U1PE3 = U1P*U1PE2

        SE2 = S*S
        SE3 = SE2*S
        SPE2 = SP*SP
        SPE3 = SPE2*SP
        SPE4 = SPE2*SPE2
        S4E2 = S4*S4
        S4E3 = S4E2*S4

        SI1 = 1.0D0/S
        SI2 = SI1/S
        SPI1 = 1.0D0/SP
        SPI2 = SPI1*SPI1
        T1I1 = 1.0D0/T1
        T1I2 = T1I1/T1
        U1I1 = 1.0D0/U1
        U1I2 = U1I1/U1
        U1PI1 = 1.D0/U1P
        U1PI2 = U1PI1*U1PI1
        S4I1 = 1.0D0/S4
        S4I2 = S4I1/S4
        A1 = -1.0D0/(SP + U1P)
C
C PURE POLE TERM
C       + RR(6) * ( 4*M22*U1I2 - 2*M2*Q2*U1I2
C        + 4*M2*S*U1I2 + 4*M2*T1*U1I2 +
C         4*M2*U1I1 - 2*Q22*U1I2 + 2*Q2*S*U1I2
C        + 2*Q2*T1*U1I2 + 2*Q2*U1I1
C          + 2*T1*U1I1 )
        Q(1) =
     ^  + RR(7) * (  - 2*S*U1I1 - 4*T1*U1I1 )

        Q(2) =
     ^  + RR(8) * ( 2*M2 + Q2 )

        Q(3) =
     ^  + RR(9) * ( 8*M22*U1I1 - 4*M2*Q2*U1I1 + 4*M2*S*U1I1
     ^   + 8*M2*T1*U1I1 + 4*M2 - 6*Q22*U1I1 + 6*Q2*S*U1I1
     ^   + 8*Q2*T1*U1I1 + 4*Q2 - 2*SE2*U1I1 - 4*S*T1*U1I1
     ^   - 2*S - 4*T1E2*U1I1 - 2*T1 - U1 )

        Q(4) =
     ^  + RR(10) * (  - U1I1 )

        Q(6) =
     ^  + RR(12) * ( 4*M22 + 2*M2*Q2 + 4*M2*T1 + 2*Q2*T1 )

        Q(7) =
     ^  + RR(13) * (  - 2*U1I1 )

        Q(8) =
     ^  + RR(15) * ( 4*M2*Q22*U1I2 - 8*M2*Q2*S*U1I2 - 8*M2*Q2*T1*U1I2
     ^ + 4*M2*SE2*U1I2 + 8*M2*S*T1*U1I2 + 4*M2*T1E2*U1I2
     ^    + 2*Q23*U1I2 - 4*Q22*S*U1I2 - 4*Q22*T1*U1I2 + 2*Q2*SE2*U1I2
     ^  + 4*Q2*S*T1*U1I2 + 2*Q2*T1E2*U1I2 )

        Q(9) =
     ^  + RR(17) * (  - 8*M2*Q2*T1*U1I1 + 8*M2*S*T1*U1I1
     ^  + 8*M2*T1E2*U1I1 - 4*Q22*T1*U1I1 + 4*Q2*S*T1*U1I1
     ^  + 4*Q2*T1E2*U1I1 )

        Q(10) =
     ^  + RR(18) * ( 4*M2*T1E2 + 2*Q2*T1E2 )

        Q(11) =
     ^  + RR(0) * (2*M2*U1I2 + Q2*U1I2 + 2*U1I1)

        EQ1H = 0.0
        DO 10 I=1,11
           EQ1H = EQ1H + Q(I)
 10      CONTINUE
C NOTE WE DON'T HAVE TO DIVIDE BY -8 IN ORDER TO COMPLY
C WITH (3.28), AS THIS HAS ALREADY BEEN DONE IN THE
C FORM PROGRAMS
        A1G = EQ1H
        RETURN
        END
C*********************************************************
       DOUBLE PRECISION FUNCTION A2G ( SP,T1,U1,M2,Q2)
C*********************************************************
C
C----------------------------------------------------------
C THIS SUBROUTINE CONTAINS THE COMPTON GRAPHS (-LIGHT QUARK)
C
C WHICH IS FINITE IN THE OFF SHELL CASE AND DOES NOT NEED
C
C TO BE MASS FACTORIZED.
C A0^-1=U1+T1
C
C A1^-1=-S-U1
C
C A2^-1=-S-T1
C
C  RELATION S4=S+U1+T1
C
C REMEMBER THAT T1 AND U1 ARE IN THE CALLING PROGRAM
C
C WE NOW DO THE PARTIAL FRACTIONING
C----------------------------------------------------------
        IMPLICIT DOUBLE PRECISION (A-Z)
        DIMENSION Q(12)
        INTEGER I
        COMMON/INTS/RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
c        COMMON/INTS/RR(0:38),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)

        S = SP + Q2
        M22 = M2**2
        M23 = M2**3
        Q22 = Q2**2
        Q23 = Q2**3

        S4 = SP + T1 + U1

        T1P2 = T1*T1
        T1P3 = T1P2*T1
        T1P4 = T1P2*T1P2
        U1P2 = U1*U1
        U1P3 = U1P2*U1
        U1P4 = U1P2*U1P2

        SP2 = S*S
        SP3 = SP2*S
        S4P2 = S4*S4
        S4P3 = S4P2*S4

        SI1 = 1.0D0/S
        SI2 = SI1/S
        T1I = 1.0D0/T1
        T1I2 = T1I/T1
        U1I = 1.0D0/U1
        U1I2 = U1I/U1
        S4I = 1.0D0/S4
        S4I2 = S4I/S4
C
C IN THE ON SHELL CASE THIS IS A POLE TERM
        Q(1) =
     ^   RR(26) * (  - 4.D0*M2*SI1 - 2.D0*SI1*T1 - 2.D0*SI1*U1 )

        Q(2) =
     ^   RR(30) * ( 2.D0*SI1 )

        Q(3) =
     ^   RR(35) * ( Q2 )

        Q(4) =
     ^   SS(2) * (  - 2.D0*M2*Q2*SI2 - 4.D0*M2*SI1
     ^    + 2.D0*Q22*SI2 - 2.D0*Q2*SI1
     ^     - 2.D0*Q2*SI2*T1 - 2.D0*Q2*SI2*U1 - 2.D0*SI1*T1 )

        Q(5) =
     ^  + SS(3) * ( 2.D0*Q23*SI2 - 4.D0*Q22*SI2*T1
     ^   - 4.D0*Q22*SI2*U1 + 2.D0*Q2*
     ^    SI2*T1P2 + 4.D0*Q2*SI2*T1*U1 + 2.D0*Q2*SI2*U1P2 )

        Q(6) =
     ^  + SS(21) * ( 4.D0*M2*Q2*SI1 - 4.D0*M2 +
     ^     6*Q22*SI1 - 8*Q2*SI1*T1 -
     ^    6*Q2*SI1*U1 - 4.D0*Q2 + S + 4.D0*SI1*T1P2
     ^   + 4.D0*SI1*T1*U1 + 2.D0*SI1*U1P2 + 2.D0*T1 + 2.D0*U1 )

        Q(7) =
     ^   + SS(22) * (  - 2.D0*M2*S - 4.D0*Q22*SI1*T1
     ^  + 4.D0*Q2*SI1*T1P2 + 4.D0*Q2*SI1*T1*U1 )

        Q(8) =
     ^  + SS(23) * ( SI1 )

        Q(9) =
     ^  + SS(24) * (  - 2.D0*M2*SI1 )

        Q(10) =
     ^  + SS(27) * (  - 2.D0*M2*Q2 - 2.D0*Q2*T1 )

        Q(11) =
     ^  + SS(28) * ( 2.D0*Q2*T1P2 )

        Q(12) = RR(0)*
     ^  (+ Q2*SI2 )

        EQ2H = 0.0
        DO 10 I=1,12
           EQ2H = EQ2H + Q(I)
10      CONTINUE
C NOTE WE DON'T HAVE TO DIVIDE BY -8 IN ORDER TO COMPLY
C WITH (3.28), AS THIS HAS ALREADY BEEN DONE IN THE
C FORM PROGRAMS
        A2G = EQ2H
        RETURN
        END
C*********************************************************
       DOUBLE PRECISION FUNCTION A3G ( SP,T1,U1,M2,Q2)
C*********************************************************
C
C THIS SUBROUTINE CONTAINS THE TERMS IN THE
C
C INTERFERENCE GRAPH.
C
C A0^-1=U1+T1
C
C A1^-1=-S-U1
C
C A2^-1=-S-T1
C
C  RELATION S4=S+U1+T1
C
C REMEMBER THAT T1 AND U1 ARE IN THE CALLING PROGRAM
C
C AND THAT THIS SUBROUTINE IS CALLED TWICE, THE SECOND
C
C WITH T1 AND U1 INTERCHANGED FOR THE CROSSED GRAPH.
C
C IN THE SUM OF THESE TWO GRAPHS THE COLLINEAR SINGULARITIES,
C
C CAN AND HENCE WE DON'T HAVE TO MASS FACTORIZE HERE.
C
        IMPLICIT DOUBLE PRECISION (A-Z)
        INTEGER I
        COMMON/INTS/RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
c        COMMON/INTS/RR(0:38),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
        DIMENSION Q(22)
C
           DO 110 I = 1,22
 110          Q(I) = 0.D0
        M22 = M2**2
        M23 = M2**3
        Q22 = Q2**2
        Q23 = Q2**3

        S = SP + Q2
        U1P = U1 - Q2
        S4 = SP + T1 + U1

        T1E2 = T1*T1
        T1E3 = T1E2*T1
        T1E4 = T1E2*T1E2
        U1E2 = U1*U1
        U1E3 = U1E2*U1
        U1E4 = U1E2*U1E2
        U1PE2 = U1P*U1P
        U1PE3 = U1P*U1PE2

        SE2 = S*S
        SE3 = SE2*S
        SPE2 = SP*SP
        SPE3 = SPE2*SP
        SPE4 = SPE2*SPE2
        S4E2 = S4*S4
        S4E3 = S4E2*S4

        SI1 = 1.0D0/S
        SI2 = SI1/S
        SPI1 = 1.0D0/SP
        SPI2 = SPI1*SPI1
        T1I1 = 1.0D0/T1
        T1I2 = T1I1/T1
        U1I1 = 1.0D0/U1
        U1I2 = U1I1/U1
        U1PI1 = 1.D0/U1P
        U1PI2 = U1PI1*U1PI1
        S4I1 = 1.0D0/S4
        S4I2 = S4I1/S4
        A1 = -1.0D0/(SP + U1P)
C   CAPA3A IS INPUT HERE.
C       Q(1) =
C     ^ + RR(6) * ( 1.D0 - 2*M2*Q2*SI1*U1I1 + 2*M2*SI1*T1*U1I1 + 2*M2*U1I1 +
C     ^   Q22*SI1*U1I1 - 3*Q2*SI1*T1*U1I1 - Q2*SI1 - S*U1I1 + 2*SI1*
C     ^   T1E2*U1I1 - SI1*T1*U1I1*SP + SI1*T1*U1I1*U1P - SI1*T1 + 4*T1*
C     ^   U1I1 + 2*U1I1*SP )

        Q(2) =
     ^   RR(7) * ( 4.D0 + 4*M2*SI1 - 4*Q2*SI1*T1*U1PI1
     ^   - 2*Q2*SI1 - 6*Q2*A1
     ^  + 2*S*A1 + 2*SI1*T1*U1*U1PI1 - 2*SI1*T1*SP*U1PI1
     ^   + 4*SI1*T1 + 2*SI1
     ^    *U1 + 2*T1*U1PI1 + 2*T1*A1 + 2*U1*A1 )

        Q(3) =
     ^  + RR(9) * (  - 2*M2*Q22*SI1*U1PI1 - 4*M2*Q22*U1PI1*A1
     ^   + 6*M2*Q2*S*
     ^    U1PI1*A1 - 4*M2*Q2*SI1*T1*U1PI1 + 2*M2*Q2*SI1*U1*U1PI1
     ^   - 2*M2*Q2
     ^    *SI1*SP*U1PI1 + 2*M2*Q2*U1*U1PI1*A1 + 6*M2*Q2*U1PI1
     ^   - 2*M2*SE2*
     ^    U1PI1*A1 - 2*M2*S*T1*U1PI1*A1 - 2*M2*S*U1*U1PI1*A1
     ^   - 4*M2*S*U1PI1
     ^     + 2*M2*SI1*T1*U1*U1PI1 + 2*M2*SI1*U1*SP*U1PI1
     ^    + 6*M2*T1*U1PI1
     ^     - 2*M2*U1*U1PI1 + 2*M2*SP*U1PI1 - 2*Q22*SI1*T1*U1PI1
     ^   - Q22*SI1*SP*U1PI1 + Q22*SI1 - 5*Q22*T1*U1PI1*A1
     ^    + Q22*SP*U1PI1*A1
     ^     + 4*Q2*S*T1*U1PI1*A1 - Q2*S*SP*U1PI1*A1
     ^   + Q2*SI1*T1*U1*U1PI1)

        Q(4) = RR(9)*(
     ^    Q2*SI1*T1*SP*U1PI1 - Q2*SI1*T1 + 2*Q2*SI1*U1*SP*U1PI1
     ^ - Q2*SI1*U1 + 8*Q2*T1E2*U1PI1*A1 + 4*Q2*T1*U1*U1PI1*A1
     ^ + 2*Q2*T1*SP*U1PI1*A1 + 5*Q2*T1*U1PI1 - Q2*T1*A1 -
     ^   2*Q2*U1*SP*U1PI1*A1 + Q2*SP*U1PI1
     ^     - Q2*SP*A1 - 2*Q2 - SE2*T1*U1PI1*A1 - 5*S*T1E2*U1PI1*A1
     ^ - 2*S*T1*U1*U1PI1*A1 - 2*S*T1*SP*U1PI1*A1 - S*T1*U1PI1
     ^ + S*U1*SP*U1PI1*A1 + S - 4*SI1*T1E3*U1PI1 -
     ^  2*SI1*T1E2*U1*U1PI1 - 4*SI1*T1E2*SP*
     ^    U1PI1 - SI1*T1*U1E2*U1PI1 - 2*SI1*T1*U1*SP*U1PI1
     ^  - SI1*U1E2*SP*U1PI1 - 4*T1E3*U1PI1*A1 - 5*T1E2*U1*U1PI1*A1
     ^ - 2*T1E2*SP*U1PI1*A1 - 3*T1E2*U1PI1 - T1*U1E2*U1PI1*A1
     ^ - T1*U1*SP*U1PI1*A1 - 2*T1*U1*U1PI1 - 2*T1*SP*U1PI1
     ^ + 2*T1 + U1E2*SP*U1PI1*A1 - U1*SP*U1PI1 +
     ^    U1 + SP )

        Q(5) =
     ^  + RR(10) * ( Q2*SI1*U1I1 - SI1*T1*U1I1 - U1I1 )

        Q(6) =
     ^  + RR(13) * ( 2*SI1 )

        Q(7) =
     ^  + RR(26) * ( 4*M2*U1I1 + 4*Q2*U1I1 - 6*Q2*A1
     ^  + 2*S*A1 + 4*T1*U1I1 +
     ^   2*T1*A1 + 2*U1*A1 + 2*U1I1*SP + 4*U1I1*U1P )

        Q(8) =
     ^  + RR(30) * (  - 2*U1I1 )

        Q(9) =
     ^  + SS(2) * (  - 4.0D0 + 2*M2*Q2*SI1*U1I1 - 2*M2*SI1*T1*U1I1
     ^  - 2*M2*SI1 + 4*M2*U1I1 + Q2*SI1*T1*U1I1 +
     ^ 4*Q2*SI1*T1*U1PI1 + Q2*SI1*U1I1*U1P + 4*Q2*SI1
     ^ + 2*Q2*U1I1 - 2*SI1*T1E2*U1I1 - 2*SI1*T1*U1*
     ^    U1PI1 - SI1*T1*U1I1*SP - SI1*T1*U1I1*U1P
     ^  + 2*SI1*T1*SP*U1PI1 - 2*SI1*U1 + 2*SI1*SP + SI1*U1P
     ^  + T1*U1I1 - 2*T1*U1PI1 + U1I1*U1P )

      Q(10) =
     ^ + SS(4) * ( 2*M2*Q22*SI1*U1I1 + 2*M2*Q22*SI1*U1PI1
     ^ - 2*M2*Q22*U1I1*SPI1 + 4*M2*Q22*SPI1*A1 +
     ^ 4*M2*Q22*U1PI1*A1 + 2*M2*Q2*S*U1I1*SPI1 -
     ^ 6*M2*Q2*S*SPI1*A1 - 6*M2*Q2*S*U1PI1*A1 -
     ^ 2*M2*Q2*SI1*T1*U1I1 + 4*M2*Q2*SI1*T1*U1PI1
     ^ - 2*M2*Q2*SI1*U1*U1PI1 + 2*M2*Q2*SI1*SP*U1PI1
c     Q(10) =Q(10) +SS(4)*(
     ^ + 2*M2*Q2*SI1 - 2*M2*Q2*U1*SPI1*A1 - 2*M2*Q2*U1*
     ^ U1PI1*A1 - 2*M2*Q2*U1I1*SPI1*U1P - 6*M2*Q2*U1I1
     ^ - 6*M2*Q2*U1PI1 + 2*M2*SE2*SPI1*A1 + 2*M2*SE2*U1PI1*A1
     ^ + 2*M2*S*T1*U1I1*SPI1 + 2*M2*S*T1*SPI1*A1
     ^ + 2*M2*S*T1*U1PI1*A1 + 2*M2*S*U1*SPI1*A1 + 2*M2*S
     ^ * U1*U1PI1*A1 + 2*M2*S*U1I1*SPI1*U1P + 6*M2*S*U1I1
     ^ + 4*M2*S*U1PI1 - 2*M2*SI1*T1*U1*U1PI1 + 2*M2*SI1*T1
     ^ - 2*M2*SI1*U1*SP*U1PI1 + 2*M2*SI1*SP + 6*M2*T1*U1I1
     ^ - 6*M2*T1*U1PI1 + 2*M2*U1*U1PI1 + 2*M2*U1I1*SP
     ^ - 2*M2*SP*U1PI1 - 2*M2 + 2*Q23*SI1*U1I1
     ^ - 5*Q22*SI1*T1*U1I1 + 2*Q22*SI1*T1*U1PI1
     ^ + Q22*SI1*SP*U1PI1 - 2*Q22*SI1   )

        Q(11) = SS(4) *
     ^    (2*Q22*T1*U1I1*SPI1 + 5*Q22*T1*SPI1*A1
     ^  + 5*Q22*T1*U1PI1*A1 + Q22*U1I1*SPI1*U1P
     ^ - 2*Q22*U1I1 - Q22*SP*U1PI1*A1 + Q22*SPI1
     ^     - Q22*A1 - Q2*S*T1*U1I1*SPI1 - 4*Q2*S*T1*SPI1*A1
     ^- 4*Q2*S*T1*U1PI1*A1 - 2*Q2*S*U1I1*SPI1*U1P
     ^  + 2*Q2*S*U1I1 + Q2*S*SP*U1PI1*A1
     ^     - 2*Q2*S*SPI1 + Q2*S*A1 + 5*Q2*SI1*T1E2*U1I1
     ^ - Q2*SI1*T1*U1*U1PI1 + Q2*SI1*T1*U1I1*SP
     ^  - Q2*SI1*T1*SP*U1PI1 + 9*Q2*SI1*T1 -
     ^    2*Q2*SI1*U1*SP*U1PI1 + 2*Q2*SI1*U1
     ^  + Q2*SI1*U1I1*SP*U1P + Q2*SI1*SP + 2*Q2*SI1*U1P
     ^ - 8*Q2*T1E2*SPI1*A1 - 8*Q2*T1E2*U1PI1*A1 -
     ^    4*Q2*T1*U1*SPI1*A1 - 4*Q2*T1*U1*U1PI1*A1)

        Q(12) = SS(4) *
     ^  (- Q2*T1*U1I1*SPI1*U1P + 11*Q2*T1*U1I1
     ^  - 2*Q2*T1*SP*U1PI1*A1 - 3*Q2*T1*SPI1 - 5*Q2*T1*U1PI1
     ^ - 2*Q2*T1*A1 + 2*Q2*U1*SP*U1PI1*A1 - Q2*U1*SPI1
     ^  + 2*Q2*U1*A1 + 2*Q2*U1I1*SP + 3*Q2*U1I1*U1P
     ^ - Q2*SP*U1PI1 - Q2*SPI1*U1P + 5*Q2
     ^ + SE2*T1*U1I1*SPI1 + SE2*T1*SPI1*A1 + SE2*T1*U1PI1*A1
     ^ + SE2*U1I1*SPI1*U1P + SE2*SPI1 + 3*S*T1E2*U1I1*SPI1
     ^ + 5*S*T1E2*SPI1*A1 + 5*S*T1E2*U1PI1*A1
     ^ + 2*S*T1*U1*SPI1*A1  + 2*S*T1*U1*U1PI1*A1)

        Q(13) = SS(4) *
     ^    (3*S*T1*U1I1*SPI1*U1P - S*T1*U1I1
     ^ + 2*S*T1*SP*U1PI1*A1 + S*T1*SPI1 + S*T1*U1PI1
     ^ + 2*S*T1*A1 - S*U1*SP*U1PI1*A1 + S*U1*SPI1
     ^ - S*U1*A1 + S*SPI1*U1P - 4*S - 4*SI1*T1E3*U1I1
     ^ + 4*SI1*T1E3*U1PI1 + 2*SI1*T1E2*U1*U1PI1
     ^ - 2*SI1*T1E2*U1I1*SP - 3*SI1*T1E2*U1I1*U1P
     ^  + 4*SI1*T1E2*SP*U1PI1 + SI1*T1E2
     ^ + SI1*T1*U1E2*U1PI1 + 2*SI1*T1*U1*SP*U1PI1
     ^ - SI1*T1*U1 - 2*SI1*T1*U1I1*SP*U1P
     ^ - SI1*T1*U1I1*U1PE2 + 4*SI1*T1*SP + SI1*T1*U1P
     ^ + SI1*U1E2*SP*U1PI1 + SI1*SP*U1P + 4*T1E3*U1I1*SPI1
     ^ + 4*T1E3*SPI1*A1 + 4*T1E3*U1PI1*A1 + 5*T1E2*U1*SPI1*A1
     ^ + 5*T1E2*U1*U1PI1*A1 + 5*T1E2*U1I1*SPI1*U1P -
     ^  T1E2*U1I1 + 2*T1E2*SP*U1PI1*A1 + 3*T1E2*U1PI1)

        Q(14) = SS(4) *
     ^ (+ 2*T1E2*A1 + T1*U1E2*SPI1*A1 + T1*U1E2*U1PI1*A1
     ^  + T1*U1*SP*U1PI1*A1 - T1*U1*SPI1 + 2*T1*U1*U1PI1
     ^ + T1*U1*A1 + T1*U1I1*SPI1*U1PE2 + 5*T1*U1I1*U1P
     ^     + 2*T1*SP*U1PI1 + T1*SPI1*U1P - 12*T1
     ^ - U1E2*SP*U1PI1*A1 - U1E2*A1 + U1*SP*U1PI1 - 4*U1
     ^ + U1I1*SP*U1P + 2*U1I1*U1PE2 - SP - 3*U1P  )

        Q(15) =
     ^  + SS(21) * (  - 2*M2*Q22*U1I1*SPI1 + 4*M2*Q22*SPI1*A1
     ^  + 2*M2*Q2*S*U1I1*SPI1 - 6*M2*Q2*S*SPI1*A1
     ^ - 2*M2*Q2*U1*SPI1*A1 - 2*M2*Q2*U1I1*SPI1*U1P
     ^ - 4*M2*Q2*U1I1 + 8*M2*Q2*A1 + 2*M2*SE2*SPI1*A1
     ^ + 2*M2*S*T1*U1I1*SPI1 + 2*M2*S*T1*SPI1*A1
     ^ + 2*M2*S*U1*SPI1*A1 + 2*M2*S*U1I1*SPI1*U1P - 4*M2*S*A1
     ^ - 4*M2*T1*U1I1 - 4*M2*T1*A1 - 4*M2*U1*A1 - 4*M2*U1I1*U1P
     ^ + 2*Q22*T1*U1I1*SPI1 + 5*Q22*T1*SPI1*A1 +
     ^    Q22*U1I1*SPI1*U1P - Q22*U1I1 + Q22*SPI1 + Q22*A1
     ^ - Q2*S*T1*U1I1*SPI1 - 4*Q2*S*T1*SPI1*A1
     ^ - 2*Q2*S*U1I1*SPI1*U1P + Q2*S*U1I1 - 2*Q2*S*SPI1
     ^ - 2*Q2*S*A1 - 8*Q2*T1E2*SPI1*A1 - 4*Q2*T1*U1*SPI1*A1
     ^ - Q2*T1*U1I1*SPI1*U1P + Q2*T1*U1I1 - 3*Q2*T1*SPI1
     ^ + 3*Q2*T1*A1 - Q2*U1*SPI1 - Q2*U1*A1 - Q2*SP*A1
     ^ - Q2*SPI1*U1P + Q2 + SE2*T1*U1I1*SPI1 + SE2*T1*SPI1*A1
     ^ + SE2*U1I1*SPI1*U1P + SE2*SPI1)

        Q(16) = SS(21) *
     ^    (SE2*A1 + 3*S*T1E2*U1I1*SPI1 + 5*S*T1E2*SPI1*A1
     ^ + 2*S*T1*U1*SPI1*A1 + 3*S*T1*U1I1*SPI1*U1P + S*T1*SPI1
     ^ - S*T1*A1 + S*U1*SPI1 + S*U1*A1 + S*SPI1*U1P - S
     ^ + 4*T1E3*U1I1*SPI1 + 4*T1E3*SPI1*A1 + 5*T1E2*U1*SPI1*A1
     ^ + 5*T1E2*U1I1*SPI1*U1P - T1E2*U1I1 - 2*T1E2*A1 +
     ^       T1*U1E2*SPI1*A1 - T1*U1*SPI1 - 2*T1*U1*A1
     ^  + T1*U1I1*SPI1*U1PE2 - T1*U1I1*U1P + T1*SPI1*U1P
     ^ - 2*T1 - U1 - U1P )

        Q(17) =
     ^   SS(23) * (  - Q2*SI1*U1I1 + SI1*T1*U1I1 + SI1 )

        Q(18) =
     ^  + TT(2) * ( 2*M2*Q22*SI1*U1PI1 - 4*M2*Q22*U1PI1*A1
     ^ + 6*M2*Q2*S*U1PI1*A1 - 4*M2*Q2*SI1*T1*U1PI1
     ^ - 4*M2*Q2*SI1*U1*U1PI1 + 2*M2*Q2*SI1
     ^     + 2*M2*Q2*U1*U1PI1*A1 + 8*M2*Q2*A1
     ^ - 2*M2*SE2*U1PI1*A1 - 2*M2*S*T1*U1PI1*A1
     ^ - 2*M2*S*U1*U1PI1*A1 - 2*M2*S*U1PI1 - 4*M2*S*A1
     ^ + 2*M2*SI1*T1*U1*U1PI1 - 4*M2*SI1*T1 + 2*M2*SI1*U1E2*U1PI1
     ^ - 4*M2*SI1*U1 + 6*M2*T1*U1PI1 - 4*M2*T1*A1
     ^ + 2*M2*U1*U1PI1 - 4*M2*U1*A1 - 2*M2
     ^     + 2*Q23*SI1*U1PI1 - 2*Q23*U1PI1*A1
     ^ + 3*Q22*S*U1PI1*A1 - 8*Q22*SI1*T1*U1PI1
     ^ - 5*Q22*SI1*U1*U1PI1 - 4*Q22*SI1 - 9*Q22*T1*U1PI1*A1
     ^ + 5*Q22*U1*U1PI1*A1 - 3*Q22*U1PI1 - 7*Q22*A1
     ^ - Q2*SE2*U1PI1*A1 + 10*Q2*S*T1*U1PI1*A1
     ^ - 5*Q2*S*U1*U1PI1*A1 + Q2*S*U1PI1)

        Q(19) = TT(2) *
     ^     (+ 6*Q2*S*A1 + 10*Q2*SI1*T1E2*U1PI1
     ^ + 12*Q2*SI1*T1*U1*U1PI1 + 6*Q2*SI1*T1
     ^ + 4*Q2*SI1*U1E2*U1PI1 + 5*Q2*SI1*U1
     ^ + 12*Q2*T1E2*U1PI1*A1 + 8*Q2*T1*U1*U1PI1*A1
     ^ + 12*Q2*T1*U1PI1 + 7*Q2*T1*A1 - 4*Q2*U1E2*U1PI1*A1
     ^ + 5*Q2*U1*U1PI1 + 7*Q2*U1*A1 - Q2*SP*A1 + 5*Q2
     ^ - 3*SE2*T1*U1PI1*A1 + SE2*U1*U1PI1*A1 - SE2*A1
     ^ - 7*S*T1E2*U1PI1*A1 - 5*S*T1*U1*U1PI1*A1
     ^ - 3*S*T1*U1PI1 - 3*S*T1*A1 + 2*S*U1E2*U1PI1*A1
     ^ - S*U1*U1PI1 - 3*S*U1*A1 - S - 4*SI1*T1E3*U1PI1
     ^ - 8*SI1*T1E2*U1*U1PI1 - 2*SI1*T1E2 - 5*SI1*T1*U1E2*U1PI1
     ^ - 4*SI1*T1*U1 - SI1*U1E3*U1PI1 - 2*SI1*U1E2
     ^ - 4*T1E3*U1PI1*A1 - 7*T1E2*U1*U1PI1*A1 - 7*T1E2*U1PI1
     ^ - 2*T1E2*A1 - 2*T1*U1E2*U1PI1*A1 - 8*T1*U1*U1PI1
     ^ - 4*T1*U1*A1 - 3*T1 + U1E3*U1PI1*A1
     ^ - 2*U1E2*U1PI1 - 2*U1E2*A1 - 3*U1 )

        Q(20) =
     ^  + VV(1) * (- 2*M2*Q22*U1I1*SPI1 + 4*M2*Q22*SPI1*A1
     ^ + 2*M2*Q2*S*U1I1*SPI1 - 6*M2*Q2*S*SPI1*A1
     ^ - 2*M2*Q2*U1*SPI1*A1 - 2*M2*Q2*U1I1*SPI1*U1P
     ^ + 2*M2*SE2*SPI1*A1 + 2*M2*S*T1*U1I1*SPI1
     ^ + 2*M2*S*T1*SPI1*A1 + 2*M2*S*U1*SPI1*A1
     ^ + 2*M2*S*U1I1*SPI1*U1P + 2*M2*S*U1I1 + 2*Q22*T1*U1I1*SPI1
     ^ + 5*Q22*T1*SPI1*A1 + Q22*U1I1*SPI1*U1P + 3*Q22*U1I1
     ^ + Q22*SPI1 - Q22*A1 - Q2*S*T1*U1I1*SPI1
     ^- 4*Q2*S*T1*SPI1*A1 - 2*Q2*S*U1I1*SPI1*U1P
     ^ - 2*Q2*S*U1I1 - 2*Q2*S*SPI1 + Q2*S*A1 - 8*Q2*T1E2*SPI1*A1
     ^ - 4*Q2*T1*U1*SPI1*A1 - Q2*T1*U1I1*SPI1*U1P + Q2*T1*U1I1
     ^ - 3*Q2*T1*SPI1 - 3*Q2*T1*A1 - Q2*U1*SPI1 + 2*Q2*U1*A1
     ^ + 3*Q2*U1I1*SP + 3*Q2*U1I1*U1P - Q2*SP*A1 - Q2*SPI1*U1P
     ^ + SE2*T1*U1I1*SPI1 + SE2*T1*SPI1*A1 + SE2*U1I1*SPI1*U1P
     ^ + SE2*U1I1 + SE2*SPI1 + 3*S*T1E2*U1I1*SPI1
     ^ + 5*S*T1E2*SPI1*A1 + 2*S*T1*U1*SPI1*A1
     ^ + 3*S*T1*U1I1*SPI1*U1P + 3*S*T1*U1I1)

        Q(21) = VV(1) *
     ^    (S*T1*SPI1 + 2*S*T1*A1 + S*U1*SPI1 - S*U1*A1
     ^ + S*SPI1*U1P - S + 4*T1E3*U1I1*SPI1 + 4*T1E3*SPI1*A1
     ^ + 5*T1E2*U1*SPI1*A1 + 5*T1E2*U1I1*SPI1*U1P + 7*T1E2*U1I1
     ^ + 2*T1E2*A1 + T1*U1E2*SPI1*A1 - T1*U1*SPI1 + T1*U1*A1
     ^ + 5*T1*U1I1*SP + T1*U1I1*SPI1*U1PE2 + 6*T1*U1I1*U1P
     ^ + T1*SPI1*U1P - 2*T1 - U1E2*A1 - 2*U1 + 2*U1I1*SPE2
     ^ + 4*U1I1*SP*U1P + 2*U1I1*U1PE2 - SP - U1P )

        Q(22) = RR(0) *
     ^  (- 4*Q2*SI1*U1I1 + 2*SI1*T1*U1I1 + 2*U1I1)
        EQ3H = 0.D0
        DO 10 I=1,22
           EQ3H = EQ3H + Q(I)
10      CONTINUE
C NOTE WE DON'T HAVE TO DIVIDE BY -8 IN ORDER TO COMPLY
C WITH (3.28), AS THIS HAS ALREADY BEEN DONE IN THE
C FORM PROGRAMS
        A3G = EQ3H
        RETURN
        END
C  THE LISTING ALLEQ_L.F :
C  ALL THE SUBROUTINES FOR THE QUARK-PHOTON CHANNEL
C  IN THE ELECTROPRODUCTION (Q2 =/ 0) CASE,
C  THE LONGITUDINAL PIECE.
C
C**************************************************************
      DOUBLE PRECISION FUNCTION MAEQH_L( SP,T1,U1,M2,Q2,MU )
C**************************************************************
C  ASSEMBLES THE HARD CONTRIBUTIONS
C  NOTE: THE MATRIX ELEMENTS GET HERE THE NORM FACTOR
C  -4*Qå2/SPå2, WHICH IS ALREADY INCLUDED IN
C  REQH_L, REQHD_L AND REQHM_L
C
      IMPLICIT DOUBLE PRECISION(A-Z)
      INTEGER NBORN,NCORR,NALFAS,NSCALE
      INTEGER NEXCT,NPROCS,NMOMT,IFLAG,NPOS,ICD,ICOEF
      COMMON/CBORN/CALFAS,NBORN,NCORR,NPOS,NALFAS,NSCALE
      COMMON/CAPRX/NEXCT,NPROCS,NMOMT,IFLAG
      COMMON/CNSTS2/CRF1,CRF2,CRF3,CRR1,CRR2G,CRR2L
      COMMON/CORD/ICD
      COMMON/FLAGS/ICOEF
      PARAMETER( PI = 3.14159265359D0 )
C
C  THE EXACT RESULTS -----------------------------------
C
         CALL RSTEGG( SP,T1,U1,M2,Q2 )
         S4 = SP + T1 + U1
         S = SP + Q2
         ALONG = 2.D0
         LNORM = -4.D0*Q2/SP/SP

         IF(ICOEF.EQ.1) GOTO 20

        IF(NEXCT.GE.0) THEN
        SUM1 = CRF1 * ALONG * LNORM * S4/(S4+M2)*A1L( SP,T1,U1,M2,Q2 )
        SUM2 = CRF2 * ALONG * LNORM * S4/(S4+M2)*A2L( SP,T1,U1,M2,Q2 )
c       SUM3 = CRF3 * ALONG * LNORM * S4/(S4+M2)*A3L( SP,T1,U1,M2,Q2 )
        sum3=0.d0
        SUM4 = CRR1 * ALONG * REQ1H_L( SP,T1,U1,M2,Q2 )
CEL HERE WE MASS FACTORIZE THE A2L TERM IN ORDER
CEL TO GET THE CORRECT Q2 -> 0 LIMIT. WE ALSO DEFINE
CEL HERE THE R(-Q2) FUNCTION (SEE (5.10)) WHICH SUPRESSES
CEL THIS SUBTRACTION AT LARGE VALUES OF Q2.
        RQ2 = DEXP(Q2*10.D0)
        SUM5 = -CRR2L * RQ2 * REQ2H_L( SP,T1,U1,M2,Q2 )
        IF(NSCALE.NE.1.AND.ICD.EQ.0)
     ^   SUM5 = CRR2L*ALONG*DLOG(M2/MU/MU)*REQ1HM_L(SP,T1,U1,M2,Q2)
C SPLIT APART TO GET THE TERM IN LOG(MU2/M2)
cell        SUM5 = - CRR1 * ALONG * REQ1HM_L( SP,T1,U1,M2,Q2 )
CEL THE MF TERMS PROP TO LN(MU*MU/M2) FROM THE A2 TERM
CEL (SEE (4.15)) - THERE ARE NONE HERE.

        IF(ICD.EQ.0)SUM = SUM1 + SUM3 + SUM4
        IF(ICD.EQ.1)SUM = SUM2 + SUM3 + SUM5
        ENDIF

        IF(NEXCT.EQ.2.AND.ICD.EQ.0)
     ^   SUM = SUM + CRR1 * ALONG * REQ1HD_L( SP,T1,U1,M2,Q2)
        GOTO 30

 20     CONTINUE
        IF(ICD.EQ.0)SUM=-CRR1 *ALONG*REQ1HM_L( SP,T1,U1,M2,Q2 )
        IF(ICD.EQ.1)SUM=0.D0

 30     CONTINUE
        MAEQH_L = SUM
       RETURN
       END
C****************************************************************
      DOUBLE PRECISION FUNCTION MAEQSV_L(SP,T1,U1,M2,Q2,MU,DEL
     &  ,S4MAX,S4,XAMIN,XA,SS1,TT1,UU1)
C****************************************************************
C ASSEMBLES THE SOFT+VIRTUAL CONTRIBUTIONS [EXIST ONLY IN DIS SCHEME]
C NOTE: THE NORM FACTOR -4*Qå2/SPå2 IS INCLUDED HERE.
      IMPLICIT DOUBLE PRECISION(A-Z)
      PARAMETER( PI = 3.14159265359D0 )
      INTEGER NEXCT,NPROCS,NMOMT,IFLAG,ICD
      COMMON/CAPRX/NEXCT,NPROCS,NMOMT,IFLAG
      COMMON/CNSTS1/CBORN0,CBORNK,CBORNQ,CSV,CSVL
      COMMON/CORD/ICD
C ---------------------------------------------------------
C
      SUM  = 0.0D0
      ALONG = 2.D0
      IF (NEXCT.EQ.2.AND.ICD.EQ.0) THEN
      SUM =   CSVL * ALONG * SVEQ_L ( SP,T1,U1,M2,Q2,DEL,
     &   S4MAX,S4,XAMIN,XA,SS1,TT1,UU1)
       ENDIF
C
       MAEQSV_L = SUM
       RETURN
       END
C****************************************************************
       DOUBLE PRECISION FUNCTION SVEQ_L (SP,T1,U1,M2,Q2,DEL,S4MAX,S4,
     &    XAMIN,XA,SS1,TT1,UU1)
C****************************************************************
C SOFT+VIRTUAL TERMS [ONLY IN DIS SCHEME]
C
      IMPLICIT DOUBLE PRECISION (A-Z)
      INTEGER NEXCT,NPROCS,NMOMT,IFLAG
      COMMON/CAPRX/NEXCT,NPROCS,NMOMT,IFLAG
C
       DATA PI6/1.644934066848226D+00/
C
       S = SP+Q2
       SPT  = SP + T1
       T1M1 = 1.0D0/T1
       U1M1 = 1.0D0/U1
       TB   = T1M1*U1M1
       LOG1 = DLOG(M2/SPT)
       LOG12 = LOG1*LOG1
C
       ZETA2 = PI6
C WE CAN COMMENT OUT THESE TERMS SINCE THEY ARE ADDED BACK INTO
C THE HARD PIECE
C       LOGDEL = DLOG(DEL/M2)
C       LGDEL2 = LOGDEL*LOGDEL

       BLQED = -4.D0*Q2/SP/SP*(S - M2*SP*SP/T1/U1)
C HERE WE REPLACE THE LOGDEL TERMS BY INTEGRALS OVER S4
         DIST = S4MAX - DEL
         L11 = DLOG(S4/M2)
         L12 = DLOG(S4MAX/M2)
         LOGDEL = L12 - DIST/S4
         LGDEL2 = L12*L12 -2.0D0*DIST*L11/S4
C
          SVEQ_L = ( LGDEL2
     1     + 2.0D0*LOGDEL*(LOG1 -3.0D0/4.0D0)
     1    +LOG12 - 3.0D0*LOG1/2.0D0 -9.0D0/2.0D0 - 2.0D0*ZETA2)
     1    *BLQED

C
       RETURN
       END

C*************************************************************
        DOUBLE PRECISION FUNCTION REQ1H_L(SP,T1,U1,M2,Q2)
C*************************************************************
C
        IMPLICIT DOUBLE PRECISION (A-Z)
C IN THIS FUNCTION THE TERMS PROPORTIONAL TO LN(S4å2/M2/(S4+M2))
C ARE COMPUTED, TOGETHER WITH THE EPS/EPS TERMS.
C THE ONES PROPORTIONAL TO LN(M2/MU2) ARE COMPUTED
C IN THE SUBROUTINE "REQ1HM".
C
C THIS IS THE OFF-SHELL CASE, LONGITUDINAL PIECE
C FOR THE PROCES F(K1) + Q(K2) -> Q(K3) + Q + QB
C
C  DSIG(HARD)CFCF = K*N*CF*ALPHA*ALPHASå2*EHå2*
C        (LN Må2/MUå2 +  LN(S4å2/Må2(S_4+Må2)) + 1)
C           * (SP+T1)*U1å-2
C       *(SP+T1)å2 + S4å2)*(SP+T1)å-2
C       * BHLQED
C
C WHERE BHLQED = (SP+T1)å2/U1å2 *
C     4*Q2/SP*(SP*T1*U1P-M2*SPå2-Q2*T1å2)/SP/T1/(SP+T1)
C NOTE THE COEFFICIENTS ARE DEFINED IN THE MAIN PROGRAM
C HERE WE RETAIN THE TERMS WHEN MUå2 = Må2
        S = SP + Q2
        S4 = SP + T1 + U1
        S42 = S4*S4
        TP2 = T1 * T1
        UP2 = U1 * U1
        SPT = SP + T1
        SPT2 = SPT * SPT
        S4PM2 = S4 + M2
        LN1 = DLOG(S4*S4/M2/S4PM2)
        BHLQED = SPT2/UP2*4.D0*Q2/SP*
     #     (SP*T1*U1-M2*SP*SP-Q2*T1*SPT)/SP/SPT/T1
C
        C1 = SPT*(SPT2 + S42)/SPT2/U1/U1
C
        REQ1H_L = (LN1 + 1.D0) * C1 * BHLQED

        RETURN
        END
C*************************************************************
        DOUBLE PRECISION FUNCTION REQ2H_L(SP,T1,U1,M2,Q2)
C*************************************************************
C
        IMPLICIT DOUBLE PRECISION (A-Z)
        S = SP + Q2
        S4 = SP + T1 + U1
        S42 = S4*S4
        TP2 = T1 * T1
        UP2 = U1 * U1
        SPT = SP + T1
        SPU = S + U1
        SPU2 = SPU*SPU
        SPT2 = SPT * SPT
        S4PM2 = S4 + M2
C
        C1 = (S + T1 + U1)/SPU2
C
        C2 = (UP2 + SPU2)/S/S - 2.D0*M2*SPU/T1/S
C
        REQ2H_L = C1 * C2

        RETURN
        END

C**********************************************************
        DOUBLE PRECISION FUNCTION REQ1HD_L(SP,T1,U1,M2,Q2)
C**********************************************************
        IMPLICIT DOUBLE PRECISION (A-Z)
C LEFT OVER RESIDUE TERMS
C FOR THE PROCES F(K1) + Q(K2) -> Q(K3) + Q + QB
C WHEN CHANGING FROM THE MSBAR SCHEME TO THE DIS SCHEME
C
C NOTE THE COEFFICIENTS ARE DEFINED IN THE MAIN PROGRAM
C HERE WE RETAIN THE TERMS WHEN MUå2 = Må2
        S = SP + Q2
        S4 = SP + T1 + U1
        S42 = S4*S4
        TP2 = T1 * T1
        UP2 = U1 * U1
        SPT = SP + T1
        SPT2 = SPT * SPT
        LN1 = DLOG(-S4/U1) -3.0D0/4.0D0
        BHLQED = SPT2/UP2*4.D0*Q2/SP*
     #     (SP*T1*U1-M2*SP*SP-Q2*T1*SPT)/SP/SPT/T1
C
        D1 = (UP2 + SPT2)/S4/SPT
        D2 = 9.0D0/4.0D0 -5.0D0*U1/4.0D0/SPT
C
        REQ1HD_L =-(D1*LN1 + D2)*BHLQED/U1

C
        RETURN
        END
C*************************************************************
        DOUBLE PRECISION FUNCTION REQ1HM_L(SP,T1,U1,M2,Q2)
C*************************************************************
        IMPLICIT DOUBLE PRECISION (A-Z)
C IN THIS SUBROUTINE WE COMPUTE THE RESIDUE TERMS EXPLICITLY
C PROPORTIONAL TO LN(M2/MU2) - THE OTHERS BEING COMPUTED IN
C "REQ1H". WE DO THIS IN ORDER TO GET EXPLICITLY THE TERMS
C IN FBAR ( THE NDE DECOMPOSITION OF THE PARTONIC CROSS SECTION).
C
C FOR THE PROCES F(K1) + Q(K2) -> Q(K3) + Q + QB
C
C  DSIG(HARD)CFCF = 1/2 *K*N*CF*ALPHA*ALPHASå2*EHå2*
C
C        (LN Må2/MUå2 +  LN(S4å2/Må2(S_4+Må2))) (SP+T1)*U1å-2
C       *(SP+T1)å2 + S4å2)*(SP+T1)å-2
C       * BHLQED
C
C
C NOTE THE COEFFICIENTS ARE DEFINED IN THE MAIN PROGRAM
        S = SP + Q2
        S4 = SP + T1 + U1
        S42 = S4*S4
        TP2 = T1 * T1
        UP2 = U1 * U1
        SPT = SP + T1
        SPT2 = SPT * SPT
        S4PM2 = S4 + M2
        LN1 = DLOG(S4*S4/M2/S4PM2)
        BHLQED = SPT2/UP2*4.D0*Q2/SP*
     #     (SP*T1*U1-M2*SP*SP-Q2*T1*SPT)/SP/SPT/T1

        C1 = SPT*(SPT2 + S42)/SPT2/U1/U1

        REQ1HM_L =  C1*BHLQED
        RETURN
        END
C********************************************************************
       DOUBLE PRECISION FUNCTION A1L ( SP,T1,U1,M2,Q2)
C********************************************************************
C
C  THESE ARE THE 4 DIMENSIONAL PIECES OF THE ANGULAR
C
C  INTEGRALS INVOLVED IN THE PHOTON QUARK CHANNEL.
C
C  RECALL THAT ONLY THE BETHE-HEITLER GRAPHS HAD
C
C  TO BE MASS FACTORIZED ("FQ1H"), WHEREAS THE
C
C  COMPTON GRAPHS ("FQ2H") AND THE INTERFERENCE TERM
C
C  DID NOT.
C
C   THE VARIABLES ARE U1,U2,U3,U4,U5,U6,U7,S3,S4,U,T,UP,TP
C----------------------------------------------------------
C ------------------------------------------------------
C A0^-1=U1+T1
C
C A1^-1=-S-U1
C
C A2^-1=-S-T1
C
C RELATION S4=SP+U1+T1
C
C REMEMBER THAT Q2, T1 AND U1 ARE IN THE CALLING PROGRAM
C
C WE NOW DO THE PARTIAL FRACTIONING
C----------------------------------------------------------
        IMPLICIT DOUBLE PRECISION (A-Z)
        INTEGER I
        COMMON/INTS/RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
c        COMMON/INTS/RR(0:38),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
        DIMENSION Q(12)
C
        M22 = M2**2
        M23 = M2**3
        Q22 = Q2**2
        Q23 = Q2**3

        S = SP + Q2
        U1P = U1 - Q2
        S4 = SP + T1 + U1

        T1E2 = T1*T1
        T1E3 = T1E2*T1
        T1E4 = T1E2*T1E2
        U1E2 = U1*U1
        U1E3 = U1E2*U1
        U1E4 = U1E2*U1E2
        U1PE2 = U1P*U1P
        U1PE3 = U1P*U1PE2

        SE2 = S*S
        SE3 = SE2*S
        SPE2 = SP*SP
        SPE3 = SPE2*SP
        SPE4 = SPE2*SPE2
        S4E2 = S4*S4
        S4E3 = S4E2*S4

        SI1 = 1.0D0/S
        SI2 = SI1/S
        SPI1 = 1.0D0/SP
        SPI2 = SPI1*SPI1
        T1I1 = 1.0D0/T1
        T1I2 = T1I1/T1
        U1I1 = 1.0D0/U1
        U1I2 = U1I1/U1
        U1PI1 = 1.D0/U1P
        U1PI2 = U1PI1*U1PI1
        S4I1 = 1.0D0/S4
        S4I2 = S4I1/S4
        A1 = -1.0D0/(SP + U1P)
C INITIALIZE ARRAY:
         DO 3 I = 1,12
           Q(I) = 0.D0
 3      CONTINUE
c Here is the matrix element (Bethe-Heitler)
C PURE POLE TERM:
C      Q(1) =
C     # +RR(6) * (-m2*q2*t1*u1i2+m2*s*t1*u1i2+m2*t1e2*u1i2+q22*t1*
C     #    u1i2-.5d0*q22*u1i1-2*q2*s*t1*u1i2+q2*s*u1i1-2*q2*t1e2*
C     #    u1i2+.5d0*q2*t1*u1i1+se2*t1*u1i2-.5d0*se2*u1i1+2*s*t1e2*
C     #    u1i2-.5d0*s*t1*u1i1+t1e3*u1i2)
c
      Q(2) =
     # +RR(7) * (-m2*q2*u1i1+m2*s*u1i1+2*m2*t1*u1i1+q22*u1i1-1.5d0
     #    *q2*s*u1i1-4*q2*t1*u1i1+.5d0*se2*u1i1+3*s*t1*u1i1+3*t1e2*
     #    u1i1)
c
      Q(3) =
     # +RR(8) * (-m2*q2+m2*s+2*m2*t1-1.5d0*q2*t1+1.5d0*s*t1+3.5d0*t1e2)
c
      Q(4) =
     # +RR(9) * (-2*m2*q2*t1*u1i1+2*m2*s*t1*u1i1+2*m2*t1e2*u1i1+3*
     #    q22*t1*u1i1-5*q2*s*t1*u1i1-7*q2*t1e2*u1i1-.5d0*q2*t1+2*se2
     #    *t1*u1i1+6*s*t1e2*u1i1+.5d0*s*t1+4*t1e3*u1i1)
c
      Q(5) =
     # +RR(12) * (-m2*q2*t1+m2*s*t1+m2*t1e2-2*q2*t1e2+2*s*t1e2+3*
     #    t1e3)
c
      Q(6) =
     # +RR(13) * (-q2*u1i1+.5d0*s*u1i1+t1*u1i1)
c
      Q(7) =
     # +RR(14) * (m2-.5d0*q2+.5d0*s+2*t1)
c
      Q(8) =
     # +RR(15) * (-q23*t1*u1i2+3*q22*s*t1*u1i2+3*q22*t1e2*u1i2-3*
     #    q2*se2*t1*u1i2-6*q2*s*t1e2*u1i2-3*q2*t1e3*u1i2+se3*t1*u1i2
     #    +3*se2*t1e2*u1i2+3*s*t1e3*u1i2+t1e4*u1i2)
c
      Q(9) =
     # +RR(17) * (2*q22*t1e2*u1i1-4*q2*s*t1e2*u1i1-4*q2*t1e3*u1i1+2*
     #    se2*t1e2*u1i1+4*s*t1e3*u1i1+2*t1e4*u1i1)
c
      Q(10) =
     # +RR(18) * (-q2*t1e3+s*t1e3+t1e4)
c
      Q(11) =
     # +RR(40) * (.5d0)
c
      Q(12) =
     # +RR(0) * (
     # -.5d0*q2*t1*u1i2+.5d0*q2*u1i1+.5d0*s*t1*u1i2-.5d0*s*u1i1+.5d0*
     #    t1e2*u1i2 )

        EQ1H_L = 0.0
        DO 10 I=1,12
           EQ1H_L = EQ1H_L + Q(I)
10      CONTINUE
C WE ONLY HAVE TO MULTIPLY THE RESULT WITH -1 IN
C ORDER TO COMPLY WITH (3.29) SINCE IN THE
C FORM PROGRAM WE DIVIDED BY -8 (THE - OF WHICH
C WAS SPURIOUS)
        A1L = -EQ1H_L
        RETURN
        END
C*****************************************************************
       DOUBLE PRECISION FUNCTION A2L ( SP,T1,U1,M2,Q2)
C*****************************************************************
C
C----------------------------------------------------------
C THIS SUBROUTINE CONTAINS THE COMPTON GRAPHS (-LIGHT QUARK)
C
C WHICH IS FINITE IN THE OFF SHELL CASE AND DOES NOT NEED
C
C TO BE MASS FACTORIZED.
C----------------------------------------------------------
C A0^-1=U1+T1
C
C A1^-1=-S-U1
C
C A2^-1=-S-T1
C
C  RELATION S4=S+U1+T1
C
C REMEMBER THAT T1 AND U1 ARE IN THE CALLING PROGRAM
C
C WE NOW DO THE PARTIAL FRACTIONING
C----------------------------------------------------------
        IMPLICIT DOUBLE PRECISION (A-Z)
        DIMENSION Q(12)
        INTEGER I
        COMMON/INTS/RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
c        COMMON/INTS/RR(0:38),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)

        S = SP + Q2
        M22 = M2**2
        M23 = M2**3
        Q22 = Q2**2
        Q23 = Q2**3

        S4 = SP + T1 + U1

        T1E2 = T1*T1
        T1E3 = T1E2*T1
        T1E4 = T1E2*T1P2
        U1E2 = U1*U1
        U1E3 = U1E2*U1
        U1E4 = U1E2*U1P2

        SE2 = S*S
        SE3 = SE2*S
        S4P2 = S4*S4
        S4P3 = S4P2*S4

        SI1 = 1.0D0/S
        SI2 = SI1/S
        T1I = 1.0D0/T1
        T1I2 = T1I/T1
        U1I = 1.0D0/U1
        U1I2 = U1I/U1
        S4I = 1.0D0/S4
        S4I2 = S4I/S4
C
           DO 110 I = 1,12
 110          Q(I) = 0.D0
C
      Q(1) =
     # +RR(26) * ( -2*m2-.5d0*q2+.5d0*s-.5d0*t1 )
C
      Q(2) =
     # +RR(30) * ( .5d0 )
C
      Q(3) =
     # +RR(35) * ( m2*q2-m2*s-m2*t1+.5d0*q2*t1-.5d0*s*t1+.5d0*
     #    t1e2 )
C
      Q(4) =
     # +SS(2) * ( -3*m2-.5d0*q2+.5d0*s-t1 )
C
      Q(5) =
     # +SS(3) * ( m2*q2-m2*s )
C
      Q(6) =
     # +SS(21) * ( 2*m2*q2-2*m2*s+q2*t1-s*t1+t1e2 )
C
      Q(7) =
     # +SS(23) * ( .5d0 )
C
      Q(8) =
     # +SS(24) * ( -m2 )
C
      Q(9) =
     # +SS(27) * ( -q2*t1e2+s*t1e2 )
C
      Q(10) =
     # +RR(42) * ( -m2-.5d0*q2+.5d0*s )
C
      Q(11) =
     # +RR(43) * ( .5d0 )
C
      Q(12) =
     # +RR(0) *( .5d0 )
C
        EQ2H_L = 0.0
        DO 10 I=1,12
           EQ2H_L = EQ2H_L + Q(I)
10      CONTINUE
C WE ONLY HAVE TO MULTIPLY THE RESULT WITH -1 IN
C ORDER TO COMPLY WITH (3.29) SINCE IN THE
C FORM PROGRAM WE DIVIDED BY -8 (THE - OF WHICH
C WAS SPURIOUS)
        A2L = -EQ2H_L
        RETURN
        END
C*****************************************************************
       DOUBLE PRECISION FUNCTION A3L ( SP,T1,U1,M2,Q2)
C*****************************************************************
C
C THIS SUBROUTINE CONTAINS THE TERMS IN THE
C
C INTERFERENCE GRAPH.
C
C A0^-1=U1+T1
C
C A1^-1=-S-U1
C
C A2^-1=-S-T1
C
C  RELATION S4=S+U1+T1
C
C REMEMBER THAT T1 AND U1 ARE IN THE CALLING PROGRAM
C
C AND THAT THIS SUBROUTINE IS CALLED TWICE, THE SECOND
C
C WITH T1 AND U1 INTERCHANGED FOR THE CROSSED GRAPH.
C
C IN THE SUM OF THESE TWO GRAPHS THE COLLINEAR SINGULARITIES,
C
C CAN AND HENCE WE DON'T HAVE TO MASS FACTORIZE HERE.
C
C----------------------------------------------------------
        IMPLICIT DOUBLE PRECISION (A-Z)
        INTEGER I
        COMMON/INTS/RR(0:43),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
c        COMMON/INTS/RR(0:38),SS(28),TT(2),UU(1),VV(1),YY(12),ZZ(8)
        DIMENSION Q(22)
C
           DO 110 I = 1,22
 110          Q(I) = 0.D0
        M22 = M2**2
        M23 = M2**3
        Q22 = Q2**2
        Q23 = Q2**3
        Q24 = Q22*Q22

        S = SP + Q2
        U1P = U1 - Q2
        S4 = SP + T1 + U1

        T1E2 = T1*T1
        T1E3 = T1E2*T1
        T1E4 = T1E2*T1E2
        U1E2 = U1*U1
        U1E3 = U1E2*U1
        U1E4 = U1E2*U1E2
        U1PE2 = U1P*U1P
        U1PE3 = U1P*U1PE2

        SE2 = S*S
        SE3 = SE2*S
        SPE2 = SP*SP
        SPE3 = SPE2*SP
        SPE4 = SPE2*SPE2
        S4E2 = S4*S4
        S4E3 = S4E2*S4

        SI1 = 1.0D0/S
        SI2 = SI1/S
        SPI1 = 1.0D0/SP
        SPI2 = SPI1*SPI1
        T1I1 = 1.0D0/T1
        T1I2 = T1I1/T1
        U1I1 = 1.0D0/U1
        U1I2 = U1I1/U1
        U1PI1 = 1.D0/U1P
        U1PI2 = U1PI1*U1PI1
        S4I1 = 1.0D0/S4
        S4I2 = S4I1/S4
        A1 = -1.0D0/(SP + U1P)
C HERE IS THE MATRIX ELEMENT
      Q(1) =
     # +RR(7) * (-8*m2*q2*a1+8*m2*s*a1+16*m2*t1*a1-16*m2-16*q22*a1
     #    +24*q2*s*a1-16*q2*t1*a1+8*q2*u1*a1+16*q2-8*se2*a1+12*s*t1
     #    *a1-8*s*u1*a1-12*s+32*t1e2*a1-12*t1-4*u1)
C
      Q(2) =
     # +RR(9) * (16*q22*t1e2*spi1*u1pi1+16*q22*t1e2*spi1*a1-24*q2*s*
     #    t1e2*spi1*u1pi1-24*q2*s*t1e2*spi1*a1-16*q2*t1e3*spi1*u1pi1
     #    -16*q2*t1e3*spi1*a1-4*q2*t1e2*u1*spi1*u1pi1-4*q2*t1e2*u1*
     #    spi1*a1+8*q2*t1e2*u1pi1+8*se2*t1e2*spi1*u1pi1+8*se2*t1e2*
     #    spi1*a1+8*s*t1e3*spi1*u1pi1+8*s*t1e3*spi1*a1+4*s*t1e2*u1*
     #    spi1*u1pi1+4*s*t1e2*u1*spi1*a1-8*s*t1e2*u1pi1-8*t1e3*u1pi1
     #    )
C
      Q(3) =
     # +RR(13) * (-8+16*m2*a1+4*s*a1+24*t1*a1-4*u1*a1)
C
      Q(4) =
     # +RR(16) * (8*a1)
C
      Q(5) =
     # +RR(26) * (
     # -8*m2*q2*u1i1+8*m2*q2*a1+8*m2*s*u1i1-8*m2*s*a1+16
     # *m2*t1*u1i1+8*q22*u1i1+8*q22*a1-12*q2*s*u1i1-12*q2*s*a1
c     Q(5) =Q(5)+RR(26)*(
     # -16*q2*t1*u1i1-8*q2*t1*a1-4*q2*u1*a1-8*q2+4*se2*u1i1+4*
     # se2*a1+8*s*t1*u1i1+4*s*u1*a1+8*s+8*t1e2*u1i1+16*t1e2*a1
     # +4*t1*u1*a1+4*t1)
C
      Q(6) =
     # +RR(30) * (4-16*m2*a1+8*q2*u1i1-16*q2*a1-4*s*u1i1+12*s*a1-
     #    8*t1*u1i1-8*t1*a1+4*u1*a1)
C
      Q(7) =
     # +RR(31) * (8*a1)
C
      Q(8) =
     # +SS(2) * (-8*m2*q2*u1i1+8*m2*s*u1i1+16*m2*t1*u1i1+16*m2+4*
     #    q22*u1i1+16*q22*a1-4*q2*s*u1i1-24*q2*s*a1-12*q2*t1*u1i1
     #    -8*q2*u1*a1-16*q2+8*se2*a1+8*s*u1*a1+12*s+8*t1e2*u1i1+
     #    12*t1+4*u1)
C
      Q(9) =
     # +SS(4) * (4*q24*u1i1*spi1-12*q23*s*u1i1*spi1-24*q23*t1*u1i1*
     #    spi1-4*q23*spi1+12*q22*se2*u1i1*spi1+56*q22*s*t1*u1i1*
     #    spi1+12*q22*s*spi1+36*q22*t1e2*u1i1*spi1-16*q22*t1e2*
     #    spi1*u1pi1-8*q22*t1*u1i1+8*q22*t1*spi1-4*q2*se3*u1i1*
     #    spi1-40*q2*se2*t1*u1i1*spi1-12*q2*se2*spi1-52*q2*s*t1e2*
     #    u1i1*spi1+24*q2*s*t1e2*spi1*u1pi1+16*q2*s*t1*u1i1-16*q2*s*
     #    t1*spi1-16*q2*t1e3*u1i1*spi1+16*q2*t1e3*spi1*u1pi1+4*q2*
     #    t1e2*u1*spi1*u1pi1+16*q2*t1e2*u1i1-4*q2*t1e2*spi1-8*q2*t1e2
     #    *u1pi1+8*se3*t1*u1i1*spi1+4*se3*spi1+16*se2*t1e2*u1i1*
     #    spi1-8*se2*t1e2*spi1*u1pi1-8*se2*t1*u1i1+8*se2*t1*spi1+8
     #    *s*t1e3*u1i1*spi1-8*s*t1e3*spi1*u1pi1-4*s*t1e2*u1*spi1*
     #    u1pi1-16*s*t1e2*u1i1+4*s*t1e2*spi1+8*s*t1e2*u1pi1-8*t1e3*
     #    u1i1+8*t1e3*u1pi1)
C
      Q(10) =
     # +SS(21) * (4*q24*u1i1*spi1-12*q23*s*u1i1*spi1-24*q23*t1*u1i1
     #    *spi1+4*q23*u1i1-4*q23*spi1+12*q22*se2*u1i1*spi1+56*
     #    q22*s*t1*u1i1*spi1-8*q22*s*u1i1+12*q22*s*spi1+36*q22*
     #    t1e2*u1i1*spi1+16*q22*t1e2*spi1*a1-24*q22*t1*u1i1+8*q22*
     #    t1*spi1-8*q22*t1*a1-4*q22-4*q2*se3*u1i1*spi1-40*q2*se2*
     #    t1*u1i1*spi1+4*q2*se2*u1i1-12*q2*se2*spi1-52*q2*s*t1e2*
     #    u1i1*spi1-24*q2*s*t1e2*spi1*a1+32*q2*s*t1*u1i1-16*q2*s*t1*
     #    spi1+12*q2*s*t1*a1+8*q2*s-16*q2*t1e3*u1i1*spi1-16*q2*t1e3*
     #    spi1*a1-4*q2*t1e2*u1*spi1*a1+36*q2*t1e2*u1i1-4*q2*t1e2*spi1
     #    +16*q2*t1e2*a1+4*q2*t1*u1*a1+12*q2*t1+8*se3*t1*u1i1*spi1+
     #    4*se3*spi1+16*se2*t1e2*u1i1*spi1+8*se2*t1e2*spi1*a1-8*se2*
     #    t1*u1i1+8*se2*t1*spi1-4*se2*t1*a1-4*se2+8*s*t1e3*u1i1*
     #    spi1+8*s*t1e3*spi1*a1+4*s*t1e2*u1*spi1*a1-20*s*t1e2*u1i1+
     #    4*s*t1e2*spi1-4*s*t1e2*a1-4*s*t1*u1*a1-12*s*t1-16*t1e3*u1i1
     #    -16*t1e3*a1-4*t1e2*u1*a1-4*t1e2)
C
      Q(11) =
     # +SS(23) * (12+4*q2*u1i1-16*q2*a1+16*s*a1+4*t1*u1i1)
C
      Q(12) =
     # +TT(2) * (32*m2*q22*a1-48*m2*q2*s*a1-16*m2*q2*u1*a1-40*m2*q2+16
     #    *m2*se2*a1+16*m2*s*u1*a1+24*m2*s+16*m2*t1+16*m2*u1-16*q23*
     #    a1+32*q22*s*a1+16*q22*t1e2*spi1*u1pi1+16*q22*t1e2*spi1*a1
     #    +40*q22*t1*a1+16*q22*u1*a1+16*q22-20*q2*se2*a1-24*q2*s*
     #    t1e2*spi1*u1pi1-24*q2*s*t1e2*spi1*a1-60*q2*s*t1*a1-24*q2*s*
     #    u1*a1-16*q2*s-16*q2*t1e3*spi1*u1pi1-16*q2*t1e3*spi1*a1-4*
     #    q2*t1e2*u1*spi1*u1pi1-4*q2*t1e2*u1*spi1*a1+8*q2*t1e2*u1pi1+
     #    16*q2*t1e2*a1-20*q2*t1*u1*a1-40*q2*t1-4*q2*u1e2*a1-16*q2*u1
     #    +4*se3*a1+8*se2*t1e2*spi1*u1pi1+8*se2*t1e2*spi1*a1+20*se2*
     #    t1*a1+8*se2*u1*a1+4*se2+8*s*t1e3*spi1*u1pi1+8*s*t1e3*spi1*
     #    a1+4*s*t1e2*u1*spi1*u1pi1+4*s*t1e2*u1*spi1*a1-8*s*t1e2*
     #    u1pi1-4*s*t1e2*a1+20*s*t1*u1*a1+24*s*t1+4*s*u1e2*a1+8*s*u1
     #    -8*t1e3*u1pi1-16*t1e3*a1-4*t1e2*u1*a1+12*t1e2+12*t1*u1+4
     #    *u1e2)
C
      Q(13) =
     # +VV(1) * (4*q24*u1i1*spi1-12*q23*s*u1i1*spi1-24*q23*t1*u1i1*
     #    spi1-4*q23*u1i1-4*q23*spi1+12*q22*se2*u1i1*spi1+56*
     #    q22*s*t1*u1i1*spi1+12*q22*s*u1i1+12*q22*s*spi1+36*q22*
     #    t1e2*u1i1*spi1+16*q22*t1e2*spi1*a1+8*q22*t1*u1i1+8*q22*
     #    t1*spi1-4*q2*se3*u1i1*spi1-40*q2*se2*t1*u1i1*spi1-12*q2*
     #    se2*u1i1-12*q2*se2*spi1-52*q2*s*t1e2*u1i1*spi1-24*q2*s*t1e2
     #    *spi1*a1-16*q2*s*t1*u1i1-16*q2*s*t1*spi1-16*q2*t1e3*u1i1*
     #    spi1-16*q2*t1e3*spi1*a1-4*q2*t1e2*u1*spi1*a1-4*q2*t1e2*u1i1
     #    -4*q2*t1e2*spi1+8*se3*t1*u1i1*spi1+4*se3*u1i1+4*se3*spi1
     #    +16*se2*t1e2*u1i1*spi1+8*se2*t1e2*spi1*a1+8*se2*t1*u1i1+8
     #    *se2*t1*spi1+8*s*t1e3*u1i1*spi1+8*s*t1e3*spi1*a1+4*s*t1e2*
     #    u1*spi1*a1+4*s*t1e2*u1i1+4*s*t1e2*spi1)
C
      Q(14) =
     # +RR(0)*( -4+4*q2*u1i1-4*t1*u1i1)
C
        EQ3H_L = 0.D0
        DO 10 I=1,14
           EQ3H_L = EQ3H_L + Q(I)
 10        CONTINUE
C
C WE DIVIDE HERE BY 8 IN ORDER TO BE UNIFORM WITH THE
C OTHER TWO TERMS (SEE (3.29). WE DIDN'T DO IT IN FORM TO AVOID
C TOO MANY N/2 (N ODD) TERMS.
C
        A3L = EQ3H_L/8.D0
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
