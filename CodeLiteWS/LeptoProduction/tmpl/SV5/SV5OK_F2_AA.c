cdbl v0 = Li2((m2 + t1)/m2);
cdbl c0 = (16*Pi*(-8*Power(m2,3)*Power(sp,4) + 2*Power(m2,2)*q2*Power(sp,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) + 2*m2*q2*sp*t1*((6*q2 - 7*t1)*Power(t1,2) + (q2 - 6*t1)*t1*u1 + (q2 - 5*t1)*Power(u1,2)) + q2*Power(t1,3)*(Power(sp,2)*(t1 + 2*u1) + 2*q2*(3*q2*u1 - (t1 + u1)*(t1 + 4*u1)))))/(q2*Power(sp,2)*Power(t1,3)*u1);
r += c0*v0;
cdbl v1 = Li2((m2 + u1)/m2);
cdbl c1 = (16*Pi*(-8*Power(m2,3)*Power(sp,4) + 2*Power(m2,2)*q2*Power(sp,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) + 2*m2*q2*sp*u1*(q2*Power(t1,2) + (q2 - 5*t1)*t1*u1 + 6*(q2 - t1)*Power(u1,2) - 7*Power(u1,3)) + q2*Power(u1,3)*(6*Power(q2,2)*t1 + Power(sp,2)*(2*t1 + u1) - 2*q2*(t1 + u1)*(4*t1 + u1))))/(q2*Power(sp,2)*t1*Power(u1,3));
r += c1*v1;
cdbl v2 = Li2(1 + (2*t1)/((-1 + beta)*(t1 + u1))) + Li2(1 + (2*u1)/((-1 + beta)*(t1 + u1))) - Li2(-(-t1 + u1 + beta*(t1 + u1))/(2.*t1)) - Li2(-(t1 - u1 + beta*(t1 + u1))/(2.*u1))*(Power(ln(-((-1 + beta)*(t1 + u1))/(2.*t1)),2) + Power(ln(-((-1 + beta)*(t1 + u1))/(2.*u1)),2)) + ((2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2)))*(2*(ln(-(t1/m2)) + ln(-(u1/m2)) - ln(-((t1 + u1)/m2))) + ln(-((-q2 + t1 + u1)/m2))))/2. + 4*(ln(-(t1/m2)) + ln(-(u1/m2)))*ln(\[Beta]til);
cdbl c2 = (32*Pi*(-4*Power(m2,2)*q2*Power(sp,4) - 2*m2*Power(sp,2)*(-2*q2*sp*t1*u1 + 2*Power(sp,2)*t1*u1 + Power(q2,2)*(Power(t1,2) - 6*t1*u1 + Power(u1,2))) + q2*t1*u1*(Power(sp,2)*(Power(t1,2) + Power(u1,2)) + 2*Power(q2,2)*(Power(t1,2) - 4*t1*u1 + Power(u1,2)) - 2*q2*(t1 + u1)*(Power(t1,2) - 4*t1*u1 + Power(u1,2)))))/(q2*Power(sp,2)*Power(t1,2)*Power(u1,2));
r += c2*v2;
cdbl v3 = Li2((2*beta)/(1 + beta)) - Li2(chi) + (ln(chi)*(-2*ln(1 - chi) + 2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2)) + 4*ln(\[Beta]til)))/2.;
cdbl c3 = (64*Pi*(8*Power(m2,3)*q2*Power(sp,4) + 4*Power(m2,2)*Power(sp,2)*(-8*Power(q2,2)*t1*u1 + 2*Power(sp,2)*t1*u1 + q2*(t1 + u1)*(Power(t1,2) + 4*t1*u1 + Power(u1,2))) + q2*t1*u1*(Power(sp,3)*(Power(t1,2) + Power(u1,2)) + 2*Power(q2,3)*(Power(t1,2) - 4*t1*u1 + Power(u1,2)) - 4*Power(q2,2)*(t1 + u1)*(Power(t1,2) - 4*t1*u1 + Power(u1,2)) + q2*Power(sp,2)*(3*Power(t1,2) - 8*t1*u1 + 3*Power(u1,2))) + 2*m2*(-2*Power(sp,5)*t1*u1 - q2*Power(sp,2)*t1*u1*(Power(t1,2) + Power(u1,2)) + Power(q2,2)*(t1 + u1)*(Power(t1,4) - 4*Power(t1,3)*u1 - 22*Power(t1,2)*Power(u1,2) - 4*t1*Power(u1,3) + Power(u1,4)) - Power(q2,3)*(Power(t1,4) - 2*Power(t1,3)*u1 - 18*Power(t1,2)*Power(u1,2) - 2*t1*Power(u1,3) + Power(u1,4)))))/(beta*q2*s*Power(sp,2)*Power(t1,2)*Power(u1,2));
r += c3*v3;
cdbl v4 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
cdbl c4 = (32*Pi*(-16*Power(m2,3)*q2*Power(sp,4) - 8*Power(m2,2)*Power(sp,2)*(-2*Power(q2,2)*t1*u1 + 2*Power(sp,2)*t1*u1 + q2*(t1 + u1)*(Power(t1,2) + Power(u1,2))) + q2*t1*u1*(-4*Power(q2,3)*(Power(t1,2) - t1*u1 + Power(u1,2)) - Power(sp,3)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + 2*Power(q2,2)*(t1 + u1)*(5*Power(t1,2) - 2*t1*u1 + 5*Power(u1,2)) - q2*Power(sp,2)*(9*Power(t1,2) + 4*t1*u1 + 9*Power(u1,2))) + 2*m2*(4*Power(sp,5)*t1*u1 + q2*Power(sp,2)*t1*u1*(11*Power(t1,2) + 18*t1*u1 + 11*Power(u1,2)) + 2*Power(q2,3)*(Power(t1,4) + 4*Power(t1,3)*u1 - 6*Power(t1,2)*Power(u1,2) + 4*t1*Power(u1,3) + Power(u1,4)) - Power(q2,2)*(t1 + u1)*(2*Power(t1,4) + 13*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 13*t1*Power(u1,3) + 2*Power(u1,4)))))/(beta*q2*s*Power(sp,2)*Power(t1,2)*Power(u1,2));
r += c4*v4;
cdbl v5 = -(rt1*(zeta2 + Li2(1 + (rt1 - betaq*rt1)/(betaq*(betaq*q2 + rt1) - t1)) - 2*Li2((rt1 + t1)/t1) - Li2((-(Power(betaq,2)*q2) + rt1 + t1)/(betaq*(-(betaq*q2) + rt1) + t1)) - Li2((-(Power(betaq,2)*q2) + rt1 + t1)/(-(betaq*(betaq*q2 + rt1)) + t1)) + Li2((2*m2*(rt1 + t1) + t1*(-q2 + rt1 + t1))/(t1*(2*m2 - q2 - rt1 + t1))) + Li2((2*m2*(rt1 + t1) + t1*(-q2 + rt1 + t1))/(t1*(2*m2 - q2 + rt1 + t1))) - Li2(1 - (2*rt1)/(2*m2 - q2 + rt1 + t1)) + Li2(1 - ((1 + betaq)*rt1)/(betaq*(-(betaq*q2) + rt1) + t1))));
cdbl c5 = (16*Pi*(32*Power(m2,3)*q2*Power(sp,2)*(-3*q2 + t1) + 8*Power(m2,2)*(9*Power(q2,3)*Power(sp,2) + q2*Power(sp,2)*t1*(12*t1 + u1) - Power(sp,2)*Power(t1,2)*(3*t1 + 2*u1) - 2*Power(q2,2)*t1*(11*Power(t1,2) + 19*t1*u1 + 14*Power(u1,2))) + 2*m2*(q2*Power(sp,2)*Power(t1,2)*(30*t1 + 11*u1) + Power(q2,3)*t1*(t1 + u1)*(31*t1 + 49*u1) - 6*Power(q2,4)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) - 2*Power(t1,3)*(t1 + u1)*(3*Power(t1,2) + 8*t1*u1 + 2*Power(u1,2)) - Power(q2,2)*t1*(49*Power(t1,3) + 103*Power(t1,2)*u1 + 83*t1*Power(u1,2) + 5*Power(u1,3))) + t1*Power(-q2 + t1,3)*(-(Power(sp,2)*(t1 + 2*u1)) + 2*q2*(-3*q2*u1 + (t1 + u1)*(t1 + 4*u1)))))/(Power(rt1,4)*Power(sp,2)*t1*u1);
r += c5*v5;
cdbl v6 = -(ru1*(zeta2 + Li2(1 + (ru1 - betaq*ru1)/(betaq*(betaq*q2 + ru1) - u1)) - 2*Li2((ru1 + u1)/u1) - Li2((-(Power(betaq,2)*q2) + ru1 + u1)/(betaq*(-(betaq*q2) + ru1) + u1)) - Li2((-(Power(betaq,2)*q2) + ru1 + u1)/(-(betaq*(betaq*q2 + ru1)) + u1)) + Li2((2*m2*(ru1 + u1) + u1*(-q2 + ru1 + u1))/(u1*(2*m2 - q2 - ru1 + u1))) + Li2((2*m2*(ru1 + u1) + u1*(-q2 + ru1 + u1))/(u1*(2*m2 - q2 + ru1 + u1))) - Li2(1 - (2*ru1)/(2*m2 - q2 + ru1 + u1)) + Li2(1 - ((1 + betaq)*ru1)/(betaq*(-(betaq*q2) + ru1) + u1))));
cdbl c6 = (16*Pi*(32*Power(m2,3)*q2*Power(sp,2)*(-3*q2 + u1) + Power(q2 - u1,3)*u1*(6*Power(q2,2)*t1 + Power(sp,2)*(2*t1 + u1) - 2*q2*(t1 + u1)*(4*t1 + u1)) + 8*Power(m2,2)*(9*Power(q2,3)*Power(sp,2) - Power(sp,2)*Power(u1,2)*(2*t1 + 3*u1) + q2*Power(sp,2)*u1*(t1 + 12*u1) - 2*Power(q2,2)*u1*(14*Power(t1,2) + 19*t1*u1 + 11*Power(u1,2))) + 2*m2*(q2*Power(sp,2)*Power(u1,2)*(11*t1 + 30*u1) + Power(q2,3)*u1*(t1 + u1)*(49*t1 + 31*u1) - 6*Power(q2,4)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) - 2*Power(u1,3)*(t1 + u1)*(2*Power(t1,2) + 8*t1*u1 + 3*Power(u1,2)) - Power(q2,2)*u1*(5*Power(t1,3) + 83*Power(t1,2)*u1 + 103*t1*Power(u1,2) + 49*Power(u1,3)))))/(Power(ru1,4)*Power(sp,2)*t1*u1);
r += c6*v6;
cdbl v7 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
cdbl c7 = (16*Pi*(8*Power(m2,2)*q2*Power(sp,2) + 4*m2*(-(q2*Power(sp,3)) + Power(sp,4) - 6*Power(q2,2)*t1*u1) + q2*(-(Power(sp,2)*(Power(t1,2) + Power(u1,2))) - 2*Power(q2,2)*(Power(t1,2) - 4*t1*u1 + Power(u1,2)) + 2*q2*(t1 + u1)*(Power(t1,2) - 4*t1*u1 + Power(u1,2)))))/(q2*Power(sp,2)*t1*u1);
r += c7*v7;
cdbl v8 = ln(-(t1/m2))*ln(-(u1/m2));
cdbl c8 = (32*Pi*(8*Power(m2,2)*q2*Power(sp,2)*(Power(t1,2) + t1*u1 + Power(u1,2)) + q2*t1*u1*(-(Power(sp,2)*(Power(t1,2) + Power(u1,2))) - 2*Power(q2,2)*(Power(t1,2) - 4*t1*u1 + Power(u1,2)) + 2*q2*(t1 + u1)*(Power(t1,2) - 4*t1*u1 + Power(u1,2))) + 4*m2*(-(q2*Power(sp,3)*t1*u1) + Power(sp,4)*t1*u1 + Power(q2,2)*(Power(t1,4) - 4*Power(t1,3)*u1 - 4*Power(t1,2)*Power(u1,2) - 4*t1*Power(u1,3) + Power(u1,4)))))/(q2*Power(sp,2)*Power(t1,2)*Power(u1,2));
r += c8*v8;
cdbl v9 = ln(chi)*ln(-(t1/m2));
cdbl c9 = (32*Pi*(16*Power(m2,3)*q2*Power(sp,3) + 8*Power(m2,2)*sp*(-(t1*(Power(sp,3) + 2*q2*t1*(-q2 + t1))) + q2*t1*(-4*q2 + t1)*u1 + 4*q2*t1*Power(u1,2) + q2*Power(u1,3)) + q2*t1*(-2*Power(q2,3)*(Power(t1,2) - t1*u1 + Power(u1,2)) - Power(sp,3)*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*(t1 + u1)*(3*Power(t1,2) - t1*u1 + 2*Power(u1,2)) - q2*Power(sp,2)*(6*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2))) + 2*m2*(2*Power(sp,5)*t1 + q2*Power(sp,2)*t1*(10*Power(t1,2) + 9*t1*u1 + Power(u1,2)) + Power(q2,2)*((8*q2 - 15*t1)*Power(t1,3) - 2*Power(t1,2)*(3*q2 + 7*t1)*u1 + 3*Power(t1,2)*Power(u1,2) + 2*q2*Power(u1,3) - 2*Power(u1,4)))))/(beta*q2*s*Power(sp,2)*Power(t1,2)*u1);
r += c9*v9;
cdbl v10 = ln(-(t1/m2));
cdbl c10 = (32*Pi*(16*Power(m2,4)*q2*Power(sp,4) + q2*(6*Power(q2,2) + 6*q2*sp + Power(sp,2))*(q2 - t1)*Power(t1,4)*u1 + 4*Power(m2,3)*Power(sp,2)*(6*q2*Power(sp,2)*t1 - Power(sp,2)*Power(t1,2) + 2*Power(q2,2)*(t1 - u1)*(5*t1 + u1)) + m2*q2*t1*(-(Power(q2,3)*u1*(-11*Power(t1,2) + 2*t1*u1 + Power(u1,2))) + Power(sp,2)*Power(t1,2)*(-3*Power(t1,2) + 10*t1*u1 + Power(u1,2)) + q2*t1*(t1 + u1)*(7*Power(t1,3) + 31*Power(t1,2)*u1 - 8*t1*Power(u1,2) - 2*Power(u1,3)) + Power(q2,2)*(-6*Power(t1,4) - 61*Power(t1,3)*u1 - Power(t1,2)*Power(u1,2) + 7*t1*Power(u1,3) + Power(u1,4))) + Power(m2,2)*(-4*Power(sp,4)*Power(t1,3) + q2*Power(sp,2)*Power(t1,2)*(5*Power(t1,2) + 30*t1*u1 + 9*Power(u1,2)) + Power(q2,2)*(2*t1*(t1 + u1)*(21*Power(t1,3) + 17*Power(t1,2)*u1 - 21*t1*Power(u1,2) - 5*Power(u1,3)) + q2*(-11*Power(t1,4) - 60*Power(t1,3)*u1 + 10*Power(t1,2)*Power(u1,2) + 12*t1*Power(u1,3) + Power(u1,4))))))/(q2*Power(rt1,2)*Power(sp,2)*Power(t1,2)*(m2 + t1)*u1);
r += c10*v10;
cdbl v11 = ln(chi)*ln(-(u1/m2));
cdbl c11 = (32*Pi*(16*Power(m2,3)*q2*Power(sp,3) - 8*Power(m2,2)*sp*(Power(sp,3)*u1 + 2*Power(q2,2)*(2*t1 - u1)*u1 - q2*(t1 + u1)*(Power(t1,2) + 3*t1*u1 - 2*Power(u1,2))) + q2*u1*(-2*Power(q2,3)*(Power(t1,2) - t1*u1 + Power(u1,2)) - Power(sp,3)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2)) + 2*Power(q2,2)*(t1 + u1)*(2*Power(t1,2) - t1*u1 + 3*Power(u1,2)) - q2*Power(sp,2)*(3*Power(t1,2) + 2*t1*u1 + 6*Power(u1,2))) + 2*m2*(2*Power(sp,5)*u1 + q2*(2*q2*(q2 - t1)*Power(t1,3) + Power(sp,2)*Power(t1,2)*u1 + 3*t1*(3*Power(sp,2) + q2*(-2*q2 + t1))*Power(u1,2) + 2*(4*Power(q2,2) + 5*Power(sp,2) - 7*q2*t1)*Power(u1,3) - 15*q2*Power(u1,4)))))/(beta*q2*s*Power(sp,2)*t1*Power(u1,2));
r += c11*v11;
cdbl v12 = ln(-(u1/m2));
cdbl c12 = (32*Pi*(16*Power(m2,4)*q2*Power(sp,4) + q2*(6*Power(q2,2) + 6*q2*sp + Power(sp,2))*t1*(q2 - u1)*Power(u1,4) - 4*Power(m2,3)*Power(sp,2)*(-6*q2*Power(sp,2)*u1 + Power(sp,2)*Power(u1,2) + 2*Power(q2,2)*(t1 - u1)*(t1 + 5*u1)) + Power(m2,2)*(-4*Power(sp,4)*Power(u1,3) + q2*Power(sp,2)*Power(u1,2)*(9*Power(t1,2) + 30*t1*u1 + 5*Power(u1,2)) + 2*Power(q2,2)*u1*(t1 + u1)*(-5*Power(t1,3) - 21*Power(t1,2)*u1 + 17*t1*Power(u1,2) + 21*Power(u1,3)) + Power(q2,3)*(Power(t1,4) + 12*Power(t1,3)*u1 + 10*Power(t1,2)*Power(u1,2) - 60*t1*Power(u1,3) - 11*Power(u1,4))) + m2*q2*u1*(-(Power(q2,3)*t1*(Power(t1,2) + 2*t1*u1 - 11*Power(u1,2))) + Power(sp,2)*Power(u1,2)*(Power(t1,2) + 10*t1*u1 - 3*Power(u1,2)) + q2*u1*(t1 + u1)*(-2*Power(t1,3) - 8*Power(t1,2)*u1 + 31*t1*Power(u1,2) + 7*Power(u1,3)) + Power(q2,2)*(Power(t1,4) + 7*Power(t1,3)*u1 - Power(t1,2)*Power(u1,2) - 61*t1*Power(u1,3) - 6*Power(u1,4)))))/(q2*Power(ru1,2)*Power(sp,2)*t1*Power(u1,2)*(m2 + u1));
r += c12*v12;
cdbl v13 = Power(ln(\[Beta]til),2);
cdbl c13 = (256*Pi*(-4*Power(m2,2)*q2*Power(sp,4) - 2*m2*Power(sp,2)*(-2*q2*sp*t1*u1 + 2*Power(sp,2)*t1*u1 + Power(q2,2)*(Power(t1,2) - 6*t1*u1 + Power(u1,2))) + q2*t1*u1*(Power(sp,2)*(Power(t1,2) + Power(u1,2)) + 2*Power(q2,2)*(Power(t1,2) - 4*t1*u1 + Power(u1,2)) - 2*q2*(t1 + u1)*(Power(t1,2) - 4*t1*u1 + Power(u1,2)))))/(q2*Power(sp,2)*Power(t1,2)*Power(u1,2));
r += c13*v13;
cdbl v14 = Power(ln(chi),2);
cdbl c14 = (8*Pi*(8*Power(m2,2)*q2*Power(sp,2)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) - q2*t1*u1*(4*Power(q2,2)*(t1 - 2*u1)*(2*t1 - u1) - 2*q2*(t1 + u1)*(5*Power(t1,2) - 8*t1*u1 + 5*Power(u1,2)) + Power(sp,2)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2))) + 4*m2*(4*Power(sp,4)*t1*u1 - 2*q2*t1*u1*(Power(t1,3) + Power(u1,3)) + Power(q2,2)*(Power(t1,4) - Power(t1,3)*u1 - 14*Power(t1,2)*Power(u1,2) - t1*Power(u1,3) + Power(u1,4)))))/(q2*Power(sp,2)*Power(t1,2)*Power(u1,2)) + (8*Pi*(16*Power(m2,3)*q2*Power(sp,4) + q2*t1*u1*(3*q2*Power(sp,2)*(Power(t1,2) - 12*t1*u1 + Power(u1,2)) - 6*Power(q2,2)*(t1 + u1)*(Power(t1,2) - 10*t1*u1 + Power(u1,2)) + 4*Power(q2,3)*(Power(t1,2) - 7*t1*u1 + Power(u1,2)) + Power(sp,3)*(Power(t1,2) - 4*t1*u1 + Power(u1,2))) + 8*Power(m2,2)*Power(sp,2)*(-14*Power(q2,2)*t1*u1 + 2*Power(sp,2)*t1*u1 + q2*(t1 + u1)*(Power(t1,2) + 8*t1*u1 + Power(u1,2))) + 2*m2*(-4*Power(sp,5)*t1*u1 + q2*Power(sp,2)*t1*u1*(7*Power(t1,2) + 18*t1*u1 + 7*Power(u1,2)) - 2*Power(q2,3)*(Power(t1,4) - 8*Power(t1,3)*u1 - 30*Power(t1,2)*Power(u1,2) - 8*t1*Power(u1,3) + Power(u1,4)) + Power(q2,2)*(t1 + u1)*(2*Power(t1,4) - 29*Power(t1,3)*u1 - 86*Power(t1,2)*Power(u1,2) - 29*t1*Power(u1,3) + 2*Power(u1,4)))))/(beta*q2*s*Power(sp,2)*Power(t1,2)*Power(u1,2));
r += c14*v14;
cdbl v15 = ln(chi);
cdbl c15 = 64*beta*Pi*(-(((q2 + sp)*(5*q2 + sp))/Power(sp,2)) + (m2*(5*q2 + 3*sp))/(t1*u1));
r += c15*v15;
cdbl v16 = Power(ln(chiq),2);
cdbl c16 = (8*Pi*(-8*Power(m2,2)*q2*Power(sp,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) + q2*t1*u1*(4*Power(q2,2)*(t1 - 2*u1)*(2*t1 - u1) - 2*q2*(t1 + u1)*(5*Power(t1,2) - 8*t1*u1 + 5*Power(u1,2)) + Power(sp,2)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2))) + 4*m2*(-4*Power(sp,4)*t1*u1 + 2*q2*t1*u1*(Power(t1,3) + Power(u1,3)) + Power(q2,2)*(-2*Power(t1,4) + 5*Power(t1,3)*u1 + 12*Power(t1,2)*Power(u1,2) + 5*t1*Power(u1,3) - 2*Power(u1,4)))))/(q2*Power(sp,2)*Power(t1,2)*Power(u1,2)) + (16*Pi*(-16*Power(m2,3)*q2*Power(sp,4) - 8*Power(m2,2)*Power(sp,2)*(-2*Power(q2,2)*t1*u1 + 2*Power(sp,2)*t1*u1 + q2*(t1 + u1)*(Power(t1,2) + Power(u1,2))) + q2*t1*u1*(-4*Power(q2,3)*(Power(t1,2) - t1*u1 + Power(u1,2)) - Power(sp,3)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + 2*Power(q2,2)*(t1 + u1)*(5*Power(t1,2) - 2*t1*u1 + 5*Power(u1,2)) - q2*Power(sp,2)*(9*Power(t1,2) + 4*t1*u1 + 9*Power(u1,2))) + 2*m2*(4*Power(sp,5)*t1*u1 + q2*Power(sp,2)*t1*u1*(11*Power(t1,2) + 18*t1*u1 + 11*Power(u1,2)) + 2*Power(q2,3)*(Power(t1,4) + 4*Power(t1,3)*u1 - 6*Power(t1,2)*Power(u1,2) + 4*t1*Power(u1,3) + Power(u1,4)) - Power(q2,2)*(t1 + u1)*(2*Power(t1,4) + 13*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 13*t1*Power(u1,3) + 2*Power(u1,4)))))/(beta*q2*s*Power(sp,2)*Power(t1,2)*Power(u1,2));
r += c16*v16;
cdbl v17 = ln(chiq);
cdbl c17 = (-32*betaq*Pi*(160*Power(m2,3)*Power(q2,3)*Power(sp,2) - q2*(q2 - t1)*t1*(q2 - u1)*u1*(10*Power(q2,3) + 16*Power(q2,2)*sp + Power(sp,3) + 2*q2*(4*Power(t1,2) + 7*t1*u1 + 4*Power(u1,2))) - 16*Power(m2,2)*q2*(Power(sp,3)*(Power(t1,2) + Power(u1,2)) + 5*Power(q2,3)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) - Power(q2,2)*(t1 + u1)*(5*Power(t1,2) + 16*t1*u1 + 5*Power(u1,2)) + 4*q2*(Power(t1,4) + Power(t1,3)*u1 + t1*Power(u1,3) + Power(u1,4))) + 2*m2*(4*Power(sp,3)*Power(t1,2)*Power(u1,2) + 5*Power(q2,5)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) + q2*Power(sp,2)*t1*u1*(3*Power(t1,2) + 13*t1*u1 + 3*Power(u1,2)) - 2*Power(q2,4)*(t1 + u1)*(5*Power(t1,2) + 42*t1*u1 + 5*Power(u1,2)) - 2*Power(q2,2)*(t1 + u1)*(Power(t1,4) + 16*Power(t1,3)*u1 + 16*t1*Power(u1,3) + Power(u1,4)) + Power(q2,3)*(8*Power(t1,4) + 76*Power(t1,3)*u1 + 72*Power(t1,2)*Power(u1,2) + 76*t1*Power(u1,3) + 8*Power(u1,4)))))/(Power(rt1,2)*Power(ru1,2)*Power(sp,2)*t1*u1);
r += c17*v17;
cdbl v18 = zeta2;
cdbl c18 = (32*Pi*(4*Power(m2,3)*Power(sp,4)*(Power(t1,2) + Power(u1,2)) - Power(m2,2)*q2*Power(sp,2)*(Power(t1,4) + 14*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 14*t1*Power(u1,3) + Power(u1,4)) + q2*Power(t1,2)*Power(u1,2)*(-6*q2*(t1 + u1)*(Power(t1,2) + Power(u1,2)) + 4*Power(q2,2)*(Power(t1,2) - t1*u1 + Power(u1,2)) + Power(sp,2)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))) + m2*t1*u1*(-8*Power(sp,4)*t1*u1 + 8*q2*t1*u1*(t1 + u1)*(2*Power(t1,2) + t1*u1 + 2*Power(u1,2)) - 3*Power(q2,2)*(Power(t1,4) - 2*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) - 2*t1*Power(u1,3) + Power(u1,4)))))/(q2*Power(sp,2)*Power(t1,3)*Power(u1,3)) + (16*Pi*(-48*Power(m2,3)*q2*Power(sp,4) - 8*Power(m2,2)*Power(sp,2)*(-30*Power(q2,2)*t1*u1 + 6*Power(sp,2)*t1*u1 + q2*(t1 + u1)*(3*Power(t1,2) + 16*t1*u1 + 3*Power(u1,2))) + q2*t1*u1*(q2*Power(sp,2)*(-15*Power(t1,2) + 68*t1*u1 - 15*Power(u1,2)) + Power(sp,3)*(-5*Power(t1,2) + 4*t1*u1 - 5*Power(u1,2)) - 12*Power(q2,3)*(Power(t1,2) - 5*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*(t1 + u1)*(11*Power(t1,2) - 62*t1*u1 + 11*Power(u1,2))) + 6*m2*(4*Power(sp,5)*t1*u1 - q2*Power(sp,2)*t1*u1*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) + 2*Power(q2,3)*(Power(t1,4) - 4*Power(t1,3)*u1 - 22*Power(t1,2)*Power(u1,2) - 4*t1*Power(u1,3) + Power(u1,4)) - Power(q2,2)*(t1 + u1)*(2*Power(t1,4) - 15*Power(t1,3)*u1 - 58*Power(t1,2)*Power(u1,2) - 15*t1*Power(u1,3) + 2*Power(u1,4)))))/(beta*q2*s*Power(sp,2)*Power(t1,2)*Power(u1,2));
r += c18*v18;
cdbl v19 = 1;
cdbl c19 = (-32*Pi*(-(m2*Power(sp,2)) + q2*t1*u1)*(-4*m2*Power(sp,2) + q2*(Power(t1,2) + Power(u1,2))))/(q2*sp*Power(t1,2)*Power(u1,2));
r += c19*v19;