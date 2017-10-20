#include "AbstractLeptoProduction.h"

Common::AbstractLeptoProduction::AbstractLeptoProduction(AbstractIntKer* ker, cuint nlf, cdbl m2) {
    this->ker = ker;
    this->setNumberOfLightFlavours(nlf);
    this->setM2(m2);
}

Common::AbstractLeptoProduction::~AbstractLeptoProduction() {
    if (0 != this->ker)
        delete ker;
}

