#!/usr/bin/gnuplot
reset

set term png

set logscale y
set ytics format "%.1e"
#set yrange [1e-4:1]

#set boxwidth 0.5 relative
set boxwidth 0.03
set style fill solid noborder

#set key left top

dL = "data/Fb_L-x_2-q2_2-z.dat"
set logscale x
set xlabel "z []"
set out "./img/Fb_L-x_2-q2_2-z.png"
plot dL u 1:3 w boxes t "+", dL u 1:(-$3) w boxes t "-"

dL = "data/Fb_L-x_2-q2_2-pdf.dat"
set xlabel "x_{bj}/z []"
set out "./img/Fb_L-x_2-q2_2-pdf.png"
plot dL u 1:3 w boxes t "+", dL u 1:(-$3) w boxes t "-"

unset logscale x
set boxwidth 0.1
set xlabel "ϴ_1 []"
dL = "data/Fb_L-x_2-q2_2-Theta1.dat"
set out "./img/Fb_L-x_2-q2_2-Theta1.png"
plot dL u 1:3 w boxes t "+", dL u 1:(-$3) w boxes t "-"

set xlabel "ϴ_2 []"
dL = "data/Fb_L-x_2-q2_2-Theta2.dat"
set out "./img/Fb_L-x_2-q2_2-Theta2.png"
plot dL u 1:3 w boxes t "+", dL u 1:(-$3) w boxes t "-"

set out
