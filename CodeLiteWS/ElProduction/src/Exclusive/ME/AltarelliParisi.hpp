#ifndef AltarelliParisi_HPP
#define AltarelliParisi_HPP

#include "../../config.h"

using namespace Color;

/**
 * @brief collects all Altarelli-Parisi kernels
 */
namespace AltarelliParisi {
    
/**
 * @brief quark-splitting-gluon AP-kernel \f$P_{gq}(z) = P_{gq}^{(0)}(z) + \epsilon P_{gq}^{(1)}(z) + \ldots\f$
 * @param x momentum fraction
 * @return \f$P_{gq}^{(0)}(z)\f$
 */
cdbl Pgq0 (cdbl x) { return CF*(1.+pow(1.-x,2))/x; }

/**
 * @brief quark-splitting-gluon AP-kernel \f$P_{gq}(z) = P_{gq}^{(0)}(z) + \epsilon P_{gq}^{(1)}(z) + \ldots\f$
 * @param x momentum fraction
 * @return \f$P_{gq}^{(1)}(z)\f$
 */
cdbl Pgq1 (cdbl x) { return CF*x/2.; }
    
/**
 * @brief polarized quark-splitting-gluon AP-kernel \f$\Delta P_{gq}(z) = \Delta P_{gq}^{(0)}(z) + \epsilon \Delta P_{gq}^{(1)}(z) + \ldots\f$
 * @param x momentum fraction
 * @return \f$\Delta P_{gq}^{(0)}(z)\f$
 */
cdbl DeltaPgq0 (cdbl x) { return CF*(2.-x); }

/**
 * @brief polarized quark-splitting-gluon AP-kernel \f$\Delta P_{gq}(z) = \Delta P_{gq}^{(0)}(z) + \epsilon \Delta P_{gq}^{(1)}(z) + \ldots\f$
 * @param x momentum fraction
 * @return \f$\Delta P_{gq}^{(1)}(z)\f$
 */
cdbl DeltaPgq1 (cdbl x) { return CF*(-(1.-x)); }

/**
 * @brief unregulated hard part of gluon-splitting-gluon AP-kernel \f$\tilde P_{gg}(z) = \tilde P_{gg}^{(0)}(z) + \epsilon \tilde P_{gg}^{(1)}(z) + \ldots\f$
 * @param x momentum fraction
 * @return \f$\tilde P_{gg}^{(0)}(z)\f$
 */
cdbl Pgg0 (cdbl x) { return 2.*CA*(x/(1.-x) + (1.-x)/x + x*(1.-x)); }

/**
 * @brief unregulated hard part of gluon-splitting-gluon AP-kernel \f$\tilde P_{gg}(z) = \tilde P_{gg}^{(0)}(z) + \epsilon \tilde P_{gg}^{(1)}(z) + \ldots\f$
 * @param x momentum fraction
 * @return \f$\tilde P_{gg}^{(1)}(z)\f$
 */
cdbl Pgg1 (cdbl x) { return 0.; }

/**
 * @brief polarized unregulated hard part of gluon-splitting-gluon AP-kernel \f$\Delta\tilde P_{gg}(z) = \Delta\tilde P_{gg}^{(0)}(z) + \epsilon \Delta\tilde P_{gg}^{(1)}(z) + \ldots\f$
 * @param x momentum fraction
 * @return \f$\Delta\tilde P_{gg}^{(0)}(z)\f$
 */
cdbl DeltaPgg0 (cdbl x) { return 2.*CA*(1./(1.-x) - 2.*x + 1.); }

/**
 * @brief polarized unregulated hard part of gluon-splitting-gluon AP-kernel \f$\Delta\tilde P_{gg}(z) = \Delta\tilde P_{gg}^{(0)}(z) + \epsilon \Delta\tilde P_{gg}^{(1)}(z) + \ldots\f$
 * @param x momentum fraction
 * @return \f$\Delta\tilde P_{gg}^{(1)}(z)\f$
 */
cdbl DeltaPgg1 (cdbl x) { return 2.*CA*(-(1.-x)); }

} // namespace AltarelliParisi

#endif // AltarelliParisi_HPP