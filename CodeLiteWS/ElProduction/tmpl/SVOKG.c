dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = -(32*Power(m2,3)*q2 + Power(q2 - t1,3)*(2*q2 - t1 - 2*u1) + 8*Power(m2,2)*(2*Power(q2,2) + 3*q2*t1 - Power(t1,2) - q2*u1) - 2*m2*(7*Power(q2,3) + 2*Power(t1,3) - Power(q2,2)*(11*t1 + 5*u1) + q2*t1*(2*t1 + 7*u1)))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1);
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = -(32*Power(m2,3)*q2 + Power(q2 - u1,3)*(2*q2 - 2*t1 - u1) + 8*Power(m2,2)*(2*Power(q2,2) - q2*t1 + 3*q2*u1 - Power(u1,2)) - 2*m2*(7*Power(q2,3) + 2*Power(u1,3) + q2*u1*(7*t1 + 2*u1) - Power(q2,2)*(5*t1 + 11*u1)))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (2*Power(m2,2)*Power(t1 + u1,2) + Power(t1,3)*(-2*q2 + t1 + 2*u1) + 2*m2*t1*(Power(t1,2) - q2*u1 + 3*t1*u1))/(2.*Power(t1,3)*u1);
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (2*Power(m2,2)*Power(t1 + u1,2) + Power(u1,3)*(-2*q2 + 2*t1 + u1) + 2*m2*u1*(-(q2*t1) + u1*(3*t1 + u1)))/(2.*t1*Power(u1,3));
r += c3*v3;
dbl v4 = Li2(1 - t1/(chi*u1)) + Power(ln((chi*u1)/t1),2)/2.;
dbl c4 = (-4*Power(m2,2)*Power(t1 + u1,2) + t1*u1*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)) - 2*m2*(2*t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c4*v4;
dbl v5 = Li2(1 - u1/(chi*t1)) - 2*ln(Delta/m2)*(ln(Delta/m2) + ln(-(t1/m2)));
dbl c5 = (4*Power(m2,2)*Power(t1 + u1,2) - t1*u1*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)) + 2*m2*(2*t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c5*v5;
dbl v6 = Li2(-chi) + ln(chi)*ln(1 + chi);
dbl c6 = (32*Power(m2,3)*Power(t1 + u1,2) + 8*Power(m2,2)*(2*Power(t1,3) + 11*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-4*q2 + 11*u1)) - t1*u1*(-8*Power(q2,3) + 5*Power(t1,3) + 9*Power(t1,2)*u1 + 9*t1*Power(u1,2) + 5*Power(u1,3) + 18*Power(q2,2)*(t1 + u1) - 3*q2*(5*Power(t1,2) + 8*t1*u1 + 5*Power(u1,2))) + 2*m2*(-4*Power(q2,2)*Power(t1 + u1,2) + t1*u1*(3*Power(t1,2) + 10*t1*u1 + 3*Power(u1,2)) + q2*(4*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 4*Power(u1,3))))/(beta*Power(t1,2)*Power(u1,2)*(-q2 + t1 + u1));
r += c6*v6;
dbl v7 = Li2(chi) + ln(1 - chi)*ln(chi) - (ln(chi)*ln(Delta/m2))/2.;
dbl c7 = (4*(8*Power(m2,3)*Power(t1 + u1,2) + 4*Power(m2,2)*(Power(t1,3) + 5*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 5*u1)) - t1*u1*(-2*Power(q2,3) + Power(t1,3) + Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3) + 4*Power(q2,2)*(t1 + u1) - q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))) + 2*m2*(-(Power(q2,2)*Power(t1 + u1,2)) + t1*u1*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + q2*(Power(t1,3) + Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3)))))/(beta*Power(t1,2)*Power(u1,2)*(-q2 + t1 + u1));
r += c7*v7;
dbl v8 = Li2(-(chi/chiq)) + Li2(-(chi*chiq)) + ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq);
dbl c8 = (-16*Power(m2,3)*Power(t1 + u1,2) - 8*Power(m2,2)*(Power(t1,3) + 6*Power(t1,2)*u1 - 2*t1*(q2 - 3*u1)*u1 + Power(u1,3)) - 2*m2*(t1 + u1)*(-2*Power(q2,2)*(t1 + u1) + t1*u1*(t1 + u1) + q2*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2))) + t1*u1*(-4*Power(q2,3) + 3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3) + 10*Power(q2,2)*(t1 + u1) - q2*(9*Power(t1,2) + 16*t1*u1 + 9*Power(u1,2))))/(beta*Power(t1,2)*Power(u1,2)*(-q2 + t1 + u1));
r += c8*v8;
dbl v9 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c9 = -(-8*Power(m2,2) + 2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 4*m2*(t1 + u1) - 2*q2*(t1 + u1))/(2.*t1*u1);
r += c9*v9;
dbl v10 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c10 = (8*Power(m2,2)*(Power(t1,2) + t1*u1 + Power(u1,2)) - t1*u1*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)) + 4*m2*(t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c10*v10;
dbl v11 = ln(chi)*ln(-(t1/m2));
dbl c11 = (16*Power(m2,3)*(t1 + u1) + 8*Power(m2,2)*(-(q2*t1) + 3*Power(t1,2) + 3*t1*u1 + Power(u1,2)) - t1*(-2*Power(q2,3) + 2*Power(t1,3) + 4*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3) + Power(q2,2)*(6*t1 + 4*u1) - q2*(6*Power(t1,2) + 8*t1*u1 + 3*Power(u1,2))) + m2*(-4*Power(q2,2)*(t1 + u1) + 2*t1*u1*(t1 + u1) + q2*(6*Power(t1,2) + 4*t1*u1 + 4*Power(u1,2))))/(beta*Power(t1,2)*u1*(-q2 + t1 + u1));
r += c11*v11;
dbl v12 = ln(-(t1/m2));
dbl c12 = ((q2 - t1)*Power(t1,4)*u1 - 4*Power(m2,3)*q2*Power(t1 + u1,2) - m2*t1*(Power(t1,4) + Power(q2,3)*u1 - Power(t1,2)*Power(u1,2) - Power(q2,2)*u1*(3*t1 + u1) + q2*t1*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))) + Power(m2,2)*(Power(t1,2)*Power(t1 + u1,2) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) - 2*q2*t1*(Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/((-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*(m2 + t1)*u1);
r += c12*v12;
dbl v13 = ln(Delta/m2)*ln(-(u1/m2));
dbl c13 = (8*Power(m2,2)*Power(t1 + u1,2) - 2*t1*u1*(2*Power(q2,2) + Power(t1,2) + Power(u1,2) - 2*q2*(t1 + u1)) + 4*m2*(2*t1*u1*(t1 + u1) + q2*(Power(t1,2) + Power(u1,2))))/(Power(t1,2)*Power(u1,2));
r += c13*v13;
dbl v14 = ln(chi)*ln(-(u1/m2));
dbl c14 = (16*Power(m2,3)*(t1 + u1) + 8*Power(m2,2)*(Power(t1,2) + 3*t1*u1 + u1*(-q2 + 3*u1)) + m2*(-4*Power(q2,2)*(t1 + u1) + 2*t1*u1*(t1 + u1) + q2*(4*Power(t1,2) + 4*t1*u1 + 6*Power(u1,2))) - u1*(-2*Power(q2,3) + Power(t1,3) + 3*Power(t1,2)*u1 + 4*t1*Power(u1,2) + 2*Power(u1,3) + Power(q2,2)*(4*t1 + 6*u1) - q2*(3*Power(t1,2) + 8*t1*u1 + 6*Power(u1,2))))/(beta*t1*Power(u1,2)*(-q2 + t1 + u1));
r += c14*v14;
dbl v15 = ln(-(u1/m2));
dbl c15 = (t1*(q2 - u1)*Power(u1,4) - 4*Power(m2,3)*q2*Power(t1 + u1,2) - m2*u1*(Power(q2,3)*t1 - Power(t1,2)*Power(u1,2) + Power(u1,4) - Power(q2,2)*t1*(t1 + 3*u1) + q2*u1*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2))) + Power(m2,2)*(Power(u1,2)*Power(t1 + u1,2) - 2*q2*u1*(3*Power(t1,2) + 4*t1*u1 + Power(u1,2)) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2))))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2)*(m2 + u1));
r += c15*v15;
dbl v16 = Power(ln(chi),2);
dbl c16 = (-32*Power(m2,3)*Power(t1 + u1,4) + t1*(q2 - t1 - u1)*u1*Power(t1 + u1,2)*(4*(-2 + 3*beta)*Power(q2,2) + (-3 + 7*beta)*Power(t1,2) + 4*(1 + beta)*t1*u1 + (-3 + 7*beta)*Power(u1,2) - 2*(-3 + 7*beta)*q2*(t1 + u1)) + 8*Power(m2,2)*Power(t1 + u1,2)*(2*(-1 + beta)*Power(t1,3) - 2*Power(u1,2)*(beta*q2 + u1 - beta*u1) + t1*u1*((4 - 5*beta)*q2 + (-9 + 7*beta)*u1) + Power(t1,2)*(-2*beta*q2 + (-9 + 7*beta)*u1)) - 2*m2*(-(t1*u1*Power(t1 + u1,2)*((-5 + 8*beta)*Power(t1,2) + 2*(-11 + 8*beta)*t1*u1 + (-5 + 8*beta)*Power(u1,2))) + 4*Power(q2,2)*((-1 + beta)*Power(t1,4) + 2*(-2 + beta)*Power(t1,3)*u1 + 3*(-2 + beta)*Power(t1,2)*Power(u1,2) + 2*(-2 + beta)*t1*Power(u1,3) + (-1 + beta)*Power(u1,4)) - q2*(t1 + u1)*(4*(-1 + beta)*Power(t1,4) - 5*Power(t1,3)*u1 - 2*(1 + 2*beta)*Power(t1,2)*Power(u1,2) - 5*t1*Power(u1,3) + 4*(-1 + beta)*Power(u1,4))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c16*v16;
dbl v17 = ln(chi);
dbl c17 = (-2*beta*(4*Power(m2,2)*q2*Power(t1 + u1,2) + t1*u1*Power(-q2 + t1 + u1,2)*(q2 + t1 + u1) + m2*(q2*Power(t1 + u1,3) + Power(t1 + u1,4) - Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)))))/(t1*u1*Power(t1 + u1,2)*(4*m2 - q2 + t1 + u1));
r += c17*v17;
dbl v18 = Power(ln(chiq),2);
dbl c18 = (32*Power(m2,3)*Power(t1 + u1,4) - t1*(q2 - t1 - u1)*u1*Power(t1 + u1,2)*(8*(-1 + beta)*Power(q2,2) + (-6 + 5*beta)*Power(t1,2) + 4*(-2 + beta)*t1*u1 + (-6 + 5*beta)*Power(u1,2) - 2*(-6 + 5*beta)*q2*(t1 + u1)) - 8*Power(m2,2)*Power(t1 + u1,2)*(2*(-1 + beta)*Power(t1,3) - 2*Power(u1,2)*(beta*q2 + u1 - beta*u1) + t1*u1*((4 - 3*beta)*q2 + (-12 + 5*beta)*u1) + Power(t1,2)*(-2*beta*q2 + (-12 + 5*beta)*u1)) + 4*m2*(q2 - t1 - u1)*((-1 + 2*beta)*t1*u1*Power(t1 + u1,3) + 2*q2*((-1 + beta)*Power(t1,4) + 2*(-2 + beta)*Power(t1,3)*u1 + 3*(-2 + beta)*Power(t1,2)*Power(u1,2) + 2*(-2 + beta)*t1*Power(u1,3) + (-1 + beta)*Power(u1,4))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c18*v18;
dbl v19 = ln(chiq);
dbl c19 = (betaq*q2*(-32*Power(m2,3)*Power(q2,2)*Power(t1 + u1,2) + (q2 - t1)*t1*(q2 - u1)*u1*(2*Power(q2,3) - 2*Power(q2,2)*(t1 + u1) + Power(t1 + u1,3) - 2*q2*(Power(t1,2) + t1*u1 + Power(u1,2))) + 16*Power(m2,2)*q2*(-(t1*u1*Power(t1 + u1,2)) - q2*Power(t1 + u1,3) + Power(q2,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2))) + m2*(-4*Power(q2,2)*t1*Power(t1 - u1,2)*u1 - 8*q2*t1*u1*Power(t1 + u1,3) + 2*t1*u1*Power(t1 + u1,2)*(Power(t1,2) + t1*u1 + Power(u1,2)) - 2*Power(q2,4)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) + 4*Power(q2,3)*(Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + Power(u1,3)))))/((-4*m2*q2 + Power(q2 - t1,2))*t1*(4*m2*q2 - Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c19*v19;
dbl v20 = zeta2;
dbl c20 = (32*Power(m2,3)*t1*u1*Power(t1 + u1,4) - Power(t1,2)*(q2 - t1 - u1)*Power(u1,2)*Power(t1 + u1,2)*(8*(-1 + beta)*Power(q2,2) + (-3 + 6*beta)*Power(t1,2) + 3*(-1 + 2*beta)*Power(u1,2) - 6*(-1 + 2*beta)*q2*(t1 + u1) + 4*t1*(u1 + 2*beta*u1)) - 2*Power(m2,2)*Power(t1 + u1,2)*(beta*Power(t1,5) + beta*Power(u1,4)*(-q2 + u1) + 2*Power(t1,2)*Power(u1,2)*((8 - 3*beta)*q2 + 2*(-9 + 4*beta)*u1) + 2*Power(t1,3)*u1*(-5*beta*q2 + 2*(-9 + 4*beta)*u1) + t1*Power(u1,3)*(-10*beta*q2 + (-8 + 11*beta)*u1) + Power(t1,4)*(-(beta*q2) + (-8 + 11*beta)*u1)) + 2*m2*t1*u1*(t1*u1*Power(t1 + u1,2)*(5*Power(t1,2) + 22*t1*u1 + 5*Power(u1,2)) + Power(q2,2)*((-4 + 3*beta)*Power(t1,4) + 2*(-8 + 3*beta)*Power(t1,3)*u1 + 6*(-4 + 3*beta)*Power(t1,2)*Power(u1,2) + 2*(-8 + 3*beta)*t1*Power(u1,3) + (-4 + 3*beta)*Power(u1,4)) - q2*(t1 + u1)*((-4 + 3*beta)*Power(t1,4) + (-5 + 6*beta)*Power(t1,3)*u1 + 2*(-1 + 9*beta)*Power(t1,2)*Power(u1,2) + (-5 + 6*beta)*t1*Power(u1,3) + (-4 + 3*beta)*Power(u1,4))))/(2.*beta*Power(t1,3)*Power(u1,3)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c20*v20;
dbl v21 = 1;
dbl c21 = -(((Power(t1,2) + Power(u1,2))*(-(q2*t1*u1) + m2*Power(t1 + u1,2)))/(Power(t1,2)*Power(u1,2)*(t1 + u1)));
r += c21*v21;
