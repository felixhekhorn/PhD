#!/usr/bin/gnuplot
reset

set term epslatex
set size 1.1,0.81
#set border 3
#set margin 3
set bmargin 1 

#set xlabel "$\\eta$ []"
set logscale x

set label 1 at graph .02,.4
set key left top Left

p = "./../../data/"
f1 = "Fc-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
f2 = "Fc-q2_2-MSTW2008nlo90cl-DSSV2014.dat"

set yrange [1:4]
set label 1 "(a) $R_{2}(x,Q^2,m_c^2)$"
set out "img/R2.tex"
set ytics format " %.1e"
plot    p.f1  u 1:(($2+$3+$4)/$2) t "$Q^2=10^{1}$" w lines, \
        p.f2  u 1:(($2+$3+$4)/$2) t "$Q^2=10^{2}$" w lines

set label 1 "(b) $R_{L}(x,Q^2,m_c^2)$"
set out "img/RL.tex"
#set ytics format " %.1e"
plot    p.f1  u 1:(($5+$6+$7)/$5) t "$Q^2=10^{1}$" w lines, \
        p.f2  u 1:(($5+$6+$7)/$5) t "$Q^2=10^{2}$" w lines

set yrange [-2:2]
set label 1 "(c) $R_P(x,Q^2,m_c^2)$"
set out "img/RP.tex"
set ytics format "%.1e"
plot    p.f1  u 1:(($8+$9+$10)/$8) t "$Q^2=10^{1}$" w lines, \
        p.f2  u 1:(($8+$9+$10)/$8) t "$Q^2=10^{2}$" w lines

set out
