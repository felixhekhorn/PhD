#include "config.h"

#include <stdlib.h>
#include <boost/format.hpp>

#include "InclusiveLeptoProduction.h"

int test();

/**
 * @brief main
 * @param argc
 * @param argv
 * @return EXIT_SUCCESS on success
 */
int main(int argc, char **argv) {
    return test();
    cuint nlf = 4;
    cdbl m2 = pow(4.75,2);
    cdbl Q2 = 1e3;
    cdbl Delta = 1.e-6;
    InclusiveLeptoProduction o(nlf,m2,Delta);
    o.setQ2(Q2);
    cdbl eta = 1e3;
    o.setPartonicEta(eta);
    o.setProjection(F2);
    cdbl cF2 = o.cg0_VV();
    o.setProjection(FL);
    cdbl cFL = o.cg0_VV();
    o.setProjection(x2g1);
    cdbl cx2g1 = o.cg0_VV();
    cout << boost::format("%e\t%e\t%e\t%e")%eta%(cF2-cFL)%cFL%cx2g1 << endl;
    
    return EXIT_SUCCESS;
}

int test() {
    cuint nlf = 4;
    cdbl m2 = pow(4.75,2);
    cdbl Q2 = 1e2;
    cdbl Delta = 1.e-6;
    DynamicScaleFactors mu02 (4., 1., 0., 0.);
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
    
    o2.flags().useNextToLeadingOrder = oL.flags().useNextToLeadingOrder = oP.flags().useNextToLeadingOrder = false;
    o2.flags().usePhotonZ = oL.flags().usePhotonZ = oP.flags().usePhotonZ = false;
    o2.flags().useZ = oL.flags().useZ = oP.flags().useZ = false;
    
    uint N = 11;
    for (uint j = 0; j < N; ++j) {
        cdbl x = pow(10,-3. + 3./10.*(dbl)j);
        o2.setBjorkenX(x);oL.setBjorkenX(x);oP.setBjorkenX(x);
        cdbl c2 = o2.dF_dHAQTransverseMomentumScaling(.5);
        cdbl cL = oL.dF_dHAQTransverseMomentumScaling(.5);
        cdbl cP = oP.dF_dHAQTransverseMomentumScaling(.5);
        printf("%e\t%e\t%e\t%e\n",x,c2,cL,cP);
    }
    
    return EXIT_SUCCESS;
}