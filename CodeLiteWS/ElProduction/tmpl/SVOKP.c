dbl v0 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) + Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) + Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) + Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)));
dbl c0 = (-2*m2)/(t1*(t1 + u1)) + (q2*Power(t1,2) - 4*Power(q2,2)*u1 + 5*q2*t1*u1 - 3*Power(t1,2)*u1 + 2*q2*Power(u1,2) - 4*t1*Power(u1,2) - 3*Power(u1,3))/(4*q2*Power(t1,2)*u1 + 4*q2*t1*Power(u1,2)) + (-(Power(q2,3)*Power(t1,2)) + Power(q2,2)*t1*(3*q2 + 2*t1)*u1 - 2*q2*(Power(q2,2) + q2*t1 + Power(t1,2))*Power(u1,2) + (6*Power(q2,2) - 7*q2*t1 + 3*Power(t1,2))*Power(u1,3) + (-7*q2 + 4*t1)*Power(u1,4) + 3*Power(u1,5))/(4.*q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(t1 + u1)) - (Power(q2 - u1,2)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(4.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(t1 + u1));
r += c0*v0;
dbl v1 = Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))));
dbl c1 = (2*m2)/(t1*(t1 + u1)) + (Power(q2,3)*Power(t1,2) - Power(q2,2)*t1*(3*q2 + 2*t1)*u1 + 2*q2*(Power(q2,2) + q2*t1 + Power(t1,2))*Power(u1,2) + (-6*Power(q2,2) + 7*q2*t1 - 3*Power(t1,2))*Power(u1,3) + (7*q2 - 4*t1)*Power(u1,4) - 3*Power(u1,5))/(4.*q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(t1 + u1)) + (Power(q2 - u1,2)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(4.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(t1 + u1)) + (4*Power(q2,2)*u1 - q2*(Power(t1,2) + 5*t1*u1 + 2*Power(u1,2)) + u1*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)))/(4.*q2*t1*u1*(t1 + u1));
r += c1*v1;
dbl v2 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c2 = (-2*m2)/(u1*(t1 + u1)) + (t1*(-4*Power(q2,2) + 2*q2*t1 - 3*Power(t1,2)) + (5*q2 - 4*t1)*t1*u1 + (q2 - 3*t1)*Power(u1,2))/(4.*q2*t1*u1*(t1 + u1)) + (Power(q2 - t1,2)*(t1 - u1)*(q2*(-t1 + u1) + t1*(t1 + u1)))/(4.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1*(t1 + u1)) + (-(Power(q2,3)*(2*Power(t1,2) - 3*t1*u1 + Power(u1,2))) + 2*Power(q2,2)*t1*(3*Power(t1,2) - t1*u1 + Power(u1,2)) - q2*Power(t1,2)*(7*Power(t1,2) + 7*t1*u1 + 2*Power(u1,2)) + Power(t1,3)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)))/(4.*q2*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + t1)/m2);
dbl c3 = (Power(m2,2)*(5*Power(t1,2) + 2*t1*u1 + Power(u1,2)))/(Power(t1,3)*u1) + m2*(2/u1 + (q2*(t1 - u1))/(Power(t1,2)*(t1 + u1))) - (2*Power(q2,2) - 2*q2*(t1 + 2*u1) + (t1 + u1)*(t1 + 2*u1))/(2.*u1*(t1 + u1));
r += c3*v3;
dbl v4 = Li2((m2 + u1)/m2);
dbl c4 = -(2*Power(q2 - t1,2) - 2*q2*u1 + 3*t1*u1 + Power(u1,2))/(2.*t1*(t1 + u1)) + (Power(m2,2)*(Power(t1,2) + 2*t1*u1 + 5*Power(u1,2)))/(t1*Power(u1,3)) + (m2*(q2*t1*(-t1 + u1) + 2*Power(u1,2)*(t1 + u1)))/(t1*Power(u1,2)*(t1 + u1));
r += c4*v4;
dbl v5 = Li2(1 - t1/(chi*u1)) - Li2(1 - u1/(chi*t1)) + Power(ln((chi*u1)/t1),2)/2.;
dbl c5 = (-2*m2*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) - ((-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1));
r += c5*v5;
dbl v6 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
dbl c6 = (4 - (6*q2)/t1 + (2*Power(q2,2) - 6*q2*t1 + 3*Power(t1,2))/(t1*u1) + (3*u1)/t1 + (4*q2)/(t1 + u1) - (8*Power(m2,2)*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (2*m2*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c6*v6;
dbl v7 = Li2(chi) - Li2(1 - Power(chi,2))/2. + ln(1 - chi)*ln(chi);
dbl c7 = ((-8*Power(m2,2)*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(s*Power(t1,2)*Power(u1,2)) + (2*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) - (4*m2*(Power(t1,2) + Power(u1,2))*((t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c7*v7;
dbl v8 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c8 = m2*(1/t1 + 1/u1) + ((-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(2.*t1*u1*(t1 + u1));
r += c8*v8;
dbl v9 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c9 = 2*m2*(1/t1 + (2*t1)/Power(u1,2) + 1/u1 + (2*u1)/Power(t1,2)) + ((-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1));
r += c9*v9;
dbl v10 = ln(chi)*ln(-(t1/m2));
dbl c10 = ((-8*Power(m2,2)*(2*q2*Power(t1,2) - Power(t1,3) + 2*t1*Power(u1,2) + Power(u1,3)))/(s*Power(t1,2)*u1*(t1 + u1)) + (2*Power(q2 - t1,2)*t1 + 4*t1*(-q2 + t1)*u1 + (-2*q2 + 3*t1)*Power(u1,2) + Power(u1,3))/(t1*u1*(t1 + u1)) - (2*m2*(2*Power(q2,2)*Power(t1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 2*Power(u1,2))))/(s*Power(t1,2)*u1*(t1 + u1)))/beta;
r += c10*v10;
dbl v11 = ln(-(t1/m2));
dbl c11 = 2 + q2/t1 + (2*t1)/u1 - (m2*Power(t1 + u1,2))/(Power(t1,2)*u1) - (Power(t1,3)*(q2 + 2*t1) + t1*(Power(q2,2) + 5*q2*t1 + 3*Power(t1,2))*u1 + Power(q2 + t1,2)*Power(u1,2))/((m2 + t1)*(q2 + t1)*u1*(t1 + u1)) - (q2*(q2 - t1)*(t1 - u1)*(q2*(t1 - u1) - t1*(t1 + u1)))/((-4*m2*q2 + Power(q2 - t1,2))*(q2 + t1)*u1*(t1 + u1));
r += c11*v11;
dbl v12 = ln(chi)*ln(-(u1/m2));
dbl c12 = (2 - (4*q2)/t1 + (-2*q2 + t1)/u1 + (2*u1)/t1 + (2*q2*(q2 + t1))/(t1*(t1 + u1)) - (8*Power(m2,2)*(Power(t1,3) + 2*Power(t1,2)*u1 + (2*q2 - u1)*Power(u1,2)))/(s*t1*Power(u1,2)*(t1 + u1)) - (2*m2*(2*Power(q2,2)*Power(u1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(2*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(s*t1*Power(u1,2)*(t1 + u1)))/beta;
r += c12*v12;
dbl v13 = ln(-(u1/m2));
dbl c13 = 2 + q2/u1 + (2*u1)/t1 - (m2*Power(t1 + u1,2))/(t1*Power(u1,2)) - (q2*(q2 - u1)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*(q2 + u1)*(t1 + u1)) - (Power(q2,2)*t1*(t1 + u1) + Power(u1,2)*(t1 + u1)*(t1 + 2*u1) + q2*u1*(2*Power(t1,2) + 5*t1*u1 + Power(u1,2)))/(t1*(m2 + u1)*(q2 + u1)*(t1 + u1));
r += c13*v13;
dbl v14 = Power(ln(chi),2);
dbl c14 = (-6*Power(m2,2))/(t1*u1) + (4 - (14*q2)/t1 + (2*Power(q2,2) - 14*q2*t1 + 7*Power(t1,2))/(t1*u1) + (7*u1)/t1 + (20*q2)/(t1 + u1))/4. + (m2*(Power(t1,2) + Power(u1,2))*(2*Power(t1,3) + 6*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-q2 + 6*u1)))/(Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)) + ((4 + (6*q2)/t1 + (2*Power(q2,2) + 6*q2*t1 - 3*Power(t1,2))/(t1*u1) - (3*u1)/t1 - (20*q2)/(t1 + u1))/4. + (2*Power(m2,2)*(2*Power(t1,3) + 3*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 3*u1)))/(s*Power(t1,2)*Power(u1,2)) - (m2*(2*Power(q2,2)*t1*u1*(t1 + u1) - (t1 + u1)*(4*Power(t1,4) + 11*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 11*t1*Power(u1,3) + 4*Power(u1,4)) + q2*(4*Power(t1,4) + 15*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 15*t1*Power(u1,3) + 4*Power(u1,4))))/(2.*s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c14*v14;
dbl v15 = ln(chi);
dbl c15 = beta*((-2*m2*q2)/(t1*u1) - (Power(t1 - u1,2)*(2*Power(q2,2) - 3*q2*(t1 + u1) + Power(t1 + u1,2)))/(2.*(4*m2 - s)*t1*u1*(t1 + u1)) + (4*Power(q2,2)*t1*u1 - 2*q2*Power(t1 + u1,3) + Power(t1 + u1,4))/(2.*t1*u1*Power(t1 + u1,2)));
r += c15*v15;
dbl v16 = Power(ln(chiq),2);
dbl c16 = (6*Power(m2,2))/(t1*u1) + m2*((-1 + q2/u1)/t1 - (2*t1)/Power(u1,2) - 1/u1 - (2*u1)/Power(t1,2) - (2*q2)/Power(t1 + u1,2)) - (2*Power(q2,2)*(t1 + u1) - 2*q2*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) + (t1 + u1)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)))/(4.*t1*u1*(t1 + u1)) + ((-4*Power(m2,2)*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (4 - (6*q2)/t1 + (2*Power(q2,2) - 6*q2*t1 + 3*Power(t1,2))/(t1*u1) + (3*u1)/t1 + (4*q2)/(t1 + u1))/2. + (m2*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)))/beta;
r += c16*v16;
dbl v17 = ln(chiq);
dbl c17 = (2*betaq*m2*q2)/(t1*u1) - (betaq*q2*(q2 - t1)*(t1 - u1)*(q2*(t1 - u1) - t1*(t1 + u1)))/(2.*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1*(t1 + u1)) - (betaq*q2*(q2 - u1)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(2.*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(t1 + u1)) + (betaq*q2*(Power(t1,3) + 3*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 3*u1)))/(t1*u1*Power(t1 + u1,2));
r += c17*v17;
dbl v18 = zeta2;
dbl c18 = -4 + (6*q2)/t1 + (-2*Power(q2,2) + 6*q2*t1 - 3*Power(t1,2))/(t1*u1) - (3*u1)/t1 - (4*q2)/(t1 + u1) - (Power(m2,2)*(Power(t1,4) + 2*Power(t1,3)*u1 - 26*Power(t1,2)*Power(u1,2) + 2*t1*Power(u1,3) + Power(u1,4)))/(Power(t1,3)*Power(u1,3)) + m2*((-4*t1)/Power(u1,2) - (4*u1)/Power(t1,2) + q2*(Power(t1,-2) + Power(u1,-2) + 4/(t1*u1) - 12/Power(t1 + u1,2))) + (-2 - (5*q2)/t1 - (2*Power(q2,2) + 10*q2*t1 - 5*Power(t1,2))/(2.*t1*u1) + (5*u1)/(2.*t1) + (14*q2)/(t1 + u1) - (4*Power(m2,2)*(3*Power(t1,3) + 4*Power(t1,2)*u1 - 2*t1*(q2 - 2*u1)*u1 + 3*Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) - (m2*(-2*Power(q2,2)*t1*u1*(t1 + u1) + (t1 + u1)*(6*Power(t1,4) + 17*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 17*t1*Power(u1,3) + 6*Power(u1,4)) - q2*(6*Power(t1,4) + 23*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 23*t1*Power(u1,3) + 6*Power(u1,4))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c18*v18;
dbl v19 = 1;
dbl c19 = (q2*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) - (m2*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2));
r += c19*v19;
