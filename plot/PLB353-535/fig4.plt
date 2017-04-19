#!/usr/bin/gnuplot
reset

set term png

if (ARGC < 1) {
  print "USAGE: ".ARG0." pdf"
  exit
}
#pdf = "MSTW2008nlo90cl"
#pdf = "cteq66"
pdf = ARG1
pin = "data/PLB353-535-" . pdf . "/"
pout = "img/PLB353-535-" . pdf . "/"

set logscale y
set ytics format "%.1e"
set yrange [1e-8:.1]

#set boxwidth 0.5 relative
#set boxwidth .5
#set style fill solid noborder
set style fill empty border

#set key left bottom box opaque

set xlabel "M [GeV]"
set xrange [0:40.]

f00 = pin . "dFLc_dM_x-42_q2-120_0.dat"
f01 = pin . "dFLc_dM_x-42_q2-120_1.dat"
f10 = pin . "dFLc_dM_x-85_q2-120_0.dat"
f11 = pin . "dFLc_dM_x-85_q2-120_1.dat"
f20 = pin . "dFLc_dM_x-160_q2-120_0.dat"
f21 = pin . "dFLc_dM_x-160_q2-120_1.dat"
f30 = pin . "dFLc_dM_x-270_q2-120_0.dat"
f31 = pin . "dFLc_dM_x-270_q2-120_1.dat"

x0(l,r) = .5*l+.5*r
x1(l,r) = .5*l+.5*r

set title sprintf("Fig. 4) dF_L(x,Q²=12GeV²,m_c²,M)/dM with %s",pdf)
set out pout . "fig4.png"
plot f01 u (x1($1,$2)):($3/($2-$1)) w boxes t "NLO(x=4.2e-4)" lc rgb "#ff0000", f00 u (x0($1,$2)):(1.9*$3/($2-$1)) w p pt 4  lc rgb "#990000" t "LO(x=4.2e-4)",\
     f11 u (x1($1,$2)):($3/($2-$1)) w boxes t "NLO(x=8.5e-4)" lc rgb "#00ff00", f10 u (x0($1,$2)):(1.9*$3/($2-$1)) w p pt 5  lc rgb "#009900" t "LO(x=8.5e-4)",\
     f21 u (x1($1,$2)):($3/($2-$1)) w boxes t "NLO(x=1.6e-3)" lc rgb "#0000ff", f20 u (x0($1,$2)):(1.9*$3/($2-$1)) w p pt 12 lc rgb "#000099" t "LO(x=1.6e-3)",\
     f31 u (x1($1,$2)):($3/($2-$1)) w boxes t "NLO(x=2.7e-3)" lc rgb "#999999", f30 u (x0($1,$2)):(1.5*$3/($2-$1)) w p pt 13 lc rgb "#000000" t "LO(x=2.7e-3)"

set out
