Print["SOFT + VIRTUAL - CROSS SECTION : OK PART"]
Print["========================================"]
Print[""]
Print["(POLARIZED)"]
Print[" "]

(*DEFINITIONS*)

BQED = (t1^2+u1^2)/t1^2/u1^2 (2m^2 s - t1 u1);

Seps = (4Pi)^(-2-eps/2);

F = 1/16/Pi G^4 EH^2 Seps/Gamma[1+eps/2] *
    Exp[eps/2(EulerGamma-Log[4Pi])] *
    ((t1 u1 - s m^2)/mu^2/s)^(eps/2) *
    (DELTA^2/mu^2/m^2)^(eps/2) * 
    BQED;

NORMSOFT = 4 KGG NC^2 CF F;

NORMFACT = 1/4 KGG Pi Seps/Gamma[1+eps/2] *
    ((t1 u1 - s m^2)/mu^2/s)^(eps/2) * NC * CF * EH^2 * G^2 * 8 * BQED;

NORMREN = NORMFACT;

Ceps = 1/16/Pi^2 Exp[eps/2(EulerGamma-Log[4Pi])] (m^2/mu^2)^(eps/2);

NORMBOX1 = G^4 EH^2 Ceps KGG (-1/2) NC^2 CF 1/4 Pi Seps *
           ((t1 u1 - s m^2)/mu^2/s)^(eps/2) * 1/Gamma[1+eps/2];

NORMBOX2 = G^4 EH^2 Ceps KGG NC^2 CF 1/2  1/4 Pi Seps *
           ((t1 u1 - s m^2)/mu^2/s)^(eps/2) * 1/Gamma[1+eps/2];

NORMVTX1 = NORMBOX1;   (* NO MULTIPLICATION NOW - ONLY GLUON VTX CONTR. !! *)

NORMVTX2 = NORMBOX2;   (* NO MULTIPLICATION HERE - ONLY ONEGRAPH !! *) 

NORMGSE = G^4 EH^2 Ceps KGG (-1) 1/2 1/2 1/4 Pi Seps *
           ((t1 u1 - s m^2)/mu^2/s)^(eps/2) * 1/Gamma[1+eps/2] CF NC;

(*SOFT CROSS SECTION*)

Print["CALCULATE SOFT CROSS SECTION"]

sqed = NORMSOFT * ( 4/eps^2 + 2/eps (Log[-t1/m^2] - Log[-u1/m^2]) +
         Log[x] (Log[-u1/m^2] - Log[-t1/m^2]) +
         1/2 (Log[-u1/m^2] - Log[-t1/m^2])^2 - 1/2 Log[x]^2 -
         3/2 zeta2 + Li2[1-t1/x/u1] - Li2[1-u1/x/t1] - 
         (s-2m^2)/Sqrt[s^2-4s m^2] * 
         ( -(2/eps) Log[x] + 2Li2[x] + 2 Li2[-x] - 
         Log[x]^2 +2 Log[x] Log[1-x^2] -zeta2));

Print["CALCULATE FACTORIZATION CROSS SECTION (SOFT PART)"]

fact = NORMFACT * (-G^2/8/Pi^2) (2/eps + (EulerGamma - Log[4Pi] + 
                                          Log[muf^2/mu^2])) *	
 		(2 NC (Log[DELTA/m^2] - Log[-u1/m^2]) +
                   11/6 NC - 1/3 NLF)
               

Print["CALCULATE COUNTERTERM FOR ALPS RENORMALIZATION"]

renom = NORMREN * G^2/4/Pi/4/Pi ( (2/eps+EulerGamma - Log[4Pi] + 
                   Log[mur^2/mu^2]) ( 11/3 NC - 2/3 (NLF+1)) -
                   2/3 Log[m^2/mur^2]);

Print["ADD RENORMALIZED POLE PARTS AND FINITE PIECES OF ..."]

(* BOX I *)

Print["... BOX I"]

box1pole = 1/eps * <<box1pol.pole;
box1fin = <<box1pol.fin1 +
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

box1 = NORMBOX1 * (box1pole + box1fin);

(* BOX II *)

Print["... BOX II"]

box2pole2 = 1/eps^2 * <<box2pol.eps2
box2pole1 = 1/eps * <<box2pol.eps1;
box2fin = <<box2pol.fin1 +
          <<box2pol.fin2 +
          <<box2pol.fin3 +
          <<box2pol.fin4 +
          <<box2pol.fin5 +
          <<box2pol.fin6 +
          <<box2pol.fin7 +
          <<box2pol.fin8 +
          <<box2pol.rest;

box2 = NORMBOX2 * (box2pole2 + box2pole1 + box2fin);

Print["... VERTEX I"]

vtx1pole = 1/eps 1/2 * <<vtx1pol.eps1;  (* 1/2 Bq. WE NEED UNRENOM. VTX HERE ! 
                                         RENORM. ALREADY INCLUDED IN ALPS ! *)
vtx1fin = <<vtx1pol.fin1 +
          <<vtx1pol.fin2 +
          <<vtx1pol.fin3 +
          <<vtx1pol.fin4 +
          <<vtx1pol.fin5 +
          <<vtx1pol.rest;            (* rest = rest.bare HERE !! *) 

vtx1 = NORMVTX1 * (vtx1pole+vtx1fin);

Print["... VERTEX II"]

vtx2pole2 = 1/eps^2 * <<vtx2pol.eps2;
vtx2pole1 = 1/eps * <<vtx2pol.eps1;
vtx2fin = <<vtx2pol.fin1 +
          <<vtx2pol.fin2 +
          <<vtx2pol.fin3 +
          <<vtx2pol.fin4 +
          <<vtx2pol.fin5 +
	  <<vtx2pol.fin6 +
          <<vtx2pol.fin7 +
          <<vtx2pol.fin8 +
          <<vtx2pol.rest;

vtx2 = NORMVTX2 * (vtx2pole2 + vtx2pole1 + vtx2fin);

Print["... GLUON SELF ENERGIES"]

gsepole = 1/eps * <<gsepol.eps;
gsefin = <<gsepol.rest ;

gse = NORMGSE * (gsepole+gsefin);

Print["AND ..."]

sum = Expand[sqed + box1 + vtx1 + box2 + vtx2 + gse + renom + fact];

Print["... EXPAND IN EPS"]
res = Expand[Normal[Series[sum,{eps,0,0}]]];

Print["... CANCEL POLES"]

pole = Coefficient[res,1/eps^2];
pole2 = FullSimplify[pole /. s->-t1-u1];
Print["... ... ... 1/eps^2 = ", pole2] 

pole = Coefficient[res,1/eps] /. {Log[-u1/m^2]->logu1,Log[-t1/m^2]->logt1};

pole14 = PowerExpand[FullSimplify[Coefficient[pole,Log[x]] /. 
               {Sqrt[(-4m^2+s)/s]->Sqrt[s-4m^2]/Sqrt[s]}]];
Print["... ... ... Log(x) 1/eps = ", pole14] 

poleh = pole /. Log[x]->0;
pole13 = FullSimplify[Coefficient[poleh,logt1] /. s->-t1-u1];
Print["... ... ... Log(-t1/m^2) 1/eps = ", pole13] 

pole12 = FullSimplify[Coefficient[poleh,logu1] /. s->-t1-u1];
Print["... ... ... Log(-u1/m^2) 1/eps = ", pole12]

pole = poleh /. {logt1->0,logu1->0}
pole11 = FullSimplify[PowerExpand[pole] /. s->-t1-u1];
Print["... ... ... 1/eps = ", pole11] 


Print["... EPS -> 0"]

finite = (res /. {1/eps^2 ->0, 1/eps->0}) /. eps->0;

Print["... CANCEL EulerGammas"]

(* NOTE : EXPLICITLY CHECKED ... VERY DIFFICULT INSIDE MATH !!*)
(*
eg =  PowerExpand[FullSimplify[Coefficient[finite,EulerGamma] /. 
           {Sqrt[(-4m^2+s)/s]->Sqrt[s-4m^2]/Sqrt[s]}]];
*)
eg = 0;
Print["... ... ... EulerGamma = ", eg] 

help = finite /. {EulerGamma->0, Log[4Pi]->L4Pi,Log[Pi]->L4Pi-2Log[2],
                  Log[4]->2Log[2]};
finite = Expand[help];

Print["... CANCEL Log[4Pi]"]

(* NOTE : EXPLICITLY CHECKED ... VERY DIFFICULT INSIDE MATH !!*)
(*
l4pi =  PowerExpand[FullSimplify[Coefficient[finite,L4Pi] /. 
           {Sqrt[(-4m^2+s)/s]->Sqrt[s-4m^2]/Sqrt[s]}]];
*)
l4pi = 0;
Print["... ... ... Log(4Pi) = ", l4pi] 

help = finite /. {L4Pi->0,Sqrt[(-4m^2+s)/s]->Sqrt[s-4m^2]/Sqrt[s],
                  Log[-u1/m^2]->logu1,Log[-t1/m^2]->logt1};

common = CF NC^2 EH^2 G^4 KGG / Pi^3;
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

Print["... Log(-t1/m^2) Log(-u1/m^2)"]

help = Coefficient[finite,logt1 logu1];
fin6 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /.  logt1 logu1->0;
finite = help;

Print["... Log(-t1/m^2)^2"]

help = Coefficient[finite,logt1^2];
fin7 = (FullSimplify[help /. s->-t1-u1] /. {t1+u1->-s,1/(t1+m^2)->1/t,
             1/(u1+m^2)->1/u,1/(t1+m^2)^2->1/t^2,1/(u1+m^2)^2->1/u^2});

help = finite /. logt1^2 ->0;
finite = help;

Print["... Log(-u1/m^2)^2"]

help = Coefficient[finite,logu1^2];
fin8 = (FullSimplify[help /. s->-t1-u1] /. {t1+u1->-s,1/(t1+m^2)->1/t,
             1/(u1+m^2)->1/u,1/(t1+m^2)^2->1/t^2,1/(u1+m^2)^2->1/u^2});

help = Expand[finite /. {logu1^2 ->0,Log[DELTA]->LLL + 2 Log[m]}];
finite = help;

Print["... Log(delta)^2"]

lll = Coefficient[finite,LLL^2];
logdel2 = (FullSimplify[lll /. s->-t1-u1] /. t1+u1->-s);

help = finite /. LLL^2->0;
finite = help;

Print["... Log(delta)"]

lll = Coefficient[finite,LLL];
logdel = (FullSimplify[lll /. s->-t1-u1] /. t1+u1->-s);

help = finite /. LLL->0;
finite = help;

Print["... Log(-t1/m^2)"]

help = Coefficient[finite,logt1];
fin9 = (FullSimplify[help /. s->-t1-u1] /. {t1+u1->-s,1/(t1+m^2)->1/t,
             1/(u1+m^2)->1/u,1/(t1+m^2)^2->1/t^2,1/(u1+m^2)^2->1/u^2});

help = finite /. logt1 ->0;
finite = help;

(* CHOOSE HERE EXPLICITLY mu_r = mu_f !! *)

Print["... Log(muf^2/m^2)"]

finite = Expand[Expand[help /. mur->muf] /. Log[muf]->LLL/2+Log[m]];

help = Coefficient[finite,LLL];
logmuf = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. LLL->0;
finite = Expand[help];

Print["... Log(-u1/m^2)"]

help = Coefficient[finite,logu1];
fin10 = (FullSimplify[help /. s->-t1-u1] /. {t1+u1->-s,1/(t1+m^2)->1/t,
             1/(u1+m^2)->1/u,1/(t1+m^2)^2->1/t^2,1/(u1+m^2)^2->1/u^2});

help = Expand[finite /. {logu1 ->0, Log[1-x^2] -> (Log[1-x] + Log[1+x])}];
finite = help;

Print["... Log(x) Log(1-x)"]

help = Coefficient[finite,Log[x] Log[1-x]];
fin11 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Log[x] Log[1-x] ->0;
finite = help;

Print["... Log(x) Log(1+x)"]

help = Coefficient[finite,Log[x] Log[1+x]];
fin12 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Log[x] Log[1+x] ->0;
finite = help;

Print["... Li2(x)"]

help = Coefficient[finite,Li2[x]];
fin13 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Li2[x]->0;
finite = help;

Print["... Li2(-x)"]

help = Coefficient[finite,Li2[-x]];
fin14 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Li2[-x]->0;
finite = help;

Print["... Log(x)^2"]

help = Coefficient[finite,Log[x]^2];
fin15 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Log[x]^2->0;
finite = help;

Print["... Log(x)"]

help = Coefficient[finite,Log[x]];
fin16 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Log[x]->0;
finite = help;

Print["... Li2(1-t1/x/u1)"]

help = Coefficient[finite,Li2[1-t1/x/u1]];
fin17 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Li2[1-t1/x/u1]->0;
finite = help;

Print["... Li2(1-u1/x/t1)"]

help = Coefficient[finite,Li2[1-u1/x/t1]];
fin18 = (FullSimplify[help /. s->-t1-u1] /. t1+u1->-s);

help = finite /. Li2[1-u1/x/t1]->0;
finite = help;

Print["AND FINALLY THE REMAINING TERMS WITHOUT ANY SPECIAL FUNCTIONS"]

Print["EXTRACT FERMION LOOP"]

floop = (FullSimplify[Coefficient[finite,1/NC] /. s->-t1-u1] /. t1+u1->-s)/NC;

help = finite /. 1/NC ->0;
finite = help;

rest = (FullSimplify[finite /. s->-t1-u1] /. t1+u1->-s);

Print["GENERATE OUTPUT FOR ..."]

Print["... COMMON PREFACTOR"]
common >> svokpol.pre;

Print["... Zeta(2)"]
(FullSimplify[(fin1 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) zeta2 >> svokpol.f1;

Print["... Log(-t1/m^2) Log(x)"]
(FullSimplify[(fin2 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-t1/m^2] Log[x] >> svokpol.f2;

Print["... Log(-u1/m^2) Log(x)"]
(FullSimplify[(fin3 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-u1/m^2] Log[x] >> svokpol.f3;

Print["... Li2(t/m^2)"]
(FullSimplify[(fin4 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[t/m^2] >> svokpol.f4;

Print["... Li2(u/m^2)"]
(FullSimplify[(fin5 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[u/m^2] >> svokpol.f5;

Print["... Log(-t1/m^2) Log(-u1/m^2)"]
(FullSimplify[(fin6 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-t1/m^2] Log[-u1/m^2] >> svokpol.f6;

Print["... Log(-t1/m^2)^2"]
(FullSimplify[(fin7 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-t1/m^2]^2 >> svokpol.f7;

Print["... Log(-u1/m^2)^2"]
(FullSimplify[(fin7 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-u1/m^2]^2 >> svokpol.f8;

Print["... Log(-t1/m^2)"]
(FullSimplify[(fin9 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-t1/m^2] >> svokpol.f9;

Print["... Log(-u1/m^2)"]
(FullSimplify[(fin10 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[-u1/m^2] >> svokpol.f10;

Print["... Log(x) Log(1-x)"]
(FullSimplify[(fin11 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x] Log[1-x] >> svokpol.f11;

Print["... Log(x) Log(1+x)"]
(FullSimplify[(fin12 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x] Log[1+x] >> svokpol.f12;

Print["... Li2(x)"]
(FullSimplify[(fin13 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[x] >> svokpol.f13;

Print["... Li2(-x)"]
(FullSimplify[(fin14 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[-x] >> svokpol.f14;

Print["... Log(x)^2"]
(FullSimplify[(fin15 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x]^2 >> svokpol.f15;

Print["... Log(x)"]
(FullSimplify[(fin16 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[x] >> svokpol.f16;

Print["... Li2(1-t1/x/u1)"]
(FullSimplify[(fin17 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[1-t1/x/u1] >> svokpol.f17;

Print["... Li2(1-u1/x/t1)"]
(FullSimplify[(fin18 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Li2[1-u1/x/t1] >> svokpol.f18;

Print["... Log(delta)^2"]
(FullSimplify[(logdel2 /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[delta]^2 >> svokpol.del2;

Print["... Log(delta)"]
(FullSimplify[(logdel /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[delta] >> svokpol.del;

Print["... Log(mu^2/m^2)"]
(FullSimplify[(logmuf /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) Log[delta] >> svokpol.muf;

Print["... `fermion loop'"]
(FullSimplify[(floop /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) >> svokpol.flp;

Print["... `non special'"]
(FullSimplify[(rest /. sbar^2->s(s-4m^2)) /. s->-t1-u1] 
              /. t1+u1->-s) >> svokpol.non;

Print["GENERATE FORTRAN OUTPUT"]
in = <<svokpol.pre
FortranForm[in] >> svokppre.f;
in = <<svokpol.f1
FortranForm[in] >> svokpf1.f;
in = <<svokpol.f2
FortranForm[in] >> svokpf2.f;
in = <<svokpol.f3
FortranForm[in] >> svokpf3.f;
in = <<svokpol.f4
FortranForm[in] >> svokpf4.f;
in = <<svokpol.f5
FortranForm[in] >> svokpf5.f;
in = <<svokpol.f6
FortranForm[in] >> svokpf6.f;
in = <<svokpol.f7
FortranForm[in] >> svokpf7.f;
in = <<svokpol.f8
FortranForm[in] >> svokpf8.f;
in = <<svokpol.f9
FortranForm[in] >> svokpf9.f;
in = <<svokpol.f10
FortranForm[in] >> svokpf10.f;
in = <<svokpol.f11
FortranForm[in] >> svokpf11.f;
in = <<svokpol.f12
FortranForm[in] >> svokpf12.f;
in = <<svokpol.f13
FortranForm[in] >> svokpf13.f;
in = <<svokpol.f14
FortranForm[in] >> svokpf14.f;
in = <<svokpol.f15
FortranForm[in] >> svokpf15.f;
in = <<svokpol.f16
FortranForm[in] >> svokpf16.f;
in = <<svokpol.f17
FortranForm[in] >> svokpf17.f;
in = <<svokpol.f18
FortranForm[in] >> svokpf18.f;
in = <<svokpol.del2
FortranForm[in] >> svokpdel2.f;
in = <<svokpol.del
FortranForm[in] >> svokpdel.f;
in = <<svokpol.muf
FortranForm[in] >> svokpmuf.f
in = <<svokpol.flp
FortranForm[in] >> svokpflp.f;
in = <<svokpol.non
FortranForm[in] >> svokpnon.f;
