(* ::Package:: *)

(* Load HEPMath package *)
Needs["HEPMath`"]
DistributeDefinitions["HEPMath`Lorentz`"];
DistributeDefinitions["HEPMath`Tensors`"];

(* Declare external momenta. *)
DeclareLorentzVectors[q,k1,p1,p2,k2,l];
DistributeDefinitions[q,k1,p1,p2,k2,l];

(* Declare real parameters + kinematics *)
DeclareReal[gs,e,vQ,aQ,eL,eH,m2,q2];
DeclareReal[s,sp,s3,s4,s5,t,tp,tpsp,t1,u,up,u1,u5,u6,u7];

norm={s-> sp+q2,s4-> sp+t1+u1,t-> t1+m2,u->u1+m2,u1p->u1-q2};
massSub={Sqr[p1]-> m2,Sqr[-p1]-> m2,Sqr[p2]-> m2,Sqr[-p2]-> m2,Sqr[q]-> q2,Sqr[-q]-> q2,Sqr[k1]-> 0,Sqr[-k1]-> 0,Sqr[k2]-> 0,Sqr[-k2]-> 0};
(* color factors *)
normColor={Kg\[Gamma]-> 1/(NC^2-1),Kq\[Gamma]-> 1/NC,CA->NC,CF-> (NC^2-1)/(2NC),NC-> 3};
normColor=(First@#-> (Last@#/.normColor))&/@normColor;

swapt1u1[e_]:=e//.{t1-> vu1}//.{u1-> t1}//.{vu1->u1};

(* debug tools *)
getAllSymbols=e\[Function] DeleteDuplicates[Reap[Map[If[Head[#]==Symbol,Sow[#]]&,e,Infinity]][[2]][[1]]];

DeclareRealHEPTensor[{proj[\[Gamma]][G],proj[\[Gamma]][L],proj[\[Gamma]][A],proj[Z][G],proj[Z][L],proj[g][G],proj[g][L]},{Lorentz,Lorentz}];
DeclareHEPTensor[{proj[\[Gamma]][P],proj[Z][P],proj[g][P]},{Lorentz,Lorentz}];

proj[\[Gamma]][G][\[Mu]_,\[Mu]p_]:=-Eta[\[Mu],\[Mu]p];
proj[\[Gamma]][L][\[Mu]_,\[Mu]p_]:=-4q2/sp^2 k1[\[Mu]]k1[\[Mu]p];
proj[\[Gamma]][P][\[Mu]_,\[Mu]p_]:=I LorentzContract@HEPMultiply[Eps[\[Mu],\[Mu]p,\[Rho],\[Sigma]] q[\[Rho]] k1[\[Sigma]]]/sp
proj[\[Gamma]][A][\[Mu]_,\[Mu]p_]:=0

proj[Z][G][\[Mu]_,\[Mu]p_]:=proj[\[Gamma]][G][\[Mu],\[Mu]p];
proj[Z][L][\[Mu]_,\[Mu]p_]:=proj[\[Gamma]][L][\[Mu],\[Mu]p];
proj[Z][P][\[Mu]_,\[Mu]p_]:=proj[\[Gamma]][P][\[Mu],\[Mu]p];

proj[g][G][\[Nu]_,\[Nu]p_]:=-Eta[\[Nu],\[Nu]p];
proj[g][L][\[Nu]_,\[Nu]p_]:=proj[g][G][\[Nu],\[Nu]p]
proj[g][P][\[Nu]_,\[Nu]p_]:=2I LorentzContract@HEPMultiply[Eps[\[Nu],\[Nu]p,\[Rho],\[Sigma]] k1[\[Rho]] q[\[Sigma]]]/sp;




(* remove EpsDot in favour of SDot and HDot; based on HVBM(Comm.Math.Phys. Volume 52,Number 1,11-38), TRACER and Wikipedia *)
Module[{f,a1,a2,a3,a4,b1,b2,b3,b4,cache,replace,rest,replace3},
(* master formula *)
f[ps_,qs_]:=Module[{l,mus,mups,d},
l=Length[ps];
mus=Table[Unique[],{l}];
mups=Table[Unique[],{l}];
d=-Det[Table[Eta[mus[[k]],mups[[n]]]-EtaHat[mus[[k]],mups[[n]]],{k,l},{n,l}]];
(4-l)!HEPMultiply@@Join[{d},(e\[Function](e[[1]])[(e[[2]])])/@Transpose[{ps,mus}],(e\[Function](e[[1]])[(e[[2]])])/@Transpose[{qs,mups}]]
];
(* cache elements *)
cache={
EpsDot[p1_][mu_,nu_,rho_]^2:>Evaluate[LorentzContract@HEPExpand@f[{a1},{a1}]/.{a1->p1}],
EpsDot[p1_][mu_,nu_,rho_]EpsDot[k1_][mu_,nu_,rho_]:>Evaluate[LorentzContract@HEPExpand@f[{a1},{b1}]/.{a1->p1,b1->k1}],
EpsDot[p1_,p2_][mu_,nu_]^2:>Evaluate[LorentzContract@HEPExpand@f[{a1,a2},{a1,a2}]/.{a1->p1,a2->p2}],
EpsDot[p1_,p2_][mu_,nu_]EpsDot[k1_,k2_][mu_,nu_]:>Evaluate[LorentzContract@HEPExpand@f[{a1,a2},{b1,b2}]/.{a1->p1,a2->p2,b1->k1,b2->k2}],
EpsDot[p1_,p2_,p3_][mu_]^2:>Evaluate[LorentzContract@HEPExpand@f[{a1,a2,a3},{a1,a2,a3}]/.{a1->p1,a2->p2,a3->p3}],
EpsDot[p1_,p2_,p3_][mu_]EpsDot[k1_,k2_,k3_][mu_]:>Evaluate[LorentzContract@HEPExpand@f[{a1,a2,a3},{b1,b2,b3}]/.{a1->p1,a2->p2,a3->p3,b1->k1,b2->k2,b3->k3}],
EpsDot[p1_,p2_,p3_,p4_]^2:>Evaluate[LorentzContract@HEPExpand@f[{a1,a2,a3,a4},{a1,a2,a3,a4}]/.{a1->p1,a2->p2,a3->p3,a4->p4}],
EpsDot[p1_,p2_,p3_,p4_]EpsDot[k1_,k2_,k3_,k4_]:>Evaluate[LorentzContract@HEPExpand@f[{a1,a2,a3,a4},{b1,b2,b3,b4}]/.{a1->p1,a2->p2,a3->p3,a4->p4,b1->k1,b2->k2,b3->k3,b4->k4}]
};
(* handle uncontracted *)
rest={
Eps[nus__]Eps[nups__]:> Module[{l,mus,mups,d},
l=4;
mus={nus};
mups={nups};
d=-Det[Table[Eta[mus[[k]],mups[[n]]]-EtaHat[mus[[k]],mups[[n]]],{k,l},{n,l}]];
(4-l)!HEPMultiply[d]
]
};
(* replace all *)
replace[e_]:=e/.{
Sqr[EpsDot[p1_,p2_,p3_]]:>Module[{mu},mu=Unique[];EpsDot[p1,p2,p3][mu]^2],
SDot[EpsDot[p1_,p2_,p3_],EpsDot[k1_,k2_,k3_]]:>Module[{mu},mu=Unique[];EpsDot[p1,p2,p3][mu]EpsDot[k1,k2,k3][mu]]
}/.cache/.rest;
(* function to call *)
Options[RemoveEpsDot]={"AutoParallelize"-> True};
RemoveEpsDot[ex_,OptionsPattern[]]:=Module[{e},
e=ex;
If[FreeQ[e,EpsDot]&&FreeQ[e,Eps],Return[e]];
e=SortEps@e;
If[True===OptionValue["AutoParallelize"]&&Head[e]===Plus,
e=Parallelize[Sum[replace[e[[k]]],{k,Length@e}]],
e=replace[e]];
LorentzContract@HEPExpand@e
];
(* handle 3 epsilons *)
replace3[e_]:=e/.{
(* 2 free indices *)
EpsDot[p1_,p2_][mu_,mup_] EpsDot[k1_,k2_,k3_][mu_] EpsDot[q1_,q2_,q3_][mup_]:>Module[{r,s},
r=Unique[{r1,r2}];s=Unique[{s1,s2,s3}];
EpsDot[k1,k2,k3][mu](Eps[r[[1]],r[[2]],mu,mup]Eps[s[[1]],s[[2]],s[[3]],mup]/.rest)p1[r[[1]]]p2[r[[2]]]q1[s[[1]]]q2[s[[2]]]q3[s[[3]]] ],

(* 3 free indices *)
EpsDot[p1_][mu_,mup_,nu_] EpsDot[k1_,k2_][mu_,mup_] EpsDot[q1_,q2_,q3_][nu_]:>Module[{r,s},
r=Unique[];s=Unique[{s1,s2,s3}];
EpsDot[k1,k2][mu,mup](Eps[r,mu,mup,nu]Eps[s[[1]],s[[2]],s[[3]],nu]/.rest)p1[r]q1[s[[1]]]q2[s[[2]]]q3[s[[3]]] ],

EpsDot[p1_][mu_,mup_,nu_] EpsDot[k1_,k2_][mup_,nu_] EpsDot[q1_,q2_,q3_][mu_]:>Module[{r,s},
r=Unique[];s=Unique[{s1,s2}];
EpsDot[q1,q2,q3][mu](Eps[r,mu,mup,nu]Eps[s[[1]],s[[2]],mup,nu]/.rest)p1[r]k1[s[[1]]]k2[s[[2]]] ],

EpsDot[p1_,p2_][mu_,mup_] EpsDot[k1_,k2_][mup_,nu_] EpsDot[q1_,q2_][mu_,nu_]:>Module[{r,s},
r=Unique[{r1,r2}];s=Unique[{s1,s2}];
EpsDot[p1,p2][mu,mup](Eps[r[[1]],r[[2]],mup,nu]Eps[s[[1]],s[[2]],mu,nu]/.rest)k1[r[[1]]]k2[r[[2]]]q1[s[[1]]]q2[s[[2]]] ],

(* 4 free indices *)
Eps[mu_,mup_,nu_,nup_] EpsDot[p1_,p2_][mu_,mup_] EpsDot[k1_,k2_][nu_,nup_]:>Module[{r,s},
r=Unique[];s=Unique[];
EpsDot[p1,p2][mu,mup](Eps[mu,mup,nu,nup]Eps[r,s,nu,nup]/.rest)k1[r]k2[s]]
};
Options[Remove3Eps]={"AutoParallelize"-> True};
Remove3Eps[ex_,OptionsPattern[]]:=Module[{e},
e=ex;
If[FreeQ[e,EpsDot]&&FreeQ[e,Eps],Return[e]];
e=SortEps@e;
If[True===OptionValue["AutoParallelize"]&&Head[e]===Plus,
e=Parallelize[Sum[replace3[e[[k]]],{k,Length@e}]],
e=replace3[e]];
If[True===OptionValue["AutoParallelize"]&&Head[e]===Plus,
e=Parallelize[Sum[LorentzContract@HEPExpand[e[[k]]],{k,Length@e}]],
e=LorentzContract@HEPExpand[e]];
e
];
]


meLO[t1][Gint_][\[Mu]_,\[Nu]_]:=Gint[\[Mu]].((Gs[k1-p2]+Sqrt[m2] GI)/t1).Ga[\[Nu]];
meLO[u1][Gint_][\[Mu]_,\[Nu]_]:=Ga[\[Nu]].((Gs[p1-k1]+Sqrt[m2] GI)/u1).Gint[\[Mu]];

(*Gint[\[Gamma]][\[Mu]_]:=Ga@\[Mu];
Gint[Z][\[Mu]_]:=aqp (GI+G5).Ga[\[Mu]].(GI-G5)+ vqp Ga[\[Mu]];*)
Gint\[Gamma][\[Mu]_]:=Ga@\[Mu];
GintZ1[\[Mu]_]:=aqp Ga[\[Mu]];
GintZ2[\[Mu]_]:=aqp G5.Ga[\[Mu]];
GintZ3[\[Mu]_]:=aqp Ga[\[Mu]].(-G5);
GintZ4[\[Mu]_]:=aqp G5.Ga[\[Mu]].(-G5);
GintZ5[\[Mu]_]:=vqp Ga[\[Mu]];

BornVectorSDots={
SDot[q,k1]->sp/2,SDot[p1,p2]->(sp+q2-2m2)/2,
SDot[k1,p2]-> -t1/2,SDot[q,p1]->-(t1-q2)/2,
SDot[p1,k1]-> -u1/2,SDot[q,p2]-> -(u1-q2)/2,
HDot[a_,b_]:> 0
};

getBornLine[V_,ch1_,Gint1_,ch2_,Gint2_][k_]:=HEPMultiply[DiracTr[(Gs[p1]+GI Sqrt@m2).meLO[ch1][Gint1][\[Mu],\[Nu]].(Gs[p2]-GI Sqrt@m2).(Reverse@meLO[ch2][Gint2][\[Mu]p,\[Nu]p])],proj[V][k][\[Mu],\[Mu]p],proj[g][k][\[Nu],\[Nu]p]]

parseBorn[ex_]:=Module[{e},
e=ex;
PrintTemporary["HEPExpand ..."];
e=HEPExpand@e;
PrintTemporary["CalcDiracTraces ..."];
(*e=e/.Plus->List;
e=Parallelize[MapIndexed[(CalcDiracTraces@#1)&,e]];
e=Total@e;*)
e=ParallelMap[CalcDiracTraces,e];
e=e/.massSub/.BornVectorSDots/.{sp-> -t1-u1};
PrintTemporary["HEPExpand ..."];
e=HEPExpand@e;
PrintTemporary["LorentzContract ..."];
e=LorentzContract@e;
e=e/.massSub/.BornVectorSDots/.{sp-> -t1-u1};
PrintTemporary["RemoveEpsDot ..."];
e=RemoveEpsDot@e;
PrintTemporary["Remove3Eps ..."];
e=Remove3Eps@e;
PrintTemporary["Simplify ..."];
e=Simplify[e/(8)/.{Dim-> 4+\[Epsilon]}/.norm/.massSub/.BornVectorSDots/.{sp-> -t1-u1}]
]


Module[{Gints,l},
Gints={GintZ1,GintZ2,GintZ3,GintZ4,GintZ5};
l=Tuples[{{Z},{t1,u1},Gints,{t1,u1},Gints}];
getBZQED[k_]:=Module[{ll},
ll=Parallelize@MapIndexed[(Print["n = ",First@#2];parseBorn[(getBornLine@@#1)[k]])&,l];
ll=Total@ll;
ll={Coefficient[ll,vqp,2],Coefficient[ll,vqp aqp],Coefficient[ll,aqp,2]};
Collect[#,\[Epsilon],FullSimplify]&/@ll
];
]


{B[Z][VVQED][G],B[Z][VAQED][G],B[Z][AAQED][G]}=getBZQED[G]


Export["~/Physik/PhD/MMa/data/BZG.m",{B[Z][VVQED][G],B[Z][VAQED][G],B[Z][AAQED][G]}]
