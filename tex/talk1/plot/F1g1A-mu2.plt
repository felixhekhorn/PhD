#!/usr/bin/gnuplot
reset

set term eps transparent size 15,5 dashlength 2
set out "img/F1g1A-mu2.eps"

#set border 3
#set margin 3
set bmargin 1 

#set logscale x
#set xrange[.1:10]
set xtics format ""

set key right top Left

p = "./../../data/"
f31 = p."F1g1A-mu2-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
f12 = p."F1g1A-mu2-x_1-q2_2-MSTW2008nlo90cl-DSSV2014.dat"
# collect middle value
mid31 = system("sed -n \"51p\" '".f31."'")
mid12 = system("sed -n \"51p\" '".f12."'")

set style line 1 lt 2 lc rgb "#808080" lw 1 dt 3
set style line 2 lc rgb "#ff0000" lw 2 dt 1
set style line 3 lc rgb "#800000" lw 2 dt 1
set style line 4 lc rgb "#00ff00" lw 2 dt 2
set style line 5 lc rgb "#008000" lw 2 dt 2

set multiplot layout 1,3 margins char 5,2,3.3,1 spacing char 5, char .3 scale 3,0.3
set xlabel "s"
set xtics format "%.1f"

set label 1 "F_1(µ^2=10^s µ_0^2)/F_1(µ_0^2)" at graph 0.1, graph 0.93
set arrow 1 from -0.05, 0.6 to -.5, 7.1e-2/8.42e-2
set arrow 2 from 0.05, 0.6 to .5, 5.6e-3/7.2e-3 
set label 2 at -0.04, 0.6 "LO"
set arrow 3 from -.7, 1.1 to -.5, 9.6e-2/1e-1
set arrow 4 from -.7, 1.1 to -.5, 1.252e-2/1.05e-2
set label 3 at -.83, 1.1 "NLO"

set yrange [.43:1.9]
set ytics format "%.1f"
plot    1 t "" ls 1,\
	'< echo "0 10"' w impulse t "" ls 1,\
        f31 u 1:(($2)/(word(mid31,2))) w l ls 2 t "x=10^{-3}, Q^2 = 10GeV^2" ,\
        f31 u 1:(($3)/(word(mid31,3))) w l ls 3 t "",\
        f12 u 1:(($2)/(word(mid12,2))) w l ls 4 t "x=10^{-1}, Q^2 = 100GeV^2" ,\
        f12 u 1:(($3)/(word(mid12,3))) w l ls 5 t ""

set label 1 "g_1(µ^2=10^s µ_0^2)/g_1(µ_0^2)" at graph 0.1, graph 0.93
set arrow 1 from .05,.6 to .5, -9e-5/-1.1e-4
set arrow 2 to .5, 6.5e-4/7.6e-4
#set label 2 at
set arrow 3 from .7,1.2 to .5,-1.09e-4/-1.11e-4
set arrow 4 from .7,1.17 to .5,8e-4/8.4e-4
set label 3 at .7,1.2
plot    1 t "" ls 1,\
	'< echo "0 10"' w impulse t "" ls 1,\
        f31 u 1:(($4)/(word(mid31,4))) w l ls 2 t "",\
        f31 u 1:(($5)/(word(mid31,5))) w l ls 3 t "",\
        f12 u 1:(($4)/(word(mid12,4))) w l ls 4 t "",\
        f12 u 1:(($5)/(word(mid12,5))) w l ls 5 t ""


set label 1 "A_{LL}(µ^2=10^s µ_0^2)/A_{LL}(µ_0^2)" at graph 0.1, graph 0.93
set arrow 1 to .5,-1.03e-3/-1.32e-3
set arrow 2 to .5, 1.15e-1/1.04e-1
#set label 2
set arrow 3 from -.7,.9 to -.5,-1.2e-3/-1.1e-3
set arrow 4 from -.7,.9 to -.5, 6.8e-2/8.0e-2
set label 3 at -.82,.9
plot    1 t "" ls 1,\
	'< echo "0 10"' w impulse t "" ls 1,\
        f31 u 1:(($6)/(word(mid31,6))) w l ls 2 t "",\
        f31 u 1:(($7)/(word(mid31,7))) w l ls 3 t "",\
        f12 u 1:(($6)/(word(mid12,6))) w l ls 4 t "",\
        f12 u 1:(($7)/(word(mid12,7))) w l ls 5 t ""
