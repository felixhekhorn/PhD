#!/usr/bin/gnuplot
reset

set term png

set xlabel "x []"
set logscale x
#set xrange [5e-5:3e2]

set key right bottom

set title "Fig. 16. (a): xF^{(1)}_{2,q}(x,Q²,m_c^2) CTEQ6.6"
set out "./img/figure16a-cteq.png"
plot    "./data/F2Lc-q2_1-cteq.dat"  u 1:($1*$4) t "Q²=1e1",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:($1*$4) t "Q²=1e2"

set title "Fig. 16. (a): xF^{(1)}_{2,q}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure16a-mstw.png"
plot    "./data/F2Lc-q2_1-mstw.dat"  u 1:($1*$4) t "Q²=1e1",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:($1*$4) t "Q²=1e2"

set title "Fig. 16. (a): xF^{(1)}_{2,q}(x,Q²,m_c^2) Morfin-Tung B"
set out "./img/figure16a-mtb.png"
plot    "./data/F2Lc-q2_1-mtb.dat"  u 1:($1*$4) t "Q²=1e1",\
        "./data/F2Lc-q2_2-mtb.dat"  u 1:($1*$4) t "Q²=1e2"

set title "Fig. 16. (a): xF^{(1)}_{2,q}(x,Q²,m_c^2) CT14"
set out "./img/figure16a-ct14.png"
plot    "./data/F2Lc-q2_1-ct14.dat"  u 1:($1*$4) t "Q²=1e1",\
        "./data/F2Lc-q2_2-ct14.dat"  u 1:($1*$4) t "Q²=1e2"


set title "Fig. 16. (b): xF^{(1)}_{L,q}(x,Q²,m_c^2) CTEQ6.6"
set out "./img/figure16b-cteq.png"
plot    "./data/F2Lc-q2_1-cteq.dat"  u 1:($1*$7) t "Q²=1e1",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:($1*$7) t "Q²=1e2"

set title "Fig. 16. (b): xF^{(1)}_{L,q}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure16b-mstw.png"
plot    "./data/F2Lc-q2_1-mstw.dat"  u 1:($1*$7) t "Q²=1e1",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:($1*$7) t "Q²=1e2"

set title "Fig. 16. (b): xF^{(1)}_{L,q}(x,Q²,m_c^2) Morfin-Tung B"
set out "./img/figure16b-mtb.png"
plot    "./data/F2Lc-q2_1-mtb.dat"  u 1:($1*$7) t "Q²=1e1",\
        "./data/F2Lc-q2_2-mtb.dat"  u 1:($1*$7) t "Q²=1e2"

set title "Fig. 16. (b): xF^{(1)}_{L,q}(x,Q²,m_c^2) CT14"
set out "./img/figure16b-ct14.png"
plot    "./data/F2Lc-q2_1-ct14.dat"  u 1:($1*$7) t "Q²=1e1",\
        "./data/F2Lc-q2_2-ct14.dat"  u 1:($1*$7) t "Q²=1e2"

set out
