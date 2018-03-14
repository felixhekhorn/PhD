#!/usr/bin/gnuplot
reset

#set term png transparent size 500,1000 dashlength 3
#set out "img/cgTP.png"

set term eps transparent size 10,5*.8 dashlength 2
set out "img/cgTP-new.eps"

#set border 3
#set margin 3
set bmargin 1 

set logscale x
#set xrange [5e-5:3e2]
set xtics format ""
#set xtics ("-4" 1e-4, "-3" 1e-3, "-2" 1e-2, "-1" 1e-1, "0" 1e0, "1" 1e1, "2" 1e2)

#set key left bottom Left reverse
set key Left

p = "./../../data/partonic/"

#set size 3.,.3
set multiplot layout 1,2 margins char 5,2,3.3,1 spacing char 8, char .3

#set size 1,0.33
#set origin 0.0,0.66
set xlabel "η = (s-4m^2)/(4m^2)" font ",17"
set xtics format "%g"

set style line 1 lt 2 lc rgb "#000000" lw 2 dt 1 ps 0.5
set style line 2 lt 2 lc rgb "#000000" lw 2 dt 2 ps 0.5
set style line 3 lt 2 lc rgb "#000000" lw 2 dt 4 ps 0.5
set style line 4 lt 2 lc rgb "#808080" lw 1 dt 3

#set style line 1 lt 2 lc rgb "#ff0000" lw 2
#set style line 2 lt 2 lc rgb "#800000" lw 2 dt 2
#set style line 3 lt 2 lc rgb "#00ff00" lw 2
#set style line 4 lt 2 lc rgb "#008000" lw 2 dt 2
#set style line 5 lt 2 lc rgb "#0000ff" lw 2
#set style line 6 lt 2 lc rgb "#000080" lw 2 dt 2

#set label 1 at graph .02,.07
set label 1 "LO" at graph 0.06,0.92 font ",23"
set label 2 "unpolarized \\~ F_1" at graph 0.06, first 1.01 font ",20"
set label 3 "polarized \\~ g_1"  at graph 0.06, first .86 font ",20"
set label 4 "threshold" at graph 0.00, screen 0.03 font ",20"
set label 5 "high energy" at graph .77, screen 0.03 font ",20"

set key at graph 1.04, graph .99 spacing 1.3 Left reverse font ",20"
set yrange [-.23:1.3]
set ytics format " %.1f"
plot    0 t "" w lines ls 4,\
	p."cg0-q2_-2.dat"  u 1:4 t "" w linespoints ls 1 lc rgb "#800000" pi -10 pt 5, \
	p."cg0-q2_-2.dat"  u 1:4 t "photo-production" w lines ls 1 lc rgb "#800000", \
	p."cg0-q2_-2.dat"  u 1:2 t "" w linespoints ls 1 pi -10 pt 4 lc rgb "#e00000", \
        "<echo '0.0015 1.'" t "" ls 1 pt 4 lc rgb "#e00000", \
        "<echo '0.0015 .85'" t "" ls 3 pt 5 lc rgb "#800000", \
        p."cg0-q2_2.dat"   u 1:4 t "" w linespoints ls 2 pi -10 pt 5 lc rgb "#000080", \
        p."cg0-q2_2.dat"   u 1:4 t "DIS (Q^2/m^2 \\~ 4.4)" w lines ls 2 lc rgb "#000080", \
	p."cg0-q2_2.dat"   u 1:2 t "" w linespoints ls 2 pi -10 pt 4 lc rgb "#0000e0"

#set size 1,0.33
#set origin 0.0,0.33
#unset label 1
unset label 2
unset label 3
set label 1 "NLO"
#set key left bottom
#set out "img/cg1TP.tex"
set yrange [-.12:.36]
set ytics format "%.2f"
plot    0 t "" w lines ls 4,\
	p."cg1-q2_-2.dat"  u 1:4 t "" w linespoints ls 1 pi -10 pt 5 lc rgb "#800000", \
	p."cg1-q2_-2.dat"  u 1:2 t "" w linespoints ls 1 pi -10 pt 4 lc rgb "#e00000", \
        p."cg1-q2_2.dat"   u 1:4 t "" w linespoints ls 2 pi -10 pt 5 lc rgb "#000080", \
	p."cg1-q2_2.dat"   u 1:2 t "" w linespoints ls 2 pi -10 pt 4 lc rgb "#0000e0"
