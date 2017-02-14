#ifndef AltarelliParisi_HPP
#define AltarelliParisi_HPP

#include "../../config.h"
#include "../../Color.h"

using namespace Color;

/**
 * @brief collects all Altarelli-Parisi kernels
 * 
 * gluon splitting another gluon:
 * \f[(\Delta)P_{\Pg\Pg}(z) = (\Delta) P_{\Pg\Pg}^{H}(z) + (\Delta) P_{\Pg\Pg}^S(z)\delta(1-z)\f]
 * \f[(\Delta)P_{\Pg\Pg}^H(z) = (\Delta) P_{\Pg\Pg}^{H,(0)}(z) + \epsilon (\Delta) P_{\Pg\Pg}^{H,(1)}(z)\f]
 * \f[(\Delta)P_{\Pg\Pg}^S(z) = \frac {\beta_0}{2} + \epsilon (\Delta) P_{\Pg\Pg}^{S,(1)}()\f]
 * 
 * gluon splitting a quark:
 * \f[(\Delta)P_{\Pg\Pq}(z) = (\Delta)P_{\Pg\Pq}^{(0)}(z) + \epsilon (\Delta)P_{\Pg\Pq}^{(1)}(z)\f]
 */
namespace AltarelliParisi {
    
/**
 * @brief quark-splitting-gluon AP-kernel
 * @param x momentum fraction
 * @return \f$P_{\Pg\Pq}^{(0)}(z)\f$
 */
cdbl Pgq0 (cdbl x) { return CF*(1.+pow(1.-x,2))/x; }

/**
 * @brief quark-splitting-gluon AP-kernel
 * @param x momentum fraction
 * @return \f$P_{\Pg\Pq}^{(1)}(z)\f$
 */
cdbl Pgq1 (cdbl x) { return CF*x/2.; }
    
/**
 * @brief polarized quark-splitting-gluon AP-kernel
 * @param x momentum fraction
 * @return \f$\Delta P_{\Pg\Pq}^{(0)}(z)\f$
 */
cdbl DeltaPgq0 (cdbl x) { return CF*(2.-x); }

/**
 * @brief polarized quark-splitting-gluon AP-kernel
 * @param x momentum fraction
 * @return \f$\Delta P_{\Pg\Pq}^{(1)}(z)\f$
 */
cdbl DeltaPgq1 (cdbl x) { return CF*(-(1.-x)); }

/**
 * @brief unregulated hard part of gluon-splitting-gluon AP-kernel
 * @param x momentum fraction
 * @return \f$P_{\Pg\Pg}^{H,(0)}(z)\f$
 */
cdbl PggH0 (cdbl x) { return 2.*CA*(x/(1.-x) + (1.-x)/x + x*(1.-x)); }

/**
 * @brief unregulated hard part of gluon-splitting-gluon AP-kernel
 * @param x momentum fraction
 * @return \f$P_{\Pg\Pg}^{H,(1)}(z)\f$
 */
cdbl PggH1 (cdbl x) { return 0.; }

/**
 * @brief polarized unregulated hard part of gluon-splitting-gluon AP-kernel
 * @param x momentum fraction
 * @return \f$\Delta P_{\Pg\Pg}^{H,(0)}(z)\f$
 */
cdbl DeltaPggH0 (cdbl x) { return 2.*CA*(1./(1.-x) - 2.*x + 1.); }

/**
 * @brief polarized unregulated hard part of gluon-splitting-gluon AP-kernel
 * @param x momentum fraction
 * @return \f$\Delta P_{\Pg\Pg}^{H,(1)}(z)\f$
 */
cdbl DeltaPggH1 (cdbl x) { return 2.*CA*(-(1.-x)); }

/**
 * @brief soft part of gluon-splitting-gluon AP-kernel
 * @param x momentum fraction
 * @return \f$P_{\Pg\Pg}^{S,(1)}()\f$
 */
cdbl PggS1 () { return 0.; }

/**
 * @brief polarized soft part of gluon-splitting-gluon AP-kernel
 * @param x momentum fraction
 * @return \f$\Delta P_{\Pg\Pg}^{S,(1)}()\f$
 */
cdbl DeltaPggS1 () { return -((dbl)NC)/12.; }

} // namespace AltarelliParisi

#endif // AltarelliParisi_HPP