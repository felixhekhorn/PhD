dbl v0 = -(Sqrt(-4*m2*q2 + Power(q2 - t1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) - t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/t1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) - t1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - t1,2))) + t1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1) + t1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1))/(t1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - t1,2)) + t1)))));
dbl c0 = (2*m2*(t1 - u1))/(t1*u1*(t1 + u1)) - (Power(q2 - t1,2)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/(2.*Power(-4*m2*q2 + Power(q2 - t1,2),2)*u1*Power(t1 + u1,2)) + (-4*Power(q2,2)*Power(t1,4) - Power(t1,6) + Power(t1,4)*Power(u1,2) + 2*Power(q2,3)*t1*u1*(-t1 + u1) + Power(q2,4)*(t1 - u1)*(t1 + u1) + 2*q2*Power(t1,3)*(2*Power(t1,2) + t1*u1 + Power(u1,2)))/(2.*q2*(-4*m2*q2 + Power(q2 - t1,2))*t1*u1*Power(t1 + u1,2)) + (Power(t1,4) - Power(t1,2)*Power(u1,2) + Power(q2,2)*(-Power(t1,2) + 4*t1*u1 + Power(u1,2)) - q2*(Power(t1,3) + 3*t1*Power(u1,2)))/(2.*q2*t1*u1*Power(t1 + u1,2));
r += c0*v0;
dbl v1 = -(Sqrt(-4*m2*q2 + Power(q2 - u1,2))*(zeta2 + Li2((Power(betaq,2)*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) - u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1)) + Li2((-(Power(betaq,2)*q2) - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) - 2*Li2((Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/u1) - Li2((2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)) - Li2(-((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(betaq*q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) - u1))) - Li2((-(Power(betaq,2)*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)/(betaq*(-(betaq*q2) + Sqrt(-4*m2*q2 + Power(q2 - u1,2))) + u1)) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 - Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))) + Li2((2*m2*(Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1) + u1*(-q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1))/(u1*(2*m2 - q2 + Sqrt(-4*m2*q2 + Power(q2 - u1,2)) + u1)))));
dbl c1 = (2*m2*(-t1 + u1))/(t1*u1*(t1 + u1)) + (Power(q2,2)*Power(t1,2) + q2*(4*q2 - 3*t1)*t1*u1 - (Power(q2,2) + Power(t1,2))*Power(u1,2) - q2*Power(u1,3) + Power(u1,4))/(2.*q2*t1*u1*Power(t1 + u1,2)) - (Power(q2 - u1,2)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(2.*t1*Power(-4*m2*q2 + Power(q2 - u1,2),2)*Power(t1 + u1,2)) + (2*Power(q2,3)*t1*(t1 - u1)*u1 - 4*Power(q2,2)*Power(u1,4) + (t1 - u1)*Power(u1,4)*(t1 + u1) + Power(q2,4)*(-Power(t1,2) + Power(u1,2)) + 2*q2*Power(u1,3)*(Power(t1,2) + t1*u1 + 2*Power(u1,2)))/(2.*q2*t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c1*v1;
dbl v2 = Li2((m2 + t1)/m2);
dbl c2 = (2*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + (4*m2*q2*(t1 - u1))/(u1*Power(t1 + u1,2));
r += c2*v2;
dbl v3 = Li2((m2 + u1)/m2);
dbl c3 = (2*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + (4*m2*q2*(-t1 + u1))/(t1*Power(t1 + u1,2));
r += c3*v3;
dbl v4 = Li2(1 - t1/(chi*u1)) - Li2(1 - u1/(chi*t1)) + Power(ln((chi*u1)/t1),2)/2.;
dbl c4 = (8*m2*q2)/(t1*u1) - (8*q2*s)/Power(t1 + u1,2);
r += c4*v4;
dbl v5 = Li2(-chi) + (-2*Li2(-(chi/chiq)) - 2*Li2(-(chi*chiq)) - 2*(ln(chi/chiq)*ln((chi + chiq)/chiq) + ln(chi*chiq)*ln(1 + chi*chiq)) + ln(chi)*(2*ln(1 + chi) + ln(-(t1/m2)) + ln(-(u1/m2))))/2.;
dbl c5 = ((-16*m2*q2)/(t1*u1) + (32*Power(m2,2)*q2)/(s*t1*u1) + (8*q2*(q2 - t1 - u1))/Power(t1 + u1,2))/beta;
r += c5*v5;
dbl v6 = Li2(chi) - Li2(1 - Power(chi,2))/2. + ln(1 - chi)*ln(chi);
dbl c6 = ((32*Power(m2,2)*q2)/(s*t1*u1) + (16*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + 16*m2*q2*(-(1/(t1*u1)) - 2/Power(t1 + u1,2)))/beta;
r += c6*v6;
dbl v7 = Power(ln(-(t1/m2)),2) + Power(ln(-(u1/m2)),2);
dbl c7 = (-8*m2*q2)/Power(t1 + u1,2) + (4*q2*(q2 - t1 - u1))/Power(t1 + u1,2);
r += c7*v7;
dbl v8 = ln(-(t1/m2))*ln(-(u1/m2));
dbl c8 = (8*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + 16*m2*q2*(-(1/(t1*u1)) + Power(t1 + u1,-2));
r += c8*v8;
dbl v9 = ln(-(t1/m2));
dbl c9 = (2*q2)/u1 - (4*q2*Power(t1,2)*(Power(t1,2) + (q2 + t1)*u1))/((m2 + t1)*(q2 + t1)*u1*Power(t1 + u1,2)) - (2*q2*(q2 - t1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/((-4*m2*q2 + Power(q2 - t1,2))*(q2 + t1)*u1*Power(t1 + u1,2));
r += c9*v9;
dbl v10 = ln(-(u1/m2));
dbl c10 = (2*q2)/t1 - (4*q2*Power(u1,2)*(q2*t1 + u1*(t1 + u1)))/(t1*(m2 + u1)*(q2 + u1)*Power(t1 + u1,2)) - (2*q2*(q2 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*(q2 + u1)*Power(t1 + u1,2));
r += c10*v10;
dbl v11 = Power(ln(chi),2);
dbl c11 = (-10*m2*q2)/(t1*u1) + (10*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + ((-16*Power(m2,2)*q2)/(s*t1*u1) - (10*q2*s)/Power(t1 + u1,2) + 8*m2*q2*(1/(t1*u1) + 3/Power(t1 + u1,2)))/beta;
r += c11*v11;
dbl v12 = ln(chi);
dbl c12 = beta*((-2*q2*s)/(t1*u1) - (2*q2*Power(s,2)*Power(t1 - u1,2))/((4*m2 - s)*t1*u1*Power(t1 + u1,2)));
r += c12*v12;
dbl v13 = Power(ln(chiq),2);
dbl c13 = (-6*q2*s)/Power(t1 + u1,2) + 2*m2*q2*(5/(t1*u1) - 4/Power(t1 + u1,2)) + ((-8*m2*q2)/(t1*u1) + (16*Power(m2,2)*q2)/(s*t1*u1) + (4*q2*(q2 - t1 - u1))/Power(t1 + u1,2))/beta;
r += c13*v13;
dbl v14 = ln(chiq);
dbl c14 = -((betaq*q2*(-2*q2 + t1 + u1))/(t1*u1)) - (betaq*q2*(q2 - t1)*Power(q2*(-t1 + u1) + t1*(t1 + u1),2))/((-4*m2*q2 + Power(q2 - t1,2))*t1*u1*Power(t1 + u1,2)) - (betaq*q2*(q2 - u1)*Power(q2*(t1 - u1) + u1*(t1 + u1),2))/(t1*(-4*m2*q2 + Power(q2 - u1,2))*u1*Power(t1 + u1,2));
r += c14*v14;
dbl v15 = zeta2;
dbl c15 = (-8*q2*s)/Power(t1 + u1,2) + 8*m2*q2*(3/(t1*u1) - 4/Power(t1 + u1,2)) + ((48*Power(m2,2)*q2)/(s*t1*u1) + (28*q2*(q2 - t1 - u1))/Power(t1 + u1,2) + 8*m2*q2*(-3/(t1*u1) - 8/Power(t1 + u1,2)))/beta;
r += c15*v15;
