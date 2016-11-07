#!/usr/bin/gnuplot
reset

set term epslatex
set size 1,1
#set border 3
#set margin 3
#set bmargin 1 

#set xlabel "$\\eta$ []"
set logscale x

#set label 1 at graph .02,.7
set key left top Left

p = "./../../data/"
f1 = "Fc-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
f2 = "Fc-q2_2-MSTW2008nlo90cl-DSSV2014.dat"

#set label 1 "(a) $A_{1}(x,Q^2,m_c^2)$"
set out "img/A.tex"
#set ytics format "%.1e"
plot    p.f1  u 1:(($8+$9+$10)/(($2+$3+$4)-($5+$6+$7))) t "$Q^2=10^{1}$" w lines, \
        p.f2  u 1:(($8+$9+$10)/(($2+$3+$4)-($5+$6+$7))) t "$Q^2=10^{2}$" w lines

set out
