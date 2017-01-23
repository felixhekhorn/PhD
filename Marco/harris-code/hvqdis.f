CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C                                                                      C
C                     ==========================                       C
C                     | HVQDIS  V1.1  FEB 1997 |                       C
C                     ==========================                       C
C                                                                      C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C                                                                      C
C RELEASE HISTORY                                                      C
C ===============                                                      C
C                                                                      C
C INITIAL RELEASE: HVQDIS V1.0  JULY 1996                              C
C SECOND  RELEASE: HVQDIS V1.1  FEB  1997                              C
C                -ADDED AZIMUTHAL RANDOMIZATION IN GAMMA-PROTON CMS    C
C                -REMOVED UNDERFLOW CUTOFF IN PSEUDO-RAPIDITY ROUTINE  C
C                -IMPROVED KIMEMATIC LIMITS ON Y AND Q2 INTEGRATION    C
C                                                                      C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C                                                                      C
C THIS CODE IS BASED ON THE NEXT-TO-LEADING ORDER FULLY DIFFERENTIAL   C
C HEAVY QUARK STRUCTURE FUNCTIONS PUBLISHED IN                         C
C B.W.HARRIS AND J.SMITH NUCL. PHYS. B452 (1995) 109                   C
C B.W.HARRIS AND J.SMITH PHYS. LETT. B353 (1995) 535.                  C
C                                                                      C
C                                                                      C
C --> SEE THE README FILE FOR HOW TO RUN THIS PROGRAM <--              C
C                                                                      C
C                                                                      C
C QUESTIONS OR COMMENTS?                                               C
C CONTACT: HARRIS@HEP.FSU.EDU                                          C
C                                                                      C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      PROGRAM HVQDIS
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      CHARACTER*25 PREF
      CHARACTER*20 PARM(20)
      DOUBLE PRECISION VAL(20)
      PARAMETER (NWPAWC=20000)
      REAL HMEMOR(NWPAWC)

      EXTERNAL SIG0,SIG1,SIG1Q

      COMMON/RESULT/S1,S2,S3,S4
      COMMON/BEAM/EPRO,EIEL
      COMMON/INVAR/XBJ,XIMIN,XM2,Q2
      COMMON/FACTORS/EH2,CA,CF,XKGP,XKQP,N
      COMMON/CHARGE/EH,EU,ED,ES,EC,EB,ET
      COMMON/QCD/XLQCD5
      COMMON/FRACTION/X0,Y0
      COMMON/FLAGS/ISCALER,ISCALEF,IALPHAS,IFRAG
      COMMON/QUARKF/IQUARK
      COMMON/LIMITS/Q2MIN,Q2MAX,XMIN,XMAX,YMIN,YMAX
      COMMON/FRAGP/EPS,HFRAC,XMD
      COMMON/CUTS/ETAMAX,PTMIN,PTMAX
      COMMON/W50512/QCDL4,QCDL5
      COMMON/PAWC/HMEMOR
      CALL HLIMIT(NWPAWC)

c      OPEN(UNIT=10,FILE='hvqdis.dat',STATUS='OLD')
      READ (*,*) NORDER  !0:BORN  1:NLO  2:SUM
      READ (*,*) ISCALER !SEE SUBROUTINE MSCALE FOR DEFINITIONS
      READ (*,*) ISCALEF !SEE SUBROUTINE MSCALE FOR DEFINITIONS
      READ (*,*) IPDF    !NGROUP(SEE PDFLIB)(MUST USE MS_BAR SCHEME)
      READ (*,*) ISET    !NSET  (SEE PDFLIB)(MUST USE MS_BAR SCHEME)
      READ (*,*) NPTS0   !NUMBER OF VEGAS POINTS FOR LO
      READ (*,*) ITS0    !NUMBER OF VEGAS ITERATIONS FOR LO
      READ (*,*) NPTS1   !NUMBER OF VEGAS POINTS FOR NLO
      READ (*,*) ITS1    !NUMBER OF VEGAS ITERATIONS FOR NLO
      READ (*,*) IQUARK  !1:CHARM  2:BOTTOM
      READ (*,*) XM      !QUARK MASS
      READ (*,*) Q2MIN   !Q2 MIN
      READ (*,*) Q2MAX   !Q2 MAX
      READ (*,*) XMIN    !XBJ MIN
      READ (*,*) XMAX    !XBJ MAX
      READ (*,*) YMIN    !Y MIN
      READ (*,*) YMAX    !Y MAX
      READ (*,*) ETAMAX  !ETAMAX
      READ (*,*) PTMIN   !PTMIN
      READ (*,*) PTMAX   !PTMAX
      READ (*,*) IFRAG   !0: NO FRAG  1: FRAG
      READ (*,*) EPS     !EPSILON FOR PETERSON
      READ (*,*) HFRAC   !HADRONIZATION FRACTION
      READ (*,*) XMD     !MASS OF HADRON
      READ (*,*) PREF    !OUTPUT FILE PREFIX STRING
c      CLOSE(10)
      WRITE (*,*) ' '
      WRITE (*,*) '=========================='
      WRITE (*,*) '| HVQDIS  V1.1  FEB 1997 |'
      WRITE (*,*) '=========================='
      WRITE (*,*) ' '
      WRITE (*,*) 'NORDER    = ',NORDER
      WRITE (*,*) 'ISCALER   = ',ISCALER
      WRITE (*,*) 'ISCALEF   = ',ISCALEF
      WRITE (*,*) 'IPDF      = ',IPDF
      WRITE (*,*) 'ISET      = ',ISET
      WRITE (*,*) 'PTS0      = ',NPTS0
      WRITE (*,*) 'ITS0      = ',ITS0
      WRITE (*,*) 'PTS1      = ',NPTS1
      WRITE (*,*) 'ITS1      = ',ITS1
      WRITE (*,*) 'IQUARK    = ',IQUARK
      WRITE (*,*) 'M         = ',XM
      WRITE (*,*) 'Q2MIN     = ',Q2MIN
      WRITE (*,*) 'Q2MAX     = ',Q2MAX
      WRITE (*,*) 'XBJMIN    = ',XMIN
      WRITE (*,*) 'XBJMAX    = ',XMAX
      WRITE (*,*) 'YMIN      = ',YMIN
      WRITE (*,*) 'YMAX      = ',YMAX
      WRITE (*,*) 'ETAMAX    = ',ETAMAX
      WRITE (*,*) 'PTMIN     = ',PTMIN
      WRITE (*,*) 'PTMAX     = ',PTMAX
      WRITE (*,*) 'IFRAG     = ',IFRAG
      WRITE (*,*) 'EPS       = ',EPS
      WRITE (*,*) 'HFRAC     = ',HFRAC
      WRITE (*,*) 'XMD       = ',XMD
      WRITE (*,*) 'PREF      = ',PREF

C. SETUP PROTON AND ELECTRON BEAM ENERGIES (GEV)
      EPRO=820D0
      EIEL=27.6D0

C INPLOT PARAMETERS (DO NOT CHANGE)
      NHIST = 0
      NPRINT = 1
      PRECS  = 1D-6

C RHO-TILDE AND OMEGA OF PAPER ARE MAPPED INTO X0 AND Y0 (DO NOT CHANGE)
      X0=0.8D0
      Y0=0.5D0

C QUARK CHARGES IN UNITS OF E
      EU=+2.D0/3.D0
      ED=-1.D0/3.D0
      EC=+2.D0/3.D0
      ES=-1.D0/3.D0
      ET=+2.D0/3.D0
      EB=-1.D0/3.D0

C COLOR FACTORS
      N=3
      CA=N
      CF=0.5D0*(N-1D0/N)
      XKGP=1D0/(N*N-1D0)
      XKQP=1D0/N

C. SET UP PBFLIB
      PARM(1)='NPTYPE'
      VAL(1) = 1
      PARM(2)='NGROUP'
      VAL(2) = IPDF
      PARM(3)='NSET'
      VAL(3) = ISET
      CALL PDFSET(PARM,VAL)
      XLQCD5=QCDL5


      WRITE(*,*) ' '
      IF      ( IQUARK.EQ.1 ) THEN
         IF(IFRAG.EQ.0)WRITE(*,*)'CHARM PRODUCTION'
         IF(IFRAG.EQ.1)WRITE(*,*)'CHARM PRODUCTION WITH FRAGMENTATION'
         EH=EC
      ELSE IF ( IQUARK.EQ.2 ) THEN
         IF(IFRAG.EQ.0)WRITE(*,*)'BOTTOM PRODUCTION'
         IF(IFRAG.EQ.1)WRITE(*,*)'BOTTOM PRODUCTION WITH FRAGMENTATION'
         EH=EB
      ELSE
        WRITE(*,*) 'UNKNOWN HEAVY QUARK: ',IQUARK
        STOP
      END IF

      EH2=EH*EH
      XM2=XM*XM

      WRITE(*,*) ' '
      WRITE(*,*) 'LAMBDA_QCD(NF=5) = ',XLQCD5
      ZM=91.17D0
      ZM2=ZM*ZM
      IF(NORDER.EQ.0)THEN
         AS1=ALPHAS(1,ZM2,XLQCD5,NEFF)
         WRITE(*,*) 'ONE LOOP AS(M_Z) = ',AS1
      ELSEIF( (NORDER.EQ.1).OR.(NORDER.EQ.2) )THEN
         AS2=ALPHAS(2,ZM2,XLQCD5,NEFF)
         WRITE(*,*) 'TWO LOOP AS(M_Z) = ',AS2
      ELSE
         WRITE(*,*) 'UNKNOWN NORDER: ',NORDER
         STOP
      ENDIF

C. INITIALIZE RANDOM NUMBER GENERATOR
      CALL BRM48I(40,0,0)

C SET UP HISTOGRAM FILES
      CALL SHIST

      IF      ( NORDER.EQ.0 ) THEN
         WRITE(*,*) 'LO ONLY'
         IALPHAS=1
         OPEN(UNIT=12, FILE='lo.plo', STATUS= 'OLD')  !   ,SHARED)
         CALL VEGAS(SIG0,PRECS,3,NPTS0,ITS0,NPRINT,NHIST)
         CLOSE(12)
      ELSE IF ( NORDER.EQ.1 ) THEN
         WRITE(*,*) 'NLO ONLY'
         IALPHAS=2
         OPEN(UNIT=12, FILE='nlo.plo', STATUS= 'OLD')  !   ,SHARED)
         CALL VEGAS(SIG1,PRECS,6,NPTS1,ITS1,NPRINT,NHIST)
         CALL VEGAS(SIG1Q,PRECS,6,NPTS1,ITS1,NPRINT,NHIST)
         CLOSE(12)
      ELSE IF ( NORDER.EQ.2 ) THEN
         WRITE(*,*) 'LO+NLO'
         IALPHAS=2
         OPEN(UNIT=12, FILE='lo.plo', STATUS= 'OLD')   ! ,SHARED)
         CALL VEGAS(SIG0,PRECS,3,NPTS0,ITS0,NPRINT,NHIST)
         CLOSE(12)
         OPEN(UNIT=12, FILE='nlo.plo', STATUS= 'OLD')   !,SHARED)
         CALL VEGAS(SIG1,PRECS,6,NPTS1,ITS1,NPRINT,NHIST)
         CALL VEGAS(SIG1Q,PRECS,6,NPTS1,ITS1,NPRINT,NHIST)
         CLOSE(12)
      ELSE
         WRITE(*,*) 'UNKNOWN NORDER: ',NORDER
         STOP
      END IF

C WRITE OUT HISTOGRAM FILES
      CALL WHIST(PREF)

      STOP
      END
