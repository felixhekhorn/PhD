#include "config.h"

#include <stdlib.h>

#include "ElProduction.h"

int Marco();
int test();

/**
 * @brief main
 * @param argc
 * @param argv
 * @return EXIT_SUCCESS on success
 */
int main(int argc, char **argv) {
    //return test();
    //return Marco();
    
    dbl m2 = 4.75*4.75;
    uint nlf = 4;
    dbl Delta = 1e-6;
    dbl q2 = -1e-5;
    ElProduction o(m2,q2,Delta,P,nlf);
    o.setEta(pow(10.,-.5));
    uint N = 10;
    for (uint j = 0; j < N; ++j) {
        //dbl q2 = -pow(10.,0.-3.*(dbl)j/(N-1));
        dbl eta = pow(10.,-1.+(dbl)j/(N-1));
        o.setEta(eta);
        printf("%e\t%e\n",eta,o.cq1());
    }
	return EXIT_SUCCESS;
}

int test(){
    dbl Delta = 1e-6;
    dbl m2 = 1.5*1.5;
    dbl q2 = -1.e2;
    ElProduction o(m2,q2,Delta,L,3);
    o.setPdf("MorfinTungB",0);
    o.setMu2(4.*m2-q2);
    dbl x = 1e-4;
    o.setBjorkenX(x);
    o.setAlphaS(0.18904419407331516);
    printf("%e\n",x*o.Fg0());
    return EXIT_SUCCESS;
}

int Marco() {
    dbl Delta = 1e-6;
    
    dbl xi = 1e2;
    const uint neta = 43;
    dbl aeta[neta] = {0.1000e-02, 0.3000e-02,
       0.5000e-02, 0.7000e-02, 0.9000e-02, 0.1000e-01, 0.3000e-01, 
       0.5000e-01, 0.7000e-01, 0.9000e-01, 0.1000e+00, 0.2000e+00, 
       0.3000e+00, 0.4000e+00, 0.5000e+00, 0.6000e+00, 0.7000e+00, 
       0.8000e+00, 0.9000e+00, 0.1000e+01, 0.2000e+01, 0.3000e+01,
       0.4000e+01, 0.5000e+01, 0.6000e+01, 0.7000e+01, 0.8000e+01, 
       0.9000e+01, 0.1000e+02, 0.3000e+02, 0.5000e+02, 0.7000e+02,
       0.9000e+02, 0.1000e+03, 0.2000e+03, 0.3000e+03, 0.5000e+03,
       0.7000e+03, 0.9000e+03, 0.1000e+04, 0.5000e+04, 0.1000e+05,
       0.1000e+06};
    //ElProduction oG(1.,-xi,Delta,G,4);
    ElProduction oL(1.,-xi,Delta,L,4);
    for (uint j = 0; j < neta; ++j) {
        //oG.setEta(aeta[j]);
        oL.setEta(aeta[j]);
        printf("%e\t%e\n",aeta[j],oL.dq1());
    }
    return EXIT_SUCCESS;
/*    dbl m2 = 4.75*4.75;
    
    // called function (macro needed ...)
    #define call(etaV) oG.setEta(etaV);oL.setEta(etaV);\
        dbl g = oG.cq1();dbl l = oL.cq1();\
        printf("%e\t%e\t%e\t%e\n",etaV,-q2,l,g+l/2.);
        
    // do obscure eta loop ;-)
    #define etaLoop(callee) for(int p = -3; p < 3; ++p) {\
        for(uint j = 0; j < 17; ++j) {\
            dbl eta = (1. + j*.5)*pow(10.,p);\
            callee(eta)\
        }\
    }\
    callee(1.e3);
    
    dbl q2 = -1.e-2;
    ElProduction oG(m2,q2,Delta,G,4);
    ElProduction oL(m2,q2,Delta,L,4);
    etaLoop(call)
    for (uint p = 0; p < 4; ++p) {
        q2 = -pow(10.,p);
        oG.setQ2(q2);
        oL.setQ2(q2);
        etaLoop(call)
    }
    return EXIT_SUCCESS;*/
}