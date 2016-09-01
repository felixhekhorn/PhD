#!/usr/bin/gnuplot
reset

set term png

set xlabel "x []"
set logscale x
#set xrange [5e-5:3e2]

set yrange [0:4]
set key left top

set title "Fig. 17. (a): R_{2}(x,Q²,m_c^2) CTEQ6.6"
set out "./img/figure17a-cteq.png"
plot    "./data/F2Lc-q2_1-cteq.dat"  u 1:(($2+$3+$4)/$2) t "Q²=1e1, µ²=µ_0^2",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:(($2+$3+$4)/$2) t "Q²=1e2, µ²=µ_0^2"

set title "Fig. 17. (a): R_{2}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure17a-mstw.png"
plot    "./data/F2Lc-q2_1-mstw.dat"  u 1:(($2+$3+$4)/$2) t "Q²=1e1, µ²=µ_0^2",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:(($2+$3+$4)/$2) t "Q²=1e2, µ²=µ_0^2"


set title "Fig. 17. (b): R_{L}(x,Q²,m_c^2) CTEQ6.6"
set out "./img/figure17b-cteq.png"
plot    "./data/F2Lc-q2_1-cteq.dat"  u 1:(($5+$6+$7)/$5) t "Q²=1e1, µ²=µ_0^2",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:(($5+$6+$7)/$5) t "Q²=1e2, µ²=µ_0^2"

set title "Fig. 17. (b): R_{L}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure17b-mstw.png"
plot    "./data/F2Lc-q2_1-mstw.dat"  u 1:(($5+$6+$7)/$5) t "Q²=1e1, µ²=µ_0^2",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:(($5+$6+$7)/$5) t "Q²=1e2, µ²=µ_0^2"

set out
