#!/usr/bin/gnuplot
reset

set term png

set xlabel "η []"
set logscale x
#set xrange [5e-5:3e2]
#set xtics ("-4" 1e-4, "-3" 1e-3, "-2" 1e-2, "-1" 1e-1, "0" 1e0, "1" 1e1, "2" 1e2)

set title "Fig. 8. (a): c^{bar,(1)}_{T,g}"
#set key at graph .75,.95 # Left reverse
set out "./img/figure8a.png"
#set yrange [-.3:1.3]
plot    "./data/cgbar1-q2_-2.dat"  u 1:($2+$4) t "Q²=1e-2", \
	"./data/cgbar1-q2_0.dat"   u 1:($2+$4) t "Q²=1e0" , \
	"./data/cgbar1-q2_1.dat"   u 1:($2+$4) t "Q²=1e1" , \
	"./data/cgbar1-q2_2.dat"   u 1:($2+$4) t "Q²=1e2" , \
	"./data/cgbar1-q2_3.dat"   u 1:($2+$4) t "Q²=1e3" 


set title "Fig. 8. (b): c^{bar,(1)}_{L,g}"
#set key at graph .3,.95
set out "./img/figure8b.png"
#set yrange [-.03:.16]
plot    "./data/cgbar1-q2_-2.dat"  u 1:($3+$5) t "Q²=1e-2", \
	"./data/cgbar1-q2_0.dat"   u 1:($3+$5) t "Q²=1e0" , \
	"./data/cgbar1-q2_1.dat"   u 1:($3+$5) t "Q²=1e1" , \
	"./data/cgbar1-q2_2.dat"   u 1:($3+$5) t "Q²=1e2" , \
	"./data/cgbar1-q2_3.dat"   u 1:($3+$5) t "Q²=1e3" 

set title "Fig. 8@F. (a): c^{bar,F,(1)}_{T,g}"
#set key at graph .75,.95 # Left reverse
set out "./img/figure8Fa.png"
#set yrange [-.3:1.3]
plot    "./data/cgbar1-q2_-2.dat"  u 1:2 t "Q²=1e-2", \
	"./data/cgbar1-q2_0.dat"   u 1:2 t "Q²=1e0" , \
	"./data/cgbar1-q2_1.dat"   u 1:2 t "Q²=1e1" , \
	"./data/cgbar1-q2_2.dat"   u 1:2 t "Q²=1e2" , \
	"./data/cgbar1-q2_3.dat"   u 1:2 t "Q²=1e3" 


set title "Fig. 8@F. (b): c^{bar,F,(1)}_{L,g}"
#set key at graph .3,.95
set out "./img/figure8Fb.png"
#set yrange [-.03:.16]
plot    "./data/cgbar1-q2_-2.dat"  u 1:3 t "Q²=1e-2", \
	"./data/cgbar1-q2_0.dat"   u 1:3 t "Q²=1e0" , \
	"./data/cgbar1-q2_1.dat"   u 1:3 t "Q²=1e1" , \
	"./data/cgbar1-q2_2.dat"   u 1:3 t "Q²=1e2" , \
	"./data/cgbar1-q2_3.dat"   u 1:3 t "Q²=1e3" 

set title "Fig. 8@R. (a): c^{bar,R,(1)}_{T,g}"
#set key at graph .75,.95 # Left reverse
set out "./img/figure8Ra.png"
#set yrange [-.3:1.3]
plot    "./data/cgbar1-q2_-2.dat"  u 1:4 t "Q²=1e-2", \
	"./data/cgbar1-q2_0.dat"   u 1:4 t "Q²=1e0" , \
	"./data/cgbar1-q2_1.dat"   u 1:4 t "Q²=1e1" , \
	"./data/cgbar1-q2_2.dat"   u 1:4 t "Q²=1e2" , \
	"./data/cgbar1-q2_3.dat"   u 1:4 t "Q²=1e3" 


set title "Fig. 8@R. (b): c^{bar,R,(1)}_{L,g}"
#set key at graph .3,.95
set out "./img/figure8Rb.png"
#set yrange [-.03:.16]
plot    "./data/cgbar1-q2_-2.dat"  u 1:5 t "Q²=1e-2", \
	"./data/cgbar1-q2_0.dat"   u 1:5 t "Q²=1e0" , \
	"./data/cgbar1-q2_1.dat"   u 1:5 t "Q²=1e1" , \
	"./data/cgbar1-q2_2.dat"   u 1:5 t "Q²=1e2" , \
	"./data/cgbar1-q2_3.dat"   u 1:5 t "Q²=1e3" 
set out
