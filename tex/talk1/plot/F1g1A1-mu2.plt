#!/usr/bin/gnuplot
reset

set term eps transparent size 15,5 dashlength 2
set out "img/F1g1A1-mu2.eps"

#set border 3
#set margin 3
set bmargin 3

#set logscale x
#set xrange[.1:10]
set xtics format ""


p = "./../../data/"
f31 = p."F1g1A-mu2-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
f12 = p."F1g1A-mu2-x_1-q2_2-MSTW2008nlo90cl-DSSV2014.dat"
# collect middle value
mid31 = system("sed -n \"51p\" '".f31."'")
mid12 = system("sed -n \"51p\" '".f12."'")

set style line 1 lt 2 lc rgb "#808080" lw 1 dt 3
set style line 2 lc rgb "#e00000" lw 4 dt 1
set style line 3 lc rgb "#000070" lw 4 dt 1
set style line 4 lc rgb "#00e000" lw 4 dt 2
set style line 5 lc rgb "#007000" lw 4 dt 2

set multiplot layout 1,3 margins char 5,2,3.3,1 spacing char 5, char .3 scale 3,0.3
set xlabel "µ^2 = [10^a µ_0^2]" font ",20"
set xtics format "%.1f"

set label 1  "F_1(µ^2)/" at graph 0.1, graph 0.93 font ",25"
set label 11 "F^c" at graph 0.1, graph 0.93 font ",25"
set label 12 "F_1(µ_0^2)" at graph 0.27, graph 0.93 font ",25"
set label 13 "F^c" at graph 0.27, graph 0.93 font ",25"
set label 2 "x = 0.001, Q^2 = 10 GeV^2" at graph .1, .83 font ",25"

set key at graph .3, graph 0.7 Left reverse spacing 1.3 samplen 3.5 font ",25"
set yrange [.43:1.9]
set ytics format "%.1f"
plot    1 t "" ls 1,\
	'< echo "0 10"' w impulse t "" ls 1,\
        f31 u 1:(($2)/(word(mid31,2))) w l ls 2 t "LO" ,\
        f31 u 1:(($3)/(word(mid31,3))) w l ls 3 t "NLO"

unset label 2
set label 1  "g_1(µ^2)/" 
set label 11 "g^c" 
set label 12 "g_1(µ_0^2)"
set label 13 "g^c"
plot    1 t "" ls 1,\
	'< echo "0 10"' w impulse t "" ls 1,\
        f31 u 1:(($4)/(word(mid31,4))) w l ls 2 t "",\
        f31 u 1:(($5)/(word(mid31,5))) w l ls 3 t ""


set label 1  "A_1(µ^2)/"
set label 11 "A^c"
set label 12 "A_1(µ_0^2)" 
set label 13 "A^c"
plot    1 t "" ls 1,\
	'< echo "0 10"' w impulse t "" ls 1,\
        f31 u 1:(($6)/(word(mid31,6))) w l ls 2 t "",\
        f31 u 1:(($7)/(word(mid31,7))) w l ls 3 t ""
