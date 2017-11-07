<<tracer11.m
AntiCommute[off];
VectorDimension[n];

(* setup *)
elems = Tuples[{{V,Apre,Apost},{V,Apre,Apost},{s,up},{s,up}}];

Spur@@(Join[{lHQ},l1@@# & /@ elems,l2@@# & /@ elems]);
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
meNLOq[up][Gint_][mu_, nu_] :=  Gint[mu] ~Join~ {(k2-q),{nu}};
meNLOq[s][Gint_][mu_, nu_] :=  {{nu}, (k1+q)} ~Join~ Gint[mu];

(* calculate *)
applyProj[tr_,k_] := Module[{f},
WriteString[$Output,"."];
f = ContractEpsGamma[proj[V][k][mu,mup]*tr];
(*f = RemoveHatMomenta[f,k1,q,p2]/.{H[k2, p1]->k2hat2};*)
f = f/.{H[_,_]->0}/.{Tracer`Private`eps[__]->epsi};
Return[f];
];

Clear@AA2;

HQLine = GammaTrace[lHQ,(p1 + Sqrt@m2 U),{nugQ}, (p2 - Sqrt@m2 U),{nugQp}];

calcTr[e_,ind_] := Module[{cur1,cur2,ch1,ch2,line,tr},
WriteString[$Output,"elems[",ToString@First@ind,"] = ",ToString@e," "];
{cur1,cur2,ch1,ch2} = e;

lineV = {(k2)} ~Join~ meNLOq[ch1][Gint[cur1]][mu, nugq] ~Join~ {(k1)} ~Join~ Reverse[meNLOq[ch2][Gint[cur2]][mup, nugqp]/.{G5->-G5}];
PrependTo[lineV,l1@@e];
trV = GammaTrace@@lineV;
trV = ContractEpsGamma[(-{nugq}.{nugQ})/s5*trV*HQLine*(-{nugqp}.{nugQp})/s5];
Do[(AA2@@e)[F,k] = applyProj[trV,k],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];

lineA = {(k2)} ~Join~ meNLOq[ch1][Gint[cur1]][mu, nugq] ~Join~ {(k1),-G5} ~Join~ Reverse[meNLOq[ch2][Gint[cur2]][mup, nugqp]/.{G5->-G5}];
PrependTo[lineA,l2@@e];
trA = GammaTrace@@lineA;
trA = ContractEpsGamma[(-{nugq}.{nugQ})/s5*(trA)*HQLine*(-{nugqp}.{nugQp})/s5];
Do[(AA2@@e)[g,k] = applyProj[trA,k],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];

Write[$Output,""];
];

MapIndexed[calcTr, elems];

(* Save *)
fn = "/home/Felix/Physik/PhD/MMa/data/AA2.m";
Print["Save to "<>fn<>" ..."];
Put[fn];
Save[fn,AA2];
