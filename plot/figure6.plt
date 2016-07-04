#!/usr/bin/gnuplot
reset

set term png

set xlabel "η []"
set logscale x
#set xrange [5e-5:3e2]
#set xtics ("-4" 1e-4, "-3" 1e-3, "-2" 1e-2, "-1" 1e-1, "0" 1e0, "1" 1e1, "2" 1e2)

#set key left bottom Left reverse

set title "Fig. 6. (a): c^{(0)}_{T,g}"
set out "./img/figure6a.png"
set yrange [-.3:1.3]
plot "./data/c0-q2_-2.dat"   u 1:2 t "Q²=1e-2" w lines, \
	"./data/c0-q2_0.dat"   u 1:2 t "Q²=1" w lines, \
	"./data/c0-q2_1.dat"   u 1:2 t "Q²=1e1" w lines, \
	"./data/c0-q2_2.dat"   u 1:2 t "Q²=1e2" w lines, \
	"./data/c0-q2_3.dat"   u 1:2 t "Q²=1e3" w lines


set title "Fig. 6. (b): c^{(0)}_{L,g}"
set out "./img/figure6b.png"
set yrange [-.03:.16]
plot "./data/c0-q2_-2.dat"   u 1:3 t "Q²=1e-2" w lines, \
	"./data/c0-q2_0.dat"   u 1:3 t "Q²=1" w lines, \
	"./data/c0-q2_1.dat"   u 1:3 t "Q²=1e1" w lines, \
	"./data/c0-q2_2.dat"   u 1:3 t "Q²=1e2" w lines, \
	"./data/c0-q2_3.dat"   u 1:3 t "Q²=1e3" w lines

set out
