#!/usr/bin/gnuplot
reset

set term png

pin = "data/PLB353-535/"
pout = "img/PLB353-535/"

set logscale y
set ytics format "%.1e"
set yrange [1e-8:.001]

#set boxwidth 0.5 relative
#set boxwidth .5
#set style fill solid noborder
set style fill empty border

#set key left bottom box opaque

set xlabel "M [GeV]"
set xrange [0:40.]

f00 = pin . "FLb_x-42_q2-120_0.dat"
f01 = pin . "FLb_x-42_q2-120_1.dat"
f10 = pin . "FLb_x-85_q2-120_0.dat"
f11 = pin . "FLb_x-85_q2-120_1.dat"
f20 = pin . "FLb_x-160_q2-120_0.dat"
f21 = pin . "FLb_x-160_q2-120_1.dat"
f30 = pin . "FLb_x-270_q2-120_0.dat"
f31 = pin . "FLb_x-270_q2-120_1.dat"

x0(l,r) = .5*l+.5*r
x1(l,r) = .5*l+.5*r

set title "Fig. 8) dF_L(x,Q²=12GeV²,m_b²,M)/dM"
set out pout . "fig8.png"
plot f01 u (x1($1,$2)):($3/($2-$1)) w boxes t "NLO(x=4.2e-4)" lc rgb "#ff0000", f00 u (x0($1,$2)):(1.3*$3/($2-$1)) w p pt 4  lc rgb "#990000" t "LO(x=4.2e-4)",\
     f11 u (x1($1,$2)):($3/($2-$1)) w boxes t "NLO(x=8.5e-4)" lc rgb "#00ff00", f10 u (x0($1,$2)):(1.3*$3/($2-$1)) w p pt 5  lc rgb "#009900" t "LO(x=8.5e-4)",\
     f21 u (x1($1,$2)):($3/($2-$1)) w boxes t "NLO(x=1.6e-3)" lc rgb "#0000ff", f20 u (x0($1,$2)):(1.3*$3/($2-$1)) w p pt 12 lc rgb "#000099" t "LO(x=1.6e-3)",\
     f31 u (x1($1,$2)):($3/($2-$1)) w boxes t "NLO(x=2.7e-3)" lc rgb "#999999", f30 u (x0($1,$2)):(1.3*$3/($2-$1)) w p pt 13 lc rgb "#000000" t "LO(x=2.7e-3)"

set out
