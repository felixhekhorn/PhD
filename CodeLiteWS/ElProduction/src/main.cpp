#include "config.h"

#include <stdlib.h>
#include <fstream>

#include "InclusiveElProduction.h"
#include "ExclusiveElProduction.h"
#include "Exclusive/IntKers/KinematicVars.hpp"

int runInclusive();
int runInclusive2();
int test() {
    PdfWrapper a("GRV94NLO",0);
    PdfWrapper b("CTEQ3M",0);
    const int pid = 3;
    cout << "pid = " << pid << endl;
    for (uint j = 0; j < 10; ++j) {
        cdbl Q2 = 5.+j*3;
        for (uint k = 0; k < 10; ++k) {
            cdbl x = pow(10.,-.05 - k*4./10.);
            printf("%e\t%e\t%e\t%e\n",Q2,x,a.xfxQ2(pid,x,Q2),b.xfxQ2(pid,x,Q2));
        }
        cout << endl;
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
	return runInclusive2();
    cdbl q2 = -1.e-2;
    cdbl m2 = 1.5*1.5;
    const uint nlf = 3;
    //cdbl lambdaQCD = .239; // nlf=3
    //cdbl lambdaQCD = .194; // nlf=3
    cdbl lambdaQCD = .2; // nlf=3
    //cdbl mu02 = (4.*m2-q2);
    //const Exclusive::DynamicScaleFactors mu02F(4.,-1.,0.*1.);
    cdbl mu02 = 2.*m2;
    Exclusive::DynamicScaleFactors mu02F(2.,0.,0.,2.);
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
    //const str pdf = "MorfinTungB";
    //const str pdf = "CTEQ3M";
    //const str pdf = "cteq66";
    //const str pdf = "MSTW2008nlo90cl";
    //const str pdf = "DSSV2014";
    const str pdf = "GRSV96STDLO";
    
    LHAPDF::AlphaS_Analytic alphaS;
    alphaS.setLambda(nlf + 1,lambdaQCD);
    const uint n = 0;
    alphaS.setOrderQCD(1 + n);
    cdbl aS = alphaS.alphasQ2(mu02);
    
    const projT proj = P;
    InclusiveElProduction iO(m2,q2,Delta,proj,nlf);
    InclusiveElProduction iG(m2,q2,Delta,G,nlf);
    InclusiveElProduction iL(m2,q2,Delta,L,nlf);
    ExclusiveElProduction eO(m2,q2,proj,nlf,xTilde,omega,deltax,deltay);
    printf("[INFO] m2 = %g, q2 = %g, proj = %s\n",m2,q2,projToStr(proj).c_str());
    
    iO.setPdf(pdf,0);eO.setPdf(pdf,0);
    iO.setMu2(mu02);eO.setMu2Factors(mu02F);
    iO.setAlphaS(aS);eO.setLambdaQCD(lambdaQCD);
    
    eO.MCparams.calls = 500000;
    eO.MCparams.iterations = 5;
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
    const uint N = 11;
    printf("a\t\ti\t\te\t\tabs\t\trel\n");
    for (uint j = 0; j < N; ++j) {
        cdbl a = pow(10,-4.+2.*j/(N-1));
        iO.setEta(a);
        eO.setEta(a);
        cdbl i = iO.cg1();
        {cdbl e = eO.cg1();
        printf("%e\t%e\t%e\t%e\t%e\n",a,i,e,i-e,(i-e)/i);}
    }
*/


//Timer::make("pdf@combineNLOg");
/*
    cdbl sqrtSh = 200.;
    cdbl bjorkenX = -q2/(sqrtSh*sqrtSh - q2);
    iO.setBjorkenX(bjorkenX);
    eO.setBjorkenX(bjorkenX);
    const str path = "/home/Felix/Physik/PhD/data/hist/";
    eO.activateHistogram(Exclusive::histT::HAQTransverseMomentum, 50, path+"pt.dat",0.,5.);
    eO.activateHistogram(Exclusive::histT::HAQRapidity,           50, path+"rap.dat", -2., 2.);
    eO.activateHistogram(Exclusive::histT::log10z,                50, path+"log10z.dat");
    eO.activateHistogram(Exclusive::histT::x,                     50, path+"x.dat");
    eO.activateHistogram(Exclusive::histT::y,                     50, path+"y.dat");
    eO.activateHistogram(Exclusive::histT::Theta1,                50, path+"Theta1.dat");
    eO.activateHistogram(Exclusive::histT::Theta2,                50, path+"Theta2.dat");
    
    cdbl i = 0.;//iO.Fg0() + (0 == n ? 0. : iO.Fg1() + iO.Fq1());
    cdbl e = eO.F(n);
    printf("%e\t%e\t%e\t%e\n",i,e,i-e,(i-e)/i);
*/
//Timer::logAll(cout);
//Timer::deleteAll();


    return EXIT_SUCCESS;
}


int runInclusive2(){
// Timer::make("hg1SV");
    
    cdbl m2 = 1.5*1.5*2.*2.;
    const uint nlf = 3;
    cdbl lambdaQCD = .194; // nlf=3
    //cdbl m2 = 4.75*4.75;
    //const uint nlf = 4;
    cdbl Delta = 1e-6;
    cdbl q2 = -10.;
    LHAPDF::AlphaS_Analytic alphaS;
    alphaS.setLambda(nlf + 1,lambdaQCD);
    
    InclusiveElProduction oG(m2,q2,Delta,G,nlf);
    InclusiveElProduction oL(m2,q2,Delta,L,nlf);
    InclusiveElProduction oP(m2,q2,Delta,P,nlf);    
    
    oG.setPdf("MorfinTungB",0);oL.setPdf("MorfinTungB",0);//oP.setPdf("DSSV2014",0);
    //oG.setMu2(mu02);oL.setMu2(mu02);oP.setMu2(mu02);
    //oG.setAlphaS(aS);oL.setAlphaS(aS);oP.setAlphaS(aS);
    
    /*oL.setBjorkenX(1e-4);
    const uint N = 99;
    for (uint j = 0; j < N; ++j) {
        cdbl pt = 20.*(j+.5)/(N+1);
        cdbl mu2 = 4.*m2 - q2 + 4.*pt*pt;
        oL.setMu2(mu2);
        oL.setAlphaS(alphaS.alphasQ2(mu2));
        cdbl l = oL.dFg0_dHAQTransverseMomentum(pt);
        printf("%e\t%e\n",pt,l);
    }*/
    
    cdbl bjorkenX = .1;
    cdbl Sh = -q2*(1/bjorkenX - 1.);
    oL.setHadronicS(Sh);
    const uint N = 99;
    cdbl mu2 = 4.*m2 - q2;
    cdbl y0 = atanh(sqrt(1. - 4.*m2/Sh));
    printf("Sh = %e\ty0 = %e\n\n",Sh,y0);
    oL.setMu2(mu2);
    oL.setAlphaS(alphaS.alphasQ2(mu2));
    for (uint j = 0; j < N; ++j) {
        cdbl y = y0*(-1. + 2./(N+1)*(.5+j));
        cdbl l = oL.dFg0_dHAQRapidity(y);
        printf("%e\t%e\n",y,l);
    }
    printf("\n\nint = %e =?= %e\n",oL.Fg0_(),oL.Fg0());
    
    /*
    const uint N = 99;
    cdbl mu2 = 4.*m2 - q2;
    oL.setMu2(mu2);
    oL.setAlphaS(alphaS.alphasQ2(mu2));
    for (uint j = 0; j < N; ++j) {
        cdbl x = pow(10,-1. - 3.*j/(N+1));
        oL.setBjorkenX(x);
        cdbl a = oL.Fg0();
        cdbl b = oL.Fg0_();
        printf("%e\t%e\t%e\t%e\n",x,a,b,b/a);
    }*/
    
    /*Timer::logAll(cout);
    Timer::deleteAll();*/
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
    
    //cdbl m2 = 1.5*1.5;
    //const uint nlf = 3;
    cdbl m2 = 4.75*4.75;
    const uint nlf = 4;
    cdbl Delta = 1e-6;
    cdbl q2 = -1e2;
    cdbl aS = 0.152761042522;// Q²=1e1 -> 0.189663591654;// Q²=1e2 -> 0.152761042522;
    cdbl mu02 = 4.*m2-q2;
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
        cdbl x = pow(10,-4./(100.)*(49.+(dbl)j));
        oG.setBjorkenX(x);oL.setBjorkenX(x);oP.setBjorkenX(x);
        cdbl g = oG.Fg0();
        cdbl l = oL.Fg0();
        cdbl p = oP.Fg0();
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