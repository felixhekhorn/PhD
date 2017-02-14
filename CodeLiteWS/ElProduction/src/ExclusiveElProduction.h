#ifndef EXCLUSIVEELPRODUCTION_H
#define EXCLUSIVEELPRODUCTION_H

#include "AbstractElProduction.h"
#include "ConfigExclusive.h"

/**
 * @brief application class for exclusive electro production
 */
class ExclusiveElProduction : public AbstractElProduction {
    
/**
 * @brief factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 */
    dbl xTilde;
    
/**
 * @brief soft regulation parameter \f$\tilde\rho\f$
 */
    dbl rhoTilde;
    
/**
 * @brief collinear regulation parameter \f$\omega\f$
 */
    dbl omega;
    
/**
 * @brief offset to upper integration bound in x \f$\delta_x\f$
 */
    dbl deltax;
    
/**
 * @brief offset to lower integration bound in y \f$\delta_y\f$
 */
    dbl deltay;
    
/**
 * @brief returns \f$B'_{QED}\f$
 * @return \f$B'_{QED}\f$
 */
    fPtr4dbl getBpQED() const;

/** @name gluon coefficient functions */
///@{
    
/**
 * @brief returns \f$(S+V)'\f$
 * @return \f$(S+V)'\f$
 */
    fPtr5dbl getSVp() const;
    
/**
 * @brief returns \f$R'\f$
 * @return \f$R'\f$
 */
    fPtr7dbl getRp() const;
    
/**
 * @brief returns \f$R'(x=1)\f$
 * @return \f$R'(x=1)\f$
 */
    fPtr6dbl getRpxC() const;
    
/**
 * @brief returns \f$R'_{OK}(y=-1)\f$
 * @return \f$R'_{OK}(y=-1)\f$
 */
    fPtr6dbl getROKpyC() const;
    
/**
 * @brief returns \f$R'_{OK}(x=1,y=-1)\f$
 * @return \f$R'_{OK}(x=1,y=-1)\f$
 */
    fPtr4dbl getROKpyxC() const;
    
///@}
    
/** @name quark coefficient functions */
///@{
    
/**
 * @brief returns \f$A'_{1}\f$
 * @return \f$A'_{1}\f$
 */
    fPtr7dbl getAp1() const;
    
/**
 * @brief returns \f$A'_{1}(y=-1)\f$
 * @return \f$A'_{1}(y=-1)\f$
 */
    fPtr6dbl getAp1Counter() const;
    
/**
 * @brief returns \f$A'_{2}\f$
 * @return \f$A'_{2}\f$
 */
    fPtr7dbl getAp2() const;
    
/**
 * @brief returns \f$A'_{3}\f$
 * @return \f$A'_{3}\f$
 */
    fPtr7dbl getAp3() const;
    
///@}
   
/** @name Altarelli-Parisi kernels */
///@{
 
/**
 * @brief return \f$P_{\Pg\Pg}^{H,(0)}(z)\f$
 * @return \f$P_{\Pg\Pg}^{H,(0)}(z)\f$
 */
    fPtr1dbl getPggH0() const;
    
/**
 * @brief return \f$P_{\Pg\Pg}^{H,(1)}(z)\f$
 * @return \f$P_{\Pg\Pg}^{H,(1)}(z)\f$
 */
    fPtr1dbl getPggH1() const;
    
/**
 * @brief return \f$P_{\Pg\Pg}^{S,(1)}(z)\f$
 * @return \f$P_{\Pg\Pg}^{S,(1)}(z)\f$
 */
    fPtr0dbl getPggS1() const;
 
/**
 * @brief return \f$P_{\Pg\Pq}^{(0)}\f$
 * @return \f$P_{\Pg\Pq}^{(0)}\f$
 */
    fPtr1dbl getPgq0() const;
    
/**
 * @brief return \f$P_{gq}^{(1)}(z)\f$
 * @return \f$P_{gq}^{(1)}(z)\f$
 */
    fPtr1dbl getPgq1() const;
    
///@}
    
/**
 * @brief sets rhoTilde
 */
    void setRhoTilde();
    
public:

/**
 * @brief constructor
 * @param m2 heavy quark mass squared \f$m^2 > 0\f$
 * @param q2 virtuality of photon \f$q^2< 0\f$
 * @param proj projection
 * @param nlf number of light flavours
 * @param xTilde factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*)\f$
 * @param omega collinear regulation parameter \f$\omega\f$
 * @param deltax offset to upper integration bound in x
 * @param deltay offset to lower integration bound in y
 */
    ExclusiveElProduction(dbl m2, dbl q2, projT proj, uint nlf, dbl xTilde, dbl omega, dbl deltax, dbl deltay);
    
/**
 * @brief destructor
 */
    ~ExclusiveElProduction();

/** @name global setter */
///@{
    
/**
 * @brief sets partonic center of mass energy
 * @param s partonic cm-energy
 */
    void setPartonicS(dbl s);

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
    
///@}

/** @name partonic coefficient functions */
///@{
    
/**
 * @brief LO scaling function \f$c^{(0)}_g\f$
 * @return \f$c^{(0)}_g\f$
 */
    dbl cg0() const;
    
/**
 * @brief NLO quark scaling function \f$c^{(1)}_g\f$
 * @return \f$c^{(1)}_g\f$
 */
    dbl cg1() const;

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
 * @brief NLO quark scaling function \f$c^{(1)}_q\f$
 * @return \f$c^{(1)}_q\f$
 */
    dbl cq1() const;
    
/**
 * @brief NLO quark scaling function \f$\bar c^{F,(1)}_q\f$
 * @return \f$\bar c^{F,(1)}_q\f$
 */
    dbl cqBarF1() const;
    
/**
 * @brief NLO quark scaling function \f$d^{(1)}_q\f$
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
    
/**
 * @brief full structure function
 * @return \f$F\f$
 */
    dbl F() const;
    
///@}

/** @name histograms */
///@{
    
private:

/**
 * @brief map with histograms
 */
    Exclusive::histMapT histMap;
    
public:
    
/**
 * @brief activates a histogram
 * @param t histogram type
 * @param size number of bins
 */
    void activateHistogram(Exclusive::histT t, uint size);
    
/*
 * @brief gets a histogram (if it has been activated)
 * @param t histogram type
 */
    //gslpp::Histogram* getHistogram(Exclusive::histT t);

/**
 * @brief prints a histogram (if it has been activated)
 * @param t histogram type
 * @param path file path
 */
    void printHistogram(Exclusive::histT t, str path);
    
    
///@}

};

#endif // EXCLUSIVEELPRODUCTION_H
