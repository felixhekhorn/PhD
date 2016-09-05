#!/usr/bin/gnuplot
reset

set term png

Nx = 150
NQ2 = 70

set xlabel "x []"
set xrange[-.5:Nx-.5]
set xtics ("1e-5" 0, "1e-4" Nx/5, "1e-3" 2*Nx/5, "1e-2" 3*Nx/5, "1e-1" 4*Nx/5, "1e0" Nx-1)

set ylabel "Q² [GeV²]"
set yrange[-.5:NQ2-.5]
unset key
set ytics ("1e1" 1, "5e1" NQ2/4, "1e2" NQ2/2, "5e2" 3*NQ2/4, "1e3" NQ2-1)

set palette defined (-10 "dark-green", -2 "green", 0 "white", 2 "red", 4 "dark-red")
set out "gluon_err.png"
plot "gluon_err.dat" u 1:2:3 w image

set out
