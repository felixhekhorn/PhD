#!/usr/bin/gnuplot
reset

set term png

set xlabel "η []"
set logscale x
set xtics format "%.0e"

set logscale y
set ytics format "%.0e"

set title "abs rel. error of grid points to d^{(1)}_{L,q}(η,ξ) with ξ=1e2"
set out "./img/cmp/dLq-grid_xi-1e2.png"
set key bottom
plot    "./data/cmp/dLq-grid-cmp_xi-1e2.dat" u 1:(abs($2)) t "|(exact\\@Me - exact\\@Marco)/exact\\@Me|",\
	"./data/cmp/dLq-grid-cmp_xi-1e2.dat" u 1:(abs($3)) t "|(exact\\@Me - param\\@Marco)/exact\\@Me|",\
	"./data/cmp/dLq-grid-cmp_xi-1e2.dat" u 1:(abs($4)) t "|(exact\\@Marco - param\\@Marco)/exact\\@Marco|"

set title "abs rel. error of grid points to d^{(1)}_{L,q}(η,ξ) with ξ=1e4"
set out "./img/cmp/dLq-grid_xi-1e4.png"
set key top
plot    "./data/cmp/dLq-grid-cmp_xi-1e4.dat" u 1:(abs($2)) t "|(exact\\@Me - exact\\@Marco)/exact\\@Me|",\
	"./data/cmp/dLq-grid-cmp_xi-1e4.dat" u 1:(abs($3)) t "|(exact\\@Me - param\\@Marco)/exact\\@Me|",\
	"./data/cmp/dLq-grid-cmp_xi-1e4.dat" u 1:(abs($4)) t "|(exact\\@Marco - param\\@Marco)/exact\\@Marco|"


set out
