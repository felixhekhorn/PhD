#!/usr/bin/gnuplot
reset

set term eps transparent size 5,10 dashlength 2
set out "img/F1g1A1-mu2.eps"

#set border 3
#set margin 3
set bmargin 1 

#set logscale x
#set xrange[.1:10]
set xtics format ""


p = "./data/"
#f31 = p."F1g1A-mu2-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
#f12 = p."F1g1A-mu2-x_1-q2_2-MSTW2008nlo90cl-DSSV2014.dat"
# collect middle value
#mid31 = system("sed -n \"51p\" '".f31."'")
#mid12 = system("sed -n \"51p\" '".f12."'")

f31 = p."F1g1A1-mu2-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
f12 = p."F1g1A1-mu2-x_1-q2_2-MSTW2008nlo90cl-DSSV2014.dat"
mid31 = system("sed -n \"11p\" '".f31."'")
mid12 = system("sed -n \"11p\" '".f12."'")

set style line 1 lt 2 lc rgb "#808080" lw 1 dt 3
set style line 2 lc rgb "#e00000" lw 4 dt 1
set style line 3 lc rgb "#700000" lw 4 dt 1
set style line 4 lc rgb "#00e000" lw 4 dt 2
set style line 5 lc rgb "#007000" lw 4 dt 2

set multiplot layout 3,1 margins char 7,2,3.3,1 spacing screen 0, char .3 scale 3,0.3

set label 1  "F_1(µ^2)/" at graph 0.1, graph 0.93 font ",18"
set label 11 "F^c" at graph 0.1, graph 0.93 font ",18"
set label 12 "F_1(µ_0^2)" at graph 0.23, graph 0.93 font ",18"
set label 13 "F^c" at graph 0.23, graph 0.93 font ",18"
set arrow 1 from -0.05, 0.6 to -.5, 7.1e-2/8.42e-2
set arrow 2 from 0.05, 0.6 to .5, 5.6e-3/7.2e-3 
set label 2 at -0.04, 0.6 "LO"
set arrow 3 from -.7, 1.1 to -.5, 9.6e-2/1e-1
set arrow 4 from -.7, 1.1 to -.5, 1.252e-2/1.05e-2
set label 3 at -.83, 1.1 "NLO"

set label 5 "Q^2[GeV^2]     x" at graph .65, graph 0.95 font ",18"
set key at graph 1.1, graph 0.9 Left reverse spacing 1.3 samplen 3.5 font ",18"
set yrange [.43:1.9]
set ytics format "%.1f"
plot    1 t "" ls 1,\
	'< echo "0 10"' w impulse t "" ls 1,\
        f31 u 1:(($2)/(word(mid31,2))) w l ls 2 t "" ,\
        f31 u 1:(($3)/(word(mid31,3))) w l ls 3 t " 10          0.001",\
        f12 u 1:(($2)/(word(mid12,2))) w l ls 4 t "" ,\
        f12 u 1:(($3)/(word(mid12,3))) w l ls 5 t "100           0.1"

set label 1  "g_1(µ^2)/" at graph 0.1, graph 0.93 font ",18"
set label 11 "g^c" at graph 0.1, graph 0.93 font ",18"
set label 12 "g_1(µ_0^2)" at graph 0.23, graph 0.93 font ",18"
set label 13 "g^c" at graph 0.23, graph 0.93 font ",18"
set arrow 1 from .49,.62 to .5, -8.953e-5/-1.108e-4
set arrow 2 from .49,.62 to .7, 6.096e-4/7.556e-4
set label 2 at .45,.6
set arrow 3 from .65,1.16 to .7,-1.07e-4/-1.11e-4
set arrow 4 from .65,1.16 to .5,8e-4/8.4e-4
set label 3 at .6,1.2
unset label 5
plot    1 t "" ls 1,\
	'< echo "0 10"' w impulse t "" ls 1,\
        f31 u 1:(($4)/(word(mid31,4))) w l ls 2 t "",\
        f31 u 1:(($5)/(word(mid31,5))) w l ls 3 t "",\
        f12 u 1:(($4)/(word(mid12,4))) w l ls 4 t "",\
        f12 u 1:(($5)/(word(mid12,5))) w l ls 5 t ""


set label 1  "A_1(µ^2)/" at graph 0.1, graph 0.93 font ",18"
set label 11 "A^c" at graph 0.1, graph 0.93 font ",18"
set label 12 "A_1(µ_0^2)" at graph 0.23, graph 0.93 font ",18"
set label 13 "A^c" at graph 0.23, graph 0.93 font ",18"
set arrow 1 from 0.05, 0.6 to .5,-1.03e-3/-1.32e-3
set arrow 2 from 0.05, 0.6 to .5, 1.15e-1/1.04e-1
set label 2 at -0.04, 0.6
set arrow 3 from -.7,.9 to -.5,-1.2e-3/-1.1e-3
set arrow 4 from -.7,.9 to -.5, 6.8e-2/8.0e-2
set label 3 at -.82,.9
set xlabel "µ^2 = [10^a µ_0^2]"
set xtics format "%.1f"
plot    1 t "" ls 1,\
	'< echo "0 10"' w impulse t "" ls 1,\
        f31 u 1:(($6)/(word(mid31,6))) w l ls 2 t "",\
        f31 u 1:(($7)/(word(mid31,7))) w l ls 3 t "",\
        f12 u 1:(($6)/(word(mid12,6))) w l ls 4 t "",\
        f12 u 1:(($7)/(word(mid12,7))) w l ls 5 t ""
