<<tracer11.m
AntiCommute[off];
VectorDimension[n];

(* setup *)
elems = Tuples[{{V,A},{V,A},{u7,u1},{u7,u1}}];

Spur@@(Join[{lqV,lqA},l@@# & /@ elems]);
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
meNLOq[u7][Gint_][mu_, nu_] :=  Gint[mu] ~Join~ {(p1-q + Sqrt@m2 U),{nu}};
meNLOq[u1][Gint_][mu_, nu_] :=  {{nu}, (q-p2+Sqrt@m2 U)} ~Join~ Gint[mu];

(* calculate *)
applyProj[tr_,k_] := Module[{f},
f = ContractEpsGamma[proj[V][k][mu,mup]*tr];
f = f//.{H[a_+b_,c_]:>H[a,c]+H[b,c],H[a_,c_+d_]:>H[a,c]+H[a,d],H[-a_,b_]:>-H[a,b],H[a_,-b_]:>-H[a,b]};
f = RemoveHatMomenta[f,q,k1,p2]/.{H[k2, p1]->k2hat2,H[k2, k2]->-k2hat2,H[p1, p1]->-k2hat2};
(*f = f/.{Tracer`Private`eps[{k1, k2, p1, q}]->epsi};*)
Return[f];
];

Clear@AA1;

qLineV = GammaTrace[lqV,(k2),{nugq},(k1),{nugqp}];
qLineA = GammaTrace[lqA,(k2),{nugq},(U+G5),(k1),(U-G5),{nugqp}];

calcTr[e_,ind_] := Module[{cur1,cur2,ch1,ch2,line,tr},
Print@StringJoin["elems[",ToString@First@ind,"] = ",ToString@e];
{cur1,cur2,ch1,ch2} = e;

line = {(p1 + Sqrt@m2 U)} ~Join~ meNLOq[ch1][Gint[cur1]][mu, nugQ] ~Join~ {(p2-Sqrt@m2 U)} ~Join~ Reverse[meNLOq[ch2][Gint[cur2]][mup, nugQp]];
PrependTo[line,l@@e];
tr = GammaTrace@@line;
trV = ContractEpsGamma[(-{nugq}.{nugQ})/tp*tr*qLineV*(-{nugqp}.{nugQp})/tp];


(AA1@@e)@FG   = applyProj[trV,FG];
(AA1@@e)@FL   = applyProj[trV,FL];
(AA1@@e)@xF3  = applyProj[trV,xF3];

trA = ContractEpsGamma[(-{nugq}.{nugQ})/tp*tr*qLineA*(-{nugqp}.{nugQp})/tp];

(AA1@@e)@x2g1 = applyProj[-trV+trA/2,x2g1];
(AA1@@e)@gG   = applyProj[-trV+trA/2,gG];
(AA1@@e)@gL   = applyProj[-trV+trA/2,gL];

];

MapIndexed[calcTr, elems[[9;;12]]]


(* Save *)
Print["Save ..."];
Put["/home/Felix/Physik/PhD/MMa/data/AA1.m"];
Save["/home/Felix/Physik/PhD/MMa/data/AA1.m",AA1];
