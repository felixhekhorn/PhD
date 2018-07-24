#include "config.h"

#include <stdlib.h>
#include <fstream>
#include <boost/format.hpp>

#include "InclusiveElProduction.h"
#include "ExclusiveElProduction.h"
#include "Common/DynamicScaleFactors.hpp"
#include "Exclusive/IntKers/KinematicVars.hpp"

#include <gsl/gsl_integration.h>
#include "gslpp/gslpp.Functor.hpp"
#include "Common/Integration.h"

int runInclusive();
int runInclusive2();
#include "./Common/Color.h"
#include "./Exclusive/ME/NLOg.h"
#include "./Exclusive/ME/Rp.h"
#include "./Exclusive/ME/SVp.h"
int test() {
    /*PdfWrapper a("MorfinTungB",0);
    PdfWrapper b("MorfinTungB_old",0);
    const int pid = -1;
    cout << "pid = " << pid << endl;
    for (uint j = 0; j < 10; ++j) {
        cdbl Q2 = 5.+j*3.;
        for (uint k = 0; k < 10; ++k) {
            cdbl x = pow(10.,-.05 - k*4./10.);
            printf("%e\t%e\t%e\t%e\n",Q2,x,a.xfxQ2(pid,x,Q2),b.xfxQ2(pid,x,Q2));
        }
        cout << endl;
    }*/
    /*cdbl m2 = 1.;
    cdbl q2 = -10.;
    cdbl sp = 5.;
    cdbl t1 = -3.;
    cdbl s4 = 1.;
    cout << (Inclusive::IntRQEDfiniteL(m2,q2,sp,s4,t1)) << endl;*/
    
    /*cdbl m2 = 1.;
    cdbl q2 = -10.;
    cdbl sp = 5.;
    cdbl t1 = -3.;
    cdbl u1 = -1.;
    cdbl tp = -1.;
    cdbl up = -1.;
    cout << (Exclusive::RpL(m2,q2,sp,t1,u1,tp,up)) << endl;*/
    
    cdbl m2 = 22.5625;
    cdbl q2 = -1e3;
    cdbl sp = 1090.34025;
    cdbl Theta1 = 1.5707963267948966;
    cdbl xE = 0.999958608836369;
    cdbl Theta2 = 1.5707963267948966;
    cdbl yE = 3.4999999999341114e-06;
    cout << (Exclusive::RpL(m2,q2,sp,xE,yE,Theta1,Theta2)) << endl;
    
    /*cdbl m2 = 1.;
    cdbl q2 = -10.;
    cdbl sp = 5.;
    cdbl x = .3;
    cdbl y = 0.;
    cdbl Theta1 = .5;
    cdbl Theta2 = 1.;
    cdbl t1 = -sp/2.*(1.-sqrt(1. - 4.*m2/(sp+q2))*cos(Theta1));
    cout << (Color::CA*Exclusive::ROKpyCL(m2,q2,sp,x,Theta1,Theta2)) << endl;*/
    
    /*cdbl m2 = 1.;
    cdbl q2 = -10.;
    cdbl s = 4.*m2*(1.+1.);
    cdbl sp = s-q2;
    cdbl Theta1 = 1.;
    cdbl t1 = -sp/2.*(1.-sqrt(1. - 4.*m2/(sp+q2))*cos(Theta1));
    cdbl betaTilde = .9;
    cout << (Exclusive::SVQEDpL(m2,q2,sp,t1,betaTilde)) << endl;*/
    
    return EXIT_SUCCESS;
}

int test2() {
    cdbl q2 = -1.e3;
    cdbl m2 = pow(4.75,2);
    const uint nlf = 4;
    //cdbl lambdaQCD = .239; // nlf=3
    //cdbl lambdaQCD = .194; // nlf=3
    //cdbl lambdaQCD = .2; // nlf=3
    const Common::DynamicScaleFactors mu02F(4.,-1.,0.,0.);
    cdbl Delta = 1e-6;
    cdbl xTilde = .8;
    cdbl omega = 1.;
    cdbl deltax = 1e-6;
    cdbl deltay = 7e-6;
    //const str pdf = "MorfinTungB";
    //const str pdf = "CTEQ3M";
    //const str pdf = "cteq66";
    const str pdf = "MSTW2008nlo90cl";
    //const str pdf = "DSSV2014";
    //const str pdf = "GRSV96STDLO";
    
    const projT proj = P;
    InclusiveElProduction iO(m2,q2,Delta,proj,nlf);
    InclusiveElProduction iG(m2,q2,Delta,G,nlf);
    InclusiveElProduction iL(m2,q2,Delta,L,nlf);
    InclusiveElProduction iP(m2,q2,Delta,P,nlf);
    ExclusiveElProduction eO(m2,q2,proj,nlf,xTilde,omega,deltax,deltay);
    ExclusiveElProduction eG(m2,q2,G,nlf,xTilde,omega,deltax,deltay);
    ExclusiveElProduction eL(m2,q2,L,nlf,xTilde,omega,deltax,deltay);
    ExclusiveElProduction eP(m2,q2,P,nlf,xTilde,omega,deltax,deltay);
    printf("[INFO] m2 = %g, q2 = %g, proj = %s\n",m2,q2,projToStr(proj).c_str());
    
    //iO.setPdf(pdf,0);eO.setPdf(pdf,0);
    //iO.setMu2(mu02F);eO.setMu2(mu02F);
    //iO.setLambdaQCD(lambdaQCD);eO.setLambdaQCD(lambdaQCD);
    
    eO.MCparams.calls = 500000;
    eO.MCparams.iterations = 5;
    eO.MCparams.adaptChi2 = false;
    eO.MCparams.warmupCalls = 5000;
    eO.MCparams.verbosity = 3;
    
    {
        uint N = 11;
        for (uint j = 0; j < N; ++j) {
            cdbl a = pow(10,-3.+6./(N-1)*j);
            /*eO.setEta(a);iO.setEta(a);
            cdbl e = eO.cq1();
            cdbl i = iO.cq1();
            printf("%e\t%e\t%e\t%e\n",a,e,i,(e-i)/i);*/
            
            iG.setEta(a);iL.setEta(a);iP.setEta(a);
            cdbl g = iG.cg0();
            cdbl l = iL.cg0();
            cdbl p = iP.cg0();
            /*eG.setEta(a);eL.setEta(a);eP.setEta(a);
            cdbl g = eG.cg1();
            cdbl l = eL.cg1();
            cdbl p = eP.cg1();*/
            printf("%e\t% e\t% e\t% e\n",a,g+l/2.,l,p);
        }
    }
    return EXIT_SUCCESS;
}

int testHadronic() {
    const uint nlf = 3;
    cdbl m2 = pow(1.5,2);
    cdbl q2 = -1.e2;
    const Common::DynamicScaleFactors mu02 (4.,-1.,0.,0.);
    cdbl lambdaQCD = .194;
    
#define useHI 1
#ifdef useHI
    cdbl Delta = 1e-6;
    InclusiveElProduction oG(m2,q2,Delta,G,nlf);
    InclusiveElProduction oL(m2,q2,Delta,L,nlf);
    InclusiveElProduction oP(m2,q2,Delta,P,nlf);
#else // ifdef useHI
    cdbl xTilde = .8;
    cdbl omega = 1.;
    cdbl deltax = 1e-6;
    cdbl deltay = 7e-6;
    ExclusiveElProduction oG(m2,q2,G,nlf,xTilde,omega,deltax,deltay);
    ExclusiveElProduction oL(m2,q2,L,nlf,xTilde,omega,deltax,deltay);
    ExclusiveElProduction oP(m2,q2,P,nlf,xTilde,omega,deltax,deltay);
#endif // ifdef useHI
    
    oG.setQ2(q2);oL.setQ2(q2);oP.setQ2(q2);
    oG.setPdf("MSTW2008nlo90cl",0);oL.setPdf("MSTW2008nlo90cl",0);oP.setPdf("DSSV2014",0);
    oG.setMu2(mu02);oL.setMu2(mu02);oP.setMu2(mu02);
    //oG.setAlphaSByLHAPDF("MSTW2008nlo90cl",0);oL.setAlphaSByLHAPDF("MSTW2008nlo90cl",0);oP.setAlphaSByLHAPDF("MSTW2008nlo90cl",0);
    oG.setLambdaQCD(lambdaQCD);oL.setLambdaQCD(lambdaQCD);oP.setLambdaQCD(lambdaQCD);
    
    const uint N = 11;
    for (uint j = 0; j < N; ++j) {
        cdbl x = pow(10,0. - 4./10.*(cdbl)j);
        oG.setBjorkenX(x);oL.setBjorkenX(x);oP.setBjorkenX(x);
        cdbl cG = oG.F(OrderFlag_NLOonly, ChannelFlag_Gluon);
        cdbl cL = oL.F(OrderFlag_NLOonly, ChannelFlag_Gluon);
        cdbl cP = oP.F(OrderFlag_NLOonly, ChannelFlag_Gluon);
        printf("%e\t% e\t% e\t% e\n",x,cG+cL/2.,cL,cP);
    }
    return EXIT_SUCCESS;
}

int testHadronic2() {
    cdbl q2 = -1.e2;
    cdbl m2 = pow(1.5,2);
    const uint nlf = 3;
    cdbl lambdaQCD = .194;
    const Common::DynamicScaleFactors mu02(4.,-1.,0.,0.);
    
#define useI2 1
    
#ifdef useI2
    cdbl Delta = 1e-6;
    InclusiveElProduction oG(m2,q2,Delta,G,nlf);
    InclusiveElProduction oL(m2,q2,Delta,L,nlf);
    InclusiveElProduction oP(m2,q2,Delta,P,nlf);
#else // ifdef useI2
    cdbl xTilde = .8;
    cdbl omega = 1.;
    cdbl deltax = 1e-6;
    cdbl deltay = 7e-6;
    ExclusiveElProduction oG(m2,q2,G,nlf,xTilde,omega,deltax,deltay);
    ExclusiveElProduction oL(m2,q2,L,nlf,xTilde,omega,deltax,deltay);
    ExclusiveElProduction oP(m2,q2,P,nlf,xTilde,omega,deltax,deltay);
#endif // ifdef useI2
    
    oG.setQ2(q2);oL.setQ2(q2);oP.setQ2(q2);
    oG.setPdf("MSTW2008nlo90cl",0);oL.setPdf("MSTW2008nlo90cl",0);oP.setPdf("DSSV2014",0);
    oG.setMu2(mu02);oL.setMu2(mu02);oP.setMu2(mu02);
    //oG.setAlphaSByLHAPDF("MSTW2008nlo90cl",0);oL.setAlphaSByLHAPDF("MSTW2008nlo90cl",0);oP.setAlphaSByLHAPDF("MSTW2008nlo90cl",0);
    oG.setLambdaQCD(lambdaQCD);oL.setLambdaQCD(lambdaQCD);oP.setLambdaQCD(lambdaQCD);
    
    cdbl xBj = 1e-3;
    oG.setBjorkenX(xBj);oL.setBjorkenX(xBj);oP.setBjorkenX(xBj);
    cout << "[INFO] xBj=" << xBj << endl;
    
    cdbl ptMaxSc = .1;
    const uint N = 10;
    for (uint j = 0; j < N; ++j) {
        cdbl ptSc = ptMaxSc/(N)*(j+.5);
        cdbl cG = oG.dF_dHAQTransverseMomentumScaling(ptSc,OrderFlag_NLO, ChannelFlag_Full);
        cdbl cL = oL.dF_dHAQTransverseMomentumScaling(ptSc,OrderFlag_NLO, ChannelFlag_Full);
        cdbl cP = oP.dF_dHAQTransverseMomentumScaling(ptSc,OrderFlag_NLO, ChannelFlag_Full);
        printf("%e\t% e\t% e\t% e\n",ptSc,cG+cL/2.,cL,cP);
    }
    
    /*cdbl yMax = 1.;
    const uint N = 100;
    for (uint j = 0; j < N; ++j) {
        cdbl y = yMax*(-1. + 2./N*(j+.5));
        cdbl cG = oG.dF_dHAQRapidity(y,OrderFlag_LO, ChannelFlag_Full);
        cdbl cL = oL.dF_dHAQRapidity(y,OrderFlag_LO, ChannelFlag_Full);
        cdbl cP = oP.dF_dHAQRapidity(y,OrderFlag_LO, ChannelFlag_Full);
        printf("%e\t% e\t% e\t% e\n",y,cG+cL/2.,cL,cP);
    }*/
    
    return EXIT_SUCCESS;
}

int main(int argc, char **argv) {
    return testHadronic();
    //return testHadronic2();
	//return runInclusive();
	//return runInclusive2();
    /*cdbl q2 = -1.e3;
    cdbl m2 = pow(1.5,2);
    const uint nlf = 3;
    //cdbl lambdaQCD = .239; // nlf=3
    cdbl lambdaQCD = .194; // nlf=3
    //cdbl lambdaQCD = .2; // nlf=3
    const Common::DynamicScaleFactors mu02(4.,-1.,0.,0.);
    //cdbl mu02 = 2.*m2;
    //Common::DynamicScaleFactors mu02F(2.,0.,0.,0.);
    cdbl m2 = 4.75*4.75;
    const uint nlf = 4;
    cdbl lambdaQCD = .158; // nlf=4
    cdbl mu02 = (1.*m2-q2);
    const Common::DynamicScaleFactors mu02F(1.,-1.,0.*.25);
    *//*
    cdbl Delta = 1e-6;
    cdbl xTilde = .5;//.8;
    cdbl omega = 1.;
    cdbl deltax = 1e-8;//1e-6;
    cdbl deltay = 7e-8;//7e-6;
    //const str pdf = "MorfinTungB";
    //const str pdf = "CTEQ3M";
    //const str pdf = "cteq66";
    const str pdf = "MSTW2008nlo90cl";
    //const str pdf = "DSSV2014";
    //const str pdf = "GRSV96STDLO";
    
    const projT proj = L;
    InclusiveElProduction iO(m2,q2,Delta,proj,nlf);
    ExclusiveElProduction eO(m2,q2,proj,nlf,xTilde,omega,deltax,deltay);
    printf("[INFO] m2 = %g, q2 = %g, proj = %s\n",m2,q2,projToStr(proj).c_str());
    
    InclusiveElProduction iG(m2,q2,Delta,G,nlf);
    InclusiveElProduction iL(m2,q2,Delta,L,nlf);
    InclusiveElProduction iP(m2,q2,Delta,P,nlf);
    ExclusiveElProduction eG(m2,q2,G,nlf,xTilde,omega,deltax,deltay);
    ExclusiveElProduction eL(m2,q2,L,nlf,xTilde,omega,deltax,deltay);
    ExclusiveElProduction eP(m2,q2,P,nlf,xTilde,omega,deltax,deltay);*/

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
    
    cdbl m2 = 1.5*1.5;
    const uint nlf = 3;
    cdbl lambdaQCD = .2; // nlf=3
    //cdbl lambdaQCD = .194; // nlf=3
    //cdbl m2 = 4.75*4.75;
    //const uint nlf = 4;
    cdbl q2 = -10.;
    //const str pdf = "MorfinTungB";
    const str pdf = "GRSV96STDLO";
    projT proj = P;
    
    cdbl Delta = 1.e-6;
    cdbl xTilde = .8;
    cdbl omega = 1.;
    cdbl deltax = 1e-6;
    cdbl deltay = 7e-6;
    InclusiveElProduction iO(m2,q2,Delta,proj,nlf);    
    ExclusiveElProduction eO(m2,q2,proj,nlf,xTilde,omega,deltax,deltay);
    
    eO.MCparams.calls = 500000;
    eO.MCparams.iterations = 10;
    eO.MCparams.adaptChi2 = false;
    eO.MCparams.warmupCalls = 5000;
    eO.MCparams.verbosity = 2;
    
    iO.setPdf(pdf,0);eO.setPdf(pdf,0);
    iO.setLambdaQCD(lambdaQCD);eO.setLambdaQCD(lambdaQCD);
    
    {
        cdbl sqrtSh = 100.;
        iO.setHadronicS(sqrtSh);eO.setHadronicS(sqrtSh);
        const Common::DynamicScaleFactors mu2(2.,0.,0.,0.);
        iO.setMu2(mu2);eO.setMu2(mu2);
        const uint N = 30;
        const str path = "/home/Felix/Physik/PhD/data/hist/";
        std::ofstream of(path + "xF-inc.dat");
        for (uint j = 0; j < N; ++j) {
            cdbl xF = -1. + 2. * (j+.5)/(N);
            cdbl a = iO.dF_dHAQFeynmanX(xF,OrderFlag_NLO,ChannelFlag_Full);
            printf("%e\t%e\n",xF,a);
            of << boost::format("%e\t%e")%xF%a << endl;
        }
        of.close();
        cout << endl << endl;
        eO.activateHistogram(Exclusive::histT::HAQFeynmanX,N,path+"xF.dat");
        cdbl int_inc = iO.F(OrderFlag_NLO,ChannelFlag_Full);
        printf("int_inc = %e\n",int_inc);
        cdbl int_exc = eO.F(OrderFlag_NLO,ChannelFlag_Full);
        printf("int_exc = %e\n",int_exc);
        printf("int_exc/int_inc = %e\n",int_exc/int_inc);
    }
    
    /*{
        const Common::DynamicScaleFactors mu2(1.,0.,0.,0.);
        iO.setMu2(mu2);eO.setMu2(mu2);
        const Common::DynamicScaleFactors muF2(10.,0.,0.,0.);
        iO.setMuF2(muF2);eO.setMuF2(muF2);
        uint N = 10;
        printf("x\t\tFg1\t\tFg1_\t\tabs\t\trel\n");
        cdbl zMax = -q2/(4.*m2 - q2);
        for (uint j = 0; j < N; ++j) {
            cdbl bjorkenX = exp(log(zMax)*(1.+2./(N-1)*j));
            iO.setBjorkenX(bjorkenX);eO.setBjorkenX(bjorkenX);
            cdbl a = iO.Fg1();
            //cdbl b = iO.Fg1_();
            cdbl c = eO.F(1);
            printf("%e\t%e\t%e\t%e\t%e\n",bjorkenX,a,c,a-c,(a-c)/a);
        }
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
    
    cdbl m2 = 1.5*1.5;
    const uint nlf = 3;
    //cdbl m2 = 4.75*4.75;
    //const uint nlf = 4;
    cdbl Delta = 1e-6;
    cdbl q2 = -1e2;
    cdbl lambdaQCD = 0.194; // nlf=3
    const Common::DynamicScaleFactors mu02(4.,-1.,0.,0.);
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
    uint N = 11;
    for (uint j = 0; j < N; ++j) {
        cdbl x = pow(10,-3. + 3./10.*(dbl)j);
        
        {oG.setLambdaQCD(lambdaQCD);oL.setLambdaQCD(lambdaQCD);oP.setLambdaQCD(lambdaQCD);
        oG.setBjorkenX(x);oL.setBjorkenX(x);oP.setBjorkenX(x);
        cdbl g = oG.Fq1();
        cdbl l = oL.Fq1();
        cdbl p = oP.Fq1();
        printf("%e\t%e\t%e\t%e\t\t",x,g+l*3./2.,l,p);}
        
        {oG.setAlphaSByLHAPDF("MSTW2008nlo90cl",0);oL.setAlphaSByLHAPDF("MSTW2008nlo90cl",0);oP.setAlphaSByLHAPDF("MSTW2008nlo90cl",0);
        oG.setBjorkenX(x);oL.setBjorkenX(x);oP.setBjorkenX(x);
        cdbl g = oG.Fq1();
        cdbl l = oL.Fq1();
        cdbl p = oP.Fq1();
        printf("%e\t%e\t%e\t%e\n",x,g+l*3./2.,l,p);}
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