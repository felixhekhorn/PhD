#ifndef INTKER_H
#define INTKER_H

#include "../Common/AbstractIntKer.h"

/**
 * @brief namespace for inclusive lepto production of heavy quarks
 */
namespace Inclusive {

class IntKer : public Common::AbstractIntKer {
    
    /** @brief partonic t1 */
    dbl t1;
    /** @brief jacobian for t1 trafo */
    dbl jac_t1;
    
    /**
     * @brief sets t1 (and its jacobian)
     * @param a integration variable
     */
    void setT1(cdbl a);
    
    /** 
     * @brief computes cg0
     * @return cg0
     */
    cdbl cg0();
    
public:
    
    /**
     * @brief soft cut-off \f$\Delta\f$
     */
    dbl Delta;

    /**
     * @brief constructor
     */
    inline IntKer() {};
    
    /**
     * @brief destructor
     */
    inline ~IntKer() {};
    
    /**
     * @brief called function in kernel
     * @param a1
     */
    cdbl operator()(cdbl a1);

};

}

#endif // INTKER_H
