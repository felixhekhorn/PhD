#include "config.h"

#include <stdlib.h>

#include "InclusiveElProduction.h"
#include "ExclusiveElProduction.h"

#include "gslpp/gslpp.Histogram.hpp"

int runInclusive();
/*int test() {
    gsl::Histogram h(5);
    h.setRangesLog10(1.,10.);
    h.accumulate(1.,.1);
    h.accumulate(9.9,10.);
    h.fprintf(stdout,"%e","%e");
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
    uint nlf = 4;
    dbl Delta = 1e-6;
    dbl xTilde = .8;
    dbl omega = 1.;
    dbl deltax = 5e-7;
    dbl deltay = 1e-6;
    dbl aS = 0.152761042522;// Q²=1e1 -> 0.189663591654;// Q²=1e2 -> 0.152761042522;
    dbl mu02 = (4.*m2-q2);
    InclusiveElProduction iO(m2,q2,Delta,L,nlf);
    ExclusiveElProduction eO(m2,q2,L,nlf,xTilde,omega,deltax,deltay);
    
    iO.setPdf("MSTW2008nlo90cl",0);eO.setPdf("MSTW2008nlo90cl",0);
    iO.setMu2(mu02);eO.setMu2(mu02);
    iO.setAlphaS(aS);eO.setAlphaS(aS);
    
    /*uint N = 11;
    for (uint j = 0; j < N; ++j) {
        cdbl eta = pow(10,-2.+4./(N-1)*j);
        iO.setEta(eta);
        eO.setEta(eta);
        / *cdbl bjorkenX = pow(10,-2.+1./(N-1)*j);
        iO.setBjorkenX(bjorkenX);
        eO.setBjorkenX(bjorkenX);
        cdbl i = iO.Fg0() + iO.Fg1() + iO.Fq1();
        cdbl e = eO.F();* /
        cdbl i = iO.dq1();
        cdbl e = eO.dq1();
        printf("%e\t%e\t%e\t%e\t%e\n",eta,i,e,i-e,(i-e)/i);
    }*/
    
    cdbl bjorkenX = 1e-2;
    //printf("%e < z < %e\n",bjorkenX,-q2/(4.*m2-q2));
    iO.setBjorkenX(bjorkenX);
    eO.setBjorkenX(bjorkenX);
    eO.activateHistogram(Exclusive::histT::log10z,15);
    eO.activateHistogram(Exclusive::histT::log10pdf,15);
    eO.activateHistogram(Exclusive::histT::x,15);
    eO.activateHistogram(Exclusive::histT::y,15);
    eO.activateHistogram(Exclusive::histT::Theta1,15);
    eO.activateHistogram(Exclusive::histT::Theta2,15);
    eO.activateHistogram(Exclusive::histT::s5,15);
    eO.activateHistogram(Exclusive::histT::invHQMass,15, 2.*sqrt(m2),40.);
    
    //eO.activateHistogram(Exclusive::histT::Theta1,10);
    //eO.activateHistogram(Exclusive::histT::log10z,1);
    
    cdbl i = iO.Fg0() + iO.Fg1() + iO.Fq1();
    cdbl e = eO.F();
    printf("%e\t%e\n",i,e);
    
    //eO.printHistogram(Exclusive::histT::log10z, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-z.dat");
    //eO.printHistogram(Exclusive::histT::Theta1, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-Theta1.dat");
    
    eO.printHistogram(Exclusive::histT::log10z, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-z.dat");
    eO.printHistogram(Exclusive::histT::log10pdf, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-pdf.dat");
    eO.printHistogram(Exclusive::histT::x, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-x.dat");
    eO.printHistogram(Exclusive::histT::y, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-y.dat");
    eO.printHistogram(Exclusive::histT::Theta1, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-Theta1.dat");
    eO.printHistogram(Exclusive::histT::Theta2, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-Theta2.dat");
    eO.printHistogram(Exclusive::histT::s5, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-s5.dat");
    eO.printHistogram(Exclusive::histT::invHQMass, "/home/Felix/Physik/PhD/data/Fb_L-x_2-q2_2-invHQMass.dat");
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