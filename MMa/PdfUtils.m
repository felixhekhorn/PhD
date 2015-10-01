(* ::Package:: *)

BeginPackage["PdfUtils`"];

getFitLog::usage = "finds a fit f[Log[x]] to a LHAPDF pdf set";
checkFitLog::usage = "plots to check a fit f[Log[x]] to a LHAPDF pdf set";

getFit2::usage = "finds a fit to a LHAPDF pdf set";
checkFit2::usage = "plots to check a fit to a LHAPDF pdf set";

Begin["`Private`"];

(* Mellin Trafos *)
getMellinTrafo[f_Function] = n \[Function]NIntegrate[(x^(n-1) f[x]),{x,0,1},(*PrecisionGoal->3,*)MaxRecursion->26];

defaultPdfOptions = {
 "pdf" -> {"MSTW2008nnlo68cl",0},
 "pid" -> 21,
 "Q" -> 1.25,
 "lnxmin" -> -6.,
 "dlnx" -> 0.1
};

Options[getData] = defaultPdfOptions;
getData[opts:OptionsPattern[]] :=
Module[{pdfId, xs, lx},
 (* compute data points *)
 Needs["HEPMath`LHAPDF`"];
 pdfId = HEPMath`LHAPDF`LHAPDFOpen@@OptionValue["pdf"];
 xs = Table[10^(lnx),{lnx,OptionValue["lnxmin"],0,OptionValue["dlnx"]}];
 lx = HEPMath`LHAPDF`LHAPDF[pdfId,OptionValue["pid"],#,OptionValue["Q"]]&/@xs;
 HEPMath`LHAPDF`LHAPDFClose[pdfId];
 (* fit function *)
 Return[Transpose[{xs,lx}]];
]

Options[getFitLog] = defaultPdfOptions;
getFitLog[maxpLnx_Integer,maxp1MxLnx_Integer,maxpx1MxLnx_Integer,opts:OptionsPattern[]] :=
Module[{data},
 (* compute data points *)
 data = getData[opts];
 data = {Log@#[[1]],#[[2]]}&/@data;
 (* fit function *)
 Return[getFitLogFromData[maxpLnx,maxp1MxLnx,maxpx1MxLnx,data]];
]

getFitLogFromData[maxpLnx_Integer,maxp1MxLnx_Integer,maxpx1MxLnx_Integer,data_List] :=
Module[{fitx, pLnx, p1MxLnx, px1MxLnx, ps, fitSol, getMTT, fitN},
 (* fit function *)
 fitx = lnx \[Function] Evaluate[
				Sum[pLnx[j]*lnx^j,{j,maxpLnx}] + 
				p1MxLnx[0](1-Exp[lnx]) + 
				Sum[p1MxLnx[j](1-Exp[lnx])lnx^(j),{j,maxp1MxLnx}] +
				Sum[px1MxLnx[j]Exp[lnx](1-Exp[lnx])lnx^(j),{j,maxpx1MxLnx}]
			   ];
 getMTT[u_,y_,w_Integer] := n \[Function] Block[{x},D[Beta[x,1+y],{x,w}]/.{x->n+u}];
 fitN = n \[Function] Evaluate[
				Sum[pLnx[j]*getMTT[0,0,j][n],{j,maxpLnx}] + 
				p1MxLnx[0]getMTT[0,1,0][n] + 
				Sum[p1MxLnx[j]getMTT[0,1,j][n],{j,maxp1MxLnx}] +
				Sum[px1MxLnx[j]getMTT[1,1,j][n],{j,maxpx1MxLnx}]
			 ];
 (* find fit *)
 ps = Join[
		Evaluate[pLnx[#]&/@Table[j,{j,maxpLnx}]],
		Evaluate[p1MxLnx[#]&/@Table[j,{j,0,maxp1MxLnx}]],
		Evaluate[px1MxLnx[#]&/@Table[j,{j,0,maxpx1MxLnx}]]
      ];
 fitSol = FindFit[data,fitx[lnx],ps,lnx];
 If[List != Head[fitSol] || FindFit == Head[fitSol],Return[$Failed]];
 (* return functions and solution *)
 Return[{x\[Function]Evaluate[fitx[Log[x]]/.fitSol], n\[Function]Evaluate[fitN[n]/.fitSol], fitSol}];
]

Options[getFit2] = defaultPdfOptions;
getFit2[opts:OptionsPattern[]] :=
Module[{data},
 (* compute data points *)
 data = getData[opts];
 (* fit function *)
 Return[getFit2FromData[data]];
]

getFit2FromData[data_List] := Module[{fitx,nn,\[Alpha],\[Beta],\[Eta],\[Kappa],p,q,r,ps,fitN,fitSol},
 fitx = x \[Function] nn*x^\[Alpha]*(1-x)^\[Beta]*(1+\[Eta]*x^\[Kappa]+Sum[p[j]x^j,{j,10}]);
 fitN = n \[Function] nn*(Beta[n+\[Alpha],1+\[Beta]]+
				\[Eta]*Beta[n+\[Alpha]+\[Kappa],1+\[Beta]]+
				Sum[p[j]*Beta[n+\[Alpha]+j,1+\[Beta]],{j,10}]
			);
 ps = {nn,\[Alpha],\[Beta],\[Eta],\[Kappa]}~Join~Table[p[j],{j,10}];
 fitSol = FindFit[data,{fitx[x],\[Alpha]>0&&\[Beta]>0&&(\[Alpha]+\[Kappa])>0},ps,x];
 If[List!=Head[fitSol] || FindFit==Head[fitSol],Return[$Failed]];
 Return[{x\[Function]Evaluate[fitx[x]/.fitSol], n\[Function]Evaluate[fitN[n]/.fitSol], fitSol}];
]

Options[checkFit] = Join[defaultPdfOptions,{
 "ymax" -> 15,
 "dy" -> 0.25
}];
checkFit[fit_List,Cmps_:{2.7},opts:OptionsPattern[]] :=
Module[{pdfId,xs,xfx,lx,lxfit,\[Chi]x,ys,fN,lys,lysfit,\[Chi]ys},
 (* compute data points *)
 Needs["HEPMath`LHAPDF`"];
 pdfId = HEPMath`LHAPDF`LHAPDFOpen@@OptionValue["pdf"];
 xs = Table[10^(lnx),{lnx,OptionValue["lnxmin"],0,OptionValue["dlnx"]}];
 xfx = x \[Function] Evaluate@HEPMath`LHAPDF`LHAPDF[pdfId,OptionValue["pid"],x,OptionValue["Q"]];
 lx = xfx[#]&/@xs;
 (* get fit *)
 Print[fit[[3]]];

 (* compare x space *)
 Print[Show[
	ListLogLinearPlot[Transpose[{xs,lx}],AxesLabel -> {"x","xf[x]"},PlotRange -> {Full,Full}],
	LogLinearPlot[fit[[1]][x],{x,10^OptionValue["lnxmin"],1},PlotRange -> {Full,Full}],
 ImageSize-> 400]];
 lxfit = fit[[1]][#]&/@xs;
 \[Chi]x = Total[Abs[lx-lxfit]^2]/(1+Length[lx]-Length[fit[[3]]]);
 Print["\!\(\*SubscriptBox[\(\[Chi]\.b2\), \(x\)]\) = ",\[Chi]x];

 (* compare N space *)
 ys = Table[y,{y,0,OptionValue["ymax"],OptionValue["dy"]}];
 fN = getMellinTrafo[xfx];
 lys = (Cmp \[Function] fN[Cmp+I #]&/@ys)/@Cmps;
 Print[GraphicsRow[{
	Show[
		ListPlot[Transpose[{ys,Re@#}]&/@lys,PlotRange->{Full,Full},AxesLabel -> {"y","Re[xf[\!\(\*SubscriptBox[\(C\), \(MP\)]\)+Iy]]"}],
		Plot[Evaluate[(Cmp \[Function] Re@fit[[2]][Cmp+I y])/@Cmps],{y,0,OptionValue["ymax"]},PlotRange-> {Full,Full}]
	],
	Show[
		ListPlot[Transpose[{ys,Im@#}]&/@lys,PlotRange->{Full,Full},AxesLabel -> {"y","Im[xf[\!\(\*SubscriptBox[\(C\), \(MP\)]\)+Iy]]"}],
		Plot[Evaluate[(Cmp \[Function] Im@fit[[2]][Cmp+I y])/@Cmps],{y,0,OptionValue["ymax"]},PlotRange-> {Full,Full}]
	]
 },ImageSize-> 600]];
 lysfit = (Cmp \[Function] (fit[[2]][Cmp+I #])&/@ys)/@Cmps;
 \[Chi]ys = {};
 Do[\[Chi]ys = Append[\[Chi]ys,(Total[Abs[lys[[j]]-lysfit[[j]]]^2])/(1+Length[ys]-Length[fit[[3]]])],{j,Length[Cmps]}];
 Print["\!\(\*SubscriptBox[\(\[Chi]\.b2\), \(y\)]\) = ",\[Chi]ys];

 HEPMath`LHAPDF`LHAPDFClose[pdfId];
]

Options[checkFitLog] = Options[checkFit];
checkFitLog[maxpLnx_Integer,maxp1MxLnx_Integer,maxpx1MxLnx_Integer,Cmps_:{2.7},opts:OptionsPattern[]]:= checkFit[getFitLog[maxpLnx,maxp1MxLnx,maxpx1MxLnx,opts],Cmps,opts]

Options[checkFit2] = Options[checkFit];
checkFit2[Cmps_:{2.7},opts:OptionsPattern[]]:= checkFit[getFit2[opts],Cmps,opts]

End[ ];

EndPackage[ ];
