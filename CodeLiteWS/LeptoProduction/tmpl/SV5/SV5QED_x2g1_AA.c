cdbl v0 = -(rt1*(zeta2 + Li2(1 + (rt1 - betaq*rt1)/(betaq*(betaq*q2 + rt1) - t1)) - 2*Li2((rt1 + t1)/t1) - Li2((-(Power(betaq,2)*q2) + rt1 + t1)/(betaq*(-(betaq*q2) + rt1) + t1)) - Li2((-(Power(betaq,2)*q2) + rt1 + t1)/(-(betaq*(betaq*q2 + rt1)) + t1)) + Li2((2*m2*(rt1 + t1) + t1*(-q2 + rt1 + t1))/(t1*(2*m2 - q2 - rt1 + t1))) + Li2((2*m2*(rt1 + t1) + t1*(-q2 + rt1 + t1))/(t1*(2*m2 - q2 + rt1 + t1))) - Li2(1 - (2*rt1)/(2*m2 - q2 + rt1 + t1)) + Li2(1 - ((1 + betaq)*rt1)/(betaq*(-(betaq*q2) + rt1) + t1))));
cdbl c0 = (16*Pi*(-(Power(q2 - t1,5)*t1*(2*Power(q2 - t1,2)*t1 + 4*t1*(-q2 + t1)*u1 + (-2*q2 + 3*t1)*Power(u1,2) + Power(u1,3))) + 2*m2*(Power(q2 - t1,3)*Power(t1,2)*(14*Power(q2,3) - 33*Power(q2,2)*t1 + 23*q2*Power(t1,2) - 3*Power(t1,3)) - Power(q2 - t1,2)*Power(t1,2)*(25*Power(q2,3) - 54*Power(q2,2)*t1 + 39*q2*Power(t1,2) - 6*Power(t1,3))*u1 + t1*(-q2 + t1)*(14*Power(q2,4) - 53*Power(q2,3)*t1 + 65*Power(q2,2)*Power(t1,2) - 34*q2*Power(t1,3) + 5*Power(t1,4))*Power(u1,2) - (q2 - 2*t1)*(q2 - t1)*(2*Power(q2,3) - 9*Power(q2,2)*t1 + 6*q2*Power(t1,2) - 2*Power(t1,3))*Power(u1,3)) - 64*Power(m2,4)*q2*(4*Power(q2,2)*Power(t1,2) - Power(sp,2)*t1*u1 - 2*q2*(t1 + u1)*(Power(t1,2) + t1*u1 + Power(u1,2))) + 8*Power(m2,3)*(40*Power(q2,4)*Power(t1,2) + Power(sp,2)*Power(t1,3)*u1 + 2*q2*Power(sp,2)*Power(t1,2)*(-5*t1 + 4*u1) - 4*Power(q2,3)*(21*Power(t1,3) + 13*Power(t1,2)*u1 + 10*t1*Power(u1,2) + 4*Power(u1,3)) + 4*Power(q2,2)*t1*(11*Power(t1,3) + 13*Power(t1,2)*u1 + 11*t1*Power(u1,2) + 7*Power(u1,3))) + 2*Power(m2,2)*(-72*Power(q2,5)*Power(t1,2) + Power(t1,4)*(t1 + u1)*(3*Power(t1,2) + 2*t1*u1 + 7*Power(u1,2)) - 2*Power(q2,3)*t1*(2*t1 + u1)*(91*Power(t1,2) + 24*t1*u1 + 41*Power(u1,2)) + 4*Power(q2,4)*(67*Power(t1,3) + 28*Power(t1,2)*u1 + 18*t1*Power(u1,2) + 5*Power(u1,3)) - q2*Power(t1,3)*(49*Power(t1,3) + 87*Power(t1,2)*u1 + 55*t1*Power(u1,2) + 13*Power(u1,3)) + 2*Power(q2,2)*Power(t1,2)*(107*Power(t1,3) + 126*Power(t1,2)*u1 + 85*t1*Power(u1,2) + 46*Power(u1,3)))))/(Power(rt1,6)*sp*Power(t1,2)*u1);
r += c0*v0;
cdbl v1 = Li2((m2 + t1)/m2);
cdbl c1 = (16*Pi*(-2*Power(m2,2)*(t1 - u1)*(t1 + u1)*(3*t1 + u1) - 2*m2*t1*(Power(t1,2)*(-4*q2 + 5*t1) - (q2 - 6*t1)*t1*u1 + (q2 + 3*t1)*Power(u1,2)) - Power(t1,2)*(2*Power(q2 - t1,2)*t1 + 4*t1*(-q2 + t1)*u1 + (-2*q2 + 3*t1)*Power(u1,2) + Power(u1,3))))/(sp*Power(t1,3)*u1);
r += c1*v1;
cdbl v2 = -(ru1*(zeta2 + Li2(1 + (ru1 - betaq*ru1)/(betaq*(betaq*q2 + ru1) - u1)) - 2*Li2((ru1 + u1)/u1) - Li2((-(Power(betaq,2)*q2) + ru1 + u1)/(betaq*(-(betaq*q2) + ru1) + u1)) - Li2((-(Power(betaq,2)*q2) + ru1 + u1)/(-(betaq*(betaq*q2 + ru1)) + u1)) + Li2((2*m2*(ru1 + u1) + u1*(-q2 + ru1 + u1))/(u1*(2*m2 - q2 - ru1 + u1))) + Li2((2*m2*(ru1 + u1) + u1*(-q2 + ru1 + u1))/(u1*(2*m2 - q2 + ru1 + u1))) - Li2(1 - (2*ru1)/(2*m2 - q2 + ru1 + u1)) + Li2(1 - ((1 + betaq)*ru1)/(betaq*(-(betaq*q2) + ru1) + u1))));
cdbl c2 = (16*Pi*(-64*Power(m2,4)*q2*(-(Power(sp,2)*t1*u1) + 4*Power(q2,2)*Power(u1,2) - 2*q2*(t1 + u1)*(Power(t1,2) + t1*u1 + Power(u1,2))) - Power(q2 - u1,5)*u1*(2*Power(q2,2)*u1 - 2*q2*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2)) + (t1 + u1)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))) + 8*Power(m2,3)*(40*Power(q2,4)*Power(u1,2) + 2*q2*Power(sp,2)*(4*t1 - 5*u1)*Power(u1,2) + Power(sp,2)*t1*Power(u1,3) + 4*Power(q2,2)*u1*(7*Power(t1,3) + 11*Power(t1,2)*u1 + 13*t1*Power(u1,2) + 11*Power(u1,3)) - 4*Power(q2,3)*(4*Power(t1,3) + 10*Power(t1,2)*u1 + 13*t1*Power(u1,2) + 21*Power(u1,3))) + 2*m2*(q2 - u1)*(14*Power(q2,5)*Power(u1,2) - Power(u1,4)*(4*Power(t1,3) + 5*Power(t1,2)*u1 + 6*t1*Power(u1,2) + 3*Power(u1,3)) + q2*Power(u1,3)*(14*Power(t1,3) + 34*Power(t1,2)*u1 + 45*t1*Power(u1,2) + 29*Power(u1,3)) - Power(q2,4)*(2*Power(t1,3) + 14*Power(t1,2)*u1 + 25*t1*Power(u1,2) + 61*Power(u1,3)) - Power(q2,2)*Power(u1,2)*(24*Power(t1,3) + 65*Power(t1,2)*u1 + 93*t1*Power(u1,2) + 82*Power(u1,3)) + Power(q2,3)*u1*(13*Power(t1,3) + 53*Power(t1,2)*u1 + 79*t1*Power(u1,2) + 103*Power(u1,3))) + 2*Power(m2,2)*(-72*Power(q2,5)*Power(u1,2) + Power(u1,4)*(t1 + u1)*(7*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2)) - 2*Power(q2,3)*u1*(t1 + 2*u1)*(41*Power(t1,2) + 24*t1*u1 + 91*Power(u1,2)) - q2*Power(u1,3)*(13*Power(t1,3) + 55*Power(t1,2)*u1 + 87*t1*Power(u1,2) + 49*Power(u1,3)) + 4*Power(q2,4)*(5*Power(t1,3) + 18*Power(t1,2)*u1 + 28*t1*Power(u1,2) + 67*Power(u1,3)) + 2*Power(q2,2)*Power(u1,2)*(46*Power(t1,3) + 85*Power(t1,2)*u1 + 126*t1*Power(u1,2) + 107*Power(u1,3)))))/(Power(ru1,6)*sp*t1*Power(u1,2));
r += c2*v2;
cdbl v3 = Li2((m2 + u1)/m2);
cdbl c3 = (16*Pi*(2*Power(m2,2)*(t1 - u1)*(t1 + u1)*(t1 + 3*u1) - Power(u1,2)*(2*Power(q2,2)*u1 - 2*q2*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2)) + (t1 + u1)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))) - 2*m2*u1*(q2*(Power(t1,2) - t1*u1 - 4*Power(u1,2)) + u1*(3*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)))))/(sp*t1*Power(u1,3));
r += c3*v3;
cdbl v4 = Li2((2*beta)/(1 + beta)) - Li2(chi) + (ln(chi)*(4*ln(betaTilde) - 2*ln(1 - chi) + 2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))))/2.;
cdbl c4 = (64*Pi*(Power(t1,2) + Power(u1,2))*(4*Power(m2,2)*Power(sp,2) + (q2 + sp)*(2*q2 + sp)*t1*u1 + 2*m2*((t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2)))))/(beta*s*sp*Power(t1,2)*Power(u1,2));
r += c4*v4;
cdbl v5 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
cdbl c5 = (32*Pi*(8*Power(m2,2)*sp*(Power(t1,3) + 3*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 3*u1)) + t1*u1*(-2*Power(q2,3)*sp - 4*Power(q2,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - Power(sp,2)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + 3*q2*(t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))) + 2*m2*(6*Power(q2,2)*sp*t1*u1 - (t1 + u1)*(2*Power(t1,4) + 11*Power(t1,3)*u1 + 14*Power(t1,2)*Power(u1,2) + 11*t1*Power(u1,3) + 2*Power(u1,4)) + q2*(2*Power(t1,4) + 19*Power(t1,3)*u1 + 26*Power(t1,2)*Power(u1,2) + 19*t1*Power(u1,3) + 2*Power(u1,4)))))/(beta*s*sp*Power(t1,2)*Power(u1,2));
r += c5*v5;
cdbl v6 = Power(ln(chi),2);
cdbl c6 = (8*Pi*(-8*Power(m2,2)*Power(sp,2) + 4*m2*(-2*(t1 + u1)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) + q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))) + sp*(-2*Power(q2,2)*sp - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)))))/(Power(sp,2)*t1*u1) + (8*Pi*(-8*Power(m2,2)*sp*(Power(t1,3) - Power(t1,2)*u1 + t1*(2*q2 - u1)*u1 + Power(u1,3)) + t1*u1*(-2*Power(q2,3)*sp - 12*Power(q2,2)*t1*u1 + Power(sp,2)*(Power(t1,2) - 4*t1*u1 + Power(u1,2)) - 3*q2*(t1 + u1)*(Power(t1,2) - 4*t1*u1 + Power(u1,2))) + 2*m2*(6*Power(q2,2)*sp*t1*u1 + Power(t1 - u1,2)*(t1 + u1)*(2*t1 + u1)*(t1 + 2*u1) + q2*(-2*Power(t1,4) + 3*Power(t1,3)*u1 + 18*Power(t1,2)*Power(u1,2) + 3*t1*Power(u1,3) - 2*Power(u1,4)))))/(beta*s*sp*Power(t1,2)*Power(u1,2));
r += c6*v6;
cdbl v7 = ln(chi)*ln(-(t1/m2));
cdbl c7 = (32*Pi*(8*Power(m2,2)*(2*q2*Power(t1,2) - (t1 + u1)*(2*Power(t1,2) + t1*u1 + Power(u1,2))) + t1*(2*Power(q2,3)*t1 - Power(sp,2)*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2)) + 3*q2*(t1 + u1)*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2)) - 2*Power(q2,2)*(3*Power(t1,2) + 3*t1*u1 + Power(u1,2))) + 2*m2*(-6*Power(q2,2)*Power(t1,2) - (t1 + u1)*(3*t1 + 2*u1)*(2*Power(t1,2) + t1*u1 + Power(u1,2)) + q2*(13*Power(t1,3) + 13*Power(t1,2)*u1 + 6*t1*Power(u1,2) + 2*Power(u1,3)))))/(beta*s*sp*Power(t1,2)*u1);
r += c7*v7;
cdbl v8 = ln(chi)*ln(-(u1/m2));
cdbl c8 = (32*Pi*(-4*m2*Power(t1,3)*(2*m2 - q2 + t1) - Power(t1,2)*(16*Power(m2,2) + 2*Power(q2,2) + Power(sp,2) - 3*q2*t1 + 2*m2*(-6*q2 + 7*t1))*u1 + (2*q2*(8*Power(m2,2) - 6*m2*q2 + Power(q2,2)) - 2*(12*Power(m2,2) - 13*m2*q2 + 3*Power(q2,2) + Power(sp,2))*t1 + 3*(-8*m2 + 3*q2)*Power(t1,2))*Power(u1,2) - 2*(8*Power(m2,2) + Power(sp,2) + 3*q2*(q2 - 2*t1) + 13*m2*(-q2 + t1))*Power(u1,3) + 6*(-2*m2 + q2)*Power(u1,4)))/(beta*s*sp*t1*Power(u1,2));
r += c8*v8;
cdbl v9 = ln(chi);
cdbl c9 = 64*beta*Pi*s*(-(s/Power(sp,2)) + m2/(t1*u1)) - (32*Pi*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2)))/(beta*sp*Power(t1,2)*Power(u1,2));
r += c9*v9;
cdbl v10 = -4*ln(betaTilde) - 2*ln(-((t1 + u1)/m2)) + ln(-((-q2 + t1 + u1)/m2));
cdbl c10 = (32*Pi*(2*m2*Power(sp,2) - (2*q2 + sp)*t1*u1)*(Power(t1,2) + Power(u1,2)))/(sp*Power(t1,2)*Power(u1,2));
r += c10*v10;
cdbl v11 = ln(-(t1/m2));
cdbl c11 = (16*Pi*(-32*Power(m2,5)*q2*Power(sp,2)*(q2*sp + 2*t1*u1) + Power(q2 - t1,2)*Power(t1,4)*u1*(-4*Power(q2,3) - 8*Power(q2,2)*sp + t1*(t1 + u1)*(2*t1 + 3*u1) - 2*q2*(3*Power(t1,2) + 6*t1*u1 + 2*Power(u1,2))) + 8*Power(m2,4)*sp*(-(sp*Power(t1,3)*u1) + 2*q2*Power(t1,2)*u1*(11*t1 + 15*u1) + 2*Power(q2,3)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) - 2*Power(q2,2)*t1*(9*Power(t1,2) + 20*t1*u1 + 7*Power(u1,2))) + m2*Power(t1,2)*(-(Power(q2,5)*u1*(9*t1 + u1)) + Power(t1,4)*(t1 + u1)*(2*Power(t1,2) + 15*t1*u1 + 3*Power(u1,2)) + 2*Power(q2,2)*Power(t1,2)*(t1 + u1)*(4*Power(t1,2) + 75*t1*u1 + 36*Power(u1,2)) + Power(q2,4)*(4*Power(t1,3) + 75*Power(t1,2)*u1 + 26*t1*Power(u1,2) - Power(u1,3)) - Power(q2,3)*t1*(9*Power(t1,3) + 167*Power(t1,2)*u1 + 144*t1*Power(u1,2) + 16*Power(u1,3)) - q2*Power(t1,3)*(5*Power(t1,3) + 74*Power(t1,2)*u1 + 113*t1*Power(u1,2) + 66*Power(u1,3))) + 2*Power(m2,3)*(Power(q2,4)*(t1 + u1)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) + 2*Power(t1,4)*(Power(t1,3) - 5*t1*Power(u1,2) - 4*Power(u1,3)) - 2*Power(q2,3)*t1*(18*Power(t1,3) + 89*Power(t1,2)*u1 + 58*t1*Power(u1,2) + 7*Power(u1,3)) + 2*Power(q2,2)*Power(t1,2)*(34*Power(t1,3) + 163*Power(t1,2)*u1 + 182*t1*Power(u1,2) + 49*Power(u1,3)) - q2*Power(t1,3)*(19*Power(t1,3) + 127*Power(t1,2)*u1 + 257*t1*Power(u1,2) + 161*Power(u1,3))) + Power(m2,2)*t1*(2*Power(q2,5)*sp*u1 + 2*Power(t1,4)*(t1 + u1)*(5*Power(t1,2) + 9*t1*u1 - 4*Power(u1,2)) + Power(q2,4)*(9*Power(t1,3) + 97*Power(t1,2)*u1 + 37*t1*Power(u1,2) + Power(u1,3)) - 2*Power(q2,3)*t1*(26*Power(t1,3) + 191*Power(t1,2)*u1 + 135*t1*Power(u1,2) + 12*Power(u1,3)) - 2*q2*Power(t1,3)*(14*Power(t1,3) + 92*Power(t1,2)*u1 + 157*t1*Power(u1,2) + 101*Power(u1,3)) + Power(q2,2)*Power(t1,2)*(53*Power(t1,3) + 459*Power(t1,2)*u1 + 579*t1*Power(u1,2) + 177*Power(u1,3)))))/(Power(rt1,4)*sp*Power(t1,2)*Power(m2 + t1,2)*u1);
r += c11*v11;
cdbl v12 = ln(-(u1/m2));
cdbl c12 = (16*Pi*(-32*Power(m2,5)*q2*Power(sp,2)*(q2*sp + 2*t1*u1) - t1*Power(q2 - u1,2)*Power(u1,4)*(4*Power(q2,3) + 8*Power(q2,2)*sp - u1*(t1 + u1)*(3*t1 + 2*u1) + 2*q2*(2*Power(t1,2) + 6*t1*u1 + 3*Power(u1,2))) + 8*Power(m2,4)*sp*(-(sp*t1*Power(u1,3)) + 2*q2*t1*Power(u1,2)*(15*t1 + 11*u1) + 2*Power(q2,3)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) - 2*Power(q2,2)*u1*(7*Power(t1,2) + 20*t1*u1 + 9*Power(u1,2))) + m2*Power(u1,2)*(-(Power(q2,5)*t1*(t1 + 9*u1)) + Power(u1,4)*(t1 + u1)*(3*Power(t1,2) + 15*t1*u1 + 2*Power(u1,2)) + 2*Power(q2,2)*Power(u1,2)*(t1 + u1)*(36*Power(t1,2) + 75*t1*u1 + 4*Power(u1,2)) + Power(q2,4)*(-Power(t1,3) + 26*Power(t1,2)*u1 + 75*t1*Power(u1,2) + 4*Power(u1,3)) - q2*Power(u1,3)*(66*Power(t1,3) + 113*Power(t1,2)*u1 + 74*t1*Power(u1,2) + 5*Power(u1,3)) - Power(q2,3)*u1*(16*Power(t1,3) + 144*Power(t1,2)*u1 + 167*t1*Power(u1,2) + 9*Power(u1,3))) + 2*Power(m2,3)*(Power(q2,4)*(t1 + u1)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) + 2*Power(u1,4)*(-4*Power(t1,3) - 5*Power(t1,2)*u1 + Power(u1,3)) - 2*Power(q2,3)*u1*(7*Power(t1,3) + 58*Power(t1,2)*u1 + 89*t1*Power(u1,2) + 18*Power(u1,3)) - q2*Power(u1,3)*(161*Power(t1,3) + 257*Power(t1,2)*u1 + 127*t1*Power(u1,2) + 19*Power(u1,3)) + 2*Power(q2,2)*Power(u1,2)*(49*Power(t1,3) + 182*Power(t1,2)*u1 + 163*t1*Power(u1,2) + 34*Power(u1,3))) + Power(m2,2)*u1*(2*Power(q2,5)*sp*t1 + 2*Power(u1,4)*(t1 + u1)*(-4*Power(t1,2) + 9*t1*u1 + 5*Power(u1,2)) + Power(q2,4)*(Power(t1,3) + 37*Power(t1,2)*u1 + 97*t1*Power(u1,2) + 9*Power(u1,3)) - 2*q2*Power(u1,3)*(101*Power(t1,3) + 157*Power(t1,2)*u1 + 92*t1*Power(u1,2) + 14*Power(u1,3)) - 2*Power(q2,3)*u1*(12*Power(t1,3) + 135*Power(t1,2)*u1 + 191*t1*Power(u1,2) + 26*Power(u1,3)) + Power(q2,2)*Power(u1,2)*(177*Power(t1,3) + 579*Power(t1,2)*u1 + 459*t1*Power(u1,2) + 53*Power(u1,3)))))/(Power(ru1,4)*sp*t1*Power(u1,2)*Power(m2 + u1,2));
r += c12*v12;
cdbl v13 = Power(ln(chiq),2);
cdbl c13 = (8*Pi*(8*Power(m2,2)*Power(sp,2) - 4*m2*(-2*(t1 + u1)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) + q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))) + sp*(2*Power(q2,2)*sp - (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + q2*(6*Power(t1,2) + 8*t1*u1 + 6*Power(u1,2)))))/(Power(sp,2)*t1*u1) + (16*Pi*(8*Power(m2,2)*sp*(Power(t1,3) + 3*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 3*u1)) + t1*u1*(-2*Power(q2,3)*sp - 4*Power(q2,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - Power(sp,2)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + 3*q2*(t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))) + 2*m2*(6*Power(q2,2)*sp*t1*u1 - (t1 + u1)*(2*Power(t1,4) + 11*Power(t1,3)*u1 + 14*Power(t1,2)*Power(u1,2) + 11*t1*Power(u1,3) + 2*Power(u1,4)) + q2*(2*Power(t1,4) + 19*Power(t1,3)*u1 + 26*Power(t1,2)*Power(u1,2) + 19*t1*Power(u1,3) + 2*Power(u1,4)))))/(beta*s*sp*Power(t1,2)*Power(u1,2));
r += c13*v13;
cdbl v14 = ln(chiq);
cdbl c14 = (16*betaq*Pi*q2*(-256*Power(m2,5)*Power(q2,2)*Power(sp,2)*(4*Power(q2,2)*t1*u1 - 3*Power(sp,2)*t1*u1 - 2*q2*(t1 + u1)*(Power(t1,2) + Power(u1,2))) + 64*Power(m2,4)*q2*(-6*Power(sp,4)*t1*u1*(Power(t1,2) - t1*u1 + Power(u1,2)) + 16*Power(q2,4)*t1*u1*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) + 4*Power(q2,3)*Power(sp,3)*(3*Power(t1,2) + 5*t1*u1 + 3*Power(u1,2)) + q2*Power(sp,3)*(Power(t1,2) - 4*t1*u1 + Power(u1,2))*(4*Power(t1,2) + 7*t1*u1 + 4*Power(u1,2)) + Power(q2,2)*Power(sp,2)*(8*Power(t1,4) + 17*Power(t1,3)*u1 - 18*Power(t1,2)*Power(u1,2) + 17*t1*Power(u1,3) + 8*Power(u1,4))) + Power(q2 - t1,2)*t1*Power(q2 - u1,2)*u1*(4*Power(q2,5)*t1*u1 + 2*Power(sp,3)*t1*u1*(Power(t1,2) + Power(u1,2)) - 2*Power(q2,4)*(t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) - 2*Power(q2,2)*(t1 + u1)*(Power(t1,2) + Power(u1,2))*(6*Power(t1,2) + 11*t1*u1 + 6*Power(u1,2)) + q2*(Power(t1,2) + Power(u1,2))*(3*Power(t1,4) + 16*Power(t1,3)*u1 + 24*Power(t1,2)*Power(u1,2) + 16*t1*Power(u1,3) + 3*Power(u1,4)) + Power(q2,3)*(15*Power(t1,4) + 30*Power(t1,3)*u1 + 38*Power(t1,2)*Power(u1,2) + 30*t1*Power(u1,3) + 15*Power(u1,4))) + 16*Power(m2,3)*(-8*Power(q2,6)*t1*u1*(3*Power(t1,2) + 14*t1*u1 + 3*Power(u1,2)) + 3*Power(sp,4)*t1*u1*(Power(t1,4) - Power(t1,3)*u1 + Power(t1,2)*Power(u1,2) - t1*Power(u1,3) + Power(u1,4)) + 4*Power(q2,5)*(t1 + u1)*(6*Power(t1,4) + 33*Power(t1,3)*u1 + 58*Power(t1,2)*Power(u1,2) + 33*t1*Power(u1,3) + 6*Power(u1,4)) + Power(q2,2)*Power(sp,2)*(-8*Power(t1,6) - 7*Power(t1,5)*u1 + 70*Power(t1,4)*Power(u1,2) + 10*Power(t1,3)*Power(u1,3) + 70*Power(t1,2)*Power(u1,4) - 7*t1*Power(u1,5) - 8*Power(u1,6)) - 2*q2*Power(sp,3)*(Power(t1,6) - 6*Power(t1,5)*u1 - 16*Power(t1,4)*Power(u1,2) + 18*Power(t1,3)*Power(u1,3) - 16*Power(t1,2)*Power(u1,4) - 6*t1*Power(u1,5) + Power(u1,6)) + 4*Power(q2,3)*(t1 + u1)*(7*Power(t1,6) + 26*Power(t1,5)*u1 + 20*Power(t1,4)*Power(u1,2) + 20*Power(t1,2)*Power(u1,4) + 26*t1*Power(u1,5) + 7*Power(u1,6)) - Power(q2,4)*(40*Power(t1,6) + 225*Power(t1,5)*u1 + 456*Power(t1,4)*Power(u1,2) + 478*Power(t1,3)*Power(u1,3) + 456*Power(t1,2)*Power(u1,4) + 225*t1*Power(u1,5) + 40*Power(u1,6))) + m2*(-4*Power(q2,8)*t1*u1*(Power(t1,2) + 18*t1*u1 + Power(u1,2)) + 2*Power(q2,7)*(t1 + u1)*(3*Power(t1,4) + 52*Power(t1,3)*u1 + 122*Power(t1,2)*Power(u1,2) + 52*t1*Power(u1,3) + 3*Power(u1,4)) + Power(sp,2)*Power(t1,3)*Power(u1,3)*(19*Power(t1,4) - 18*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) - 18*t1*Power(u1,3) + 19*Power(u1,4)) + 2*q2*Power(t1,2)*Power(u1,2)*(t1 + u1)*(6*Power(t1,6) - 27*Power(t1,5)*u1 + 38*Power(t1,4)*Power(u1,2) + 90*Power(t1,3)*Power(u1,3) + 38*Power(t1,2)*Power(u1,4) - 27*t1*Power(u1,5) + 6*Power(u1,6)) - 2*Power(q2,6)*(12*Power(t1,6) + 183*Power(t1,5)*u1 + 482*Power(t1,4)*Power(u1,2) + 654*Power(t1,3)*Power(u1,3) + 482*Power(t1,2)*Power(u1,4) + 183*t1*Power(u1,5) + 12*Power(u1,6)) + 2*Power(q2,5)*(t1 + u1)*(18*Power(t1,6) + 245*Power(t1,5)*u1 + 530*Power(t1,4)*Power(u1,2) + 650*Power(t1,3)*Power(u1,3) + 530*Power(t1,2)*Power(u1,4) + 245*t1*Power(u1,5) + 18*Power(u1,6)) + 2*Power(q2,3)*(t1 + u1)*(3*Power(t1,8) + 80*Power(t1,7)*u1 + 241*Power(t1,6)*Power(u1,2) + 416*Power(t1,5)*Power(u1,3) + 600*Power(t1,4)*Power(u1,4) + 416*Power(t1,3)*Power(u1,5) + 241*Power(t1,2)*Power(u1,6) + 80*t1*Power(u1,7) + 3*Power(u1,8)) - Power(q2,4)*(24*Power(t1,8) + 403*Power(t1,7)*u1 + 1364*Power(t1,6)*Power(u1,2) + 2453*Power(t1,5)*Power(u1,3) + 2872*Power(t1,4)*Power(u1,4) + 2453*Power(t1,3)*Power(u1,5) + 1364*Power(t1,2)*Power(u1,6) + 403*t1*Power(u1,7) + 24*Power(u1,8)) - Power(q2,2)*t1*u1*(29*Power(t1,8) + 152*Power(t1,7)*u1 + 242*Power(t1,6)*Power(u1,2) + 676*Power(t1,5)*Power(u1,3) + 1050*Power(t1,4)*Power(u1,4) + 676*Power(t1,3)*Power(u1,5) + 242*Power(t1,2)*Power(u1,6) + 152*t1*Power(u1,7) + 29*Power(u1,8))) + 4*Power(m2,2)*(16*Power(q2,7)*t1*u1*(Power(t1,2) + 8*t1*u1 + Power(u1,2)) - 4*Power(q2,6)*(t1 + u1)*(Power(t1,2) + 6*t1*u1 + Power(u1,2))*(5*Power(t1,2) + 13*t1*u1 + 5*Power(u1,2)) + Power(sp,3)*Power(t1,2)*Power(u1,2)*(-16*Power(t1,4) + 15*Power(t1,3)*u1 - 12*Power(t1,2)*Power(u1,2) + 15*t1*Power(u1,3) - 16*Power(u1,4)) + Power(q2,4)*Power(sp,3)*(60*Power(t1,4) + 283*Power(t1,3)*u1 + 92*Power(t1,2)*Power(u1,2) + 283*t1*Power(u1,3) + 60*Power(u1,4)) + q2*Power(sp,2)*t1*u1*(6*Power(t1,6) - 69*Power(t1,5)*u1 - 27*Power(t1,4)*Power(u1,2) + 76*Power(t1,3)*Power(u1,3) - 27*Power(t1,2)*Power(u1,4) - 69*t1*Power(u1,5) + 6*Power(u1,6)) + Power(q2,5)*(56*Power(t1,6) + 447*Power(t1,5)*u1 + 1088*Power(t1,4)*Power(u1,2) + 1330*Power(t1,3)*Power(u1,3) + 1088*Power(t1,2)*Power(u1,4) + 447*t1*Power(u1,5) + 56*Power(u1,6)) - 4*Power(q2,2)*(t1 + u1)*(2*Power(t1,8) + 12*Power(t1,7)*u1 - 7*Power(t1,6)*Power(u1,2) - 4*Power(t1,5)*Power(u1,3) + 54*Power(t1,4)*Power(u1,4) - 4*Power(t1,3)*Power(u1,5) - 7*Power(t1,2)*Power(u1,6) + 12*t1*Power(u1,7) + 2*Power(u1,8)) + Power(q2,3)*(32*Power(t1,8) + 232*Power(t1,7)*u1 + 526*Power(t1,6)*Power(u1,2) + 696*Power(t1,5)*Power(u1,3) + 836*Power(t1,4)*Power(u1,4) + 696*Power(t1,3)*Power(u1,5) + 526*Power(t1,2)*Power(u1,6) + 232*t1*Power(u1,7) + 32*Power(u1,8)))))/(Power(rt1,4)*Power(ru1,4)*Power(sp,2)*Power(t1,2)*Power(u1,2));
r += c14*v14;
cdbl v15 = zeta2;
cdbl c15 = (16*Pi*(-2*m2*(6*Power(t1,4)*(-q2 + t1) + t1*(6*Power(q2,2)*sp - 13*q2*Power(t1,2) + 19*Power(t1,3))*u1 + 5*Power(t1,2)*(2*q2 + 3*t1)*Power(u1,2) + t1*(-13*q2 + 15*t1)*Power(u1,3) + (-6*q2 + 19*t1)*Power(u1,4) + 6*Power(u1,5)) + 8*Power(m2,2)*sp*(3*Power(t1,3) + Power(t1,2)*u1 + 3*Power(u1,3) + t1*u1*(2*q2 + u1)) + t1*u1*(2*Power(q2,3)*sp + Power(sp,2)*(-5*Power(t1,2) + 4*t1*u1 - 5*Power(u1,2)) - 4*Power(q2,2)*(2*Power(t1,2) - 3*t1*u1 + 2*Power(u1,2)) + 3*q2*(t1 + u1)*(5*Power(t1,2) - 4*t1*u1 + 5*Power(u1,2)))))/(beta*s*sp*Power(t1,2)*Power(u1,2)) + (32*Pi*(Power(m2,2)*Power(sp,2)*(Power(t1,4) + 2*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 2*t1*Power(u1,3) + Power(u1,4)) + sp*Power(t1,2)*Power(u1,2)*(2*Power(q2,2)*sp - (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + q2*(6*Power(t1,2) + 8*t1*u1 + 6*Power(u1,2))) + m2*t1*u1*(8*t1*u1*(t1 + u1)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(Power(t1,4) + 14*Power(t1,3)*u1 + 14*Power(t1,2)*Power(u1,2) + 14*t1*Power(u1,3) + Power(u1,4)))))/(Power(sp,2)*Power(t1,3)*Power(u1,3));
r += c15*v15;
cdbl v16 = 1;
cdbl c16 = (16*Pi*(32*Power(m2,5)*q2*Power(sp,2)*(-2*q2 + sp) + 8*Power(m2,4)*(-(Power(sp,3)*(Power(t1,2) - t1*u1 + Power(u1,2))) - 4*Power(q2,2)*(t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) + 4*Power(q2,3)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) - 3*q2*Power(sp,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2))) + t1*u1*(Power(q2,5)*Power(t1 - u1,2) - q2*Power(sp,4)*t1*u1 + Power(t1,2)*Power(u1,2)*(t1 + u1)*(Power(t1,2) + Power(u1,2)) - 2*Power(q2,4)*(t1 + u1)*(Power(t1,2) - 3*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*t1*u1*(t1 + u1)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + Power(q2,3)*(Power(t1,4) - 3*Power(t1,3)*u1 - 12*Power(t1,2)*Power(u1,2) - 3*t1*Power(u1,3) + Power(u1,4))) + m2*t1*u1*(-2*Power(q2,5)*sp + 2*Power(q2,3)*(t1 + u1)*(2*Power(t1,2) - 17*t1*u1 + 2*Power(u1,2)) - 2*Power(q2,4)*(5*Power(t1,2) - 6*t1*u1 + 5*Power(u1,2)) + Power(sp,2)*t1*u1*(9*Power(t1,2) - 11*t1*u1 + 9*Power(u1,2)) - q2*(t1 + u1)*(3*Power(t1,4) + 29*Power(t1,3)*u1 - 8*Power(t1,2)*Power(u1,2) + 29*t1*Power(u1,3) + 3*Power(u1,4)) + Power(q2,2)*(3*Power(t1,4) + 47*Power(t1,3)*u1 + 40*Power(t1,2)*Power(u1,2) + 47*t1*Power(u1,3) + 3*Power(u1,4))) + 2*Power(m2,3)*(Power(q2,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2))*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) - 2*Power(q2,4)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) + Power(q2,3)*(t1 + u1)*(7*Power(t1,2) + 54*t1*u1 + 7*Power(u1,2)) + 4*Power(sp,2)*(Power(t1,4) + 2*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 2*t1*Power(u1,3) + Power(u1,4)) - q2*(t1 + u1)*(5*Power(t1,4) + 35*Power(t1,3)*u1 + 56*Power(t1,2)*Power(u1,2) + 35*t1*Power(u1,3) + 5*Power(u1,4))) + Power(m2,2)*(4*Power(q2,5)*t1*u1 - Power(q2,4)*(t1 + u1)*(Power(t1,2) + 28*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*(t1 + u1)*(Power(t1,4) + 14*Power(t1,3)*u1 + 39*Power(t1,2)*Power(u1,2) + 14*t1*Power(u1,3) + Power(u1,4)) + Power(q2,3)*(Power(t1,4) + 24*Power(t1,3)*u1 - 6*Power(t1,2)*Power(u1,2) + 24*t1*Power(u1,3) + Power(u1,4)) - q2*(Power(t1,2) + Power(u1,2))*(2*Power(t1,4) + 39*Power(t1,3)*u1 + 78*Power(t1,2)*Power(u1,2) + 39*t1*Power(u1,3) + 2*Power(u1,4)) + t1*u1*(t1 + u1)*(16*Power(t1,4) + 13*Power(t1,3)*u1 - 14*Power(t1,2)*Power(u1,2) + 13*t1*Power(u1,3) + 16*Power(u1,4)))))/(Power(rt1,2)*Power(ru1,2)*sp*t1*(m2 + t1)*u1*(m2 + u1));
r += c16*v16;
