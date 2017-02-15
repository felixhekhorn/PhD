#!/usr/bin/gnuplot
reset

set term png

set xlabel "x_{bj}/z []"
set logscale x

set logscale y
#set ytics format "%.1e"
#set yrange [1e-4:1]

#set boxwidth 0.5 relative
set boxwidth 0.03
set style fill solid noborder

#set key left top

dL = "data/Fb_L-x_2-q2_2.dat"

set out "./img/Fb_L-x_2-q2_2.png"
plot dL u 1:3 w boxes t "+", dL u 1:(-$3) w boxes t "-"

set out
