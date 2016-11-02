#!/usr/bin/gnuplot
reset

set term epslatex
set size 1.1,0.81
#set border 3
#set margin 3
set bmargin 1 

#set xlabel "$\\eta$ []"
set logscale x

set label 1 at graph .02,.07

p = "./../../data/partonic/"

set label 1 "(a) $c_{T,g}^{(1)}(\\eta)$"
set key at graph .75,.95 Left
set out "img/cg1T.tex"
set ytics format "  %.1f"
plot    p."cg1-q2_-2.dat"  u 1:2 t "$Q^2=10^{-2}$" w lines, \
	p."cg1-q2_0.dat"   u 1:2 t "$Q^2=10^0$" w lines, \
	p."cg1-q2_1.dat"   u 1:2 t "$Q^2=10^1$" w lines, \
	p."cg1-q2_2.dat"   u 1:2 t "$Q^2=10^2$" w lines, \
	p."cg1-q2_3.dat"   u 1:2 t "$Q^2=10^3$" w lines

set label 1 "(b) $c_{L,g}^{(1)}(\\eta)$"
set key default
set key left top Left
set out "img/cg1L.tex"
set ytics format "%.3f"
plot    p."cg1-q2_-2.dat"  u 1:3 t "$Q^2=10^{-2}$" w lines, \
	p."cg1-q2_0.dat"   u 1:3 t "$Q^2=10^0$" w lines, \
	p."cg1-q2_1.dat"   u 1:3 t "$Q^2=10^1$" w lines, \
	p."cg1-q2_2.dat"   u 1:3 t "$Q^2=10^2$" w lines, \
	p."cg1-q2_3.dat"   u 1:3 t "$Q^2=10^3$" w lines

set label 1 "(c) $c_{P,g}^{(1)}(\\eta)$"
set key right top
set out "img/cg1P.tex"
set ytics format "  %.1f"
plot    p."cg1-q2_-2.dat"  u 1:4 t "$Q^2=10^{-2}$" w lines, \
	p."cg1-q2_0.dat"   u 1:4 t "$Q^2=10^0$" w lines, \
	p."cg1-q2_1.dat"   u 1:4 t "$Q^2=10^1$" w lines, \
	p."cg1-q2_2.dat"   u 1:4 t "$Q^2=10^2$" w lines, \
	p."cg1-q2_3.dat"   u 1:4 t "$Q^2=10^3$" w lines

set out
