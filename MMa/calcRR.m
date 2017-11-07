<<tracer11.m
AntiCommute[off];
VectorDimension[n];

(* setup *)
meL = {{s4,t1},{u7,t1},{s4,u1},{u6,u1},{u7,s3},{u6,s3},{u1,tp},{u7,tp}};
meT = Table[{meL[[k]],meL[[l]]},{k,1,Length@meL},{l,1,Length@meL}];
meT = Flatten[meT,1];
elems = Tuples[{{V,Apre,Apost},{V,Apre,Apost},meT}];
elems = Flatten[#,1]& /@ elems;
ls = l@@# & /@ elems;

Spur@@ls;
OnShell[on,{k1,k1,0},{q,q,q2},{p1,p1,m2},{p2,p2,m2},{k2,k2,0},
           {k1,q,sp/2},{k1,p2,-t1/2},{q,p2,-(u1-q2)/2},
           {k1,k2,-tp/2},{q,k2,-(up-q2)/2},{k2,p2,s3/2},{k2,p1,s4/2},{p1,p2,(s5-2 m2)/2},{k1,p1,-u6/2},{q,p1,-(u7-q2)/2}
       ];

proj[V][Pg][mu_, mup_] := -S[{mu},{mup}];
proj[V][Pk1k1][mu_, mup_] := -4 q2/sp^2 S[k1,{mu}] S[k1,{mup}];
proj[V][Peps][mu_, mup_] := I Eps[{mu}, {mup}, q, k1] /sp
proj[V][Pqq][mu_, mup_] := -1/q2 S[q,{mu}] S[q,{mup}];
proj[V][Pk1q][mu_, mup_] := 2/sp( S[k1,{mu}] S[q,{mup}] + S[q,{mu}] S[k1,{mup}]);

proj[g][F][nu_, nup_] := -({nu}.{nup});
proj[g][g][nu_, nup_] := 2 I Eps[{nu}, {nup}, k1, q] /sp;

Gint[V][mu_] := {{mu}};
Gint[Apost][mu_] := {{mu},G5};
Gint[Apre][mu_] := {G5,{mu}};

(* matrix elements *)
meNLOg[s4,t1][Gint_][mu_, ni_, no_] :=  Join[{{no},    (p1+k2 + Sqrt@m2 U)},Gint[mu],{( k1-p2 + Sqrt@m2 U),  {ni}}  ];
meNLOg[u7,t1][Gint_][mu_, ni_, no_] :=  Join[Gint[mu],{(p1-q  + Sqrt@m2 U),  {no},    ( k1-p2 + Sqrt@m2 U),  {ni}}  ];
meNLOg[s4,u1][Gint_][mu_, ni_, no_] :=  Join[{{no},    (p1+k2 + Sqrt@m2 U),  {ni},    (  q-p2 + Sqrt@m2 U)},Gint[mu]];
meNLOg[u6,u1][Gint_][mu_, ni_, no_] :=  Join[{{ni},    (p1-k1 + Sqrt@m2 U),  {no},    (  q-p2 + Sqrt@m2 U)},Gint[mu]];
meNLOg[u7,s3][Gint_][mu_, ni_, no_] :=  Join[Gint[mu],{(p1-q  + Sqrt@m2 U),  {ni},    (-k2-p2 + Sqrt@m2 U),  {no}}  ];
meNLOg[u6,s3][Gint_][mu_, ni_, no_] :=  Join[{{ni},    (p1-k1 + Sqrt@m2 U)},Gint[mu],{(-k2-p2 + Sqrt@m2 U),  {no}}  ];

me3g[ni_, no_, ng_] := (S[{ni},{no}]*S[(k1 + k2),{ng}] + S[{no},{ng}]*S[(-2 k2 + k1),{ni}] + S[{ng},{ni}]*S[(k2 - 2 k1),{no}] );
meNLOg[u1,tp][Gint_][mu_, nQ_] :=  Join[{{nQ},     (q -p2  + Sqrt@m2 U)},Gint[mu]];
meNLOg[u7,tp][Gint_][mu_, nQ_] :=  Join[Gint[mu], {(p1-q   + Sqrt@m2 U),   {nQ}} ];

(* calculate *)
applyProj[tr_,k_] := Module[{f},
(*WriteString[$Output,"."];*)
f = ContractEpsGamma[proj[V][k][mu,mup]*tr];
f = f//.{H[a_+b_,c_]:>H[a,c]+H[b,c],H[a_,c_+d_]:>H[a,c]+H[a,d],H[-a_,b_]:>-H[a,b],H[a_,-b_]:>-H[a,b]};
f = RemoveHatMomenta[f,q,k1,p2]/.{H[k2, p1]->k2hat2,H[k2, k2]->-k2hat2,H[p1, p1]->-k2hat2}; (*
f = f/.{Tracer`Private`eps[{a_, b_, c_, d_}]:>0(*epsi[a,b,c,d]*)}/.{Tracer`Private`eps[__]:>0}; *)
Return[f];
];

Clear@RR;

timing = {TimeUsed[]};
calcTr[e_,ind_] := Module[{cur1,cur2,ch1,ch2,mx1,mx2,line,tr,trF,trg,mapF,mapg},
WriteString[$Output,"elems[",ToString@First@ind,"] = ",ToString@e," "];
{cur1,cur2,ch1,ch2} = e;

mx1 = If[tp === Last@ch1, (meNLOg@@ch1)[Gint[cur1]][mu, nuQ ], (meNLOg@@ch1)[Gint[cur1]][mu, nui, nuo ]];
mx2 = If[tp === Last@ch2, (meNLOg@@ch2)[Gint[cur2]][mup,nuQp], (meNLOg@@ch2)[Gint[cur2]][mup,nuip,nuop]];

line =Join[{(p1 + Sqrt@m2 U)}, mx1, {(p2 - Sqrt@m2 U)}, Reverse[mx2/.{G5->-G5}]];

PrependTo[line,l@@e];
tr = GammaTrace@@line;
WriteString[$Output,"."];

If[tp === Last@ch1, tr = ContractEpsGamma[tr*(-S[{nuQ}, {nug }])*me3g[nui, nuo, nug ]]];
If[tp === Last@ch2, tr = ContractEpsGamma[tr*(-S[{nuQp},{nugp}])*me3g[nuip,nuop,nugp]]];

tr = ContractEpsGamma[tr*(-S[{nuo},{nuop}])];
WriteString[$Output,"."];
tr = Expand@tr;
WriteString[$Output,"."];

trF = ContractEpsGamma[proj[g][F][nui,nuip]*tr];
WriteString[$Output,"."];
mapF = ParallelMap[(#->applyProj[trF,#])&,{Pg,Pk1k1,Peps,Pqq,Pk1q}];
Do[(RR@@e)[F,k] = Evaluate[k/.mapF/.{Tracer`Private`eps[__]:>0}/.{H[k2, p1]->k2hat2,H[k2, k2]->-k2hat2,H[p1, p1]->-k2hat2}],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];
WriteString[$Output,"."];

trg = ContractEpsGamma[proj[g][g][nui,nuip]*tr];
WriteString[$Output,"."];
mapg = ParallelMap[(#->applyProj[trg,#])&,{Pg,Pk1k1,Peps,Pqq,Pk1q}];
Do[(RR@@e)[g,k] = Evaluate[k/.mapg/.{Tracer`Private`eps[__]:>0}/.{H[k2, p1]->k2hat2,H[k2, k2]->-k2hat2,H[p1, p1]->-k2hat2}],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];

(*
trF = ContractEpsGamma[proj[g][F][nui,nuip]*tr];
Do[(RR@@e)[F,k] = applyProj[trF,k],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];

trg = ContractEpsGamma[proj[g][g][nui,nuip]*tr];
Do[(RR@@e)[g,k] = applyProj[trg,k],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];
*)

AppendTo[timing,TimeUsed[]];
Write[$Output," ",ToString[timing[[-1]] - timing[[-2]]]<>"s"];
]

Print@ParallelEvaluate[$KernelID];
elems = elems[[-4;;-1]];
Print["Length@elems = ",Length@elems];
MapIndexed[calcTr, elems];
totT = TimeUsed[] - First@timing;
Print["tot. time = ",ToString[totT]<>"s, avg. time = ",ToString[totT/Length@elems]<>"s"];

(* Save *)
fn = "/home/Felix/Physik/PhD/MMa/data/RR.m";
Print["Save to "<>fn<>" ..."];
Put[fn];
Save[fn,RR];
