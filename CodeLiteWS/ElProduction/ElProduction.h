#ifndef ElProduction_H_
#define ElProduction_H_

#include "LHAPDF/LHAPDF.h"

#include "config.h"

/**
 * @brief application class
 */
class ElProduction {
    
/**
 * @brief heavy quark mass squared: \f$m^2 > 0\f$
 */
    dbl m2;
    
/**
 * @brief virtuality of photon: \f$q^2 < 0\f$
 */
    dbl q2;
    
/**
 * @brief corrected center of mass energy: \f$s' = s - q^2\f$
 */
    dbl sp;
    
/**
 * @brief has partonic s been set?
 */
    bool hasPartonicS;
    
/**
 * @brief energy scale that seperates hard(\f$s_4>\Delta\f$) and soft\f$s_4<\Delta\f$ contributions: \f$\Delta > 0\f$
 */
    dbl Delta;

/**
 * @brief projection
 */
    projT proj;

/**
 * @brief number of light flavours
 */
    uint nlf;
    
/**
 * @brief parton distribution function
 */
    LHAPDF::PDF* pdf;
    
/**
 * @brief renormalisation scale \f$\mu_R^2\f$
 */
    dbl muR2;

/**
 * @brief has renormalisation scale been set?
 */
    bool hasMuR2;
    
/**
 * @brief factorisation scale \f$\mu_F^2\f$
 */
    dbl muF2;

/**
 * @brief has factorisation scale \f$\mu_F^2\f$ been set?
 */
    bool hasMuF2;
    
/**
 * @brief Bjorken scaling variable
 */
    dbl bjorkenX;
    
/**
 * @brief has Bjorken x been set?
 */
    bool hasBjorkenX;
    
/**
 * @brief running strong coupling
 */
    dbl alphaS;
    
/**
 * has running strong coupling been set
 */
    bool hasAlphaS;
    
/**
 * upper z-integration limit
 */
    dbl zMax;
    
/**
 * @brief checks wether all partonic parameters are given
 */
    void checkPartonic() const;
    
/**
 * @brief checks wether all hadronic parameters are given
 */
    void checkHardonic() const;
    
/**
 * @brief returns the corresponding \f$c^{(0)}_{g}\f$
 * @return \f$c^{(0)}_{g}\f$
 */
    fPtr3dbl getCg0() const;
    
/**
 * @brief returns the corresponding \f$c^{(1),(S+V)}_{g}\f$
 * @return \f$c^{(1),(S+V)}_{g}\f$
 */
    fPtr4dbl getCg1SV() const;
    
/**
 * @brief returns the corresponding Delta-logs of \f$c^{(1),(S+V)}_{g}\f$
 * @return \f$c^{(1),(S+V)}_{g}\f$
 */
    fPtr4dbl getCg1SVDelta1() const;
    
/**
 * @brief returns the corresponding double Delta-logs of \f$c^{(1),(S+V)}_{g}\f$
 * @return \f$c^{(1),(S+V)}_{g}\f$
 */
    fPtr4dbl getCg1SVDelta2() const;
    
/**
 * @brief returns the corresponding \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 * @return \f$\bar {c}^{R,(1),(S+V)}_{g}\f$
 */
    fPtr4dbl getCgBarR1SV() const;
    
/**
 * @brief returns the corresponding \f$\bar {c}^{F,(1),(S+V)}_{g}\f$
 * @return \f$\bar {c}^{F,(1),(S+V)}_{g}\f$
 */
    fPtr4dbl getCgBarF1SV() const;
    
/**
 * @brief returns the corresponding Delta-logs of \f$\bar {c}^{F,(1),(S+V)}_{g}\f$
 * @return \f$\bar {c}^{F,(1),(S+V)}_{g}\f$
 */
    fPtr4dbl getCgBarF1SVDelta1() const;
    
/**
 * @brief returns the corresponding \f$c^{(1),(H)}_{g}\f$
 * @return \f$c^{(1),(H)}_{g}\f$
 */
    fPtr5dbl getCg1H() const;
    
/**
 * @brief returns the corresponding \f$\bar {c}^{F,(1),(H)}_{g}\f$
 * @return \f$\bar {c}^{F,(1),(H)}_{g}\f$
 */
    fPtr5dbl getCgBarF1H() const;
    
/**
 * @brief returns the corresponding \f$c^{(1)}_{q}\f$
 * @return \f$c^{(1)}_{q}\f$
 */
    fPtr5dbl getCq1() const;
    
/**
 * @brief returns the corresponding \f$\bar {c}^{F,(1)}_{q}\f$
 * @return \f$\bar {c}^{F,(1)}_{q}\f$
 */
    fPtr5dbl getCqBarF1() const;
    
/**
 * @brief returns the corresponding \f$d^{(1)}_{q}\f$
 * @return \f$d^{(1)}_{q}\f$
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
    ElProduction(dbl m2, dbl q2, dbl Delta, projT proj, uint nlf);
    
/**
 * @brief destructor
 */
    ~ElProduction();

///@}

/** @name global setter */
///@{
    
/**
 * @brief sets virtuality of photon \f$q^2< 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 */
    void setQ2(dbl q2);
    
///@}

/** @name partonic setter */
///@{
    
/**
 * @brief sets partonic eta
 * @param eta partonic eta
 */
    void setEta(dbl eta);
    
/**
 * @brief sets partonic center of mass energy
 * @param s partonic cm-energy
 */
    void setPartonicS(dbl s);

///@}

/** @name hadronic setter */
///@{
    
/**
 * @brief sets PDF
 * @param name LHAPDF name
 * @param member LHAPDF member index
 * @see LHAPDF::mkPDF()
 */
    void setPdf(str name, int member);

/*
 * @brief sets PDF
 * @param nmem LHAPDF name / member index
 * @see LHAPDF::mkPDF()
 */
    //void setPdf(str nmem);
    
/**
 * @brief sets renormalisation scale \f$\mu_R^2\f$
 * @param muR2 renormalisation scale \f$\mu_R^2\f$
 */
    void setMuR2(dbl muR2);
    
/**
 * @brief sets factorisation scale \f$\mu_F^2\f$
 * @param muF2 factorisation scale \f$\mu_F^2\f$
 */
    void setMuF2(dbl muF2);
    
/**
 * @brief sets common scale \f$\mu^2=\mu_F^2=\mu_R^2\f$
 * @param mu2 common scale \f$\mu^2=\mu_F^2=\mu_R^2\f$
 */
    void setMu2(dbl mu2);
    
/**
 * @brief sets strong coupling
 * @param alphaS strong coupling
 */
    void setAlphaS(dbl alphaS);
    
/**
 * @brief sets Bjorken x
 * @param bjorkenX Bjorken x
 */
    void setBjorkenX(dbl bjorkenX);
    
///@}


/** @name partonic coefficient functions */
///@{
    
/**
 * @brief LO scaling function \f$c^{(0)}_g\f$
 * @return \f$c^{(0)}_g\f$
 */
    dbl cg0() const;

/**
 * @brief NLO gluon scaling function \f$c^{(1)}_g\f$: H+Poles+S+V
 * @return \f$c^{(1)}_g\f$
 */
    dbl cg1() const;

/**
 * @brief sum of scaling logs of NLO gluon scaling function \f$\bar{c}^{R,(1)}_g\f$
 * @return \f$\bar{c}^{R,(1)}_g\f$
 */
    dbl cgBar1() const;

/**
 * @brief renormalization log scaling of NLO gluon scaling function \f$\bar{c}^{R,(1)}_g\f$
 * @return \f$\bar{c}^{R,(1)}_g\f$
 */
    dbl cgBarR1() const;

/**
 * @brief factorization log scaling of NLO gluon scaling function \f$\bar{c}^{F,(1)}_g\f$
 * @return \f$\bar{c}^{F,(1)}_g\f$
 */
    dbl cgBarF1() const;

/**
 * @brief NLO quark scaling function \f$c^{(1)}_q\f$ with heavy charges
 * @return \f$c^{(1)}_q\f$
 */
    dbl cq1() const;

/**
 * @brief factorization log scaling of NLO quark scaling function \f$\bar{c}^{F,(1)}_q\f$
 * @return \f$\bar{c}^{F,(1)}_q\f$
 */
    dbl cqBarF1() const;

/**
 * @brief NLO quark scaling function \f$c^{(1)}_q\f$ with light charges
 * @return \f$d^{(1)}_q\f$
 */
    dbl dq1() const;
    
///@}


/** @name hadronic structure functions */
///@{
    
/**
 * @brief LO structure function
 * @return \f$F^{(0)}_g\f$
 */
    dbl Fg0() const;
    
/**
 * @brief NLO gluon structure function
 * @return \f$F^{(1)}_g\f$
 */
    dbl Fg1() const;
    
/**
 * @brief NLO quark structure function
 * @return \f$F^{(1)}_q\f$
 */
    dbl Fq1() const;
    
///@}

};


#endif // ElProduction_H_