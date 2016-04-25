Print["BOX II : GENERATE SIMPLIFIED FINAL RESULT "]
Print[" "]
Print["        (UNPOLARIZED CASE) "]
Print[" "]
Print["=========================================="]

n=4+eps;
Clear[D0];

box2 = <<box21 + <<box22 + <<box23 + <<box24 + <<box25 + <<box26 +
       <<box27 + <<box28 + <<box29 + <<box210 + <<box211 +
       <<box212 + <<box213 + <<box214 + <<box215 + <<box216;

box2cr = <<box2cr1 + <<box2cr2 + <<box2cr3 + <<box2cr4 + <<box2cr5 + 
         <<box2cr6 + <<box2cr7 + <<box2cr8 + <<box2cr9 + <<box2cr10 + 
         <<box2cr11 + <<box2cr12 + <<box2cr13 + <<box2cr14 + <<box2cr15 + 
         <<box2cr16;

Print["LOADING ..."]
part1=Normal[Series[box2,{eps,0,2}]];
Print["....1"]
hh1=part1 /. s->-t1-u1;

part2=Normal[Series[box2cr,{eps,0,2}]];
Print["....2"]
hh2=part2 /. s->-t1-u1;

D11=<<d11;
D12=<<d12;
D13=<<d13;
D21=<<d21;
D22=<<d22;
D23=<<d23;
D24=<<d24;
D25=<<d25;
D26=<<d26;
D27=<<d27;
D31=<<d31;
D32=<<d32;
D33=<<d33;
D34=<<d34;
D35=<<d35
D36=<<d36;
D37=<<d37;
D38=<<d38;
D39=<<d39;
D310=<<d310;
D311=<<d311;
D312=<<d312;
D313=<<d313;
D0=1/t1/u1 (4/eps^2 + 2/eps (Log[-t1/m^2]+ Log[-u1/m^2]) +
            2 Log[-t1/m^2] Log[-u1/m^2] - 7/2 zeta2) ;

sum= Expand[2(part1+part2)];

Print["Collecting 1/eps^2 poles:"]

p2 = Coefficient[sum,1/eps^2];

Print["Collecting 1/eps poles:"]

p1 = Coefficient[sum,1/eps];

Print["Collecting finite pieces: "]

finite= Expand[(sum /. {1/eps^2->0,1/eps->0}) /. eps->0];

Print["1/eps^2 Pole:"] 

pole2sum=Expand[p2];
pole2help=Expand[pole2sum];
pole2=FullSimplify[pole2help /. s->-t1-u1] /. t1+u1->-s;
pole2>>box2pol.eps2;

Print["1/eps Pole:"] 

pole1sum=Expand[p1];
pole1help=Expand[pole1sum];
pole1=FullSimplify[pole1help /. s->-t1-u1] /. t1+u1->-s;
pole1>>box2pol.eps1;

Print["Sort finite pieces:"]

finhelp=Expand[finite];

Print["Li2(t/m^2)"]
fin1h=Coefficient[finhelp,PolyLog[2,t/m^2]];
fin1=(FullSimplify[fin1h /. s->-t1-u1] /. t1+u1->-s) Li2[t/m^2];

Print["Li2(u/m^2)"]
fin2h=Coefficient[finhelp,PolyLog[2,u/m^2]];
fin2=(FullSimplify[fin2h /. s->-t1-u1] /. t1+u1->-s) Li2[u/m^2];

help = finhelp /. {PolyLog[2,t/m^2]->0, PolyLog[2,u/m^2]->0};
finhelp = help;

Print["Zeta2"]
fin3h=Coefficient[finhelp,zeta2];
fin3=(FullSimplify[fin3h /. s->-t1-u1] /. t1+u1->-s) zeta2;

help = finhelp /. {zeta2 ->0};
finhelp = help;

Print["Ln(-t1/m^2)^2"]
fin4h=Coefficient[finhelp,Log[-t1/m^2]^2];
fin4=(FullSimplify[fin4h /. s->-t1-u1] /. t1+u1->-s) Log[-t1/m^2]^2;

help = finhelp /. {Log[-t1/m^2]^2 ->0};
finhelp = help;

Print["Ln(-u1/m^2)^2"]
fin5h=Coefficient[finhelp,Log[-u1/m^2]^2];
fin5=(FullSimplify[fin5h /. s->-t1-u1] /. t1+u1->-s) Log[-u1/m^2]^2;

help = finhelp /. {Log[-u1/m^2]^2 ->0};
finhelp = help;

Print["Ln(-t1/m^2) Log(-u1/m^2)"]
fin6h=Coefficient[finhelp,Log[-t1/m^2] Log[-u1/m^2]];
fin6=(FullSimplify[fin6h /. s->-t1-u1] /. t1+u1->-s) Log[-t1/m^2] Log[-u1/m^2];

help = finhelp /. {Log[-t1/m^2] Log[-u1/m^2] ->0};
finhelp = help;

Print["Ln(-t1/m^2)"]
fin7h=Coefficient[finhelp,Log[-t1/m^2]];
fin7=(FullSimplify[fin7h /. s->-t1-u1] /. t1+u1->-s) Log[-t1/m^2];

help = finhelp /. {Log[-t1/m^2]->0};
finhelp = help;

Print["Ln(-u1/m^2) "]

fin8h=Coefficient[finhelp,Log[-u1/m^2]];
fin8=(FullSimplify[fin8h /. s->-t1-u1] /. t1+u1->-s) Log[-u1/m^2];

help = finhelp /. {Log[-u1/m^2] ->0};
finhelp = help;

rest = (FullSimplify[finhelp /. s->-t1-u1] /. t1+u1->-s);

Print["Output finite pieces:"]

fin1>>box2.fin1;
fin2>>box2.fin2;
fin3>>box2.fin3;
fin4>>box2.fin4;
fin5>>box2.fin5;
fin6>>box2.fin6;
fin7>>box2.fin7;
fin8>>box2.fin8;
rest>>box2.rest;





