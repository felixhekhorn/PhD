cdbl v0 = -(rt1*(zeta2 + Li2(1 + (rt1 - betaq*rt1)/(betaq*(betaq*q2 + rt1) - t1)) - 2*Li2((rt1 + t1)/t1) - Li2((-(Power(betaq,2)*q2) + rt1 + t1)/(betaq*(-(betaq*q2) + rt1) + t1)) - Li2((-(Power(betaq,2)*q2) + rt1 + t1)/(-(betaq*(betaq*q2 + rt1)) + t1)) + Li2((2*m2*(rt1 + t1) + t1*(-q2 + rt1 + t1))/(t1*(2*m2 - q2 - rt1 + t1))) + Li2((2*m2*(rt1 + t1) + t1*(-q2 + rt1 + t1))/(t1*(2*m2 - q2 + rt1 + t1))) - Li2(1 - (2*rt1)/(2*m2 - q2 + rt1 + t1)) + Li2(1 - ((1 + betaq)*rt1)/(betaq*(-(betaq*q2) + rt1) + t1))));
cdbl c0 = (-32*Power(m2,3)*Power(q2,2)*sp + t1*Power(-q2 + t1,3)*(2*Power(q2,2) - 2*q2*(t1 + 2*u1) + (t1 + u1)*(t1 + 2*u1)) - 4*Power(m2,2)*q2*(t1*(t1 + u1)*(5*t1 + 2*u1) + 2*Power(q2,2)*(5*t1 + 3*u1) - 2*q2*t1*(4*t1 + 9*u1)) + 2*m2*(-2*sp*Power(t1,4) + 2*Power(q2,4)*(4*t1 + u1) - Power(q2,3)*t1*(18*t1 + 19*u1) + Power(q2,2)*t1*(15*Power(t1,2) + 33*t1*u1 + 5*Power(u1,2)) - q2*Power(t1,2)*(7*Power(t1,2) + 16*t1*u1 + 7*Power(u1,2))))/(2.*Power(rt1,4)*sp*t1*u1);
r += c0*v0;
cdbl v1 = Li2((m2 + t1)/m2);
cdbl c1 = (2*Power(m2,2)*Power(sp,3) - Power(t1,3)*(2*Power(q2,2) - 2*q2*(t1 + 2*u1) + (t1 + u1)*(t1 + 2*u1)) + 2*m2*t1*(2*sp*t1*u1 + q2*(2*Power(t1,2) + t1*u1 + Power(u1,2))))/(2.*sp*Power(t1,3)*u1);
r += c1*v1;
cdbl v2 = ru1*(2*Li2((ru1 + u1)/u1) + Li2((-(Power(betaq,2)*q2) + ru1 + u1)/(betaq*(-(betaq*q2) + ru1) + u1)) + Li2((-(Power(betaq,2)*q2) + ru1 + u1)/(-(betaq*(betaq*q2 + ru1)) + u1)) + Li2(1 - (2*ru1)/(2*m2 - q2 + ru1 + u1)));
cdbl c2 = (32*Power(m2,3)*Power(q2,2)*sp + Power(q2 - u1,3)*u1*(2*Power(q2 - t1,2) - 2*q2*u1 + 3*t1*u1 + Power(u1,2)) + 4*Power(m2,2)*q2*(-2*q2*u1*(9*t1 + 4*u1) + u1*(t1 + u1)*(2*t1 + 5*u1) + 2*Power(q2,2)*(3*t1 + 5*u1)) + 2*m2*(2*sp*Power(u1,4) - 2*Power(q2,4)*(t1 + 4*u1) + Power(q2,3)*u1*(19*t1 + 18*u1) + q2*Power(u1,2)*(7*Power(t1,2) + 16*t1*u1 + 7*Power(u1,2)) - Power(q2,2)*u1*(5*Power(t1,2) + 33*t1*u1 + 15*Power(u1,2))))/(2.*Power(ru1,4)*sp*t1*u1);
r += c2*v2;
cdbl v3 = Li2((m2 + u1)/m2);
cdbl c3 = (-2*Power(m2,2)*Power(sp,3) + Power(u1,3)*(2*Power(q2 - t1,2) - 2*q2*u1 + 3*t1*u1 + Power(u1,2)) - 2*m2*u1*(2*sp*t1*u1 + q2*(Power(t1,2) + t1*u1 + 2*Power(u1,2))))/(2.*sp*t1*Power(u1,3));
r += c3*v3;
cdbl v4 = ru1*(zeta2 + Li2(1 + (ru1 - betaq*ru1)/(betaq*(betaq*q2 + ru1) - u1)) + Li2((2*m2*(ru1 + u1) + u1*(-q2 + ru1 + u1))/(u1*(2*m2 - q2 - ru1 + u1))) + Li2((2*m2*(ru1 + u1) + u1*(-q2 + ru1 + u1))/(u1*(2*m2 - q2 + ru1 + u1))) + Li2(1 - ((1 + betaq)*ru1)/(betaq*(-(betaq*q2) + ru1) + u1)));
cdbl c4 = -(32*Power(m2,3)*Power(q2,2)*sp + Power(q2 - u1,3)*u1*(2*Power(q2 - t1,2) - 2*q2*u1 + 3*t1*u1 + Power(u1,2)) + 4*Power(m2,2)*q2*(-2*q2*u1*(9*t1 + 4*u1) + u1*(t1 + u1)*(2*t1 + 5*u1) + 2*Power(q2,2)*(3*t1 + 5*u1)) + 2*m2*(2*sp*Power(u1,4) - 2*Power(q2,4)*(t1 + 4*u1) + Power(q2,3)*u1*(19*t1 + 18*u1) + q2*Power(u1,2)*(7*Power(t1,2) + 16*t1*u1 + 7*Power(u1,2)) - Power(q2,2)*u1*(5*Power(t1,2) + 33*t1*u1 + 15*Power(u1,2))))/(2.*Power(ru1,4)*sp*t1*u1);
r += c4*v4;
cdbl v5 = Li2(1 - t1/(chi*u1)) + Power(ln((chi*u1)/t1),2)/2.;
cdbl c5 = ((t1 - u1)*(-2*m2*q2*Power(sp,2) + (2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1))/(sp*Power(t1,2)*Power(u1,2));
r += c5*v5;
cdbl v6 = Li2(1 - u1/(chi*t1));
cdbl c6 = -(((t1 - u1)*(-2*m2*q2*Power(sp,2) + (2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1))/(sp*Power(t1,2)*Power(u1,2)));
r += c6*v6;
cdbl v7 = Li2(-chi) + ln(chi)*ln(1 + chi);
cdbl c7 = -(((t1 - u1)*(16*Power(m2,2)*q2*Power(sp,2) + 3*(q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-3*Power(sp,2)*t1*u1 - 2*Power(q2,2)*(2*Power(t1,2) + 7*t1*u1 + 2*Power(u1,2)) + 2*q2*(t1 + u1)*(2*Power(t1,2) + 7*t1*u1 + 2*Power(u1,2)))))/(beta*s*sp*Power(t1,2)*Power(u1,2)));
r += c7*v7;
cdbl v8 = Li2(chi) + ln(1 - chi)*ln(chi);
cdbl c8 = (-4*(t1 - u1)*(4*Power(m2,2)*q2*Power(sp,2) + (q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-(Power(sp,2)*t1*u1) - Power(q2,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + q2*(t1 + u1)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)))))/(beta*s*sp*Power(t1,2)*Power(u1,2));
r += c8*v8;
cdbl v9 = Li2(-(chi/chiq)) + Li2(-(chi*chiq)) + ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq);
cdbl c9 = ((t1 - u1)*(8*Power(m2,2)*q2*Power(sp,2) + (q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-(Power(sp,2)*t1*u1) - 2*Power(q2,2)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) + 2*q2*(t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)))))/(beta*s*sp*Power(t1,2)*Power(u1,2));
r += c9*v9;
cdbl v10 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
cdbl c10 = -((-4*m2*q2 + 2*Power(q2,2) + 2*q2*sp + Power(sp,2))*(t1 - u1))/(2.*sp*t1*u1);
r += c10*v10;
cdbl v11 = ln(-(t1/m2))*ln(-(u1/m2));
cdbl c11 = ((t1 - u1)*(-((2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1) + 4*m2*q2*(Power(t1,2) + t1*u1 + Power(u1,2))))/(sp*Power(t1,2)*Power(u1,2));
r += c11*v11;
cdbl v12 = ln(chi)*ln(-(t1/m2));
cdbl c12 = (-8*Power(m2,2)*q2*sp + t1*(2*Power(q2,3) - Power(sp,2)*(2*t1 + u1) + 3*q2*(t1 + u1)*(2*t1 + u1) - 2*Power(q2,2)*(3*t1 + 2*u1)) - 2*m2*(2*Power(q2,2)*(2*t1 + u1) + t1*(t1 + u1)*(3*t1 + u1) - q2*(7*Power(t1,2) + 6*t1*u1 + 2*Power(u1,2))))/(beta*s*sp*Power(t1,2));
r += c12*v12;
cdbl v13 = ln(-(t1/m2));
cdbl c13 = (-4*Power(m2,3)*q2*Power(sp,3) + (q2 - t1)*Power(t1,4)*(2*q2 - t1 - u1)*u1 + m2*t1*(-(Power(q2,3)*sp*u1) + Power(t1,2)*(t1 - u1)*u1*(t1 + u1) - q2*t1*(2*t1 + u1)*(Power(t1,2) + 2*t1*u1 - 2*Power(u1,2)) - Power(q2,2)*u1*(Power(t1,2) + 3*t1*u1 + Power(u1,2))) + Power(m2,2)*sp*(Power(sp,2)*Power(t1,2) - 2*q2*t1*u1*(2*t1 + 3*u1) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2))))/(Power(rt1,2)*sp*Power(t1,2)*(m2 + t1)*u1);
r += c13*v13;
cdbl v14 = ln(chi)*ln(-(u1/m2));
cdbl c14 = (8*Power(m2,2)*q2*sp + u1*(-2*Power(q2,3) + Power(sp,2)*(t1 + 2*u1) - 3*q2*(t1 + u1)*(t1 + 2*u1) + Power(q2,2)*(4*t1 + 6*u1)) + 2*m2*(2*Power(q2,2)*(t1 + 2*u1) + u1*(t1 + u1)*(t1 + 3*u1) - q2*(2*Power(t1,2) + 6*t1*u1 + 7*Power(u1,2))))/(beta*s*sp*Power(u1,2));
r += c14*v14;
cdbl v15 = ln(-(u1/m2));
cdbl c15 = (4*Power(m2,3)*q2*Power(sp,3) - (2*q2 + sp)*t1*(q2 - u1)*Power(u1,4) - Power(m2,2)*sp*(Power(q2,2)*Power(t1,2) + 6*q2*(q2 - t1)*t1*u1 + (Power(q2,2) + Power(sp,2) - 4*q2*t1)*Power(u1,2)) + m2*u1*(Power(q2,3)*sp*t1 + t1*(t1 - u1)*Power(u1,2)*(t1 + u1) + q2*u1*(t1 + 2*u1)*(-2*Power(t1,2) + 2*t1*u1 + Power(u1,2)) + Power(q2,2)*t1*(Power(t1,2) + 3*t1*u1 + Power(u1,2))))/(Power(ru1,2)*sp*t1*Power(u1,2)*(m2 + u1));
r += c15*v15;
cdbl v16 = Power(ln(chi),2);
cdbl c16 = ((t1 - u1)*(-5*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 4*m2*(sp*t1*u1 + q2*(2*t1 + u1)*(t1 + 2*u1))))/(4.*sp*Power(t1,2)*Power(u1,2)) + ((t1 - u1)*(16*Power(m2,2)*q2*Power(sp,2) + 5*(q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-5*Power(sp,2)*t1*u1 - 2*Power(q2,2)*(2*Power(t1,2) + 9*t1*u1 + 2*Power(u1,2)) + 2*q2*(t1 + u1)*(2*Power(t1,2) + 9*t1*u1 + 2*Power(u1,2)))))/(4.*beta*s*sp*Power(t1,2)*Power(u1,2));
r += c16*v16;
cdbl v17 = ln(chi);
cdbl c17 = (beta*(m2*q2*t1 - m2*q2*u1))/(4*m2*t1*u1 - s*t1*u1);
r += c17*v17;
cdbl v18 = Power(ln(chiq),2);
cdbl c18 = ((t1 - u1)*(3*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 - 4*m2*(2*q2*Power(t1,2) + (3*q2 + sp)*t1*u1 + 2*q2*Power(u1,2))))/(4.*sp*Power(t1,2)*Power(u1,2)) - ((t1 - u1)*(8*Power(m2,2)*q2*Power(sp,2) + (q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-(Power(sp,2)*t1*u1) - 2*Power(q2,2)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) + 2*q2*(t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)))))/(2.*beta*s*sp*Power(t1,2)*Power(u1,2));
r += c18*v18;
cdbl v19 = ln(chiq);
cdbl c19 = (betaq*q2*(t1 - u1)*(4*Power(m2,2)*q2*sp*(-q2 + sp) + (q2 - t1)*t1*(q2 - u1)*(2*q2 - t1 - u1)*u1 + m2*(Power(q2,3)*sp - 9*q2*sp*t1*u1 - 2*Power(sp,2)*t1*u1 - Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)))))/(Power(rt1,2)*Power(ru1,2)*sp*t1*u1);
r += c19*v19;
cdbl v20 = zeta2;
cdbl c20 = -((t1 - u1)*(2*Power(m2,2)*Power(sp,4) - 5*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*Power(t1,2)*Power(u1,2) + 4*m2*t1*u1*(3*q2*Power(t1,2) + 2*(2*q2 + sp)*t1*u1 + 3*q2*Power(u1,2))))/(2.*sp*Power(t1,3)*Power(u1,3)) - ((t1 - u1)*(16*Power(m2,2)*q2*Power(sp,2) + 5*(q2 + sp)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2))*t1*u1 + 2*m2*(-5*Power(sp,2)*t1*u1 - 2*Power(q2,2)*(2*Power(t1,2) + 9*t1*u1 + 2*Power(u1,2)) + 2*q2*(t1 + u1)*(2*Power(t1,2) + 9*t1*u1 + 2*Power(u1,2)))))/(2.*beta*s*sp*Power(t1,2)*Power(u1,2));
r += c20*v20;
cdbl v21 = 1;
cdbl c21 = -((t1 - u1)*(-2*m2*Power(sp,2)*(Power(Pi,2)*q2 + 2*sp) + (4*q2*sp + Power(Pi,2)*(2*Power(q2,2) + 2*q2*sp + Power(sp,2)))*t1*u1))/(4.*sp*Power(t1,2)*Power(u1,2));
r += c21*v21;