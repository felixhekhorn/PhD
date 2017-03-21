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
pin = "data/NPB392-229-" . pdf . "/"
pout = "img/NPB392-229-" . pdf . "/"

set logscale y
set ytics format "%.1e"
set yrange [1e-5:.1]

#set boxwidth 0.5 relative
#set boxwidth 0.1
#set style fill solid noborder

set key left top

set xlabel "y []"
set xrange [-4.4:4.4]

f0 = pin . "dF2c_dy_x-3_0.dat"
f1 = pin . "dF2c_dy_x-3_1.dat"

set out pout . "fig13.png"
set title "dF_{2}(x=0.001,Q²=10GeV^2,m_c^2,y)/dy"
plot f1 u (-.5*$1-.5*$2):($3/($2-$1)) t "NLO",\
     f0 u (-.5*$1-.5*$2):($3/($2-$1))t "LO"

set out
