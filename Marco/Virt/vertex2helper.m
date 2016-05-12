(* VERTEX 2 : INSERT COEFFICIENTS *)

n = 4+eps;
H[a_,b_]=0;

Print["Reading input ..."]

vtx21=<<vtx21 + <<vtx2cr1;
vtx22=<<vtx22 + <<vtx2cr2;
vtx23=<<vtx23 + <<vtx2cr3;
vtx24=<<vtx24 + <<vtx2cr4;
vtx25=<<vtx25 + <<vtx2cr5;
vtx26=<<vtx26 + <<vtx2cr6;
vtx27=<<vtx27 + <<vtx2cr7;
vtx28=<<vtx28 + <<vtx2cr8;

Print["Inserting coefficients ..."]

C11 = -(u*(8 + eps*(-8 + eps*(8 + zeta2))) + 
     4*eps*Log[-(u1/m^2)]*(2*u - eps*(2*m^2 + u1) + eps*u*Log[-(u1/m^2)]) + 
     4*eps^2*u*PolyLog[2, u/m^2])/(4*eps^2*u*u1);

C12 = -(Log[-(u1/m^2)]/u);

C21 = ((u*(-6*eps^2*m^4 + (-12 + eps*(8 + eps))*m^2*u1 + 
          6*(-2 + eps + eps^2)*u1^2) - 
       eps*u1*(4*(3 + eps)*m^4 + 4*(5 + 2*eps)*m^2*u1 + 3*(2 + eps)*u1^2)*
        Log[-(u1/m^2)])/(eps*(2 + eps)*u*(m^2 + u1)) + 
    2*u1*(2/eps^2 + zeta2/4 + (2*Log[-(u1/m^2)])/eps + Log[-(u1/m^2)]^2 + 
       PolyLog[2, u/m^2]))/(2*u1^2);

C22 = (-u + u1*Log[-(u1/m^2)])/(2*u*(m^2 + u1));

C23 = (3*eps*m^2*u + 2*(-1 + eps)*u*u1 + u1*(2*m^2 + 
  (4 + eps)*u1)*Log[-(u1/m^2)])/(2*(2 + eps)*u*u1*(m^2 + u1));

C24 = -(-2 + 2/eps + (u1*Log[-(u1/m^2)])/u)/(2*(2 + eps));

C0 = c0[-k2,p1,0,0,m];
c0[-k2,p1,0,0,m] = 1/u1(2/eps^2+2/eps Log[-u1/m^2]+
    Log[-u1/m^2]^2+PolyLog[2,u/m^2]+1/4 zeta2);

(* n->4 Limit *)
Print["eps expansion and eps->0 limit:"];


lim1 = Normal[Series[vtx21,{eps,0,0}]];
Print["1"]
lim2 = Normal[Series[vtx22,{eps,0,0}]];
Print["2"]
lim3 = Normal[Series[vtx23,{eps,0,0}]];
Print["3"]
lim4 = Normal[Series[vtx24,{eps,0,0}]];
Print["4"]
lim5 = Normal[Series[vtx25,{eps,0,0}]];
Print["5"]
lim6 = Normal[Series[vtx26,{eps,0,0}]];
Print["6"]
lim7 = Normal[Series[vtx27,{eps,0,0}]];
Print["7"]
lim8 = Normal[Series[vtx28,{eps,0,0}]];
Print["8"]

Print["Collecting 1/eps^2 poles:"]

p21 = Coefficient[lim1,1/eps^2];
p22 = Coefficient[lim2,1/eps^2];
p23 = Coefficient[lim3,1/eps^2];
p24 = Coefficient[lim4,1/eps^2];
p25 = Coefficient[lim5,1/eps^2];
p26 = Coefficient[lim6,1/eps^2];
p27 = Coefficient[lim7,1/eps^2];
p28 = Coefficient[lim8,1/eps^2];

Print["Collecting 1/eps poles:"]

p11 = Coefficient[lim1,1/eps];
p12 = Coefficient[lim2,1/eps];
p13 = Coefficient[lim3,1/eps];
p14 = Coefficient[lim4,1/eps];
p15 = Coefficient[lim5,1/eps];
p16 = Coefficient[lim6,1/eps];
p17 = Coefficient[lim7,1/eps];
p18 = Coefficient[lim8,1/eps];

Print["Finite pieces:"]

r1 = (lim1 /. {1/eps^2->0,1/eps->0}) /. eps->0;
r2 = (lim2 /. {1/eps^2->0,1/eps->0}) /. eps->0; 
r3 = (lim3 /. {1/eps^2->0,1/eps->0}) /. eps->0;
r4 = (lim4 /. {1/eps^2->0,1/eps->0}) /. eps->0; 
r5 = (lim5 /. {1/eps^2->0,1/eps->0}) /. eps->0;
r6 = (lim6 /. {1/eps^2->0,1/eps->0}) /. eps->0; 
r7 = (lim7 /. {1/eps^2->0,1/eps->0}) /. eps->0;
r8 = (lim8 /. {1/eps^2->0,1/eps->0}) /. eps->0; 

pole2sum=p21+p22+p23+p24+p25+p26+p27+p28;
pole1sum=p11+p12+p13+p14+p15+p16+p17+p18;

pole2help = Expand[Expand[2 ( pole2sum + (pole2sum /. 
                              {t1->u1,u1->t1,u->t,t->u}))]/. 
                              s->-t1-u1];
pole1help = Expand[Expand[2 ( pole1sum + (pole1sum /. 
                              {t1->u1,u1->t1,u->t,t->u}))]/. 
                              s->-t1-u1];

sum = r1+r2+r3+r4+r5+r6+r7+r8;
finite= Expand[sum];

Print["1/eps^2 Pole:"] 

pole2=FullSimplify[pole2help /. s->-t1-u1] /. t1+u1->-s;
pole2>>vtx2pol.eps2;

Print["1/eps Pole:"] 

pole1=FullSimplify[pole1help /. s->-t1-u1] /. t1+u1->-s;
pole1>>vtx2pol.eps1;

Print["Sort finite pieces:"]

finhelp=Expand[Expand[2 ( finite + (finite /. 
                              {t1->u1,u1->t1,u->t,t->u}))]/. 
                              s->-t1-u1];

save = finhelp;

Print["Sort finite pieces:"]

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

fin1>>vtx2pol.fin1;
fin2>>vtx2pol.fin2;
fin3>>vtx2pol.fin3;
fin4>>vtx2pol.fin4;
fin5>>vtx2pol.fin5;
fin6>>vtx2pol.fin6;
fin7>>vtx2pol.fin7;
fin8>>vtx2pol.fin8;
rest>>vtx2pol.rest;










