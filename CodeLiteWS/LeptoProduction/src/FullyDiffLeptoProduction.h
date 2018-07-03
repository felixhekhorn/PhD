#ifndef FullyDiffLeptoProduction_H
#define FullyDiffLeptoProduction_H

#include "Common/AbstractLeptoProduction.h"

#include "FullyDiff/IntKer.h"

/**
 * @class FullyDiffLeptoProduction
 * @brief fully differential lepto production of heavy quarks
 */
class FullyDiffLeptoProduction : public Common::AbstractLeptoProduction {
    
/** @brief cast ker to my type */
    #define FDker ((FullyDiff::IntKer*)this->ker)
    
/**
 * @brief wrapper to 1D integration
 * @return integral
 */
    cdbl int1D() const;
    
/**
 * @brief wrapper to 2D integration
 * @return integral
 */
    cdbl int2D() const;
    
/**
 * @brief wrapper to 4D integration
 * @return integral
 */
    cdbl int4D() const;
    
/**
 * @brief wrapper to 5D integration
 * @return integral
 */
    cdbl int5D() const;
    
public:

/**
 * @brief constructor
 * @param nlf number of light flavours
 * @param m2 mass^2 of heavy flavours
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*) \f$
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltax offset to upper integration bound in x \f$\delta_x \f$
 * @param deltay offset to lower integration bound in y \f$\delta_y \f$
 */
    FullyDiffLeptoProduction(cuint nlf, cdbl m2, cdbl xTilde, cdbl omega, cdbl deltax, cdbl deltay);
    
/** @brief destructor */
    ~FullyDiffLeptoProduction();
    
/** @name global getter and setter */
///@{
    
/**
 * @brief sets xTilde
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 */
    void setXTilde(cdbl xTilde);

/**
 * @brief sets omega
 * @param omega collinear regulation parameter \f$\omega\f$
 */
    void setOmega(cdbl omega);

/**
 * @brief sets deltax
 * @param deltax upper integration bound in x
 */
    void setDeltax(cdbl deltax);

/**
 * @brief sets deltay
 * @param deltay lower integration bound in y
 */
    void setDeltay(cdbl deltay);
    
/** @see AbstractLeptoProduction::getIntegrationConfig */
    Common::IntegrationConfig* getIntegrationConfig(str method) const;
        
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
    
/** @see AbstractLeptoProduction::cg1_VV() */
    cdbl cg1_VV() const;
/** @see AbstractLeptoProduction::cg1_VA() */
    cdbl cg1_VA() const;
/** @see AbstractLeptoProduction::cg1_AA() */
    cdbl cg1_AA() const;
    
/** @see AbstractLeptoProduction::cgBarF1_VV() */
    cdbl cgBarF1_VV() const;
/** @see AbstractLeptoProduction::cgBarF1_VA() */
    cdbl cgBarF1_VA() const;
/** @see AbstractLeptoProduction::cgBarF1_AA() */
    cdbl cgBarF1_AA() const;
    
/** @see AbstractLeptoProduction::cgBarR1_VV() */
    cdbl cgBarR1_VV() const;
/** @see AbstractLeptoProduction::cgBarR1_VA() */
    cdbl cgBarR1_VA() const;
/** @see AbstractLeptoProduction::cgBarR1_AA() */
    cdbl cgBarR1_AA() const;
    
/** @see AbstractLeptoProduction::cgBar1_VV() */
    cdbl cgBar1_VV() const;
/** @see AbstractLeptoProduction::cgBar1_VA() */
    cdbl cgBar1_VA() const;
/** @see AbstractLeptoProduction::cgBar1_AA() */
    cdbl cgBar1_AA() const;
    
///@}

/** @name hadronic functions */
///@{

/** @see Common::AbstractLeptoProduction::F() */
    cdbl F() const;
///@}
    
    
/** @name leptonic cross sections */
///@{

/** @see Common::AbstractLeptoProduction::sigma() */
    cdbl sigma() const;

///@}
};

#endif // FullyDiffLeptoProduction_H
