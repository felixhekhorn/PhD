#!/usr/bin/gnuplot
reset

set term png

pN2 = "it2/"
pN3 = "it3/"
pN4 = "it4/"

fz = "log10z.dat"
fx = "x.dat"
fy = "y.dat"
fTheta1 = "Theta1.dat"
fTheta2 = "Theta2.dat"
fpt = "pt.dat"
frap = "rap.dat"

set ytics format "%.1e"

set logscale x
set xlabel "z []"
set out "log10z.png"
plot pN2.fz u (.5*$1+.5*$2):($3/($2-$1)) t "it2",\
     pN3.fz u (.5*$1+.5*$2):($3/($2-$1)) t "it3",\
     pN4.fz u (.5*$1+.5*$2):($3/($2-$1)) t "it4"

set xlabel "x []"
set out "x.png"
plot pN2.fx u (.5*$1+.5*$2):($3/($2-$1)) t "it2",\
     pN3.fx u (.5*$1+.5*$2):($3/($2-$1)) t "it3",\
     pN4.fx u (.5*$1+.5*$2):($3/($2-$1)) t "it4"

unset logscale x
set logscale y
set xlabel "y []"
set out "y.png"
plot pN2.fy u (.5*$1+.5*$2):($3/($2-$1)) t "it2",\
     pN3.fy u (.5*$1+.5*$2):($3/($2-$1)) t "it3",\
     pN4.fy u (.5*$1+.5*$2):($3/($2-$1)) t "it4"

unset logscale y
set xlabel "Theta1 []"
set out "Theta1.png"
plot pN2.fTheta1 u (.5*$1+.5*$2):($3/($2-$1)) t "it2",\
     pN3.fTheta1 u (.5*$1+.5*$2):($3/($2-$1)) t "it3",\
     pN4.fTheta1 u (.5*$1+.5*$2):($3/($2-$1)) t "it4"

set xlabel "Theta2 []"
set out "Theta2.png"
plot pN2.fTheta2 u (.5*$1+.5*$2):($3/($2-$1)) t "it2",\
     pN3.fTheta2 u (.5*$1+.5*$2):($3/($2-$1)) t "it3",\
     pN4.fTheta2 u (.5*$1+.5*$2):($3/($2-$1)) t "it4"

set xlabel "p_t [GeV]"
set out "pt.png"
plot pN2.fpt u (.5*$1+.5*$2):($3/($2-$1)) t "it2",\
     pN3.fpt u (.5*$1+.5*$2):($3/($2-$1)) t "it3",\
     pN4.fpt u (.5*$1+.5*$2):($3/($2-$1)) t "it4"

set xlabel "rap []"
set out "rap.png"
plot pN2.frap u (.5*$1+.5*$2):($3/($2-$1)) t "it2",\
     pN3.frap u (.5*$1+.5*$2):($3/($2-$1)) t "it3",\
     pN4.frap u (.5*$1+.5*$2):($3/($2-$1)) t "it4"

set out
