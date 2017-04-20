#!/usr/bin/gnuplot
reset

set term png size 640,640
set size square

if (ARGC < 1) {
  print "USAGE: gnuplot -c ".ARG0." pdf"
  exit
}
pdf = ARG1
pin = "data/PLB452-109-" . pdf . "/"
pout = "img/PLB452-109-" . pdf . "/"

set ytics format "%g"
set yrange [-.4:.4]
set ytics .2
set mytics 5

set xlabel "P_t [GeV]"
set xrange [0:20.]
set xtics 10
set mxtics 10

#set boxwidth 0.5 relative
#set boxwidth .5
#set style fill solid noborder
set style fill empty border

#set key left bottom box opaque

f10 = pin . "dF2c_dPt_x-42_q2-120_1.dat"
f11 = pin . "dF2c_dPt_x-85_q2-120_1.dat"
f12 = pin . "dF2c_dPt_x-160_q2-120_1.dat"
f13 = pin . "dF2c_dPt_x-270_q2-120_1.dat"

f01 = pin . "dF2c_dPt_x-85_q2-85_1.dat"
f21 = pin . "dF2c_dPt_x-85_q2-250_1.dat"
f31 = pin . "dF2c_dPt_x-85_q2-500_1.dat"

x1(l,r) = .5*l+.5*r

set title sprintf("Fig. 8a) dF_2(x,Q²=12GeV²,m_c²,P_t)/dP_t with %s",pdf)
set out pout . "fig8a.png"
plot f10 u (x1($1,$2)):($3/($2-$1)) w boxes t "x=4.2e-4" lc rgb "#ff0000", \
     f11 u (x1($1,$2)):($3/($2-$1)) w boxes t "x=8.5e-4" lc rgb "#00ff00", \
     f12 u (x1($1,$2)):($3/($2-$1)) w boxes t "x=1.6e-3" lc rgb "#0000ff", \
     f13 u (x1($1,$2)):($3/($2-$1)) w boxes t "x=2.7e-3" lc rgb "#999999"

set title sprintf("Fig. 8b) dF_2(x=8.5e-4,Q²,m_c²,P_t)/dP_t with %s",pdf)
set out pout . "fig8b.png"
plot f31 u (x1($1,$2)):($3/($2-$1)) w boxes t "Q2=50GeV²" lc rgb "#999999", \
     f21 u (x1($1,$2)):($3/($2-$1)) w boxes t "Q2=25GeV²" lc rgb "#0000ff", \
     f11 u (x1($1,$2)):($3/($2-$1)) w boxes t "Q2=12GeV²" lc rgb "#00ff00", \
     f01 u (x1($1,$2)):($3/($2-$1)) w boxes t "Q2=8.5GeV²" lc rgb "#ff0000"

set out
