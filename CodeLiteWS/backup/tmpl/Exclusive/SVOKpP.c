dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c0 = (-64*m2*Pi)/(t1*(t1 + u1)) + (8*Pi*(-(Power(q2,3)*Power(t1,2)) + Power(q2,2)*t1*(3*q2 + 2*t1)*u1 - 2*q2*(Power(q2,2) + q2*t1 + Power(t1,2))*Power(u1,2) + (6*Power(q2,2) - 7*q2*t1 + 3*Power(t1,2))*Power(u1,3) + (-7*q2 + 4*t1)*Power(u1,4) + 3*Power(u1,5)))/(q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(t1 + u1)) - (8*Pi*Power(q2 - u1,2)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*(t1 + u1)) - (8*Pi*(4*Power(q2,2)*u1 - q2*(Power(t1,2) + 5*t1*u1 + 2*Power(u1,2)) + u1*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(q2*t1*u1*(t1 + u1));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c1 = (-64*m2*Pi)/(u1*(t1 + u1)) + (8*Pi*(t1*(-4*Power(q2,2) + 2*q2*t1 - 3*Power(t1,2)) + (5*q2 - 4*t1)*t1*u1 + (q2 - 3*t1)*Power(u1,2)))/(q2*t1*u1*(t1 + u1)) + (8*Pi*Power(q2 - t1,2)*(t1 - u1)*(q2*(-t1 + u1) + t1*(t1 + u1)))/(Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1*(t1 + u1)) - (8*Pi*(Power(q2,3)*(2*Power(t1,2) - 3*t1*u1 + Power(u1,2)) - 2*Power(q2,2)*t1*(3*Power(t1,2) - t1*u1 + Power(u1,2)) + q2*Power(t1,2)*(7*Power(t1,2) + 7*t1*u1 + 2*Power(u1,2)) - Power(t1,3)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(q2*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1*(t1 + u1));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (32*Power(m2,2)*Pi*(5*Power(t1,2) + 2*t1*u1 + Power(u1,2)))/(Power(t1,3)*u1) + 32*m2*Pi*(2/u1 + (q2*(t1 - u1))/(Power(t1,2)*(t1 + u1))) - (16*Pi*(2*Power(q2,2) - 2*q2*(t1 + 2*u1) + (t1 + u1)*(t1 + 2*u1)))/(u1*(t1 + u1));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (-16*Pi*(2*Power(q2 - t1,2) - 2*q2*u1 + 3*t1*u1 + Power(u1,2)))/(t1*(t1 + u1)) + (32*Power(m2,2)*Pi*(Power(t1,2) + 2*t1*u1 + 5*Power(u1,2)))/(t1*Power(u1,3)) + (32*m2*Pi*(q2*t1*(-t1 + u1) + 2*Power(u1,2)*(t1 + u1)))/(t1*Power(u1,2)*(t1 + u1));
r += c3*v3;
dbl v4 = (2*Li2(1 + (2*t1)/((-1 + beta)*(t1 + u1))) + 2*Li2(1 + (2*u1)/((-1 + beta)*(t1 + u1))) - 2*Li2(-(t1 - u1 + beta*(t1 + u1))/(2.*u1)) - 2*Li2(-(-t1 + u1 + beta*(t1 + u1))/(2.*t1)) + 8*ln(betaTil)*(ln(-(t1/m2)) + ln(-(u1/m2))) + Power(ln(-((-1 + beta)*(t1 + u1))/(2.*t1)),2) + Power(ln(-((-1 + beta)*(t1 + u1))/(2.*u1)),2) + (2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2)))*(2*(ln(-(t1/m2)) + ln(-(u1/m2)) - ln(-((t1 + u1)/m2))) + ln(-((-q2 + t1 + u1)/m2))))/2.;
dbl c4 = (-64*m2*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) - (32*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1));
r += c4*v4;
dbl v5 = Li2((2*beta)/(1 + beta)) - Li2(chi) + (ln(chi)*(4*ln(betaTil) - 2*ln(1 - chi) + 2*ln(-((t1 + u1)/m2)) - ln(-((-q2 + t1 + u1)/m2))))/2.;
dbl c5 = ((256*Power(m2,2)*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(s*Power(t1,2)*Power(u1,2)) - (64*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) + (128*m2*Pi*(Power(t1,2) + Power(u1,2))*((t1 + u1)*(Power(t1,2) + 3*t1*u1 + Power(u1,2)) - q2*(Power(t1,2) + 4*t1*u1 + Power(u1,2))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c5*v5;
dbl v6 = Li2(-chi) - Li2(-(chi/chiq)) - Li2(-(chi*chiq)) + ln(chi)*ln(1 + chi) - ln(chi/chiq)*ln((chi + chiq)/chiq) - ln(chi*chiq)*ln(1 + chi*chiq);
dbl c6 = ((-256*Power(m2,2)*Pi*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (64*m2*Pi*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)) + (32*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(t1*u1*(t1 + u1)))/beta;
r += c6*v6;
dbl v7 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c7 = (32*m2*Pi*(t1 + u1))/(t1*u1) + (16*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1));
r += c7*v7;
dbl v8 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c8 = (32*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) + (64*m2*Pi*(t1 + u1)*(2*Power(t1,2) - t1*u1 + 2*Power(u1,2)))/(Power(t1,2)*Power(u1,2));
r += c8*v8;
dbl v9 = ln(chi)*ln(-(t1/m2));
dbl c9 = ((-256*Power(m2,2)*Pi*(2*q2*Power(t1,2) - Power(t1,3) + 2*t1*Power(u1,2) + Power(u1,3)))/(s*Power(t1,2)*u1*(t1 + u1)) + (32*Pi*(2*Power(q2 - t1,2)*t1 + 4*t1*(-q2 + t1)*u1 + (-2*q2 + 3*t1)*Power(u1,2) + Power(u1,3)))/(t1*u1*(t1 + u1)) - (64*m2*Pi*(2*Power(q2,2)*Power(t1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 2*Power(u1,2))))/(s*Power(t1,2)*u1*(t1 + u1)))/beta;
r += c9*v9;
dbl v10 = ln(-(t1/m2));
dbl c10 = 32*Pi*(2 + q2/t1 + (2*t1)/u1) - (32*m2*Pi*Power(t1 + u1,2))/(Power(t1,2)*u1) + (32*Pi*(-(Power(t1,3)*(q2 + 2*t1)) - t1*(Power(q2,2) + 5*q2*t1 + 3*Power(t1,2))*u1 - Power(q2 + t1,2)*Power(u1,2)))/((m2 + t1)*(q2 + t1)*u1*(t1 + u1)) - (32*Pi*q2*(q2 - t1)*(t1 - u1)*(q2*(t1 - u1) - t1*(t1 + u1)))/((-4*m2*q2 + Power(q2 - t1,2))*(q2 + t1)*u1*(t1 + u1));
r += c10*v10;
dbl v11 = ln(chi)*ln(-(u1/m2));
dbl c11 = ((-256*Power(m2,2)*Pi*(Power(t1,3) + 2*Power(t1,2)*u1 + (2*q2 - u1)*Power(u1,2)))/(s*t1*Power(u1,2)*(t1 + u1)) + (32*Pi*(2*Power(q2,2)*u1 - 2*q2*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2)) + (t1 + u1)*(Power(t1,2) + 2*t1*u1 + 2*Power(u1,2))))/(t1*u1*(t1 + u1)) - (64*m2*Pi*(2*Power(q2,2)*Power(u1,2) + Power(t1 + u1,2)*(2*Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) - q2*(t1 + u1)*(2*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(s*t1*Power(u1,2)*(t1 + u1)))/beta;
r += c11*v11;
dbl v12 = ln(-(u1/m2));
dbl c12 = (-32*m2*Pi*Power(t1 + u1,2))/(t1*Power(u1,2)) + 32*Pi*(2 + q2/u1 + (2*u1)/t1) - (32*Pi*q2*(q2 - u1)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*(q2 + u1)*(t1 + u1)) - (32*Pi*(Power(q2,2)*t1*(t1 + u1) + Power(u1,2)*(t1 + u1)*(t1 + 2*u1) + q2*u1*(2*Power(t1,2) + 5*t1*u1 + Power(u1,2))))/(t1*(m2 + u1)*(q2 + u1)*(t1 + u1));
r += c12*v12;
dbl v13 = Power(ln(betaTil),2);
dbl c13 = (-512*m2*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2)) - (256*Pi*(-2*q2 + t1 + u1)*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1));
r += c13*v13;
dbl v14 = Power(ln(chi),2);
dbl c14 = (-192*Power(m2,2)*Pi)/(t1*u1) + (32*m2*Pi*(Power(t1,2) + Power(u1,2))*(Power(t1,3) + 3*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-q2 + 3*u1)))/(Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)) + (8*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) + (t1 + u1)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2))))/(t1*u1*(t1 + u1)) + ((64*Power(m2,2)*Pi*(Power(t1,3) + 2*Power(t1,2)*u1 + Power(u1,3) + 2*t1*u1*(-q2 + u1)))/(s*Power(t1,2)*Power(u1,2)) + (8*Pi*(2*Power(q2,2)*(t1 + u1) + 2*q2*(Power(t1,2) - 4*t1*u1 + Power(u1,2)) - (t1 + u1)*(Power(t1,2) - 4*t1*u1 + Power(u1,2))))/(t1*u1*(t1 + u1)) - (16*m2*Pi*(2*Power(q2,2)*t1*u1*(t1 + u1) - (t1 + u1)*(2*Power(t1,4) + 5*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 5*t1*Power(u1,3) + 2*Power(u1,4)) + q2*(2*Power(t1,4) + 7*Power(t1,3)*u1 - 6*Power(t1,2)*Power(u1,2) + 7*t1*Power(u1,3) + 2*Power(u1,4))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c14*v14;
dbl v15 = ln(chi);
dbl c15 = beta*((-64*m2*Pi*q2)/(t1*u1) - (16*Pi*Power(t1 - u1,2)*(2*Power(q2,2) - 3*q2*(t1 + u1) + Power(t1 + u1,2)))/((4*m2 - s)*t1*u1*(t1 + u1)) + (16*Pi*(4*Power(q2,2)*t1*u1 - 2*q2*Power(t1 + u1,3) + Power(t1 + u1,4)))/(t1*u1*Power(t1 + u1,2)));
r += c15*v15;
dbl v16 = Power(ln(chiq),2);
dbl c16 = (192*Power(m2,2)*Pi)/(t1*u1) + 32*m2*Pi*((-1 + q2/u1)/t1 - (2*t1)/Power(u1,2) - 1/u1 - (2*u1)/Power(t1,2) - (2*q2)/Power(t1 + u1,2)) - (8*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2)) + (t1 + u1)*(5*Power(t1,2) + 4*t1*u1 + 5*Power(u1,2))))/(t1*u1*(t1 + u1)) + ((-128*Power(m2,2)*Pi*(Power(t1,3) + 2*q2*t1*u1 + Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (32*m2*Pi*(2*Power(t1,3) + 5*Power(t1,2)*u1 + 2*Power(u1,3) + t1*u1*(-2*q2 + 5*u1)))/(Power(t1,2)*Power(u1,2)) + (16*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(t1*u1*(t1 + u1)))/beta;
r += c16*v16;
dbl v17 = ln(chiq);
dbl c17 = (64*betaq*m2*Pi*q2)/(t1*u1) - (16*betaq*Pi*q2*(q2 - t1)*(t1 - u1)*(q2*(t1 - u1) - t1*(t1 + u1)))/((-4*m2*q2 + Power(q2 - t1,2))*t1*u1*(t1 + u1)) - (16*betaq*Pi*q2*(q2 - u1)*(t1 - u1)*(q2*(t1 - u1) + u1*(t1 + u1)))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*(t1 + u1)) + (32*betaq*Pi*q2*(Power(t1,3) + 3*Power(t1,2)*u1 + Power(u1,3) + t1*u1*(-2*q2 + 3*u1)))/(t1*u1*Power(t1 + u1,2));
r += c17*v17;
dbl v18 = zeta2;
dbl c18 = (-32*Power(m2,2)*Pi*(Power(t1,4) + 2*Power(t1,3)*u1 - 26*Power(t1,2)*Power(u1,2) + 2*t1*Power(u1,3) + Power(u1,4)))/(Power(t1,3)*Power(u1,3)) - (32*Pi*(2*Power(q2,2)*(t1 + u1) - 2*q2*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2)) + (t1 + u1)*(3*Power(t1,2) + 4*t1*u1 + 3*Power(u1,2))))/(t1*u1*(t1 + u1)) + (32*m2*Pi*(-4*Power(t1 + u1,3)*(Power(t1,2) - t1*u1 + Power(u1,2)) + q2*(Power(t1,4) + 6*Power(t1,3)*u1 - 2*Power(t1,2)*Power(u1,2) + 6*t1*Power(u1,3) + Power(u1,4))))/(Power(t1,2)*Power(u1,2)*Power(t1 + u1,2)) + ((-128*Power(m2,2)*Pi*(3*Power(t1,3) + 4*Power(t1,2)*u1 - 2*t1*(q2 - 2*u1)*u1 + 3*Power(u1,3)))/(s*Power(t1,2)*Power(u1,2)) + (16*Pi*(-2*Power(q2,2)*(t1 + u1) - 2*q2*(5*Power(t1,2) - 4*t1*u1 + 5*Power(u1,2)) + (t1 + u1)*(5*Power(t1,2) - 4*t1*u1 + 5*Power(u1,2))))/(t1*u1*(t1 + u1)) + (32*m2*Pi*(2*Power(q2,2)*t1*u1*(t1 + u1) - (t1 + u1)*(6*Power(t1,4) + 17*Power(t1,3)*u1 + 6*Power(t1,2)*Power(u1,2) + 17*t1*Power(u1,3) + 6*Power(u1,4)) + q2*(6*Power(t1,4) + 23*Power(t1,3)*u1 + 2*Power(t1,2)*Power(u1,2) + 23*t1*Power(u1,3) + 6*Power(u1,4))))/(s*Power(t1,2)*Power(u1,2)*(t1 + u1)))/beta;
r += c18*v18;
dbl v19 = 1;
dbl c19 = (32*Pi*q2*(Power(t1,2) + Power(u1,2)))/(t1*u1*(t1 + u1)) - (32*m2*Pi*(t1 + u1)*(Power(t1,2) + Power(u1,2)))/(Power(t1,2)*Power(u1,2));
r += c19*v19;
