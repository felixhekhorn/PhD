#!/usr/bin/gnuplot
reset

set term png

set xlabel "x []"
set logscale x
#set xrange [5e-5:3e2]

set key right bottom

set title "Fig. 16. (a): F^{(1)}_{2,q}(x,Q²,m_c^2) CTEQ66"
set out "./img/figure16a-cteq.png"
plot    "./data/F2L-q2_1-cteq.dat"  u 1:3 t "Q²=1e1",\
        "./data/F2L-q2_2-cteq.dat"  u 1:3 t "Q²=1e2"

set title "Fig. 16. (a): F^{(1)}_{2,q}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure16a-mstw.png"
plot    "./data/F2L-q2_1-mstw.dat"  u 1:3 t "Q²=1e1",\
        "./data/F2L-q2_2-mstw.dat"  u 1:3 t "Q²=1e2"

set title "Fig. 16. (b): F^{(1)}_{L,q}(x,Q²,m_c^2) CTEQ66"
set out "./img/figure16b-cteq.png"
plot    "./data/F2L-q2_1-cteq.dat"  u 1:5 t "Q²=1e1",\
        "./data/F2L-q2_2-cteq.dat"  u 1:5 t "Q²=1e2"

set title "Fig. 16. (b): F^{(1)}_{L,q}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure16b-mstw.png"
plot    "./data/F2L-q2_1-mstw.dat"  u 1:5 t "Q²=1e1",\
        "./data/F2L-q2_2-mstw.dat"  u 1:5 t "Q²=1e2"

set out
