#ifndef Common_AbstractIntKer_H_
#define Common_AbstractIntKer_H_

#include <limits.h>

#include "../config.h"
#include "../Flags.hpp"
#include "../Projection.hpp"

namespace Common {

/**
 * @class AbstractIntKer
 * @brief abstract base class for integration kernels
 */
class AbstractIntKer {
protected:

    /**
     * @brief returns partonic beta
     * @return beta
     */
    inline cdbl beta() { return sqrt(1. - 4.*m2/s); }
    
public:

    /** @brief number of light flavours */
    uint nlf = 0;
    
    /** @brief mass^2 of heavy quark */
    dbl m2 = nan("");
    
    /** @brief controlling flags */
    Flags flags;
    
    /** @brief transferred Q2 > 0 */
    dbl Q2 = nan("");
    
    /** @brief partonic energy */
    dbl s = nan("");
    
    /** @brief used projection */
    Projection proj = F2;
    
    /** @brief current kernel mode */
    uint mode = 0;
    
    /** @name common kernel modes */
    ///@{
    static cuint Mode_cg0 = 1;
    ///@}
    
    /**
     * @brief constructor
     */
    AbstractIntKer();
    
    /**
     * @brief destructor
     */
    virtual ~AbstractIntKer();

};

}

#endif // Common_AbstractIntKer_H_
