#!/usr/bin/gnuplot
reset

set term eps transparent size 4,5 dashlength 2
set out "img/A1-pdf.eps"

#set border 3
#set margin 3
set lmargin 5

set logscale x
set xtics format "10^{%T}"

set multiplot

set style fill transparent pattern 4 bo

set key right bottom

p = "./../../data/"
d1 = p."ALL-pdf-q2_1-DSSV2014-MSTW2008nlo90cl.dat"

set style line 1 lt 2 lc rgb "#808080" lw 1 dt 3

set label 1 at graph .03,.95 "A_1(x,Q^2 = 10 GeV^2)" font ",18"
set label 2 at graph .03,.95 "A^c" font ",18"
set size 1,1
set origin 0.0,0.0
set yrange [-.5e-1:5e-1]
set xrange [1e-4:5.3e-1]
set ytics -1e-1,1e-1,10e-1 format "%.1f"
set mytics 2
set xlabel "x" offset 7,1.3 font ",18"
set key at graph .3, graph .22 Left reverse spacing 1.6 font ",18"
plot    d1 u 1:2:4 w filledcurve t "LO",\
        d1 u 1:3   w lines lw 3      t "",\
	d1 u 1:5:7 w filledcurve t "NLO",\
        d1 u 1:6   w lines lw 3      t "",\
	0 w lines ls 1 t ""

unset label 1
unset label 2
#set yrange [-1e-2:2e-2]
#set ytics -1e-2,1e-2,3e-2 format "%.2f"
set yrange [-.7e-2:1e-2]
set ytics -1e-2,.25e-2,3e-2 format "%.4f"

set xrange [1e-4:1e-2]
set size .6,0.5
set origin 0.16,0.40
set xtics format "10^{%T}"
set xlabel "x" offset 7,1.3
#set xtics add ("10^{-4}" 1e-4, "10^{-2}" 1e-2)
unset key
#set errorbars 2
plot    d1 u 1:2:4 w filledcurve t "LO",\
        d1 u 1:3   w lines lw 3      t "",\
	d1 u 1:5:7 w filledcurve t "NLO",\
        d1 u 1:6   w lines lw 3      t "",\
	0 w lines ls 1 t ""#,\
#	'<echo "0.001 -0.001 0.0005 0.001"' w xyerrorbars lc rgb "#e00000" pt 5 ps 1.2 lw 2


