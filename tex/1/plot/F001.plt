#!/usr/bin/gnuplot
reset

set term epslatex
set size 1.1,0.81
#set border 3
#set margin 3
set bmargin 1 

#set xlabel "$\\eta$ []"
set logscale x

set label 1 at graph .02,.7
set key left bottom Left

p = "./../../data/"
f1 = "Fc-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
f2 = "Fc-q2_2-MSTW2008nlo90cl-DSSV2014.dat"

set yrange [1e-6:1e0]
set label 1 "(a) $F_{2}(x,Q^2,m_c^2)$"
set out "img/F0012.tex"
set ytics format " %.1e"
set logscale y
plot    p.f1  u 1:2          t "$Q^2=10^{1}$, LO"     w lines, \
        p.f1  u 1:($2+$3+$4) t "$Q^2=10^{1}$, LO+NLO" w lines, \
        p.f2  u 1:2          t "$Q^2=10^{2}$, LO"     w lines, \
        p.f2  u 1:($2+$3+$4) t "$Q^2=10^{2}$, LO+NLO" w lines

set label 1 at graph .02,.92
set label 1 "(b) $F_{L}(x,Q^2,m_c^2)$"
set out "img/F001L.tex"
#set ytics format " %.1e"
plot    p.f1  u 1:5          t "$Q^2=10^{1}$, LO"     w lines, \
        p.f1  u 1:($5+$6+$7) t "$Q^2=10^{1}$, LO+NLO" w lines, \
        p.f2  u 1:5          t "$Q^2=10^{2}$, LO"     w lines, \
        p.f2  u 1:($5+$6+$7) t "$Q^2=10^{2}$, LO+NLO" w lines

set yrange[*:*]
set label 1 "(c) $2xg_1(x,Q^2,m_c^2)$"
set out "img/F001P.tex"
set key right bottom
set ytics format "%.1e"
unset logscale y
plot    p.f1  u 1:8           t "$Q^2=10^{1}$, LO"     w lines, \
        p.f1  u 1:($8+$9+$10) t "$Q^2=10^{1}$, LO+NLO" w lines, \
        p.f2  u 1:8           t "$Q^2=10^{2}$, LO"     w lines, \
        p.f2  u 1:($8+$9+$10) t "$Q^2=10^{2}$, LO+NLO" w lines

set out
