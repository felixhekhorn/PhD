#include "AbstractElProduction.h"

AbstractElProduction::AbstractElProduction(cdbl m2, cdbl q2,  projT proj, uint nlf) : 
    m2(0.), q2(0.), sp(0.), hasPartonicS(false), proj(proj), nlf(nlf),
    pdf(0), muR2(0.), hasMuR2(false), muF2(0.), hasMuF2(false), bjorkenX(0.), hasBjorkenX(false),
    alphaS(0.), hasAlphaS(false), zMax(0.) {
    // ordering is important!
    this->setM2(m2);
    this->setQ2(q2);
    if (nlf < 3 || nlf > 5)
        throw domain_error("number of light flavours has to be between 3 and 5!");
}

AbstractElProduction::~AbstractElProduction() {
    if (0 != this->pdf)
        delete (this->pdf);
}

void AbstractElProduction::setM2(cdbl m2) {
    if (m2 <= 0.)
        throw domain_error("mass m2 has to be positive!");
    this->m2 = m2;
    // call from contstructor? suppress, other case reset zMax
    if (0. != this->q2)
        this->setQ2(this->q2);
    // reset sp
    this->sp = 0.;
    this->hasPartonicS = false;
}

void AbstractElProduction::setQ2(cdbl q2) {
    if (q2 >= 0.)
        throw domain_error("virtuality q2 has to be negative! (this is NOT Q2!)");
    dbl s = this->hasPartonicS ? this->sp + this->q2 : 0.;
    this->q2 = q2;
    this->zMax = -q2/(4.*m2  - q2);
    if (this->hasPartonicS)
        this->setPartonicS(s);
}

void AbstractElProduction::setEta(cdbl eta) {
    if (eta < 0)
        throw domain_error("partonic eta has to be larger than 0!");
    this->setPartonicS(4.*m2*(1.+eta));
}

void AbstractElProduction::checkPartonic() const {
    if (!this->hasPartonicS)
        throw invalid_argument("no partonic cm-energy given!");
}

void AbstractElProduction::setPdf(str name, int member) {
    this->pdf = new PdfWrapper(name,member);
}

/*void AbstractElProduction::setPdf(str nmem) {
    // suppress log message
    int v = LHAPDF::verbosity();
    LHAPDF::setVerbosity(0);
    this->pdf = LHAPDF::mkPDF(nmem);
    LHAPDF::setVerbosity(v);
}*/
    
void AbstractElProduction::setMuR2(cdbl muR2) {
    if (muR2 <= 0.)
        throw domain_error("renormalisation scale has to be positive!");
    this->muR2 = muR2;
    this->hasMuR2 = true;
}
    
void AbstractElProduction::setMuF2(cdbl muF2) {
    if (muF2 <= 0.)
        throw domain_error("factorisation scale has to be positive!");
    this->muF2 = muF2;
    this->hasMuF2 = true;
}

void AbstractElProduction::setMu2(cdbl mu2) {
    this->setMuF2(mu2);
    this->setMuR2(mu2);
}

void AbstractElProduction::setAlphaS(cdbl alphaS) {
    if (alphaS <= 0.)
        throw domain_error("strong coupling has to be positive!");
    this->alphaS = alphaS;
    this->hasAlphaS = true;
}
    
void AbstractElProduction::setBjorkenX(cdbl bjorkenX) {
    if (bjorkenX <= 0. || bjorkenX > 1. || !isfinite(bjorkenX))
        throw domain_error("Bjorken x has to be between 0 and 1!");
    this->bjorkenX = bjorkenX;
    this->hasBjorkenX = true;
}

void AbstractElProduction::setHadronicS(cdbl Sh) {
    if (Sh < 4.*this->m2)
        throw domain_error("hadronic cm-energy has to be larger than threshold 4m^2!");
    this->setBjorkenX(-this->q2/(Sh - this->q2));
}

void AbstractElProduction::checkHadronic() const {
    if (0 == this->pdf)
        throw invalid_argument("no PDF given!");
    if (!this->hasMuR2)
        throw invalid_argument("no renormalisation scale given!");
    if (!this->hasMuF2)
        throw invalid_argument("no factorisation scale given!");
    if (!this->hasBjorkenX)
        throw invalid_argument("no Bjorken x or hadronic S given!");
    if (!this->hasAlphaS)
        throw invalid_argument("no strong coupling given!");
}