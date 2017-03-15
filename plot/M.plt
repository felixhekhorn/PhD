#!/usr/bin/gnuplot
reset

set term png

pin = "data/"
pout = "img/"

set logscale y
set ytics format "%.1e"
#set yrange [1e-5:.1]

#set boxwidth 0.5 relative
#set boxwidth .5
#set style fill solid noborder
set style fill empty border

#set key left bottom box opaque

set xlabel "M [GeV]"
#set xrange [0:40.]

f0 = pin . "M0.dat"
f1 = pin . "M1.dat"
f2 = pin . "M2.dat"
f3 = pin . "M3.dat"

x0(l,r) = .5*l+.5*r
x1(l,r) = .5*l+.5*r

set out pout . "M.png"
plot f0 u (x1($1,$2)):($3/($2-$1)) w boxes t "M0",\
     f1 u (x1($1,$2)):($3/($2-$1)) w boxes t "M1",\
     f2 u (x1($1,$2)):($3/($2-$1)) w boxes t "M2",\
     f3 u (x1($1,$2)):($3/($2-$1)) w boxes t "M3"

set out
