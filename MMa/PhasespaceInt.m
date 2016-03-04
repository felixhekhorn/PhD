(* ::Package:: *)

BeginPackage["PhasespaceInt`"];

dDim::usage = "use dimensional regularisation";

PsInt\[Epsilon]::usage = "Phasespace integrals for any collinearity and -k,-l \[Element] \!\(\*SubscriptBox[\(\[CapitalNu]\), \(0\)]\).";
PsInta::usage = "Phasespace integrals for collinear case in ab";
PsHatInta::usage = "Phasespace integrals shifted by one hat moment for collinear case in ab";
PsInt0::usage = "Phasespace integrals for non collinear cases";

NPsInt::usage = "numeric evaluation of phasespace integrals for any collinearity";

Begin["`Private`"];
dDim;

(* any collinearity and -k,-l \[Element] Subscript[\[CapitalNu], 0]. *)
PsInt\[Epsilon][0,0][a_,b_,A_,B_,C_] = 2\[Pi]/(dDim-3);
PsInt\[Epsilon][-1,0][a_,b_,A_,B_,C_] = 2\[Pi] a/(dDim-3);
PsInt\[Epsilon][0,-1][a_,b_,A_,B_,C_] = 2\[Pi] A/(dDim-3);
PsInt\[Epsilon][-2,0][a_,b_,A_,B_,C_] = (2\[Pi] (b^2+a^2 (dDim-1)))/((dDim-3) (dDim-1));
PsInt\[Epsilon][-1,-1][a_,b_,A_,B_,C_] = (2\[Pi] (b B+a A (dDim-1)))/((dDim-3) (dDim-1));
PsInt\[Epsilon][0,-2][a_,b_,A_,B_,C_] = (2\[Pi] (B^2+C^2+A^2 (dDim-1)))/((dDim-3) (dDim-1));

(* collinear a *)
PsInta[k_,l_][a_,b_,A_,B_,C_] := (PsInta[k,l][a,b,A,B,C]=PsInt\[Epsilon][k,l][a,b,A,B,C]) /; k<= 0 && l<=0;
PsInta[1,0][a_,b_,A_,B_,C_] = (2\[Pi])/(a(dDim-4));
PsInta[1,-1][a_,b_,A_,B_,C_] = (2\[Pi] (B+A(dDim-3)))/(a(dDim-4)(dDim-3));
PsInta[1,-2][a_,b_,A_,B_,C_] = (2\[Pi] (C^2 (dDim-4)+(2 A B+B^2+A^2 (dDim-3))(dDim-2)))/(a(dDim-4)(dDim-3)(dDim-2));
PsInta[2,0][a_,b_,A_,B_,C_] = (2 \[Pi])/(a^2(dDim-6));
PsInta[2,-1][a_,b_,A_,B_,C_] = (2\[Pi] (2 B+A (dDim-4)))/(a^2(dDim-6)(dDim-4));
PsInta[2,-2][a_,b_,A_,B_,C_] = (2 (C^2 (-6+dDim)+4 A B (-3+dDim)+A^2 (-4+dDim) (-3+dDim)+B^2 dDim) \[Pi])/(a^2(-6+dDim) (-4+dDim) (-3+dDim));
PsInta[1,1][a_,b_,A_,B_,C_] = With[{Y=Sqrt[B^2+C^2]},(\[Pi] (
	2/(-4+dDim)+Log[(A+B)^2/(A^2-B^2-C^2)]+(dDim-4)/2(Log[(A-Y)/(A+B)]^2
			-1/2Log[(A+Y)/(A-Y)]^2+2PolyLog[2,-(B+Y)/(A-Y)]
			-2PolyLog[2,(B-Y)/(A+B)]
		)
	))/(a (A+B))];
PsInta[1,2][a_,b_,A_,B_,C_] = (\[Pi] (-2-(2 A (A+B))/(-A^2+B^2+C^2)+2/(-4+dDim)+Log[-((A+B)^2/(-A^2+B^2+C^2))]))/(a (A+B)^2);
PsInta[2,1][a_,b_,A_,B_,C_] = (\[Pi] (-1-(2 C^2)/(A+B)^2+((A B+B^2+C^2) (2/(-4+dDim)+Log[(A+B)^2/(A^2-B^2-C^2)]))/(A+B)^2))/(a^2 (A+B));
PsInta[2,2][a_,b_,A_,B_,C_] = (\[Pi] (-3 (A+B)^2-8 C^2-(2 A^2 (A+B)^2)/(-A^2+B^2+C^2)+(4 B (A+B)+6 C^2)/(-4+dDim)+(2 B (A+B)+3 C^2) Log[-((A+B)^2/(-A^2+B^2+C^2))]))/(a^2 (A+B)^4);
PsInta[0,l_][a_,b_,A_,B_,C_] := (PsInta[0,l][a,b,A,B,C]=PsInt0[0,l][a,b,A,B,C]) /; l>0;
PsInta[k_,l_][a_,b_,A_,B_,C_] := (PsInta[k,l][a,b,A,B,C]=Simplify@PsInt0[l,k][A,-Sqrt[B^2+C^2],a,a*B/Sqrt[B^2+C^2],a*C/Sqrt[B^2+C^2]]) /; -3<=k<0 && l>0;

(* non collinear *)
PsInt0[k_,l_][a_,b_,A_,B_,C_] := (PsInt0[k,l][a,b,A,B,C]=PsInt\[Epsilon][k,l][a,b,A,B,C]) /; k<= 0 && l<=0;
PsInt0[1,-3][a_,b_,A_,B_,C_] = \[Pi]/(6b^4)((
		4b B(9A^2 b^2 \[Minus] 9a A b B + (3a^2 + b^2)B^2) + 6b(3a A b \[Minus] 3a^2 B
		+ 2b^2 B)C^2 + 3(A b \[Minus] a B)(2(A b \[Minus] a B)^2 \[Minus] 3(a^2 \[Minus] b^2)C^2 )Log[(a+b)/(a-b)]
	)
	+(dDim-4)/12*(
		4b(-4B(-27A^2b^2-27a A b B +(9a^2+4b^2)B^2) +3(-27a A b
		+27a^2B-16b^2B)C^2)+(A b - a B)(9Log[(a+b)/(a-b)](6(a^2-b^2)C^2
		+(2(A b-a B)^2-3(a^2-b^2)C^2)Log[(a+b)/(a-b)])+36(2(A b-a B)^2
		-3(a^2-b^2)C^2)PolyLog[2,-2b/(a-b)])
	)
);
PsInt0[1,l_] := Module[{Aa},
	PsInt0[1,l] = {a,b,A,B,C}\[Function]Evaluate[Simplify[-1/(l-1)D[PsInt0[1,l-1][a,b,Aa,B,C],Aa]/.{Aa->A}]]
] /; -3<l<=0;
PsInt0[k_,l_] := Module[{aa},
	PsInt0[k,l] = {a,b,A,B,C}\[Function]Evaluate@Simplify[(-1)/(k-1)D[PsInt0[k-1,l][aa,b,A,B,C],aa]/.{aa->a}]
] /; k>1 && -3<=l<=0;
(*PsInt0[0,1][a_,b_,A_,B_,C_] = With[{Y=B^2+C^2},\[Pi]/Sqrt[Y]Log[(A+Sqrt[Y])/(A-Sqrt[Y])]];*)
PsInt0[0,1][a_,b_,A_,B_,C_] = Simplify@PsInt0[1,0][A,-Sqrt[B^2+C^2],a,-b*B/Sqrt[B^2+C^2],-b*C/Sqrt[B^2+C^2]];
PsInt0[0,l_] := Module[{Aa},
	PsInt0[0,l] = {a,b,A,B,C}\[Function]Evaluate@Simplify[(-1)^(l-1)/(l-1)!D[PsInt0[0,1][a,b,Aa,B,C],{Aa,l-1}]/.{Aa->A}]
] /; l>1;
PsInt0[1,1][a_,b_,A_,B_,C_] = With[{X=(a*A-b*B)^2-(A^2-B^2-C^2)(a^2-b^2)},\[Pi]/Sqrt[X]Log[(a*A-b*B+Sqrt[X])/(a*A-b*B-Sqrt[X])]];
PsInt0[1,l_] := Module[{Aa},
	PsInt0[1,l] = {a,b,A,B,C}\[Function]Evaluate@Simplify[(-1)^(l-1)/(l-1)!D[PsInt0[1,1][a,b,Aa,B,C],{Aa,l-1}]/.{Aa->A}]
] /; l>1;
PsInt0[k_,l_] := Module[{aa},
	PsInt0[k,l] = {a,b,A,B,C}\[Function]Simplify[(-1)^(k-1)/(k-1)!D[PsInt0[1,l][aa,b,A,B,C],{aa,k-1}]/.{aa->a}]
] /; k>1 && l>=1;
PsInt0[k_,l_][a_,b_,A_,B_,C_] := (PsInt0[k,l][a,b,A,B,C]=Simplify@PsInt0[l,k][A,-Sqrt[B^2+C^2],a,-b*B/Sqrt[B^2+C^2],-b*C/Sqrt[B^2+C^2]]) /; -3<=k<0 && l>0;

(* numeric evaluation *)
NPsInt[k_,l_][a_,b_,A_,B_,C_]:=NIntegrate[Sin[t1](a+b Cos[t1])^(-k)(A+B Cos[t1]+C Sin[t1]Cos[t2])^(-l),{t1,0,\[Pi]},{t2,0,\[Pi]}]

(* hat space: collinear a *)
PsHatInta[2,0][a_,b_,A_,B_,C_] = 2\[Pi]/(a^2(dDim-4));
PsHatInta[2,1][a_,b_,A_,B_,C_] = 2\[Pi]/(a^2(dDim-4)(A+B));
PsHatInta[2,l_] := Module[{Aa},
	PsHatInta[2,l] = {a,b,A,B,C}\[Function]Evaluate@Simplify[(-1)^(l-1)/(l-1)!D[PsHatInta[2,1][a,b,Aa,B,C],{Aa,l-1}]/.{Aa->A}]
] /; l>1;


End[];
EndPackage[];
