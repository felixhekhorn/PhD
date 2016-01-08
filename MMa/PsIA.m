(* ::Package:: *)

BeginPackage["PsIA`"];

psIA1::usage = "phasespace integrals for A1 \[Integral]t'^k u7^l d\[CapitalOmega]";
psIA2::usage = "phasespace integrals for A2 \[Integral]\!\(\*SubscriptBox[\(s\), \(5\)]\)^k u'^l d\[CapitalOmega]";

s4;s;m2;sp;t1;u1;m\[Gamma]2;\[Epsilon];log1A1;log2A1;log2A2a;log3A2a;log2A2b;log3A2b;

Begin["`Private`"];
(* A1 *)
psIA1[1,0]=-4\[Pi] (s4+m2)/(sp+t1)/s4/\[Epsilon];
psIA1[1,1]=2\[Pi] (s4+m2)/(s4 t1 u1)(2/\[Epsilon]+log1A1);
psIA1[1,-1]=2\[Pi](s4+m2)t1 u1/s4/(sp+t1)^2*(2/\[Epsilon]+s4 (2 m2 sp+(sp-m\[Gamma]2) (sp+t1)+(sp-t1) u1)/(s4+m2)/(t1 u1));
psIA1[1,2]=-2\[Pi](s4+m2)(sp+t1)/(s4 t1^2 u1^2)*(2/\[Epsilon] -2+(t1 u1 (-m\[Gamma]2 s4+(2 m2+s4) (sp+u1)))/((sp+t1) (m\[Gamma]2 s4 t1+m2 (sp+u1)^2))+log1A1);
psIA1[2,1]=4\[Pi] (s4+m2)^2(sp+t1)/(s4^2 t1^3 u1^3)*(((s4 (2 m2 sp (sp+u1)+t1 (-u1 (sp+u1)+m\[Gamma]2 (2 (sp+t1)+u1))))/(2 (m2+s4) (sp+t1)))*(2/\[Epsilon]+log1A1)+(1/((m2+s4) (sp+t1)^2))(-2 (sp+t1) (m\[Gamma]2 s4^2 t1+m2 sp^2 (sp+t1))-2 sp (sp+t1) (2 m2 sp-s4 t1) u1+(-2 m2 sp^2+2 s4 sp t1+(m2+s4) t1^2) u1^2));
psIA1[2,2]=(1/(s4^2 t1^4 u1^4))2 \[Pi] (m2+s4)^2 *((t1^2 u1^2 (m\[Gamma]2 s4-(2 m2+s4) (sp+u1))^2)/((m2+s4) (m\[Gamma]2 s4 t1+m2 (sp+u1)^2))+2 (-3 t1^2 u1^2+(8 s4^2 (m2 sp^2+m\[Gamma]2 t1 (sp+t1)-sp t1 u1))/(m2+s4))-(2 s4 (m2 sp (3 s4 sp+2 t1 u1)+t1 (-u1 (2 s4 sp+t1 u1)+m\[Gamma]2 (3 s4^2-4 s4 u1+u1^2))) (2/\[Epsilon]+log1A1))/((m2+s4)));

psIA1[0,0]=2\[Pi];
psIA1[2,0]=-4\[Pi] (s4+m2)^2/(s4^2(sp+t1)^2);
psIA1[0,1]=2\[Pi] (s4+m2)/(s4 Sqrt[(sp+u1-m\[Gamma]2)^2-4m\[Gamma]2(t1+m2)])*log2A1;
psIA1[0,2]=2\[Pi] (s4+m2)/(m\[Gamma]2 s4 t1+m2 (sp+u1)^2);
psIA1[-1,1]=\[Pi] (2(s4+m2))/(s4)/((sp+u1-m\[Gamma]2)^2-4m\[Gamma]2(t1+m2))^(3/2)*(
(2 m2 sp (sp+u1)+t1 (-u1 (sp+u1)+m\[Gamma]2 (2 (sp+t1)+u1)))log2A1+
(s4 (2 m2 sp-m\[Gamma]2 (sp+t1)+sp (sp+t1)+(sp-t1) u1) Sqrt[-4 m\[Gamma]2 (m2+t1)+(-m\[Gamma]2+sp+u1)^2])/(s4+m2));
psIA1[-1,2]=\[Pi] (2(s4+m2))/(s4)/((sp+u1-m\[Gamma]2)^2-4m\[Gamma]2(t1+m2))^(3/2)/(m\[Gamma]2 s4 t1+m2 (sp+u1)^2)*(
(2*m2*sp + (sp - m\[Gamma]2)*(sp + t1) + (sp - t1)*u1)*(m\[Gamma]2*s4*t1 + m2*(sp + u1)^2)log2A1+
(s4 Sqrt[(-m\[Gamma]2+sp+u1)^2-4 m\[Gamma]2 (m2+t1)] (2 m2 sp (sp+u1)+t1 (-u1 (sp+u1)+m\[Gamma]2 (2 (sp+t1)+u1))))
);
psIA1[-2,2]=((2 \[Pi] (s4+m2))/(s4 ((-m\[Gamma]2+sp+u1)^2-4 m\[Gamma]2 (m2+t1))^(5/2) (m\[Gamma]2 s4 t1+m2 (sp+u1)^2)))*(2 log2A1 (m\[Gamma]2 s4 t1+m2 (sp+u1)^2) *(6 m2^2 sp^2 (sp+u1)-m\[Gamma]2^2 t1 (sp+t1) (3 sp+3 t1+2 u1)+3 m2 sp (sp+u1) (sp^2-2 t1 u1+sp (t1+u1))-t1 u1 (sp+u1) (2 sp^2-t1 u1+2 sp (t1+u1))+m\[Gamma]2 (t1 (3 sp (sp+t1)^2+(7 sp-t1) (sp+t1) u1+(4 sp+t1) u1^2)+m2 (-3 sp^3+3 sp^2 (t1-u1)+2 t1^2 u1+2 sp t1 (3 t1+u1))))+(s4/(s4+m2) Sqrt[(-m\[Gamma]2+sp+u1)^2-4 m\[Gamma]2 (m2+t1)])*(12 m2^3 sp^2 (sp+u1)^2+s4 t1 (m\[Gamma]2 (sp+t1)^2 ((m\[Gamma]2-sp)^2+8 m\[Gamma]2 t1)-2 m\[Gamma]2 (m\[Gamma]2-sp) (sp-5 t1) (sp+t1) u1+(m\[Gamma]2 sp^2+(m\[Gamma]2^2-12 m\[Gamma]2 sp+sp^2) t1-3 m\[Gamma]2 t1^2) u1^2+2 (-m\[Gamma]2+sp) t1 u1^3+t1 u1^4)+4 m2^2 (3 sp (sp+u1)^2 (sp^2-t1 u1+sp (t1+u1))+m\[Gamma]2 (-sp^4+sp^3 (4 t1-2 u1)+t1^2 u1^2+sp t1 u1 (4 t1+u1)+sp^2 (5 t1^2+5 t1 u1-u1^2)))+m2 ((sp+u1)^2 (sp^2 (sp+t1)^2+2 sp (sp-5 t1) (sp+t1) u1+(sp^2-10 sp t1+2 t1^2) u1^2)+2 m\[Gamma]2 (-sp^2 (sp-10 t1) (sp+t1)^2-sp (sp+t1) (3 sp^2-23 sp t1-2 t1^2) u1+sp (-3 sp^2+16 sp t1+8 t1^2) u1^2+(-sp^2+4 sp t1+2 t1^2) u1^3)+m\[Gamma]2^2 (sp^4+2 sp^3 (-t1+u1)+2 t1^2 (2 t1+u1)^2+sp^2 (t1^2+u1^2)+2 sp t1 (6 t1^2+3 t1 u1+u1^2)))));

(* A2a *)
psIA2a[0,0]=2\[Pi];
psIA2a[1,1]=-2\[Pi] (s4+m2)/(s4 s t1)log3A2a;
psIA2a[0,1]=2\[Pi] (s4+m2)/s4/Sqrt[((sp+u1-m\[Gamma]2)^2-4m\[Gamma]2(m2+t1))]*log2A2a;
psIA2a[-1,1]=-2\[Pi] (s4+m2)/(s4*((sp+u1-m\[Gamma]2)^2-4m\[Gamma]2(m2+t1))^(3/2))*(
(2 m2 m\[Gamma]2 sp+t1 (m\[Gamma]2^2+sp (sp+u1)-m\[Gamma]2 (2 t1+u1)))log2A2a
+((2 m2 sp-m\[Gamma]2 (sp+t1)+sp (sp+t1)+(sp-t1) u1))*(s4/(s4+m2)Sqrt[((sp+u1-m\[Gamma]2)^2-4m\[Gamma]2(m2+t1))])
);
psIA2a[2,1]=2\[Pi] (s4+m2)/(s4 s^3 t1^3)*(
(2 m2 m\[Gamma]2 sp+t1 (m\[Gamma]2^2+sp (sp+u1)-m\[Gamma]2 (2 t1+u1)))*log3A2a
+2((2 m2 sp^2+m\[Gamma]2 t1 (sp+t1)-sp t1 (sp+t1+2 u1)))*((s4 (m\[Gamma]2+sp) t1)/(2 sp (m2 sp-s4 t1)))
);
psIA2a[1,2]=-2\[Pi] (s4+m2)/(s4 s^3 t1^3)*(
 (2 m2 sp^2+m\[Gamma]2 t1 (sp+t1)-sp t1 (s4+u1))*log3A2a
+ 2((2 m2 m\[Gamma]2 sp+t1 (m\[Gamma]2^2+sp (sp+u1)-m\[Gamma]2 (2 t1+u1))))*((s4 s t1)/(2 m\[Gamma]2 (m2 m\[Gamma]2+s4 t1)))
);
psIA2a[0,2]=2\[Pi] (s4+m2)/(m\[Gamma]2 (m2 m\[Gamma]2 + t1 s4));
psIA2a[-1,2]=-2\[Pi] (s4+m2)/(s4 ((sp+u1-m\[Gamma]2)^2-4 m\[Gamma]2 (t1+m2))^(3/2))*(
(2 m2 sp-m\[Gamma]2 (sp+t1)+sp (sp+t1)+(sp-t1) u1)*log2A2a
+(2 m2 m\[Gamma]2 sp+t1 (m\[Gamma]2^2+sp (sp+u1)-m\[Gamma]2 (2 t1+u1)))*((s4 Sqrt[(sp+u1-m\[Gamma]2)^2-4 m\[Gamma]2 (t1+m2)])/(m\[Gamma]2 (m2 m\[Gamma]2+s4 t1)))
);
psIA2a[3,1]=-\[Pi](s4+m2)/(s4 s^5 t1^5)*(2(6 m2^2 m\[Gamma]2^2 sp^2+2 m2 m\[Gamma]2 t1 (m\[Gamma]2^2 (3 sp+t1)+sp^2 (3 sp+t1+3 u1)-m\[Gamma]2 sp (4 t1+3 u1))+t1^2 (m\[Gamma]2^4+sp^2 (sp+u1)^2-2 m\[Gamma]2^3 (2 t1+u1)+m\[Gamma]2^2 (4 sp^2+6 t1^2+6 t1 u1+u1^2+4 sp (t1+u1))-2 m\[Gamma]2 sp (2 sp (t1+u1)+u1 (3 t1+2 u1))))*log3A2a
-((-12 m2^3 m\[Gamma]2 sp^5+s4 t1^3 ((-m\[Gamma]2+sp) (sp+t1) (-3 sp (m\[Gamma]2^2+sp^2)+(m\[Gamma]2^2+8 m\[Gamma]2 sp+sp^2) t1)-2 sp (m\[Gamma]2^2 (5 sp+t1)+sp^2 (5 sp+t1)-2 m\[Gamma]2 sp (sp+5 t1)) u1+6 (m\[Gamma]2-sp) sp^2 u1^2)+2 m2 sp t1^2 ((sp+t1) (sp^3 (5 sp-t1)+m\[Gamma]2^3 (-sp+t1)+m\[Gamma]2^2 sp (9 sp+7 t1)-m\[Gamma]2 sp^2 (3 sp+13 t1))+sp (m\[Gamma]2^2 (11 sp+3 t1)+sp^2 (11 sp+3 t1)-2 m\[Gamma]2 sp (7 sp+15 t1)) u1+6 sp^2 (-2 m\[Gamma]2+sp) u1^2)+2 m2^2 sp^3 t1 (-2 m\[Gamma]2^2 (3 sp+t1)+sp^2 (-3 sp+t1-3 u1)+m\[Gamma]2 sp (9 sp+17 t1+15 u1))))*(s4(sp+m\[Gamma]2)t1/(sp^2(m2 sp-s4 t1)^2))
);
psIA2a[2,2]=2\[Pi] (s4+m2)/(s4 s^5 t1^5)*(
2(6 m2^2 m\[Gamma]2 sp^3+t1^2 ((m\[Gamma]2-sp) (sp+t1) (m\[Gamma]2^2+sp^2-m\[Gamma]2 (sp+3 t1))-2 (m\[Gamma]2^2 (2 sp+t1)+sp^2 (2 sp+t1)-2 m\[Gamma]2 sp (sp+2 t1)) u1+3 (m\[Gamma]2-sp) sp u1^2)+m2 sp t1 (m\[Gamma]2^2 (6 sp+4 t1)+sp^2 (3 sp+t1+3 u1)-m\[Gamma]2 sp (3 sp+7 t1+9 u1)))log3A2a
+((12 m2^3 m\[Gamma]2^2 sp^4+4 m2^2 m\[Gamma]2 sp^2 t1 (m\[Gamma]2^2 (3 sp+2 t1)+sp^2 (3 sp+2 t1+3 u1)-m\[Gamma]2 sp (3 sp+5 t1+6 u1))+s4 t1^3 (-m\[Gamma]2^4 sp-sp^3 (sp+u1)^2+m\[Gamma]2^3 (sp^2+6 sp t1+t1^2+2 sp u1)-m\[Gamma]2^2 sp (8 sp^2+12 sp t1+10 t1^2+10 sp u1+12 t1 u1+u1^2)+m\[Gamma]2 sp^2 (sp^2+6 sp t1+t1^2+10 sp u1+12 t1 u1+10 u1^2))+m2 t1^2 (m\[Gamma]2^4 (2 sp^2+2 sp t1+t1^2)+sp^4 (sp+u1)^2-2 m\[Gamma]2^3 sp (5 sp^2+10 sp t1+3 t1^2+7 sp u1+4 t1 u1)-2 m\[Gamma]2 sp^3 (6 sp^2+12 sp t1+4 t1^2+17 sp u1+16 t1 u1+11 u1^2)+m\[Gamma]2^2 sp^2 (11 sp^2+26 sp t1+21 t1^2+22 sp u1+32 t1 u1+13 u1^2))))*((s4  s t1)/(m\[Gamma]2 sp (m2 sp-s4 t1) (m2 m\[Gamma]2+s4 t1)))
);
psIA2a[-2, 2] = 2*Pi*((s4 + m2)/(s4*((sp + u1 - m\[Gamma]2)^2 - 4*m\[Gamma]2*(t1 + m2))^(5/2)))*
    (2*(2*m2^2*m\[Gamma]2*sp^2 + m2*(-2*m\[Gamma]2^2*(sp^2 + sp*t1 + t1^2) + sp^2*(sp + u1)*(sp + 3*t1 + u1) + m\[Gamma]2*sp*(sp^2 + sp*(t1 + u1) - 2*t1*(2*t1 + u1))) + 
       t1*((-m\[Gamma]2^3)*(sp + t1) + m\[Gamma]2*((-sp)*t1*(sp + t1) + (sp^2 + 3*t1^2)*u1 + (sp + 2*t1)*u1^2) + m\[Gamma]2^2*(t1*(t1 - u1) + sp*(t1 + u1)) + sp*(sp + u1)*(sp^2 + sp*t1 - u1*(2*t1 + u1))))*log2A2a + 
     (12*m2^3*m\[Gamma]2^2*sp^2 + 4*m2^2*m\[Gamma]2*(m\[Gamma]2^2*(-sp^2 + sp*t1 + t1^2) + sp^2*t1*(3*sp + 2*t1 + 3*u1) + m\[Gamma]2*sp*(3*sp^2 + 3*sp*(t1 + u1) - t1*(2*t1 + 3*u1))) + 
       s4*t1*(m\[Gamma]2^4*t1 + sp^2*t1*(sp + u1)^2 + m\[Gamma]2^3*(sp^2 + 2*sp*t1 - t1*(3*t1 + 2*u1)) + m\[Gamma]2*(sp^4 + t1^2*u1^2 + 2*sp^3*(t1 + u1) - 2*sp*t1*u1*(5*t1 + 4*u1) + sp^2*(-3*t1^2 - 6*t1*u1 + u1^2)) + 
         m\[Gamma]2^2*(-2*sp^3 + 2*sp^2*(t1 - u1) + 6*sp*t1*(t1 + u1) + t1*(8*t1^2 + 10*t1*u1 + u1^2))) + m2*(m\[Gamma]2^4*(sp^2 + 2*sp*t1 + 2*t1^2) + sp^2*t1^2*(sp + u1)^2 - 
         2*m\[Gamma]2^3*(sp^3 - 2*t1^2*u1 + sp^2*(-2*t1 + u1) - sp*t1*(5*t1 + 4*u1)) + m\[Gamma]2^2*(sp^4 + 2*sp^3*(-t1 + u1) + 2*t1^2*(2*t1 + u1)^2 + sp^2*(-9*t1^2 - 12*t1*u1 + u1^2) - 2*sp*t1*(2*t1^2 + 8*t1*u1 + 5*u1^2)) + 
         2*m\[Gamma]2*sp*t1*(6*sp^3 - t1*u1*(6*t1 + 5*u1) + 2*sp^2*(5*t1 + 6*u1) + sp*(2*t1^2 + 5*t1*u1 + 6*u1^2))))*((s4*Sqrt[(sp + u1 - m\[Gamma]2)^2 - 4*m\[Gamma]2*(m2 + t1)])/((s4 + m2)*m\[Gamma]2*(m2*m\[Gamma]2 + s4*t1))));
(* A2b *)
psIA2b[1,1]=-2\[Pi] (s4+m2)/(s4 s t1) log3A2b;
psIA2b[0,1]=2\[Pi] (s4+m2)/(s4 Sqrt[(s-s4)^2-4m2 s])log2A2b;
psIA2b[-1,1]=-2\[Pi] (s4+m2)/(s4 ((s-s4)^2-4m2 s)^(3/2))*(
(s(2 m2 sp+t1 (s-s4)))*log2A2b
-(-2 m2 sp+(m\[Gamma]2+t1) (sp+t1)+(-sp+t1) u1)*((s4 Sqrt[(s-s4)^2-4 m2 s])/(s4+m2))
);
psIA2b[2,1]=2\[Pi] (s4+m2)/(s4 s^2 t1^3)*(
(2 m2 sp +t1(s-s4))*log3A2b
-((2 m2 sp^2+m\[Gamma]2 t1 (sp+t1)-sp t1 (s4+u1)))*((s4 t1)/(sp (-m2 sp+s4 t1)))
);
psIA2b[1,2]=-2\[Pi] (s4+m2)/(s4 s^3 t1^3)*(
(2 m2 sp^2+m\[Gamma]2 t1 (sp+t1)-sp t1 (s4+u1))*log3A2b
+(2 m2 sp+t1 (s-s4))*((s4 t1)/(m2 ))
);
psIA2b[0,2]=2\[Pi] (s4+m2)/(m2 s^2);
psIA2b[-1,2]=2\[Pi] (s4+m2)/(s4 ((s-s4)^2-4m2 s)^(3/2))*(
(-2 m2 sp+(m\[Gamma]2+t1) (sp+t1)+(-sp+t1) u1)*log2A2b
+(-2 m2 sp-t1 (s-s4))*((s4 Sqrt[(s-s4)^2-4 m2 s])/(m2 s))
);
psIA2b[3,1]=-\[Pi](s4+m2)/(s4 t1^5 s^3)*(
2(6 m2^2 sp^2+t1^2 (-m\[Gamma]2+t1+u1)^2+2 m2 t1 (3 m\[Gamma]2 sp+m\[Gamma]2 t1-2 sp t1-3 sp u1))*log3A2b
+(12 m2^3 sp^5+s4 t1^3 ((sp+t1) (sp^2 (sp-3 t1)+m\[Gamma]2^2 (-3 sp+t1)+4 m\[Gamma]2 sp (sp+t1))-2 sp (-m\[Gamma]2 (5 sp+t1)+sp (sp+5 t1)) u1-6 sp^2 u1^2)+2 m2 sp t1^2 ((sp+t1) (m\[Gamma]2^2 (sp-t1)+2 sp^2 (sp+4 t1)-m\[Gamma]2 sp (9 sp+5 t1))+sp (-11 m\[Gamma]2 sp+13 sp^2-3 m\[Gamma]2 t1+21 sp t1) u1+12 sp^2 u1^2)-2 m2^2 sp^3 t1 (-2 m\[Gamma]2 (3 sp+t1)+sp (9 sp+13 t1+15 u1)))*(( s4 (m2+s4) t1)/((s4+m2) sp^2 (m2 sp-s4 t1)^2))
);
psIA2b[2,2]=2\[Pi] (s4+m2)/(s4 t1^5 s^4)*(
2(6 m2^2 sp^3+t1^2 ((sp+t1) (m\[Gamma]2^2+sp t1-2 m\[Gamma]2 (sp+t1))+2 (-m\[Gamma]2 (2 sp+t1)+sp (sp+2 t1)) u1+3 sp u1^2)+m2 sp t1 (m\[Gamma]2 (6 sp+4 t1)-sp (3 sp+5 t1+9 u1)))*log3A2b
+(12 m2^3 sp^4-s4 sp t1^3 (-m\[Gamma]2+t1+u1)^2+4 m2^2 sp^2 t1 (m\[Gamma]2 (3 sp+2 t1)-sp (3 sp+4 t1+6 u1))+m2 t1^2 (m\[Gamma]2^2 (2 sp^2+2 sp t1+t1^2)-2 m\[Gamma]2 sp (5 sp^2+9 sp t1+3 t1^2+7 sp u1+4 t1 u1)+sp^2 (sp^2+6 t1^2+18 t1 u1+13 u1^2+6 sp (t1+2 u1))))*((m2 s4 t1+s4^2 t1)/((s4+m2)m2  sp (m2 sp-s4 t1)))
);
(* A2 *)
psIA2[2,2]=psIA2a[2,2]-2psIA2a[3,1]+2psIA2b[3,1]+psIA2b[2,2];
psIA2[2,1]=psIA2a[2,1]-psIA2b[2,1]-psIA2b[1,2];
psIA2[2,0]=psIA2b[0,2];
psIA2[2,-1]=psIA2b[0,1]-psIA2b[-1,2];
psIA2[1,2]=psIA2a[1,2]-psIA2a[2,1]+psIA2b[2,1];
psIA2[1,1]=psIA2a[1,1]-psIA2b[1,1];
psIA2[1,0]=psIA2b[0,1];
psIA2[1,-1]=psIA2a[0,0]-psIA2b[-1,1];
psIA2[0,2]=psIA2a[0,2];
psIA2[0,1]=psIA2a[0,1];
psIA2[0,0]=psIA2a[0,0];
psIA2[-1,2]=psIA2a[-1,2]+psIA2a[0,1];
psIA2[-1,1]=psIA2a[-1,1]+psIA2a[0,0];
psIA2[-2,2]=psIA2a[-2,2]+2psIA2a[-1,1]+psIA2a[0,0];

End[];
EndPackage[];



