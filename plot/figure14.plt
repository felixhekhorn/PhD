#!/usr/bin/gnuplot
reset

set term png

set xlabel "x []"
set logscale x

set logscale y
set ytics format "%.1e"
set yrange [1e-4:1]

set key left bottom


set title "Fig. 14. (a): F_{2}(x,Q²,m_c^2) Morfin-Tung B"
set out "./img/figure14a-mtb.png"
plot    "./data/F2Lc-q2_1-mtb.dat"  u 1:2          w l t "Q²=1e1, LO",\
        "./data/F2Lc-q2_1-mtb.dat"  u 1:($2+$3+$4) w l t "Q²=1e1, LO+NLO",\
        "./data/F2Lc-q2_2-mtb.dat"  u 1:2          w l t "Q²=1e2, LO",\
        "./data/F2Lc-q2_2-mtb.dat"  u 1:($2+$3+$4) w l t "Q²=1e2, LO+NLO"

set title "Fig. 14. (a): F_{2}(x,Q²,m_c^2) CT14NNLO"
set out "./img/figure14a-ct14.png"
plot    "./data/F2Lc-q2_1-ct14.dat"  u 1:2          w l t "Q²=1e1, LO",\
        "./data/F2Lc-q2_1-ct14.dat"  u 1:($2+$3+$4) w l t "Q²=1e1, LO+NLO",\
        "./data/F2Lc-q2_2-ct14.dat"  u 1:2          w l t "Q²=1e2, LO",\
        "./data/F2Lc-q2_2-ct14.dat"  u 1:($2+$3+$4) w l t "Q²=1e2, LO+NLO"

set title "Fig. 14. (a): F_{2}(x,Q²,m_c^2) CTEQ6.6"
set out "./img/figure14a-cteq.png"
plot    "./data/F2Lc-q2_1-cteq.dat"  u 1:2          w l t "Q²=1e1, LO",\
        "./data/F2Lc-q2_1-cteq.dat"  u 1:($2+$3+$4) w l t "Q²=1e1, LO+NLO",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:2          w l t "Q²=1e2, LO",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:($2+$3+$4) w l t "Q²=1e2, LO+NLO"

set title "Fig. 14. (a): F_{2}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure14a-mstw.png"
plot    "./data/F2Lc-q2_1-mstw.dat"  u 1:2          w l t "Q²=1e1, LO",\
        "./data/F2Lc-q2_1-mstw.dat"  u 1:($2+$3+$4) w l t "Q²=1e1, LO+NLO",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:2          w l t "Q²=1e2, LO",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:($2+$3+$4) w l t "Q²=1e2, LO+NLO"



set title "Fig. 14. (b): F_{L}(x,Q²,m_c^2) Morfin-Tung B"
set out "./img/figure14b-mtb.png"
plot    "./data/F2Lc-q2_1-mtb.dat"  u 1:5          w l t "Q²=1e1, LO",\
        "./data/F2Lc-q2_1-mtb.dat"  u 1:($5+$6+$7) w l t "Q²=1e1, LO+NLO",\
        "./data/F2Lc-q2_2-mtb.dat"  u 1:5          w l t "Q²=1e2, LO",\
        "./data/F2Lc-q2_2-mtb.dat"  u 1:($5+$6+$7) w l t "Q²=1e2, LO+NLO"

set title "Fig. 14. (b): F_{L}(x,Q²,m_c^2) CT14NNLO"
set out "./img/figure14b-ct14.png"
plot    "./data/F2Lc-q2_1-ct14.dat"  u 1:5          w l t "Q²=1e1, LO",\
        "./data/F2Lc-q2_1-ct14.dat"  u 1:($5+$6+$7) w l t "Q²=1e1, LO+NLO",\
        "./data/F2Lc-q2_2-ct14.dat"  u 1:5          w l t "Q²=1e2, LO",\
        "./data/F2Lc-q2_2-ct14.dat"  u 1:($5+$6+$7) w l t "Q²=1e2, LO+NLO"

set title "Fig. 14. (b): F_{L}(x,Q²,m_c^2) CTEQ6.6"
set out "./img/figure14b-cteq.png"
plot    "./data/F2Lc-q2_1-cteq.dat"  u 1:5          w l t "Q²=1e1, LO",\
        "./data/F2Lc-q2_1-cteq.dat"  u 1:($5+$6+$7) w l t "Q²=1e1, LO+NLO",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:5          w l t "Q²=1e2, LO",\
        "./data/F2Lc-q2_2-cteq.dat"  u 1:($5+$6+$7) w l t "Q²=1e2, LO+NLO"

set title "Fig. 14. (b): F_{L}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure14b-mstw.png"
plot    "./data/F2Lc-q2_1-mstw.dat"  u 1:5          w l t "Q²=1e1, LO",\
        "./data/F2Lc-q2_1-mstw.dat"  u 1:($5+$6+$7) w l t "Q²=1e1, LO+NLO",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:5          w l t "Q²=1e2, LO",\
        "./data/F2Lc-q2_2-mstw.dat"  u 1:($5+$6+$7) w l t "Q²=1e2, LO+NLO"


set out