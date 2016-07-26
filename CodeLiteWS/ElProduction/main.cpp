#include "config.h"

#include <stdlib.h>

#include "ElProduction.h"

/**
 * @brief main
 * @param argc
 * @param argv
 * @return EXIT_SUCCESS on success
 */
int main(int argc, char **argv) {
    dbl m2 = 4.75*4.75;
    dbl q2 = -1.e-2;
    dbl Delta = 1e-6;
    uint N = 100;
    for(uint j = 0; j < N; ++j) {
        dbl eta = pow(10.,-3.+6./(N-1)*j);
        //Delta = eta/100.*m2;
        dbl s = 4.*m2*(1.+eta);
        dbl sp = s-q2;
        ElProduction oG(m2,q2,sp,Delta,G,4);
        ElProduction oL(m2,q2,sp,Delta,L,4);
        //dbl c0G = oG.c0();
        //dbl c0L = oL.c0();
        //printf("%e\t%e\t%e\n",eta,c0G+c0L/2.,c0L);
        //dbl c1G = oG.c1();
        //dbl c1L = oL.c1();
        //printf("%e\t%e\t%e\n",eta,c1G+c1L/2.,c1L);
        /*dbl cgBarF1G = oG.cgBarF1();
        dbl cgBarR1G = oG.cgBarR1();
        dbl cgBarF1L = oL.cgBarF1();
        dbl cgBarR1L = oL.cgBarR1();
        printf("%e\t%e\t%e\t%e\t%e\n",eta,cgBarF1G+cgBarF1L/2.,cgBarF1L,cgBarR1G+cgBarR1L/2.,cgBarR1L);*/
        /*dbl cq1G = oG.cq1();
        dbl cq1L = oL.cq1();
        printf("%e\t%e\t%e\n",eta,cq1G+cq1L/2.,cq1L);*/
        /*dbl cqBarF1G = oG.cqBarF1();
        dbl cqBarF1L = oL.cqBarF1();
        printf("%e\t%e\t%e\n",eta,cqBarF1G+cqBarF1L/2.,cqBarF1L);*/
        dbl dq1G = oG.dq1();
        dbl dq1L = oL.dq1();
        printf("%e\t%e\t%e\n",eta,dq1G+dq1L/2.,dq1L);
    }
    /*for(uint j = 0; j < 17; ++j) {
        dbl eta = 1e0 + j*.5e0;
        //Delta = eta/100.*m2;
        dbl s = 4.*m2*(1.+eta);
        dbl sp = s-q2;
        gluonicPart oG(m2,q2,sp,Delta,G,4);
        gluonicPart oL(m2,q2,sp,Delta,L,4);
        //dbl c0G = oG.c0();
        //dbl c0L = oL.c0();
        //printf("%e\t%e\t%e\t%e\n",eta,-q2,c0L,c0G+c0L/2.);
        //dbl c1G = oG.c1();
        //dbl c1L = oL.c1();
        //printf("%e\t%e\t%e\t%e\n",eta,-q2,c1L,c1G+c1L/2.);
        dbl cgBarF1G = oG.cgBarF1();
        dbl cgBarR1G = oG.cgBarR1();
        dbl cgBarF1L = oL.cgBarF1();
        dbl cgBarR1L = oL.cgBarR1();
        printf("%e\t%e\t%e\t%e\n",eta,-q2,cgBarF1L+cgBarR1L,cgBarF1G+cgBarF1L/2.+cgBarR1G+cgBarR1L/2.);
    }*/
	return EXIT_SUCCESS;
}