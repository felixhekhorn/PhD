#!/usr/bin/gnuplot
reset

set term png

set xlabel "x []"
set logscale x

#set logscale y
#set ytics format "%.1e"
#set yrange [1e-4:1]

set key left top


d1 = "data/Fc-q2_1-mstw-dssv2014.dat"
d2 = "data/Fc-q2_2-mstw-dssv2014.dat"

set title "spin asymmetry A(x,Q²,m_c^2) = g_1/F_1 for DSSV2014+MSTW2008nlo90cl"
set out "./img/A-mstw-dssv2014.png"
plot    d1  u 1:($8/($2-$5))                      t "Q²=1e1, LO",\
        d1  u 1:(($8+$9+$10)/($2+$3+$4-$5-$6-$7)) t "Q²=1e1, LO+NLO",\
        d2  u 1:($8/($2-$5))                      t "Q²=1e2, LO",\
        d2  u 1:(($8+$9+$10)/($2+$3+$4-$5-$6-$7)) t "Q²=1e2, LO+NLO"


set out
