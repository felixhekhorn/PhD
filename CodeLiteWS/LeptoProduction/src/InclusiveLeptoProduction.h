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
    
/**
 * @brief runs the integration
 * @return dF_dHAQX
 */
    cdbl rundF_dHAQX() const;

public:

/**
 * @brief constructor
 * @param nlf number of light flavours
 * @param m2 mass^2 of heavy flavours
 * @param Delta soft cut-off \f$\Delta\f$
 */
    InclusiveLeptoProduction(cuint nlf, cdbl m2, cdbl Delta);
    
/** @brief destructor */
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
    };
        
///@}

/** @name partonic functions */
///@{
    
/** @see AbstractLeptoProduction::cg0_VV() */
    cdbl cg0_VV() const;
/** @see AbstractLeptoProduction::cg0_VA() */
    cdbl cg0_VA() const;
/** @see AbstractLeptoProduction::cg0_AA() */
    cdbl cg0_AA() const;
    
/** @see AbstractLeptoProduction::dq1_VV() */
    cdbl dq1_VV() const;
/** @see AbstractLeptoProduction::dq1_VA() */
    cdbl dq1_VA() const;
/** @see AbstractLeptoProduction::dq1_AA() */
    cdbl dq1_AA() const;
    
/** @see AbstractLeptoProduction::cq1_VV() */
    cdbl cq1_VV() const;
/** @see AbstractLeptoProduction::cq1_VA() */
    cdbl cq1_VA() const;
/** @see AbstractLeptoProduction::cq1_AA() */
    cdbl cq1_AA() const;
    
/** @see AbstractLeptoProduction::cqBarF1_VV() */
    cdbl cqBarF1_VV() const;
/** @see AbstractLeptoProduction::cqBarF1_VA() */
    cdbl cqBarF1_VA() const;
/** @see AbstractLeptoProduction::cqBarF1_AA() */
    cdbl cqBarF1_AA() const;
    
///@}

/** @name hadronic functions */
///@{

/** @see AbstractLeptoProduction::F() */
    cdbl F() const;
    
/**
 * @brief derivative of structure function to transverse momentum of heavy anti quark
 * @param HAQTransverseMomentum transverse momentum  of heavy anti quark
 * @return dF_dHAQTransverseMomentum(pt)
 */
    cdbl dF_dHAQTransverseMomentum(cdbl HAQTransverseMomentum) const;
    
/**
 * @brief derivative of structure function to transverse momentum scaling of heavy anti quark
 * @param HAQTransverseMomentumScaling transverse momentum scaling of heavy anti quark
 * @see dF_dHAQTransverseMomentum
 * @return dF_dHAQTransverseMomentumScaling(xt)
 */
    cdbl dF_dHAQTransverseMomentumScaling(cdbl HAQTransverseMomentumScaling) const;
    
/**
 * @brief derivative of structure function to rapidity of heavy anti quark
 * @param HAQRapidity rapidity of heavy anti quark
 * @return dF_dHAQRapidity(y)
 */
    cdbl dF_dHAQRapidity(cdbl HAQRapidity) const;
    
/**
 * @brief derivative of structure function to Feynman-x of heavy anti quark
 * @param HAQFeynmanX Feynman-x of heavy anti quark
 * @return dF_dHAQFeynmanX(xF)
 */
    cdbl dF_dHAQFeynmanX(cdbl HAQFeynmanX) const;
    
///@}
    
    
};

#endif // INCLUSIVELEPTOPRODUCTION_H
