cdbl v0 = -(rt1*(zeta2 + Li2(1 + (rt1 - betaq*rt1)/(betaq*(betaq*q2 + rt1) - t1)) - 2*Li2((rt1 + t1)/t1) - Li2((-(Power(betaq,2)*q2) + rt1 + t1)/(betaq*(-(betaq*q2) + rt1) + t1)) - Li2((-(Power(betaq,2)*q2) + rt1 + t1)/(-(betaq*(betaq*q2 + rt1)) + t1)) + Li2((2*m2*(rt1 + t1) + t1*(-q2 + rt1 + t1))/(t1*(2*m2 - q2 - rt1 + t1))) + Li2((2*m2*(rt1 + t1) + t1*(-q2 + rt1 + t1))/(t1*(2*m2 - q2 + rt1 + t1))) - Li2(1 - (2*rt1)/(2*m2 - q2 + rt1 + t1)) + Li2(1 - ((1 + betaq)*rt1)/(betaq*(-(betaq*q2) + rt1) + t1))));
cdbl c0 = -(-(Power(q2 - t1,5)*t1*u1*(2*Power(q2 - t1,2) - 2*q2*u1 + 3*t1*u1 + Power(u1,2))) + 64*Power(m2,4)*Power(q2,2)*sp*(2*q2*u1 + t1*(t1 + u1)) + 4*Power(m2,3)*q2*(16*Power(q2,3)*u1*(3*t1 + 2*u1) + Power(sp,2)*Power(t1,2)*(7*t1 + 4*u1) + 4*Power(q2,2)*t1*(Power(t1,2) - 12*t1*u1 - 15*Power(u1,2)) - 4*q2*t1*(t1 + u1)*(4*Power(t1,2) + t1*u1 - 2*Power(u1,2))) + 2*m2*(q2 - t1)*(Power(sp,2)*Power(t1,5) + 2*Power(q2,5)*u1*(6*t1 + u1) + Power(q2,3)*t1*u1*(8*t1 + u1)*(9*t1 + 5*u1) - Power(q2,4)*t1*u1*(49*t1 + 18*u1) + Power(q2,2)*Power(t1,2)*(Power(t1,3) - 47*Power(t1,2)*u1 - 46*t1*Power(u1,2) - 12*Power(u1,3)) + q2*Power(t1,3)*(-2*Power(t1,3) + 10*Power(t1,2)*u1 + 15*t1*Power(u1,2) + 4*Power(u1,3))) + 2*Power(m2,2)*(Power(sp,2)*Power(t1,4)*(-3*t1 + u1) + 32*Power(q2,4)*t1*u1*(5*t1 + 3*u1) - 4*Power(q2,5)*u1*(13*t1 + 5*u1) + q2*Power(t1,3)*(t1 + u1)*(11*Power(t1,2) + 4*t1*u1 + 9*Power(u1,2)) + 2*Power(q2,3)*t1*(2*Power(t1,3) - 73*Power(t1,2)*u1 - 77*t1*Power(u1,2) - 8*Power(u1,3)) + 2*Power(q2,2)*Power(t1,2)*(-6*Power(t1,3) + 16*Power(t1,2)*u1 + 26*t1*Power(u1,2) + 13*Power(u1,3))))/(2.*Power(rt1,6)*sp*Power(t1,2)*u1);
r += c0*v0;
cdbl v1 = Li2((m2 + t1)/m2);
cdbl c1 = (-2*Power(m2,2)*Power(sp,3) + Power(t1,2)*u1*(2*Power(q2 - t1,2) - 2*q2*u1 + 3*t1*u1 + Power(u1,2)) - 2*m2*t1*u1*(2*sp*t1 + q2*(3*t1 + u1)))/(2.*sp*Power(t1,3)*u1);
r += c1*v1;
cdbl v2 = -(ru1*(zeta2 + Li2(1 + (ru1 - betaq*ru1)/(betaq*(betaq*q2 + ru1) - u1)) - 2*Li2((ru1 + u1)/u1) - Li2((-(Power(betaq,2)*q2) + ru1 + u1)/(betaq*(-(betaq*q2) + ru1) + u1)) - Li2((-(Power(betaq,2)*q2) + ru1 + u1)/(-(betaq*(betaq*q2 + ru1)) + u1)) + Li2((2*m2*(ru1 + u1) + u1*(-q2 + ru1 + u1))/(u1*(2*m2 - q2 - ru1 + u1))) + Li2((2*m2*(ru1 + u1) + u1*(-q2 + ru1 + u1))/(u1*(2*m2 - q2 + ru1 + u1))) - Li2(1 - (2*ru1)/(2*m2 - q2 + ru1 + u1)) + Li2(1 - ((1 + betaq)*ru1)/(betaq*(-(betaq*q2) + ru1) + u1))));
cdbl c2 = (64*Power(m2,4)*Power(q2,2)*sp*(2*q2*t1 - sp*u1) - t1*Power(q2 - u1,5)*u1*(2*Power(q2,2) - 2*q2*(t1 + 2*u1) + (t1 + u1)*(t1 + 2*u1)) + 4*Power(m2,3)*q2*(16*Power(q2,3)*t1*(2*t1 + 3*u1) + Power(sp,2)*Power(u1,2)*(4*t1 + 7*u1) + 4*Power(q2,2)*u1*(-15*Power(t1,2) - 12*t1*u1 + Power(u1,2)) - 4*q2*u1*(t1 + u1)*(-2*Power(t1,2) + t1*u1 + 4*Power(u1,2))) + 2*Power(m2,2)*(Power(sp,2)*(t1 - 3*u1)*Power(u1,4) + 32*Power(q2,4)*t1*u1*(3*t1 + 5*u1) - 4*Power(q2,5)*t1*(5*t1 + 13*u1) + q2*Power(u1,3)*(t1 + u1)*(9*Power(t1,2) + 4*t1*u1 + 11*Power(u1,2)) + 2*Power(q2,2)*Power(u1,2)*(13*Power(t1,3) + 26*Power(t1,2)*u1 + 16*t1*Power(u1,2) - 6*Power(u1,3)) - 2*Power(q2,3)*u1*(8*Power(t1,3) + 77*Power(t1,2)*u1 + 73*t1*Power(u1,2) - 2*Power(u1,3))) + 2*m2*(q2 - u1)*(Power(sp,2)*Power(u1,5) + 2*Power(q2,5)*t1*(t1 + 6*u1) + Power(q2,3)*t1*u1*(t1 + 8*u1)*(5*t1 + 9*u1) - Power(q2,4)*t1*u1*(18*t1 + 49*u1) + q2*Power(u1,3)*(4*Power(t1,3) + 15*Power(t1,2)*u1 + 10*t1*Power(u1,2) - 2*Power(u1,3)) + Power(q2,2)*Power(u1,2)*(-12*Power(t1,3) - 46*Power(t1,2)*u1 - 47*t1*Power(u1,2) + Power(u1,3))))/(2.*Power(ru1,6)*sp*t1*Power(u1,2));
r += c2*v2;
cdbl v3 = Li2((m2 + u1)/m2);
cdbl c3 = (2*Power(m2,2)*Power(sp,3) - t1*Power(u1,2)*(2*Power(q2,2) - 2*q2*(t1 + 2*u1) + (t1 + u1)*(t1 + 2*u1)) + 2*m2*t1*u1*(2*sp*u1 + q2*(t1 + 3*u1)))/(2.*sp*t1*Power(u1,3));
r += c3*v3;
cdbl v4 = Li2(-chi) + ln(chi)*ln(1 + chi);
cdbl c4 = ((t1 - u1)*(16*Power(m2,2)*q2*Power(sp,2) + 3*(q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-3*Power(sp,2)*t1*u1 - 2*Power(q2,2)*(2*Power(t1,2) + 7*t1*u1 + 2*Power(u1,2)) + 2*q2*(t1 + u1)*(2*Power(t1,2) + 7*t1*u1 + 2*Power(u1,2)))))/(beta*s*sp*Power(t1,2)*Power(u1,2));
r += c4*v4;
cdbl v5 = Li2(chi) + ln(1 - chi)*ln(chi);
cdbl c5 = (4*(t1 - u1)*(4*Power(m2,2)*q2*Power(sp,2) + (q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-(Power(sp,2)*t1*u1) - Power(q2,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + q2*(t1 + u1)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)))))/(beta*s*sp*Power(t1,2)*Power(u1,2));
r += c5*v5;
cdbl v6 = Li2(-(chi/chiq)) + Li2(-(chi*chiq)) + ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq);
cdbl c6 = -(((t1 - u1)*(8*Power(m2,2)*q2*Power(sp,2) + (q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-(Power(sp,2)*t1*u1) - 2*Power(q2,2)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) + 2*q2*(t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)))))/(beta*s*sp*Power(t1,2)*Power(u1,2)));
r += c6*v6;
cdbl v7 = Power(ln(chi),2);
cdbl c7 = ((2*Power(q2,2) - 4*m2*s + 2*q2*sp + Power(sp,2))*(t1 - u1))/(4.*sp*t1*u1) - ((t1 - u1)*(16*Power(m2,2)*q2*Power(sp,2) + 5*(q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-5*Power(sp,2)*t1*u1 - 2*Power(q2,2)*(2*Power(t1,2) + 9*t1*u1 + 2*Power(u1,2)) + 2*q2*(t1 + u1)*(2*Power(t1,2) + 9*t1*u1 + 2*Power(u1,2)))))/(4.*beta*s*sp*Power(t1,2)*Power(u1,2));
r += c7*v7;
cdbl v8 = ln(chi)*ln(-(t1/m2));
cdbl c8 = (8*Power(m2,2)*q2*sp + t1*(-2*Power(q2,3) + Power(sp,2)*(2*t1 + u1) - 3*q2*(t1 + u1)*(2*t1 + u1) + Power(q2,2)*(6*t1 + 4*u1)) + 2*m2*(2*Power(q2,2)*(2*t1 + u1) + t1*(t1 + u1)*(3*t1 + u1) - q2*(7*Power(t1,2) + 6*t1*u1 + 2*Power(u1,2))))/(beta*s*sp*Power(t1,2));
r += c8*v8;
cdbl v9 = ln(chi)*ln(-(u1/m2));
cdbl c9 = (-8*Power(m2,2)*q2*sp + u1*(2*Power(q2,3) - Power(sp,2)*(t1 + 2*u1) + 3*q2*(t1 + u1)*(t1 + 2*u1) - 2*Power(q2,2)*(2*t1 + 3*u1)) - 2*m2*(2*Power(q2,2)*(t1 + 2*u1) + u1*(t1 + u1)*(t1 + 3*u1) - q2*(2*Power(t1,2) + 6*t1*u1 + 7*Power(u1,2))))/(beta*s*sp*Power(u1,2));
r += c9*v9;
cdbl v10 = ln(chi);
cdbl c10 = (beta*m2*q2*(-t1 + u1))/((4*m2 - s)*t1*u1) - ((t1 - u1)*(4*Power(m2,2)*q2*Power(sp,2) + (q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-(Power(sp,2)*t1*u1) - Power(q2,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + q2*(t1 + u1)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)))))/(beta*s*sp*Power(t1,2)*Power(u1,2));
r += c10*v10;
cdbl v11 = ln(-(t1/m2));
cdbl c11 = (32*Power(m2,5)*Power(q2,2)*Power(sp,2)*(-t1 + u1) - Power(q2 - t1,2)*Power(t1,4)*u1*(-4*Power(q2,3) - 8*Power(q2,2)*sp + t1*(t1 + u1)*(2*t1 + 3*u1) - 2*q2*(3*Power(t1,2) + 6*t1*u1 + 2*Power(u1,2))) + 4*Power(m2,4)*q2*(3*Power(sp,2)*Power(t1,3) - 4*q2*t1*(t1 + u1)*(5*Power(t1,2) + 3*t1*u1 - 5*Power(u1,2)) + 4*Power(q2,2)*(2*Power(t1,3) + 5*Power(t1,2)*u1 - 2*t1*Power(u1,2) - Power(u1,3))) + 2*Power(m2,3)*(2*Power(sp,2)*Power(t1,4)*(-t1 + u1) + q2*Power(t1,3)*(t1 + u1)*(16*Power(t1,2) + 17*t1*u1 + 13*Power(u1,2)) - Power(q2,2)*Power(t1,2)*(49*Power(t1,3) + 132*Power(t1,2)*u1 + 65*t1*Power(u1,2) - 28*Power(u1,3)) + 2*Power(q2,3)*t1*(16*Power(t1,3) + 53*Power(t1,2)*u1 - 9*t1*Power(u1,2) - 8*Power(u1,3)) + Power(q2,4)*(-3*Power(t1,3) - 21*Power(t1,2)*u1 + 7*t1*Power(u1,2) + Power(u1,3))) + Power(m2,2)*t1*(2*Power(q2,5)*(3*t1 - u1)*u1 + 4*Power(sp,2)*Power(t1,4)*(-2*t1 + u1) + 2*q2*Power(t1,3)*(t1 + u1)*(19*Power(t1,2) + 28*t1*u1 + 29*Power(u1,2)) + 2*Power(q2,3)*t1*(24*Power(t1,3) + 126*Power(t1,2)*u1 + 37*t1*Power(u1,2) - 8*Power(u1,3)) + Power(q2,4)*(-9*Power(t1,3) - 85*Power(t1,2)*u1 + 21*t1*Power(u1,2) + 3*Power(u1,3)) - Power(q2,2)*Power(t1,2)*(61*Power(t1,3) + 239*Power(t1,2)*u1 + 235*t1*Power(u1,2) + 17*Power(u1,3))) + m2*Power(t1,2)*(3*Power(q2,5)*(3*t1 - u1)*u1 - Power(sp,2)*Power(t1,4)*(5*t1 + 3*u1) + Power(q2,4)*(-4*Power(t1,3) - 65*Power(t1,2)*u1 - 7*t1*Power(u1,2) + Power(u1,3)) + Power(q2,3)*t1*(12*Power(t1,3) + 131*Power(t1,2)*u1 + 92*t1*Power(u1,2) + 4*Power(u1,3)) - Power(q2,2)*Power(t1,2)*(17*Power(t1,3) + 112*Power(t1,2)*u1 + 158*t1*Power(u1,2) + 36*Power(u1,3)) + q2*Power(t1,3)*(14*Power(t1,3) + 50*Power(t1,2)*u1 + 79*t1*Power(u1,2) + 42*Power(u1,3))))/(2.*Power(rt1,4)*sp*Power(t1,2)*Power(m2 + t1,2)*u1);
r += c11*v11;
cdbl v12 = ln(-(u1/m2));
cdbl c12 = (32*Power(m2,5)*Power(q2,2)*Power(sp,2)*(-t1 + u1) - t1*Power(q2 - u1,2)*Power(u1,4)*(4*Power(q2,3) + 8*Power(q2,2)*sp - u1*(t1 + u1)*(3*t1 + 2*u1) + 2*q2*(2*Power(t1,2) + 6*t1*u1 + 3*Power(u1,2))) + 4*Power(m2,4)*q2*(-3*Power(sp,2)*Power(u1,3) + 4*q2*u1*(t1 + u1)*(-5*Power(t1,2) + 3*t1*u1 + 5*Power(u1,2)) + 4*Power(q2,2)*(Power(t1,3) + 2*Power(t1,2)*u1 - 5*t1*Power(u1,2) - 2*Power(u1,3))) + m2*Power(u1,2)*(3*Power(q2,5)*t1*(t1 - 3*u1) + Power(sp,2)*Power(u1,4)*(3*t1 + 5*u1) + Power(q2,4)*(-Power(t1,3) + 7*Power(t1,2)*u1 + 65*t1*Power(u1,2) + 4*Power(u1,3)) - Power(q2,3)*u1*(4*Power(t1,3) + 92*Power(t1,2)*u1 + 131*t1*Power(u1,2) + 12*Power(u1,3)) - q2*Power(u1,3)*(42*Power(t1,3) + 79*Power(t1,2)*u1 + 50*t1*Power(u1,2) + 14*Power(u1,3)) + Power(q2,2)*Power(u1,2)*(36*Power(t1,3) + 158*Power(t1,2)*u1 + 112*t1*Power(u1,2) + 17*Power(u1,3))) + 2*Power(m2,3)*(2*Power(sp,2)*Power(u1,4)*(-t1 + u1) - q2*Power(u1,3)*(t1 + u1)*(13*Power(t1,2) + 17*t1*u1 + 16*Power(u1,2)) + 2*Power(q2,3)*u1*(8*Power(t1,3) + 9*Power(t1,2)*u1 - 53*t1*Power(u1,2) - 16*Power(u1,3)) - Power(q2,4)*(Power(t1,3) + 7*Power(t1,2)*u1 - 21*t1*Power(u1,2) - 3*Power(u1,3)) + Power(q2,2)*Power(u1,2)*(-28*Power(t1,3) + 65*Power(t1,2)*u1 + 132*t1*Power(u1,2) + 49*Power(u1,3))) + Power(m2,2)*u1*(2*Power(q2,5)*t1*(t1 - 3*u1) + 4*Power(sp,2)*Power(u1,4)*(-t1 + 2*u1) - 2*q2*Power(u1,3)*(t1 + u1)*(29*Power(t1,2) + 28*t1*u1 + 19*Power(u1,2)) + Power(q2,4)*(-3*Power(t1,3) - 21*Power(t1,2)*u1 + 85*t1*Power(u1,2) + 9*Power(u1,3)) - 2*Power(q2,3)*u1*(-8*Power(t1,3) + 37*Power(t1,2)*u1 + 126*t1*Power(u1,2) + 24*Power(u1,3)) + Power(q2,2)*Power(u1,2)*(17*Power(t1,3) + 235*Power(t1,2)*u1 + 239*t1*Power(u1,2) + 61*Power(u1,3))))/(2.*Power(ru1,4)*sp*t1*Power(u1,2)*Power(m2 + u1,2));
r += c12*v12;
cdbl v13 = Power(ln(chiq),2);
cdbl c13 = -((2*Power(q2,2) - 4*m2*s + 2*q2*sp + Power(sp,2))*(t1 - u1))/(4.*sp*t1*u1) + ((t1 - u1)*(8*Power(m2,2)*q2*Power(sp,2) + (q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-(Power(sp,2)*t1*u1) - 2*Power(q2,2)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) + 2*q2*(t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)))))/(2.*beta*s*sp*Power(t1,2)*Power(u1,2));
r += c13*v13;
cdbl v14 = ln(chiq);
cdbl c14 = (betaq*q2*(t1 - u1)*(1024*Power(m2,5)*Power(q2,4)*Power(sp,2) + 32*Power(m2,4)*Power(q2,2)*(2*Power(sp,3)*t1*u1 + 4*Power(q2,2)*(t1 + u1)*(8*Power(t1,2) + 23*t1*u1 + 8*Power(u1,2)) - 4*Power(q2,3)*(9*Power(t1,2) + 26*t1*u1 + 9*Power(u1,2)) - q2*Power(sp,2)*(16*Power(t1,2) + 7*t1*u1 + 16*Power(u1,2))) - Power(q2 - t1,2)*t1*Power(q2 - u1,2)*u1*(6*Power(q2,5) + 18*Power(q2,4)*sp + 2*Power(sp,3)*t1*u1 - 6*Power(q2,2)*(t1 + u1)*(2*t1 + u1)*(t1 + 2*u1) + Power(q2,3)*(21*Power(t1,2) + 46*t1*u1 + 21*Power(u1,2)) + q2*(3*Power(t1,4) + 16*Power(t1,3)*u1 + 28*Power(t1,2)*Power(u1,2) + 16*t1*Power(u1,3) + 3*Power(u1,4))) + 8*Power(m2,3)*q2*(Power(sp,3)*t1*u1*(Power(t1,2) - 12*t1*u1 + Power(u1,2)) + 12*Power(q2,5)*(5*Power(t1,2) + 22*t1*u1 + 5*Power(u1,2)) - 4*Power(q2,4)*(t1 + u1)*(28*Power(t1,2) + 121*t1*u1 + 28*Power(u1,2)) + 4*q2*Power(sp,2)*(2*Power(t1,4) + 5*Power(t1,3)*u1 - 4*Power(t1,2)*Power(u1,2) + 5*t1*Power(u1,3) + 2*Power(u1,4)) - 2*Power(q2,2)*(t1 + u1)*(16*Power(t1,4) + 95*Power(t1,3)*u1 + 78*Power(t1,2)*Power(u1,2) + 95*t1*Power(u1,3) + 16*Power(u1,4)) + Power(q2,3)*(88*Power(t1,4) + 536*Power(t1,3)*u1 + 740*Power(t1,2)*Power(u1,2) + 536*t1*Power(u1,3) + 88*Power(u1,4))) + 2*Power(m2,2)*(2*Power(sp,3)*Power(t1,2)*Power(u1,2)*(3*Power(t1,2) - 2*t1*u1 + 3*Power(u1,2)) - 4*Power(q2,7)*(11*Power(t1,2) + 82*t1*u1 + 11*Power(u1,2)) + 4*Power(q2,6)*(t1 + u1)*(32*Power(t1,2) + 233*t1*u1 + 32*Power(u1,2)) + q2*Power(sp,2)*t1*u1*(-14*Power(t1,4) + 7*Power(t1,3)*u1 + 27*Power(t1,2)*Power(u1,2) + 7*t1*Power(u1,3) - 14*Power(u1,4)) + 2*Power(q2,4)*(t1 + u1)*(40*Power(t1,4) + 507*Power(t1,3)*u1 + 670*Power(t1,2)*Power(u1,2) + 507*t1*Power(u1,3) + 40*Power(u1,4)) + Power(q2,2)*t1*u1*(t1 + u1)*(123*Power(t1,4) + 158*Power(t1,3)*u1 + 90*Power(t1,2)*Power(u1,2) + 158*t1*Power(u1,3) + 123*Power(u1,4)) - Power(q2,5)*(144*Power(t1,4) + 1475*Power(t1,3)*u1 + 2414*Power(t1,2)*Power(u1,2) + 1475*t1*Power(u1,3) + 144*Power(u1,4)) - 2*Power(q2,3)*(10*Power(t1,6) + 240*Power(t1,5)*u1 + 561*Power(t1,4)*Power(u1,2) + 706*Power(t1,3)*Power(u1,3) + 561*Power(t1,2)*Power(u1,4) + 240*t1*Power(u1,5) + 10*Power(u1,6))) + m2*(Power(sp,2)*Power(t1,3)*Power(u1,3)*(-5*Power(t1,2) + 11*t1*u1 - 5*Power(u1,2)) + 2*Power(q2,8)*(3*Power(t1,2) + 50*t1*u1 + 3*Power(u1,2)) - 6*Power(q2,7)*(t1 + u1)*(4*Power(t1,2) + 65*t1*u1 + 4*Power(u1,2)) + Power(q2,5)*Power(sp,3)*(24*Power(t1,2) + 667*t1*u1 + 24*Power(u1,2)) + 3*Power(q2,6)*(12*Power(t1,4) + 247*Power(t1,3)*u1 + 476*Power(t1,2)*Power(u1,2) + 247*t1*Power(u1,3) + 12*Power(u1,4)) - q2*Power(t1,2)*Power(u1,2)*(t1 + u1)*(22*Power(t1,4) + 27*Power(t1,3)*u1 + 66*Power(t1,2)*Power(u1,2) + 27*t1*Power(u1,3) + 22*Power(u1,4)) - Power(q2,3)*t1*u1*(t1 + u1)*(137*Power(t1,4) + 682*Power(t1,3)*u1 + 716*Power(t1,2)*Power(u1,2) + 682*t1*Power(u1,3) + 137*Power(u1,4)) + Power(q2,4)*(6*Power(t1,6) + 430*Power(t1,5)*u1 + 1707*Power(t1,4)*Power(u1,2) + 2378*Power(t1,3)*Power(u1,3) + 1707*Power(t1,2)*Power(u1,4) + 430*t1*Power(u1,5) + 6*Power(u1,6)) + Power(q2,2)*t1*u1*(19*Power(t1,6) + 211*Power(t1,5)*u1 + 446*Power(t1,4)*Power(u1,2) + 518*Power(t1,3)*Power(u1,3) + 446*Power(t1,2)*Power(u1,4) + 211*t1*Power(u1,5) + 19*Power(u1,6)))))/(2.*Power(rt1,4)*Power(ru1,4)*sp*Power(t1,2)*Power(u1,2));
r += c14*v14;
cdbl v15 = zeta2;
cdbl c15 = -(((t1 - u1)*(-(Power(m2,2)*Power(sp,4)) + (2*Power(q2,2) + 2*q2*sp + Power(sp,2))*Power(t1,2)*Power(u1,2) + m2*t1*u1*(q2*Power(t1 - u1,2) - 4*sp*t1*u1)))/(sp*Power(t1,3)*Power(u1,3))) + ((t1 - u1)*(16*Power(m2,2)*q2*Power(sp,2) + 5*(q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-5*Power(sp,2)*t1*u1 - 2*Power(q2,2)*(2*Power(t1,2) + 9*t1*u1 + 2*Power(u1,2)) + 2*q2*(t1 + u1)*(2*Power(t1,2) + 9*t1*u1 + 2*Power(u1,2)))))/(2.*beta*s*sp*Power(t1,2)*Power(u1,2));
r += c15*v15;
cdbl v16 = 1;
cdbl c16 = (32*Power(m2,5)*Power(q2,2)*Power(sp,3)*(-t1 + u1) + (q2 - t1)*Power(t1,2)*(q2 - u1)*(t1 - u1)*Power(u1,2)*(Power(q2,2)*(q2*sp + Power(t1,2)) + Power(2*q2 + sp,2)*t1*u1 + Power(q2,2)*Power(u1,2)) + 4*Power(m2,4)*q2*sp*(t1 - u1)*(4*Power(q2,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + Power(sp,2)*(2*Power(t1,2) + t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(12*Power(t1,2) + 29*t1*u1 + 12*Power(u1,2))) + m2*t1*(t1 - u1)*u1*(-2*Power(q2,5)*Power(sp,2) + 3*Power(q2,4)*(t1 + u1)*(2*Power(t1,2) + 7*t1*u1 + 2*Power(u1,2)) + Power(t1,2)*Power(u1,2)*(t1 + u1)*(5*Power(t1,2) + 9*t1*u1 + 5*Power(u1,2)) + Power(q2,2)*(t1 + u1)*(2*Power(t1,4) + 24*Power(t1,3)*u1 + 57*Power(t1,2)*Power(u1,2) + 24*t1*Power(u1,3) + 2*Power(u1,4)) - q2*t1*u1*(5*Power(t1,4) + 36*Power(t1,3)*u1 + 61*Power(t1,2)*Power(u1,2) + 36*t1*Power(u1,3) + 5*Power(u1,4)) - Power(q2,3)*(6*Power(t1,4) + 40*Power(t1,3)*u1 + 79*Power(t1,2)*Power(u1,2) + 40*t1*Power(u1,3) + 6*Power(u1,4))) + Power(m2,3)*(4*Power(sp,3)*Power(t1,2)*Power(u1,2)*(-t1 + u1) + 2*Power(q2,4)*(t1 - u1)*(t1 + u1)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) - q2*Power(sp,2)*(t1 - u1)*(8*Power(t1,4) + 28*Power(t1,3)*u1 + 45*Power(t1,2)*Power(u1,2) + 28*t1*Power(u1,3) + 8*Power(u1,4)) + Power(q2,2)*(t1 - u1)*(t1 + u1)*(18*Power(t1,4) + 129*Power(t1,3)*u1 + 214*Power(t1,2)*Power(u1,2) + 129*t1*Power(u1,3) + 18*Power(u1,4)) - Power(q2,3)*(t1 - u1)*(20*Power(t1,4) + 137*Power(t1,3)*u1 + 238*Power(t1,2)*Power(u1,2) + 137*t1*Power(u1,3) + 20*Power(u1,4))) + Power(m2,2)*(t1 - u1)*(2*Power(q2,5)*sp*t1*u1 + 2*Power(sp,2)*Power(t1,2)*Power(u1,2)*(2*t1 + u1)*(t1 + 2*u1) + Power(q2,4)*(2*Power(t1,4) + 29*Power(t1,3)*u1 + 55*Power(t1,2)*Power(u1,2) + 29*t1*Power(u1,3) + 2*Power(u1,4)) - Power(q2,3)*(t1 + u1)*(4*Power(t1,4) + 53*Power(t1,3)*u1 + 124*Power(t1,2)*Power(u1,2) + 53*t1*Power(u1,3) + 4*Power(u1,4)) - q2*t1*u1*(t1 + u1)*(12*Power(t1,4) + 48*Power(t1,3)*u1 + 85*Power(t1,2)*Power(u1,2) + 48*t1*Power(u1,3) + 12*Power(u1,4)) + Power(q2,2)*(2*Power(t1,6) + 42*Power(t1,5)*u1 + 160*Power(t1,4)*Power(u1,2) + 249*Power(t1,3)*Power(u1,3) + 160*Power(t1,2)*Power(u1,4) + 42*t1*Power(u1,5) + 2*Power(u1,6))))/(2.*Power(rt1,2)*Power(ru1,2)*sp*Power(t1,2)*(m2 + t1)*Power(u1,2)*(m2 + u1));
r += c16*v16;
