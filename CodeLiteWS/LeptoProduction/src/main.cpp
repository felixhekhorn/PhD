#include "config.h"

#include <stdlib.h>
#include <boost/format.hpp>

#include "InclusiveLeptoProduction.h"

/**
 * @brief main
 * @param argc
 * @param argv
 * @return EXIT_SUCCESS on success
 */
int main(int argc, char **argv) {
    cuint nlf = 4;
    cdbl m2 = pow(4.75,2);
    cdbl Q2 = 1e3;
    cdbl Delta = 1.e-6;
    InclusiveLeptoProduction o(nlf,m2,Delta);
    o.setQ2(Q2);
    cdbl eta = 1e3;
    o.setPartonicEta(eta);
    o.setProjection(F2);
    cdbl cF2 = o.cg0();
    o.setProjection(FL);
    cdbl cFL = o.cg0();
    o.setProjection(x2g1);
    cdbl cx2g1 = o.cg0();
    cout << boost::format("%e\t%e\t%e\t%e")%eta%(cF2-cFL)%cFL%cx2g1 << endl;
    
    return EXIT_SUCCESS;
}