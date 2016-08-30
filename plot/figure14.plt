#!/usr/bin/gnuplot
reset

set term png

set xlabel "x []"
set logscale x
#set xrange [5e-5:3e2]

set logscale y
set ytics format "%.1e"
set key left bottom

set title "Fig. 14. (a): F_{2}(x,Q²,m_c^2) CTEQ66"
set out "./img/figure14a-cteq.png"
plot    "./data/F2L-q2_1-cteq.dat"  u 1:2 t "Q²=1e1, LO",\
        "./data/F2L-q2_1-cteq.dat"  u 1:($2+$3) t "Q²=1e2, LO+NLO",\
        "./data/F2L-q2_2-cteq.dat"  u 1:2 t "Q²=1e2, LO",\
        "./data/F2L-q2_2-cteq.dat"  u 1:($2+$3) t "Q²=1e2, LO+NLO"

set title "Fig. 14. (a): F_{2}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure14a-mstw.png"
plot    "./data/F2L-q2_1-mstw.dat"  u 1:2 t "Q²=1e1, LO",\
        "./data/F2L-q2_1-mstw.dat"  u 1:($2+$3) t "Q²=1e2, LO+NLO",\
        "./data/F2L-q2_2-mstw.dat"  u 1:2 t "Q²=1e2, LO",\
        "./data/F2L-q2_2-mstw.dat"  u 1:($2+$3) t "Q²=1e2, LO+NLO"

set title "Fig. 14. (b): F_{L}(x,Q²,m_c^2) CTEQ66"
set out "./img/figure14b-cteq.png"
plot    "./data/F2L-q2_1-cteq.dat"  u 1:4 t "Q²=1e1, LO",\
        "./data/F2L-q2_1-cteq.dat"  u 1:($4+$5) t "Q²=1e2, LO+NLO",\
        "./data/F2L-q2_2-cteq.dat"  u 1:4 t "Q²=1e2, LO",\
        "./data/F2L-q2_2-cteq.dat"  u 1:($4+$5) t "Q²=1e2, LO+NLO"

set title "Fig. 14. (b): F_{L}(x,Q²,m_c^2) MSTW2008NNLO"
set out "./img/figure14b-mstw.png"
plot    "./data/F2L-q2_1-mstw.dat"  u 1:4 t "Q²=1e1, LO",\
        "./data/F2L-q2_1-mstw.dat"  u 1:($4+$5) t "Q²=1e2, LO+NLO",\
        "./data/F2L-q2_2-mstw.dat"  u 1:4 t "Q²=1e2, LO",\
        "./data/F2L-q2_2-mstw.dat"  u 1:($4+$5) t "Q²=1e2, LO+NLO"

set out
