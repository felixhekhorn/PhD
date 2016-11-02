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

set key default Left

p = "./../../data/partonic/"

#set key left bottom Left
set label 1 "(a) $\\bar c_{T,g}^{R,(1)}(\\eta)$"
set out "img/cgBarR1T.tex"
set ytics format "%.2f"
plot    p."cgBarR1-q2_-2.dat"  u 1:2 t "$Q^2=10^{-2}$" w lines, \
	p."cgBarR1-q2_0.dat"   u 1:2 t "$Q^2=10^0$" w lines, \
	p."cgBarR1-q2_1.dat"   u 1:2 t "$Q^2=10^1$" w lines, \
	p."cgBarR1-q2_2.dat"   u 1:2 t "$Q^2=10^2$" w lines, \
	p."cgBarR1-q2_3.dat"   u 1:2 t "$Q^2=10^3$" w lines

set label 1 "(b) $\\bar c_{L,g}^{R,(1)}(\\eta)$"
#set key default Left
#set key left top 
set out "img/cgBarR1L.tex"
set ytics format "%.3f"
plot    p."cgBarR1-q2_-2.dat"  u 1:3 t "$Q^2=10^{-2}$" w lines, \
	p."cgBarR1-q2_0.dat"   u 1:3 t "$Q^2=10^0$" w lines, \
	p."cgBarR1-q2_1.dat"   u 1:3 t "$Q^2=10^1$" w lines, \
	p."cgBarR1-q2_2.dat"   u 1:3 t "$Q^2=10^2$" w lines, \
	p."cgBarR1-q2_3.dat"   u 1:3 t "$Q^2=10^3$" w lines

set label 1 "(c) $\\bar c_{P,g}^{R,(1)}(\\eta)$"
#set key right top
set out "img/cgBarR1P.tex"
set ytics format "%.2f"
plot    p."cgBarR1-q2_-2.dat"  u 1:4 t "$Q^2=10^{-2}$" w lines, \
	p."cgBarR1-q2_0.dat"   u 1:4 t "$Q^2=10^0$" w lines, \
	p."cgBarR1-q2_1.dat"   u 1:4 t "$Q^2=10^1$" w lines, \
	p."cgBarR1-q2_2.dat"   u 1:4 t "$Q^2=10^2$" w lines, \
	p."cgBarR1-q2_3.dat"   u 1:4 t "$Q^2=10^3$" w lines

set out
