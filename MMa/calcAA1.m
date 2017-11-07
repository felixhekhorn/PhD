<<tracer11.m
AntiCommute[off];
VectorDimension[n];

(* setup *)
elems = Tuples[{{V,Apre,Apost},{V,Apre,Apost},{u7,u1},{u7,u1}}];

Spur@@(Join[{lqV,lqA},l@@# & /@ elems]);
OnShell[on,{k1,k1,0},{q,q,q2},{p1,p1,m2},{p2,p2,m2},{k2,k2,0},
           {k1,q,sp/2},{k1,p2,-t1/2},{q,p2,-(u1-q2)/2},
           {k1,k2,-tp/2},{q,k2,-(up-q2)/2},{k2,p2,s3/2},{k2,p1,s4/2},{p1,p2,(s5-2 m2)/2},{k1,p1,-u6/2},{q,p1,-(u7-q2)/2}
       ];

proj[V][Pg][mu_, mup_] := -({mu}.{mup});
proj[V][Pk1k1][mu_, mup_] := -4 q2/sp^2 S[k1,{mu}] S[k1,{mup}];
proj[V][Peps][mu_, mup_] := I Eps[{mu}, {mup}, q, k1] /sp
proj[V][Pqq][mu_, mup_] := -1/q2 S[q,{mu}] S[q,{mup}];
proj[V][Pk1q][mu_, mup_] := 2/sp( S[k1,{mu}] S[q,{mup}] + S[q,{mu}] S[k1,{mup}]);

Gint[V][mu_] := {{mu}};
Gint[Apost][mu_] := {{mu},G5};
Gint[Apre][mu_] := {G5,{mu}};

(* matrix elements *)
meNLOq[u7][Gint_][mu_, nu_] :=  Gint[mu] ~Join~ {(p1-q + Sqrt@m2 U),{nu}};
meNLOq[u1][Gint_][mu_, nu_] :=  {{nu}, (q-p2+Sqrt@m2 U)} ~Join~ Gint[mu];

(* calculate *)
applyProj[tr_,k_] := Module[{f},
WriteString[$Output,"."];
f = ContractEpsGamma[proj[V][k][mu,mup]*tr];
f = f//.{H[a_+b_,c_]:>H[a,c]+H[b,c],H[a_,c_+d_]:>H[a,c]+H[a,d],H[-a_,b_]:>-H[a,b],H[a_,-b_]:>-H[a,b]};
f = RemoveHatMomenta[f,q,k1,p2]/.{H[k2, p1]->k2hat2,H[k2, k2]->-k2hat2,H[p1, p1]->-k2hat2};
f = f/.{Tracer`Private`eps[{a_, b_, c_, d_}]:>epsi[a,b,c,d]};
Return[f];
];

Clear@AA1;

qLineV = GammaTrace[lqV,(k2),{nugq},(k1),{nugqp}];
qLineA = GammaTrace[lqA,(k2),{nugq},(k1),(-G5),{nugqp}];

calcTr[e_,ind_] := Module[{cur1,cur2,ch1,ch2,line,tr},
WriteString[$Output,"elems[",ToString@First@ind,"] = ",ToString@e," "];
{cur1,cur2,ch1,ch2} = e;

line = {(p1 + Sqrt@m2 U)} ~Join~ meNLOq[ch1][Gint[cur1]][mu, nugQ] ~Join~ {(p2-Sqrt@m2 U)} ~Join~ Reverse[meNLOq[ch2][Gint[cur2]][mup, nugQp]/.{G5->-G5}];
PrependTo[line,l@@e];
tr = GammaTrace@@line;

trV = ContractEpsGamma[(-{nugq}.{nugQ})/tp*tr*qLineV*(-{nugqp}.{nugQp})/tp];
Do[(AA1@@e)[F,k] = applyProj[trV,k],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];

trA = ContractEpsGamma[(-{nugq}.{nugQ})/tp*tr*qLineA*(-{nugqp}.{nugQp})/tp];
Do[(AA1@@e)[g,k] = applyProj[trA,k],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];

Write[$Output,""];
];

MapIndexed[calcTr, elems]

(* Save *)
fn = "/home/Felix/Physik/PhD/MMa/data/AA1.m";
Print["Save to "<>fn<>" ..."];
Put[fn];
Save[fn,AA1];
