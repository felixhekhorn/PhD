#include "PdfConvNLOq.h"

#include "KinematicVars.hpp"
#include "../../Color.h"
using namespace Color;
using namespace Exclusive;
    
PdfConvNLOq::PdfConvNLOq(dbl m2, dbl q2, dbl bjorkenX, uint nlf, dbl omega, dbl deltay) :
    PdfConvBase(m2, q2, bjorkenX, nlf, 0., omega, 0., deltay), 
    Ap1(0), Ap1Counter(0), BpQED(0), Pgq0(0), Pgq1(0),
    Ap2(0), Ap3(0){
}

void PdfConvNLOq::setAp1(fPtr7dbl Ap1, fPtr6dbl Ap1Counter) {
    this->Ap1 = Ap1;
    this->Ap1Counter = Ap1Counter;
}
    
void PdfConvNLOq::setSplitting(fPtr4dbl BpQED, fPtr1dbl Pgq0, fPtr1dbl Pgq1) {
    this->BpQED = BpQED;
    this->Pgq0 = Pgq0;
    this->Pgq1 = Pgq1;
}

dbl PdfConvNLOq::cq1() const {
    if(0 == this->Ap1 || 0 == this->Ap1Counter || 
        0 == this->BpQED || 0 == this->Pgq0 || 0 == this->Pgq1)
        throw invalid_argument("need to set all arguments!");
    // collinear contributions
    cdbl s5B = q2 + sp*xE;
    cdbl beta5B = sqrt(1. - 4.*m2/s5B);
    cdbl t1c = -.5*sp*(1.-beta5B*cos(Theta1));
    cdbl meB = BpQED(m2,q2,xE*sp,xE*t1c);
    cdbl jacB = jacxE*jacTheta1;
    cdbl g = Kqgg*NC*CF * m2/(xE*sp)*1./(8.*M_PI) * beta5B*sin(Theta1);
    cdbl l = log(sp/m2*sp/(sp+q2)*omega/2.*(1.-xE)*(1.-xE));
    cdbl vPqg0 = Pgq0(xE)/CF;
    cdbl vPgq1 = Pgq1(xE)/CF;
    
    // hard contributions
    const KinematicVars vsE(m2,q2,sp,xE,yE,Theta1,Theta2);
    cdbl meE = Ap1(m2,q2,sp,vsE.t1,vsE.u1,vsE.tp,vsE.up);
    cdbl jacE = jacxE*jacyE*jacTheta1*jacTheta2;
    cdbl meC = Ap1Counter(m2,q2,sp,xE,Theta1,Theta2);
    cdbl jacC = jacxE*jacyC*jacTheta1*jacTheta2;
    cdbl f = -1./(8.*M_PI*M_PI)*m2/sp * Kqgg*NC*CF * vsE.beta5*sin(Theta1);
    cdbl r = f * (jacE*meE/(1.+yE) - jacC*meC/(1.+yC)) + g*jacB*meB*(2.*vPgq1 + vPqg0*l);
    if (!isfinite(r)) return 0.;
    return r;
}

dbl PdfConvNLOq::cqBarF1() const {
    if(0 == this->BpQED || 0 == this->Pgq0)
        throw invalid_argument("need to set all arguments!");
    // collinear contributions
    cdbl s5B = q2 + sp*xE;
    cdbl beta5B = sqrt(1. - 4.*m2/s5B);
    cdbl t1c = -.5*sp*(1.-beta5B*cos(Theta1));
    cdbl meB = BpQED(m2,q2,xE*sp,xE*t1c);
    cdbl jacB = jacxE*jacTheta1;
    cdbl g = Kqgg*NC*CF * m2/(xE*sp)*1./(8.*M_PI) * beta5B*sin(Theta1);
    cdbl l = -1.;
    cdbl vPqg0 = Pgq0(xE)/CF;
    cdbl r = g*jacB*meB*vPqg0*l;
    if (!isfinite(r)) return 0.;
    return r;
}
    
void PdfConvNLOq::setAp2(fPtr7dbl Ap2) {
    this->Ap2 = Ap2;
}

dbl PdfConvNLOq::dq1() const {
    if(0 == this->Ap2)
        throw invalid_argument("need to set all arguments!");
    cdbl jac = jacxE*jacyE*jacTheta1*jacTheta2;
    const KinematicVars vs(m2,q2,sp,xE,yE,Theta1,Theta2);
    cdbl me = Ap2(m2,q2,sp,vs.t1,vs.u1,vs.tp,vs.up);
    cdbl f = -1./(8.*M_PI*M_PI)*m2/sp * Kqgg*NC*CF * vs.beta5/(1.+yE)*sin(Theta1);
    cdbl r = jac * f * me;
    if (!isfinite(r)) return 0.;
    return r;
}

void PdfConvNLOq::setAp3(fPtr7dbl Ap3) {
    this->Ap3 = Ap3;
}

dbl PdfConvNLOq::oq1() const {
    if(0 == this->Ap3)
        throw invalid_argument("need to set all arguments!");
    cdbl jac = jacxE*jacyE*jacTheta1*jacTheta2;
    const KinematicVars vs(m2,q2,sp,xE,yE,Theta1,Theta2);
    cdbl me = Ap3(m2,q2,sp,vs.t1,vs.u1,vs.tp,vs.up);
    cdbl f = -1./(8.*M_PI*M_PI)*m2/sp * Kqgg*NC*CF * vs.beta5/(1.+yE)*sin(Theta1);
    cdbl r = jac * f * me;
    if (!isfinite(r)) return 0.;
    return r;
}

dbl PdfConvNLOq::operator() (cdbl az, cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2) {
    if(0 == this->pdf)
        throw invalid_argument("need to set all arguments!");
    this->setZ(az);
    this->setX(ax);
    this->setY(ay);
    this->setTheta1(aTheta1);
    this->setTheta2(aTheta2);
    cdbl meCq1 = cq1() + log(muF2/m2) * cqBarF1();
    cdbl meDq1 = dq1();
    cdbl meOq1 = oq1();
    cdbl y = this->bjorkenX/z;
    dbl fqs = 0.;
    cdbl eH = getElectricCharge(this->nlf + 1);
    for (uint q = 1; q < this->nlf + 1; ++q) {
        cdbl eL = getElectricCharge(q);
        fqs += (this->pdf->xfxQ2((int)q,y,this->muF2) + this->pdf->xfxQ2(-((int)q),y,this->muF2))*(eH*eH*meCq1 + eL*eL*meDq1 + eH*eL*meOq1);
    }
    cdbl r = jacZ * 1./this->z * fqs;
    // Protect from ps corner cases
    if (!isfinite(r)) return 0.;
    return r;
}