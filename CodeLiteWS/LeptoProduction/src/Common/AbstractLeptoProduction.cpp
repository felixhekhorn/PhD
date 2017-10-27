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

void Common::AbstractLeptoProduction::setNumberOfLightFlavours(cuint nlf) {
    if (nlf < 3 || nlf > 5)
        throw domain_error("number of light flavours has to be between 3 and 5!");
    this->ker->nlf = nlf;
}

void Common::AbstractLeptoProduction::setM2(cdbl m2) {
    if (m2 <= 0.)
        throw domain_error("mass^2 of heavy flavours has to be positive!");
    this->ker->m2 = m2;
}

void Common::AbstractLeptoProduction::setQ2(cdbl Q2) {
    checkQ2(Q2)
    this->ker->Q2 = Q2;
}

void Common::AbstractLeptoProduction::setProjection(Projection proj) {
    this->ker->proj = proj;
}

void Common::AbstractLeptoProduction::setPartonicS(cdbl s) {
    checkPartonicS(s)
    this->ker->s = s;
}

void Common::AbstractLeptoProduction::setPartonicEta(cdbl eta) {
    if (eta < 0.)
        throw domain_error("partonic eta has to be larger than 0!");
    this->setPartonicS(4.*this->ker->m2*(1.+eta));
}

void Common::AbstractLeptoProduction::setBjorkenX(cdbl xBj) {
    checkXBjorken(xBj)
    this->ker->xBj = xBj;
}

void Common::AbstractLeptoProduction::setHadronicS(cdbl Sh) {
    if (Sh < 4.*this->ker->m2)
        throw domain_error("hadronic cm-energy has to be larger than threshold 4m^2!");
    checkQ2(this->ker->Q2)
    this->setBjorkenX(this->ker->Q2/(Sh + this->ker->Q2));
}

void Common::AbstractLeptoProduction::setPdf(str name, int member) {
    if (0 != this->ker->pdf)
        delete (this->ker->pdf);
    this->ker->pdf = new PdfWrapper(name,member);
}
    
void Common::AbstractLeptoProduction::setMuR2(const DynamicScaleFactors& muR2) {
    this->ker->muR2 = muR2;
}
    
void Common::AbstractLeptoProduction::setMuF2(const DynamicScaleFactors& muF2) {
    this->ker->muF2 = muF2;
}

void Common::AbstractLeptoProduction::setMu2(const DynamicScaleFactors& mu2) {
    this->setMuF2(mu2);
    this->setMuR2(mu2);
}

void Common::AbstractLeptoProduction::setLambdaQCD(cdbl lambdaQCD) {
    checkLambdaQCD(lambdaQCD)
    this->ker->lambdaQCD = lambdaQCD;
    this->ker->aS->setLambda(this->ker->nlf + 1, lambdaQCD);
}