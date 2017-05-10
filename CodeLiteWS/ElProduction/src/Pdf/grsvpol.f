*********************************************************************
*                                                                   *
*    POLARIZED RADIATIVELY GENERATED LO AND NLO PARTON DENSITIES    *
*                                                                   *
*         M. GLUCK, E. REYA, M. STRATMANN AND W. VOGELSANG,         *
*                   DO-TH 95/13, RAL-TR-95-042                      *
*                  (TO APPEAR IN PHYS. REV. D)                      *       
*          PROBLEMS/QUESTIONS TO VOGELSANG@V2.RL.AC.UK              *
*                 OR  TO STRAT@HAL1.PHYSIK.UNI-DORTMUND.DE          *
*                                                                   *
*   INPUT:   ISET = number of the parton set :                      *
*              ISET = 1  'STANDARD' SCENARIO, NEXT-TO-LEADING ORDER *
*                        (DATA FILE 'STDNLO.GRID' UNIT=11, TO BE    *
*                         DEFINED BY THE USER )                     *
*              ISET = 2  'VALENCE' SCENARIO,  NEXT-TO-LEADING ORDER *
*                        (DATA FILE 'VALNLO.GRID' UNIT=22, TO BE    *
*                         DEFINED BY THE USER )                     *
*              ISET = 3  'STANDARD' SCENARIO, LEADING ORDER         *
*                        (DATA FILE 'STDLO.GRID' UNIT=33, TO BE     *
*                         DEFINED BY THE USER )                     *
*              ISET = 4  'VALENCE' SCENARIO,  LEADING ORDER         *
*                        (DATA FILE 'VALLO.GRID' UNIT=44, TO BE     *
*                         DEFINED BY THE USER )                     *
*                                                                   *
*            X  = Bjorken-x       (between  1.E-4  and  1)          *
*            Q2 = scale in GeV**2 (between  0.4  and   1.E4)        *
*             (for values outside the allowed range the program     *
*              writes a warning and extrapolates to the x and       *
*              Q2 values requested)                                 *
*                                                                   *
*   OUTPUT:  UV = x * ( DELTA u - DELTA u(bar) ),                   *
*            DV = x * ( DELTA d - DELTA d(bar) ),                   *        
*            QB = x * POLARIZED LIGHT SEA,                          *   
*                 QB= x * ( (DELTA U(BAR) + DELTA D(BAR))/2 )       * 
*            ST = x * DELTA STRANGE = x * DELTA STRANGE(BAR)        *     
*            GL = x * DELTA GLUON                                   *
*                                                                   *
*            always x times the distribution is returned            *
*                                                                   *
*            The sets are the result of a combined fit to           *
*            data for the spin asymmetries A_1 (p,n,d)              *
*                                                                   *
*   COMMON:  The main program or the calling routine has to have    *
*            a common block  COMMON / INTINI / IINI , and  IINI     *
*            has always to be zero when PARPOL is called for the    *
*            first time or when 'ISET' has been changed.            *
*                                                                   *
*********************************************************************
*
cfhe      SUBROUTINE PARPOL (ISET, X, Q2, UV, DV, QB, ST, GL)
      SUBROUTINE PARPOL (PATH, X, Q2, UV, DV, QB, ST, GL)
cfhe
      
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      
cfhe
      CHARACTER*130 PATH
cfhe

      PARAMETER (NPART=5, NX=42, NQ=21, NARG=2)
      DIMENSION XUVF(NX,NQ), XDVF(NX,NQ), XQBF(NX,NQ), 
     1          XSF(NX,NQ), XGF(NX,NQ), XGPF(NX,NQ), XGNF(NX,NQ),
     2          PARTON (NPART,NQ,NX-1), 
     3          QS(NQ), XB(NX), XT(NARG), NA(NARG), ARRF(NX+NQ) 
      COMMON / INTINI / IINI

cfhe  deactivate caching
cfhe      SAVE XUVF, XDVF, XQBF, XSF, XGF, XGPF, XGNF, NA, ARRF
*...BJORKEN-X AND Q**2 VALUES OF THE GRID :
       DATA QS / 0.4D0, 0.75D0, 1.0D0, 1.5D0, 2.5D0, 
     1           4.0D0, 6.4D0, 1.0D1, 1.5D1, 2.5D1, 4.0D1, 6.4D1,
     2           1.0D2, 1.8D2, 3.2D2, 5.8D2, 1.0D3, 1.8D3,
     3           3.2D3, 5.8D3, 1.0D4 /
       DATA XB / 1.D-4, 1.5D-4, 2.2D-4, 3.2D-4, 4.8D-4, 7.D-4,
     2           1.D-3, 1.5D-3, 2.2D-3, 3.2D-3, 4.8D-3, 7.D-3,
     3           1.D-2, 1.5D-2, 2.2D-2, 3.2D-2, 5.0D-2, 7.5D-2,
     4           0.1, 0.125, 0.15, 0.175, 0.2, 0.225, 0.25, 0.275,
     5           0.3, 0.325, 0.35, 0.375, 0.4, 0.45,  0.5, 0.55,
     6           0.6, 0.65,  0.7,  0.75,  0.8, 0.85,  0.9, 1.0 /
*...CHECK OF X AND Q2 VALUES : 
       IF ( (X.LT.1.0D-4) .OR. (X.GT.1.0D0) ) THEN
           WRITE(6,91) 
  91       FORMAT (2X,'PARTON INTERPOLATION: X OUT OF RANGE')
C          GOTO 60
       ENDIF
       IF ( (Q2.LT.0.4D0) .OR. (Q2.GT.1.D4) ) THEN
           WRITE(6,92) 
  92       FORMAT (2X,'PARTON INTERPOLATION: Q2 OUT OF RANGE')
C          GOTO 60
       ENDIF
*...INITIALIZATION :
*    SELECTION AND READING OF THE GRID :
*    FILE - NO. = 11 FOR NLO 'STANDARD' SCENARIO ( FIRST NUMBER IN THE 
*                                                  GRID: 1.040E-03 )     
*    FILE - NO. = 22 FOR NLO 'VALENCE'  SCENARIO ( FIRST NUMBER IN THE 
*                                                  GRID: 9.740E-04 )     
*    FILE - NO. = 33 FOR  LO 'STANDARD' SCENARIO ( FIRST NUMBER IN THE 
*                                                  GRID: 1.731E-03 )     
*    FILE - NO. = 44 FOR  LO 'VALENCE'  SCENARIO ( FIRST NUMBER IN THE 
*                                                  GRID: 1.846E-03 )     
cfhe      IF (IINI.NE.0) GOTO 16
cfhe      IF (ISET.EQ.1) THEN
cfhe       IIREAD=11       
cfhe       OPEN(UNIT=11,FILE='STDNLO.GRID',STATUS='OLD')
cfhe      ELSE IF (ISET.EQ.2) THEN
cfhe       IIREAD=22
cfhe       OPEN(UNIT=22,FILE='VALNLO.GRID',STATUS='OLD')
cfhe      ELSE IF (ISET.EQ.3) THEN
cfhe       IIREAD=33       
cfhe       OPEN(UNIT=33,FILE='STDLO.GRID',STATUS='OLD')
cfhe      ELSE IF (ISET.EQ.4) THEN
cfhe       IIREAD=44
cfhe       OPEN(UNIT=44,FILE='VALLO.GRID',STATUS='OLD')
cfhe      ELSE
cfhe        WRITE(6,93)
cfhe  93    FORMAT (2X,'PARTON INTERPOLATION: ISET OUT OF RANGE')
cfhe        GOTO 60
cfhe      END IF

cfhe   Change to read a given file path
       IIREAD = 99
       OPEN(UNIT=IIREAD,FILE=PATH,STATUS='OLD')
cfhe

C
       DO 15 M = 1, NX-1 
       DO 15 N = 1, NQ
       READ(IIREAD,90) PARTON(1,N,M), PARTON(2,N,M), PARTON(3,N,M), 
     1                 PARTON(4,N,M), PARTON(5,N,M)
  90   FORMAT (5(1PE10.3))
  15   CONTINUE


cfhe 
       CLOSE(IIREAD)
cfhe

C
      IINI = 1
*....ARRAYS FOR THE INTERPOLATION SUBROUTINE :
      DO 10 IQ = 1, NQ
      DO 20 IX = 1, NX-1
        XB0 = XB(IX) 
        XB1 = 1.D0-XB(IX)
        XUVF(IX,IQ) = PARTON(1,IQ,IX) / (XB1**3 * XB0**0.7)
        XDVF(IX,IQ) = PARTON(2,IQ,IX) / (XB1**4 * XB0**0.6)
        XQBF(IX,IQ) = PARTON(3,IQ,IX) / (XB1**7 * XB0**0.3) 
        XSF(IX,IQ)  = PARTON(4,IQ,IX) / (XB1**7 * XB0**0.3) 
        XGF(IX,IQ)  = PARTON(5,IQ,IX) / (XB1**10 * XB0**0.3)
  20  CONTINUE
        XUVF(NX,IQ) = 0.D0
        XDVF(NX,IQ) = 0.D0
        XQBF(NX,IQ) = 0.D0
        XSF(NX,IQ)  = 0.D0
        XGF(NX,IQ)  = 0.D0
  10  CONTINUE  
      NA(1) = NX
      NA(2) = NQ
      DO 30 IX = 1, NX
        ARRF(IX) = DLOG(XB(IX))
  30  CONTINUE
      DO 40 IQ = 1, NQ
        ARRF(NX+IQ) = DLOG(QS(IQ))
  40  CONTINUE
  16  CONTINUE
*...INTERPOLATION :
      XT(1) = DLOG(X)
      XT(2) = DLOG(Q2)
      UV = GRSV_DFINT(NARG,XT,NA,ARRF,XUVF) * (1.D0-X)**3 * X**0.7
      DV = GRSV_DFINT(NARG,XT,NA,ARRF,XDVF) * (1.D0-X)**4 * X**0.6 
      QB = GRSV_DFINT(NARG,XT,NA,ARRF,XQBF) * (1.D0-X)**7 * X**0.3
      ST = GRSV_DFINT(NARG,XT,NA,ARRF,XSF)  * (1.D0-X)**7 * X**0.3
      GL = GRSV_DFINT(NARG,XT,NA,ARRF,XGF)  * (1.D0-X)**10 * X**0.3
 60   RETURN
      END
*
*...CERN LIBRARY ROUTINE E104 (INTERPOLATION) :
*
      FUNCTION GRSV_DFINT(NARG,ARG,NENT,ENT,TABLE)
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      DIMENSION ARG(5),NENT(5),ENT(63),TABLE(882)
      DIMENSION D(5),NCOMB(5),IENT(5)
      KD=1
      M=1
      JA=1
         DO 5 I=1,NARG
      NCOMB(I)=1
      JB=JA-1+NENT(I)
         DO 2 J=JA,JB
      IF (ARG(I).LE.ENT(J)) GO TO 3
    2 CONTINUE
      J=JB
    3 IF (J.NE.JA) GO TO 4
      J=J+1
    4 JR=J-1
      D(I)=(ENT(J)-ARG(I))/(ENT(J)-ENT(JR))
      IENT(I)=J-JA
      KD=KD+IENT(I)*M
      M=M*NENT(I)
    5 JA=JB+1
      GRSV_DFINT=0.D0
   10 FAC=1.D0
      IADR=KD
      IFADR=1
         DO 15 I=1,NARG
      IF (NCOMB(I).EQ.0) GO TO 12
      FAC=FAC*(1.D0-D(I))
      GO TO 15
   12 FAC=FAC*D(I)
      IADR=IADR-IFADR
   15 IFADR=IFADR*NENT(I)
      GRSV_DFINT=GRSV_DFINT+FAC*TABLE(IADR)
      IL=NARG
   40 IF (NCOMB(IL).EQ.0) GO TO 80
      NCOMB(IL)=0
      IF (IL.EQ.NARG) GO TO 10
      IL=IL+1
         DO 50  K=IL,NARG
   50 NCOMB(K)=1
      GO TO 10
   80 IL=IL-1
      IF(IL.NE.0) GO TO 40
      RETURN
      END


