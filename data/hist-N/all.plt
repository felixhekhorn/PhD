#!/usr/bin/gnuplot
reset

set term png

pN1 = "N1/"
pN2 = "N2/"
pN3 = "N3/"
pN4 = "N4/"
pN8 = "N8/"

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
plot pN1.fz u (.5*$1+.5*$2):($3/($2-$1)) t "N1",\
     pN2.fz u (.5*$1+.5*$2):($3/($2-$1)) t "N2",\
     pN3.fz u (.5*$1+.5*$2):($3/($2-$1)) t "N3",\
     pN4.fz u (.5*$1+.5*$2):($3/($2-$1)) t "N4",\
     pN8.fz u (.5*$1+.5*$2):($3/($2-$1)) t "N8"

set xlabel "x []"
set out "x.png"
plot pN1.fx u (.5*$1+.5*$2):($3/($2-$1)) t "N1",\
     pN2.fx u (.5*$1+.5*$2):($3/($2-$1)) t "N2",\
     pN3.fx u (.5*$1+.5*$2):($3/($2-$1)) t "N3",\
     pN4.fx u (.5*$1+.5*$2):($3/($2-$1)) t "N4",\
     pN8.fx u (.5*$1+.5*$2):($3/($2-$1)) t "N8"

unset logscale x
set xlabel "y []"
set out "y.png"
plot pN1.fy u (.5*$1+.5*$2):($3/($2-$1)) t "N1",\
     pN2.fy u (.5*$1+.5*$2):($3/($2-$1)) t "N2",\
     pN3.fy u (.5*$1+.5*$2):($3/($2-$1)) t "N3",\
     pN4.fy u (.5*$1+.5*$2):($3/($2-$1)) t "N4",\
     pN8.fy u (.5*$1+.5*$2):($3/($2-$1)) t "N8"

set xlabel "Theta1 []"
set out "Theta1.png"
plot pN1.fTheta1 u (.5*$1+.5*$2):($3/($2-$1)) t "N1",\
     pN2.fTheta1 u (.5*$1+.5*$2):($3/($2-$1)) t "N2",\
     pN3.fTheta1 u (.5*$1+.5*$2):($3/($2-$1)) t "N3",\
     pN4.fTheta1 u (.5*$1+.5*$2):($3/($2-$1)) t "N4",\
     pN8.fTheta1 u (.5*$1+.5*$2):($3/($2-$1)) t "N8"

set xlabel "Theta2 []"
set out "Theta2.png"
plot pN1.fTheta2 u (.5*$1+.5*$2):($3/($2-$1)) t "N1",\
     pN2.fTheta2 u (.5*$1+.5*$2):($3/($2-$1)) t "N2",\
     pN3.fTheta2 u (.5*$1+.5*$2):($3/($2-$1)) t "N3",\
     pN4.fTheta2 u (.5*$1+.5*$2):($3/($2-$1)) t "N4",\
     pN8.fTheta2 u (.5*$1+.5*$2):($3/($2-$1)) t "N8"

set xlabel "p_t [GeV]"
set out "pt.png"
plot pN1.fpt u (.5*$1+.5*$2):($3/($2-$1)) t "N1",\
     pN2.fpt u (.5*$1+.5*$2):($3/($2-$1)) t "N2",\
     pN3.fpt u (.5*$1+.5*$2):($3/($2-$1)) t "N3",\
     pN4.fpt u (.5*$1+.5*$2):($3/($2-$1)) t "N4",\
     pN8.fpt u (.5*$1+.5*$2):($3/($2-$1)) t "N8"

set xlabel "rap []"
set out "rap.png"
plot pN1.frap u (.5*$1+.5*$2):($3/($2-$1)) t "N1",\
     pN2.frap u (.5*$1+.5*$2):($3/($2-$1)) t "N2",\
     pN3.frap u (.5*$1+.5*$2):($3/($2-$1)) t "N3",\
     pN4.frap u (.5*$1+.5*$2):($3/($2-$1)) t "N4",\
     pN8.frap u (.5*$1+.5*$2):($3/($2-$1)) t "N8"

set out
