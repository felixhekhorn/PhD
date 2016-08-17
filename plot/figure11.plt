#!/usr/bin/gnuplot
reset

set term png

set xlabel "η []"
set logscale x
#set xrange [5e-5:3e2]
#set xtics ("-4" 1e-4, "-3" 1e-3, "-2" 1e-2, "-1" 1e-1, "0" 1e0, "1" 1e1, "2" 1e2)

set title "Fig. 11. (a): d^{(1)}_{T,q}"
set key left top
set out "./img/figure11a.png"
#set yrange [-.3:1.3]
plot    "./data/dq1-q2_-2.dat"  u 1:2 t "Q²=1e-2", \
	"./data/dq1-q2_0.dat"   u 1:2 t "Q²=1e0" , \
	"./data/dq1-q2_1.dat"   u 1:2 t "Q²=1e1" , \
	"./data/dq1-q2_2.dat"   u 1:2 t "Q²=1e2" , \
	"./data/dq1-q2_3.dat"   u 1:2 t "Q²=1e3" 

set title "Fig. 11. (b): d^{(1)}_{L,q}"
#set key at graph .3,.95
set out "./img/figure11b.png"
#set yrange [-.03:.16]
plot    "./data/dq1-q2_-2.dat"  u 1:3 t "Q²=1e-2", \
	"./data/dq1-q2_0.dat"   u 1:3 t "Q²=1e0" , \
	"./data/dq1-q2_1.dat"   u 1:3 t "Q²=1e1" , \
	"./data/dq1-q2_2.dat"   u 1:3 t "Q²=1e2" , \
	"./data/dq1-q2_3.dat"   u 1:3 t "Q²=1e3" 

set title "Fig. 11. (p): Δd^{(1)}_{q}"
#set key at graph .3,.95
set out "./img/figure11p.png"
#set yrange [-.03:.16]
plot    "./data/dq1-q2_-2.dat"  u 1:4 t "Q²=1e-2", \
	"./data/dq1-q2_0.dat"   u 1:4 t "Q²=1e0" , \
	"./data/dq1-q2_1.dat"   u 1:4 t "Q²=1e1" , \
	"./data/dq1-q2_2.dat"   u 1:4 t "Q²=1e2" , \
	"./data/dq1-q2_3.dat"   u 1:4 t "Q²=1e3" 

set out
