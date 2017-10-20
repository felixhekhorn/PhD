#include "config.h"

#include <stdlib.h>

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
    o.setPartonicEta(1e3);
    o.setProjection(FL);
    o.flags().usePhotonZ = o.flags().useZ = false;
    cout << "test: " << o.cg0() << endl;
    
    return EXIT_SUCCESS;
}