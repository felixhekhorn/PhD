#ifndef INCLUSIVELEPTOPRODUCTION_H
#define INCLUSIVELEPTOPRODUCTION_H

#include "Common/AbstractLeptoProduction.h"

#include "Inclusive/IntKer.h"

/**
 * @class InclusiveLeptoProduction
 * @brief inclusive lepto production of heavy quarks
 */
class InclusiveLeptoProduction : public Common::AbstractLeptoProduction {
    
    /** @brief cast ker to my type */
    #define kker ((Inclusive::IntKer*)this->ker)

public:

    /**
     * @brief constructor
     * @param nlf number of light flavours
     * @param m2 mass^2 of heavy flavours
     * @param Delta soft cut-off \f$\Delta\f$
     */
    InclusiveLeptoProduction(cuint nlf, cdbl m2, cdbl Delta);
    
    /**
     * @brief destructor
     */
    ~InclusiveLeptoProduction();
    
    /** @name global setter */
    ///@{
    
    /**
     * @brief sets soft cut-off \f$\Delta\f$
     * @param Delta soft cut-off \f$\Delta\f$
     */
    inline void setDelta(cdbl Delta) {
        if (Delta < 0.)
            throw domain_error("Delta has to be positive!");
        kker->Delta = Delta;
    }
        
    ///@}
    
    /** @name partonic functions */
    ///@{
    
    /** @see AbstractLeptoProduction::cg0() */
    cdbl cg0() const;
    
    ///@}
    
    /** @name hadronic functions */
    ///@{
    
    /** @see AbstractLeptoProduction::F() */
    cdbl F() const;
    
    ///@}
    
    
};

#endif // INCLUSIVELEPTOPRODUCTION_H
