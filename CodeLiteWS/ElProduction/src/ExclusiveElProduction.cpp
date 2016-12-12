#include "ExclusiveElProduction.h"

ExclusiveElProduction::ExclusiveElProduction(dbl m2, dbl q2, projT proj, uint nlf, dbl omega, dbl deltay):
    AbstractElProduction(m2,q2,proj,nlf){
    if (omega <= 0 || omega >= 2)
        throw domain_error("omega has to be within (0,2)!");
    this->omega = omega;
    if (deltay <= 0 || deltay >= this->omega)
        throw domain_error("deltay has to be positive and smaller than omega!");
    this->deltay = deltay;
}

