#!/usr/bin/gnuplot
reset

set term epslatex
set size 1.1,0.72
#set border 3
#set margin 3

#set xlabel "$\\eta$ []"
set logscale x
#set xrange [5e-5:3e2]
#set xtics ("-4" 1e-4, "-3" 1e-3, "-2" 1e-2, "-1" 1e-1, "0" 1e0, "1" 1e1, "2" 1e2)

#set key left bottom Left reverse
set key default Left

p = "./../../data/partonic/"

#set key left bottom Left
set out "img/cgBarR1T.tex"
set ytics format "%.2f"
plot    p."cgBarR1-q2_-2.dat"  u 1:2 t "$Q^2=10^{-2}$" w lines, \
	p."cgBarR1-q2_0.dat"   u 1:2 t "$Q^2=10^0$" w lines, \
	p."cgBarR1-q2_1.dat"   u 1:2 t "$Q^2=10^1$" w lines, \
	p."cgBarR1-q2_2.dat"   u 1:2 t "$Q^2=10^2$" w lines, \
	p."cgBarR1-q2_3.dat"   u 1:2 t "$Q^2=10^3$" w lines

#set key default Left
#set key left top 
set out "img/cgBarR1L.tex"
set ytics format "%.3f"
plot    p."cgBarR1-q2_-2.dat"  u 1:3 t "$Q^2=10^{-2}$" w lines, \
	p."cgBarR1-q2_0.dat"   u 1:3 t "$Q^2=10^0$" w lines, \
	p."cgBarR1-q2_1.dat"   u 1:3 t "$Q^2=10^1$" w lines, \
	p."cgBarR1-q2_2.dat"   u 1:3 t "$Q^2=10^2$" w lines, \
	p."cgBarR1-q2_3.dat"   u 1:3 t "$Q^2=10^3$" w lines

#set key right top
set out "img/cgBarR1P.tex"
set ytics format "%.2f"
plot    p."cgBarR1-q2_-2.dat"  u 1:4 t "$Q^2=10^{-2}$" w lines, \
	p."cgBarR1-q2_0.dat"   u 1:4 t "$Q^2=10^0$" w lines, \
	p."cgBarR1-q2_1.dat"   u 1:4 t "$Q^2=10^1$" w lines, \
	p."cgBarR1-q2_2.dat"   u 1:4 t "$Q^2=10^2$" w lines, \
	p."cgBarR1-q2_3.dat"   u 1:4 t "$Q^2=10^3$" w lines

set out
