#!/usr/bin/gnuplot
reset

set term eps transparent size 4,3 dashlength 2
set out "img/g1NLO-pdf.eps"

#set border 3
#set margin 3
set bmargin 1 

set logscale x

set style fill transparent pattern 4 bo

p = "./../../data/"
d1 = p."FPc-pdf-q2_1-DSSV2014.dat"
d2 = p."FPc-pdf-q2_2-DSSV2014.dat"

set style line 1 lt 2 lc rgb "#808080" lw 1 dt 3

set xrange [1e-4:.99]

set yrange [-1.4e-3:1.2e-3]
set ytics format "% .0tx10^{%T}"
#set label 1 at graph .60, graph .1 "2 x g_1 NLO" font ",18"
#set label 2 at graph .60, graph .1 "2 x g^c" font ",18"
set label at graph .7, .27 "Q^2 [GeV^2]" font ",18"
set key at graph .9, .2 Left reverse font ",18"
set xtics format ""
plot    d1 u 1:($2+$5+$8):($4+$7+$10) w filledcurve t "    10",\
        d1 u 1:($3+$6+$9)   w lines lw 3      t "" ,\
        d2 u 1:($2+$5+$8):($4+$7+$10) w filledcurve t "   100",\
        d2 u 1:($3+$6+$9)   w lines lw 3      t "" ,\
	0 w lines ls 1 t ""
