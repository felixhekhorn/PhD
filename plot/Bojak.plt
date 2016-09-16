#!/usr/bin/gnuplot
reset

set term png

set xlabel "η []"
set logscale x

set key left top

set title "Fig. 7.1 quark scaling functions at Q²=1e-2"
set out "./img/Bojak-figure71.png"
plot    "./data/partonic/cq1-q2_-2.dat"     u 1:4        t "Δc_{γq}^{(1)}",\
        "./data/partonic/cqbar1-q2_-2.dat"  u 1:4        t "Δc_{γq}^{bar,(1)}",\
        "./data/partonic/cq1-q2_-2.dat"     u 1:($2/25.) t "c_{γq}^{(1)}/25", \
        "./data/partonic/cqbar1-q2_-2.dat"  u 1:($2/25.) t "c_{γq}^{bar,(1)}/25"

set title "Fig. 7.5 gluon scaling functions at Q²=1e-2"
set out "./img/Bojak-figure75.png"
plot    "./data/partonic/cg1-q2_-2.dat"     u 1:4       t "Δc_{γg}^{(1)}",\
        "./data/partonic/cgbar1-q2_-2.dat"  u 1:($4+$7) t "Δc_{γg}^{bar,(1)}",\
        "./data/partonic/cg1-q2_-2.dat"     u 1:2       t "c_{γg}^{(1)}", \
        "./data/partonic/cgbar1-q2_-2.dat"  u 1:($2+$5) t "c_{γg}^{bar,(1)}"

set out
