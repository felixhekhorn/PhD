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
 * @param orderFlag computed order
 * @param HAQTransverseMomentum \f$p_{2,T}\f$
 * @return \f$\alpha_s(\mu_R^2)\f$
 */
    cdbl getAlphaS(const uint orderFlag, cdbl HAQTransverseMomentum) const;
    
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
    
/**
 * @brief derivative of full structure function to a variable of heavy anti quark
 * @tparam PdfConvLO_dHAQX LO matrix element
 * @tparam PdfConvNLOg_dHAQX NLO gluon matrix element
 * @tparam PdfConvNLOq_dHAQX NLO quark matrix element
 * @tparam FKerAll_dHAQX all order kernel
 * @param v value
 * @param orderFlag computed order
 * @param channelFlag calculated channel
 * @param pt HAQTransverseMomentum for scales
 * @return d(F^{(order)}_{(channel)})_dHAQX(v)
 */
    template <class PdfConvLO_dHAQX, class PdfConvNLOg_dHAQX, class PdfConvNLOq_dHAQX, class FKerAll_dHAQX>
    cdbl dF_dHAQX(cdbl v, const uint orderFlag, const uint channelFlag, cdbl pt) const;
    
/**
 * @brief derivative of LO structure function to a variable of heavy anti quark
 * @tparam PdfConvLO_dHAQX LO matrix element
 * @param v value
 * @param pt HAQTransverseMomentum for scales
 * @return dFg0_dHAQX(v)
 */
    template <class PdfConvLO_dHAQX>
    cdbl dFg0_dHAQX(cdbl v, cdbl pt) const;
    
/**
 * @brief derivative of NLO gluon structure function to a variable of heavy anti quark
 * @tparam PdfConvNLOg_dHAQX NLO gluon matrix element
 * @param v value
 * @param pt HAQTransverseMomentum for scales
 * @return dFg1_dHAQX(v)
 */
    template <class PdfConvNLOg_dHAQX>
    cdbl dFg1_dHAQX(cdbl v, cdbl pt) const;
    
/**
 * @brief derivative of NLO quark structure function to a variable of heavy anti quark
 * @tparam PdfConvNLOg_dHAQX NLO gluon matrix element
 * @param v value
 * @param pt HAQTransverseMomentum for scales
 * @return dFq1_dHAQX(v)
 */
    template <class PdfConvNLOq_dHAQX>
    cdbl dFq1_dHAQX(cdbl v, cdbl pt) const;
    
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
 * @brief full structure function
 * @param orderFlag computed order
 * @param channelFlag computed channel
 * @return \f$F^{(order)}\f$
 */
    cdbl F(const uint orderFlag, const uint channelFlag);
    
/**
 * @brief LO structure function
 * @return \f$F^{(0)}_g\f$
 */
    cdbl Fg0() const;
    
/**
 * @brief NLO gluon structure function
 * @return \f$F^{(1)}_g\f$
 */
    cdbl Fg1() const;
    
/**
 * @brief NLO quark structure function
 * @return \f$F^{(1)}_q\f$
 */
    cdbl Fq1() const;
    
/**
 * @brief derivative of full structure function to pt of heavy anti quark
 * @param pt pt of heavy anti quark
 * @param orderFlag computed order
 * @param channelFlag calculated channel
 * @return d(F^{(order)}_{(channel)})_dHAQTransverseMomentum(pt)
 */
    cdbl dF_dHAQTransverseMomentum(cdbl pt, const uint orderFlag, const uint channelFlag) const;
    
/**
 * @brief derivative of LO structure function to pt of heavy anti quark
 * @param pt pt of heavy anti quark
 * @return dFg0_dHAQTransverseMomentum(pt)
 */
    cdbl dFg0_dHAQTransverseMomentum(cdbl pt) const;
    
/**
 * @brief derivative of NLO gluon structure function to pt of heavy anti quark
 * @param pt pt of heavy anti quark
 * @return dFg1_dHAQTransverseMomentum(pt)
 */
    cdbl dFg1_dHAQTransverseMomentum(cdbl pt) const;
    
/**
 * @brief derivative of NLO quark structure function to pt of heavy anti quark
 * @param pt pt of heavy anti quark
 * @return dFq1_dHAQTransverseMomentum(pt)
 */
    cdbl dFq1_dHAQTransverseMomentum(cdbl pt) const;
    
/**
 * @brief derivative of full structure function to xt of heavy anti quark
 * @param xt pt/pt_max of heavy anti quark
 * @param orderFlag computed order
 * @param channelFlag calculated channel
 * @return d(F^{(order)}_{(channel)})_dHAQTransverseMomentumScaling(xt)
 */
    cdbl dF_dHAQTransverseMomentumScaling(cdbl xt, const uint orderFlag, const uint channelFlag) const;
    
/**
 * @brief derivative of LO structure function to xt of heavy anti quark
 * @param xt pt/pt_max of heavy anti quark
 * @return dFg0_dHAQTransverseMomentumScaling(xt)
 */
    cdbl dFg0_dHAQTransverseMomentumScaling(cdbl xt) const;
    
/**
 * @brief derivative of NLO gluon structure function to xt of heavy anti quark
 * @param xt pt/pt_max of heavy anti quark
 * @return dFg1_dHAQTransverseMomentumScaling(xt)
 */
    cdbl dFg1_dHAQTransverseMomentumScaling(cdbl xt) const;
    
/**
 * @brief derivative of NLO quark structure function to xt of heavy anti quark
 * @param xt pt/pt_max of heavy anti quark
 * @return dFq1_dHAQTransverseMomentumScaling(xt)
 */
    cdbl dFq1_dHAQTransverseMomentumScaling(cdbl xt) const;
    
/**
 * @brief derivative of full structure function to rapidity of heavy anti quark
 * @param y rapidity of heavy anti quark
 * @param orderFlag computed order
 * @param channelFlag calculated channel
 * @return d(F^{(order)}_{(channel)})_dHAQRapidity(y)
 */
    cdbl dF_dHAQRapidity(cdbl y, const uint orderFlag, const uint channelFlag) const;
    
/**
 * @brief derivative of LO structure function to rapidity of heavy anti quark
 * @param y rapidity of heavy anti quark
 * @return dFg0_dHAQRapidity(y)
 */
    cdbl dFg0_dHAQRapidity(cdbl y) const;
    
/**
 * @brief derivative of NLO gluon structure function to rapidity of heavy anti quark
 * @param y rapidity of heavy anti quark
 * @return dFg1_dHAQRapidity(y)
 */
    cdbl dFg1_dHAQRapidity(cdbl y) const;
    
/**
 * @brief derivative of NLO quark structure function to rapidity of heavy anti quark
 * @param y rapidity of heavy anti quark
 * @return dFq1_dHAQRapidity(y)
 */
    cdbl dFq1_dHAQRapidity(cdbl y) const;
    
/**
 * @brief derivative of full structure function to Feynman-x of heavy anti quark
 * @param xF Feynman-x of heavy anti quark
 * @param orderFlag computed order
 * @param channelFlag calculated channel
 * @return d(F^{(order)}_{(channel)})_dHAQFeynmanX(xF)
 */
    cdbl dF_dHAQFeynmanX(cdbl xF, const uint orderFlag, const uint channelFlag) const;
    
/**
 * @brief derivative of LO structure function to Feynman-x of heavy anti quark
 * @param xF Feynman-x of heavy anti quark
 * @return dFg0_dHAQFeynmanX(xF)
 */
    cdbl dFg0_dHAQFeynmanX(cdbl xF) const;
    
/**
 * @brief derivative of NLO gluon structure function to Feynman-x of heavy anti quark
 * @param xF Feynman-x of heavy anti quark
 * @return dFg1_dHAQFeynmanX(xF)
 */
    cdbl dFg1_dHAQFeynmanX(cdbl xF) const;
    
/**
 * @brief derivative of NLO quark structure function to Feynman-x of heavy anti quark
 * @param xF Feynman-x of heavy anti quark
 * @return dFq1_dHAQFeynmanX(xF)
 */
    cdbl dFq1_dHAQFeynmanX(cdbl xF) const;
    
///@}

};


#endif // InclusiveElProduction_H_