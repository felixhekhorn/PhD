dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (-128*Power(m2,4)*Power(q2,2)*(2*q2*Power(t1,2) + u1*Power(t1 + u1,2)) + Power(q2 - t1,5)*t1*(2*Power(q2,2)*t1 + 2*Power(t1,3) + 4*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3) - 2*q2*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2))) + 8*Power(m2,3)*q2*(8*Power(q2,3)*Power(t1,2) + 2*q2*t1*(10*Power(t1,3) - 13*Power(t1,2)*u1 - 26*t1*Power(u1,2) - 15*Power(u1,3)) + Power(t1,2)*(-5*Power(t1,3) - 3*Power(t1,2)*u1 + 5*t1*Power(u1,2) + 3*Power(u1,3)) + 4*Power(q2,2)*(-7*Power(t1,3) + 9*Power(t1,2)*u1 + 10*t1*Power(u1,2) + 4*Power(u1,3))) - 2*m2*(q2 - t1)*(10*Power(q2,5)*Power(t1,2) + Power(t1,7) - Power(t1,5)*Power(u1,2) - Power(q2,4)*(39*Power(t1,3) + 23*Power(t1,2)*u1 + 14*t1*Power(u1,2) + 2*Power(u1,3)) + q2*Power(t1,3)*(7*Power(t1,3) + 27*Power(t1,2)*u1 + 24*t1*Power(u1,2) + 10*Power(u1,3)) + Power(q2,3)*t1*(57*Power(t1,3) + 69*Power(t1,2)*u1 + 53*t1*Power(u1,2) + 13*Power(u1,3)) - Power(q2,2)*Power(t1,2)*(36*Power(t1,3) + 73*Power(t1,2)*u1 + 59*t1*Power(u1,2) + 24*Power(u1,3))) + 2*Power(m2,2)*(24*Power(q2,5)*Power(t1,2) + 2*Power(q2,2)*Power(t1,2)*(11*Power(t1,3) - 64*Power(t1,2)*u1 - 83*t1*Power(u1,2) - 48*Power(u1,3)) + Power(t1,4)*(5*Power(t1,3) + 7*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3)) - 4*Power(q2,4)*(14*Power(t1,3) + 23*Power(t1,2)*u1 + 18*t1*Power(u1,2) + 5*Power(u1,3)) + q2*Power(t1,3)*(-23*Power(t1,3) + 7*Power(t1,2)*u1 + 31*t1*Power(u1,2) + 17*Power(u1,3)) + 2*Power(q2,3)*t1*(14*Power(t1,3) + 101*Power(t1,2)*u1 + 108*t1*Power(u1,2) + 41*Power(u1,3))))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),3)*Power(t1,2)*u1*(t1 + u1));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (-128*Power(m2,4)*Power(q2,2)*(Power(t1,3) + 2*Power(t1,2)*u1 + 2*q2*Power(u1,2) + t1*Power(u1,2)) + Power(q2 - u1,5)*u1*(Power(t1,3) + 2*Power(q2,2)*u1 + 3*Power(t1,2)*u1 + 4*t1*Power(u1,2) + 2*Power(u1,3) - 2*q2*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))) + 8*Power(m2,3)*q2*(8*Power(q2,3)*Power(u1,2) - 2*q2*u1*(15*Power(t1,3) + 26*Power(t1,2)*u1 + 13*t1*Power(u1,2) - 10*Power(u1,3)) + 4*Power(q2,2)*(4*Power(t1,3) + 10*Power(t1,2)*u1 + 9*t1*Power(u1,2) - 7*Power(u1,3)) + Power(u1,2)*(3*Power(t1,3) + 5*Power(t1,2)*u1 - 3*t1*Power(u1,2) - 5*Power(u1,3))) + 2*Power(m2,2)*(24*Power(q2,5)*Power(u1,2) + q2*Power(u1,3)*(17*Power(t1,3) + 31*Power(t1,2)*u1 + 7*t1*Power(u1,2) - 23*Power(u1,3)) - 2*Power(q2,2)*Power(u1,2)*(48*Power(t1,3) + 83*Power(t1,2)*u1 + 64*t1*Power(u1,2) - 11*Power(u1,3)) + Power(u1,4)*(Power(t1,3) + 3*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 5*Power(u1,3)) - 4*Power(q2,4)*(5*Power(t1,3) + 18*Power(t1,2)*u1 + 23*t1*Power(u1,2) + 14*Power(u1,3)) + 2*Power(q2,3)*u1*(41*Power(t1,3) + 108*Power(t1,2)*u1 + 101*t1*Power(u1,2) + 14*Power(u1,3))) - 2*m2*(q2 - u1)*(10*Power(q2,5)*Power(u1,2) - Power(t1,2)*Power(u1,5) + Power(u1,7) + q2*Power(u1,3)*(10*Power(t1,3) + 24*Power(t1,2)*u1 + 27*t1*Power(u1,2) + 7*Power(u1,3)) - Power(q2,2)*Power(u1,2)*(24*Power(t1,3) + 59*Power(t1,2)*u1 + 73*t1*Power(u1,2) + 36*Power(u1,3)) - Power(q2,4)*(2*Power(t1,3) + 14*Power(t1,2)*u1 + 23*t1*Power(u1,2) + 39*Power(u1,3)) + Power(q2,3)*u1*(13*Power(t1,3) + 53*Power(t1,2)*u1 + 69*t1*Power(u1,2) + 57*Power(u1,3))))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),3)*Power(u1,2)*(t1 + u1));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (-2*m2*t1*(t1 - u1)*(Power(t1,2) + q2*u1 + t1*u1) - 2*Power(m2,2)*(5*Power(t1,3) + 7*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3)) + Power(t1,2)*(2*Power(q2,2)*t1 + 2*Power(t1,3) + 4*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3) - 2*q2*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2))))/(2.*Power(t1,3)*u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (-2*Power(m2,2)*(Power(t1,3) + 3*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 5*Power(u1,3)) + 2*m2*(t1 - u1)*u1*(q2*t1 + u1*(t1 + u1)) + Power(u1,2)*(Power(t1,3) + 2*Power(q2,2)*u1 + 3*Power(t1,2)*u1 + 4*t1*Power(u1,2) + 2*Power(u1,3) - 2*q2*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))))/(2.*t1*Power(u1,3)*(t1 + u1));
r += c3*v3;
dbl v4 = Li2(-chi) + ln(chi)*ln(1 + chi);
dbl c4 = -((8*Power(m2,2)*(t1 + u1)*(2*Power(t1,3) + Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(2*q2 + u1)) + t1*u1*(-2*Power(q2,3)*(t1 + u1) + 12*Power(q2,2)*(Power(t1,2) + t1*u1 + Power(u1,2)) + Power(t1 + u1,2)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) - 3*q2*(5*Power(t1,3) + 9*Power(t1,2)*u1 + 9*t1*Power(u1,2) + 5*Power(u1,3))) + m2*(8*Power(t1,5) + 34*Power(t1,4)*u1 + 54*Power(t1,3)*Power(u1,2) + 54*Power(t1,2)*Power(u1,3) + 34*t1*Power(u1,4) + 8*Power(u1,5) + 4*Power(q2,2)*t1*u1*(t1 + u1) - 2*q2*(4*Power(t1,4) + 17*Power(t1,3)*u1 + 18*Power(t1,2)*Power(u1,2) + 17*t1*Power(u1,3) + 4*Power(u1,4))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1)));
r += c4*v4;
dbl v5 = Li2(chi) + ln(1 - chi)*ln(chi);
dbl c5 = (-4*(Power(t1,2) + Power(u1,2))*(4*Power(m2,2)*Power(t1 + u1,2) + t1*u1*(2*Power(q2,2) - 3*q2*(t1 + u1) + Power(t1 + u1,2)) + 2*m2*(Power(t1,3) + 4*Power(t1,2)*u1 + 4*t1*Power(u1,2) + Power(u1,3) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2)))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1));
r += c5*v5;
dbl v6 = Li2(-(chi/chiq)) + Li2(-(chi*chiq)) + ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq);
dbl c6 = (8*Power(m2,2)*(t1 + u1)*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)) + 2*m2*(t1 + u1)*(2*Power(q2,2)*t1*u1 + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(2*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 2*Power(u1,3))) + t1*u1*(-2*Power(q2,3)*(t1 + u1) + 4*Power(q2,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) + Power(t1 + u1,2)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) - 3*q2*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3))))/(beta*Power(t1,2)*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1));
r += c6*v6;
dbl v7 = ln(chi)*ln(-(t1/m2));
dbl c7 = -((8*Power(m2,2)*(2*q2*Power(t1,2) - Power(t1,3) + 2*t1*Power(u1,2) + Power(u1,3)) + t1*(-2*Power(q2,3)*t1 + Power(t1 + u1,2)*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2)) + 2*Power(q2,2)*(3*Power(t1,2) + 3*t1*u1 + Power(u1,2)) - 3*q2*(2*Power(t1,3) + 4*Power(t1,2)*u1 + 3*t1*Power(u1,2) + Power(u1,3))) + 2*m2*(2*Power(q2,2)*Power(t1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 6*t1*Power(u1,2) + 2*Power(u1,3))))/(beta*Power(t1,2)*u1*(t1 + u1)*(-q2 + t1 + u1)));
r += c7*v7;
dbl v8 = ln(-(t1/m2));
dbl c8 = (-32*Power(m2,5)*Power(q2,2)*Power(t1 + u1,3) + Power(q2 - t1,2)*Power(t1,4)*u1*(4*Power(q2,3) - 8*Power(q2,2)*(t1 + u1) + 2*q2*(3*Power(t1,2) + 6*t1*u1 + 2*Power(u1,2)) - t1*(2*Power(t1,2) + 5*t1*u1 + 3*Power(u1,2))) + 8*Power(m2,4)*q2*(2*Power(q2,2)*(Power(t1,3) + 5*Power(t1,2)*u1 + 5*t1*Power(u1,2) + Power(u1,3)) - 2*q2*t1*(5*Power(t1,3) + 12*Power(t1,2)*u1 + 15*t1*Power(u1,2) + 4*Power(u1,3)) + Power(t1,2)*(7*Power(t1,3) + 17*Power(t1,2)*u1 + 17*t1*Power(u1,2) + 7*Power(u1,3))) + m2*Power(t1,2)*(Power(q2,5)*u1*(5*t1 + u1) + Power(q2,4)*(-4*Power(t1,3) - 51*Power(t1,2)*u1 - 20*t1*Power(u1,2) + Power(u1,3)) + Power(q2,3)*t1*(15*Power(t1,3) + 119*Power(t1,2)*u1 + 112*t1*Power(u1,2) + 8*Power(u1,3)) - Power(t1,4)*(8*Power(t1,3) + 21*Power(t1,2)*u1 + 28*t1*Power(u1,2) + 15*Power(u1,3)) - 2*Power(q2,2)*Power(t1,2)*(13*Power(t1,3) + 61*Power(t1,2)*u1 + 99*t1*Power(u1,2) + 22*Power(u1,3)) + q2*Power(t1,3)*(23*Power(t1,3) + 70*Power(t1,2)*u1 + 125*t1*Power(u1,2) + 58*Power(u1,3))) - 2*Power(m2,3)*(Power(q2,4)*(Power(t1,3) + 11*Power(t1,2)*u1 + 11*t1*Power(u1,2) + Power(u1,3)) + 2*Power(t1,4)*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3)) - 2*Power(q2,3)*t1*(10*Power(t1,3) + 41*Power(t1,2)*u1 + 40*t1*Power(u1,2) + 5*Power(u1,3)) + 2*Power(q2,2)*Power(t1,2)*(31*Power(t1,3) + 70*Power(t1,2)*u1 + 97*t1*Power(u1,2) + 18*Power(u1,3)) - q2*Power(t1,3)*(53*Power(t1,3) + 131*Power(t1,2)*u1 + 155*t1*Power(u1,2) + 69*Power(u1,3))) - Power(m2,2)*t1*(-2*Power(q2,5)*u1*(t1 + u1) + Power(q2,4)*(5*Power(t1,3) + 49*Power(t1,2)*u1 + 29*t1*Power(u1,2) + Power(u1,3)) - 2*Power(q2,3)*t1*(22*Power(t1,3) + 99*Power(t1,2)*u1 + 87*t1*Power(u1,2) + 4*Power(u1,3)) + 2*Power(t1,4)*(9*Power(t1,3) + 22*Power(t1,2)*u1 + 25*t1*Power(u1,2) + 12*Power(u1,3)) - 2*q2*Power(t1,3)*(40*Power(t1,3) + 100*Power(t1,2)*u1 + 141*t1*Power(u1,2) + 65*Power(u1,3)) + Power(q2,2)*Power(t1,2)*(93*Power(t1,3) + 259*Power(t1,2)*u1 + 395*t1*Power(u1,2) + 73*Power(u1,3))))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*Power(t1,2)*Power(m2 + t1,2)*u1*(t1 + u1));
r += c8*v8;
dbl v9 = ln(chi)*ln(-(u1/m2));
dbl c9 = -((8*Power(m2,2)*(Power(t1,3) + 2*Power(t1,2)*u1 + (2*q2 - u1)*Power(u1,2)) + u1*(-2*Power(q2,3)*u1 + Power(t1 + u1,2)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2)) + 2*Power(q2,2)*(Power(t1,2) + 3*t1*u1 + 3*Power(u1,2)) - 3*q2*(Power(t1,3) + 3*Power(t1,2)*u1 + 4*t1*Power(u1,2) + 2*Power(u1,3))) + 2*m2*(2*Power(q2,2)*Power(u1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(2*Power(t1,3) + 6*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3))))/(beta*t1*Power(u1,2)*(t1 + u1)*(-q2 + t1 + u1)));
r += c9*v9;
dbl v10 = ln(-(u1/m2));
dbl c10 = (-32*Power(m2,5)*Power(q2,2)*Power(t1 + u1,3) + t1*Power(q2 - u1,2)*Power(u1,4)*(4*Power(q2,3) - 8*Power(q2,2)*(t1 + u1) - u1*(3*Power(t1,2) + 5*t1*u1 + 2*Power(u1,2)) + 2*q2*(2*Power(t1,2) + 6*t1*u1 + 3*Power(u1,2))) + 8*Power(m2,4)*q2*(2*Power(q2,2)*(Power(t1,3) + 5*Power(t1,2)*u1 + 5*t1*Power(u1,2) + Power(u1,3)) - 2*q2*u1*(4*Power(t1,3) + 15*Power(t1,2)*u1 + 12*t1*Power(u1,2) + 5*Power(u1,3)) + Power(u1,2)*(7*Power(t1,3) + 17*Power(t1,2)*u1 + 17*t1*Power(u1,2) + 7*Power(u1,3))) + m2*Power(u1,2)*(Power(q2,5)*t1*(t1 + 5*u1) + Power(q2,4)*(Power(t1,3) - 20*Power(t1,2)*u1 - 51*t1*Power(u1,2) - 4*Power(u1,3)) - Power(u1,4)*(15*Power(t1,3) + 28*Power(t1,2)*u1 + 21*t1*Power(u1,2) + 8*Power(u1,3)) - 2*Power(q2,2)*Power(u1,2)*(22*Power(t1,3) + 99*Power(t1,2)*u1 + 61*t1*Power(u1,2) + 13*Power(u1,3)) + Power(q2,3)*u1*(8*Power(t1,3) + 112*Power(t1,2)*u1 + 119*t1*Power(u1,2) + 15*Power(u1,3)) + q2*Power(u1,3)*(58*Power(t1,3) + 125*Power(t1,2)*u1 + 70*t1*Power(u1,2) + 23*Power(u1,3))) - 2*Power(m2,3)*(Power(q2,4)*(Power(t1,3) + 11*Power(t1,2)*u1 + 11*t1*Power(u1,2) + Power(u1,3)) + 2*Power(u1,4)*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3)) - 2*Power(q2,3)*u1*(5*Power(t1,3) + 40*Power(t1,2)*u1 + 41*t1*Power(u1,2) + 10*Power(u1,3)) + 2*Power(q2,2)*Power(u1,2)*(18*Power(t1,3) + 97*Power(t1,2)*u1 + 70*t1*Power(u1,2) + 31*Power(u1,3)) - q2*Power(u1,3)*(69*Power(t1,3) + 155*Power(t1,2)*u1 + 131*t1*Power(u1,2) + 53*Power(u1,3))) - Power(m2,2)*u1*(-2*Power(q2,5)*t1*(t1 + u1) + Power(q2,4)*(Power(t1,3) + 29*Power(t1,2)*u1 + 49*t1*Power(u1,2) + 5*Power(u1,3)) + 2*Power(u1,4)*(12*Power(t1,3) + 25*Power(t1,2)*u1 + 22*t1*Power(u1,2) + 9*Power(u1,3)) - 2*Power(q2,3)*u1*(4*Power(t1,3) + 87*Power(t1,2)*u1 + 99*t1*Power(u1,2) + 22*Power(u1,3)) - 2*q2*Power(u1,3)*(65*Power(t1,3) + 141*Power(t1,2)*u1 + 100*t1*Power(u1,2) + 40*Power(u1,3)) + Power(q2,2)*Power(u1,2)*(73*Power(t1,3) + 395*Power(t1,2)*u1 + 259*t1*Power(u1,2) + 93*Power(u1,3))))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*Power(u1,2)*Power(m2 + u1,2)*(t1 + u1));
r += c10*v10;
dbl v11 = Power(ln(chi),2);
dbl c11 = (8*Power(m2,2)*Power(t1 + u1,2)*(2*Power(t1,3) + 3*(1 + beta)*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-((2 + 3*beta)*q2) + 3*(1 + beta)*u1)) + t1*(q2 - t1 - u1)*u1*(t1 + u1)*(2*(1 + beta)*Power(q2,2)*(t1 + u1) - 2*q2*(3*(-1 + beta)*Power(t1,2) + 4*(1 + beta)*t1*u1 + 3*(-1 + beta)*Power(u1,2)) + (t1 + u1)*(3*(-1 + beta)*Power(t1,2) + 4*(1 + beta)*t1*u1 + 3*(-1 + beta)*Power(u1,2))) + m2*(-4*Power(q2,2)*t1*u1*((1 + beta)*Power(t1,2) + 2*t1*u1 + (1 + beta)*Power(u1,2)) + 2*Power(t1 + u1,2)*(4*Power(t1,4) + 11*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 11*t1*Power(u1,3) + 4*Power(u1,4)) - 2*q2*(t1 + u1)*(4*Power(t1,4) + (15 - 2*beta)*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + (15 - 2*beta)*t1*Power(u1,3) + 4*Power(u1,4))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c11*v11;
dbl v12 = ln(chi);
dbl c12 = (16*Power(m2,3)*Power(t1 + u1,3)*(Power(t1,2) + Power(u1,2)) - t1*u1*Power(-q2 + t1 + u1,2)*(2*Power(beta,2)*Power(q2,2)*t1*u1 + 2*q2*(t1 + u1)*(Power(t1,2) - 2*Power(beta,2)*t1*u1 + Power(u1,2)) - Power(t1 + u1,2)*(Power(t1,2) - 2*Power(beta,2)*t1*u1 + Power(u1,2))) + 2*m2*(q2 - t1 - u1)*(Power(beta,2)*Power(q2,2)*t1*u1*(Power(t1,2) + 6*t1*u1 + Power(u1,2)) + q2*(t1 + u1)*(Power(t1,4) + (8 - 3*Power(beta,2))*Power(t1,3)*u1 + 2*(1 - 3*Power(beta,2))*Power(t1,2)*Power(u1,2) + (8 - 3*Power(beta,2))*t1*Power(u1,3) + Power(u1,4)) - Power(t1 + u1,2)*(Power(t1,4) - (-5 + Power(beta,2))*Power(t1,3)*u1 - 2*(-1 + Power(beta,2))*Power(t1,2)*Power(u1,2) - (-5 + Power(beta,2))*t1*Power(u1,3) + Power(u1,4))) + 4*Power(m2,2)*(t1 + u1)*(3*Power(t1,5) + 11*Power(t1,4)*u1 + 14*Power(t1,3)*Power(u1,2) + 14*Power(t1,2)*Power(u1,3) + 11*t1*Power(u1,4) + 3*Power(u1,5) - 2*Power(beta,2)*Power(q2,2)*t1*u1*(t1 + u1) - q2*(3*Power(t1,4) - 2*(-5 + Power(beta,2))*Power(t1,3)*u1 + 2*(3 - 2*Power(beta,2))*Power(t1,2)*Power(u1,2) - 2*(-5 + Power(beta,2))*t1*Power(u1,3) + 3*Power(u1,4))))/(beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1)*(4*m2 - q2 + t1 + u1));
r += c12*v12;
dbl v13 = Power(ln(chiq),2);
dbl c13 = (4*m2*(q2 - t1 - u1)*(2*Power(t1,5) + 9*Power(t1,4)*u1 + 2*Power(u1,5) + t1*Power(u1,3)*((-2 + beta)*q2 + 9*u1) + Power(t1,2)*Power(u1,2)*(-4*q2 + 17*u1) + Power(t1,3)*u1*((-2 + beta)*q2 + 17*u1)) - 8*Power(m2,2)*Power(t1 + u1,2)*(2*Power(t1,3) + 3*beta*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*((4 - 3*beta)*q2 + 3*beta*u1)) + (-2 + beta)*t1*u1*(t1 + u1)*(-2*Power(q2,3)*(t1 + u1) + 4*Power(q2,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) + Power(t1 + u1,2)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) - 3*q2*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3))))/(4.*beta*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c13*v13;
dbl v14 = ln(chiq);
dbl c14 = (betaq*q2*(256*Power(m2,5)*Power(q2,3)*Power(t1 + u1,2)*(5*Power(t1,3) + 11*Power(t1,2)*u1 + 5*Power(u1,3) + t1*u1*(-4*q2 + 11*u1)) + 64*Power(m2,4)*Power(q2,2)*(16*Power(q2,3)*t1*u1*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) + 4*q2*Power(t1 + u1,2)*(5*Power(t1,4) + 19*Power(t1,3)*u1 + 22*Power(t1,2)*Power(u1,2) + 19*t1*Power(u1,3) + 5*Power(u1,4)) - Power(t1 + u1,3)*(10*Power(t1,4) + 7*Power(t1,3)*u1 + 14*Power(t1,2)*Power(u1,2) + 7*t1*Power(u1,3) + 10*Power(u1,4)) - Power(q2,2)*(21*Power(t1,5) + 117*Power(t1,4)*u1 + 230*Power(t1,3)*Power(u1,2) + 230*Power(t1,2)*Power(u1,3) + 117*t1*Power(u1,4) + 21*Power(u1,5))) + Power(q2 - t1,2)*t1*Power(q2 - u1,2)*u1*(4*Power(q2,5)*t1*u1 - 2*t1*u1*Power(t1 + u1,3)*(Power(t1,2) + Power(u1,2)) - 2*Power(q2,4)*(3*Power(t1,3) + 7*Power(t1,2)*u1 + 7*t1*Power(u1,2) + 3*Power(u1,3)) + Power(q2,3)*(15*Power(t1,4) + 30*Power(t1,3)*u1 + 38*Power(t1,2)*Power(u1,2) + 30*t1*Power(u1,3) + 15*Power(u1,4)) - 2*Power(q2,2)*(6*Power(t1,5) + 17*Power(t1,4)*u1 + 23*Power(t1,3)*Power(u1,2) + 23*Power(t1,2)*Power(u1,3) + 17*t1*Power(u1,4) + 6*Power(u1,5)) + q2*(3*Power(t1,6) + 16*Power(t1,5)*u1 + 27*Power(t1,4)*Power(u1,2) + 32*Power(t1,3)*Power(u1,3) + 27*Power(t1,2)*Power(u1,4) + 16*t1*Power(u1,5) + 3*Power(u1,6))) - 16*Power(m2,3)*q2*(8*Power(q2,5)*t1*u1*(3*Power(t1,2) + 14*t1*u1 + 3*Power(u1,2)) - Power(q2,4)*(33*Power(t1,5) + 249*Power(t1,4)*u1 + 550*Power(t1,3)*Power(u1,2) + 550*Power(t1,2)*Power(u1,3) + 249*t1*Power(u1,4) + 33*Power(u1,5)) - Power(t1 + u1,3)*(5*Power(t1,6) + Power(t1,5)*u1 + 14*Power(t1,4)*Power(u1,2) + 8*Power(t1,3)*Power(u1,3) + 14*Power(t1,2)*Power(u1,4) + t1*Power(u1,5) + 5*Power(u1,6)) + 4*Power(q2,3)*(16*Power(t1,6) + 113*Power(t1,5)*u1 + 276*Power(t1,4)*Power(u1,2) + 342*Power(t1,3)*Power(u1,3) + 276*Power(t1,2)*Power(u1,4) + 113*t1*Power(u1,5) + 16*Power(u1,6)) + q2*Power(t1 + u1,2)*(20*Power(t1,6) + 95*Power(t1,5)*u1 + 116*Power(t1,4)*Power(u1,2) + 162*Power(t1,3)*Power(u1,3) + 116*Power(t1,2)*Power(u1,4) + 95*t1*Power(u1,5) + 20*Power(u1,6)) - 2*Power(q2,2)*(26*Power(t1,7) + 181*Power(t1,6)*u1 + 445*Power(t1,5)*Power(u1,2) + 652*Power(t1,4)*Power(u1,3) + 652*Power(t1,3)*Power(u1,4) + 445*Power(t1,2)*Power(u1,5) + 181*t1*Power(u1,6) + 26*Power(u1,7))) - m2*(4*Power(q2,8)*t1*u1*(Power(t1,2) + 18*t1*u1 + Power(u1,2)) + Power(t1,3)*Power(u1,3)*Power(t1 + u1,2)*(17*Power(t1,4) + 8*Power(t1,3)*u1 + 26*Power(t1,2)*Power(u1,2) + 8*t1*Power(u1,3) + 17*Power(u1,4)) - 2*Power(q2,7)*(3*Power(t1,5) + 63*Power(t1,4)*u1 + 190*Power(t1,3)*Power(u1,2) + 190*Power(t1,2)*Power(u1,3) + 63*t1*Power(u1,4) + 3*Power(u1,5)) + 4*Power(q2,6)*(6*Power(t1,6) + 109*Power(t1,5)*u1 + 294*Power(t1,4)*Power(u1,2) + 398*Power(t1,3)*Power(u1,3) + 294*Power(t1,2)*Power(u1,4) + 109*t1*Power(u1,5) + 6*Power(u1,6)) - 4*Power(q2,5)*(9*Power(t1,7) + 163*Power(t1,6)*u1 + 527*Power(t1,5)*Power(u1,2) + 809*Power(t1,4)*Power(u1,3) + 809*Power(t1,3)*Power(u1,4) + 527*Power(t1,2)*Power(u1,5) + 163*t1*Power(u1,6) + 9*Power(u1,7)) - 4*q2*Power(t1,2)*Power(u1,2)*(15*Power(t1,7) + 56*Power(t1,6)*u1 + 100*Power(t1,5)*Power(u1,2) + 137*Power(t1,4)*Power(u1,3) + 137*Power(t1,3)*Power(u1,4) + 100*Power(t1,2)*Power(u1,5) + 56*t1*Power(u1,6) + 15*Power(u1,7)) + Power(q2,4)*(24*Power(t1,8) + 521*Power(t1,7)*u1 + 2138*Power(t1,6)*Power(u1,2) + 3895*Power(t1,5)*Power(u1,3) + 4444*Power(t1,4)*Power(u1,4) + 3895*Power(t1,3)*Power(u1,5) + 2138*Power(t1,2)*Power(u1,6) + 521*t1*Power(u1,7) + 24*Power(u1,8)) + Power(q2,2)*t1*u1*(41*Power(t1,8) + 414*Power(t1,7)*u1 + 1068*Power(t1,6)*Power(u1,2) + 1698*Power(t1,5)*Power(u1,3) + 1942*Power(t1,4)*Power(u1,4) + 1698*Power(t1,3)*Power(u1,5) + 1068*Power(t1,2)*Power(u1,6) + 414*t1*Power(u1,7) + 41*Power(u1,8)) - 2*Power(q2,3)*(3*Power(t1,9) + 112*Power(t1,8)*u1 + 626*Power(t1,7)*Power(u1,2) + 1364*Power(t1,6)*Power(u1,3) + 1815*Power(t1,5)*Power(u1,4) + 1815*Power(t1,4)*Power(u1,5) + 1364*Power(t1,3)*Power(u1,6) + 626*Power(t1,2)*Power(u1,7) + 112*t1*Power(u1,8) + 3*Power(u1,9))) + 4*Power(m2,2)*(16*Power(q2,7)*t1*u1*(Power(t1,2) + 8*t1*u1 + Power(u1,2)) - Power(q2,6)*Power(t1 + u1,3)*(23*Power(t1,2) + 186*t1*u1 + 23*Power(u1,2)) - Power(t1,2)*Power(u1,2)*Power(t1 + u1,3)*(5*Power(t1,4) + Power(t1,3)*u1 + 4*Power(t1,2)*Power(u1,2) + t1*Power(u1,3) + 5*Power(u1,4)) + 2*q2*t1*u1*Power(t1 + u1,2)*(15*Power(t1,6) + 20*Power(t1,5)*u1 + 51*Power(t1,4)*Power(u1,2) + 40*Power(t1,3)*Power(u1,3) + 51*Power(t1,2)*Power(u1,4) + 20*t1*Power(u1,5) + 15*Power(u1,6)) + 4*Power(q2,5)*(17*Power(t1,6) + 166*Power(t1,5)*u1 + 431*Power(t1,4)*Power(u1,2) + 548*Power(t1,3)*Power(u1,3) + 431*Power(t1,2)*Power(u1,4) + 166*t1*Power(u1,5) + 17*Power(u1,6)) - Power(q2,4)*(78*Power(t1,7) + 785*Power(t1,6)*u1 + 2285*Power(t1,5)*Power(u1,2) + 3396*Power(t1,4)*Power(u1,3) + 3396*Power(t1,3)*Power(u1,4) + 2285*Power(t1,2)*Power(u1,5) + 785*t1*Power(u1,6) + 78*Power(u1,7)) + 4*Power(q2,3)*(11*Power(t1,8) + 123*Power(t1,7)*u1 + 408*Power(t1,6)*Power(u1,2) + 679*Power(t1,5)*Power(u1,3) + 790*Power(t1,4)*Power(u1,4) + 679*Power(t1,3)*Power(u1,5) + 408*Power(t1,2)*Power(u1,6) + 123*t1*Power(u1,7) + 11*Power(u1,8)) - Power(q2,2)*(11*Power(t1,9) + 172*Power(t1,8)*u1 + 592*Power(t1,7)*Power(u1,2) + 1150*Power(t1,6)*Power(u1,3) + 1483*Power(t1,5)*Power(u1,4) + 1483*Power(t1,4)*Power(u1,5) + 1150*Power(t1,3)*Power(u1,6) + 592*Power(t1,2)*Power(u1,7) + 172*t1*Power(u1,8) + 11*Power(u1,9)))))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*Power(t1,2)*Power(-4*m2*q2 + Power(q2 - u1,2),2)*Power(u1,2)*Power(t1 + u1,2));
r += c14*v14;
dbl v15 = zeta2;
dbl c15 = (2*Power(m2,2)*Power(t1 + u1,2)*(beta*Power(t1,5) + beta*Power(u1,4)*(-q2 + u1) - 2*Power(t1,3)*u1*(beta*q2 + 6*(1 + 2*beta)*u1) + t1*Power(u1,3)*(-2*beta*q2 + (-8 + 3*beta)*u1) + Power(t1,4)*(-(beta*q2) + (-8 + 3*beta)*u1) + 2*Power(t1,2)*Power(u1,2)*((4 + 13*beta)*q2 - 6*(u1 + 2*beta*u1))) - Power(t1,2)*(q2 - t1 - u1)*Power(u1,2)*(t1 + u1)*(2*(1 + 2*beta)*Power(q2,2)*(t1 + u1) - 2*q2*((-3 + 6*beta)*Power(t1,2) + 3*(-1 + 2*beta)*Power(u1,2) + 4*t1*(u1 + 2*beta*u1)) + (t1 + u1)*((-3 + 6*beta)*Power(t1,2) + 3*(-1 + 2*beta)*Power(u1,2) + 4*t1*(u1 + 2*beta*u1))) + 2*m2*t1*u1*(-(Power(t1 + u1,2)*(4*Power(t1,4) + 11*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 11*t1*Power(u1,3) + 4*Power(u1,4))) - q2*(t1 + u1)*((-4 + beta)*Power(t1,4) + 3*(-5 + 2*beta)*Power(t1,3)*u1 - 2*(-1 + beta)*Power(t1,2)*Power(u1,2) + 3*(-5 + 2*beta)*t1*Power(u1,3) + (-4 + beta)*Power(u1,4)) + Power(q2,2)*(beta*Power(t1,4) - 2*(-2 + beta)*Power(t1,2)*Power(u1,2) + 2*(1 + 3*beta)*t1*Power(u1,3) + beta*Power(u1,4) + 2*Power(t1,3)*(u1 + 3*beta*u1))))/(2.*beta*Power(t1,3)*Power(u1,3)*Power(t1 + u1,2)*(-q2 + t1 + u1));
r += c15*v15;
dbl v16 = 1;
dbl c16 = (64*Power(m2,5)*Power(q2,2)*Power(t1 + u1,2) - 16*Power(m2,4)*q2*(-5*q2*Power(t1 + u1,3) + Power(t1 + u1,2)*(Power(t1,2) + Power(u1,2)) + 2*Power(q2,2)*(Power(t1,2) + 4*t1*u1 + Power(u1,2))) + t1*u1*(Power(q2,5)*Power(t1 - u1,2) - q2*t1*u1*Power(t1 + u1,4) - 2*Power(q2,4)*(Power(t1,3) - 2*Power(t1,2)*u1 - 2*t1*Power(u1,2) + Power(u1,3)) + Power(t1,2)*Power(u1,2)*(Power(t1,3) + Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3)) + 2*Power(q2,2)*t1*u1*(Power(t1,3) + 5*Power(t1,2)*u1 + 5*t1*Power(u1,2) + Power(u1,3)) + Power(q2,3)*(Power(t1,4) - 3*Power(t1,3)*u1 - 12*Power(t1,2)*Power(u1,2) - 3*t1*Power(u1,3) + Power(u1,4))) + 2*Power(m2,3)*(2*Power(t1,2)*Power(u1,2)*Power(t1 + u1,2) + 2*Power(q2,4)*(Power(t1,2) + 10*t1*u1 + Power(u1,2)) - q2*Power(t1 + u1,3)*(5*Power(t1,2) + 6*t1*u1 + 5*Power(u1,2)) - 16*Power(q2,3)*(Power(t1,3) + 5*Power(t1,2)*u1 + 5*t1*Power(u1,2) + Power(u1,3)) + 2*Power(q2,2)*(9*Power(t1,4) + 46*Power(t1,3)*u1 + 66*Power(t1,2)*Power(u1,2) + 46*t1*Power(u1,3) + 9*Power(u1,4))) + m2*t1*u1*(28*Power(q2,4)*t1*u1 - 2*Power(q2,5)*(t1 + u1) + t1*u1*Power(t1 + u1,2)*(Power(t1,2) + t1*u1 + Power(u1,2)) - 4*Power(q2,3)*(Power(t1,3) + 12*Power(t1,2)*u1 + 12*t1*Power(u1,2) + Power(u1,3)) + Power(q2,2)*(5*Power(t1,4) + 39*Power(t1,3)*u1 + 64*Power(t1,2)*Power(u1,2) + 39*t1*Power(u1,3) + 5*Power(u1,4)) - q2*(3*Power(t1,5) + 10*Power(t1,4)*u1 + 29*Power(t1,3)*Power(u1,2) + 29*Power(t1,2)*Power(u1,3) + 10*t1*Power(u1,4) + 3*Power(u1,5))) + Power(m2,2)*(-4*Power(q2,5)*t1*u1 + 3*Power(t1,2)*Power(u1,2)*Power(t1 + u1,3) + 2*Power(q2,2)*Power(t1 + u1,3)*(3*Power(t1,2) + 22*t1*u1 + 3*Power(u1,2)) + 3*Power(q2,4)*(Power(t1,3) + 11*Power(t1,2)*u1 + 11*t1*Power(u1,2) + Power(u1,3)) - Power(q2,3)*(7*Power(t1,4) + 60*Power(t1,3)*u1 + 146*Power(t1,2)*Power(u1,2) + 60*t1*Power(u1,3) + 7*Power(u1,4)) - q2*(2*Power(t1,6) + 13*Power(t1,5)*u1 + 46*Power(t1,4)*Power(u1,2) + 74*Power(t1,3)*Power(u1,3) + 46*Power(t1,2)*Power(u1,4) + 13*t1*Power(u1,5) + 2*Power(u1,6))))/(2.*(-4*m2*q2 + Power(q2 - t1,2))*t1*(m2 + t1)*(4*m2*q2 - Power(q2 - u1,2))*u1*(m2 + u1)*(t1 + u1));
r += c16*v16;
