#!/usr/bin/gnuplot
reset

set term epslatex
set size 1.1,0.81
#set border 3
#set margin 3
set bmargin 1 

#set xlabel "$\\eta$ []"
set logscale x

set label 1 at graph .02,.72
set key right bottom Left

p = "./../../data/"
f1 = "Fc-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
f2 = "Fc-q2_2-MSTW2008nlo90cl-DSSV2014.dat"

set label 1 "(a) $F_{2,q}^{(1)}(x,Q^2,m_c^2)$"
set out "img/Fq12.tex"
set ytics format "%.1e"
plot    p.f1  u 1:4 t "$Q^2=10^{1}$" w lines, \
        p.f2  u 1:4 t "$Q^2=10^{2}$" w lines

set label 1 "(b) $F_{L,q}^{(1)}(x,Q^2,m_c^2)$"
set out "img/Fq1L.tex"
#set ytics format "%.1e"
plot    p.f1  u 1:7 t "$Q^2=10^{1}$" w lines, \
        p.f2  u 1:7 t "$Q^2=10^{2}$" w lines

set label 1 "(c) $2xg_{1,q}^{(1)}(x,Q^2,m_c^2)$"
set out "img/Fq1P.tex"
set key left bottom
set ytics format "%.1e"
plot    p.f1  u 1:10 t "$Q^2=10^{1}$" w lines, \
        p.f2  u 1:10 t "$Q^2=10^{2}$" w lines

set out
