#!/usr/bin/gnuplot
reset

set term png size 640,640
set size square

pin = "data/NPB540-345/"
pout = "img/NPB540-345/"

set ylabel "dΔσ^c_{γ*p}/dx_t [nb]"
#set logscale y
#set ytics format "%.1e"
#set yrange [1e-5:.01]
#set mytics 10

#set boxwidth 0.5 relative
#set boxwidth 0.1
#set style fill solid noborder

#set key left top

set xlabel "x_t []"
set logscale x
set xrange [1e-3:1.]
set xtics .1
set mxtics 10

f_10_0  = pin . "dFP_dxt-GRSV96STDNLO-sqrtSh_10_0.dat"
f_200_0 = pin . "dFP_dxt-GRSV96STDNLO-sqrtSh_200_0.dat"

q2 = -1e-2
aem = 1./137.
n = -q2/(4.*pi*pi*aem)
toNbTimesGeV2 = 3894./10000.*1e6

set out pout . "fig10.png"
set title sprintf("dΔσ(Q²=%gGeV^2,m_c^2,x_t)/dx_t",-q2)
plot f_10_0  u (.5*$1+.5*$2):($3/($2-$1)/n*toNbTimesGeV2)    t "GRSV96STDNLO, √S=10GeV, LO",\
     f_200_0 u (.5*$1+.5*$2):($3/($2-$1)/n/8.*toNbTimesGeV2) t "GRSV96STDNLO, √S=200GeV, LO"

set out
