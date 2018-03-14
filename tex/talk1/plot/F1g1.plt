#!/usr/bin/gnuplot
reset

#set term epslatex
#set size 1.1,0.81
#set border 3
#set margin 1
#set bmargin 1 

set term eps
set out "img/F1g1.eps"

set multiplot
#set margins char 7,2,3.3,1
#set spacing screen 0, char .3
#scale 1,0.3

set style line 1 lt 2 lc rgb "#808080" lw 1 dt 3
set style line 2 lc rgb "#e00000" lw 2 dt 1
set style line 3 lc rgb "#000070" lw 2 dt 1
#set style line 4 lc rgb "#00e000" lw 2 dt 2
#set style line 5 lc rgb "#007000" lw 2 dt 2

set logscale x
set xrange [1e-4:.99]

p = "./../../data/"
f1 = "Fc-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
f2 = "Fc-q2_2-MSTW2008nlo90cl-DSSV2014.dat"

set label 1 at graph 0.62, graph .91 "2 x F_1" font ",20"
set label 11 at graph 0.62, graph .91 "2 x F^c" font ",20"
set label 2 at graph 0.08, .32 "Q^2 = 10 GeV^2" font ",20"

set rmargin 0.8
set lmargin 5.3
set tmargin 0.5

#set ytics format "%.e"
set logscale y
set yrange [2e-5:1.]
set ytics 1e-5, 10, 1
set ytics format "10^{%T}"
set ytics add ("1" 1)
#set ytics add ("1" 1,  "10^{-2}" 1e-2, "10^{-4}" 1e-4)
#set my2tics 2
set xtics format ""
set key left bottom samplen 2.5 Left reverse font ",20"
set size 0.5,0.7
set origin 0.0,0.3
plot    p.f1 u 1:($2-$5)                   w lines ls 2      t "LO" ,\
	p.f1 u 1:(($2+$3+$4)-($5+$6+$7))   w lines ls 3      t "NLO"

unset label 2
set label 1 at graph .06, graph .82 "NLO/LO" font ",20"
unset label 11
set size 0.5,0.34
set origin 0.0,0.0

set nologscale y
set yrange [.6:2.1]
set ytics add  ("1.0" 1, "" 1.25 1, "1.5" 1.5, "" 1.75 1,  "2.0" 2)
set xtics 1e-4, 10, 1 format "10^{%T}"

set xlabel "x" offset 11, 1.3
plot    p.f1 u 1:(abs((($2+$3+$4)-($5+$6+$7))/($2-$5))) ls 3   w lines       t "" ,\
	1 w line ls 1 t ""

### ------------------------------

set label 1 at graph 0.07, graph .91 "2 x g_1" font ",20"
set label 11 at graph 0.07, graph .91 "2 x g^c" font ",20"

set rmargin 7
set lmargin 0.8
#set bmargin 0

set xrange [1e-4:1]
unset ytics
set y2tics mirror
unset logscale y
set my2tics 2
set yrange [-1.6e-4:2.9e-4]
set y2tics format "% .0tx10^{%T}"
set y2tics -2e-4, 1e-4, 4e-4
set size 0.5,0.7
set origin 0.5,0.3
unset xlabel
set xtics auto
set xtics format ""
plot    p.f1 u 1:($8)        ls 2  w lines       t "" ,\
	p.f1 u 1:($8+$9+$10) ls 3  w lines       t "" ,\
	0 w line ls 1 t ""

unset label 1
set label 1 at graph .06, graph .82 "NLO/LO" font ",20"
unset label 11
set size 0.5,0.34
set origin 0.5,0.0
set yrange [.6:2.1]
set y2range [.6:2.1]
unset ytics
unset y2tics
unset mytics
unset my2tics
set y2tics mirror
set y2tics add ("1.0" 1, "" 1.25 1, "1.5" 1.5, "" 1.75 1,  "2.0" 2)
set xtics 1e-4, 10, 1 format "10^{%T}"
set xtics add ("1" 1.)
set xlabel "x" offset 11, 1.3
plot    p.f1 u 1:(abs(($8+$9+$10)/($8))) ls 3  w lines       t "" ,\
	1 w line ls 1 t ""
