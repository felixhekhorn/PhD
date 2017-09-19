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
proj[V][x2g1][mu_, mup_] := I Eps[{mu}, {mup}, q, k1] /sp
proj[V][xF3][mu_, mup_] := proj[V][x2g1][mu, mup]
proj[V][gG][mu_, mup_] := -proj[V][FG][mu, mup]
proj[V][gL][mu_, mup_] := -proj[V][FL][mu, mup]

proj[g][F][nu_, nup_]   := -({nu}.{nup});
proj[g][g][nu_, nup_] := 2 I Eps[{nu}, {nup}, k1, q] /sp;

Gint[V][mu_] := {{mu}};
Gint[A][mu_] := {{mu},G5};

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
line = {(p1 + Sqrt@m2 U)} ~Join~ meLO[ch1][Gint[cur1]][mu, nu] ~Join~ {(p2 - Sqrt@m2 U)} ~Join~ Reverse[meLO[ch2][Gint[cur2]][mup, nup]];
PrependTo[line,l@@e];
tr = GammaTrace@@line;

trF = ContractEpsGamma[proj[g][F][nu,nup]*tr];
(BB@@e)@FG   = applyProj[trF,FG];
(BB@@e)@FL   = applyProj[trF,FL];
(BB@@e)@xF3  = applyProj[trF,xF3];

trg = ContractEpsGamma[proj[g][g][nu,nup]*tr];
(BB@@e)@x2g1 = applyProj[trg,x2g1];
(BB@@e)@gG   = applyProj[trg,gG];
(BB@@e)@gL   = applyProj[trg,gL];
]

MapIndexed[calcTr, elems];

(* Save *)
Print["Save ..."];
Put["/home/Felix/Physik/PhD/MMa/data/BB.m"];
Save["/home/Felix/Physik/PhD/MMa/data/BB.m",BB];
