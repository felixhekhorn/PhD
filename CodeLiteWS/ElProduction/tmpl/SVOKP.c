dbl v0 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) + Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) + Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) + Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)));
dbl c0 = (-64*Power(m2,3)*Power(q2,2)*u1 - Power(q2 - u1,3)*u1*(2*Power(q2,2) + 2*Power(t1,2) + 3*t1*u1 + Power(u1,2) - 2*q2*(2*t1 + u1)) + 8*Power(m2,2)*q2*(q2*(Power(t1,2) + 5*t1*u1 - 6*Power(u1,2)) + u1*(-3*Power(t1,2) - 4*t1*u1 + Power(u1,2))) + 2*m2*(6*Power(q2,4)*u1 + Power(u1,3)*(3*Power(t1,2) + 4*t1*u1 + Power(u1,2)) - q2*Power(u1,2)*(12*Power(t1,2) + 19*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*u1*(4*Power(t1,2) + 15*t1*u1 + 2*Power(u1,2)) - Power(q2,3)*(Power(t1,2) + 13*t1*u1 + 10*Power(u1,2))))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*(t1 + u1));
r += c0*v0;
dbl v1 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))));
dbl c1 = (64*Power(m2,3)*Power(q2,2)*u1 + Power(q2 - u1,3)*u1*(2*Power(q2,2) + 2*Power(t1,2) + 3*t1*u1 + Power(u1,2) - 2*q2*(2*t1 + u1)) - 8*Power(m2,2)*q2*(q2*(Power(t1,2) + 5*t1*u1 - 6*Power(u1,2)) + u1*(-3*Power(t1,2) - 4*t1*u1 + Power(u1,2))) - 2*m2*(6*Power(q2,4)*u1 + Power(u1,3)*(3*Power(t1,2) + 4*t1*u1 + Power(u1,2)) - q2*Power(u1,2)*(12*Power(t1,2) + 19*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*u1*(4*Power(t1,2) + 15*t1*u1 + 2*Power(u1,2)) - Power(q2,3)*(Power(t1,2) + 13*t1*u1 + 10*Power(u1,2))))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*u1*(t1 + u1));
r += c1*v1;
dbl v2 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c2 = -(64*Power(m2,3)*Power(q2,2)*t1 + Power(q2 - t1,3)*t1*(2*Power(q2,2) + Power(t1,2) + 3*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1)) + 8*Power(m2,2)*q2*(q2*(6*Power(t1,2) - 5*t1*u1 - Power(u1,2)) + t1*(-Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))) - 2*m2*(6*Power(q2,4)*t1 - Power(q2,3)*(10*Power(t1,2) + 13*t1*u1 + Power(u1,2)) + Power(t1,3)*(Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + 2*Power(q2,2)*t1*(2*Power(t1,2) + 15*t1*u1 + 4*Power(u1,2)) - q2*Power(t1,2)*(Power(t1,2) + 19*t1*u1 + 12*Power(u1,2))))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*t1*u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + t1)/m2);
dbl c3 = (2*m2*t1*(2*Power(t1,3) + q2*t1*u1 + 2*Power(t1,2)*u1 - q2*Power(u1,2)) + 2*Power(m2,2)*(5*Power(t1,3) + 7*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3)) - Power(t1,3)*(2*Power(q2,2) + Power(t1,2) + 3*t1*u1 + 2*Power(u1,2) - 2*q2*(t1 + 2*u1)))/(2.*Power(t1,3)*u1*(t1 + u1));
r += c3*v3;
dbl v4 = Li2((m2 + u1)/m2);
dbl c4 = (2*Power(m2,2)*(Power(t1,3) + 3*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 5*Power(u1,3)) + 2*m2*u1*(q2*t1*(-t1 + u1) + 2*Power(u1,2)*(t1 + u1)) - Power(u1,3)*(2*Power(q2,2) + 2*Power(t1,2) + 3*t1*u1 + Power(u1,2) - 2*q2*(2*t1 + u1)))/(2.*t1*Power(u1,3)*(t1 + u1));
r += c4*v4;
dbl v5 = Li2(1 - t1/(chi*u1)) - Li2(1 - u1/(chi*t1)) + Power(ln((chi*u1)/t1),2)/2.;
dbl c5 = -(((Power(t1,2) + Power(u1,2))*(2*m2*Power(t1 + u1,2) + t1*u1*(-2*q2 + t1 + u1)))/(Power(t1,2)*Power(u1,2)*(t1 + u1)));
r += c5*v5;
dbl v6 = Li2(-chi) + ln(chi)*ln(1 + chi);
dbl c6 = (8*Power(m2,2)*(t1 + u1)*(2*Power(t1,3) + Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(2*q2 + u1)) + t1*u1*(-2*Power(q2,3)*(t1 + u1) + 12*Power(q2,2)*(Power(t1,2) + t1*u1 + Power(u1,2)) + Power(t1 + u1,2)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) - 3*q2*(5*Power(t1,3) + 9*Power(t1,2)*u1 + 9*t1*Power(u1,2) + 5*Power(u1,3))) + m2*(8*Power(t1,5) + 34*Power(t1,4)*u1 + 54*Power(t1,3)*Power(u1,2) + 54*Power(t1,2)*Power(u1,3) + 34*t1*Power(u1,4) + 8*Power(u1,5) + 4*Power(q2,2)*t1*u1*(t1 + u1) - 2*q2*(4*Power(t1,4) + 17*Power(t1,3)*u1 + 18*Power(t1,2)*Power(u1,2) + 17*t1*Power(u1,3) + 4*Power(u1,4))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1));
r += c6*v6;
dbl v7 = Li2(chi) + ln(1 - chi)*ln(chi);
dbl c7 = (4*(Power(t1,2) + Power(u1,2))*(4*Power(m2,2)*Power(t1 + u1,2) + t1*u1*(2*Power(q2,2) - 3*q2*(t1 + u1) + Power(t1 + u1,2)) + 2*m2*(Power(t1,3) + 4*Power(t1,2)*u1 + 4*t1*Power(u1,2) + Power(u1,3) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2)))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1));
r += c7*v7;
dbl v8 = Li2(-(chi/chiq)) + Li2(-(chi*chiq)) + ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq);
dbl c8 = -((8*Power(m2,2)*(t1 + u1)*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)) + 2*m2*(t1 + u1)*(2*Power(q2,2)*t1*u1 + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(2*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 2*Power(u1,3))) + t1*u1*(-2*Power(q2,3)*(t1 + u1) + 4*Power(q2,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) + Power(t1 + u1,2)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) - 3*q2*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1)));
r += c8*v8;
dbl v9 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c9 = (2*m2*Power(t1 + u1,2) - (2*q2 - t1 - u1)*(Power(t1,2) + Power(u1,2)))/(2.*t1*u1*(t1 + u1));
r += c9*v9;
dbl v10 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c10 = (t1*u1*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)) + 2*m2*Power(t1 + u1,2)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2)))/(Power(t1,2)*Power(u1,2)*(t1 + u1));
r += c10*v10;
dbl v11 = ln(chi)*ln(-(t1/m2));
dbl c11 = (8*Power(m2,2)*(2*q2*Power(t1,2) - Power(t1,3) + 2*t1*Power(u1,2) + Power(u1,3)) + t1*(-2*Power(q2,3)*t1 + Power(t1 + u1,2)*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*(3*Power(t1,2) + 3*t1*u1 + Power(u1,2)) - 3*q2*(2*Power(t1,3) + 4*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3))) + 2*m2*(2*Power(q2,2)*Power(t1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 6*t1*Power(u1,2) + 2*Power(u1,3))))/(beta*Power(t1,2)*u1*(t1 + u1)*(-q2 + t1 + u1));
r += c11*v11;
dbl v12 = ln(-(t1/m2));
dbl c12 = ((q2 - t1)*Power(t1,4)*(2*q2 - t1 - u1)*u1 + 4*Power(m2,3)*q2*Power(t1 + u1,3) - Power(m2,2)*(t1 + u1)*(Power(t1,2)*Power(t1 + u1,2) + 2*q2*t1*(Power(t1,2) - 2*t1*u1 - 3*Power(u1,2)) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2))) + m2*t1*(Power(q2,3)*u1*(t1 + u1) + Power(t1,2)*(t1 - u1)*Power(t1 + u1,2) + Power(q2,2)*u1*(Power(t1,2) - 4*t1*u1 - Power(u1,2)) + q2*(-3*Power(t1,4) - 5*Power(t1,3)*u1 + 2*t1*Power(u1,3))))/((-4*m2*q2 + Power(q2 - t1,2))*Power(t1,2)*(m2 + t1)*u1*(t1 + u1));
r += c12*v12;
dbl v13 = ln(chi)*ln(-(u1/m2));
dbl c13 = (8*Power(m2,2)*(Power(t1,3) + 2*Power(t1,2)*u1 + (2*q2 - u1)*Power(u1,2)) + u1*(-2*Power(q2,3)*u1 + Power(t1 + u1,2)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2)) + 2*Power(q2,2)*(Power(t1,2) + 3*t1*u1 + 3*Power(u1,2)) - 3*q2*(Power(t1,3) + 3*Power(t1,2)*u1 + 4*t1*Power(u1,2) + 2*Power(u1,3))) + 2*m2*(2*Power(q2,2)*Power(u1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(2*Power(t1,3) + 6*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3))))/(beta*t1*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1));
r += c13*v13;
dbl v14 = ln(-(u1/m2));
dbl c14 = (4*Power(m2,3)*q2*Power(t1 + u1,3) - t1*(q2 - u1)*Power(u1,4)*(-2*q2 + t1 + u1) - Power(m2,2)*(t1 + u1)*(Power(u1,2)*Power(t1 + u1,2) + 2*q2*u1*(-3*Power(t1,2) - 2*t1*u1 + Power(u1,2)) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2))) + m2*u1*(Power(q2,3)*t1*(t1 + u1) - (t1 - u1)*Power(u1,2)*Power(t1 + u1,2) - Power(q2,2)*t1*(Power(t1,2) + 4*t1*u1 - Power(u1,2)) + q2*(2*Power(t1,3)*u1 - 5*t1*Power(u1,3) - 3*Power(u1,4))))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*Power(u1,2)*(m2 + u1)*(t1 + u1));
r += c14*v14;
dbl v15 = Power(ln(chi),2);
dbl c15 = (-8*Power(m2,2)*Power(t1 + u1,2)*(2*Power(t1,3) + 3*(1 + beta)*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-((2 + 3*beta)*q2) + 3*(1 + beta)*u1)) - t1*(q2 - t1 - u1)*u1*(t1 + u1)*(2*(1 + beta)*Power(q2,2)*(t1 + u1) - 2*q2*((-3 + 7*beta)*Power(t1,2) + 4*(1 + beta)*t1*u1 + (-3 + 7*beta)*Power(u1,2)) + (t1 + u1)*((-3 + 7*beta)*Power(t1,2) + 4*(1 + beta)*t1*u1 + (-3 + 7*beta)*Power(u1,2))) + m2*(4*Power(q2,2)*t1*u1*((1 + beta)*Power(t1,2) + 2*t1*u1 + (1 + beta)*Power(u1,2)) - 2*q2*(t1 + u1)*(4*(-1 + beta)*Power(t1,4) + 5*(-3 + 2*beta)*Power(t1,3)*u1 + 2*(1 + 4*beta)*Power(t1,2)*Power(u1,2) + 5*(-3 + 2*beta)*t1*Power(u1,3) + 4*(-1 + beta)*Power(u1,4)) + 2*Power(t1 + u1,2)*(4*(-1 + beta)*Power(t1,4) + (-11 + 8*beta)*Power(t1,3)*u1 + 2*(-1 + 4*beta)*Power(t1,2)*Power(u1,2) + (-11 + 8*beta)*t1*Power(u1,3) + 4*(-1 + beta)*Power(u1,4))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c15*v15;
dbl v16 = ln(chi);
dbl c16 = (2*beta*(-4*Power(m2,2)*q2*Power(t1 + u1,2) + t1*u1*Power(-q2 + t1 + u1,3) + m2*(-3*q2*Power(t1 + u1,3) + Power(t1 + u1,4) + Power(q2,2)*(Power(t1,2) + 6*t1*u1 + Power(u1,2)))))/(t1*u1*Power(t1 + u1,2)*(4*m2 - q2 + t1 + u1));
r += c16*v16;
dbl v17 = Power(ln(chiq),2);
dbl c17 = (-4*m2*(q2 - t1 - u1)*(-2*(-1 + beta)*Power(t1,5) + (9 - 5*beta)*Power(t1,4)*u1 - 2*(-1 + beta)*Power(u1,5) + t1*Power(u1,3)*((-2 + beta)*q2 + (9 - 5*beta)*u1) + Power(t1,2)*Power(u1,2)*(-4*q2 + (17 - 5*beta)*u1) + Power(t1,3)*u1*((-2 + beta)*q2 + (17 - 5*beta)*u1)) + 8*Power(m2,2)*Power(t1 + u1,2)*(2*Power(t1,3) + 3*beta*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*((4 - 3*beta)*q2 + 3*beta*u1)) + t1*(q2 - t1 - u1)*u1*(t1 + u1)*(2*(-2 + beta)*Power(q2,2)*(t1 + u1) - 2*q2*((-6 + 5*beta)*Power(t1,2) + 4*(-2 + beta)*t1*u1 + (-6 + 5*beta)*Power(u1,2)) + (t1 + u1)*((-6 + 5*beta)*Power(t1,2) + 4*(-2 + beta)*t1*u1 + (-6 + 5*beta)*Power(u1,2))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c17*v17;
dbl v18 = ln(chiq);
dbl c18 = (betaq*q2*(-32*Power(m2,3)*Power(q2,2)*Power(t1 + u1,2) + 8*Power(m2,2)*q2*(-4*q2*Power(t1 + u1,3) + Power(t1 + u1,2)*(Power(t1,2) + Power(u1,2)) + 2*Power(q2,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2))) + (q2 - t1)*t1*(q2 - u1)*u1*(2*Power(q2,3) - 6*Power(q2,2)*(t1 + u1) - Power(t1 + u1,3) + 2*q2*(2*Power(t1,2) + 5*t1*u1 + 2*Power(u1,2))) - 2*m2*(Power(t1,2)*Power(u1,2)*Power(t1 + u1,2) - q2*Power(t1 + u1,3)*(Power(t1,2) + 4*t1*u1 + Power(u1,2)) + Power(q2,4)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) - 4*Power(q2,3)*(Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + Power(u1,3)) + Power(q2,2)*(3*Power(t1,4) + 26*Power(t1,3)*u1 + 38*Power(t1,2)*Power(u1,2) + 26*t1*Power(u1,3) + 3*Power(u1,4)))))/((-4*m2*q2 + Power(q2 - t1,2))*t1*(4*m2*q2 - Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c18*v18;
dbl v19 = zeta2;
dbl c19 = (-2*Power(m2,2)*Power(t1 + u1,2)*(beta*Power(t1,5) + beta*Power(u1,4)*(-q2 + u1) - 2*Power(t1,3)*u1*(beta*q2 + 6*(1 + 2*beta)*u1) + t1*Power(u1,3)*(-2*beta*q2 + (-8 + 3*beta)*u1) + Power(t1,4)*(-(beta*q2) + (-8 + 3*beta)*u1) + 2*Power(t1,2)*Power(u1,2)*((4 + 13*beta)*q2 - 6*(u1 + 2*beta*u1))) + Power(t1,2)*(q2 - t1 - u1)*Power(u1,2)*(t1 + u1)*(2*(1 + 2*beta)*Power(q2,2)*(t1 + u1) - 2*q2*((-3 + 6*beta)*Power(t1,2) + 3*(-1 + 2*beta)*Power(u1,2) + 4*t1*(u1 + 2*beta*u1)) + (t1 + u1)*((-3 + 6*beta)*Power(t1,2) + 3*(-1 + 2*beta)*Power(u1,2) + 4*t1*(u1 + 2*beta*u1))) - 2*m2*t1*u1*(Power(t1 + u1,2)*(4*(-1 + beta)*Power(t1,4) + (-11 + 4*beta)*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + (-11 + 4*beta)*t1*Power(u1,3) + 4*(-1 + beta)*Power(u1,4)) - q2*(t1 + u1)*((-4 + 5*beta)*Power(t1,4) + 5*(-3 + 2*beta)*Power(t1,3)*u1 - 2*(-1 + beta)*Power(t1,2)*Power(u1,2) + 5*(-3 + 2*beta)*t1*Power(u1,3) + (-4 + 5*beta)*Power(u1,4)) + Power(q2,2)*(beta*Power(t1,4) - 2*(-2 + beta)*Power(t1,2)*Power(u1,2) + 2*(1 + 3*beta)*t1*Power(u1,3) + beta*Power(u1,4) + 2*Power(t1,3)*(u1 + 3*beta*u1))))/(2.*beta*Power(t1,3)*Power(u1,3)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c19*v19;
dbl v20 = 1;
dbl c20 = ((Power(t1,2) + Power(u1,2))*(m2*Power(t1 + u1,2) + t1*u1*(-q2 + t1 + u1)))/(Power(t1,2)*Power(u1,2)*(t1 + u1));
r += c20*v20;
