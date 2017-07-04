#!/usr/bin/gnuplot
reset

set term png

pin = "data/NPB540-345/"
pout = "img/NPB540-345/"

set ylabel "dΔσ^c_{γ*p}/dy [nb]"
#set logscale y
#set ytics format "%.1e"
#set yrange [1e-5:.01]
#set mytics 10

#set boxwidth 0.5 relative
#set boxwidth 0.1
#set style fill solid noborder

#set key left top

set xlabel "y []"
set xrange [-2.:2.]
set xtics .5
set mxtics 5

f_0 = pin . "dFP_dy-GRSV96STDLO-sqrtSh_10-0.dat"
f_1 = pin . "dFP_dy-GRSV96STDNLO-sqrtSh_10-1.dat"
g_1 = pin . "dFG_dy-GRV94NLO-sqrtSh_10-1.dat"

fi_0 = pin . "dFP_dy-inc-GRSV96STDLO-sqrtSh_10-0.dat"
fi_1 = pin . "dFP_dy-inc-GRSV96STDNLO-sqrtSh_10-1.dat"
gi_1 = pin . "dFG_dy-inc-GRV94NLO-sqrtSh_10-1.dat"


q2 = -1e-2
aem = 1./137.
n = -q2/(4.*pi*pi*aem)
nbTimesGeV2 = 3894./10000.*1e6

set out pout . "fig11.png"
set title sprintf("dΔσ(Q²=%gGeV^2,√S=10GeV,m_c^2,y)/dy with GRSV96STD",-q2)
plot f_0  u (.5*$1+.5*$2):($3/($2-$1)/n*nbTimesGeV2)    t "LO excl.",\
     fi_0 u 1:($2/n*nbTimesGeV2)                        t "LO incl.",\
     f_1  u (.5*$1+.5*$2):($3/($2-$1)/n*nbTimesGeV2)    t "NLO",\
     g_1  u (.5*$1+.5*$2):($3/($2-$1)/n*nbTimesGeV2/8.)    t "unpol/8"

set out
