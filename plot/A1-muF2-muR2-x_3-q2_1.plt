#!/usr/bin/gnuplot
reset

#set term epslatex
#set size 1.1,0.81

set term eps transparent size 4,4 dashlength 2 crop
#set size .5,1
##set out "img/A-muF2-muR2-x_3-q2_1.eps"
set out "img/A1-muF2-muR2-x_3-q2_1.eps"

#set border 1
#set margin 3
set margin 0
#set bmargin -5

#set logscale x
#set logscale y
set xrange [-1:1]
set xtics offset -0.7,-0.2
set ytics offset 0.5,-0.2
##set zrange [.8:1.8]
set zrange [.5:1.8]
#set ztics .8, .2, 1.8
set yrange [-1:1]
set xlabel "µ_F^2 = 10^fµ_0^2" rotate parallel font ",18"
set ylabel "µ_R^2 = 10^rµ_0^2" rotate parallel font ",18"

set nokey

set label at screen .03, screen 0.2 "A^c(µ_F^2,µ_R^2)/" font ",18" rotate
set label at screen .03, screen 0.2 "A_1" font ",18" rotate
set label at screen .03, screen 0.45 "A^c(µ_0^2)" font ",18" rotate
set label at screen .03, screen 0.45 "A_1" font ",18" rotate
set label at screen .02, screen 0.91 "x=0.001, Q^2=10 GeV^2" font ",18"

p = "./data/"
##f = p."F1g1A-muF2-muR2-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
##mid = system("sed -n \"1326p\" '".f."'")
f = p."F1g1A1-muF2-muR2-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
mid = system("sed -n \"231p\" '".f."'")

set view 64,50
set view equal xyz
set hidden3d
set cntrlabel onecolor
set style textbox opaque margins 0.5,0.5 noborder linewidth  1.0
##set ticslevel 1.1
set ticslevel .7
set size 1.1,1.1
set origin .01,-.1

set multiplot

##splot f every 10:10 u 1:2:(($8)/word(mid,8)) w lines lc rgb "#000000" not
splot f every 2:2 u 1:2:(($8)/word(mid,8)) w lines lc rgb "#000000" not

unset pm3d
unset surface
##
set cntrparam levels incremental 0.8, .2, 1.6
set contour both
set linetype 1 dt 2
splot f u 1:2:(($8)/word(mid,8)) w lines lc rgb "#000000" notitle
set contour base
##set cntrlabel start 15 interval 30
##set arrow 1 from 1,1,-0.3 to -1,-1,-0.3 lc rgb "#000000" nohead
set arrow 1 from 1,1,-0.4 to -1,-1,-0.4 lc rgb "#000000" nohead
splot f u 1:2:(($8)/word(mid,8)) w labels boxed notitle
