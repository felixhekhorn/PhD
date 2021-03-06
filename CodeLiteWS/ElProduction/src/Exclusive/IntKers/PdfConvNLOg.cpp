#include "PdfConvNLOg.h"

#include "KinematicVars.hpp"
#include "../../Common/Color.h"
using namespace Color;
using namespace Exclusive;
    
/**
 * @brief first coefficient of running coupling beta function
 * @return \f$b_0^f\f$
 */
cdbl b0(const uint nf) { return (11.*CA - 2.*nf)/3.; };

PdfConvNLOg::PdfConvNLOg(cdbl m2, cdbl q2, cdbl bjorkenX, const uint nlf, cdbl xTilde, cdbl omega, cdbl deltax, cdbl deltay):
    PdfConvBase(m2, q2, bjorkenX, nlf, xTilde, omega, deltax, deltay){
}

void PdfConvNLOg::setBorn(fPtr4dbl BpQED, fPtr5dbl SVp) {
    this->BpQED = BpQED;
    this->SVp = SVp;
}

void PdfConvNLOg::setRp(fPtr7dbl Rp, fPtr6dbl RpxC, fPtr6dbl ROKpyC, fPtr4dbl ROKpyxC) {
    this->Rp = Rp;
    this->RpxC = RpxC;
    this->ROKpyC = ROKpyC;
    this->ROKpyxC = ROKpyxC;
}
    
void PdfConvNLOg::setPgg(fPtr1dbl PggH0, fPtr1dbl PggH1, fPtr0dbl PggS1) {
    this->PggH0 = PggH0;
    this->PggH1 = PggH1;
    this->PggS1 = PggS1;
}

void PdfConvNLOg::setVars(cdbl az, cdbl ax, cdbl ay, cdbl aTheta1, cdbl aTheta2) {
    this->setZ(az);
    this->setX(ax);
    this->setY(ay);
    this->setTheta1(aTheta1);
    this->setTheta2(aTheta2);
}

const PhasespaceValues PdfConvNLOg::cg1() const {
    // protect from null pointer
    if (0 == this->BpQED || 0 == this->SVp 
        || 0 == this->Rp || 0 == this->RpxC || 0 == this->ROKpyC || 0 == this->ROKpyxC 
        || 0 == this->PggH0 || 0 == this->PggH1)
            throw invalid_argument("need to set all arguments!");
    cdbl s = sp + q2;
    // norm to cg1
    cdbl ncg1 = (m2/(4.*M_PI));
    PhasespaceValues r;
//return r;

#ifdef CounterByHeavyside

    // hard event
    cdbl s5E = q2 + xE*sp;
    cdbl beta5E = sqrt(1. - 4.*m2/s5E);
    cdbl f = Kggg*NC*CF * s/(M_PI*pow(sp,3))*sin(Theta1);
    r.xEyE += ncg1 * jacxE*jacyE*jacTheta1*jacTheta2 * f*beta5E/(1.-yE) * 1./(1.-xE)/(1.+yE) *    Rp     (m2,q2,sp,xE,yE,Theta1,Theta2);

    // collinear events
    if (yE < -1.+omega) {
        // hard counter event
        r.xEyC -= ncg1 * jacxE*jacyE*jacTheta1*jacTheta2 * f*beta5E/2.      * 1./(1.-xE)/(1.+yE) * CA*ROKpyC (m2,q2,sp,xE,Theta1,Theta2);
        
        // collinear contribution
        cdbl t1c = -.5*sp*(1. - beta5E*cos(Theta1));
        cdbl meE = BpQED(m2,q2,xE*sp,xE*t1c);
        cdbl g = Kggg*NC*CF * 1./sp * sin(Theta1);
        cdbl l = log(sp/m2)+log(sp/s)+log(omega/2.);
        // (1-x)P_gg^{H,0} -> 2CA for x->1 for all projections
        r.xEyC += ncg1 * jacxE*jacTheta1*jacyE/jacyC * g*beta5E/xE*meE*(PggH0(xE)*(l + 2.*log(1.-xE)        ) + 2.*PggH1(xE));
    }

    // soft events
    if (this->xE > this->rhoTilde) {
        cdbl beta = sqrt(1. - 4.*m2/s);
        cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
        
        // hard counter event
        r.xCyE -= ncg1 * jacxE*jacyE*jacTheta1*jacTheta2 * f*beta  /(1.-yE) * 1./(1.-xE)/(1.+yE) *    RpxC   (m2,q2,sp,yE,Theta1,Theta2);
        
        { // S+V contributions
            cdbl h = Kggg*NC*CF * 1./(4.*sp);
            cdbl betaTilde = sqrt(1. - this->rhoTilde);
            r.xCyE += ncg1 * jacTheta1*jacxE/VxC * h * SVp(m2,q2,sp,t1,betaTilde) * beta*sin(Theta1)/(16.*M_PI);
            /// @todo hat contributions?
            // // hat contributions
            // if (0. != PggS1()) {
            //     cdbl g = 16. * (4.*M_PI) * 2. * Kggg*NC*CF * 1./(4.*sp);
            //     //r -= jacTheta1 * g * BpQED(m2,q2,sp,t1) * PggS1() * beta*sin(Theta1)/(16.*M_PI);
            // }
        }

        // soft and collinear events
        if (yE < -1.+omega) {
            // hard counter event
            r.xCyC += ncg1 * jacxE*jacyE*jacTheta1*jacTheta2 * f*beta  /2.      * 1./(1.-xE)/(1.+yE) * CA*ROKpyxC(m2,q2,sp,t1);
            
            // collinear counter event
            cdbl meC = BpQED(m2,q2,   sp,   t1);
            cdbl l = log(sp/m2)+log(sp/s)+log(omega/2.);
            cdbl g = Kggg*NC*CF * 1./sp * sin(Theta1);
            // (1-x)P_gg^{H,0} -> 2CA for x->1 for all projections
            r.xCyC -= ncg1 * jacxE*jacTheta1*jacyE/jacyC * g*beta     *meC*(2.*CA    *(    1./(1.-xE)*l + 2.*log(1.-xE)/(1.-xE))               );
        }
    }
    
#else // CounterByHeavyside

    cdbl beta = sqrt(1. - 4.*m2/s);
    
    { // S+V contributions
        cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
        cdbl f = Kggg*NC*CF * 1./(4.*sp);
        cdbl betaTilde = sqrt(1. - this->rhoTilde);
        /// @todo speed up SVp? grid or parametrization? "complicated" part only depends on m2,Q2,s,cos(theta1)
        r.xCyE += ncg1 * jacTheta1 * f * SVp(m2,q2,sp,t1,betaTilde) * beta*sin(Theta1)/(16.*M_PI);
        /// @todo hat contribution?
        // // hat contributions
        // if (0. != PggS1()) {
        //    cdbl g = 16. * (4.*M_PI) * 2. * Kggg*NC*CF * 1./(4.*sp);
        //    //r -= jacTheta1 * g * BpQED(m2,q2,sp,t1) * PggS1() * beta*sin(Theta1)/(16.*M_PI);
        // }
    }
   
    { // collinear contributions
        cdbl s5E = q2 + xE*sp;
        cdbl beta5E = sqrt(1. - 4.*m2/s5E);
        cdbl t1c  = -.5*sp*(1. - beta5E*cos(Theta1));
        cdbl t1sc = -.5*sp*(1. - beta  *cos(Theta1));
        cdbl meE = BpQED(m2,q2,xE*sp,xE*t1c);
        cdbl meC = BpQED(m2,q2,   sp,   t1sc);
        cdbl f = Kggg*NC*CF * 1./sp * sin(Theta1);
        cdbl l = log(sp/m2)+log(sp/s)+log(omega/2.);
        // (1-x)P_gg^{H,0} -> 2CA for x->1 for all projections (G,L,P)
        r.xEyC += ncg1 * jacxE*jacTheta1 * f/xE*beta5E*meE * (PggH0(xE)*(           l + 2.*log(1.-xE)        ) + 2.*PggH1(xE));
        r.xCyC -= ncg1 * jacxC*jacTheta1 * f   *beta  *meC * (2.*CA    *(1./(1.-xC)*l + 2.*log(1.-xC)/(1.-xC))               );
    }

    { // hard contributions
        cdbl s5E = q2 + xE*sp;
        cdbl beta5E = sqrt(1. - 4.*m2/s5E);
        cdbl t1sc = -sp/2.*(1. - beta*cos(Theta1));
        cdbl f = Kggg*NC*CF * s/(M_PI*pow(sp,3))*sin(Theta1);
        r.xEyE += ncg1 * jacxE*jacyE*jacTheta1*jacTheta2 * f*beta5E/(1.-yE) * 1./(1.-xE)/(1.+yE) *    Rp     (m2,q2,sp,xE,yE,Theta1,Theta2);
        r.xCyE -= ncg1 * jacxC*jacyE*jacTheta1*jacTheta2 * f*beta  /(1.-yE) * 1./(1.-xC)/(1.+yE) *    RpxC   (m2,q2,sp,yE,Theta1,Theta2);
        r.xEyC -= ncg1 * jacxE*jacyC*jacTheta1*jacTheta2 * f*beta5E/2.      * 1./(1.-xE)/(1.+yC) * CA*ROKpyC (m2,q2,sp,xE,Theta1,Theta2);
        r.xCyC += ncg1 * jacxC*jacyC*jacTheta1*jacTheta2 * f*beta  /2.      * 1./(1.-xC)/(1.+yC) * CA*ROKpyxC(m2,q2,sp,t1sc);
    }

#endif // CounterByHeavyside

    return r;
}

const PhasespaceValues PdfConvNLOg::cgBarR1() const {
    // protect from null pointer
    if (0 == this->BpQED)
        throw invalid_argument("need to set all arguments!");
    // norm to cg1
    cdbl ncg1 = (m2/(4.*M_PI));
    PhasespaceValues r;

#ifdef CounterByHeavyside
    // soft events
    if (this->xE > this->rhoTilde) {
        // S+V contributions
        cdbl s = sp + q2;
        cdbl beta = sqrt(1. - 4.*m2/s);
        cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
        cdbl f = 2. * Kggg*NC*CF * 1./(4.*sp);
        // PggS0 = b0/2 + 4CA ln(betaTilde) for all projections
        r.xCyE += ncg1 * jacTheta1*jacxE/VxC * f * b0(nlf) * BpQED(m2,q2,sp,t1) * beta*sin(Theta1);
    }

#else // CounterByHeavyside

    // S+V contributions
    cdbl s = sp + q2;
    cdbl beta = sqrt(1. - 4.*m2/s);
    cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
    cdbl f = 2. * Kggg*NC*CF * 1./(4.*sp);
    // PggS0 = b0/2 + 4CA ln(betaTilde) for all projections
    r.xCyE += ncg1 * jacTheta1 * f * b0(nlf) * BpQED(m2,q2,sp,t1) * beta*sin(Theta1);

#endif // CounterByHeavyside

    return r;
}

const PhasespaceValues PdfConvNLOg::cgBarF1() const {
    // protect from null pointer
    if (0 == this->BpQED || 0 == this->PggH0)
            throw invalid_argument("need to set all arguments!");
    cdbl s = sp + q2;
    cdbl beta = sqrt(1. - 4.*m2/s);
    // norm to cg1
    cdbl ncg1 = (m2/(4.*M_PI));
    PhasespaceValues r;

#ifdef CounterByHeavyside

    // soft events
    if (this->xE > this->rhoTilde) {
        // S+V contributions
        cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
        cdbl f = 2. * Kggg*NC*CF * 1./(4.*sp);
        // PggS0 = b0/2 + 4CA ln(betaTilde) for all projections
        r.xCyE -= ncg1 * jacTheta1*jacxE/VxC * f * (b0(nlf) + 4.*CA*log(1.-rhoTilde)) * BpQED(m2,q2,sp,t1) * beta*sin(Theta1);
    }

    // collinear events
    if (yE < -1.+omega) {
        // collinear contributions
        cdbl s5E = q2 + xE*sp;
        cdbl beta5E = sqrt(1. - 4.*m2/s5E);
        cdbl t1c = -.5*sp*(1. - beta5E*cos(Theta1));
        cdbl meE = BpQED(m2,q2,xE*sp,xE*t1c);
        cdbl f = Kggg*NC*CF * 1./sp * sin(Theta1);
        cdbl l = -1.;
//        cdbl P = 2.*CA*(xE/(1.-xE)/*+(1.-xE)/xE+xE*(1.-xE)*/);
        cdbl Pp = PggH0(xE);
        r.xEyC += ncg1 *     jacTheta1*jacxE*jacyE/jacyC * f*beta5E/xE*meE*(PggH0(xE)*l);
        // soft+collinear events
        if (this->xE > this->rhoTilde) {
            // collinear counter event
            cdbl t1  = -.5*sp*(1. - beta  *cos(Theta1));
            cdbl meC = BpQED(m2,q2,sp,t1);
            // (1-x)P_gg^{H,0} -> 2CA for x->1 for all projections
            r.xCyC -= ncg1 * jacTheta1*jacxE*jacyE/jacyC * f*beta     *meC*(2.*CA     *(    1./(1.-xE)*l));
        }
    }

#else // CounterByHeavyside

    { // S+V contributions
        cdbl t1 = -.5*sp*(1. - beta*cos(Theta1));
        cdbl f = 2. * Kggg*NC*CF * 1./(4.*sp);
        // PggS0 = b0/2 + 4CA ln(betaTilde) for all projections
        r.xCyE -= ncg1 * jacTheta1 * f * (b0(nlf) + 4.*CA*log(1.-rhoTilde)) * BpQED(m2,q2,sp,t1) * beta*sin(Theta1);
    }

    { // collinear contributions
        cdbl s5E = q2 + xE*sp;
        cdbl beta5E = sqrt(1. - 4.*m2/s5E);
        cdbl t1c = -.5*sp*(1. - beta5E*cos(Theta1));
        cdbl t1  = -.5*sp*(1. - beta  *cos(Theta1));
        cdbl meE = BpQED(m2,q2,xE*sp,xE*t1c);
        cdbl meC = BpQED(m2,q2,sp,t1);
        cdbl f = Kggg*NC*CF * 1./sp * sin(Theta1);
        cdbl l = -1.;
//        cdbl P = 2.*CA*(xE/(1.-xE)+(1.-xE)/xE+xE*(1.-xE));
        // (1-x)P_gg^{H,0} -> 2CA for x->1 for all projections
        r.xEyC += ncg1 * jacxE*jacTheta1 * f*beta5E/xE*meE*(PggH0(xE)*l);
        r.xCyC -= ncg1 * jacxC*jacTheta1 * f*beta     *meC*(2.*CA*(1./(1.-xC)*l));
    }

#endif // CounterByHeavyside

    return r;
}