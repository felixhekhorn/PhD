cdbl v0 = -(rt1*(zeta2 + Li2(1 + (rt1 - betaq*rt1)/(betaq*(betaq*q2 + rt1) - t1)) - 2*Li2((rt1 + t1)/t1) - Li2((-(Power(betaq,2)*q2) + rt1 + t1)/(betaq*(-(betaq*q2) + rt1) + t1)) - Li2((-(Power(betaq,2)*q2) + rt1 + t1)/(-(betaq*(betaq*q2 + rt1)) + t1)) + Li2((2*m2*(rt1 + t1) + t1*(-q2 + rt1 + t1))/(t1*(2*m2 - q2 - rt1 + t1))) + Li2((2*m2*(rt1 + t1) + t1*(-q2 + rt1 + t1))/(t1*(2*m2 - q2 + rt1 + t1))) - Li2(1 - (2*rt1)/(2*m2 - q2 + rt1 + t1)) + Li2(1 - ((1 + betaq)*rt1)/(betaq*(-(betaq*q2) + rt1) + t1))));
cdbl c0 = (64*Pi*q2*(2*m2*Power(t1,2)*(8*Power(m2,2)*q2 + Power(q2 - t1,3) - 2*m2*(3*Power(q2,2) - 3*q2*t1 + Power(t1,2))) + t1*(16*Power(m2,2)*Power(q2,2) + s*Power(q2 - t1,3) - 2*m2*(4*Power(q2,3) - 9*Power(q2,2)*t1 + 4*q2*Power(t1,2) + Power(t1,3)))*u1 - 2*m2*(8*Power(m2,2)*q2 - 2*m2*(3*Power(q2,2) - 7*q2*t1 + Power(t1,2)) + (q2 - 2*t1)*(Power(q2,2) - 4*q2*t1 + Power(t1,2)))*Power(u1,2)))/(Power(rt1,4)*Power(sp,2)*t1*u1);
r += c0*v0;
cdbl v1 = Li2((m2 + t1)/m2);
cdbl c1 = (64*Pi*q2*(2*m2*(t1 - u1) + s*u1))/(Power(sp,2)*u1);
r += c1*v1;
cdbl v2 = -(ru1*(zeta2 + Li2(1 + (ru1 - betaq*ru1)/(betaq*(betaq*q2 + ru1) - u1)) - 2*Li2((ru1 + u1)/u1) - Li2((-(Power(betaq,2)*q2) + ru1 + u1)/(betaq*(-(betaq*q2) + ru1) + u1)) - Li2((-(Power(betaq,2)*q2) + ru1 + u1)/(-(betaq*(betaq*q2 + ru1)) + u1)) + Li2((2*m2*(ru1 + u1) + u1*(-q2 + ru1 + u1))/(u1*(2*m2 - q2 - ru1 + u1))) + Li2((2*m2*(ru1 + u1) + u1*(-q2 + ru1 + u1))/(u1*(2*m2 - q2 + ru1 + u1))) - Li2(1 - (2*ru1)/(2*m2 - q2 + ru1 + u1)) + Li2(1 - ((1 + betaq)*ru1)/(betaq*(-(betaq*q2) + ru1) + u1))));
cdbl c2 = (64*Pi*q2*(s*t1*Power(q2 - u1,3)*u1 + 16*Power(m2,3)*q2*(-Power(t1,2) + Power(u1,2)) + 4*Power(m2,2)*(3*Power(q2,2)*Power(t1,2) + q2*(4*q2 - 7*t1)*t1*u1 + (-3*Power(q2,2) + Power(t1,2))*Power(u1,2) + 3*q2*Power(u1,3) - Power(u1,4)) - 2*m2*(Power(q2,3)*Power(t1,2) + 2*Power(q2,2)*(2*q2 - 3*t1)*t1*u1 - q2*(Power(q2,2) + 9*q2*t1 - 9*Power(t1,2))*Power(u1,2) + (3*Power(q2,2) + 4*q2*t1 - 2*Power(t1,2))*Power(u1,3) + (-3*q2 + t1)*Power(u1,4) + Power(u1,5))))/(Power(ru1,4)*Power(sp,2)*t1*u1);
r += c2*v2;
cdbl v3 = Li2((m2 + u1)/m2);
cdbl c3 = (64*Pi*q2*(s*t1 + 2*m2*(-t1 + u1)))/(Power(sp,2)*t1);
r += c3*v3;
cdbl v4 = (2*Li2(1 + (2*t1)/((-1 + beta)*(t1 + u1))) + 2*Li2(1 + (2*u1)/((-1 + beta)*(t1 + u1))) - 2*Li2(-(t1 - u1 + beta*(t1 + u1))/(2.*u1)) - 2*Li2(-(-t1 + u1 + beta*(t1 + u1))/(2.*t1)) + 8*ln(betaTilde)*(ln(-(t1/m2)) + ln(-(u1/m2))) + Power(ln(-((-1 + beta)*(t1 + u1))/(2.*t1)),2) + Power(ln(-((-1 + beta)*(t1 + u1))/(2.*u1)),2) + (2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2)))*(2*(ln(-(t1/m2)) + ln(-(u1/m2)) - ln(-((t1 + u1)/m2))) + ln(-((-q2 + t1 + u1)/m2))))/2.;
cdbl c4 = 256*Pi*q2*(-(s/Power(sp,2)) + m2/(t1*u1));
r += c4*v4;
cdbl v5 = Li2((2*beta)/(1 + beta)) - Li2(chi) + (ln(chi)*(4*ln(betaTilde) - 2*ln(1 - chi) + 2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))))/2.;
cdbl c5 = (-512*Pi*q2*(2*Power(m2,2)*Power(sp,2) + Power(s,2)*t1*u1 - m2*s*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(beta*s*Power(sp,2)*t1*u1);
r += c5*v5;
cdbl v6 = Li2(-chi) + (-2*Li2(-(chi/chiq)) - 2*Li2(-(chi*chiq)) - 2*(ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq)) + ln(chi)*(2*ln(1 + chi) + ln(-(t1/m2)) + ln(-(u1/m2))))/2.;
cdbl c6 = (256*Pi*q2*(Power(s,2)/Power(sp,2) - (2*m2*(-2*m2 + s))/(t1*u1)))/(beta*s);
r += c6*v6;
cdbl v7 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
cdbl c7 = (128*Pi*q2*(-2*m2 + s))/Power(sp,2);
r += c7*v7;
cdbl v8 = ln(-(t1/m2))*ln(-(u1/m2));
cdbl c8 = (-256*Pi*q2*(-(s*t1*u1) + 2*m2*(Power(t1,2) + t1*u1 + Power(u1,2))))/(Power(sp,2)*t1*u1);
r += c8*v8;
cdbl v9 = ln(-(t1/m2));
cdbl c9 = (128*Pi*q2*(2*Power(m2,2)*q2*Power(sp,2) + s*Power(t1,2)*(-q2 + t1)*u1 + m2*t1*(-(Power(sp,2)*t1) + q2*(-2*q2*u1 + (t1 + u1)*(t1 + 3*u1)))))/(Power(sp,2)*(4*m2*q2 - Power(q2 - t1,2))*(m2 + t1)*u1);
r += c9*v9;
cdbl v10 = ln(-(u1/m2));
cdbl c10 = (-128*Pi*q2*(2*Power(m2,2)*q2*Power(sp,2) + s*t1*Power(u1,2)*(-q2 + u1) + m2*u1*(-2*Power(q2,2)*t1 - Power(sp,2)*u1 + q2*(t1 + u1)*(3*t1 + u1))))/(Power(ru1,2)*Power(sp,2)*t1*(m2 + u1));
r += c10*v10;
cdbl v11 = Power(ln(betaTilde),2);
cdbl c11 = 2048*Pi*q2*(-(s/Power(sp,2)) + m2/(t1*u1));
r += c11*v11;
cdbl v12 = Power(ln(chi),2);
cdbl c12 = 192*Pi*q2*(s/Power(sp,2) - m2/(t1*u1)) - (64*Pi*q2*(4*Power(m2,2)*Power(sp,2) + 3*Power(s,2)*t1*u1 - 2*m2*s*(Power(t1,2) + 6*t1*u1 + Power(u1,2))))/(beta*s*Power(sp,2)*t1*u1);
r += c12*v12;
cdbl v13 = ln(chi);
cdbl c13 = (256*beta*Pi*q2*s*(-(m2*Power(sp,2)) + s*t1*u1))/((4*m2 - s)*Power(sp,2)*t1*u1);
r += c13*v13;
cdbl v14 = Power(ln(chiq),2);
cdbl c14 = (128*Pi*q2*(Power(s,2)/Power(sp,2) - (2*m2*(-2*m2 + s))/(t1*u1)))/(beta*s) + (64*Pi*q2*(-3*s*t1*u1 + m2*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2))))/(Power(sp,2)*t1*u1);
r += c14*v14;
cdbl v15 = ln(chiq);
cdbl c15 = (-128*betaq*Pi*Power(q2,2)*(2*q2 - t1 - u1)*(-4*Power(m2,2)*q2*Power(sp,2) - s*(q2 - t1)*t1*(q2 - u1)*u1 + m2*(Power(sp,2)*t1*u1 + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) - q2*(t1 + u1)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)))))/(Power(rt1,2)*Power(ru1,2)*Power(sp,2)*t1*u1);
r += c15*v15;
cdbl v16 = zeta2;
cdbl c16 = (128*Pi*q2*(6*m2*(2*m2*Power(sp,2) - s*Power(t1,2)) + 7*s*(-4*m2 + s)*t1*u1 - 6*m2*s*Power(u1,2)))/(beta*s*Power(sp,2)*t1*u1) + (256*Pi*q2*(-(s*t1*u1) + m2*(3*Power(t1,2) + 2*t1*u1 + 3*Power(u1,2))))/(Power(sp,2)*t1*u1);
r += c16*v16;
