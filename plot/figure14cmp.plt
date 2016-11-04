#!/usr/bin/gnuplot
reset

set term png

set xlabel "x []"
set logscale x

set logscale y
set ytics format "%.1e"
set yrange [1e-4:1]

set key left bottom


set title "Fig. 14. (a): F_{2}(x,Q²,m_c^2)"
set out "./img/figure14cmp.png"
plot    "./data/F2Lc-q2_1-mtb.dat"  u 1:2          w l t "Q²=1e1, LO, Morfin-Tung B",\
        "./data/F2Lc-q2_1-ct14.dat" u 1:2          w l t "Q²=1e1, LO, CT14NNLO",\
        "./data/F2Lc-q2_2-mtb.dat"  u 1:2          w l t "Q²=1e2, LO, Morfin-Tung B",\
        "./data/F2Lc-q2_2-ct14.dat" u 1:2          w l t "Q²=1e2, LO, CT14NNLO"

set out
