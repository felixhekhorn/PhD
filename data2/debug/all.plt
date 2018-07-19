#!/usr/bin/gnuplot
reset

set term png


i = "i.dat"
e2 = "e2.dat"
eL = "eL.dat"
eP = "eP.dat"

set out "2.png"
plot e2 u (.5*$1+.5*$2):($3/($2-$1)) t "e", i u 1:2 t "i"

set out "L.png"
plot eL u (.5*$1+.5*$2):($3/($2-$1)) t "e", i u 1:3 t "i"

set out "P.png"
plot eP u (.5*$1+.5*$2):($3/($2-$1)) t "e", i u 1:4 t "i"

set out
