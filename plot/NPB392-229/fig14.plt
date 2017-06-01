#!/usr/bin/gnuplot
reset

set term png size 640,640
set size square

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
set mytics 10

#set boxwidth 0.5 relative
#set boxwidth 0.1
#set style fill solid noborder

set key left top

set xlabel "y []"
set xrange [-5.5:5.5]
set xtics 2
set mxtics 4

f0 = pin . "dF2c_dy_x-4_0.dat"
f1 = pin . "dF2c_dy_x-4_1.dat"
g0 = pin . "dF2c_dy_inc_x-4_0.dat"
g1 = pin . "dF2c_dy_inc_x-4_1.dat"

set out pout . "fig14.png"
set title sprintf("dF_{2}(x=0.0001,Q²=10GeV^2,m_c^2,y)/dy with %s",pdf)
plot f1 u (-.5*$1-.5*$2):($3/($2-$1)) t "NLO excl.",\
     f0 u (-.5*$1-.5*$2):($3/($2-$1)) t "LO excl.",\
     g0 u (-$1):2 t "LO incl.",\
     g1 u (-$1):2 t "NLO incl."

set out
