#!/usr/bin/gnuplot
reset

set term png

set xlabel "η []"
set logscale x
set xtics format "%.0e"

set logscale y
set ytics format "%.0e"

set title "abs rel. error of grid points to d^{(1)}_{T,q}(η,ξ)"
set out "./img/cmp/d1tq.png"
plot    "./data/cmp/d1tq-q2_1e4.dat" u 1:2 t "ξ=1e4",\
	"./data/cmp/d1tq-q2_5e3.dat" u 1:2 t "ξ=5e3",\
	"./data/cmp/d1tq-q2_1e1.dat" u 1:2 t "ξ=1e1"


set out
