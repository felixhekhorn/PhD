#!/usr/bin/gnuplot
reset

set term png

pin = "data/NPB392-229/"
pout = "img/NPB392-229/"

set logscale y
set ytics format "%.1e"
set yrange [1e-6:.01]

#set boxwidth 0.5 relative
set boxwidth 0.06
set style fill solid noborder

#set key left top

set xlabel "rapidity []"
set xrange [-3.:3.]
f0 = pin . "fig17-0.dat"
f1 = pin . "fig17-1.dat"
set out pout . "fig17.png"
plot f1 u (.3*$1+.6*$2):($3/($2-$1)) w boxes t "1+", f1 u (.3*$1+.6*$2):(-$3/($2-$1)) w boxes t "1-",\
     f0 u (.6*$1+.3*$2):($3/($2-$1)) w boxes t "0+", f0 u (.6*$1+.3*$2):(-$3/($2-$1)) w boxes t "0-"

set out
