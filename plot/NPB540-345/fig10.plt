#!/usr/bin/gnuplot
reset

set term png size 640,640
set size square

pin = "data/NPB540-345/"
pout = "img/NPB540-345/"

set ylabel "dΔσ^c_{γ*p}/dx_T [nb]"
#set logscale y
#set ytics format "%.1e"
set yrange [-80:225]
set ytics 50
set mytics 5

#set boxwidth 0.5 relative
#set boxwidth 0.1
#set style fill solid noborder

set key left top reverse Left

set xlabel "x_T []"
set logscale x
set xrange [1e-3:1.]
set xtics .1
set mxtics 10

f_10_0  = pin . "dFP_dxt-GRSV96STDLO-sqrtSh_10-0.dat"
f_10_1  = pin . "dFP_dxt-GRSV96STDNLO-sqrtSh_10-1.dat"
f_200_0 = pin . "dFP_dxt-GRSV96STDLO-sqrtSh_200-cMuF2_100-cMuR2_100-0.dat"
f_200_1 = pin . "dFP_dxt-GRSV96STDNLO-sqrtSh_200-cMuF2_100-cMuR2_100-1.dat"

q2 = -1e-2
aem = 1./137.
n = -q2/(4.*pi*pi*aem)
nbTimesGeV2 = 3894./10000.*1e6

y(l,u,v) = v/(u-l)/n*nbTimesGeV2

set out pout . "fig10.png"
set title sprintf("dΔσ(Q²=%gGeV^2,m_c^2,x_t)/dx_T with GRSV96STD",-q2)
plot f_10_0  u (.5*$1+.5*$2):(y($1,$2,$3)):(y($1,$2,$4)):(y($1,$2,$5)) w yerrorbars    t "√S=10GeV,   LO",\
     f_10_1  u (.5*$1+.5*$2):(y($1,$2,$3)):(y($1,$2,$4)):(y($1,$2,$5)) w yerrorbars    t "√S=10GeV,  NLO",\
     f_200_0 u (.5*$1+.5*$2):(y($1,$2,$3)/8.) t "√S=200GeV,  LO",\
     f_200_1 u (.5*$1+.5*$2):(y($1,$2,$3)/8.) t "√S=200GeV, NLO"

set out
