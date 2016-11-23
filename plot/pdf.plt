#!/usr/bin/gnuplot
reset

set term png

set xlabel "x []"
set logscale x

#set logscale y
#set ytics format "%.1e"
#set yrange [1e-4:1]

set style fill transparent pattern 4 bo

#set key left top

d1 = "data/FPc-pdf-q2_1-DSSV2014.dat"
d2 = "data/FPc-pdf-q2_2-DSSV2014.dat"

set title "2xg_1^{(0)}DSSV2014"
set out "./img/FPc-pdf-DSSV2014-LO.png"
plot    d1 u 1:2:4 w filledcurve t "Q²=1e1",\
        d1 u 1:3   w lines       t "" ,\
        d2 u 1:2:4 w filledcurve t "Q²=1e2",\
        d2 u 1:3   w lines       t "" 

set title "2xg_{1,g}^{(1)}DSSV2014"
set out "./img/FPc-pdf-DSSV2014-NLOg.png"
plot    d1 u 1:5:7 w filledcurve t "Q²=1e1",\
        d1 u 1:6   w lines       t "",\
        d2 u 1:5:7 w filledcurve t "Q²=1e2",\
        d2 u 1:6   w lines       t ""

set title "2xg_{1,q}^{(1)}DSSV2014"
set out "./img/FPc-pdf-DSSV2014-NLOq.png"
plot    d1 u 1:8:10 w filledcurve t "Q²=1e1",\
        d1 u 1:9    w lines       t "",\
        d2 u 1:8:10 w filledcurve t "Q²=1e2",\
        d2 u 1:9    w lines       t "" 

set out
