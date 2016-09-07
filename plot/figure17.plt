#!/usr/bin/gnuplot
reset

set term png

set xlabel "x []"
set logscale x

set yrange [0:4]

set key left top


set title "Fig. 17. (a): R_{2}(x,Q²,m_c^2) Morfin-Tung B"
set out "./img/figure17a-mtb.png"
plot    "./data/F2Lc-q2_1-mtb.dat"  u 1:(($2+$3+$4)/$2) w l t "Q²=1e1",\
        "./data/F2Lc-q2_2-mtb.dat"  u 1:(($2+$3+$4)/$2) w l t "Q²=1e2"

set title "Fig. 17. (a): R_{2}(x,Q²,m_c^2) CT14NNLO"
set out "./img/figure17a-ct14.png"
plot    "./data/F2Lc-q2_1-ct14.dat"  u 1:(($2+$3+$4)/$2) w l t "Q²=1e1",\
        "./data/F2Lc-q2_2-ct14.dat"  u 1:(($2+$3+$4)/$2) w l t "Q²=1e2"

set title "Fig. 17. (a): R_{2}(x,Q²,m_c^2) CTEQ6.6"
set out "./img/figure17a-cteq.png"
plot    "./data/F2Lc-q2_1-cteq.dat"  u 1:(($2+$3+$4)/$2) w l t "Q²=1e1",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:(($2+$3+$4)/$2) w l t "Q²=1e2"

set title "Fig. 17. (a): R_{2}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure17a-mstw.png"
plot    "./data/F2Lc-q2_1-mstw.dat"  u 1:(($2+$3+$4)/$2) w l t "Q²=1e1",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:(($2+$3+$4)/$2) w l t "Q²=1e2"



set title "Fig. 17. (b): R_{L}(x,Q²,m_c^2) Morfin-Tung B"
set out "./img/figure17b-mtb.png"
plot    "./data/F2Lc-q2_1-mtb.dat"  u 1:(($5+$6+$7)/$5) w l t "Q²=1e1",\
        "./data/F2Lc-q2_2-mtb.dat"  u 1:(($5+$6+$7)/$5) w l t "Q²=1e2"

set title "Fig. 17. (b): R_{L}(x,Q²,m_c^2) CT14NNLO"
set out "./img/figure17b-ct14.png"
plot    "./data/F2Lc-q2_1-ct14.dat"  u 1:(($5+$6+$7)/$5) w l t "Q²=1e1",\
        "./data/F2Lc-q2_2-ct14.dat"  u 1:(($5+$6+$7)/$5) w l t "Q²=1e2"

set title "Fig. 17. (b): R_{L}(x,Q²,m_c^2) CTEQ6.6"
set out "./img/figure17b-cteq.png"
plot    "./data/F2Lc-q2_1-cteq.dat"  u 1:(($5+$6+$7)/$5) w l t "Q²=1e1",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:(($5+$6+$7)/$5) w l t "Q²=1e2"

set title "Fig. 17. (b): R_{L}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure17b-mstw.png"
plot    "./data/F2Lc-q2_1-mstw.dat"  u 1:(($5+$6+$7)/$5) w l t "Q²=1e1",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:(($5+$6+$7)/$5) w l t "Q²=1e2"


set out