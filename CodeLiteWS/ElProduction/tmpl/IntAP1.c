dbl v0 = Log(Power(s4,2)/(m2*(m2 + s4)));
dbl c0 = ((Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*(2*(sp + t1) + u1)*(2*m2*Power(sp,2) + 2*q2*t1*(sp + t1) - sp*t1*u1))/(2.*sp*Power(t1,2)*Power(sp + t1,2)*Power(u1,2));
r += c0*v0;
dbl v1 = Log(((m2 + s4)*Power(t1,2)*Power(u1,2))/(Power(sp + t1,2)*(q2*s4*t1 + m2*Power(sp + u1,2))));
dbl c1 = (q2*(-2*m2*(sp + t1)*(2*Power(sp,3) + sp*Power(u1,2) - t1*Power(u1,2) + 2*Power(sp,2)*(t1 + u1)) + t1*(-2*q2*(sp + t1)*(2*Power(sp,2) + 2*Power(t1,2) + 2*t1*u1 + Power(u1,2) + 2*sp*(2*t1 + u1)) + u1*(4*Power(sp,3) + 2*Power(t1,2)*u1 + 4*Power(sp,2)*(2*t1 + u1) + sp*(4*Power(t1,2) + 6*t1*u1 + Power(u1,2))))))/(Power(sp,2)*t1*Power(u1,4));
r += c1*v1;
dbl v2 = Log((2*m2*(sp + u1) + s4*(-q2 + sp + u1 - Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1))))/(2*m2*(sp + u1) + s4*(-q2 + sp + u1 + Sqrt(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1)))));
dbl c2 = -((q2*(Power(q2,5)*(sp + 2*t1) - 16*Power(m2,3)*q2*(2*q2*(sp + 2*t1) - sp*u1) - Power(q2,4)*(5*Power(sp,2) + 4*sp*(5*t1 + u1) + t1*(20*t1 + 7*u1)) - (sp + u1)*(Power(sp,5) + 2*Power(t1,2)*Power(u1,3) + 2*sp*t1*Power(u1,2)*(5*t1 + 2*u1) + Power(sp,4)*(6*t1 + 4*u1) + 2*Power(sp,2)*u1*(10*Power(t1,2) + 10*t1*u1 + Power(u1,2)) + Power(sp,3)*(6*Power(t1,2) + 22*t1*u1 + 5*Power(u1,2))) + Power(q2,3)*(10*Power(sp,3) + Power(sp,2)*(54*t1 + 17*u1) + sp*(102*Power(t1,2) + 61*t1*u1 + 6*Power(u1,2)) + t1*(68*Power(t1,2) + 50*t1*u1 + 9*Power(u1,2))) - Power(q2,2)*(10*Power(sp,4) + Power(sp,3)*(62*t1 + 27*u1) + Power(sp,2)*(142*Power(t1,2) + 127*t1*u1 + 21*Power(u1,2)) + 5*t1*(16*Power(t1,3) + 18*Power(t1,2)*u1 + 8*t1*Power(u1,2) + Power(u1,3)) + 2*sp*(80*Power(t1,3) + 95*Power(t1,2)*u1 + 33*t1*Power(u1,2) + 2*Power(u1,3))) + q2*(5*Power(sp,5) + Power(sp,4)*(32*t1 + 19*u1) + t1*Power(u1,2)*(22*Power(t1,2) + 12*t1*u1 + Power(u1,2)) + Power(sp,3)*(66*Power(t1,2) + 101*t1*u1 + 24*Power(u1,2)) + sp*u1*(90*Power(t1,3) + 106*Power(t1,2)*u1 + 29*t1*Power(u1,2) + Power(u1,3)) + Power(sp,2)*(44*Power(t1,3) + 166*Power(t1,2)*u1 + 97*t1*Power(u1,2) + 11*Power(u1,3))) + 4*Power(m2,2)*(8*Power(q2,3)*(sp + 2*t1) - Power(q2,2)*(14*Power(sp,2) + 56*sp*t1 + 56*Power(t1,2) + 13*sp*u1 + 18*t1*u1) - sp*u1*(4*Power(sp,2) + 5*sp*u1 + Power(u1,2)) + 2*q2*(3*Power(sp,3) + 3*t1*Power(u1,2) + sp*u1*(17*t1 + 4*u1) + Power(sp,2)*(6*t1 + 8*u1))) - 2*m2*(5*Power(q2,4)*(sp + 2*t1) - Power(q2,3)*(17*Power(sp,2) + 68*sp*t1 + 68*Power(t1,2) + 14*sp*u1 + 23*t1*u1) + (sp + u1)*(2*Power(sp,4) + t1*Power(u1,3) + 2*sp*Power(u1,2)*(3*t1 + u1) + 2*Power(sp,3)*(2*t1 + 5*u1) + 2*Power(sp,2)*u1*(9*t1 + 5*u1)) - q2*(11*Power(sp,4) + t1*Power(u1,2)*(22*t1 + 7*u1) + Power(sp,3)*(48*t1 + 37*u1) + 2*sp*u1*(53*Power(t1,2) + 38*t1*u1 + 4*Power(u1,2)) + 2*Power(sp,2)*(24*Power(t1,2) + 62*t1*u1 + 17*Power(u1,2))) + Power(q2,2)*(21*Power(sp,3) + 3*Power(sp,2)*(34*t1 + 13*u1) + sp*(180*Power(t1,2) + 127*t1*u1 + 15*Power(u1,2)) + t1*(120*Power(t1,2) + 88*t1*u1 + 19*Power(u1,2))))))/(Power(sp,2)*u1*Power(-4*q2*(m2 + t1) + Power(-q2 + sp + u1,2),2.5)));
r += c2*v2;
dbl v3 = 1;
dbl c3 = (32*Power(m2,5)*Power(q2,2)*sp*(sp + u1)*(4*q2*t1*Power(sp + t1,3)*Power(2*sp + u1,2)*(sp + t1 + u1) + Power(sp,2)*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*Power(u1,2)*(sp + u1)*(2*sp + 2*t1 + u1)) - 16*Power(m2,4)*q2*(Power(sp,3)*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*Power(u1,2)*Power(sp + u1,4)*(2*sp + 2*t1 + u1) - 4*Power(q2,3)*t1*Power(sp + t1,3)*(-4*Power(sp,5) + 12*Power(sp,4)*(t1 - u1) + Power(sp,3)*(32*Power(t1,2) + 32*t1*u1 - 13*Power(u1,2)) + t1*Power(u1,2)*(6*Power(t1,2) + 7*t1*u1 + Power(u1,2)) + Power(sp,2)*(16*Power(t1,3) + 56*Power(t1,2)*u1 + 29*t1*Power(u1,2) - 6*Power(u1,3)) + sp*u1*(16*Power(t1,3) + 32*Power(t1,2)*u1 + 10*t1*Power(u1,2) - Power(u1,3))) + q2*sp*(sp + u1)*(16*Power(sp,8)*t1 + 6*Power(t1,4)*Power(u1,4)*(t1 + u1) + 8*Power(sp,7)*(8*Power(t1,2) + 8*t1*u1 - Power(u1,2)) + 2*sp*Power(t1,3)*Power(u1,3)*(12*Power(t1,2) + 25*t1*u1 + 9*Power(u1,2)) + 4*Power(sp,6)*(24*Power(t1,3) + 60*Power(t1,2)*u1 + 16*t1*Power(u1,2) - 5*Power(u1,3)) + 4*Power(sp,2)*Power(t1,2)*Power(u1,2)*(13*Power(t1,3) + 32*Power(t1,2)*u1 + 21*t1*Power(u1,2) + 2*Power(u1,3)) + 4*Power(sp,5)*(16*Power(t1,4) + 84*Power(t1,3)*u1 + 71*Power(t1,2)*Power(u1,2) + t1*Power(u1,3) - 4*Power(u1,4)) + Power(sp,3)*t1*u1*(48*Power(t1,4) + 232*Power(t1,3)*u1 + 216*Power(t1,2)*Power(u1,2) + 38*t1*Power(u1,3) - 3*Power(u1,4)) + Power(sp,4)*(16*Power(t1,5) + 208*Power(t1,4)*u1 + 392*Power(t1,3)*Power(u1,2) + 138*Power(t1,2)*Power(u1,3) - 15*t1*Power(u1,4) - 4*Power(u1,5))) - Power(q2,2)*(64*Power(sp,9)*t1 + 4*Power(t1,5)*Power(u1,4)*(t1 + u1) + Power(sp,8)*(352*Power(t1,2) + 256*t1*u1 - 2*Power(u1,2)) + 4*sp*Power(t1,4)*Power(u1,3)*(3*Power(t1,2) + 12*t1*u1 + 7*Power(u1,2)) + Power(sp,7)*(768*Power(t1,3) + 1216*Power(t1,2)*u1 + 402*t1*Power(u1,2) - 5*Power(u1,3)) + 4*Power(sp,2)*Power(t1,3)*Power(u1,2)*(20*Power(t1,3) + 58*Power(t1,2)*u1 + 58*t1*Power(u1,2) + 15*Power(u1,3)) + 2*Power(sp,6)*(416*Power(t1,4) + 1136*Power(t1,3)*u1 + 832*Power(t1,2)*Power(u1,2) + 153*t1*Power(u1,3) - 2*Power(u1,4)) + 4*Power(sp,3)*Power(t1,2)*u1*(40*Power(t1,4) + 174*Power(t1,3)*u1 + 234*Power(t1,2)*Power(u1,2) + 113*t1*Power(u1,3) + 13*Power(u1,4)) + Power(sp,5)*(448*Power(t1,5) + 2080*Power(t1,4)*u1 + 2652*Power(t1,3)*Power(u1,2) + 1122*Power(t1,2)*Power(u1,3) + 112*t1*Power(u1,4) - Power(u1,5)) + 8*Power(sp,4)*t1*(12*Power(t1,5) + 116*Power(t1,4)*u1 + 251*Power(t1,3)*Power(u1,2) + 191*Power(t1,2)*Power(u1,3) + 47*t1*Power(u1,4) + 2*Power(u1,5)))) + q2*Power(t1,2)*Power(sp + t1 + u1,2)*(4*Power(q2,6)*t1*Power(sp + t1,3)*(8*Power(sp,2) + 8*Power(t1,2) + 8*t1*u1 + Power(u1,2) + 8*sp*(2*t1 + u1)) - 2*Power(q2,5)*(sp + t1)*(64*Power(sp,5)*t1 + 2*Power(sp,4)*(192*Power(t1,2) + 72*t1*u1 - Power(u1,2)) + Power(sp,3)*(896*Power(t1,3) + 624*Power(t1,2)*u1 + 78*t1*Power(u1,2) - Power(u1,3)) + Power(t1,3)*(128*Power(t1,3) + 192*Power(t1,2)*u1 + 75*t1*Power(u1,2) + 5*Power(u1,3)) + Power(sp,2)*t1*(1024*Power(t1,3) + 1008*Power(t1,2)*u1 + 235*t1*Power(u1,2) + 6*Power(u1,3)) + sp*Power(t1,2)*(576*Power(t1,3) + 720*Power(t1,2)*u1 + 230*t1*Power(u1,2) + 11*Power(u1,3))) - Power(sp,2)*Power(u1,2)*Power(sp + u1,2)*(Power(sp,5)*(-4*t1 + 2*u1) + 2*Power(t1,2)*Power(u1,2)*(-Power(t1,2) + t1*u1 + Power(u1,2)) + Power(sp,4)*(-12*Power(t1,2) - 2*t1*u1 + 5*Power(u1,2)) - 4*Power(sp,3)*(3*Power(t1,3) + 3*Power(t1,2)*u1 - 2*t1*Power(u1,2) - Power(u1,3)) + 2*sp*t1*u1*(-2*Power(t1,3) - Power(t1,2)*u1 + 4*t1*Power(u1,2) + Power(u1,3)) + Power(sp,2)*(-4*Power(t1,4) - 12*Power(t1,3)*u1 + 4*Power(t1,2)*Power(u1,2) + 8*t1*Power(u1,3) + Power(u1,4))) + Power(q2,4)*(192*Power(sp,7)*t1 + 16*Power(sp,6)*(92*Power(t1,2) + 44*t1*u1 - Power(u1,2)) + Power(sp,5)*(4992*Power(t1,3) + 4480*Power(t1,2)*u1 + 732*t1*Power(u1,2) - 26*Power(u1,3)) + Power(sp,4)*(9600*Power(t1,4) + 11904*Power(t1,3)*u1 + 3868*Power(t1,2)*Power(u1,2) + 226*t1*Power(u1,3) - 9*Power(u1,4)) + 2*Power(sp,3)*t1*(5600*Power(t1,4) + 8448*Power(t1,3)*u1 + 3862*Power(t1,2)*Power(u1,2) + 500*t1*Power(u1,3) + Power(u1,4)) + 4*Power(t1,4)*(128*Power(t1,4) + 256*Power(t1,3)*u1 + 172*Power(t1,2)*Power(u1,2) + 43*t1*Power(u1,3) + 3*Power(u1,4)) + 4*sp*Power(t1,3)*(768*Power(t1,4) + 1440*Power(t1,3)*u1 + 906*Power(t1,2)*Power(u1,2) + 202*t1*Power(u1,3) + 9*Power(u1,4)) + 2*Power(sp,2)*Power(t1,2)*(3936*Power(t1,4) + 6752*Power(t1,3)*u1 + 3770*Power(t1,2)*Power(u1,2) + 692*t1*Power(u1,3) + 17*Power(u1,4))) - 2*q2*sp*u1*(2*Power(sp,8)*(8*t1 - u1) + 4*Power(t1,4)*Power(u1,4)*(2*t1 + u1) + Power(sp,7)*(64*Power(t1,2) + 76*t1*u1 - 13*Power(u1,2)) + Power(sp,6)*(96*Power(t1,3) + 313*Power(t1,2)*u1 + 113*t1*Power(u1,2) - 30*Power(u1,3)) + sp*Power(t1,2)*Power(u1,3)*(31*Power(t1,3) + 35*Power(t1,2)*u1 - 2*t1*Power(u1,2) - 4*Power(u1,3)) + Power(sp,5)*(64*Power(t1,4) + 465*Power(t1,3)*u1 + 499*Power(t1,2)*Power(u1,2) + 42*t1*Power(u1,3) - 32*Power(u1,4)) + Power(sp,2)*t1*Power(u1,2)*(90*Power(t1,4) + 185*Power(t1,3)*u1 + 56*Power(t1,2)*Power(u1,2) - 22*t1*Power(u1,3) - 5*Power(u1,4)) + Power(sp,4)*(16*Power(t1,5) + 305*Power(t1,4)*u1 + 694*Power(t1,3)*Power(u1,2) + 295*Power(t1,2)*Power(u1,3) - 36*t1*Power(u1,4) - 16*Power(u1,5)) + 3*Power(sp,3)*u1*(25*Power(t1,5) + 137*Power(t1,4)*u1 + 125*Power(t1,3)*Power(u1,2) + 9*Power(t1,2)*Power(u1,3) - 10*t1*Power(u1,4) - Power(u1,5))) - 2*Power(q2,3)*(64*Power(sp,8)*t1 + 4*Power(sp,7)*(112*Power(t1,2) + 88*t1*u1 - 3*Power(u1,2)) + 2*Power(sp,6)*(640*Power(t1,3) + 1120*Power(t1,2)*u1 + 292*t1*Power(u1,2) - 17*Power(u1,3)) + Power(t1,4)*Power(u1,2)*(48*Power(t1,3) + 72*Power(t1,2)*u1 + 35*t1*Power(u1,2) + 5*Power(u1,3)) + 2*Power(sp,5)*(960*Power(t1,4) + 2976*Power(t1,3)*u1 + 1675*Power(t1,2)*Power(u1,2) + 173*t1*Power(u1,3) - 15*Power(u1,4)) + sp*Power(t1,3)*u1*(512*Power(t1,4) + 1152*Power(t1,3)*u1 + 814*Power(t1,2)*Power(u1,2) + 203*t1*Power(u1,3) + 12*Power(u1,4)) + Power(sp,3)*t1*(704*Power(t1,5) + 6752*Power(t1,4)*u1 + 8294*Power(t1,3)*Power(u1,2) + 3186*Power(t1,2)*Power(u1,3) + 309*t1*Power(u1,4) - 8*Power(u1,5)) + 2*Power(sp,4)*(800*Power(t1,5) + 4224*Power(t1,4)*u1 + 3723*Power(t1,3)*Power(u1,2) + 922*Power(t1,2)*Power(u1,3) + 22*t1*Power(u1,4) - 4*Power(u1,5)) + Power(sp,2)*Power(t1,2)*(128*Power(t1,5) + 2880*Power(t1,4)*u1 + 4706*Power(t1,3)*Power(u1,2) + 2464*Power(t1,2)*Power(u1,3) + 401*t1*Power(u1,4) + 5*Power(u1,5))) + 2*Power(q2,2)*(16*Power(sp,9)*t1 + 2*Power(t1,4)*Power(u1,4)*Power(2*t1 + u1,2) + 8*Power(sp,8)*(10*Power(t1,2) + 18*t1*u1 - Power(u1,2)) + 2*Power(sp,7)*(80*Power(t1,3) + 384*Power(t1,2)*u1 + 183*t1*Power(u1,2) - 17*Power(u1,3)) + 2*sp*Power(t1,3)*Power(u1,3)*(36*Power(t1,3) + 53*Power(t1,2)*u1 + 22*t1*Power(u1,2) + 2*Power(u1,3)) + Power(sp,6)*(160*Power(t1,4) + 1632*Power(t1,3)*u1 + 1934*Power(t1,2)*Power(u1,2) + 346*t1*Power(u1,3) - 51*Power(u1,4)) + Power(sp,2)*Power(t1,2)*Power(u1,2)*(344*Power(t1,4) + 802*Power(t1,3)*u1 + 495*Power(t1,2)*Power(u1,2) + 77*t1*Power(u1,3) - 4*Power(u1,4)) + Power(sp,5)*(80*Power(t1,5) + 1728*Power(t1,4)*u1 + 3862*Power(t1,3)*Power(u1,2) + 1842*Power(t1,2)*Power(u1,3) + 85*t1*Power(u1,4) - 32*Power(u1,5)) + Power(sp,3)*t1*u1*(192*Power(t1,5) + 1812*Power(t1,4)*u1 + 2438*Power(t1,3)*Power(u1,2) + 907*Power(t1,2)*Power(u1,3) + 42*t1*Power(u1,4) - 10*Power(u1,5)) + Power(sp,4)*(16*Power(t1,6) + 912*Power(t1,5)*u1 + 3770*Power(t1,4)*Power(u1,2) + 3170*Power(t1,3)*Power(u1,3) + 643*Power(t1,2)*Power(u1,4) - 33*t1*Power(u1,5) - 7*Power(u1,6)))) + 2*Power(m2,3)*(Power(sp,3)*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*Power(u1,2)*Power(sp + u1,6)*(2*sp + 2*t1 + u1) + 4*Power(q2,5)*t1*Power(sp + t1,3)*(4*Power(sp,5) + 12*Power(sp,4)*(-5*t1 + u1) + Power(sp,3)*(-64*Power(t1,2) - 152*t1*u1 + 13*Power(u1,2)) + Power(sp,2)*(128*Power(t1,3) - 96*Power(t1,2)*u1 - 131*t1*Power(u1,2) + 6*Power(u1,3)) + 4*t1*(16*Power(t1,4) + 32*Power(t1,3)*u1 + 12*Power(t1,2)*Power(u1,2) - 5*t1*Power(u1,3) - Power(u1,4)) + sp*(192*Power(t1,4) + 192*Power(t1,3)*u1 - 56*Power(t1,2)*Power(u1,2) - 43*t1*Power(u1,3) + Power(u1,4))) + 4*q2*sp*Power(sp + u1,2)*(4*Power(sp,9)*t1 + 2*Power(t1,4)*Power(u1,5)*(t1 + u1) + 2*Power(sp,8)*(8*Power(t1,2) + 10*t1*u1 - 3*Power(u1,2)) + sp*Power(t1,3)*Power(u1,4)*(11*Power(t1,2) + 22*t1*u1 + 7*Power(u1,2)) + Power(sp,2)*Power(t1,3)*Power(u1,3)*(19*Power(t1,2) + 51*t1*u1 + 30*Power(u1,2)) + Power(sp,7)*(24*Power(t1,3) + 76*Power(t1,2)*u1 + 15*t1*Power(u1,2) - 21*Power(u1,3)) + Power(sp,6)*(16*Power(t1,4) + 108*Power(t1,3)*u1 + 100*Power(t1,2)*Power(u1,2) - 34*t1*Power(u1,3) - 27*Power(u1,4)) + Power(sp,3)*t1*Power(u1,2)*(25*Power(t1,4) + 73*Power(t1,3)*u1 + 45*Power(t1,2)*Power(u1,2) - 10*t1*Power(u1,3) - 4*Power(u1,4)) + Power(sp,5)*(4*Power(t1,5) + 68*Power(t1,4)*u1 + 154*Power(t1,3)*Power(u1,2) + 23*Power(t1,2)*Power(u1,3) - 57*t1*Power(u1,4) - 15*Power(u1,5)) + Power(sp,4)*u1*(16*Power(t1,5) + 100*Power(t1,4)*u1 + 89*Power(t1,3)*Power(u1,2) - 27*Power(t1,2)*Power(u1,3) - 28*t1*Power(u1,4) - 3*Power(u1,5))) + Power(q2,4)*(-192*Power(sp,9)*t1 + 2*Power(sp,8)*u1*(-384*t1 + u1) + 16*Power(t1,5)*Power(u1,2)*(40*Power(t1,3) + 72*Power(t1,2)*u1 + 35*t1*Power(u1,2) + 3*Power(u1,3)) + Power(sp,7)*(4480*Power(t1,3) + 64*Power(t1,2)*u1 - 1226*t1*Power(u1,2) + 5*Power(u1,3)) + 2*Power(sp,6)*(7808*Power(t1,4) + 6816*Power(t1,3)*u1 - 44*Power(t1,2)*Power(u1,2) - 481*t1*Power(u1,3) + 2*Power(u1,4)) + 16*sp*Power(t1,4)*u1*(80*Power(t1,4) + 380*Power(t1,3)*u1 + 431*Power(t1,2)*Power(u1,2) + 147*t1*Power(u1,3) + 6*Power(u1,4)) + 32*Power(sp,2)*Power(t1,4)*(48*Power(t1,4) + 336*Power(t1,3)*u1 + 711*Power(t1,2)*Power(u1,2) + 505*t1*Power(u1,3) + 105*Power(u1,4)) + 2*Power(sp,3)*Power(t1,2)*(4352*Power(t1,5) + 16704*Power(t1,4)*u1 + 20872*Power(t1,3)*Power(u1,2) + 8864*Power(t1,2)*Power(u1,3) + 778*t1*Power(u1,4) - 51*Power(u1,5)) + 2*Power(sp,4)*t1*(10112*Power(t1,5) + 25440*Power(t1,4)*u1 + 19360*Power(t1,3)*Power(u1,2) + 3932*Power(t1,2)*Power(u1,3) - 186*t1*Power(u1,4) - 27*Power(u1,5)) + Power(sp,5)*(24384*Power(t1,5) + 39744*Power(t1,4)*u1 + 15428*Power(t1,3)*Power(u1,2) - 414*Power(t1,2)*Power(u1,3) - 366*t1*Power(u1,4) + Power(u1,5))) - 2*Power(q2,2)*(sp + u1)*(96*Power(sp,10)*t1 + 4*Power(t1,5)*Power(u1,5)*(t1 + u1) + Power(sp,9)*(512*Power(t1,2) + 480*t1*u1 - 22*Power(u1,2)) + 4*sp*Power(t1,4)*Power(u1,4)*(14*Power(t1,2) + 30*t1*u1 + 13*Power(u1,2)) + Power(sp,8)*(1088*Power(t1,3) + 2272*Power(t1,2)*u1 + 870*t1*Power(u1,2) - 77*Power(u1,3)) + 12*Power(sp,2)*Power(t1,3)*Power(u1,3)*(8*Power(t1,3) + 45*Power(t1,2)*u1 + 47*t1*Power(u1,2) + 11*Power(u1,3)) + Power(sp,7)*(1152*Power(t1,4) + 4256*Power(t1,3)*u1 + 3864*Power(t1,2)*Power(u1,2) + 740*t1*Power(u1,3) - 99*Power(u1,4)) + 2*Power(sp,3)*Power(t1,2)*Power(u1,2)*(136*Power(t1,4) + 546*Power(t1,3)*u1 + 892*Power(t1,2)*Power(u1,2) + 446*t1*Power(u1,3) + 45*Power(u1,4)) + Power(sp,6)*(608*Power(t1,5) + 3936*Power(t1,4)*u1 + 6420*Power(t1,3)*Power(u1,2) + 3382*Power(t1,2)*Power(u1,3) + 324*t1*Power(u1,4) - 55*Power(u1,5)) + 2*Power(sp,4)*t1*u1*(160*Power(t1,5) + 964*Power(t1,4)*u1 + 1774*Power(t1,3)*Power(u1,2) + 1316*Power(t1,2)*Power(u1,3) + 287*t1*Power(u1,4) + 7*Power(u1,5)) + Power(sp,5)*(128*Power(t1,6) + 1792*Power(t1,5)*u1 + 5104*Power(t1,4)*Power(u1,2) + 5120*Power(t1,3)*Power(u1,3) + 1762*Power(t1,2)*Power(u1,4) + 84*t1*Power(u1,5) - 11*Power(u1,6))) + 4*Power(q2,3)*(88*Power(sp,10)*t1 + Power(sp,9)*(544*Power(t1,2) + 440*t1*u1 - 6*Power(u1,2)) + 2*Power(t1,5)*Power(u1,4)*(6*Power(t1,2) + 11*t1*u1 + 5*Power(u1,2)) + Power(sp,8)*(1424*Power(t1,3) + 2280*Power(t1,2)*u1 + 908*t1*Power(u1,2) - 21*Power(u1,3)) + sp*Power(t1,4)*Power(u1,3)*(-136*Power(t1,3) - 88*Power(t1,2)*u1 + 91*t1*Power(u1,2) + 53*Power(u1,3)) + Power(sp,7)*(2016*Power(t1,4) + 4744*Power(t1,3)*u1 + 4016*Power(t1,2)*Power(u1,2) + 986*t1*Power(u1,3) - 27*Power(u1,4)) + Power(sp,3)*Power(t1,2)*Power(u1,2)*(-520*Power(t1,4) - 524*Power(t1,3)*u1 + 811*Power(t1,2)*Power(u1,2) + 667*t1*Power(u1,3) + 81*Power(u1,4)) + Power(sp,2)*Power(t1,3)*Power(u1,2)*(-204*Power(t1,4) - 704*Power(t1,3)*u1 - 161*Power(t1,2)*Power(u1,2) + 322*t1*Power(u1,3) + 100*Power(u1,4)) + Power(sp,6)*(1624*Power(t1,5) + 4952*Power(t1,4)*u1 + 6620*Power(t1,3)*Power(u1,2) + 3784*Power(t1,2)*Power(u1,3) + 593*t1*Power(u1,4) - 15*Power(u1,5)) + Power(sp,5)*(704*Power(t1,6) + 2592*Power(t1,5)*u1 + 4744*Power(t1,4)*Power(u1,2) + 4992*Power(t1,3)*Power(u1,3) + 2023*Power(t1,2)*Power(u1,4) + 188*t1*Power(u1,5) - 3*Power(u1,6)) + Power(sp,4)*t1*(128*Power(t1,6) + 544*Power(t1,5)*u1 + 910*Power(t1,4)*Power(u1,2) + 2260*Power(t1,3)*Power(u1,3) + 2273*Power(t1,2)*Power(u1,4) + 600*t1*Power(u1,5) + 25*Power(u1,6)))) - m2*t1*(sp + t1 + u1)*(Power(sp,2)*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*Power(u1,3)*Power(sp + u1,6)*(2*sp + 2*t1 + u1) - 4*Power(q2,7)*Power(t1,2)*Power(sp + t1,3)*(8*Power(sp,2) + 8*Power(t1,2) + 8*t1*u1 + Power(u1,2) + 8*sp*(2*t1 + u1)) + 2*Power(q2,6)*t1*(sp + t1)*(-32*Power(sp,6) + 16*Power(sp,5)*(4*t1 - 5*u1) + 2*Power(sp,4)*(416*Power(t1,2) + 64*t1*u1 - 35*Power(u1,2)) + Power(sp,3)*(2048*Power(t1,3) + 1312*Power(t1,2)*u1 + 22*t1*Power(u1,2) - 23*Power(u1,3)) + Power(sp,2)*(2272*Power(t1,4) + 2368*Power(t1,3)*u1 + 460*Power(t1,2)*Power(u1,2) - 36*t1*Power(u1,3) - 2*Power(u1,4)) + 2*sp*t1*(608*Power(t1,4) + 856*Power(t1,3)*u1 + 288*Power(t1,2)*Power(u1,2) - 3*t1*Power(u1,3) - 2*Power(u1,4)) + 2*Power(t1,2)*(128*Power(t1,4) + 224*Power(t1,3)*u1 + 104*Power(t1,2)*Power(u1,2) + 4*t1*Power(u1,3) - Power(u1,4))) + q2*sp*u1*Power(sp + u1,2)*(8*Power(sp,8)*(4*t1 - u1) + 8*Power(t1,5)*Power(u1,4) - 2*Power(t1,3)*Power(u1,6) + 8*Power(sp,7)*(16*Power(t1,2) + 14*t1*u1 - 5*Power(u1,2)) + 6*Power(sp,6)*(32*Power(t1,3) + 79*Power(t1,2)*u1 + 17*t1*Power(u1,2) - 13*Power(u1,3)) + 2*sp*Power(t1,2)*Power(u1,3)*(12*Power(t1,3) + 2*Power(t1,2)*u1 - 17*t1*Power(u1,2) - 6*Power(u1,3)) + Power(sp,5)*(128*Power(t1,4) + 678*Power(t1,3)*u1 + 600*Power(t1,2)*Power(u1,2) - 59*t1*Power(u1,3) - 74*Power(u1,4)) + 2*Power(sp,2)*t1*Power(u1,2)*(54*Power(t1,4) + 76*Power(t1,3)*u1 - 29*Power(t1,2)*Power(u1,2) - 43*t1*Power(u1,3) - 6*Power(u1,4)) + 2*Power(sp,4)*(16*Power(t1,5) + 211*Power(t1,4)*u1 + 422*Power(t1,3)*Power(u1,2) + 99*Power(t1,2)*Power(u1,3) - 74*t1*Power(u1,4) - 17*Power(u1,5)) + Power(sp,3)*u1*(98*Power(t1,5) + 494*Power(t1,4)*u1 + 306*Power(t1,3)*Power(u1,2) - 130*Power(t1,2)*Power(u1,3) - 79*t1*Power(u1,4) - 6*Power(u1,5))) + Power(q2,5)*(256*Power(sp,8)*t1 + 8*Power(sp,7)*(136*Power(t1,2) + 116*t1*u1 - Power(u1,2)) - 16*Power(sp,6)*(28*Power(t1,3) - 188*Power(t1,2)*u1 - 80*t1*Power(u1,2) + Power(u1,3)) - 2*Power(sp,5)*(5568*Power(t1,4) + 1376*Power(t1,3)*u1 - 1825*Power(t1,2)*Power(u1,2) - 403*t1*Power(u1,3) + 5*Power(u1,4)) - 2*Power(sp,2)*Power(t1,2)*(12896*Power(t1,5) + 22112*Power(t1,4)*u1 + 10443*Power(t1,3)*Power(u1,2) + 363*Power(t1,2)*Power(u1,3) - 433*t1*Power(u1,4) - 17*Power(u1,5)) - 4*sp*Power(t1,3)*(2432*Power(t1,5) + 4960*Power(t1,4)*u1 + 3024*Power(t1,3)*Power(u1,2) + 352*Power(t1,2)*Power(u1,3) - 121*t1*Power(u1,4) - 8*Power(u1,5)) - 2*Power(sp,3)*t1*(18272*Power(t1,5) + 24624*Power(t1,4)*u1 + 7425*Power(t1,3)*Power(u1,2) - 892*Power(t1,2)*Power(u1,3) - 347*t1*Power(u1,4) - 5*Power(u1,5)) - 2*Power(t1,4)*(768*Power(t1,5) + 1792*Power(t1,4)*u1 + 1304*Power(t1,3)*Power(u1,2) + 228*Power(t1,2)*Power(u1,3) - 50*t1*Power(u1,4) - 5*Power(u1,5)) - Power(sp,4)*(28800*Power(t1,5) + 26112*Power(t1,4)*u1 + 1090*Power(t1,3)*Power(u1,2) - 2380*Power(t1,2)*Power(u1,3) - 205*t1*Power(u1,4) + 2*Power(u1,5))) - 2*Power(q2,2)*(32*Power(sp,11)*t1 + Power(t1,4)*Power(u1,6)*Power(2*t1 + u1,2) + 16*Power(sp,10)*(10*Power(t1,2) + 17*t1*u1 - Power(u1,2)) + 2*Power(sp,9)*(160*Power(t1,3) + 680*Power(t1,2)*u1 + 419*t1*Power(u1,2) - 43*Power(u1,3)) + sp*Power(t1,3)*Power(u1,5)*(48*Power(t1,3) + 70*Power(t1,2)*u1 + 25*t1*Power(u1,2) - Power(u1,3)) + Power(sp,8)*(320*Power(t1,4) + 2720*Power(t1,3)*u1 + 4204*Power(t1,2)*Power(u1,2) + 1265*t1*Power(u1,3) - 191*Power(u1,4)) + Power(sp,2)*Power(t1,2)*Power(u1,4)*(368*Power(t1,4) + 782*Power(t1,3)*u1 + 450*Power(t1,2)*Power(u1,2) + 42*t1*Power(u1,3) - 11*Power(u1,4)) + Power(sp,7)*(160*Power(t1,5) + 2720*Power(t1,4)*u1 + 8058*Power(t1,3)*Power(u1,2) + 6575*Power(t1,2)*Power(u1,3) + 971*t1*Power(u1,4) - 224*Power(u1,5)) + Power(sp,3)*t1*Power(u1,3)*(716*Power(t1,5) + 2808*Power(t1,4)*u1 + 2895*Power(t1,3)*Power(u1,2) + 856*Power(t1,2)*Power(u1,3) - 18*t1*Power(u1,4) - 13*Power(u1,5)) + Power(sp,6)*(32*Power(t1,6) + 1360*Power(t1,5)*u1 + 7584*Power(t1,4)*Power(u1,2) + 11950*Power(t1,3)*Power(u1,3) + 5699*Power(t1,2)*Power(u1,4) + 282*t1*Power(u1,5) - 146*Power(u1,6)) + Power(sp,5)*u1*(272*Power(t1,6) + 3524*Power(t1,5)*u1 + 10394*Power(t1,4)*Power(u1,2) + 9789*Power(t1,3)*Power(u1,3) + 2653*Power(t1,2)*Power(u1,4) - 84*t1*Power(u1,5) - 50*Power(u1,6)) + Power(sp,4)*Power(u1,2)*(648*Power(t1,6) + 4384*Power(t1,5)*u1 + 7695*Power(t1,4)*Power(u1,2) + 4310*Power(t1,3)*Power(u1,3) + 518*Power(t1,2)*Power(u1,4) - 75*t1*Power(u1,5) - 7*Power(u1,6))) - Power(q2,4)*(384*Power(sp,9)*t1 + 32*Power(sp,8)*(80*Power(t1,2) + 58*t1*u1 - Power(u1,2)) + 2*Power(sp,7)*(3776*Power(t1,3) + 5088*Power(t1,2)*u1 + 1732*t1*Power(u1,2) - 49*Power(u1,3)) + Power(sp,6)*(12800*Power(t1,4) + 22016*Power(t1,3)*u1 + 16376*Power(t1,2)*Power(u1,2) + 3206*t1*Power(u1,3) - 109*Power(u1,4)) + 2*Power(t1,4)*Power(u1,2)*(160*Power(t1,4) + 376*Power(t1,3)*u1 + 280*Power(t1,2)*Power(u1,2) + 72*t1*Power(u1,3) + 5*Power(u1,4)) + 4*Power(sp,5)*(3360*Power(t1,5) + 5472*Power(t1,4)*u1 + 7008*Power(t1,3)*Power(u1,2) + 3441*Power(t1,2)*Power(u1,3) + 372*t1*Power(u1,4) - 13*Power(u1,5)) + 2*sp*Power(t1,3)*u1*(-768*Power(t1,5) - 496*Power(t1,4)*u1 + 1316*Power(t1,3)*Power(u1,2) + 1438*Power(t1,2)*Power(u1,3) + 391*t1*Power(u1,4) + 15*Power(u1,5)) + 2*Power(sp,3)*Power(t1,2)*(1600*Power(t1,5) - 3488*Power(t1,4)*u1 + 148*Power(t1,3)*Power(u1,2) + 7904*Power(t1,2)*Power(u1,3) + 4517*t1*Power(u1,4) + 567*Power(u1,5)) + Power(sp,4)*(8704*Power(t1,6) + 5952*Power(t1,5)*u1 + 19016*Power(t1,4)*Power(u1,2) + 21316*Power(t1,3)*Power(u1,3) + 6080*Power(t1,2)*Power(u1,4) + 274*t1*Power(u1,5) - 9*Power(u1,6)) + 2*Power(sp,2)*Power(t1,2)*(256*Power(t1,6) - 3136*Power(t1,5)*u1 - 2440*Power(t1,4)*Power(u1,2) + 3416*Power(t1,3)*Power(u1,3) + 3439*Power(t1,2)*Power(u1,4) + 734*t1*Power(u1,5) + 14*Power(u1,6))) + 2*Power(q2,3)*(128*Power(sp,10)*t1 + 8*Power(sp,9)*(110*Power(t1,2) + 100*t1*u1 - 3*Power(u1,2)) + 4*Power(sp,8)*(620*Power(t1,3) + 1212*Power(t1,2)*u1 + 478*t1*Power(u1,2) - 25*Power(u1,3)) + Power(t1,4)*Power(u1,4)*(24*Power(t1,3) + 48*Power(t1,2)*u1 + 28*t1*Power(u1,2) + 3*Power(u1,3)) + 2*Power(sp,7)*(1840*Power(t1,4) + 6048*Power(t1,3)*u1 + 5254*Power(t1,2)*Power(u1,2) + 1153*t1*Power(u1,3) - 82*Power(u1,4)) + sp*Power(t1,3)*Power(u1,3)*(456*Power(t1,4) + 1080*Power(t1,3)*u1 + 808*Power(t1,2)*Power(u1,2) + 194*t1*Power(u1,3) + 5*Power(u1,4)) + Power(sp,6)*(3040*Power(t1,5) + 15904*Power(t1,4)*u1 + 22988*Power(t1,3)*Power(u1,2) + 11948*Power(t1,2)*Power(u1,3) + 1483*t1*Power(u1,4) - 132*Power(u1,5)) + Power(sp,2)*Power(t1,2)*Power(u1,2)*(536*Power(t1,5) + 3684*Power(t1,4)*u1 + 5499*Power(t1,3)*Power(u1,2) + 2812*Power(t1,2)*Power(u1,3) + 416*t1*Power(u1,4) - 3*Power(u1,5)) + Power(sp,5)*(1328*Power(t1,6) + 11616*Power(t1,5)*u1 + 25916*Power(t1,4)*Power(u1,2) + 23344*Power(t1,3)*Power(u1,3) + 7621*Power(t1,2)*Power(u1,4) + 453*t1*Power(u1,5) - 52*Power(u1,6)) + Power(sp,3)*t1*u1*(704*Power(t1,6) + 4768*Power(t1,5)*u1 + 12744*Power(t1,4)*Power(u1,2) + 11969*Power(t1,3)*Power(u1,3) + 3975*Power(t1,2)*Power(u1,4) + 308*t1*Power(u1,5) - 11*Power(u1,6)) + Power(sp,4)*(240*Power(t1,7) + 4464*Power(t1,6)*u1 + 15732*Power(t1,5)*Power(u1,2) + 23318*Power(t1,4)*Power(u1,3) + 13507*Power(t1,3)*Power(u1,4) + 2524*Power(t1,2)*Power(u1,5) + 25*t1*Power(u1,6) - 8*Power(u1,7)))) + Power(m2,2)*(Power(sp,2)*(Power(sp,2) + 2*sp*t1 + 2*Power(t1,2))*Power(u1,2)*Power(sp + u1,6)*(4*Power(sp,3) - t1*u1*(2*t1 + u1) + Power(sp,2)*(8*t1 + 6*u1) + 2*sp*(2*Power(t1,2) + 2*t1*u1 + Power(u1,2))) - 4*Power(q2,6)*Power(t1,2)*Power(sp + t1,3)*(-16*Power(sp,4) + 64*Power(t1,4) + 8*Power(sp,3)*(4*t1 - 5*u1) + 128*Power(t1,3)*u1 + 66*Power(t1,2)*Power(u1,2) + t1*Power(u1,3) - Power(u1,4) + 2*Power(sp,2)*(88*Power(t1,2) + 36*t1*u1 - 17*Power(u1,2)) + sp*(192*Power(t1,3) + 240*Power(t1,2)*u1 + 40*t1*Power(u1,2) - 11*Power(u1,3))) + 2*Power(q2,5)*t1*(16*Power(sp,9) + Power(sp,8)*(-304*t1 + 64*u1) - 8*Power(sp,7)*(220*Power(t1,2) + 134*t1*u1 - 13*Power(u1,2)) - 4*Power(sp,6)*(600*Power(t1,3) + 1328*Power(t1,2)*u1 + 353*t1*Power(u1,2) - 21*Power(u1,3)) + Power(sp,5)*(3408*Power(t1,4) - 6048*Power(t1,3)*u1 - 6264*Power(t1,2)*Power(u1,2) - 834*t1*Power(u1,3) + 33*Power(u1,4)) + 2*sp*Power(t1,3)*(2560*Power(t1,5) + 5696*Power(t1,4)*u1 + 3544*Power(t1,3)*Power(u1,2) + 83*Power(t1,2)*Power(u1,3) - 366*t1*Power(u1,4) - 31*Power(u1,5)) + 2*Power(sp,2)*Power(t1,2)*(7040*Power(t1,5) + 12352*Power(t1,4)*u1 + 4936*Power(t1,3)*Power(u1,2) - 1046*Power(t1,2)*Power(u1,3) - 634*t1*Power(u1,4) - 27*Power(u1,5)) + 2*Power(t1,4)*(384*Power(t1,5) + 1024*Power(t1,4)*u1 + 832*Power(t1,3)*Power(u1,2) + 128*Power(t1,2)*Power(u1,3) - 75*t1*Power(u1,4) - 11*Power(u1,5)) + Power(sp,3)*t1*(20096*Power(t1,5) + 24528*Power(t1,4)*u1 + 2008*Power(t1,3)*Power(u1,2) - 4656*Power(t1,2)*Power(u1,3) - 916*t1*Power(u1,4) - 9*Power(u1,5)) + Power(sp,4)*(14736*Power(t1,5) + 7296*Power(t1,4)*u1 - 7188*Power(t1,3)*Power(u1,2) - 3572*Power(t1,2)*Power(u1,3) - 198*t1*Power(u1,4) + 5*Power(u1,5))) + 2*q2*sp*Power(sp + u1,2)*(16*Power(sp,10)*t1 + Power(sp,9)*(80*Power(t1,2) + 96*t1*u1 - 8*Power(u1,2)) + 2*Power(t1,4)*Power(u1,5)*(2*Power(t1,2) + 8*t1*u1 + 5*Power(u1,2)) + 4*Power(sp,8)*(40*Power(t1,3) + 108*Power(t1,2)*u1 + 50*t1*Power(u1,2) - 9*Power(u1,3)) + 2*sp*Power(t1,3)*Power(u1,4)*(15*Power(t1,3) + 70*Power(t1,2)*u1 + 73*t1*Power(u1,2) + 18*Power(u1,3)) + 4*Power(sp,7)*(40*Power(t1,4) + 192*Power(t1,3)*u1 + 221*Power(t1,2)*Power(u1,2) + 45*t1*Power(u1,3) - 16*Power(u1,4)) + Power(sp,2)*Power(t1,2)*Power(u1,3)*(18*Power(t1,4) + 278*Power(t1,3)*u1 + 534*Power(t1,2)*Power(u1,2) + 264*t1*Power(u1,3) + 23*Power(u1,4)) + Power(sp,6)*(80*Power(t1,5) + 672*Power(t1,4)*u1 + 1416*Power(t1,3)*Power(u1,2) + 940*Power(t1,2)*Power(u1,3) + 63*t1*Power(u1,4) - 56*Power(u1,5)) + Power(sp,3)*t1*Power(u1,2)*(48*Power(t1,5) + 274*Power(t1,4)*u1 + 820*Power(t1,3)*Power(u1,2) + 712*Power(t1,2)*Power(u1,3) + 148*t1*Power(u1,4) + 3*Power(u1,5)) + Power(sp,5)*(16*Power(t1,6) + 288*Power(t1,5)*u1 + 1068*Power(t1,4)*Power(u1,2) + 1422*Power(t1,3)*Power(u1,3) + 658*Power(t1,2)*Power(u1,4) + 5*t1*Power(u1,5) - 24*Power(u1,6)) + Power(sp,4)*u1*(48*Power(t1,6) + 376*Power(t1,5)*u1 + 954*Power(t1,4)*Power(u1,2) + 1098*Power(t1,3)*Power(u1,3) + 375*Power(t1,2)*Power(u1,4) + 5*t1*Power(u1,5) - 4*Power(u1,6))) + Power(q2,4)*(-128*Power(sp,10)*t1 + 4*Power(sp,9)*(128*Power(t1,2) - 160*t1*u1 + Power(u1,2)) + 2*Power(sp,8)*(4160*Power(t1,3) + 1376*Power(t1,2)*u1 - 696*t1*Power(u1,2) + 7*Power(u1,3)) + 2*Power(sp,7)*(16128*Power(t1,4) + 16960*Power(t1,3)*u1 + 2646*Power(t1,2)*Power(u1,2) - 824*t1*Power(u1,3) + 9*Power(u1,4)) + 4*Power(t1,5)*Power(u1,2)*(328*Power(t1,4) + 816*Power(t1,3)*u1 + 678*Power(t1,2)*Power(u1,2) + 199*t1*Power(u1,3) + 9*Power(u1,4)) + Power(sp,6)*(63360*Power(t1,5) + 107136*Power(t1,4)*u1 + 54552*Power(t1,3)*Power(u1,2) + 4694*Power(t1,2)*Power(u1,3) - 1093*t1*Power(u1,4) + 10*Power(u1,5)) + 4*sp*Power(t1,4)*u1*(256*Power(t1,5) + 2824*Power(t1,4)*u1 + 5364*Power(t1,3)*Power(u1,2) + 3644*Power(t1,2)*Power(u1,3) + 852*t1*Power(u1,4) + 21*Power(u1,5)) + Power(sp,4)*t1*(48512*Power(t1,6) + 146112*Power(t1,5)*u1 + 183776*Power(t1,4)*Power(u1,2) + 98832*Power(t1,3)*Power(u1,3) + 18030*Power(t1,2)*Power(u1,4) + 106*t1*Power(u1,5) - 53*Power(u1,6)) + 2*Power(sp,3)*Power(t1,2)*(8960*Power(t1,6) + 34880*Power(t1,5)*u1 + 64888*Power(t1,4)*Power(u1,2) + 53870*Power(t1,3)*Power(u1,3) + 17698*Power(t1,2)*Power(u1,4) + 1528*t1*Power(u1,5) - 37*Power(u1,6)) + 2*Power(sp,5)*(36096*Power(t1,6) + 83904*Power(t1,5)*u1 + 71636*Power(t1,4)*Power(u1,2) + 21996*Power(t1,3)*Power(u1,3) + 911*Power(t1,2)*Power(u1,4) - 189*t1*Power(u1,5) + Power(u1,6)) + 2*Power(sp,2)*Power(t1,3)*(1408*Power(t1,6) + 7936*Power(t1,5)*u1 + 25696*Power(t1,4)*Power(u1,2) + 32368*Power(t1,3)*Power(u1,3) + 16084*Power(t1,2)*Power(u1,4) + 2606*t1*Power(u1,5) + 13*Power(u1,6))) - 2*Power(q2,2)*(64*Power(sp,12)*t1 + 4*Power(sp,11)*(104*Power(t1,2) + 112*t1*u1 - 3*Power(u1,2)) + 4*Power(t1,5)*Power(u1,6)*(Power(t1,2) + 3*t1*u1 + 2*Power(u1,2)) + 2*Power(sp,10)*(560*Power(t1,3) + 1240*Power(t1,2)*u1 + 664*t1*Power(u1,2) - 33*Power(u1,3)) + 4*sp*Power(t1,4)*Power(u1,5)*(4*Power(t1,3) + 40*Power(t1,2)*u1 + 49*t1*Power(u1,2) + 14*Power(u1,3)) + 2*Power(sp,9)*(800*Power(t1,4) + 2768*Power(t1,3)*u1 + 3180*Power(t1,2)*Power(u1,2) + 1104*t1*Power(u1,3) - 75*Power(u1,4)) + 2*Power(sp,2)*Power(t1,3)*Power(u1,4)*(-168*Power(t1,4) - 43*Power(t1,3)*u1 + 447*Power(t1,2)*Power(u1,2) + 362*t1*Power(u1,3) + 63*Power(u1,4)) + Power(sp,8)*(1280*Power(t1,5) + 6304*Power(t1,4)*u1 + 11492*Power(t1,3)*Power(u1,2) + 9366*Power(t1,2)*Power(u1,3) + 2299*t1*Power(u1,4) - 180*Power(u1,5)) + 2*Power(sp,3)*Power(t1,2)*Power(u1,3)*(-340*Power(t1,5) - 928*Power(t1,4)*u1 + 223*Power(t1,3)*Power(u1,2) + 1244*Power(t1,2)*Power(u1,3) + 548*t1*Power(u1,4) + 47*Power(u1,5)) + 2*Power(sp,7)*(272*Power(t1,6) + 1888*Power(t1,5)*u1 + 4720*Power(t1,4)*Power(u1,2) + 6799*Power(t1,3)*Power(u1,3) + 4491*Power(t1,2)*Power(u1,4) + 790*t1*Power(u1,5) - 60*Power(u1,6)) + Power(sp,4)*t1*Power(u1,2)*(-340*Power(t1,6) - 2650*Power(t1,5)*u1 - 2078*Power(t1,4)*Power(u1,2) + 3622*Power(t1,3)*Power(u1,3) + 3674*Power(t1,2)*Power(u1,4) + 766*t1*Power(u1,5) + 27*Power(u1,6)) + 2*Power(sp,6)*(48*Power(t1,7) + 536*Power(t1,6)*u1 + 1396*Power(t1,5)*Power(u1,2) + 3481*Power(t1,4)*Power(u1,3) + 5562*Power(t1,3)*Power(u1,4) + 2990*Power(t1,2)*Power(u1,5) + 361*t1*Power(u1,6) - 21*Power(u1,7)) + 2*Power(sp,5)*u1*(48*Power(t1,7) - 258*Power(t1,6)*u1 - 757*Power(t1,5)*Power(u1,2) + 2014*Power(t1,4)*Power(u1,3) + 3653*Power(t1,3)*Power(u1,4) + 1370*Power(t1,2)*Power(u1,5) + 102*t1*Power(u1,6) - 3*Power(u1,7))) + 4*Power(q2,3)*(48*Power(sp,11)*t1 + 4*Power(sp,10)*(44*Power(t1,2) + 72*t1*u1 - Power(u1,2)) + 2*Power(sp,9)*(16*Power(t1,3) + 376*Power(t1,2)*u1 + 376*t1*Power(u1,2) - 9*Power(u1,3)) + Power(t1,5)*Power(u1,4)*(-8*Power(t1,3) - 8*Power(t1,2)*u1 + t1*Power(u1,2) + Power(u1,3)) - sp*Power(t1,4)*Power(u1,3)*(552*Power(t1,4) + 1208*Power(t1,3)*u1 + 795*Power(t1,2)*Power(u1,2) + 118*t1*Power(u1,3) - 22*Power(u1,4)) - 4*Power(sp,8)*(200*Power(t1,4) + 336*Power(t1,3)*u1 - 378*Power(t1,2)*Power(u1,2) - 277*t1*Power(u1,3) + 8*Power(u1,4)) - Power(sp,2)*Power(t1,3)*Power(u1,2)*(1008*Power(t1,5) + 5128*Power(t1,4)*u1 + 6782*Power(t1,3)*Power(u1,2) + 3009*Power(t1,2)*Power(u1,3) + 223*t1*Power(u1,4) - 59*Power(u1,5)) - Power(sp,7)*(1680*Power(t1,5) + 7968*Power(t1,4)*u1 + 4784*Power(t1,3)*Power(u1,2) - 1923*Power(t1,2)*Power(u1,3) - 994*t1*Power(u1,4) + 28*Power(u1,5)) - Power(sp,3)*Power(t1,2)*u1*(832*Power(t1,6) + 7296*Power(t1,5)*u1 + 17536*Power(t1,4)*Power(u1,2) + 14461*Power(t1,3)*Power(u1,3) + 3708*Power(t1,2)*Power(u1,4) - 98*t1*Power(u1,5) - 57*Power(u1,6)) - Power(sp,6)*(1552*Power(t1,6) + 13472*Power(t1,5)*u1 + 20124*Power(t1,4)*Power(u1,2) + 6585*Power(t1,3)*Power(u1,3) - 1678*Power(t1,2)*Power(u1,4) - 542*t1*Power(u1,5) + 12*Power(u1,6)) - Power(sp,4)*t1*(128*Power(t1,7) + 4800*Power(t1,6)*u1 + 20616*Power(t1,5)*Power(u1,2) + 28935*Power(t1,4)*Power(u1,3) + 13830*Power(t1,3)*Power(u1,4) + 1083*Power(t1,2)*Power(u1,5) - 354*t1*Power(u1,6) - 22*Power(u1,7)) - Power(sp,5)*(704*Power(t1,7) + 11280*Power(t1,6)*u1 + 28912*Power(t1,5)*Power(u1,2) + 23357*Power(t1,4)*Power(u1,3) + 4299*Power(t1,3)*Power(u1,4) - 988*Power(t1,2)*Power(u1,5) - 166*t1*Power(u1,6) + 2*Power(u1,7)))))/(2.*Power(sp,2)*Power(t1,2)*Power(sp + t1,2)*Power(u1,4)*(m2 + sp + t1 + u1)*(m2*Power(sp + u1,2) + q2*t1*(sp + t1 + u1))*Power(-4*m2*q2 + Power(q2,2) + Power(sp + u1,2) - 2*q2*(sp + 2*t1 + u1),2));
r += c3*v3;
