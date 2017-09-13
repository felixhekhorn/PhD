<<tracer11.m
AntiCommute[off];
VectorDimension[n];

(* setup *)
elems = Tuples[{{V,A},{V,A},{s,up},{s,up}}];

Spur@@(Join[{lHQ},l1@@# & /@ elems,l2@@# & /@ elems]);
OnShell[on,{k1,k1,0},{q,q,q2},{p1,p1,m2},{p2,p2,m2},{k2,k2,0},
           {k1,q,sp/2},{k1,p2,-t1/2},{q,p2,-(u1-q2)/2},
           {k1,k2,-tp/2},{q,k2,-(up-q2)/2},{k2,p2,s3/2},{k2,p1,s4/2},{p1,p2,(s5-2 m2)/2},{k1,p1,-u6/2},{q,p1,-(u7-q2)/2}
       ];

proj[V][FG][mu_, mup_] := -({mu}.{mup});
proj[V][FL][mu_, mup_] := -4 q2/sp^2 S[k1,{mu}] S[k1,{mup}];
proj[V][x2g1][mu_, mup_] := I Eps[{mu}, {mup}, q, k1] /sp
proj[V][xF3][mu_, mup_] := proj[V][x2g1][mu, mup]
proj[V][gG][mu_, mup_] := -proj[V][FG][mu, mup]
proj[V][gL][mu_, mup_] := -proj[V][FL][mu, mup]

Gint[V][mu_] := {{mu}};
Gint[A][mu_] := {(U+G5),{mu},(U-G5)};

(* matrix elements *)
meNLOq[up][Gint_][mu_, nu_] :=  Gint[mu] ~Join~ {(k2-q),{nu}};
meNLOq[s][Gint_][mu_, nu_] :=  {{nu}, (k1+q)} ~Join~ Gint[mu];

(* calculate *)
applyProj[tr_,k_] := Module[{f},
f = ContractEpsGamma[proj[V][k][mu,mup]*tr];
(*f = RemoveHatMomenta[f,k1,q,p2]/.{H[k2, p1]->k2hat2};*)
f = f/.{H[_,_]->0}/.{Tracer`Private`eps[__]->epsi};
Return[f];
];

Clear@AA2;

HQLine = GammaTrace[lHQ,(p1 + Sqrt@m2 U),{nugQ}, (p2 - Sqrt@m2 U),{nugQp}];

calcTr[e_,ind_] := Module[{cur1,cur2,ch1,ch2,line,tr},
Print@StringJoin["elems[",ToString@First@ind,"] = ",ToString@e];
{cur1,cur2,ch1,ch2} = e;

lineV = {(k2)} ~Join~ meNLOq[ch1][Gint[cur1]][mu, nugq] ~Join~ {(k1)} ~Join~ Reverse[meNLOq[ch2][Gint[cur2]][mup, nugqp]];
PrependTo[lineV,l1@@e];
trV = GammaTrace@@lineV;
trV = ContractEpsGamma[(-{nugq}.{nugQ})/s5*trV*HQLine*(-{nugqp}.{nugQp})/s5];

(AA2@@e)@FG   = applyProj[trV,FG];
(AA2@@e)@FL   = applyProj[trV,FL];
(AA2@@e)@xF3  = applyProj[trV,xF3];

lineA = {(k2)} ~Join~ meNLOq[ch1][Gint[cur1]][mu, nugq] ~Join~ {(U+G5),(k1),(U-G5)} ~Join~ Reverse[meNLOq[ch2][Gint[cur2]][mup, nugqp]];
PrependTo[lineA,l2@@e];
trA = GammaTrace@@lineA;
trA = ContractEpsGamma[(-{nugq}.{nugQ})/s5*(trA)*HQLine*(-{nugqp}.{nugQp})/s5];

(AA2@@e)@x2g1 = applyProj[-trV+trA/2,x2g1];
(AA2@@e)@gG   = applyProj[-trV+trA/2,gG];
(AA2@@e)@gL   = applyProj[-trV+trA/2,gL];
];

MapIndexed[calcTr, elems];

(* Save *)
Print["Save ..."];
Put["/home/Felix/Physik/PhD/MMa/data/AA2.m"];
Save["/home/Felix/Physik/PhD/MMa/data/AA2.m",AA2];
