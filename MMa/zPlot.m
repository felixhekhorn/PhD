(* ::Package:: *)

Options[zPlotReIm] = {"xmin" -> -1, "xmax" -> 5, "ymin" -> -3, "ymax" -> 3};
zPlotReIm[f_Function, opts:OptionsPattern[]]:=Module[
 {fn,x,y,xmin,xmax,ymin,ymax},
 fn = f[x+y*I];
 xmin = OptionValue["xmin"];
 xmax = OptionValue["xmax"];
 ymin = OptionValue["ymin"];
 ymax = OptionValue["ymax"];
 Show[
  ContourPlot[Im[fn],{x,xmin,xmax},{y,ymin,ymax},ContourShading->Automatic,ExclusionsStyle->Red],
  ContourPlot[Re[fn],{x,xmin,xmax},{y,ymin,ymax},ContourShading->False,ContourStyle->Blue,ExclusionsStyle->Red],
  FrameLabel->{"Re(z)","Im(z)"},
  Background->Lighter[Orange],
  PlotRangePadding->0,
  PlotLabel->Framed[Grid[{
   {Style["-",Bold,Blue],"\[GothicCapitalR]f(z)"},
   {Style["-",Bold,Gray],"\[GothicCapitalJ]f(z)"}
   },Alignment->Left],
  FrameStyle->None,Background->White,RoundingRadius->5],
  ImageSize->400]
]
Options[zPlotAbsArg] = {"xmin" -> -1, "xmax" -> 5, "ymin" -> -3, "ymax" -> 3};
zPlotAbsArg[f_Function, opts:OptionsPattern[]]:=Module[
 {fn,x,y,xmin,xmax,ymin,ymax},
 fn = f[x+y*I];
 xmin = OptionValue["xmin"];
 xmax = OptionValue["xmax"];
 ymin = OptionValue["ymin"];
 ymax = OptionValue["ymax"];
 Show[
  ContourPlot[Arg[fn],{x,xmin,xmax},{y,ymin,ymax},ContourShading->Automatic,ExclusionsStyle->Red,ColorFunction->"Rainbow"],
  ContourPlot[Abs[fn],{x,xmin,xmax},{y,ymin,ymax},ContourShading->False,ContourStyle->Blue,ExclusionsStyle->Red],
  FrameLabel->{"Re(z)","Im(z)"},
  Background->Lighter[Orange],
  PlotRangePadding->0,
  PlotLabel->Framed[Grid[{
   {Style["-",Bold,Blue],"arg(f(z))"},
   {Style["-",Bold,Gray],"|f(z)|"}
  },Alignment->Left],
  FrameStyle->None,Background->White,RoundingRadius->5],
 ImageSize->400]
]
Options[zPlotRow] = {"xmin" -> -1, "xmax" -> 5, "ymin" -> -3, "ymax" -> 3};
zPlotRow[f_Function, opts:OptionsPattern[]] := GraphicsRow[{zPlotReIm[f,opts],zPlotAbsArg[f,opts]}];
