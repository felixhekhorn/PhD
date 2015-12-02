(* ::Package:: *)

BeginPackage["PhasespaceInt`"];

dDim::usage = "use dimensional regularisation";

PsInt\[Epsilon]::usage = "Phasespace integrals for any collinearity and -k,-l \[Element] \!\(\*SubscriptBox[\(\[CapitalNu]\), \(0\)]\).";
PsInta::usage = "Phasespace integrals for collinear a case";
PsInt0::usage = "Phasespace integrals for non collinear cases";

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
PsInta[1,1][a_,b_,A_,B_,C_] = (\[Pi] (2/(-4+dDim)+Log[(A+B)^2/(A^2-B^2-C^2)]))/(a (A+B));
PsInta[1,2][a_,b_,A_,B_,C_] = (\[Pi] (-2-(2 A (A+B))/(-A^2+B^2+C^2)+2/(-4+dDim)+Log[-((A+B)^2/(-A^2+B^2+C^2))]))/(a (A+B)^2);
PsInta[2,1][a_,b_,A_,B_,C_] = (\[Pi] (-1-(2 C^2)/(A+B)^2+((A B+B^2+C^2) (2/(-4+dDim)+Log[(A+B)^2/(A^2-B^2-C^2)]))/(A+B)^2))/(a^2 (A+B));
PsInta[2,2][a_,b_,A_,B_,C_] = (\[Pi] (-3 (A+B)^2-8 C^2-(2 A^2 (A+B)^2)/(-A^2+B^2+C^2)+(4 B (A+B)+6 C^2)/(-4+dDim)+(2 B (A+B)+3 C^2) Log[-((A+B)^2/(-A^2+B^2+C^2))]))/(a^2 (A+B)^4);

(* non collinear *)
PsInt0[k_,l_][a_,b_,A_,B_,C_] := (PsInt0[k,l][a,b,A,B,C]=PsInt\[Epsilon][k,l][a,b,A,B,C]) /; k<= 0 && l<=0;
PsInt0[1,-3][a_,b_,A_,B_,C_] = \[Pi]/(6b^4)(
	4b B(9A^2 b^2 \[Minus] 9a A b B + (3a^2 + b^2)B^2) + 6b(3a A b \[Minus] 3a^2 B
	+ 2b^2 B)C^2 + 3(A b \[Minus] a B)(2(A b \[Minus] a B)^2 \[Minus] 3(a^2 \[Minus] b^2)C^2 )Log[(a+b)/(a-b)]);
PsInt0[1,l_][a_,b_,A_,B_,C_] := (PsInt0[1,l][a,b,A,B,C]=Simplify[-1/(l-1)D[PsInt0[1,l-1][a,b,A,B,C],A]]) /; -3<l<=0;

End[];
EndPackage[];
