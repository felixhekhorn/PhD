#!/usr/bin/gnuplot
reset

set term png

pin = "data/PLB353-535/"
pout = "img/PLB353-535/"

set logscale y
set ytics format "%.1e"
set yrange [1e-8:.1]

#set boxwidth 0.5 relative
#set boxwidth .5
#set style fill solid noborder
set style fill empty border

set xlabel "M [GeV]"
set xrange [0:40.]
f0 = pin . "FLc_x-85_q2-85_0.dat"
f1 = pin . "FLc_x-85_q2-85_1.dat"
set title "x = 8.5e-4"
set out pout . "fig2.png"
plot f1 u ($1*.5+$2*.5):($3/($2-$1)) w boxes t "NLO(Q²=8.5)", f0 u ($1*.5+$2*.5):(1.3*$3/($2-$1)) w p pt 4 t "LO(Q²=8.5)"

set out
