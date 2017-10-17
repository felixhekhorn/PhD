<<tracer11.m
AntiCommute[off];
VectorDimension[n];

(* setup *)
elems = Tuples[{{V,Apre,Apost},{V,Apre,Apost},{t1,u1},{t1,u1}}];
ls = l@@# & /@ elems;

Spur@@ls;
OnShell[on,{k1,k1,0},{q,q,q2},{p1,p1,m2},{p2,p2,m2},{k2,k2,0},
           {k1,q,sp/2},{k1,p2,-t1/2},{q,p2,-(u1-q2)/2},
           {k1,k2,-tp/2},{q,k2,-(up-q2)/2},{k2,p2,s3/2},{k2,p1,s4/2},{p1,p2,(s5-2 m2)/2},{k1,p1,-u6/2},{q,p1,-(u7-q2)/2}
       ];

proj[V][Pg][mu_, mup_] := -({mu}.{mup});
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
meNLOg[s4,t1][Gint_][mu_, ni_, no_] :=  Join[{{no},    (p1+k2 + Sqrt@m2 U)},Gint[mu],{{ k1-p2 + Sqrt@m2 U},  {ni}}  ];
meNLOg[u7,t1][Gint_][mu_, ni_, no_] :=  Join[Gint[mu],{(p1-q  + Sqrt@m2 U),  {no},    { k1-p2 + Sqrt@m2 U},  {ni}}  ];
meNLOg[s4,u1][Gint_][mu_, ni_, no_] :=  Join[{{no},    (p1+k2 + Sqrt@m2 U),  {ni},    {  q-p2 + Sqrt@m2 U}},Gint[mu]];
meNLOg[u6,u1][Gint_][mu_, ni_, no_] :=  Join[{{ni},    (p1-k1 + Sqrt@m2 U),  {no},    {  q-p2 + Sqrt@m2 U}},Gint[mu]];
meNLOg[u7,s3][Gint_][mu_, ni_, no_] :=  Join[Gint[mu],{(p1-q  + Sqrt@m2 U),  {ni},    {-k2-p2 + Sqrt@m2 U},  {no}}  ];
meNLOg[u6,s3][Gint_][mu_, ni_, no_] :=  Join[{{ni},    (p1-k1 + Sqrt@m2 U)},Gint[mu],{{-k2-p2 + Sqrt@m2 U},  {no}}  ];
(*
{\[Mu],\[Nu]i,\[Nu]o}\[Function]Evaluate[Ga[\[Nu]Q].((Gs[q-p2]+Sqrt[m2]GI)/u1).Ga[\[Mu]].(GI(gluonTensor[\[Nu]Q,\[Nu]g]/tp me3g[\[Nu]i,\[Nu]o,\[Nu]g]))],
{\[Mu],\[Nu]i,\[Nu]o}\[Function]Evaluate[Ga[\[Mu]].((Gs[p1-q]+Sqrt[m2]GI)/u7).Ga[\[Nu]Q].(GI(gluonTensor[\[Nu]Q,\[Nu]g]/tp me3g[\[Nu]i,\[Nu]o,\[Nu]g]))]
*)
me3g[ni_, no_, ng_] :== ({ni}.{no} (k1 + k2).{ng} + {no}.{ng} (-2 k2 + k1).{ni} + {ng}.{ni} (k2 - 2 k1).{no});

(* calculate *)
applyProj[tr_,k_] := Module[{f},
WriteString["stdout","."];
f = ContractEpsGamma[proj[V][k][mu,mup]*tr];
f = f//.{H[a_+b_,c_]:>H[a,c]+H[b,c],H[a_,c_+d_]:>H[a,c]+H[a,d],H[-a_,b_]:>-H[a,b],H[a_,-b_]:>-H[a,b]};
f = RemoveHatMomenta[f,q,k1,p2]/.{H[k2, p1]->k2hat2,H[k2, k2]->-k2hat2,H[p1, p1]->-k2hat2};
f = f/.{Tracer`Private`eps[{a_, b_, c_, d_}]:>epsi[a,b,c,d]};
Return[f];
];

Clear@RR;

calcTr[e_,ind_] := Module[{cur1,cur2,ch1,ch2,line,tr},
WriteString["stdout","elems[",ToString@First@ind,"] = ",ToString@e," "];
{cur1,cur2,ch1,ch2} = e;
line =Join[{(p1 + Sqrt@m2 U)}, meLO[ch1][Gint[cur1]][mu, nu], {(p2 - Sqrt@m2 U)}, Reverse[meLO[ch2][Gint[cur2]][mup, nup]/.{G5->-G5}]];
PrependTo[line,l@@e];
tr = GammaTrace@@line;

trF = ContractEpsGamma[proj[g][F][nu,nup]*tr];
Do[(RR@@e)[F,k] = applyProj[trF,k],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];

trg = ContractEpsGamma[proj[g][g][nu,nup]*tr];
Do[(RR@@e)[g,k] = applyProj[trg,k],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];
Write["stdout",""];
]

(*
MapIndexed[calcTr, elems];

(* Save *)
fn = "/home/Felix/Physik/PhD/MMa/data/RR.m";
Print["Save to "<>fn<>" ..."];
Put[fn];
Save[fn,RR];*)
