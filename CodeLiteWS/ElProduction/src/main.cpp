#include "config.h"

#include <stdlib.h>

#include "InclusiveElProduction.h"
#include "ExclusiveElProduction.h"

int runInclusive();
/*int test() {
    return EXIT_SUCCESS;
}*/

/**
 * @brief main
 * @param argc
 * @param argv
 * @return EXIT_SUCCESS on success
 */
int main(int argc, char **argv) {
    //return test();
	//return runInclusive();
    //dbl m2 = 1.5*1.5;
    dbl m2 = 4.75*4.75;
    dbl q2 = -1.e2;
    uint nlf = 0;
    dbl Delta = 1e-6;
    dbl xTilde = .8;
    dbl omega = 1.;
    dbl deltax = 5e-7;
    dbl deltay = 1e-6;
    dbl aS = 0.152761042522;// Q²=1e1 -> 0.189663591654;// Q²=1e2 -> 0.152761042522;
    dbl mu02 = (4.*m2-q2);
    InclusiveElProduction iG(m2,q2,Delta,L,nlf);
    ExclusiveElProduction eG(m2,q2,L,nlf,xTilde,omega,deltax,deltay);
    
    //iG.setPdf("MSTW2008nlo90cl",0);eG.setPdf("MSTW2008nlo90cl",0);
    //iG.setMu2(mu02);eG.setMu2(mu02);
    //iG.setAlphaS(aS);eG.setAlphaS(aS);
    
    uint N = 21;
    dbl eta = 1.;
    //dbl bjorkenX = 1.;
    for (uint j = 0; j < N; ++j) {
        eta = pow(10,-4.+4./(N-1)*j);
        //bjorkenX = pow(10,-2.+1./(N-1)*j);
        iG.setEta(eta);
        eG.setEta(eta);
        //iG.setBjorkenX(bjorkenX);
        //eG.setBjorkenX(bjorkenX);
        cdbl i = iG.cg1();
        /*eG.setXTilde(.3);
        cdbl e1 = eG.cgBarF1();
        eG.setXTilde(.5);
        cdbl e2 = eG.cgBarF1();
        eG.setXTilde(.8);
        cdbl e3 = eG.cgBarF1();
        eG.setXTilde(.9);
        cdbl e4 = eG.cgBarF1();
        printf("%e\t%e\t%e\t%e\t%e\n",eta,(i-e1)/i,(i-e2)/i,(i-e3)/i,(i-e4)/i);*/
        eG.setOmega(.5);
        cdbl e1 = eG.cg1();
        eG.setOmega(1.);
        cdbl e2 = eG.cg1();
        eG.setOmega(1.5);
        cdbl e3 = eG.cg1();
        printf("%e\t%e\t%e\t%e\t%e\n",eta,i,(i-e1)/i,(i-e2)/i,(i-e3)/i);
        /*eG.setDeltay(1e-5);
        cdbl e1 = eG.cg1();
        eG.setDeltay(1e-6);
        cdbl e2 = eG.cg1();
        eG.setDeltay(1e-7);
        cdbl e3 = eG.cg1();
        eG.setDeltay(1e-8);
        cdbl e4 = eG.cg1();
        printf("%e\t%e\t%e\t%e\t%e\t%e\n",eta,i,(i-e1)/i,(i-e2)/i,(i-e3)/i,(i-e4)/i);*/
        
        //cdbl e = eG.cgBarR1();
        //printf("%e\t%e\t%e\t%e\t%e\n",eta,i,e,i-e,(i-e)/i);
    }
    /*iG.setEta(eta);
    eG.setEta(eta);
    printf("%e\t%e\t%e\n",eta,iG.cg1(),eG.cg1());*/
    /*m2 = 5*5;
    iG.setM2(m2);
    eG.setM2(m2);
    eta = 1;
    iG.setEta(eta);
    eG.setEta(eta);
    printf("%e\t%e\t%e\n",eta,iG.cq1(),eG.cq1());
    q2 = -10.;
    iG.setQ2(q2);
    eG.setQ2(q2);
    eta = .01;
    iG.setEta(eta);
    eG.setEta(eta);
    printf("%e\t%e\t%e\n",eta,iG.cq1(),eG.cq1());
    q2 = -1000.;
    iG.setQ2(q2);
    eG.setQ2(q2);
    eta = .001;
    iG.setEta(eta);
    eG.setEta(eta);
    printf("%e\t%e\t%e\n",eta,iG.cq1(),eG.cq1());*/
    return EXIT_SUCCESS;
}

int runInclusive(){
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
    InclusiveElProduction oG(m2,q2,Delta,G,nlf);
    InclusiveElProduction oL(m2,q2,Delta,L,nlf);
    InclusiveElProduction oP(m2,q2,Delta,P,nlf);
    
    /*oP.setM2(1.);
    oP.setQ2(-100.);
    oP.setPartonicS(60.);
    dbl p = oP.dq1();
    printf("%e",p);*/
    
    
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