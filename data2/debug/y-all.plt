#!/usr/bin/gnuplot
reset

set term png

i = "y-i.dat"
e2 = "y-e2.dat"
eL = "y-eL.dat"
eP = "y-eP.dat"

set out "y-o2.png"
plot e2 u (.5*$1+.5*$2):($3/($2-$1)) t "e", i u 1:2 t "i"

set out "y-oL.png"
plot eL u (.5*$1+.5*$2):($3/($2-$1)) t "e", i u 1:3 t "i"

set out "y-oP.png"
plot eP u (.5*$1+.5*$2):($3/($2-$1)) t "e", i u 1:4 t "i"

set out
