(* ::Package:: *)

MellinTrafo::hasStillVar = "expression still contains untransformed variables!";
MellinTrafo[expr_,var_, n_]:=Block[
{exprexpanded, ret, getLn},
getLn[w_,v_] := 2^(-w)*Sum[getC[w,j,2*v]*Log[n]^(w-j),{j,0,w}]+ O[n,Infinity];
exprexpanded=Expand[expr];
(*Print[exprexpanded // FullForm];*)
ret = Replace[exprexpanded , {
(* \[Rho]^u\[Beta]^vLog[\[Beta]]^w *)
coeff_*var^u_*(1-var)^v_*Log[Sqrt[1-var]]^w_:> coeff*Beta[n+u,v+1]*getLn[w,v]/;FreeQ[coeff,var] ,
coeff_*var*(1-var)^v_*Log[Sqrt[1-var]]^w_:> coeff*Beta[n+1,v+1]*getLn[w,v]/;FreeQ[coeff,var] ,
coeff_*var^u_*(1-var)^v_*Log[Sqrt[1-var]]:> coeff*Beta[n+u,v+1]*getLn[1,v]/;FreeQ[coeff,var] ,
coeff_*var*(1-var)^v_*Log[Sqrt[1-var]]:> coeff*Beta[n+1,v+1]*getLn[1,v]/;FreeQ[coeff,var],
(* \[Rho]^u\[Beta]^vLog[\[Rho]]^w *)
coeff_*var^(u_)*(1-var)^v_*Log[var]^w_:> coeff*Beta[n+u,v+1](1+O[n,Infinity])/;FreeQ[coeff,var] , 
coeff_*var^(u_)*(1-var)^v_*Log[var]:> coeff*Beta[n+u,v+1](1+O[n,Infinity])/;FreeQ[coeff,var] , 
coeff_*var*(1-var)^v_*Log[var]^w_:> coeff*Beta[n+1,v+1](1+O[n,Infinity])/;FreeQ[coeff,var] , 
coeff_*var*(1-var)^v_*Log[var]:> coeff*Beta[n+1,v+1](1+O[n,Infinity])/;FreeQ[coeff,var] ,
(* \[Beta]^vLog[\[Beta]]^w *)
coeff_*(1-var)^v_*Log[Sqrt[1-var]]^w_:> coeff*Beta[n+0,v+1]*getLn[w,v] /;FreeQ[coeff,var],
coeff_*(1-var)^v_*Log[Sqrt[1-var]]:> coeff*Beta[n+0,v+1]*getLn[1,v]/;FreeQ[coeff,var] ,
(* \[Rho]^uLog[\[Rho]]^w *)
coeff_*var^u_*Log[var]^w_:> coeff*(1/(n+u) + O[n,Infinity])/;FreeQ[coeff,var] ,
coeff_*var*Log[var]^w_:> coeff*(1/(n+1) + O[n,Infinity])/;FreeQ[coeff,var] ,
coeff_*var^u_*Log[var]:> coeff*(1/(n+u) + O[n,Infinity])/;FreeQ[coeff,var] ,
(* \[Rho]^u\[Beta]^v *)
coeff_*var^(u_)*(1-var)^v_:> coeff*Beta[n+u,v+1]/;FreeQ[coeff,var] , 
coeff_*var*(1-var)^v_:> coeff*Beta[n+1,v+1]/;FreeQ[coeff,var] ,
coeff_*var^(u_)*(1-var):> coeff*Beta[n+u,1+1]/;FreeQ[coeff,var] ,
(* Log[\[Beta]]^w *)
coeff_*Log[Sqrt[1-var]]^w_:> coeff*Beta[n+0,0+1]*getLn[w,0]/;FreeQ[coeff,var] ,
coeff_*Log[Sqrt[1-var]]:> coeff*Beta[n+0,0+1]*getLn[1,0]/;FreeQ[coeff,var] ,
(* Log[\[Rho]]^w *)
coeff_*Log[var]^w_:> coeff*(1/n + O[n,Infinity])/;FreeQ[coeff,var] ,
coeff_*Log[var]:> coeff*(1/n + O[n,Infinity])/;FreeQ[coeff,var] ,
(* \[Beta]^v *)
coeff_*(1-var)^v_:> coeff*Beta[n,v+1]/;FreeQ[coeff,var] ,
coeff_*(1-var):> coeff*Beta[n,1+1]/;FreeQ[coeff,var] ,
(* \[Rho]^u *)
coeff_:> coeff*1/(n+0)/;FreeQ[coeff,var] ,
coeff_*var^(u_):> coeff*1/(n+u)/;FreeQ[coeff,var] ,
coeff_*var:> coeff*1/(n+1)/;FreeQ[coeff,var] 
(*
var^(u_)*(1-var)^v_:> Beta[n+u,v+1],
var*(1-var)^v_:> Beta[n+1,v+1],
var^(u_)*(1-var):> Beta[n+u,1+1],
(1-var)^v_:> Beta[n,v+1],
(1-var):> Beta[n,1+1],
Log[var]^w_:> 1/n + O[n,Infinity],
Log[var]:> 1/n + O[n,Infinity],
var^u_*Log[var]^w_:> 1/(n+u) + O[n,Infinity],
var*Log[var]^w_:> 1/(n+0) + O[n,Infinity],
var^u_*Log[var]:> 1/(n+u) + O[n,Infinity],
var^(u_):>1/(n+u),
var:>1/(n+1),
Log[Sqrt[1-var]]^w_:> 1/n*2^(-w)*(Sum[getC[w,j,1]*Log[n]^(w-j),{j,0,w}] + O[n,Infinity] ),
Log[Sqrt[1-var]]:> 1/n*2^(-1)*(Sum[getC[1,j,1]*Log[n]^(1-j),{j,0,1}] + O[n,Infinity])
(1-var)^v_*Log[Sqrt[1-var]]^w_:> Beta[n+0,v+1]*(2^(-w)*Sum[getC[w,j,2*v]*Log[n]^(w-j),{j,0,w}]+ O[n,Infinity]) ,
(1-var)^v_*Log[Sqrt[1-var]]:> Beta[n+0,v+1]*(2^(-1)*Sum[getC[1,j,2*v]*Log[n]^(1-j),{j,0,1}]+ O[n,Infinity])*)
},If[Head[exprexpanded]==Plus,{1},{0},{0}]];
If[!FreeQ[ret,var],Message[MellinTrafo::hasStillVar]];
ret
]
MellinTrafo2[expr_,var1_,var2_,n_] := MellinTrafo[expr//. {var2 -> Sqrt[1-var1]},var1,n];
