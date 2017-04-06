#include "config.h"

#include <stdlib.h>
#include <fstream>

#include "InclusiveElProduction.h"
#include "ExclusiveElProduction.h"
#include "Exclusive/IntKers/KinematicVars.hpp"

int runInclusive();
int test() {
    PdfWrapper pdf("MSTW2008nlo90cl",0);
    cdbl m2 = 1.5*1.5;
    cdbl q2 = -8.5;
    
    uint N = 8;
    for (uint j = 0; j < N; ++j) {
        cdbl y = -1. + pow(10.,-(dbl)j);
        const Exclusive::KinematicVars vs(m2,q2,4.*m2-q2+m2,1.,y,0.,0.);
        printf("%e\t%e\t%e\t%e\t%e\n",y,vs.k10,vs.q0,vs.absq,vs.cosPsi);
    }
    
    return EXIT_SUCCESS;
}

/**
 * @brief main
 * @param argc
 * @param argv
 * @return EXIT_SUCCESS on success
 */
int main(int argc, char **argv) {
    //return test();
	//return runInclusive();
    cdbl q2 = -10.;
    cdbl m2 = 1.5*1.5;
    const uint nlf = 3;
    //cdbl lambdaQCD = .239; // nlf=3
    cdbl lambdaQCD = .194; // nlf=3
    cdbl mu02 = (4.*m2-q2);
    const Exclusive::DynamicScaleFactors mu02F(4.,-1.,0.*1.);
    //dbl mu02 = 1.*m2;
    //Exclusive::DynamicScaleFactors mu02F(1.,0.,0.);
    /*cdbl m2 = 4.75*4.75;
    const uint nlf = 4;
    cdbl lambdaQCD = .158; // nlf=4
    cdbl mu02 = (1.*m2-q2);
    const Exclusive::DynamicScaleFactors mu02F(1.,-1.,0.*.25);
    */
    cdbl Delta = 1e-6;
    cdbl xTilde = .8;
    cdbl omega = 1.;
    cdbl deltax = 1e-6;
    cdbl deltay = 7e-6;
    //const str pdf = "cteq66";
    const str pdf = "MSTW2008nlo90cl";
    //const str pdf = "MorfinTungB";
    
    LHAPDF::AlphaS_Analytic alphaS;
    alphaS.setLambda(nlf + 1,lambdaQCD);
    const uint n = 1;
    alphaS.setOrderQCD(1 + n);
    cdbl aS = alphaS.alphasQ2(mu02);
    
    const projT proj = L;
    InclusiveElProduction iO(m2,q2,Delta,proj,nlf);
    ExclusiveElProduction eO(m2,q2,proj,nlf,xTilde,omega,deltax,deltay);
    printf("[INFO] m2 = %g, q2 = %g, proj = %s\n",m2,q2,projToStr(proj).c_str());
    
    iO.setPdf(pdf,0);eO.setPdf(pdf,0);
    iO.setMu2(mu02);eO.setMu2Factors(mu02F);
    iO.setAlphaS(aS);eO.setLambdaQCD(lambdaQCD);
    
    eO.MCparams.calls = 500000;
    eO.MCparams.adaptChi2 = false;
    eO.MCparams.warmupCalls = 5000;
    eO.MCparams.verbosity = 3;
    
    /*
    uint N = 11;
    printf("a\t\ti\t\te\t\tabs\t\trel\n");
    for (uint j = 0; j < N; ++j) {
        cdbl a = pow(10,-1.-3./(N-1)*j);
        iO.setBjorkenX(a);
        eO.setBjorkenX(a);
        cdbl i = iO.Fg0() + (0 == n ? 0. : iO.Fg1() + iO.Fq1());
        {cdbl e = eO.F(n);
        printf("%e\t%e\t%e\t%e\t%e\n",a,i,e,i-e,(i-e)/i);}
    }*/
/*
    uint N = 31;
    printf("a\t\ti\t\te\t\tabs\t\trel\n");
    for (uint j = 0; j < N; ++j) {
        cdbl a = pow(10,-4.+8./(N-1)*j);
        iO.setEta(a);
        eO.setEta(a);
        cdbl i = iO.cqBarF1();
        {cdbl e = eO.cqBarF1();
        printf("%e\t%e\t%e\t%e\t%e\n",a,i,e,i-e,(i-e)/i);}
        / *{eO.setOmega(.8);
        cdbl e = eO.cgBarF1();
        printf("%e\t%e\t%e\t%e\t%e\n",a,i,e,i-e,(i-e)/i);}
        {eO.setOmega(1.);
        cdbl e = eO.cgBarF1();
        printf("\t\t\t\t%e\t%e\t%e\n",e,i-e,(i-e)/i);}
        {eO.setOmega(1.2);
        cdbl e = eO.cgBarF1();
        printf("\t\t\t\t%e\t%e\t%e\n",e,i-e,(i-e)/i);}
        printf("\n");* /
    }
*/

    cdbl bjorkenX = 1e-4;
    iO.setBjorkenX(bjorkenX);
    eO.setBjorkenX(bjorkenX);
    eO.activateHistogram(Exclusive::histT::HAQTransverseMomentum, 50, 0.,8.);
    eO.activateHistogram(Exclusive::histT::HAQRapidity, 50);
    eO.activateHistogram(Exclusive::histT::log10z, 50);
    eO.activateHistogram(Exclusive::histT::x, 50);
    eO.activateHistogram(Exclusive::histT::y, 50);
    eO.activateHistogram(Exclusive::histT::Theta1, 50);
    eO.activateHistogram(Exclusive::histT::Theta2, 50);
    
    cdbl i = iO.Fg0() + (0 == n ? 0. : iO.Fg1() + iO.Fq1());
    cdbl e = eO.F(n);
    const str path = "/home/Felix/Physik/PhD/data/hist/";
    eO.printHistogram(Exclusive::histT::HAQTransverseMomentum, path+"pt.dat");
    eO.printHistogram(Exclusive::histT::HAQRapidity,           path+"rap.dat");
    eO.printHistogram(Exclusive::histT::log10z,                path+"log10z.dat");
    eO.printHistogram(Exclusive::histT::x,                     path+"x.dat");
    eO.printHistogram(Exclusive::histT::y,                     path+"y.dat");
    eO.printHistogram(Exclusive::histT::Theta1,                path+"Theta1.dat");
    eO.printHistogram(Exclusive::histT::Theta2,                path+"Theta2.dat");
    printf("%e\t%e\t%e\t%e\n",i,e,i-e,(i-e)/i);

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