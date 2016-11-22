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
    /*Timer::make("hg1SV");
    Timer::make("v0@hg1SV");
    Timer::make("v1@hg1SV");
    Timer::make("v5@hg1SV");
    Timer::make("v6@hg1SV");
    Timer::make("c6@hg1SV");
    Timer::make("hg1SVDelta");
    Timer::make("hg1H");*/
    
    //dbl m2 = 1.5*1.5;
    //uint nlf = 3;
    dbl m2 = 4.75*4.75;
    uint nlf = 4;
    dbl Delta = 1e-6;
    dbl q2 = -1e2;
    dbl aS = 0.152761042522;// Q²=1e1 -> 0.189663591654;// Q²=1e2 -> 0.152761042522;
    dbl mu02 = 4.*m2-q2;
    ElProduction oG(m2,q2,Delta,G,nlf);
    ElProduction oL(m2,q2,Delta,L,nlf);
    ElProduction oP(m2,q2,Delta,P,nlf);
    oG.setPdf("MSTW2008nlo90cl",0);oL.setPdf("MSTW2008nlo90cl",0);oP.setPdf("DSSV2014",0);
    oG.setMu2(mu02);oL.setMu2(mu02);oP.setMu2(mu02);
    oG.setAlphaS(aS);oL.setAlphaS(aS);oP.setAlphaS(aS);
    uint N = 11;
    for (uint j = 0; j < N; ++j) {
        dbl x = pow(10,-4./(100.)*(49.+(dbl)j));
        oG.setBjorkenX(x);oL.setBjorkenX(x);oP.setBjorkenX(x);
        dbl g = oG.Fg0();
        dbl l = oL.Fg0();
        dbl p = oP.Fg0();
        printf("%e\t%e\t%e\t%e\n",x,g+l*3./2.,l,p);
    }
    /*uint N = 11;
    for (uint j = 0; j < N; ++j) {
        //dbl q2 = -pow(10.,0.-3.*(dbl)j/(N-1));
        dbl eta = pow(10.,-3.+1.*(dbl)j/((dbl)std::max((uint)1,N-1)));
        oG.setEta(eta);
        oL.setEta(eta);
        oP.setEta(eta);
        dbl g = oG.cg1();
        dbl l = 1/0.;//oL.cg0();
        dbl p = 1/0.;
        printf("%e\t%e\t%e\t%e\n",eta,g,l,p);
    }*/
    /*Timer::logAll(cout);
    Timer::deleteAll();*/
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
    
    /*dbl xi = 1e2;
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
    return EXIT_SUCCESS;*/
    dbl m2 = 4.75*4.75;
    uint nlf = 4;
    
    // called function (macro needed ...)
    #define call(etaV) oG.setEta(etaV);oL.setEta(etaV);\
        dbl g = oG.cg0();dbl l = oL.cg0();\
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
    ElProduction oG(m2,q2,Delta,G,nlf);
    ElProduction oL(m2,q2,Delta,L,nlf);
    etaLoop(call)
    for (uint p = 0; p < 4; ++p) {
        q2 = -pow(10.,p);
        oG.setQ2(q2);
        oL.setQ2(q2);
        etaLoop(call)
    }
    return EXIT_SUCCESS;
}