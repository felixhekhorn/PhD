#!/usr/bin/gnuplot
reset

set term eps transparent size 10,5*.8 dashlength 2
set out "img/cdqP-new.eps"

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
set multiplot layout 1,2 margins char 7,2,3.3,1 spacing char 8, char .3

#set size 1,0.33
#set origin 0.0,0.66
set xlabel "η = (s-4m^2)/(4m^2)" font ",17"
set xtics format "%g"
set label 4 "threshold" at graph 0.00, screen 0.03 font ",20"
set label 5 "high energy" at graph .77, screen 0.03 font ",20"

set style line 1 lt 2 lc rgb "#800000" lw 3 dt 1 ps 0.6
set style line 2 lt 2 lc rgb "#000080" lw 3 dt 2 ps 0.6
#set style line 3 lt 2 lc rgb "#000080" lw 3 dt 4 ps 0.6
set style line 4 lt 2 lc rgb "#808080" lw 1 dt 3

set label 1 "Bethe-Heitler (c_q)" at graph 0.04,0.92 font ",20"
set key at graph .62, graph .6 spacing 1.5 Left reverse font ",18"
set yrange [-.009:.0075]
set ytics format " %.3f"
plot    0 t "" w lines ls 4,\
	p."cq1-q2_-2.dat"  u 1:4 t "" w linespoints ls 1 pi -10 pt 5, \
	p."cq1-q2_-2.dat"  u 1:4 t "(\\~)photo-production" w lines ls 1, \
        p."cq1-q2_2.dat"   u 1:4 t "" w linespoints ls 2 pi -10 pt 5, \
        p."cq1-q2_2.dat"   u 1:4 t "DIS(Q^2/m^2 \\~ 4.4)" w lines ls 2    

set label 1 "Compton (d_q)"
#set yrange [-.0091:.0057]
plot    0 t "" w lines ls 4,\
	p."dq1-q2_-2.dat"  u 1:4 t "" w linespoints ls 1 pi -10 pt 5, \
        p."dq1-q2_2.dat"   u 1:4 t "" w linespoints ls 2 pi -10 pt 5
	
#set out
