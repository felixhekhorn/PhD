#ifndef FullyDiff_IntKer_H
#define FullyDiff_IntKer_H

#include "../Common/AbstractIntKer.h"

/**
 * @brief namespace for fully differential lepto production of heavy quarks
 */
namespace FullyDiff {

/**
 * @brief fully differential integration kernel
 */
class IntKer : public Common::AbstractIntKer {
/** @name integration variables */
///@{
    
/** @brief Theta1 */
    dbl Theta1 = dblNaN;
/** @brief jacobian=volume for Theta1 trafo */
    cdbl V_Theta1 = M_PI;
    
/** @brief lower intergation limit for x \f$\rho^*\f$ */
    dbl rhoStar = dblNaN;
/** @brief soft regulation parameter \f$\tilde\rho\f$ */
    dbl rhoTilde = dblNaN;
/** @brief current x-for-event */
    dbl xE = 1.;
/** @brief volume of x-for-event space */
    dbl V_xE = 0.;
/** @brief current x-for-counter-event */
    dbl xC = 1.;
/** @brief volume of x-for-counter-event space */
    dbl V_xC = 0.;
    
/** @brief current y-for-event */
    dbl yE = 1.;
/** @brief volume of y-for-event space */
    dbl V_yE = 0.;
/** @brief current y-for-counter-event */
    dbl yC = 1.;
/** @brief volume of y-for-counter-event space */
    dbl V_yC = 0.;
    
/** @brief Theta2 */
    dbl Theta2 = dblNaN;
/** @brief jacobian=volume for Theta2 trafo */
    cdbl V_Theta2 = M_PI;
/**
 * @brief sets Theta1
 * @param a integration variable
 */
    void setTheta1(cdbl a);
    
/**
 * @brief sets Theta2
 * @param a integration variable
 */
    void setTheta2(cdbl a);
    
///@}
    
/** @brief define 6-point-function shortcut */
    typedef cdbl (*fPtr6dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2);
/** @brief define 7-point-function shortcut */
    typedef cdbl (*fPtr7dbl)(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up);
    
/**
 * @brief sets correct pointers to A1
 * @param fVV vector-vector part
 * @param fVA vector-axial part
 * @param fAA axial-axial part
 */
    void getA1(fPtr7dbl &fVV, fPtr7dbl &fVA, fPtr7dbl &fAA) const;
    
/**
 * @brief sets correct pointers to A1Counter
 * @param fVV vector-vector part
 * @param fVA vector-axial part
 * @param fAA axial-axial part
 */
    void getA1Counter(fPtr6dbl &fVV, fPtr6dbl &fVA, fPtr6dbl &fAA) const;
    
/**
 * @brief sets correct pointers to A2
 * @param fVV vector-vector part
 * @param fVA vector-axial part
 * @param fAA axial-axial part
 */
    void getA2(fPtr7dbl &fVV, fPtr7dbl &fVA, fPtr7dbl &fAA) const;

/** @name partonic coefficient functions */
///@{
    
/** 
 * @brief computes a single current cg0
 * @return cg0
 */
    cdbl cg0_cur() const;
    
/** 
 * @brief computes a single current cgBarF1
 * @return cgBarF1
 */
    cdbl cgBarF1_cur() const;
    
/** 
 * @brief computes a single current cgBarR1
 * @return cgBarR1
 */
    cdbl cgBarR1_cur() const;
    
/** 
 * @brief computes a single current cq1
 * @return cq1
 */
    cdbl cq1_cur() const;
    
/** 
 * @brief computes a single current cqBarF1
 * @return cqBarF1
 */
    cdbl cqBarF1_cur() const;
    
/** 
 * @brief computes a single current dq1
 * @return dq1
 */
    cdbl dq1_cur() const;

/** 
 * @brief computes full cg0
 * @return cg0
 */
    cdbl cg0() const;

/** 
 * @brief computes full cgBarR1
 * @return cgBarR1
 */
    cdbl cgBarR1() const;
    
///@}
    
/**
 * @brief computes a single partonic function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @param a4 integration variable
 * @return a single partonic function
 */
    cdbl runPartonic(cdbl a1, cdbl a2, cdbl a3, cdbl a4);
    
/**
 * @brief computes a hadronic function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @return a single hadronic function
 */
    cdbl runHadronic(cdbl a1, cdbl a2, cdbl a3);
    
/**
 * @brief computes a hadronic function
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @param a4 integration variable
 * @param a5 integration variable
 * @return a single leptonic function (currently only leptonic xs)
 */
    cdbl runLeptonic(cdbl a1, cdbl a2, cdbl a3, cdbl a4, cdbl a5);

/** @name hadronic structure functions */
///@{
    
/** 
 * @brief computes Fg0
 * @return Fg0
 */
    cdbl Fg0() const;
    
/** 
 * @brief computes Fg1
 * @return Fg1
 */
    cdbl Fg1() const;
    
/** 
 * @brief computes Fq1
 * @return Fq1
 */
    cdbl Fq1() const;
    
///@}
    
public:

/** @brief factor to soft regulation parameter \f$\tilde\rho = 1-\tilde x(1-\rho^*) \f$ */
    dbl xTilde = dblNaN;
    
/** @brief collinear regulation parameter \f$\omega\f$ */
    dbl omega = dblNaN;
    
/** @brief offset to upper integration bound in x \f$\delta_x \f$ */
    dbl deltax = 0.;
    
/** @brief offset to lower integration bound in y \f$\delta_y \f$ */
    dbl deltay = 0.;

/** @brief constructor */
    IntKer();
    
/** @brief destructor */
    ~IntKer();
    
/**
 * @brief called function in gsl kernel
 * @param a1 integration variable
 * @param a2 integration variable
 * @param a3 integration variable
 * @param a4 integration variable
 * @param a5 integration variable
 * @return kernel
 */
    cdbl operator()(cdbl a1, cdbl a2 = 0., cdbl a3 = 0., cdbl a4 = 0., cdbl a5 = 0.);
    
/**
 * @brief called function in Dvegas kernel
 * @param x adapted continuous integration variables
 * @param k discrete integration variables
 * @param weight integration weight
 * @param aux unadapted continuous integration variables
 * @param f output
 */
    void operator()(const double x[], const int k[], const double& weight, const double aux[], double f[]);
    
};

}

#endif // FullyDiff_IntKer_H