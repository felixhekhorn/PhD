#include "config.h"

#include <stdlib.h>
#include <fstream>

#include "InclusiveElProduction.h"
#include "ExclusiveElProduction.h"

#include "gslpp/gslpp.Histogram.hpp"

int runInclusive();
int test() {
    PdfWrapper pdf("MSTW2008nlo90cl",0);
    dbl q2 = -8.5;
    cdbl bjorkenX = 8.5e-4;
    
    /*dbl m2 = 1.5*1.5;
    uint nlf = 3;
    cdbl lambdaQCD = .239; // nlf=3
    dbl mu02 = (4.*m2-q2);
    //Exclusive::DynamicScaleFactors mu02F(4.,-1.,1.);*/
    dbl m2 = 4.75*4.75;
    uint nlf = 4;
    cdbl lambdaQCD = .158; // nlf=4
    dbl mu02 = (1.*m2-q2);
    //Exclusive::DynamicScaleFactors mu02F(1.,-1.,.25);
    dbl Delta = 1e-11;
    
    LHAPDF::AlphaS_Analytic alphaS;
    alphaS.setLambda(nlf + 1,lambdaQCD);
    alphaS.setOrderQCD(1);
    dbl aS = alphaS.alphasQ2(mu02);
    
    InclusiveElProduction iO(m2,q2,Delta,L,nlf);
    uint N = 31;
    cdbl eH = getElectricCharge(nlf + 1);
    cdbl n = -q2*aS/(4.*M_PI*M_PI*m2) * eH*eH;
    //cdbl zmax = -q2/(4.*m2  - q2);
    cdbl dM =(40.5 - 2.*sqrt(m2))/((dbl)N);
    ofstream o ("/home/Felix/Physik/PhD/data/hist/b_q2_85_x_85_M.dat");
    for (uint j = 0; j < N; ++j) {
        cdbl M = 2.*sqrt(m2) + (j+.5)*dM;
        cdbl z = -q2/(M*M-q2);
        iO.setPartonicS(M*M);
        cdbl f = 2.*M*z*z/(-q2) * 1./(z) * pdf.xfxQ2(21,bjorkenX/(z),mu02) * iO.cg0();
        cdbl g = n * f;
        o << boost::format("%e\t%e\n")%M%g;
    }
    o.close();
    /*cdbl dlnz2 =(log(zmax*zmax) - log(bjorkenX*bjorkenX))/((dbl)(N));
    ofstream o ("/home/Felix/Physik/PhD/data/hist/b_q2_85_x_85_z2.dat");
    for (uint j = 0; j < N; ++j) {
        cdbl z2 = exp(log(bjorkenX*bjorkenX) + (j + .5)*dlnz2);
        iO.setPartonicS(-q2/(sqrt(z2)) + q2);
        cdbl f = 1./(2.*sqrt(z2)) * 1./(sqrt(z2)) * pdf.xfxQ2(21,bjorkenX/(sqrt(z2)),mu02) * iO.cg0();
        cdbl g = n * f;
        o << boost::format("%e\t%e\n")%z2%g;
    }
    o.close();*/
    /*cdbl k = 3.;
    cdbl dlnkz =(log(k*zmax) - log(k*bjorkenX))/((dbl)(N));
    ofstream o ("/home/Felix/Physik/PhD/data/hist/b_q2_85_x_85_kz.dat");
    for (uint j = 0; j < N; ++j) {
        cdbl kz = exp(log(k*bjorkenX) + (j + .5)*dlnkz);
        iO.setPartonicS(-q2/(kz/k) + q2);
        cdbl f = 1./k * 1./(kz/k) * pdf.xfxQ2(21,bjorkenX/(kz/k),mu02) * iO.cg0();
        cdbl g = n * f;
        o << boost::format("%e\t%e\n")%kz%g;
    }
    o.close();*/
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
    dbl q2 = -8.5;
    /*dbl m2 = 1.5*1.5;
    uint nlf = 3;
    cdbl lambdaQCD = .239; // nlf=3
    dbl mu02 = (4.*m2-q2);
    Exclusive::DynamicScaleFactors mu02F(4.,-1.,1.);*/
    dbl m2 = 4.75*4.75;
    uint nlf = 4;
    cdbl lambdaQCD = .158; // nlf=4
    dbl mu02 = (1.*m2-q2);
    Exclusive::DynamicScaleFactors mu02F(1.,-1.,0.*.25);
    dbl Delta = 1e-6;
    dbl xTilde = .8;
    dbl omega = 1.;
    dbl deltax = 1e-6;
    dbl deltay = 7e-6;
    //str pdf = "cteq66";
    str pdf = "MSTW2008nlo90cl";
    
    LHAPDF::AlphaS_Analytic alphaS;
    alphaS.setLambda(nlf + 1,lambdaQCD);
    uint n = 0;
    alphaS.setOrderQCD(1 + n);
    dbl aS = alphaS.alphasQ2(mu02);
    
    InclusiveElProduction iO(m2,q2,Delta,L,nlf);
    ExclusiveElProduction eO(m2,q2,L,nlf,xTilde,omega,deltax,deltay);
    
    iO.setPdf(pdf,0);eO.setPdf(pdf,0);
    iO.setMu2(mu02);eO.setMu2Factors(mu02F);
    iO.setAlphaS(aS);eO.setLambdaQCD(lambdaQCD);
    
    eO.MCparams.calls = 500000;
    eO.MCparams.warmupCalls = 5000;
    eO.MCparams.verbosity = 2;
    
    uint N = 11;
    printf("a\t\ti\t\te\t\tabs\t\trel\n");
    for (uint j = 0; j < N; ++j) {
        cdbl a = pow(10,-4.+2./(N-1)*j);
        iO.setBjorkenX(a);
        eO.setBjorkenX(a);
        cdbl i = iO.Fg0() + (0 == n ? 0. : iO.Fg1() + iO.Fq1());
        {cdbl e = eO.F(n);
        printf("%e\t%e\t%e\t%e\t%e\n",a,i,e,i-e,(i-e)/i);}
        
        /*cdbl a = pow(10,-2.+4./(N-1)*j);
        iO.setEta(a);
        eO.setEta(a);
        cdbl i = iO.cg1();
        {cdbl e = eO.cg1();
        printf("%e\t%e\t%e\t%e\t%e\n",a,i,e,i-e,(i-e)/i);}
        {eO.setDeltay(1e-5);
        cdbl e = eO.cg1();
        printf("%e\t%e\t%e\t%e\t%e\n",a,i,e,i-e,(i-e)/i);}
        {eO.setDeltay(1e-6);
        cdbl e = eO.cg1();
        printf("\t\t\t\t%e\t%e\t%e\n",e,i-e,(i-e)/i);}
        {eO.setDeltay(1e-7);
        cdbl e = eO.cg1();
        printf("\t\t\t\t%e\t%e\t%e\n",e,i-e,(i-e)/i);}
        printf("\n");*/
    }
    
    /*
    cdbl bjorkenX = 8.5e-4;
    //printf("%e < z < %e\n",bjorkenX,-q2/(4.*m2-q2));
    iO.setBjorkenX(bjorkenX);
    eO.setBjorkenX(bjorkenX);
    eO.activateHistogram(Exclusive::histT::log10z,100);
    eO.activateHistogram(Exclusive::histT::invMassHQPair,31, 2.*sqrt(m2),40.5);
    / *eO.activateHistogram(Exclusive::histT::log10xi,15);
    eO.activateHistogram(Exclusive::histT::x,15);
    eO.activateHistogram(Exclusive::histT::y,15);
    eO.activateHistogram(Exclusive::histT::Theta1,15);
    eO.activateHistogram(Exclusive::histT::Theta2,15);
    eO.activateHistogram(Exclusive::histT::s5,15);
    eO.activateHistogram(Exclusive::histT::invMassHQPair,100, 2.*sqrt(m2)-.5,2.*sqrt(m2)+31.5);
    eO.activateHistogram(Exclusive::histT::AHQRapidity,15);
    eO.activateHistogram(Exclusive::histT::AHQTransverseMomentum,15);
    eO.activateHistogram(Exclusive::histT::DeltaPhiHQPair,15);* /
    
    cdbl i = iO.Fg0() + (0 == n ? 0. : iO.Fg1() + iO.Fq1());
    eO.MCparams.calls = 500000;
    eO.MCparams.warmupCalls = 5000;
    cdbl e = eO.F(n);
    eO.printHistogram(Exclusive::histT::log10z, "/home/Felix/Physik/PhD/data/hist/log10z.dat");
    eO.printHistogram(Exclusive::histT::invMassHQPair, "/home/Felix/Physik/PhD/data/hist/invMassHQPair.dat");
    printf("%e\t%e\n",i,e);
    / *
    eO.printHistogram(Exclusive::histT::log10z, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-z.dat");
    eO.printHistogram(Exclusive::histT::log10xi, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-pdf.dat");
    eO.printHistogram(Exclusive::histT::x, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-x.dat");
    eO.printHistogram(Exclusive::histT::y, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-y.dat");
    eO.printHistogram(Exclusive::histT::Theta1, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-Theta1.dat");
    eO.printHistogram(Exclusive::histT::Theta2, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-Theta2.dat");
    eO.printHistogram(Exclusive::histT::s5, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-s5.dat");
    eO.printHistogram(Exclusive::histT::invMassHQPair, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-invMassHQPair.dat");
    eO.printHistogram(Exclusive::histT::AHQRapidity, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-rap.dat");
    eO.printHistogram(Exclusive::histT::AHQTransverseMomentum, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-pt.dat");
    eO.printHistogram(Exclusive::histT::DeltaPhiHQPair, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-dphi.dat");
     * /
    */
    
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