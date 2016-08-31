#!/usr/bin/gnuplot
reset

set term png

set xlabel "x []"
set logscale x
#set xrange [5e-5:3e2]

set logscale y
set ytics format "%.1e"
set key left bottom

set title "Fig. 15. (a): F^{(1)}_{2,g}(x,Q²,m_c^2) CTEQ6.6"
set out "./img/figure15a-cteq.png"
plot    "./data/F2Lc-q2_1-cteq.dat"  u 1:4 t "Q²=1e1",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:4 t "Q²=1e2"

set title "Fig. 15. (a): F^{(1)}_{2,g}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure15a-mstw.png"
plot    "./data/F2Lc-q2_1-mstw.dat"  u 1:4 t "Q²=1e1",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:4 t "Q²=1e2"

set title "Fig. 15. (b): F^{(1)}_{L,g}(x,Q²,m_c^2) CTEQ6.6"
set out "./img/figure15b-cteq.png"
plot    "./data/F2Lc-q2_1-cteq.dat"  u 1:6 t "Q²=1e1",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:6 t "Q²=1e2"

set title "Fig. 15. (b): F^{(1)}_{L,g}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure15b-mstw.png"
plot    "./data/F2Lc-q2_1-mstw.dat"  u 1:6 t "Q²=1e1",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:6 t "Q²=1e2"

set out
