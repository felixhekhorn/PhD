#!/usr/bin/gnuplot
reset

set term png

set xlabel "µ_R^2/µ_0^2 []"
set ylabel "µ_F^2/µ_0^2 []"
set logscale x
set logscale y
set logscale z

set contour

p = "./data/"
f = p."Fc-muR2-muF2-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat"

mid = system("sed -n \"66p\" '".f."'")

set title "F^0_2(µ_R^2,µ_F^2)/F^0_2(µ_0^2,µ_0^2) at x=1e-3,Q^2=1e1"
set out "./img/Fc-muR2-muF2-x_3-q2_1-LO-2.png"
splot    f  u 1:2:(($3)/word(mid,3)) w l t ""

set title "F^0_L(µ_R^2,µ_F^2)/F^0_L(µ_0^2,µ_0^2) at x=1e-3,Q^2=1e1"
set out "./img/Fc-muR2-muF2-x_3-q2_1-LO-L.png"
splot    f  u 1:2:(($6)/word(mid,6)) w l t ""

set title "g^0_1(µ_R^2,µ_F^2)/g^0_1(µ_0^2,µ_0^2) at x=1e-3,Q^2=1e1"
set out "./img/Fc-muR2-muF2-x_3-q2_1-LO-P.png"
splot    f  u 1:2:(($9)/word(mid,9)) w l t ""

set title "F^1_{2,g}(µ_R^2,µ_F^2)/F^1_{2,g}(µ_0^2,µ_0^2) at x=1e-3,Q^2=1e1"
set out "./img/Fc-muR2-muF2-x_3-q2_1-NLOg-2.png"
splot    f  u 1:2:(($4)/word(mid,4)) w l t ""

set title "F^L_{2,g}(µ_R^2,µ_F^2)/F^L_{2,g}(µ_0^2,µ_0^2) at x=1e-3,Q^2=1e1"
set out "./img/Fc-muR2-muF2-x_3-q2_1-NLOg-L.png"
splot    f  u 1:2:(($7)/word(mid,7)) w l t ""

set title "g^1_{1,g}(µ_R^2,µ_F^2)/g^1_{1,g}(µ_0^2,µ_0^2) at x=1e-3,Q^2=1e1"
set out "./img/Fc-muR2-muF2-x_3-q2_1-NLOg-P.png"
splot    f  u 1:2:(($10)/word(mid,10)) w l t ""


#n0 = (word(mid,2)+word(mid,3)+word(mid,4))-(word(mid,5)+word(mid,6)+word(mid,7))
#z0 = word(mid,8)+word(mid,9)+word(mid,10)

#set title "A_1(µ_R^2,µ_F^2)/A_1(µ_0^2,µ_0^2) at x=1e-3,Q^2=1e1"
#set out "./img/A1-muR2-muF2-x_3-q2_1.png"
#splot    f  u 1:(($8*(word(mid,2)-word(mid,5)))/(($2-$5)*word(mid,8))) w l t "LO",\
#        f  u 1:((($8+$9+$10)*(n0))/((($2+$3+$4)-($5+$6+$7))*(z0))) w l t "NLO"

set out
