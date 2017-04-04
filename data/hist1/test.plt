#!/usr/bin/gnuplot
reset

set term png

bjorkenX = 8.5e-4
m2 = 4.75**2
q2 = -8.5
zmax = -q2/(4.*m2-q2) 

set logscale y
set ytics format "%.1e"
#set yrange [1e-8:.001]

#set boxwidth 0.5 relative
#set boxwidth .5
#set style fill solid noborder
#set style fill empty border

set key right top box opaque
#set key left top box

#set xlabel "M [GeV]"
#set xrange [0:40.]
#set logscale x

#set xrange [bjorkenX:zmax]
#f = "log10z.dat"
#g = "b_q2_85_x_85_z.dat"

set xrange [9.5:40.5]
f = "invMassHQPair.dat"
g = "b_q2_85_x_85_M.dat"

x(l,r) = .5*l+.5*r

set out "val.png"
plot f u (x($1,$2)):($3/($2-$1)) w boxes t "hist", g t "ana"

set out "err.png"
plot "<./hist.py ".f." ".g t "err"

set out
