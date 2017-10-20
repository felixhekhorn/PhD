      SUBROUTINE TUNGB(X,Q2,UV,DV,GL,UBAR,CSEA,BSEA,TSEA,IFLAG)         MOR00010
C*****PARAMETRIZATIONS GIVEN BY MORFIN AND TUNG, FERMILAB-PUB-90/74     MOR00020
C*****Q02=4 GEV^2, B1 - FITS (BCDMS)                                    MOR00030
C*****IFLAG=1 MEANS HIGHER ORDER DIS ('FIT B1-DIS'), LAMBDA4=194 MEV    MOR00040
C*****IFLAG=2 MEANS HIGHER ORDER MSBAR ('FIT B1-MSBAR'), LAMBDA4=194 MEVMOR00050
C*****THE SEA IS SU(3)-SYMMETRIC, I.E. UBAR=USEA=DBAR=DSEA=SBAR=SSEA    MOR00060
C*****THIS SUBROUTINE ALWAYS GIVES X TIMES THE DISTRIBUTION !           MOR00070
C*****THE PARAMETRIZATIONS ARE VALID IN THE RANGE 1E-5 < X < 1,         MOR00080
C*****3 GEV < SQRT(Q2) < 1E4 GEV                                        MOR00090
      IMPLICIT DOUBLE PRECISION (A-Z)                                   MOR00100
      INTEGER IFLAG,I                                                   MOR00110
      DIMENSION CU(3,4,2),CD(3,4,2),CG(3,4,2),CS(3,4,2),CC(3,4,2),      MOR00120
     #CB(3,4,2),CT(3,4,2)                                               MOR00130
      DATA CU/1.59D0,-0.34D0,-0.10D0,0.14D0,0.13D0,-0.01D0,             MOR00140
     #        3.65D0,0.53D0,0.03D0,-1.81D0,0.86D0,0.02D0,               MOR00150
     #        2.00D0,-0.81D0,0.05D0,0.09D0,0.24D0,-0.05D0,              MOR00160
     #        4.40D0,-0.20D0,0.25D0,-2.24D0,1.53D0,-0.23D0/             MOR00170
      DATA CD/1.30D0,-0.57D0,-0.09D0,0.19D0,0.15D0,-0.02D0,             MOR00180
     #        5.24D0,0.44D0,0.05D0,-1.81D0,1.06D0,-0.02D0,              MOR00190
     #        1.66D0,-0.94D0,0.03D0,0.18D0,0.18D0,-0.03D0,              MOR00200
     #        6.04D0,-0.25D0,0.23D0,-2.09D0,1.42D0,-0.14D0/             MOR00210
      DATA CG/1.48D0,-2.49D0,0.04D0,-0.14D0,-0.11D0,0.03D0,             MOR00220
     #        6.75D0,-0.54D0,-0.15D0,-0.50D0,2.13D0,-0.24D0,            MOR00230
     #        0.92D0,-2.28D0,-0.07D0,-0.07D0,-0.16D0,0.06D0,            MOR00240
     #        5.79D0,-0.68D0,-0.23D0,-0.01D0,1.93D0,-0.11D0/            MOR00250
      DATA CS/-1.08D0,-1.33D0,-0.03D0,-0.13D0,-0.21D0,0.06D0,           MOR00260
     #        8.40D0,-0.51D0,0.07D0,-0.88D0,1.18D0,-0.05D0,             MOR00270
     #        -0.60D0,-1.76D0,0.13D0,-0.13D0,-0.27D0,0.09D0,            MOR00280
     #        9.31D0,-0.94D0,0.21D0,-1.18D0,1.31D0,-0.10D0/             MOR00290
      DATA CC/-4.22D0,0.88D0,-0.69D0,-0.02D0,-0.17D0,0.03D0,            MOR00300
     #        7.29D0,1.08D0,-0.39D0,0.90D0,0.50D0,0.08D0,               MOR00310
     #        -2.94D0,-1.12D0,0.15D0,-0.19D0,0.16D0,-0.13D0,            MOR00320
     #        7.94D0,-0.05D0,0.27D0,-0.46D0,2.93D0,-1.05D0/             MOR00330
      DATA CB/-6.42D0,2.67D0,-1.21D0,-0.09D0,-0.03D0,-0.02D0,           MOR00340
     #        6.47D0,1.39D0,-0.42D0,1.03D0,1.00D0,-0.14D0,              MOR00350
     #        -2.95D0,-3.21D0,1.38D0,-0.62D0,0.99D0,-0.51D0,            MOR00360
     #        9.97D0,-6.33D0,3.71D0,-3.00D0,8.42D0,-3.61D0/             MOR00370
      DATA CT/-12.92D0,8.33D0,-2.68D0,-0.36D0,0.32D0,-0.13D0,           MOR00380
     #        15.74D0,-12.73D0,4.51D0,-0.30D0,3.35D0,-0.91D0,           MOR00390
     #        -3.88D0,-1.59D0,-0.05D0,-0.78D0,-0.07D0,0.40D0,           MOR00400
     #        3.80D0,2.13D0,0.96D0,-2.37D0,0.48D0,2.30D0/               MOR00410
      XL2=0.194D0**2                                                    MOR00420
      I=IFLAG                                                           MOR00430
      Q02=4.D0                                                          MOR00440
      S=DLOG(DLOG(Q2/XL2)/DLOG(Q02/XL2))                                MOR00450
      UV=FLAVOR(X,S,CU(1,1,I),CU(2,1,I),CU(3,1,I),CU(1,2,I),CU(2,2,I),  MOR00460
     #    CU(3,2,I),CU(1,3,I),CU(2,3,I),CU(3,3,I),CU(1,4,I),CU(2,4,I),  MOR00470
     #    CU(3,4,I))                                                    MOR00480
      DV=FLAVOR(X,S,CD(1,1,I),CD(2,1,I),CD(3,1,I),CD(1,2,I),CD(2,2,I),  MOR00490
     #    CD(3,2,I),CD(1,3,I),CD(2,3,I),CD(3,3,I),CD(1,4,I),CD(2,4,I),  MOR00500
     #    CD(3,4,I))                                                    MOR00510
      GL=FLAVOR(X,S,CG(1,1,I),CG(2,1,I),CG(3,1,I),CG(1,2,I),CG(2,2,I),  MOR00520
     #    CG(3,2,I),CG(1,3,I),CG(2,3,I),CG(3,3,I),CG(1,4,I),CG(2,4,I),  MOR00530
     #    CG(3,4,I))                                                    MOR00540
      UBAR=FLAVOR(X,S,CS(1,1,I),CS(2,1,I),CS(3,1,I),CS(1,2,I),CS(2,2,I),MOR00550
     #      CS(3,2,I),CS(1,3,I),CS(2,3,I),CS(3,3,I),CS(1,4,I),CS(2,4,I),MOR00560
     #      CS(3,4,I))                                                  MOR00570
      CSEA=FLAVOR(X,S,CC(1,1,I),CC(2,1,I),CC(3,1,I),CC(1,2,I),CC(2,2,I),MOR00580
     #      CC(3,2,I),CC(1,3,I),CC(2,3,I),CC(3,3,I),CC(1,4,I),CC(2,4,I),MOR00590
     #      CC(3,4,I))                                                  MOR00600
      BSEA=FLAVOR(X,S,CB(1,1,I),CB(2,1,I),CB(3,1,I),CB(1,2,I),CB(2,2,I),MOR00610
     #      CB(3,2,I),CB(1,3,I),CB(2,3,I),CB(3,3,I),CB(1,4,I),CB(2,4,I),MOR00620
     #      CB(3,4,I))                                                  MOR00630
      TSEA=FLAVOR(X,S,CT(1,1,I),CT(2,1,I),CT(3,1,I),CT(1,2,I),CT(2,2,I),MOR00640
     #      CT(3,2,I),CT(1,3,I),CT(2,3,I),CT(3,3,I),CT(1,4,I),CT(2,4,I),MOR00650
     #      CT(3,4,I))                                                  MOR00660
      RETURN                                                            MOR00670
      END                                                               MOR00680
C                                                                       MOR00690
      DOUBLE PRECISION FUNCTION FLAVOR(X,S,C00,C10,C20,C01,C11,C21,     MOR00700
     #     C02,C12,C22,C03,C13,C23)                                     MOR00710
      IMPLICIT DOUBLE PRECISION (A-Z)                                   MOR00720
      A0=C00+C10*S+C20*S**2                                             MOR00730
      A1=C01+C11*S+C21*S**2                                             MOR00740
      A2=C02+C12*S+C22*S**2                                             MOR00750
      A3=C03+C13*S+C23*S**2                                             MOR00760
      FLAVOR=DEXP(A0)*X**A1*(1.D0-X)**A2*(DLOG(1.D0+1.D0/X))**A3        MOR00770
      RETURN                                                            MOR00780
      END                                                               MOR00790
