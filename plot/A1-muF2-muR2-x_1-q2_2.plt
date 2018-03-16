#!/usr/bin/gnuplot
reset

#set term epslatex
#set size 1.1,0.81

set term eps transparent size 4,4 dashlength 2 crop
#set size .5,1
##set out "img/A-muF2-muR2-x_1-q2_2.eps"
set out "img/A1-muF2-muR2-x_1-q2_2.eps"

#set border 1
#set margin 3
set margin 0
#set bmargin -5

#set logscale x
#set logscale y
set xrange [-1:1]
set xtics offset -0.7,-0.2
set ytics offset 0.5,-0.2
set yrange [-1:1]
set zrange [.6:1.3]
set ztics .6,.2,1.4
set mztics 2
set xlabel "µ_F^2 = 10^fµ_0^2" rotate parallel font ",18"
set ylabel "µ_R^2 = 10^rµ_0^2" rotate parallel font ",18"

set nokey

#set label at screen .02, screen 0.90 "A^c(µ_F^2,µ_R^2)/" font ",18"
#set label at screen .02, screen 0.90 "A_1" font ",18"
#set label at screen .26, screen 0.90 "A^c(µ_F^2=µ_R^2=µ_0^2)" font ",18"
#set label at screen .26, screen 0.90 "A_1" font ",18"
set label at screen .02, screen 0.83 "x=0.1, Q^2=100 GeV^2" font ",18"

p = "./data/"
##f = p."F1g1A-muF2-muR2-x_1-q2_2-MSTW2008nlo90cl-DSSV2014.dat"
##mid = system("sed -n \"1326p\" '".f."'")
f = p."F1g1A1-muF2-muR2-x_1-q2_2-MSTW2008nlo90cl-DSSV2014.dat"
mid = system("sed -n \"231p\" '".f."'")


set view 64,50
set view equal xyz
set hidden3d
set cntrlabel onecolor
set style textbox opaque margins 0.5,  0.5 fc  rgb "#ffffff" noborder linewidth  1.0
set ticslevel 1.3
set size 1.1,1.1
set origin -.01,-.1

set multiplot

##splot f every 10:10 u 1:2:(($8)/word(mid,8)) w lines lc rgb "#000000" not
splot f every 2:2 u 1:2:(($8)/word(mid,8)) w lines lc rgb "#000000" not

unset pm3d
unset surface
##
set cntrparam levels incremental 0.7, .1, 1.2
set contour both
set linetype 1 dt 2
splot f u 1:2:(($8)/word(mid,8)) w lines lc rgb "#000000" not
set contour base
set cntrlabel start 8 interval 45
set arrow 1 from 1,1,-0.31 to -1,-1,-0.31 lc rgb "#000000" nohead
splot f u 1:2:(($8)/word(mid,8)) w labels boxed notitle
