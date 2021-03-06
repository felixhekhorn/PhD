#ifndef Flags_HPP_
#define Flags_HPP_

/**
 * @class Flags
 * @brief controls active channels, orders and bosons
 */
struct Flags {
    
    /** @name partonic channels: gluon, light quark */
    ///@{
    /** @brief use gluonic initial state? */
    bool useGluonicChannel = true;
    
    /** @brief use light quark initial state? */
    bool useQuarkChannel = true;
    ///@}
    
    /** @name computing orders = number of loops */
    ///@{
    /** @brief use leading order calculations? */
    bool useLeadingOrder = true;
    
    /** @brief use (pure) next-to-leading order calculations? */
    bool useNextToLeadingOrder = true;
    ///@}
    
    /** @name exchanged bosons: photon, Z */
    ///@{
    /** @brief use photon exchange? */
    bool usePhoton = true;
    
    /** @brief use interference between photon and Z exchange? */
    bool usePhotonZ = true;
    
    /** @brief use Z exchange? */
    bool useZ = true;
    ///@}
};

#endif // Flags_HPP_