#!/usr/bin/gnuplot
reset

set term png

set xlabel "m^2 [GeV^2]"

p = "./data/"
f = p."Fc-m2-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat"

set title "F_2(x=1e-3,Q^2=1e1,m^2)"
set out "./img/Fc-m2-x_3-q2_1-2.png"
plot    f  u 1:2 w l t "LO",\
        f  u 1:($2+$3+$4) w l t "NLO"

set title "F_L(x=1e-3,Q^2=1e1,m^2)"
set out "./img/Fc-m2-x_3-q2_1-L.png"
plot    f  u 1:5 w l t "LO",\
        f  u 1:($5+$6+$7) w l t "NLO"

set title "2xg_1(x=1e-3,Q^2=1e1,m^2)"
set out "./img/Fc-m2-x_3-q2_1-P.png"
plot    f  u 1:8 w l t "LO",\
        f  u 1:($8+$9+$10) w l t "NLO"

set title "A_1(x=1e-3,Q^2=1e1,m^2)"
set out "./img/A1-m2-x_3-q2_1.png"
plot    f  u 1:($8/($2-$5)) w l t "LO",\
        f  u 1:(($8+$9+$10)/(($2+$3+$4)-($5+$6+$7))) w l t "NLO"

set out
