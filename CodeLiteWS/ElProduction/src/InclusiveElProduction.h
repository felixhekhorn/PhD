#ifndef InclusiveElProduction_H_
#define InclusiveElProduction_H_

#include "config.h"
#include "AbstractElProduction.h"

/**
 * @brief application class for full inclusive electro production
 */
class InclusiveElProduction : public AbstractElProduction {
    
/**
 * @brief energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    dbl Delta;
    
/**
 * @brief compute a scale 
 * @param factors scale factors
 * @param HAQTransverseMomentum \f$p_{2,T}\f$
 * @return mu^2
 */
    cdbl getScale(const Common::DynamicScaleFactors& factors, cdbl HAQTransverseMomentum) const;
    
/**
 * @brief get factorisation scale 
 * @param HAQTransverseMomentum \f$p_{2,T}\f$
 * @return mu_F^2
 */
    inline cdbl getMuF2(cdbl HAQTransverseMomentum) const { return this->getScale(this->muF2,HAQTransverseMomentum); }
    
/**
 * @brief get renormalisation scale
 * @param HAQTransverseMomentum \f$p_{2,T}\f$
 * @return mu_R^2
 */
    inline cdbl getMuR2(cdbl HAQTransverseMomentum) const { return this->getScale(this->muR2,HAQTransverseMomentum); }
    
/**
 * @brief compute running coupling
 * @param order 0=LO, 1=NLO
 * @param HAQTransverseMomentum \f$p_{2,T}\f$
 * @return \f$\alpha_s(\mu_R^2)\f$
 */
    cdbl getAlphaS(uint order, cdbl HAQTransverseMomentum);
    
/**
 * @brief returns the corresponding kernel of \f$c^{(0)}_{g}\f$
 * @return kernel of \f$c^{(0)}_{g}\f$
 */
    fPtr3dbl getCg0() const;
    
/**
 * @brief returns the corresponding kernel of \f$c^{(1),(S+V)}_{g,0\Delta}\f$
 * @return kernel of \f$c^{(1),(S+V)}_{g,0\Delta}\f$
 */
    fPtr4dbl getCg1SV() const;
    
/**
 * @brief returns the corresponding Delta-logs of kernel of \f$c^{(1),(S+V)}_{g,1\Delta}\f$
 * @return kernel of \f$c^{(1),(S+V)}_{g,1\Delta}\f$
 */
    fPtr4dbl getCg1SVDelta1() const;
    
/**
 * @brief returns the corresponding double Delta-logs of kernel of \f$c^{(1),(S+V)}_{g,2\Delta}\f$
 * @return kernel of \f$c^{(1),(S+V)}_{g,2\Delta}\f$
 */
    fPtr4dbl getCg1SVDelta2() const;
    
/**
 * @brief returns the corresponding kernel of \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 * @return kernel of \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 */
    fPtr4dbl getCgBarR1SV() const;
    
/**
 * @brief returns the corresponding kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,0\Delta}\f$
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,0\Delta}\f$
 */
    fPtr4dbl getCgBarF1SV() const;
    
/**
 * @brief returns the corresponding Delta-logs of kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,1\Delta}\f$
 * @return kernel of \f$\bar {c}^{F,(1),(S+V)}_{g,1\Delta}\f$
 */
    fPtr4dbl getCgBarF1SVDelta1() const;
    
/**
 * @brief returns the corresponding kernel of \f$c^{(1),(H)}_{g}\f$
 * @return kernel of \f$c^{(1),(H)}_{g}\f$
 */
    fPtr5dbl getCg1H() const;
    
/**
 * @brief returns the corresponding kernel of \f$\bar {c}^{F,(1),(H)}_{g}\f$
 * @return kernel of \f$\bar {c}^{F,(1),(H)}_{g}\f$
 */
    fPtr5dbl getCgBarF1H() const;
    
/**
 * @brief returns the corresponding kernel of \f$c^{(1)}_{q}\f$
 * @return kernel of \f$c^{(1)}_{q}\f$
 */
    fPtr5dbl getCq1() const;
    
/**
 * @brief returns the corresponding kernel of \f$\bar {c}^{F,(1)}_{q}\f$
 * @return kernel of \f$\bar {c}^{F,(1)}_{q}\f$
 */
    fPtr5dbl getCqBarF1() const;
    
/**
 * @brief returns the corresponding kernel of \f$d^{(1)}_{q}\f$
 * @return kernel of \f$d^{(1)}_{q}\f$
 */
    fPtr5dbl getDq1() const;
    
public:

/** @name Contrstuctor & Destructor */
///@{
    
/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 * @param proj projection
 * @param nlf number of light flavours
 */
    InclusiveElProduction(cdbl m2, cdbl q2, cdbl Delta, projT proj, uint nlf);

///@}

/** @name global setter */
///@{
    
/**
 * @brief sets phase space slice
 * @param Delta energy scale that seperates hard(\f$s_4>\Delta\f$) and soft(\f$s_4<\Delta\f$) contributions: \f$\Delta > 0\f$
 */
    void setDelta(cdbl Delta);
    
/**
 * @brief sets partonic center of mass energy
 * @param s partonic cm-energy
 */
    void setPartonicS(cdbl s);
    
///@}


/** @name partonic coefficient functions */
///@{
    
/**
 * @brief LO scaling function \f$c^{(0)}_g\f$
 * @return \f$c^{(0)}_g\f$
 */
    cdbl cg0() const;

/**
 * @brief NLO gluon scaling function \f$c^{(1)}_g\f$
 * @return \f$c^{(1)}_g\f$
 */
    cdbl cg1() const;

/**
 * @brief sum of scaling logs of NLO gluon scaling function \f$\bar{c}^{(1)}_g\f$
 * @return \f$\bar{c}^{(1)}_g\f$
 */
    cdbl cgBar1() const;

/**
 * @brief renormalization log scaling of NLO gluon scaling function \f$\bar{c}^{R,(1)}_g\f$
 * @return \f$\bar{c}^{R,(1)}_g\f$
 */
    cdbl cgBarR1() const;

/**
 * @brief factorization log scaling of NLO gluon scaling function \f$\bar{c}^{F,(1)}_g\f$
 * @return \f$\bar{c}^{F,(1)}_g\f$
 */
    cdbl cgBarF1() const;

/**
 * @brief NLO quark scaling function \f$c^{(1)}_q\f$ with heavy charges
 * @return \f$c^{(1)}_q\f$
 */
    cdbl cq1() const;

/**
 * @brief factorization log scaling of NLO quark scaling function \f$\bar{c}^{F,(1)}_q\f$
 * @return \f$\bar{c}^{F,(1)}_q\f$
 */
    cdbl cqBarF1() const;

/**
 * @brief NLO quark scaling function \f$d^{(1)}_q\f$ with light charges
 * @return \f$d^{(1)}_q\f$
 */
    cdbl dq1() const;
    
///@}


/** @name hadronic structure functions */
///@{
    
/**
 * @brief LO structure function
 * @return \f$F^{(0)}_g\f$
 */
    cdbl Fg0();
    
/**
 * @brief NLO gluon structure function
 * @return \f$F^{(1)}_g\f$
 */
    cdbl Fg1();
    
/**
 * @brief NLO quark structure function
 * @return \f$F^{(1)}_q\f$
 */
    cdbl Fq1();
    
/**
 * @brief derivative of LO structure function to pt of heavy anti quark
 * @param pt pt of heavy anti quark
 * @return dFg0_dpt(pt)
 */
    cdbl dFg0_dHAQTransverseMomentum(cdbl pt);
    
/**
 * @brief derivative of NLO gluon structure function to pt of heavy anti quark
 * @param pt pt of heavy anti quark
 * @return dFq1_dpt(pt)
 */
    cdbl dFg1_dHAQTransverseMomentum(cdbl pt);
    
/**
 * @brief derivative of NLO quark structure function to pt of heavy anti quark
 * @param pt pt of heavy anti quark
 * @return dFq1_dpt(pt)
 */
    cdbl dFq1_dHAQTransverseMomentum(cdbl pt);
    
/**
 * @brief derivative of LO structure function to rapidity of heavy anti quark
 * @param y rapidity of heavy anti quark
 * @return dFg0_dy(y)
 */
    cdbl dFg0_dHAQRapidity(cdbl y);
    
/**
 * @brief derivative of NLO gluon structure function to rapidity of heavy anti quark
 * @param y rapidity of heavy anti quark
 * @return dFg1_dy(y)
 */
    cdbl dFg1_dHAQRapidity(cdbl y);
    
/**
 * @brief derivative of NLO quark structure function to rapidity of heavy anti quark
 * @param y rapidity of heavy anti quark
 * @return dFq1_dy(y)
 */
    cdbl dFq1_dHAQRapidity(cdbl y);
    
///@}

};


#endif // InclusiveElProduction_H_