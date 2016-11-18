#!/usr/bin/gnuplot
reset

set term png

set xlabel "µ^2/µ_0^2"
set logscale x

p = "./data/"
f = p."Fc-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat"

mid = system("sed -n \"11p\" '".f."'")

set title "F_2(µ^2)/F_2(µ_0^2) at x=1e-3,Q^2=1e1"
set out "./img/Fc-x_3-q2_1-mu2.png"
plot    f  u 1:(($2)/word(mid,2)) w l t "LO",\
        f  u 1:(($2+$3+$4)/(word(mid,2)+word(mid,3)+word(mid,4))) w l t "NLO"

set title "F_L(µ^2)/F_L(µ_0^2) at x=1e-3,Q^2=1e1"
set out "./img/Fc-x_3-q2_1-muL.png"
plot    f  u 1:(($5)/word(mid,5)) w l t "LO",\
        f  u 1:(($5+$6+$7)/(word(mid,5)+word(mid,6)+word(mid,7))) w l t "NLO"

set title "g_1(µ^2)/g_1(µ_0^2) at x=1e-3,Q^2=1e1"
set out "./img/Fc-x_3-q2_1-muP.png"
plot    f  u 1:(($8)/word(mid,8)) w l t "LO",\
        f  u 1:(($8+$9+$10)/(word(mid,8)+word(mid,9)+word(mid,10))) w l t "NLO"

n0 = (word(mid,2)+word(mid,3)+word(mid,4))-(word(mid,5)+word(mid,6)+word(mid,7))
z0 = word(mid,8)+word(mid,9)+word(mid,10)

set title "A_1(µ^2)/A_1(µ_0^2) at x=1e-3,Q^2=1e1"
set out "./img/A1-x_3-q2_1-mu.png"
plot    f  u 1:(($8*(word(mid,2)-word(mid,5)))/(($2-$5)*word(mid,8))) w l t "LO",\
        f  u 1:((($8+$9+$10)*(n0))/((($2+$3+$4)-($5+$6+$7))*(z0))) w l t "NLO"

set out
