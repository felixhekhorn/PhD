Print["SOFT + VIRTUAL - CROSS SECTION : QED PART"]
Print["========================================="]
Print[""]
Print["(POLARIZED)"]
Print[" "]

(*DEFINITIONS*)

BQED = (t1^2+u1^2)/t1^2/u1^2 (2m^2 s- t1 u1);

Seps = (4Pi)^(-2-eps/2);

F = 1/16/Pi G^4 EH^2 1/(1+eps/2)^2 Seps/Gamma[1+eps/2] *
    Exp[eps/2(EulerGamma-Log[4Pi])] *
    ((t1 u1 - s m^2)/mu^2/s)^(eps/2) *
    (DELTA^2/mu^2/m^2)^(eps/2) * 
    BQED;

NORMSOFT = 4 KGG NC CF^2 F;

Ceps = 1/16/Pi^2 Exp[eps/2(EulerGamma-Log[4Pi])] (m^2/mu^2)^(eps/2);

NORMBOX = G^4 EH^2 Ceps KGG NC CF^2 1/4 1/(1+eps/2)^2 Pi Seps *
          ((t1 u1 - s m^2)/mu^2/s)^(eps/2) * 1/Gamma[1+eps/2]

NORMVTX = 2*NORMBOX;   (* MULTIPLY BY 2 BQ. THERE ARE TWO VERTICES !!*) 

NORMQSE = NORMBOX;

(*SOFT CROSS SECTION*)

Print["CALCULATE SOFT CROSS SECTION"]

sqed = NORMSOFT * ( -4/eps + 2 + 2(s-2m^2)/Sqrt[s^2-4s m^2] * 
     ( -(2/eps+1) Log[x] + 2Li2[x] + 2 Li2[-x] - 
       Log[x]^2 +2 Log[x] Log[1-x^2] -zeta2));

Print["ADD RENORMALIZED POLE PARTS AND FINITE PIECES OF ..."]

(* BOX I *)

Print["... BOX I"]

boxpole = 1/eps * <<box1pol.pole;
boxfin = <<box1pol.fin1 +
         <<box1pol.fin2 +
         <<box1pol.fin3 +
         <<box1pol.fin4 +
         <<box1pol.fin5 +
         <<box1pol.fin6 +
         <<box1pol.fin7 +
         <<box1pol.fin8 +
         <<box1pol.fin9 +
         <<box1pol.fin10 + 
         <<box1pol.fin11 +
         <<box1pol.fin12 +
         <<box1pol.fin13 +
         <<box1pol.rest;

box = NORMBOX * (boxpole + boxfin);
 
Print["... VERTEX I"]

vtxpole = 1/eps * <<vtx1pol.eps1;
vtxfin = <<vtx1pol.fin1 +
         <<vtx1pol.fin2 +
         <<vtx1pol.fin3 +
         <<vtx1pol.fin4 +
         <<vtx1pol.fin5 +
         <<vtx1pol.rest;

vtx = NORMVTX * (vtxpole+vtxfin);

Print["... QUARK SELF ENERGIES"]

qsepole = 1/eps * <<se1pol.eps1
qsefin = <<se1pol.fin1 +
         <<se1pol.fin2 +
         <<se1pol.rest;

qse = NORMQSE * (qsepole+qsefin);

Print["AND ..."]

sum = Expand[sqed + box + vtx + qse];

Print["... EXPAND IN EPS"]
res = Expand[Normal[Series[sum,{eps,0,0}]]];

Print["... CANCEL POLES"]

pole = Coefficient[res,1/eps];
pole1 = pole /. Log[x] ->0;
pole2 = PowerExpand[FullSimplify[Coefficient[pole,Log[x]] /. 
           {Sqrt[(-4m^2+s)/s]->Sqrt[s-4m^2]/Sqrt[s]}]];
Print["... ... ... 1/eps = ", pole2] 

Print["... EPS -> 0"]

finite = (res /. 1/eps->0) /. eps->0;

Print["... CANCEL EulerGammas"]

eg =  PowerExpand[FullSimplify[Coefficient[finite,EulerGamma] /. 
           {Sqrt[(-4m^2+s)/s]->Sqrt[s-4m^2]/Sqrt[s]}]];
Print["... ... ... EulerGamma = ", eg] 

help = finite /. {EulerGamma->0, Log[4Pi]->L4Pi,Log[Pi]->L4Pi-2Log[2],
                  Log[4]->2Log[2]};
finite = Expand[help];

Print["... CANCEL Log[4Pi]"]


l4pi =  PowerExpand[FullSimplify[Coefficient[finite,L4Pi] /. 
           {Sqrt[(-4m^2+s)/s]->Sqrt[s-4m^2]/Sqrt[s]}]];
Print["... ... ... Log(4Pi) = ", l4pi] 

help = finite /. {L4Pi->0,Sqrt[(-4m^2+s)/s]->Sqrt[s-4m^2]/Sqrt[s],
                  Log[-u1/m^2]->logu1,Log[-t1/m^2]->logt1};

common = CF^2 NC EH^2 G^4 KGG / Pi^3;
finite = Expand[PowerExpand[help/common] /. {Sqrt[-4m^2+s]->sbar/Sqrt[s],
         1/Sqrt[-4m^2 s +s^2]->1/sbar,1/Sqrt[-4m^2+s]->Sqrt[s]/sbar}];

Print["... CANCEL Log[mu]"]

lnmu1 =  PowerExpand[FullSimplify[Coefficient[finite,Log[mu]] /. 
           {Sqrt[(-4m^2+s)/s]->Sqrt[s-4m^2]/Sqrt[s],s->-t1-u1}]];
lnmu = FullSimplify[(lnmu1 /. sbar^2->s (s-4m^2))/. s->-t1-u1];
Print["... ... ... Log(mu) = ", lnmu] 

help = finite /. Log[mu]->0;
finite = help;

Print["COLLECT AND SIMPLIFY ALL FINITE PIECES ..."]

Print["... Zeta(2)"]

help = Coefficient[finite,zeta2];
fin1 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. zeta2->0;
finite = help;

Print["... Log(x) Log(-t1/m^2)"]

help = Coefficient[finite,logt1 Log[x]];
fin2 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. logt1 Log[x]->0;
finite = help;

Print["... Log(x) Log(-u1/m^2)"]

help = Coefficient[finite,logu1 Log[x]];
fin3 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. logu1 Log[x]->0;
finite = help;

Print["... Li2(t/m^2)"]

help = Coefficient[finite,Li2[t/m^2]];
fin4 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Li2[t/m^2]->0;
finite = help;

Print["... Li2(u/m^2)"]

help = Coefficient[finite,Li2[u/m^2]];
fin5 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Li2[u/m^2]->0;
finite = help;

Print["... Log(-t1/m^2)"]

help = Coefficient[finite,logt1];
fin6 = (FullSimplify[help /. s->-t1-u1] /. {t1+u1->-s,1/(t1+m^2)->1/t,
             1/(u1+m^2)->1/u,1/(t1+m^2)^2->1/t^2,1/(u1+m^2)^2->1/u^2});

help = finite /. logt1 ->0;
finite = help;

Print["... Log(-u1/m^2)"]

help = Coefficient[finite,logu1];
fin7 = (FullSimplify[help /. s->-t1-u1] /. {t1+u1->-s,1/(t1+m^2)->1/t,
             1/(u1+m^2)->1/u,1/(t1+m^2)^2->1/t^2,1/(u1+m^2)^2->1/u^2});

help = finite /. logu1 ->0;
finite = help;

Print["... Log(x) Log(1-x)"]

help = Coefficient[finite,Log[x] Log[1-x]];
fin8 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Log[x] Log[1-x] ->0;
finite = help;

Print["... Log(x) Log(1+x)"]

help = Coefficient[finite,Log[x] Log[1+x]];
fin9 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Log[x] Log[1+x] ->0;
finite = help;

Print["... Li2(x)"]

help = Coefficient[finite,Li2[x]];
fin10 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Li2[x]->0;
finite = help;

Print["... Li2(-x)"]

help = Coefficient[finite,Li2[-x]];
fin11 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Li2[-x]->0;
finite = help;

Print["... Log(x)^2"]

help = Coefficient[finite,Log[x]^2];
fin12 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = Expand[finite /. {Log[x]^2->0,Log[DELTA]->LLL + 2 Log[m]}];
finite = help;

Print["... Log(delta)"]

lll = Coefficient[finite,LLL];
logdel = (FullSimplify[lll /. s->-t1-u1] /. t1+u1->-s);

help = finite /. LLL->0;
finite = help;

Print["... Log(x)"]

help = Coefficient[finite,Log[x]];
fin13 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Log[x]->0;
finite = help;

Print["AND FINALLY THE REMAINING TERMS WITHOUT ANY SPECIAL FUNCTIONS"]

rest = (FullSimplify[finite /. s->-t1-u1] /. t1+u1->-s);

Print["GENERATE OUTPUT FOR ..."]

Print["... COMMON PREFACTOR"]
common >> svqedpol.pre;

Print["... Zeta(2)"]
(FullSimplify[(fin1 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) zeta2 >> svqedpol.f1;

Print["... Log(-t1/m^2) Log(x)"]
(FullSimplify[(fin2 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-t1/m^2] Log[x] >> svqedpol.f2;

Print["... Log(-u1/m^2) Log(x)"]
(FullSimplify[(fin3 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-u1/m^2] Log[x] >> svqedpol.f3;

Print["... Li2(t/m^2)"]
(FullSimplify[(fin4 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[t/m^2] >> svqedpol.f4;

Print["... Li2(u/m^2)"]
(FullSimplify[(fin5 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[u/m^2] >> svqedpol.f5;

Print["... Log(-t1/m^2)"]
(FullSimplify[(fin6 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-t1/m^2] >> svqedpol.f6;

Print["... Log(-u1/m^2)"]
(FullSimplify[(fin7 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-u1/m^2] >> svqedpol.f7;

Print["... Log(x) Log(1-x)"]
(FullSimplify[(fin8 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x] Log[1-x] >> svqedpol.f8;

Print["... Log(x) Log(1+x)"]
(FullSimplify[(fin9 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x] Log[1+x] >> svqedpol.f9;

Print["... Li2(x)"]
(FullSimplify[(fin10 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[x] >> svqedpol.f10;

Print["... Li2(-x)"]
(FullSimplify[(fin11 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[-x] >> svqedpol.f11;

Print["... Log(x)^2"]
(FullSimplify[(fin12 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x]^2 >> svqedpol.f12;

Print["... Log(x)"]
(FullSimplify[(fin13 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x] >> svqedpol.f13;

Print["... Log(delta)"]
(FullSimplify[(logdel /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[delta] >> svqedpol.del;

Print["... `non special'"]
(FullSimplify[(rest /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) >> svqedpol.non;

Print["GENERATE FORTRAN OUTPUT"]
in = <<svqedpol.pre
FortranForm[in] >> svqedppre.f;
in = <<svqedpol.f1
FortranForm[in] >> svqedpf1.f;
in = <<svqedpol.f2
FortranForm[in] >> svqedpf2.f;
in = <<svqedpol.f3
FortranForm[in] >> svqedpf3.f;
in = <<svqedpol.f4
FortranForm[in] >> svqedpf4.f;
in = <<svqedpol.f5
FortranForm[in] >> svqedpf5.f;
in = <<svqedpol.f6
FortranForm[in] >> svqedpf6.f;
in = <<svqedpol.f7
FortranForm[in] >> svqedpf7.f;
in = <<svqedpol.f8
FortranForm[in] >> svqedpf8.f;
in = <<svqedpol.f9
FortranForm[in] >> svqedpf9.f;
in = <<svqedpol.f10
FortranForm[in] >> svqedpf10.f;
in = <<svqedpol.f11
FortranForm[in] >> svqedpf11.f;
in = <<svqedpol.f12
FortranForm[in] >> svqedpf12.f;
in = <<svqedpol.f13
FortranForm[in] >> svqedpf13.f;
in = <<svqedpol.del
FortranForm[in] >> svqedpdel.f;
in = <<svqedpol.non
FortranForm[in] >> svqedpnon.f;
