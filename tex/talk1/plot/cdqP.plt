#!/usr/bin/gnuplot
reset

#set term png transparent size 500,1000 dashlength 3
#set out "img/cdqP.png"

set term eps transparent size 15,5 dashlength 2
set out "img/cdqP.eps"

#set border 3
#set margin 3
set bmargin 1 

set logscale x
#set xrange [5e-5:3e2]
set xtics format ""
#set xtics ("-4" 1e-4, "-3" 1e-3, "-2" 1e-2, "-1" 1e-1, "0" 1e0, "1" 1e1, "2" 1e2)

#set key left bottom Left reverse
set key right bottom Left

p = "./../../data/partonic/"

#set size 3.,.3
set multiplot layout 1,3 margins char 7,2,3.3,1 spacing char 7, char .3# scale 3,0.3

#set size 1,0.33
#set origin 0.0,0.66
set xlabel "η" font ",18"
set xtics format "%g"

set style line 1 lt 2 lc rgb "#800000" lw 3 dt 1 ps 0.6
set style line 2 lt 2 lc rgb "#008000" lw 3 dt 2 ps 0.6
set style line 3 lt 2 lc rgb "#000080" lw 3 dt 4 ps 0.6
set style line 4 lt 2 lc rgb "#808080" lw 1 dt 3

#set style line 1 lt 2 lc rgb "#ff0000" lw 2
#set style line 2 lt 2 lc rgb "#800000" lw 2 dt 2
#set style line 3 lt 2 lc rgb "#00ff00" lw 2
#set style line 4 lt 2 lc rgb "#008000" lw 2 dt 2
#set style line 5 lt 2 lc rgb "#0000ff" lw 2
#set style line 6 lt 2 lc rgb "#000080" lw 2 dt 2


#set label 1 at graph .02,.07
set label 2 "c_{P,q}" at graph 0.1,0.9 font ",18"
set label 1 "c^{(1)}" at graph 0.1,0.9 font ",18"
#set label 2 "k=T" at 0.003,.9
#set label 3 "k=P"  at 0.003,.75
#set label 4 "Q^2 = 10^3 GeV^2"  at 0.003,.6
set label 5 at graph .74, graph .3 "Q^2[GeV^2]" font ",18"
set key at graph .9, graph .12 spacing 1.2 Left reverse font ",18"
set yrange [-.009:.0075]
set ytics format " %.3f"
plot    0 t "" w lines ls 4,\
	p."cq1-q2_-2.dat"  u 1:4 t "" w linespoints ls 1 pi -10 pt 5, \
	p."cq1-q2_-2.dat"  u 1:4 t "  10^{-2}" w lines ls 1, \
        p."cq1-q2_2.dat"   u 1:4 t "" w linespoints ls 2 pi -10 pt 5, \
        p."cq1-q2_2.dat"   u 1:4 t "  10^{2}" w lines ls 2, \
	p."cq1-q2_3.dat"   u 1:4 t "" w linespoints ls 3 pi -10 pt 5, \
	p."cq1-q2_3.dat"   u 1:4 t "  10^{3}" w lines ls 3      
unset label 5

#set size 1,0.33
#set origin 0.0,0.33
#unset label 1
#unset label 2
unset label 3
unset label 4
set arrow 1 from graph .1, 0.915 to graph 0.12,0.915 nohead
#set label 5 "@^{/=18-}c_{P,q}^{(1)}(η)" at graph 0.1,0.9 font ",18"
#set key left bottom
#set out "img/cg1TP.tex"
set yrange [-.0047:.0023]
#set ytics format "%.2f"
plot    0 t "" w lines ls 4,\
	p."cqBarF1-q2_-2.dat"  u 1:4 t "" w linespoints ls 1 pi -10 pt 5, \
        p."cqBarF1-q2_2.dat"   u 1:4 t "" w linespoints ls 2 pi -10 pt 5, \
        p."cqBarF1-q2_3.dat"   u 1:4 t "" w linespoints ls 3 pi -10 pt 5
unset arrow 1

#set size 1,0.33
#set origin 0.0,0.0
set xlabel "η" font ",18"
set xtics format "%g"

set label 2 "d_{P,q}" at graph 0.1,0.9 font ",18"
set label 1 "d^{(1)}" at graph 0.1,0.9 font ",18"
#unset label 5
#set label 6 "d_{P,q}^{(1)}(η)" at graph 0.1,0.9 font ",18"
#set key left bottom
#set out "img/cgBar1TP.tex"
set yrange [-.0091:.0057]
#set ytics format "%.2f"
plot    0 t "" w lines ls 4,\
	p."dq1-q2_-2.dat"  u 1:4 t "" w linespoints ls 1 pi -10 pt 5, \
        p."dq1-q2_2.dat"   u 1:4 t "" w linespoints ls 2 pi -10 pt 5, \
        p."dq1-q2_3.dat"   u 1:4 t "" w linespoints ls 3 pi -10 pt 5
	
#set out
