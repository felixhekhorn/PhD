#!/usr/bin/gnuplot
reset

set term png

i = "xt-i.dat"
e2 = "xt-e2.dat"
eL = "xt-eL.dat"
eP = "xt-eP.dat"

set logscale y

set out "xt-o2.png"
plot e2 u (.5*$1+.5*$2):($3/($2-$1)) t "e", i u 1:2 t "i"

set out "xt-oL.png"
plot eL u (.5*$1+.5*$2):($3/($2-$1)) t "e", i u 1:3 t "i"

unset logscale y

set out "xt-oP.png"
plot eP u (.5*$1+.5*$2):($3/($2-$1)) t "e", i u 1:4 t "i"

set out
