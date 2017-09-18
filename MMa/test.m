<<tracer11.m
AntiCommute[off];
VectorDimension[n];

proj[V][FG][mu_, mup_] := -({mu}.{mup});
proj[V][FL][mu_, mup_] := -4 q2/sp^2 S[k1,{mu}] S[k1,{mup}];
proj[V][x2g1][mu_, mup_] := I Eps[{mu}, {mup}, q, k1] /sp
proj[V][xF3][mu_, mup_] := proj[V][x2g1][mu, mup]
proj[V][gG][mu_, mup_] := -proj[V][FG][mu, mup]
proj[V][gL][mu_, mup_] := -proj[V][FL][mu, mup]

proj[g][F][nu_, nup_]   := -({nu}.{nup});
proj[g][g][nu_, nup_] := 2 I Eps[{nu}, {nup}, k1, q] /sp;

Gint[V][mu_] := {{mu}};
Gint[KörnerA][mu_] := {(U+G5),{mu},(U-G5)};
Gint[Naive1A][mu_] := {{mu},G5};
Gint[Naive2A][mu_] := {G5,{mu}};

(* matrix elements *)
meLO[t1][Gint_][mu_, nu_] :=  Gint[mu] ~Join~ {(k1-p2 + Sqrt@m2 U), {nu}}
meLO[u1][Gint_][mu_, nu_] :=  {{nu},(p1-k1 + Sqrt@m2 U)} ~Join~ Gint[mu];

Module[{line,linep,l,zwi,r,t},
line[cur1_,cur2_] := {(p1 + Sqrt@m2 U)} ~Join~ meLO[t1][Gint[cur1]][mu, nu] ~Join~ {(p2 - Sqrt@m2 U)} ~Join~ Reverse[meLO[u1][Gint[cur2]][mup, nup]];

(*
Spur[l[0]];
r[Naive1A,Naive1A] = ContractEpsGamma@GammaTrace@@Join[{l@0},line[Naive1A,Naive1A]];
Print@Short[r[Naive1A,Naive1A]];
*)

linep = line[KörnerA,KörnerA];
Print@linep;
r[KörnerA,KörnerA]={};
Do[
 Print["k = ",k];
 Spur[l[k]];
 zwi = GammaTrace@@(Join[{l@k},linep]);
 AppendTo[r[KörnerA,KörnerA],ContractEpsGamma@zwi];
 linep = RotateLeft[linep];
,{k,Length@linep}];

Print["----"];
(*
Print@Short[r[KörnerA,KörnerA][[1]]];
Print@Short[r[KörnerA,KörnerA][[2]]];
Print@Short[r[KörnerA,KörnerA][[3]]];
Print@Short[r[KörnerA,KörnerA][[5]]];
Print@Short[r[KörnerA,KörnerA][[9]]];
Print[Function[f,0 === Expand[e-r[Naive1A,Naive1A]]]/@r[KörnerA,KörnerA]]

Print["----"];*)

t[e_,f_]:=Module[{r},
 r = Null;
 Do[
  If[0 === Expand[e - v*f],r=v;Return[];];
 ,{v,{1,-1,2,1/2,-1/2,-2}}];
 Return@If[Null === r,False,r];
];
Print[Function[e,Function[f,t[e,f]]/@r[KörnerA,KörnerA]]/@r[KörnerA,KörnerA]];

];
