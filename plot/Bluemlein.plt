#!/usr/bin/gnuplot
reset

set term png

set xlabel "η []"
set logscale x
set xtics format "%.0e"

set logscale y
set ytics format "%.0e"

set key left bottom

set title "abs rel. error of grid points to d^{(1)}_{T,q}(η,ξ)"
set out "./img/dq1-Bluemlein-T.png"
plot    "./data/partonic/Bluemlein/dq1-q2_-2-cmp.dat" u 1:(abs($2)) t "Q2=1e-2",\
        "./data/partonic/Bluemlein/dq1-q2_0-cmp.dat" u 1:(abs($2)) t "Q2=1e0",\
        "./data/partonic/Bluemlein/dq1-q2_1-cmp.dat" u 1:(abs($2)) t "Q2=1e1",\
        "./data/partonic/Bluemlein/dq1-q2_2-cmp.dat" u 1:(abs($2)) t "Q2=1e2",\
        "./data/partonic/Bluemlein/dq1-q2_3-cmp.dat" u 1:(abs($2)) t "Q2=1e3"

set title "abs rel. error of grid points to d^{(1)}_{L,q}(η,ξ)"
set out "./img/dq1-Bluemlein-L.png"
plot    "./data/partonic/Bluemlein/dq1-q2_-2-cmp.dat" u 1:(abs($3)) t "Q2=1e-2",\
        "./data/partonic/Bluemlein/dq1-q2_0-cmp.dat" u 1:(abs($3)) t "Q2=1e0",\
        "./data/partonic/Bluemlein/dq1-q2_1-cmp.dat" u 1:(abs($3)) t "Q2=1e1",\
        "./data/partonic/Bluemlein/dq1-q2_2-cmp.dat" u 1:(abs($3)) t "Q2=1e2",\
        "./data/partonic/Bluemlein/dq1-q2_3-cmp.dat" u 1:(abs($3)) t "Q2=1e3"

set title "abs rel. error of grid points to d^{(1)}_{P,q}(η,ξ)"
set out "./img/dq1-Bluemlein-P.png"
plot    "./data/partonic/Bluemlein/dq1-q2_-2-cmp.dat" u 1:(abs($4)) t "Q2=1e-2",\
        "./data/partonic/Bluemlein/dq1-q2_0-cmp.dat" u 1:(abs($4)) t "Q2=1e0",\
        "./data/partonic/Bluemlein/dq1-q2_1-cmp.dat" u 1:(abs($4)) t "Q2=1e1",\
        "./data/partonic/Bluemlein/dq1-q2_2-cmp.dat" u 1:(abs($4)) t "Q2=1e2",\
        "./data/partonic/Bluemlein/dq1-q2_3-cmp.dat" u 1:(abs($4)) t "Q2=1e3"

set out
