<<tracer11.m
AntiCommute[off];
VectorDimension[n];

(* setup *)
elems = Tuples[{{V,A},{V,A},{t1,u1},{t1,u1}}];
ls = l@@# & /@ elems;

Spur@@ls;
OnShell[on,{k1,k1,0},{q,q,q2},{p1,p1,m2},{p2,p2,m2},
           {k1,q,sp/2},{p1,p2,s/2-m2},
           {k1,p2,-t1/2},{k1,p1,-u1/2},
           {q,p1,-(t1-q2)/2},{q,p2,-(u1-q2)/2}];

proj[V][FG][mu_, mup_] := -({mu}.{mup});
proj[V][FL][mu_, mup_] := -4 q2/sp^2 S[k1,{mu}] S[k1,{mup}];
proj[V][x2g1][mu_, mup_] := I Eps[{mu}, {mup}, q, k1] /sp;
proj[V][xF3][mu_, mup_] := proj[V][x2g1][mu, mup];
proj[V][gG][mu_, mup_] := -proj[V][FG][mu, mup];
proj[V][gL][mu_, mup_] := -proj[V][FL][mu, mup];


proj[V][Fk1q][mu_, mup_] := S[k1,{mu}] S[q,{mup}];
proj[V][Fqk1][mu_, mup_] := S[q,{mu}] S[k1,{mup}];
proj[V][Fqq][mu_, mup_] := S[q,{mu}] S[q,{mup}];
proj[V][gk1q][mu_, mup_] := S[k1,{mu}] S[q,{mup}];
proj[V][gqk1][mu_, mup_] := S[q,{mu}] S[k1,{mup}];
proj[V][gqq][mu_, mup_] := S[q,{mu}] S[q,{mup}];


proj[g][F][nu_, nup_] := -({nu}.{nup});
proj[g][g][nu_, nup_] := 2 I Eps[{nu}, {nup}, k1, q] /sp;

Gint[V][mu_] := {{mu}};
Gint[A][mu_] := {{i[mu][1]},{i[mu][2]},{i[mu][3]}};

(* matrix elements *)
meLO[t1][Gint_][mu_, nu_] :=  Gint[mu] ~Join~ {(k1-p2 + Sqrt@m2 U), {nu}}
meLO[u1][Gint_][mu_, nu_] :=  {{nu},(p1-k1 + Sqrt@m2 U)} ~Join~ Gint[mu];

(* calculate *)
applyProj[tr_,k_] := Module[{f},
f = ContractEpsGamma[proj[V][k][mu,mup]*tr];
(*f = f//.{H[a_+b_,c_]:>H[a,c]+H[b,c],H[a_,c_+d_]:>H[a,c]+H[a,d],H[-a_,b_]:>-H[a,b],H[a_,-b_]:>-H[a,b]};
f = RemoveHatMomenta[f,k1,q,p1,p2];*)
f = f/.{H[a_,b_]->0}/.{Tracer`Private`eps[{a_, b_, c_, d_}]:>epsi[a,b,c,d]};
Return[f];
];

Clear@BB;

calcTr[e_,ind_] := Module[{cur1,cur2,ch1,ch2,line,tr},
Print@StringJoin["elems[",ToString@First@ind,"] = ",ToString@e];
{cur1,cur2,ch1,ch2} = e;
line =Join[{(p1 + Sqrt@m2 U)}, meLO[ch1][Gint[cur1]][mu, nu], {(p2 - Sqrt@m2 U)}, Reverse[meLO[ch2][Gint[cur2]][mup, nup]/.{G5->-G5}]];
PrependTo[line,l@@e];
tr = GammaTrace@@line;
If[A === cur1, tr = ContractEpsGamma[tr * (-I/3!)*Eps[{mu} ,{i[mu][1]} ,{i[mu][2]} ,{i[mu][3]} ]]];
If[A === cur2, tr = ContractEpsGamma[tr * (I/3!)*Eps[{mup},{i[mup][1]},{i[mup][2]},{i[mup][3]}]]];

trF = ContractEpsGamma[proj[g][F][nu,nup]*tr];
Do[(BB@@e)@k = applyProj[trF,k],{k,{FG,FL,xF3,Fk1q,Fqk1,Fqq}}];

trg = ContractEpsGamma[proj[g][g][nu,nup]*tr];
Do[(BB@@e)@k = applyProj[trg,k],{k,{x2g1,gG,gL,gk1q,gqk1,gqq}}];
]

MapIndexed[calcTr, elems];

(* Save *)
fn = "/home/Felix/Physik/PhD/MMa/Larin.m";
Print["Save to "<>fn<>" ..."];
Put[fn];
Save[fn,BB];
