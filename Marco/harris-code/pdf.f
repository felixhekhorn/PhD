C.--------------------------------------------------------------
C. INTERFACE TO PDFLIB
C. INPUT:
C.              X = MOMENTUM FRACTION ( 0 < X < 1 )
C.              SCALE2 = SCALE SQUARED IN GEV^2
C.              LANGUAGE
C. OUTPUT:
C.              FILLS COMMON BLOCKS
C.              "COMMON/PDFG/GLUE"
C.              "COMMON/PDFQ /FU ,FD ,FS ,FC ,FB"
C.              "COMMON/PDFAQ/FUB,FDB,FSB,FCB,FBB"
C.              WITH MOMENTUM DENSITIES = X*PROBABILITY DENSITIES
C.
C. SEE PDFLIB USERS MANUAL BY H. PLOTHOW-BESCH FOR FULL DETAILS
C.---------------------------------------------------------------
      SUBROUTINE PDF(X,SCALE2)
      IMPLICIT DOUBLE PRECISION (A-Z)
      DIMENSION FX(-6:6)
      COMMON/PDFG/GLUE
      COMMON/PDFQ /FU ,FD ,FS ,FC ,FB
      COMMON/PDFAQ/FUB,FDB,FSB,FCB,FBB

      SCALE = DSQRT(SCALE2)

      CALL PFTOPDG(X,SCALE,FX)

      FBB  = FX(-5)
      FCB  = FX(-4)
      FSB  = FX(-3)
      FUB  = FX(-2)
      FDB  = FX(-1)
      GLUE = FX(0)
      FD   = FX(1)
      FU   = FX(2)
      FS   = FX(3)
      FC   = FX(4)
      FB   = FX(5)

      RETURN
      END
