#!/usr/bin/gnuplot
reset

set term png

m2 = 4.75**2
q2 = -1e2
bjorkenX = 1e-2
zMax = -q2/(4.*m2 - q2)

set logscale y
set ytics format "%.1e"
#set yrange [1e-4:1]

#set boxwidth 0.5 relative
set boxwidth 0.03
set style fill solid noborder

#set key left top

dL = "data/Fb_L-x_2-q2_2-z.dat"
set logscale x
set xrange [bjorkenX:zMax]
set xlabel "z []"
set out "./img/Fb_L-x_2-q2_2-z.png"
plot dL u (($1+$2)/2):3 w boxes t "+", dL u (($1+$2)/2):(-$3) w boxes t "-"

dL = "data/Fb_L-x_2-q2_2-pdf.dat"
set xrange [bjorkenX/zMax:1.]
set xlabel "x_{bj}/z []"
set out "./img/Fb_L-x_2-q2_2-pdf.png"
plot dL u (($1+$2)/2):3 w boxes t "+", dL u (($1+$2)/2):(-$3) w boxes t "-"

dL = "data/Fb_L-x_2-q2_2-x.dat"
set xrange [bjorkenX/zMax:1.]
set xlabel "x []"
set out "./img/Fb_L-x_2-q2_2-x.png"
plot dL u (($1+$2)/2):3 w boxes t "+", dL u (($1+$2)/2):(-$3) w boxes t "-"

unset logscale x
set xrange [-1:1]
set boxwidth 0.1
set xlabel "y []"
dL = "data/Fb_L-x_2-q2_2-y.dat"
set out "./img/Fb_L-x_2-q2_2-y.png"
plot dL u (($1+$2)/2):3 w boxes t "+", dL u (($1+$2)/2):(-$3) w boxes t "-"

set boxwidth 0.1
set xrange [0:pi]
set xlabel "ϴ_1 []"
dL = "data/Fb_L-x_2-q2_2-Theta1.dat"
set out "./img/Fb_L-x_2-q2_2-Theta1.png"
plot dL u (($1+$2)/2):3 w boxes t "+", dL u (($1+$2)/2):(-$3) w boxes t "-"

set xlabel "ϴ_2 []"
dL = "data/Fb_L-x_2-q2_2-Theta2.dat"
set out "./img/Fb_L-x_2-q2_2-Theta2.png"
plot dL u (($1+$2)/2):3 w boxes t "+", dL u (($1+$2)/2):(-$3) w boxes t "-"

set xlabel "s_5 [GeV^2]"
set boxwidth (-q2*(1./bjorkenX - 1.) - 4.*m2)/15*.3
set xrange [4.*m2:-q2*(1./bjorkenX - 1.)]
#set xrange [0:40**2]
#set boxwidth 40.**2/15.*.3
dL = "data/Fb_L-x_2-q2_2-s5.dat"
set out "./img/Fb_L-x_2-q2_2-s5.png"
plot dL u (($1+$2)/2):3 w boxes t "+", dL u (($1+$2)/2):(-$3) w boxes t "-"

set xlabel "M [GeV]"
#set boxwidth (-q2*(1./bjorkenX - 1.) - 4.*m2)/15*.3
#set xrange [4.*m2:-q2*(1./bjorkenX - 1.)]
set xrange [0:40.]
set boxwidth 40./15.*.3
dL = "data/Fb_L-x_2-q2_2-invHQMass.dat"
set out "./img/Fb_L-x_2-q2_2-invHQMass.png"
plot dL u (($1+$2)/2):3 w boxes t "+", dL u (($1+$2)/2):(-$3) w boxes t "-"

set out
