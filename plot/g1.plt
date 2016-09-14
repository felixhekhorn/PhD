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

set title "2xg_1(x,Q²,m_c^2) with DSSV2014"
set out "./img/g1c-dssv2014.png"
plot    d1  u 1:($8)        t "Q²=1e1, LO",\
        d1  u 1:($8+$9+$10) t "Q²=1e1, LO+NLO",\
        d2  u 1:($8)        t "Q²=1e2, LO",\
        d2  u 1:($8+$9+$10) t "Q²=1e2, LO+NLO"

set title "2xg_{1,g}^{(1)}(x,Q²,m_c^2) with DSSV2014"
set out "./img/g1g1c-dssv2014.png"
plot    d1  u 1:9 t "Q²=1e1",\
        d2  u 1:9 t "Q²=1e2"

set key right top

set title "2xg_{1,q}^{(1)}(x,Q²,m_c^2) with DSSV2014"
set out "./img/g1q1c-dssv2014.png"
plot    d1  u 1:10 t "Q²=1e1",\
        d2  u 1:10 t "Q²=1e2"

set title "R_g(x,Q²,m_c^2) with DSSV2014"
set out "./img/g1Rc-dssv2014.png"
plot    d1  u 1:(($8+$9+$10)/$8) t "Q²=1e1",\
        d2  u 1:(($8+$9+$10)/$8) t "Q²=1e2"


set out
