#!/usr/bin/gnuplot
reset

set term png

set xlabel "η []"
set logscale x
#set xrange [5e-5:3e2]
#set xtics ("-4" 1e-4, "-3" 1e-3, "-2" 1e-2, "-1" 1e-1, "0" 1e0, "1" 1e1, "2" 1e2)

set title "Fig. 8. (a): c^{bar,(1)}_{T,g}"
set out "./img/figure8a.png"
plot    "./data/partonic/cgbar1-q2_-2.dat"  u 1:($2+$5) t "Q²=1e-2", \
	"./data/partonic/cgbar1-q2_0.dat"   u 1:($2+$5) t "Q²=1e0" , \
	"./data/partonic/cgbar1-q2_1.dat"   u 1:($2+$5) t "Q²=1e1" , \
	"./data/partonic/cgbar1-q2_2.dat"   u 1:($2+$5) t "Q²=1e2" , \
	"./data/partonic/cgbar1-q2_3.dat"   u 1:($2+$5) t "Q²=1e3" 

set title "Fig. 8. (b): c^{bar,(1)}_{L,g}"
set out "./img/figure8b.png"
plot    "./data/partonic/cgbar1-q2_-2.dat"  u 1:($3+$6) t "Q²=1e-2", \
	"./data/partonic/cgbar1-q2_0.dat"   u 1:($3+$6) t "Q²=1e0" , \
	"./data/partonic/cgbar1-q2_1.dat"   u 1:($3+$6) t "Q²=1e1" , \
	"./data/partonic/cgbar1-q2_2.dat"   u 1:($3+$6) t "Q²=1e2" , \
	"./data/partonic/cgbar1-q2_3.dat"   u 1:($3+$6) t "Q²=1e3" 

set title "Fig. 8. (p): Δc^{bar,(1)}_{g}"
set out "./img/figure8p.png"
plot    "./data/partonic/cgbar1-q2_-2.dat"  u 1:($4+$7) t "Q²=1e-2", \
	"./data/partonic/cgbar1-q2_0.dat"   u 1:($4+$7) t "Q²=1e0" , \
	"./data/partonic/cgbar1-q2_1.dat"   u 1:($4+$7) t "Q²=1e1" , \
	"./data/partonic/cgbar1-q2_2.dat"   u 1:($4+$7) t "Q²=1e2" , \
	"./data/partonic/cgbar1-q2_3.dat"   u 1:($4+$7) t "Q²=1e3" 


set title "Fig. 8\\@F. (a): c^{bar,F,(1)}_{T,g}"
set out "./img/figure8Fa.png"
plot    "./data/partonic/cgbar1-q2_-2.dat"  u 1:2 t "Q²=1e-2", \
	"./data/partonic/cgbar1-q2_0.dat"   u 1:2 t "Q²=1e0" , \
	"./data/partonic/cgbar1-q2_1.dat"   u 1:2 t "Q²=1e1" , \
	"./data/partonic/cgbar1-q2_2.dat"   u 1:2 t "Q²=1e2" , \
	"./data/partonic/cgbar1-q2_3.dat"   u 1:2 t "Q²=1e3" 

set title "Fig. 8\\@F. (b): c^{bar,F,(1)}_{L,g}"
set out "./img/figure8Fb.png"
plot    "./data/partonic/cgbar1-q2_-2.dat"  u 1:3 t "Q²=1e-2", \
	"./data/partonic/cgbar1-q2_0.dat"   u 1:3 t "Q²=1e0" , \
	"./data/partonic/cgbar1-q2_1.dat"   u 1:3 t "Q²=1e1" , \
	"./data/partonic/cgbar1-q2_2.dat"   u 1:3 t "Q²=1e2" , \
	"./data/partonic/cgbar1-q2_3.dat"   u 1:3 t "Q²=1e3" 

set title "Fig. 8\\@F. (p): Δc^{bar,F,(1)}_{g}"
set out "./img/figure8Fp.png"
plot    "./data/partonic/cgbar1-q2_-2.dat"  u 1:4 t "Q²=1e-2", \
	"./data/partonic/cgbar1-q2_0.dat"   u 1:4 t "Q²=1e0" , \
	"./data/partonic/cgbar1-q2_1.dat"   u 1:4 t "Q²=1e1" , \
	"./data/partonic/cgbar1-q2_2.dat"   u 1:4 t "Q²=1e2" , \
	"./data/partonic/cgbar1-q2_3.dat"   u 1:4 t "Q²=1e3" 


set title "Fig. 8\\@R. (a): c^{bar,R,(1)}_{T,g}"
set out "./img/figure8Ra.png"
plot    "./data/partonic/cgbar1-q2_-2.dat"  u 1:5 t "Q²=1e-2", \
	"./data/partonic/cgbar1-q2_0.dat"   u 1:5 t "Q²=1e0" , \
	"./data/partonic/cgbar1-q2_1.dat"   u 1:5 t "Q²=1e1" , \
	"./data/partonic/cgbar1-q2_2.dat"   u 1:5 t "Q²=1e2" , \
	"./data/partonic/cgbar1-q2_3.dat"   u 1:5 t "Q²=1e3" 

set title "Fig. 8\\@R. (b): c^{bar,R,(1)}_{L,g}"
set out "./img/figure8Rb.png"
plot    "./data/partonic/cgbar1-q2_-2.dat"  u 1:6 t "Q²=1e-2", \
	"./data/partonic/cgbar1-q2_0.dat"   u 1:6 t "Q²=1e0" , \
	"./data/partonic/cgbar1-q2_1.dat"   u 1:6 t "Q²=1e1" , \
	"./data/partonic/cgbar1-q2_2.dat"   u 1:6 t "Q²=1e2" , \
	"./data/partonic/cgbar1-q2_3.dat"   u 1:6 t "Q²=1e3" 

set title "Fig. 8\\@R. (p): Δc^{bar,R,(1)}_{g}"
set out "./img/figure8Rp.png"
plot    "./data/partonic/cgbar1-q2_-2.dat"  u 1:7 t "Q²=1e-2", \
	"./data/partonic/cgbar1-q2_0.dat"   u 1:7 t "Q²=1e0" , \
	"./data/partonic/cgbar1-q2_1.dat"   u 1:7 t "Q²=1e1" , \
	"./data/partonic/cgbar1-q2_2.dat"   u 1:7 t "Q²=1e2" , \
	"./data/partonic/cgbar1-q2_3.dat"   u 1:7 t "Q²=1e3" 

set out
