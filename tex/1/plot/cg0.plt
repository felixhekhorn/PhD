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
set key Left

p = "./../../data/partonic/"

set out "img/cg0T.tex"
#set yrange [-.3:1.3]
set ytics format "%.1f"
plot    p."cg0-q2_-2.dat"  u 1:2 t "$Q^2=10^{-2}$" w lines, \
	p."cg0-q2_0.dat"   u 1:2 t "$Q^2=10^0$" w lines, \
	p."cg0-q2_1.dat"   u 1:2 t "$Q^2=10^1$" w lines, \
	p."cg0-q2_2.dat"   u 1:2 t "$Q^2=10^2$" w lines, \
	p."cg0-q2_3.dat"   u 1:2 t "$Q^2=10^3$" w lines

#set title "Fig. 6. (b): c^{(0)}_{L,g}"
set out "img/cg0L.tex"
#set yrange [-.03:.16]
set ytics format "%.2f"
plot    p."cg0-q2_-2.dat"  u 1:3 t "$Q^2=10^{-2}$" w lines, \
	p."cg0-q2_0.dat"   u 1:3 t "$Q^2=10^0$" w lines, \
	p."cg0-q2_1.dat"   u 1:3 t "$Q^2=10^1$" w lines, \
	p."cg0-q2_2.dat"   u 1:3 t "$Q^2=10^2$" w lines, \
	p."cg0-q2_3.dat"   u 1:3 t "$Q^2=10^3$" w lines

#set title "Fig. 6. (p): c^{(0)}_{P,g}"
set out "img/cg0P.tex"
#set yrange [*:*]
set ytics format "%.1f"
plot    p."cg0-q2_-2.dat"  u 1:4 t "$Q^2=10^{-2}$" w lines, \
	p."cg0-q2_0.dat"   u 1:4 t "$Q^2=10^0$" w lines, \
	p."cg0-q2_1.dat"   u 1:4 t "$Q^2=10^1$" w lines, \
	p."cg0-q2_2.dat"   u 1:4 t "$Q^2=10^2$" w lines, \
	p."cg0-q2_3.dat"   u 1:4 t "$Q^2=10^3$" w lines

set out
