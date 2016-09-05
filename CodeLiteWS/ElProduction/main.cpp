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
    
    return test();
    //return Marco();
    
    dbl m2 = 4.75*4.75;
    dbl Delta = 1e-6;
    dbl q2 = -1.e-2;
    ElProduction oG(m2,q2,Delta,G,4);
    ElProduction oL(m2,q2,Delta,L,4);
    ElProduction oP(m2,q2,Delta,P,4);
    
    /*
    uint N = 101;
    for(uint j = 0; j < N; ++j) {
        dbl eta = pow(10.,-3.+6./(N-1)*j);
        oG.setEta(eta);
        oL.setEta(eta);
        oP.setEta(eta);
        
        //dbl g = oG.cg0(), l = oL.cg0(), p = oP.cg0();
        dbl g = oG.cg1(), l = oL.cg1(), p = oP.cg1();
        
        printf("%e\t%e\t%e\t%e\n",eta,g+l/2.,l,p);
    }
    */
	return EXIT_SUCCESS;
}

int test(){
    dbl Delta = 1e-6;
    dbl m2 = 1.5*1.5;
    dbl q2 = -1.e2;
    ElProduction o(m2,q2,Delta,G,3);
    //o.setPdf("cteq66",0);
    /*o.setPdf("DSSV90cl",0);
    o.setMu2(4.*m2-q2);
    o.setBjorkenX(7.943282e-01);
    o.setAlphaS(0.18904419407331516);
    printf("%e\n",o.Fg1());*/
    /*dbl xi = 1e0;
    ElProduction oG(1.,-xi,Delta,G,4);
    ElProduction oL(1.,-xi,Delta,L,4);
    dbl eta;
    uint N = 51;
    for (uint j = 0; j < N; ++j) {
        eta = pow(10.,2.-6./(N-1.)*j);
        oG.setEta(eta);
        oL.setEta(eta);
        printf("%e\t%e\n",eta,(oG.dq1()+oL.dq1()/2.));
    }*/
    /*oG.setEta(1e-4);
    printf("%e",oG.dq1());*/
    /*uint N = 21;
    for(uint j = 0; j < N; ++j) {
        dbl m2 = 120. - 100.*j/(N-1);
        printf("%e\t",m2);
        ElProduction oG(m2,-1e3,Delta,G,4);
        oG.setEta(1e-3);
        //oG.setPartonicS(400);
        printf("%e\t",oG.dq1());
        oG.setEta(2e-3);
        //oG.setPartonicS(390);
        printf("%e\t",oG.dq1());
        oG.setEta(3e-3);
        //oG.setPartonicS(380);
        printf("%e\t",oG.dq1());
        oG.setEta(4e-3);
        //oG.setPartonicS(370);
        printf("%e\n",oG.dq1());
    }*/
    /*dbl m2 = 1.5*1.5;
    ElProduction o(m2,-1e2,Delta,G,4);
    uint N = 21;
    for(uint j = 0; j < N; ++j) {
        dbl q2 = -pow(10,3.+4./(N-1)*j);
        o.setQ2(q2);
        printf("%e\t",-q2);
        o.setEta(1e-3);
        printf("%e\t",o.dq1());
        o.setEta(2e-3);
        printf("%e\t",o.dq1());
        o.setEta(1e-2);
        printf("%e\t",o.dq1());
        o.setEta(1e-1);
        printf("%e\n",o.dq1());
    }*/
    /*ElProduction o(1.5*1.5,-1e3,Delta,G,4);
    o.setEta(1e-3);
    printf("%e\n",o.dq1());*/
    //IntAG2(1.5*1.5,-1e3,1009.009,1.1153579464537023e-6,-519.81269239429935);
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