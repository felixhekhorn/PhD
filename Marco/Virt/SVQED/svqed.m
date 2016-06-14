Print["SOFT + VIRTUAL - CROSS SECTION : QED PART"]
Print["========================================="]
Print[""]
Print["(UNPOLARIZED)"]
Print[" "]

(*DEFINITIONS*)

BQED = t1/u1 + u1/t1 + 4m^2 s/t1/u1 (1- m^2 s/t1/u1) +
       eps (-1+s^2/t1/u1) +
       eps^2 s^2/4/t1/u1;

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

boxpole = 1/eps * <<box1.pole;
boxfin = <<box1.fin1 +
         <<box1.fin2 +
         <<box1.fin3 +
         <<box1.fin4 +
         <<box1.fin5 +
         <<box1.fin6 +
         <<box1.fin7 +
         <<box1.fin8 +
         <<box1.fin9 +
         <<box1.fin10 + 
         <<box1.fin11 +
         <<box1.fin12 +
         <<box1.fin13 +
         <<box1.rest;

box = NORMBOX * (boxpole + boxfin);
 
Print["... VERTEX I"]

vtxpole = 1/eps * <<vtx1.eps1;
vtxfin = <<vtx1.fin1 +
         <<vtx1.fin2 +
         <<vtx1.fin3 +
         <<vtx1.fin4 +
         <<vtx1.fin5 +
         <<vtx1.rest;

vtx = NORMVTX * (vtxpole+vtxfin);

Print["... QUARK SELF ENERGIES"]

qsepole = 1/eps * <<se1.eps1
qsefin = <<se1.fin1 +
         <<se1.fin2 +
         <<se1.rest;

qse = NORMQSE * (qsepole+qsefin);

Print["AND ..."]

sum = Expand[sqed + box + vtx + qse];

Print["... EXPAND IN EPS"]
res = Expand[Normal[Series[sum,{eps,0,0}]]];

Print["... CANCEL POLES"]

pole = Coefficient[res,1/eps];
pole1 = pole /. Log[x] ->0;
pole12 = PowerExpand[FullSimplify[Coefficient[pole,Log[x]] /. 
           {Sqrt[(-4m^2+s)/s]->Sqrt[s-4m^2]/Sqrt[s]}]];
Print["... ... ... Log(x) 1/eps = ", pole12] 

pole11 = FullSimplify[pole1 /. s->-t1-u1];
Print["... ... ... 1/eps = ", pole11]

(*

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
common >> svqedunp.pre;

Print["... Zeta(2)"]
(FullSimplify[(fin1 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) zeta2 >> svqedunp.f1;

Print["... Log(-t1/m^2) Log(x)"]
(FullSimplify[(fin2 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-t1/m^2] Log[x] >> svqedunp.f2;

Print["... Log(-u1/m^2) Log(x)"]
(FullSimplify[(fin3 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-u1/m^2] Log[x] >> svqedunp.f3;

Print["... Li2(t/m^2)"]
(FullSimplify[(fin4 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[t/m^2] >> svqedunp.f4;

Print["... Li2(u/m^2)"]
(FullSimplify[(fin5 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[u/m^2] >> svqedunp.f5;

Print["... Log(-t1/m^2)"]
(FullSimplify[(fin6 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-t1/m^2] >> svqedunp.f6;

Print["... Log(-u1/m^2)"]
(FullSimplify[(fin7 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-u1/m^2] >> svqedunp.f7;

Print["... Log(x) Log(1-x)"]
(FullSimplify[(fin8 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x] Log[1-x] >> svqedunp.f8;

Print["... Log(x) Log(1+x)"]
(FullSimplify[(fin9 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x] Log[1+x] >> svqedunp.f9;

Print["... Li2(x)"]
(FullSimplify[(fin10 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[x] >> svqedunp.f10;

Print["... Li2(-x)"]
(FullSimplify[(fin11 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[-x] >> svqedunp.f11;

Print["... Log(x)^2"]
(FullSimplify[(fin12 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x]^2 >> svqedunp.f12;

Print["... Log(x)"]
(FullSimplify[(fin13 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x] >> svqedunp.f13;

Print["... Log(delta)"]
(FullSimplify[(logdel /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[delta] >> svqedunp.del;

Print["... `non special'"]
(FullSimplify[(rest /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) >> svqedunp.non;

Print["GENERATE FORTRAN OUTPUT"]
in = <<svqedunp.pre
FortranForm[in] >> svqedupre.f;
in = <<svqedunp.f1
FortranForm[in] >> svqeduf1.f;
in = <<svqedunp.f2
FortranForm[in] >> svqeduf2.f;
in = <<svqedunp.f3
FortranForm[in] >> svqeduf3.f;
in = <<svqedunp.f4
FortranForm[in] >> svqeduf4.f;
in = <<svqedunp.f5
FortranForm[in] >> svqeduf5.f;
in = <<svqedunp.f6
FortranForm[in] >> svqeduf6.f;
in = <<svqedunp.f7
FortranForm[in] >> svqeduf7.f;
in = <<svqedunp.f8
FortranForm[in] >> svqeduf8.f;
in = <<svqedunp.f9
FortranForm[in] >> svqeduf9.f;
in = <<svqedunp.f10
FortranForm[in] >> svqeduf10.f;
in = <<svqedunp.f11
FortranForm[in] >> svqeduf11.f;
in = <<svqedunp.f12
FortranForm[in] >> svqeduf12.f;
in = <<svqedunp.f13
FortranForm[in] >> svqeduf13.f;
in = <<svqedunp.del
FortranForm[in] >> svqedudel.f;
in = <<svqedunp.non
FortranForm[in] >> svqedunon.f;

*)

