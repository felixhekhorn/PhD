#include "config.h"

#include <stdlib.h>
#include <boost/format.hpp>

#include "InclusiveLeptoProduction.h"

int testHadronic();
int testLeptonic();
int test();

/**
 * @brief main
 * @param argc
 * @param argv
 * @return EXIT_SUCCESS on success
 */
int main(int argc, char **argv) {
    //return test();
    //return testHadronic();
    //return testLeptonic();
    
    cuint nlf = 4;
    cdbl m2 = pow(4.75,2);
    cdbl Q2 = 1e3;
    cdbl Delta = 1.e-6;
    InclusiveLeptoProduction o(nlf,m2,Delta);
    o.setQ2(Q2);
    cuint N = 3;
    for (uint j = 0; j < N; ++j) {
        cdbl eta = pow(10.,-3.+6./(N-1)*j);
        o.setPartonicEta(eta);
        o.setProjection(F2);
        cdbl cF2 = o.cg1_VV();
        o.setProjection(FL);
        cdbl cFL = o.cg1_VV();
        o.setProjection(x2g1);
        cdbl cx2g1 = o.cg1_VV();
        cout << boost::format("%e\t%e\t%e\t%e")%eta%(cF2-cFL)%cFL%cx2g1 << endl;
    }
    
    return EXIT_SUCCESS;
}

#include "Inclusive/ME/IntA2.h"
int test() {
    cdbl m2 = 1.;
    cdbl q2 = -10.;
    cdbl sp = 5.;
    cdbl t1 = -3.;
    cdbl s4 = 1.;
    cout << Inclusive::ME::IntA2_F2_VV(m2,q2,sp,t1,s4) << endl;
    return EXIT_SUCCESS;
}

int testHadronic() {
    cuint nlf = 4;
    cdbl m2 = pow(4.75,2);
    cdbl Q2 = 1e2;
    cdbl Delta = 1.e-6;
    DynamicScaleFactors mu02 (4.,1., 0., 0.);
    cdbl lambdaQCD = .239;
    
    InclusiveLeptoProduction o2(nlf,m2,Delta);
    o2.setProjection(F2);
    InclusiveLeptoProduction oL(nlf,m2,Delta);
    oL.setProjection(FL);
    InclusiveLeptoProduction oP(nlf,m2,Delta);
    oP.setProjection(x2g1);
    
    o2.setQ2(Q2);oL.setQ2(Q2);oP.setQ2(Q2);
    o2.setPdf("MSTW2008nlo90cl",0);oL.setPdf("MSTW2008nlo90cl",0);oP.setPdf("DSSV2014",0);
    o2.setMu2(mu02);oL.setMu2(mu02);oP.setMu2(mu02);
    o2.setLambdaQCD(lambdaQCD);oL.setLambdaQCD(lambdaQCD);oP.setLambdaQCD(lambdaQCD);
    
    /*o2.flags().useNextToLeadingOrder = oL.flags().useNextToLeadingOrder = oP.flags().useNextToLeadingOrder = false;*/
    o2.flags().useGluonicChannel = oL.flags().useGluonicChannel = oP.flags().useGluonicChannel = false;
    o2.flags().usePhotonZ = oL.flags().usePhotonZ = oP.flags().usePhotonZ = false;
    o2.flags().useZ = oL.flags().useZ = oP.flags().useZ = false;
    
    uint N = 11;
    for (uint j = 0; j < N; ++j) {
        cdbl x = pow(10,-3. + 3./10.*(dbl)j);
        o2.setXBjorken(x);oL.setXBjorken(x);oP.setXBjorken(x);
        cdbl c2 = o2.F();
        cdbl cL = oL.F();
        cdbl cP = oP.F();
        printf("%e\t%e\t%e\t%e\n",x,c2,cL,cP);
    }
    
    return EXIT_SUCCESS;
}

int testLeptonic() {
    cuint nlf = 3;
    cdbl m2 = pow(1.5,2);
    cdbl Delta = 1.e-6;
    DynamicScaleFactors mu02 (4.,1., 0., 0.);
    cdbl lambdaQCD = .239;
    
    InclusiveLeptoProduction oF(nlf,m2,Delta);
    oF.setPolarizeBeams(false);
    InclusiveLeptoProduction og(nlf,m2,Delta);
    og.setPolarizeBeams(true);
    
    oF.setPdf("MSTW2008nlo90cl",0);og.setPdf("DSSV2014",0);
    oF.setMu2(mu02);og.setMu2(mu02);
    oF.setLambdaQCD(lambdaQCD);og.setLambdaQCD(lambdaQCD);
    
    oF.flags().useNextToLeadingOrder = og.flags().useNextToLeadingOrder = false;
    /*oF.flags().useGluonicChannel = og.flags().useGluonicChannel = false;*/
    oF.flags().usePhotonZ = og.flags().usePhotonZ = false;
    oF.flags().useZ = og.flags().useZ = false;
    
    cdbl Q2min = 2.;
    oF.setQ2min(Q2min);og.setQ2min(Q2min);
    
    uint N = 11;
    for (uint j = 0; j < N; ++j) {
        cdbl Sl = 200. + j*50.;
        oF.setLeptonicS(Sl);og.setLeptonicS(Sl);
        cdbl sig = oF.sigma();
        cdbl DeltaSig = og.sigma();
        printf("%e\t%e\t%e\n",Sl,sig,DeltaSig);
    }
    
    return EXIT_SUCCESS;
}