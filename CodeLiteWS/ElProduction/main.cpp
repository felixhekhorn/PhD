#include "config.h"

#include <stdlib.h>

#include "gluonicPart.h"

/**
 * @brief main
 * @param argc
 * @param argv
 * @return EXIT_SUCCESS on success
 */
int main(int argc, char **argv) {
    dbl m2 = 4.75*4.75;
    dbl q2 = -1.e2;
    dbl Delta = 1e-6;
    uint N = 100;
    /*for(uint j = 0; j < N; ++j) {
        dbl eta = pow(10.,-3.+6./(N-1)*j);
        //Delta = eta/100.*m2;
        dbl s = 4.*m2*(1.+eta);
        dbl sp = s-q2;
        gluonicPart oG(m2,q2,sp,Delta,G);
        gluonicPart oL(m2,q2,sp,Delta,L);
        //dbl c0G = oG.c0();
        //dbl c0L = oL.c0();
        //printf("%e\t%e\t%e\n",eta,c0G+c0L/2.,c0L);
        //dbl c1G = oG.c1();
        //dbl c1L = oL.c1();
        //printf("%e\t%e\t%e\n",eta,c1G+c1L/2.,c1L);
        dbl cBarF1G = oG.cBarF1();
        dbl cBarR1G = oG.cBarR1();
        dbl cBarF1L = oL.cBarF1();
        dbl cBarR1L = oL.cBarR1();
        printf("%e\t%e\t%e\t%e\t%e\n",eta,cBarF1G+cBarF1L/2.,cBarF1L,cBarR1G+cBarR1L/2.,cBarR1L);
    }*/
    for(uint j = 0; j < 17; ++j) {
        dbl eta = 1e0 + j*.5e0;
        //Delta = eta/100.*m2;
        dbl s = 4.*m2*(1.+eta);
        dbl sp = s-q2;
        gluonicPart oG(m2,q2,sp,Delta,G);
        gluonicPart oL(m2,q2,sp,Delta,L);
        //dbl c0G = oG.c0();
        //dbl c0L = oL.c0();
        //printf("%e\t%e\t%e\t%e\n",eta,-q2,c0L,c0G+c0L/2.);
        //dbl c1G = oG.c1();
        //dbl c1L = oL.c1();
        //printf("%e\t%e\t%e\t%e\n",eta,-q2,c1L,c1G+c1L/2.);
        dbl cBarF1G = oG.cBarF1();
        dbl cBarR1G = oG.cBarR1();
        dbl cBarF1L = oL.cBarF1();
        dbl cBarR1L = oL.cBarR1();
        printf("%e\t%e\t%e\t%e\n",eta,q2,cBarF1L+cBarR1L,cBarF1G+cBarF1L/2.+cBarR1G+cBarR1L/2.);
    }
	return EXIT_SUCCESS;
}