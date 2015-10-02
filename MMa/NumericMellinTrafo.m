(* ::Package:: *)

(* Mellin Trafos *)
getMellinTrafo[f_Function]:= n \[Function]NIntegrate[(\[Rho]^(n-1) Evaluate[f[\[Rho]]]),{\[Rho],0,1},(*PrecisionGoal->3,*)MaxRecursion->26];
getInvMellinTrafo[f_Function,Cmp_:2.7,eps_:1*^-5]:= \[Rho]\[Function]Module[{n},
	NIntegrate[N[(1+I*4eps*x^3)/(2\[Pi])(\[Rho]^-n f[n])/.{n->Cmp+I*x-eps*x^4}],{x,-\[Infinity],\[Infinity]},(*PrecisionGoal->3,*)MaxRecursion->26]
]
getInvMellinTrafoCut[f_Function,Cmp_:2.7,m_:1*^8,eps_:1*^-5]:= \[Rho]\[Function]Module[{n},
	NIntegrate[(1+I*4eps*x^3)/(2\[Pi])(\[Rho]^-n f[n])/.{n->Cmp+I*x-eps*x^4},{x,-m,m},(*PrecisionGoal->3,*)MaxRecursion->26]
]
