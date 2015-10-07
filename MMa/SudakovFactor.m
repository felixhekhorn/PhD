(* ::Package:: *)

BeginPackage["SudakovFactor`"];

(* beta function coefficients *)
b0::usage = "first coefficient of beta function \[Beta](\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)) = -\!\(\*SubscriptBox[\(b\), \(0\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\.b2 + ...";
b1::usage = "second coefficient of beta function \[Beta](\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)) = -\!\(\*SubscriptBox[\(b\), \(0\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\.b2 - \!\(\*SubscriptBox[\(b\), \(1\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\.b3 + ... ";
b2::usage = "third coefficient of beta function \[Beta](\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)) = -\!\(\*SubscriptBox[\(b\), \(0\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\.b2 - \!\(\*SubscriptBox[\(b\), \(1\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\.b3 - \!\(\*SubscriptBox[\(b\), \(2\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\:2074 + ... ";
getBetaBCoeff::usage = "getBetaBCoeff[k] returns beta function coefficient \!\(\*SubscriptBox[\(b\), \(k\)]\):
\[Beta](\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)) = -\!\(\*SubscriptBox[\(b\), \(0\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\.b2 - \!\(\*SubscriptBox[\(b\), \(1\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\.b3 - \!\(\*SubscriptBox[\(b\), \(2\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\:2074 + ...";
getBetaBCoeff::notAvailable = "beta function coefficient \!\(\*SubscriptBox[\(b\), \(`1`\)]\) is not available";
getBetaBCoeff::badarg = "A single argument of type Integer was expected";
betaBCoeffRules::usage = "replacements for coeffs of beta function with their value in term of \!\(\*SubscriptBox[\(C\), \(F\)]\),\!\(\*SubscriptBox[\(C\), \(A\)]\),\!\(\*SubscriptBox[\(n\), \(l\)]\):
\[Beta](\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)) = -\!\(\*SubscriptBox[\(b\), \(0\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\.b2 - \!\(\*SubscriptBox[\(b\), \(1\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\.b3 - \!\(\*SubscriptBox[\(b\), \(2\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)/(4\[Pi]))\:2074 + ...";

(* gluon radiation coeffs *)
AgCoeffRules::usage = "replacements for coeffs of A soft gluon function for gluon channel with their value in term of \!\(\*SubscriptBox[\(C\), \(F\)]\),\!\(\*SubscriptBox[\(C\), \(A\)]\),\!\(\*SubscriptBox[\(n\), \(l\)]\):
\!\(\*SubscriptBox[\(A\), \(g\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)) = \!\(\*SuperscriptBox[SubscriptBox[\(A\), \(g\)], \((1)\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s/\[Pi]\)]\)) + \!\(\*SuperscriptBox[SubscriptBox[\(A\), \(g\)], \((2)\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s/\[Pi]\)]\))\.b2 +...";
AqCoeffRules::usage = "replacements for coeffs of A soft gluon function for quark channel with their value in term of \!\(\*SubscriptBox[\(C\), \(F\)]\),\!\(\*SubscriptBox[\(C\), \(A\)]\),\!\(\*SubscriptBox[\(n\), \(l\)]\):
\!\(\*SubscriptBox[\(A\), \(q\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)) = \!\(\*SuperscriptBox[SubscriptBox[\(A\), \(q\)], \((1)\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s/\[Pi]\)]\)) + \!\(\*SuperscriptBox[SubscriptBox[\(A\), \(q\)], \((2)\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s/\[Pi]\)]\))\.b2 +...";
Dgg1CoeffRules::usage = "replacements for coeffs of D soft gluon function for gg channel and I=1 with their value in term of \!\(\*SubscriptBox[\(C\), \(F\)]\),\!\(\*SubscriptBox[\(C\), \(A\)]\),\!\(\*SubscriptBox[\(n\), \(l\)]\):
\!\(\*SubscriptBox[\(D\), \(gg, 1\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)) = \!\(\*SuperscriptBox[SubscriptBox[\(D\), \(gg, 1\)], \((1)\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s/\[Pi]\)]\)) + \!\(\*SuperscriptBox[SubscriptBox[\(D\), \(gg, 1\)], \((2)\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s/\[Pi]\)]\))\.b2 +...";
Dgg8CoeffRules::usage = "replacements for coeffs of D soft gluon function for gg channel and I=8 with their value in term of \!\(\*SubscriptBox[\(C\), \(F\)]\),\!\(\*SubscriptBox[\(C\), \(A\)]\),\!\(\*SubscriptBox[\(n\), \(l\)]\):
\!\(\*SubscriptBox[\(D\), \(gg, 8\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)) = \!\(\*SuperscriptBox[SubscriptBox[\(D\), \(gg, 8\)], \((1)\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s/\[Pi]\)]\)) + \!\(\*SuperscriptBox[SubscriptBox[\(D\), \(gg, 8\)], \((2)\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s/\[Pi]\)]\))\.b2 +...";
Dqqbar8CoeffRules::usage = "replacements for coeffs of D soft gluon function for q\!\(\*OverscriptBox[\(q\), \(_\)]\) channel and I=8 with their value in term of \!\(\*SubscriptBox[\(C\), \(F\)]\),\!\(\*SubscriptBox[\(C\), \(A\)]\),\!\(\*SubscriptBox[\(n\), \(l\)]\):
\!\(\*SubscriptBox[\(D\), \(q \*OverscriptBox[\(q\), \(_\)], 8\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)) = \!\(\*SuperscriptBox[SubscriptBox[\(D\), \(q \*OverscriptBox[\(q\), \(_\)], 8\)], \((1)\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s/\[Pi]\)]\)) + \!\(\*SuperscriptBox[SubscriptBox[\(D\), \(q \*OverscriptBox[\(q\), \(_\)], 8\)], \((2)\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s/\[Pi]\)]\))\.b2 +...";
D\[Gamma]gCoeffRules::usage = "replacements for coeffs of D soft gluon function for \[Gamma]g channel with their value in term of \!\(\*SubscriptBox[\(C\), \(F\)]\),\!\(\*SubscriptBox[\(C\), \(A\)]\),\!\(\*SubscriptBox[\(n\), \(l\)]\):
\!\(\*SubscriptBox[\(D\), \(\[Gamma]g\)]\)(\!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\)) = \!\(\*SuperscriptBox[SubscriptBox[\(D\), \(\[Gamma]g\)], \((1)\)]\)*(\!\(\*SubscriptBox[\(\[Alpha]\), \(s/\[Pi]\)]\)) +...";

(* combined rules *)
getRules::usage = "get replacements for A soft gluon function, D soft gluon function and \[Nu] for a single channel";
getRules::badarg = "A single argument of type String was expected";
getRules::notAvailable = "Replacements for channel `1` not defined";

(* resummation functions *)
getPreG::usage = "getPreG[k] computes \!\(\*SubscriptBox[\*TemplateBox[{\"g\",\"n\"},\n\"Superscript\"], \(\[Nu], k, ij, I\)]\)(\[Lambda]) prefixed with either Log[N] for n=1 or \!\(\*TemplateBox[{SubscriptBox[\"\[Alpha]\", \"s\"],RowBox[{\"n\", \"-\", \"2\"}]},\n\"Superscript\"]\) otherwise; See getG[k]";
getPreG::badarg = "A single argument of type Integer was expected";
getPreG::notAvailable = "g^`1` is not available (because \!\(\*SubscriptBox[\(\[Alpha]\), \(s\)]\) is not available at `1` loop)";
getG::usage = "getG[k] computes \!\(\*SubscriptBox[\*TemplateBox[{\"g\",\"n\"},\n\"Superscript\"], \(\[Nu], k, ij, I\)]\)(\[Lambda]);
subscripts \[Nu] and k correspond to incoming particles, ij and I to D coefficients";
getG::badarg = "A single argument of type Integer was expected";

(* TODO: use better names/scopes *)
\[Alpha]\[Mu];
CA;CF;nl;
\[Mu]R2;lnRScale4;\[Mu]F2;lnFScale4;
\[Nu];

getExtendedCataniP::usage = "get functions and coefficients for extension of Catani's formula on resummation (way 1)";
getExtendedCataniQ::usage = "get functions for extension of Catani's formula on resummation (way 2)";

Begin["`Private`"];

\[Lambda];

(* beta coeffs *)
b0;b1;b2;
betaBCoeffRules = {
 b0 -> getBetaBCoeff[0],
 b1 -> getBetaBCoeff[1],
 b2 -> getBetaBCoeff[2]
};

getBetaBCoeff[k_Integer] := Switch[k,
 0,(11CA - 2nl)/(12\[Pi]),
 1,(17CA^2 - 5CA*nl - 3CF*nl)/(4\[Pi]^2),
 2,(2857/54 CA^3 - 1415/54 CA^2*nl - 205/18 CA*CF*nl + CF^2*nl +79/54 CA*nl^2 + 11/9 CF*nl^2)/64/Pi^3,
 _, Message[getBetaBCoeff::notAvailable,k];Return[$Failed]
];
getBetaBCoeff[args__]:= $Failed /; Message[getBetaBCoeff::badarg]

(* gluon radiation coeffs *)
(* soft-collinear initial state radiation: *)
Ak;
Ag = {CA, CA*((67/18 - \[Pi]^2/6)CA - 5/9nl)/2,CA/4 (CA^2 (245/24 - 67/9 Zeta[2] + 11/6 Zeta[3]+11/5 Zeta[2]^2) + CF* nl (-55/24 + 2 Zeta[3]) +CA *nl (-209/108 + 10/9 Zeta[2] - 7/3 Zeta[3]) +nl^2 (-1/27))};
AgCoeffRules = Table[Ak[j] -> Ag[[j]],{j,Length[Ag]}];
Aq = {Ag[[1]]/CA*CF, Ag[[2]]/CA*CF, Ag[[3]]/CA*CF};
AqCoeffRules = Table[Ak[j] -> Aq[[j]],{j,Length[Aq]}];
(* wide-angle soft radiation *)
DijI;
Dqqbar8 = {-CA,CA^2(-115/36+\[Pi]^2/12-Zeta[3]/2)+CA*CF(-101/27+11\[Pi]^2/18+7/2Zeta[3])+CA*nl 11/18+CF* nl(14/27-\[Pi]^2/9)};
Dqqbar8CoeffRules = Table[DijI[j] -> Dqqbar8[[j]],{j,Length[Dqqbar8]}];
Dgg8 = {-CA, (CA^2 (-749/108 + 25/36 Pi^2 + 3 Zeta[3]) +CA *nl (61/54 -\[Pi]^2/9))};
Dgg8CoeffRules = Table[DijI[j] -> Dgg8[[j]],{j,Length[Dgg8]}];
Dgg1 = {0,(CA^2 (-101/27 + 11\[Pi]^2/18 + 7/2 Zeta[3]) +CA *nl (14/27 - \[Pi]^2/9))};
Dgg1CoeffRules = Table[DijI[j] -> Dgg1[[j]],{j,Length[Dgg1]}];
D\[Gamma]g = {-CA};
D\[Gamma]gCoeffRules = Table[DijI[j] -> D\[Gamma]g[[j]],{j,Length[D\[Gamma]g]}];

(* get combined rules *)
getRules[channel_String] := Module[{b},
 b = betaBCoeffRules;
 Switch[channel,
 "\[Gamma]g", Join[b,{\[Nu]->1},AgCoeffRules,D\[Gamma]gCoeffRules],
 "gg1", Join[b,{\[Nu]->2},AgCoeffRules,Dgg1CoeffRules],
 "gg8", Join[b,{\[Nu]->2},AgCoeffRules,Dgg8CoeffRules],
 "qqbar8", Join[b,{\[Nu]->2},AqCoeffRules,Dqqbar8CoeffRules],
 _, Message[getRules::notAvailable,channel];Return[$Failed]
 ]
];
getRules[args__]:= $Failed /; Message[getRules::badarg];

(* \[Alpha]s is avialable at order (n-1)-loop *)
available\[Alpha]sOrder = 3;

(* implementation of \[Alpha]s with concrete functions *)
til\[Lambda][k2_] = 1+b0*\[Alpha]\[Mu]*Log[k2/\[Mu]R2];
\[Alpha]sO[1][k2_] = \[Alpha]\[Mu]/(til\[Lambda][k2] );
\[Alpha]sO[2][k2_] = \[Alpha]sO[1][k2]^2* (-b1/b0)*Log[til\[Lambda][k2]];
\[Alpha]sO[3][k2_] = \[Alpha]sO[1][k2]^3* ((b1^2/b0^2)*(Log[til\[Lambda][k2]]^2 +Log[til\[Lambda][k2]] + til\[Lambda][k2]-1) - (b2/b0)*(til\[Lambda][k2]-1));

(* multiply individual orders together *)
get\[Alpha]sProduct::\[Alpha]sNotAvailable = "\[Alpha]s is not available at `1` loop";
get\[Alpha]sProduct::badarg = "A single argument of type List was expected";
get\[Alpha]sProduct[v_List] := Module[{l},
 l = Length[v];
 (* reachable? *)
 If[l > available\[Alpha]sOrder,Message[get\[Alpha]sProduct::\[Alpha]sNotAvailable,l];Return[$Failed]];
 Function[k2,Evaluate[Product[\[Alpha]sO[j][k2]^v[[j]],{j,l}]]]
]
get\[Alpha]sProduct[args__]:= $Failed /; Message[get\[Alpha]sProduct::badarg]

(* solve indefinite q\.b2 integral *)
getK::badarg = "A single argument of type List was expected";
getK[v_List] := Module[{\[Alpha]},
 \[Alpha] = get\[Alpha]sProduct[v];
 If[$Failed == \[Alpha], Return[$Failed]];
 Function[q2,Evaluate[Integrate[\[Alpha][q2]/q2,q2]]]
]
getK[args__]:= $Failed /; Message[getK::badarg]

(* split argument of ln in a z-part and a scaling part *)
splitZAndScaleSub[z_] = {
 Log[m24 (1-z)^2/\[Mu]R2] -> 2Log[1-z]-lnRScale4,
 Log[\[Mu]F2/\[Mu]R2]-> lnFScale4-lnRScale4
};

(* maximum power of scales that is needed *)
getMaxScale::scaleNotAvailable = "it's useless to compute this element, because it would depend on \[Mu]^`1` which is not available (because \[Alpha]s is not available at `2` loop)";
getMaxScale[v_List] := Module[{s,o},
 s = Sum[j*v[[j]],{j,Length[v]}];
 o = available\[Alpha]sOrder - s;
 If[o < 0,Message[getMaxScale::scaleNotAvailable,s,s-1];Return[$Failed]];
 o
];

(* solve definite q\.b2 integral *)
getJ::badarg = "A single argument of type List was expected";
getJ[v_List] := Module[{k,j,z,maxScale},
k = getK[v];
If[$Failed == k, Return[$Failed]];
j = k[m24*(1-z)^2] - k[\[Mu]F2];
j = j/. splitZAndScaleSub[z];
maxScale = getMaxScale[v];
If[$Failed == maxScale, Return[$Failed]];
j = Series[j,{lnRScale4,0, maxScale},{lnFScale4,0,maxScale}];
Function[zz,Evaluate[j/. {z -> zz}]]
]
getJ[args__]:= $Failed /; Message[getJ::badarg]

(* try to transform to \[Lambda] = \[Alpha]s*b0*Log[N] - i.e. there is no tilde! *)
to\[Lambda]Sub = {b0*\[Alpha]\[Mu]*Log[1/n]-> -\[Lambda],Log[1/n]-> -\[Lambda]/(b0*\[Alpha]\[Mu]),Log[1/n]^k_ :> (-\[Lambda])^k/(b0^k*\[Alpha]\[Mu]^k)};

(* solve z-integral *)
zInt[f_Function,OptionsPattern[Integrate]]:= -Normal[
	Integrate[f[z]/(1-z),{z,0,1-1/n} , 
	Assumptions-> Join[
		OptionValue[Assumptions],
		{Re[n] > 0,b0 > 0, b0 \[Element] Reals,b1 > 0, b1 \[Element] Reals,
		b2 > 0, b2 \[Element] Reals,\[Alpha]\[Mu] > 0,\[Alpha]\[Mu] \[Element] Reals}
		]
	]
]//. to\[Lambda]Sub;

(* solve z-integral on J (and cache it) and force result to be a series *)
getZIntJ::badarg = "A single argument of type List was expected";
getZIntJ[v_List]:= getZIntJ[v] = Module[{z,maxScale},
maxScale = getMaxScale[v];
If[$Failed == maxScale, Return[$Failed]];
(* force series, so i can use SeriesCoefficient *)
z = zInt[getJ[v]] + O[lnRScale4]^(1+maxScale) + O[lnFScale4]^(1+maxScale);
Series[z,{lnRScale4,0, maxScale},{lnFScale4,0,maxScale}]
]
getZIntJ[args__]:= $Failed /; Message[getZIntJ::badarg]

(* collect all powers of lnFScale4 and lnRScale4 to sum up to scale *)
getPowersOfScale::badarg = "Expected exactly one argument of type Integer \[GreaterEqual] 0";
getPowersOfScale[scale_Integer] = Which[
 0 == scale, {{0,0}},
 scale > 0, Table[{scale-j,j},{j,0,scale}],
 True, Message[getPowersOfScale::badarg,scale];Return[$Failed]
];
getPowersOfScale[args__]:= $Failed /; Message[getPowersOfScale::badarg]

(* solve z-integral on J and select a specific power of \[Mu] *)
getZIntJAtScale::badarg = "Expected exactly two arguments: a List and an Integer";
getZIntJAtScale::scaleNotAvailable = "dependence on \[Mu]^`1` is not available (because \[Alpha]s is not available at `1` loop)";
getZIntJAtScale[v_List,scale_Integer]:= Module[{maxScale,zIntJ},
maxScale = getMaxScale[v];
If[$Failed == maxScale, Return[$Failed]];
If[scale > maxScale,
	Message[getZIntJAtScale::scaleNotAvailable,scale];
	Return[$Failed]];
zIntJ = getZIntJ[v];
If[$Failed == zIntJ, Return[$Failed]];
Sum[
	(lnFScale4^el[[1]])*(lnRScale4^el[[2]])
	*SeriesCoefficient[zIntJ,el],{el,getPowersOfScale[scale]}
] // Together
];
getZIntJAtScale[args__]:= $Failed /; Message[getZIntJAtScale::badarg]

(* solve z-integral on \[Alpha]s and select a specific power of \[Mu]R *)
getZInt\[Alpha]AtScale::badarg = "Expected exactly two arguments: a List and an Integer";
getZInt\[Alpha]AtScale::scaleNotAvailable = "dependence on lnRScale4^`1` is not available (because \[Alpha]s is not available at `2` loop)";
getZInt\[Alpha]AtScale[v_List, scale_Integer]:= Module[{maxScale,\[Alpha]s,\[Alpha]sS},
maxScale = getMaxScale[v]-1;
If[$Failed == maxScale, Return[$Failed]];
If[scale > maxScale,
	Message[getZInt\[Alpha]AtScale::scaleNotAvailable,scale,scale+1];
	Return[$Failed]];
\[Alpha]s[z_] = (get\[Alpha]sProduct[v][m24 (1-z)^2])//. splitZAndScaleSub[z];
\[Alpha]sS[z_] = SeriesCoefficient[Series[\[Alpha]s[z],{lnRScale4,0,scale}],scale];
Simplify[zInt[Function[z,\[Alpha]sS[z]]]*lnRScale4^scale]
]
getZInt\[Alpha]AtScale[args__]:= $Failed /; Message[getZInt\[Alpha]AtScale::badarg]

Options[getPreG] = {"includeDel" -> True};
getPreG[n_Integer,opts:OptionsPattern[]] := Module[{a=0,d=0,del=0},
If[n > available\[Alpha]sOrder,
	Message[getPreG::notAvailable,n];
	Return[$Failed]];
(* collect term ~ Ak *)
Do[Module[{nn,parts,tot,DJ},
	nn = n - scale;
	parts = If[nn > 1,FrobeniusSolve[Range[nn],nn],{{1}}];
	Do[tot = Total[p];
		DJ = getZIntJAtScale[p,scale];
		If[$Failed == DJ, Return[$Failed]];
		a += \[Nu]*Ak[tot]/\[Pi]^tot * (Multinomial@@p) * DJ;
		,{p,parts}];
	];
	,{scale,0,n-1}];
If[n > 1,Module[{nD},
	(* collect terms ~ DijI *)
	nD = n-1;
	Do[Module[{nn,parts,tot,D\[Alpha]},
		nn = nD - scale;
		parts = If[nn > 1,FrobeniusSolve[Range[nn],nn],{{1}}];
		Do[tot = Total[p];
			D\[Alpha] = getZInt\[Alpha]AtScale[p,scale];
			If[$Failed == D\[Alpha], Return[$Failed]];
			d += DijI[tot]/\[Pi]^tot * (Multinomial@@p) * D\[Alpha];
			,{p,parts}];
		];
		,{scale,0,nD-1}];
	(* collect terms ~ \[CapitalGamma](\!\(1 - 
\*SubscriptBox[\(\[PartialD]\), \(lnN\)]\)) *)
	If[OptionValue["includeDel"],
		Do[Module[{g,x},
			g = (D[Gamma[1-x],{x,nDer}]/. {x -> 0})/nDer!;
			del += g * Simplify[(\[Alpha]\[Mu]*b0)^nDer*D[getPreG[n-nDer, "includeDel" -> False],{\[Lambda],nDer}]];
			];
			,{nDer,1,nD}];
		];
	];
];
Return[a+d+del]
]
getPreG[args__]:= $Failed /; Message[getPreG::badarg]

(* computes g^k(\[Lambda]) *)
getG[1] := Function[\[Lambda]\[Lambda],Evaluate[getPreG[1]/\[Lambda]*\[Alpha]\[Mu]*b0/. {\[Lambda]-> \[Lambda]\[Lambda]}]]
getG[n_Integer] := Module[{ex,l},
(* get expression *)
ex = getPreG[n];
If[$Failed == ex, Return[$Failed]];
ex /=(\[Alpha]\[Mu]^(n-2));
ex = Expand[Simplify[ex]];
(* collect Ak, DijI, scales *)
l = {};
Do[AppendTo[l,\[Nu]*Ak[[k]]/\[Pi]^k], {k,n}];
Do[AppendTo[l,DijI[[k]]/\[Pi]^k], {k,n-1}];
AppendTo[l,lnRScale4];
AppendTo[l,lnFScale4];
ex = Collect[ex,l];
Function[\[Lambda]\[Lambda],Evaluate[ex/.{\[Lambda]-> \[Lambda]\[Lambda]}]]
]
getG[args__]:= $Failed /; Message[getG::badarg]

getExtendedCataniP[0] = \[Epsilon] \[Function] 1;
getExtendedCataniP[l_Integer] := Module[{n,\[Epsilon],s,f},
s = Series[Series[n^\[Epsilon] Gamma[n]/Gamma[n+\[Epsilon]],{\[Epsilon],0,2l}],{n,\[Infinity],l}];
s = Normal[s];
f = SeriesCoefficient[s,{n,\[Infinity],l}];
e \[Function] Evaluate[f/.{\[Epsilon]->e}]
]
getExtendedCataniP[l_Integer,k_Integer] := Module[{p,e},
p = getExtendedCataniP[l];
SeriesCoefficient[p[e],{e,0,k}]
]

getExtendedCataniQ[0] = n \[Function] 1;
getExtendedCataniQ[l_Integer] := Module[{n,\[Epsilon],f},
f = SeriesCoefficient[n^\[Epsilon] Gamma[n]/Gamma[n+\[Epsilon]],{\[Epsilon],0,l}];
nn \[Function] Evaluate[f/.{n->nn}]
]

End[ ];

EndPackage[ ];
