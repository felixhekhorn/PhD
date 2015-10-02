(* ::Package:: *)

(* define trafo-coefficients; dokumentation so far see pdf *)
barBprime[n_Integer,v_] := Sum[
	BellY[n,k,Table[PolyGamma[m,v/2+1],{m,0,n-1}]
	],{k,1,n}
] // FunctionExpand // Expand // Simplify;
getC[w_Integer,j_Integer,v_] := 
getC[w,j,v] = If[j==0,
	(-1)^w,
	(-1)^(w-j) * Binomial[w,j] * barBprime[j,v]
];
getD[w_Integer,j_Integer,v_] := 
getD[w,j,v] = If[j == 0,
	2^w,
	-Sum[(-1)^(w-k) * getC[w,k,v] * getD[w-k,j-k,v],{k,1,j}]
];

getAllC[w_Integer,v_Integer] :=Table[getC[w,j,v],{j,0,w}];
getCTilde[w_,\[Mu]_,v_,t_] := Sum[Binomial[w,w-\[Nu]]*(Log[2^t])^\[Nu] * getC[w-\[Nu],\[Mu]-\[Nu],v],{\[Nu],0,\[Mu]}]// Expand // Simplify;
getAllCTilde[w_,v_,t_] := Table[getCTilde[w,b,v,t],{b,0,w}];
getC2Tilde[w_,b_,v_,t_] := Sum[Binomial[w-\[Mu],b-\[Mu]] * (-EulerGamma)^(b-\[Mu])*getCTilde[w,b,v,t],{\[Mu],0,b}] // Expand // Simplify;
getAllC2Tilde[w_,v_,t_] := Table[getC2Tilde[w,b,v,t],{b,0,w}];
getAllD[w_,v_] := Table[getD[w,j,v],{j,0,w}];
