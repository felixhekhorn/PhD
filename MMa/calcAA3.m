<<tracer11.m
AntiCommute[off];
VectorDimension[n];

(* setup *)
meElems = Tuples[{{u7,u1},{up,s}}];
meElems = {{#[[1]],void,void,#[[2]]},{void,#[[1]],#[[2]],void}}& /@ meElems;
meElems = Flatten[meElems,1];
Print@meElems;
elems = Tuples[{{V,Apre,Apost},{V,Apre,Apost},meElems}];
elems = Flatten[#]& /@ elems;

Spur@@(Join[{lqV,lqA},lQ@@# & /@ elems,lqV@@# & /@ elems,lqA@@# & /@ elems]);
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
meNLOq[up][Gint_][mu_, nu_] :=  Gint[mu] ~Join~ {(k2-q),{nu}};
meNLOq[s][Gint_][mu_, nu_] :=  {{nu}, (k1+q)} ~Join~ Gint[mu];
meNLOq[void][Gint_][mu_, nu_] :=  {{nu}};

(* calculate *)
applyProj[tr_,k_] := Module[{f},
WriteString[$Output,"."];
f = ContractEpsGamma[proj[V][k][mu,mup]*tr];
f = f//.{H[a_+b_,c_]:>H[a,c]+H[b,c],H[a_,c_+d_]:>H[a,c]+H[a,d],H[-a_,b_]:>-H[a,b],H[a_,-b_]:>-H[a,b]};
f = RemoveHatMomenta[f,q,k1,p2]/.{H[k2, p1]->k2hat2,H[k2, k2]->-k2hat2,H[p1, p1]->-k2hat2};
f = f/.{Tracer`Private`eps[{a_, b_, c_, d_}]:>epsi[a,b,c,d]};
Return[f];
];

Clear@AA3;

calcTr[e_,ind_] := Module[{cur1,cur2,ch1,ch2,line,tr},
WriteString[$Output,"elems[",ToString@First@ind,"] = ",ToString@e," "];
{cur1,cur2,ch1,ch2,ch3,ch4} = e;

HQLine = {(p1 + Sqrt@m2 U)} ~Join~ meNLOq[ch1][Gint[cur1]][mu, nugQ] ~Join~ {(p2-Sqrt@m2 U)} ~Join~ Reverse[meNLOq[ch2][Gint[cur2]][mup, nugQp]/.{G5->-G5}];
PrependTo[HQLine,lQ@@e];
trQ = GammaTrace@@HQLine;

qLineV = {(k2)} ~Join~ meNLOq[ch3][Gint[cur1]][mu, nugq] ~Join~ {(k1)} ~Join~ Reverse[meNLOq[ch4][Gint[cur2]][mup, nugqp]/.{G5->-G5}];
PrependTo[qLineV,lqV@@e];
trqV = GammaTrace@@qLineV;

trV = Expand@ContractEpsGamma[(-{nugq}.{nugQ})/tp*trQ*trqV*(-{nugqp}.{nugQp})/s5];
Do[(AA3@@e)[F,k] = applyProj[trV,k],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];

qLineA = {(k2)} ~Join~ meNLOq[ch3][Gint[cur1]][mu, nugq] ~Join~ {(k1),-G5} ~Join~ Reverse[meNLOq[ch4][Gint[cur2]][mup, nugqp]/.{G5->-G5}];
PrependTo[qLineA,lqA@@e];
trqA = GammaTrace@@qLineA;

trA = Expand@ContractEpsGamma[(-{nugq}.{nugQ})/tp*trQ*trqA*(-{nugqp}.{nugQp})/s5];
Do[(AA3@@e)[g,k] = applyProj[trA,k],{k,{Pg,Pk1k1,Peps,Pqq,Pk1q}}];

Write[$Output,""];
];

Print["Length@elems = ",Length@elems];
MapIndexed[calcTr, elems];

(* Save *)
fn = "/home/Felix/Physik/PhD/MMa/data/AA3.m";
Print["Save to "<>fn<>" ..."];
Put[fn];
Save[fn,AA3];
