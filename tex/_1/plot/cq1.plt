#!/usr/bin/gnuplot
reset

set term epslatex
set size 1.1,0.81
#set border 3
#set margin 3
set bmargin 1 

#set xlabel "$\\eta$ []"
set logscale x

set label 1 at graph .02,.9
set key left center Left

p = "./../../data/partonic/"

set label 1 "(a) $c_{T,q}^{(1)}(\\eta)$"
set out "img/cq1T.tex"
set ytics format " %.2f"
plot    p."cq1-q2_-2.dat"  u 1:2 t "$Q^2=10^{-2}$" w lines, \
	p."cq1-q2_0.dat"   u 1:2 t "$Q^2=10^0$" w lines, \
	p."cq1-q2_1.dat"   u 1:2 t "$Q^2=10^1$" w lines, \
	p."cq1-q2_2.dat"   u 1:2 t "$Q^2=10^2$" w lines, \
	p."cq1-q2_3.dat"   u 1:2 t "$Q^2=10^3$" w lines

set label 1 "(b) $c_{L,q}^{(1)}(\\eta)$"
set out "img/cq1L.tex"
set ytics format "%.3f"
plot    p."cq1-q2_-2.dat"  u 1:3 t "$Q^2=10^{-2}$" w lines, \
	p."cq1-q2_0.dat"   u 1:3 t "$Q^2=10^0$" w lines, \
	p."cq1-q2_1.dat"   u 1:3 t "$Q^2=10^1$" w lines, \
	p."cq1-q2_2.dat"   u 1:3 t "$Q^2=10^2$" w lines, \
	p."cq1-q2_3.dat"   u 1:3 t "$Q^2=10^3$" w lines

set label 1 "(c) $c_{P,q}^{(1)}(\\eta)$"
set key left bottom
set out "img/cq1P.tex"
set ytics format "%.3f"
plot    p."cq1-q2_-2.dat"  u 1:4 t "$Q^2=10^{-2}$" w lines, \
	p."cq1-q2_0.dat"   u 1:4 t "$Q^2=10^0$" w lines, \
	p."cq1-q2_1.dat"   u 1:4 t "$Q^2=10^1$" w lines, \
	p."cq1-q2_2.dat"   u 1:4 t "$Q^2=10^2$" w lines, \
	p."cq1-q2_3.dat"   u 1:4 t "$Q^2=10^3$" w lines

set out
