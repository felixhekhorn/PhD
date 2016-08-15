#!/usr/bin/gnuplot
reset

set term png

set xlabel "η []"
set logscale x

set logscale y
set ytics format "%.1e"

set title "d^{(1)}_{T,q}(η,ξ) with ξ=1e2"
set key bottom
set out "./img/test/d1tq_xi-1e2.png"
plot    "./data/test/d1tq_xi-1e2.dat" u 1:2 t "given d1tq", \
	"./data/test/d1tq-fhe_xi-1e2.dat" u 1:2 t "d1tq with interpolation in ln(η)", \
	"./data/test/d1tq-ex_xi-1e2.dat" u 1:2 t "my exact result"

set title "d^{(1)}_{T,q}(η,ξ) with ξ=1e0"
#set key bottom
set out "./img/test/d1tq_xi-1e0.png"
plot    "./data/test/d1tq_xi-1e0.dat" u 1:2 t "given d1tq", \
	"./data/test/d1tq-fhe_xi-1e0.dat" u 1:2 t "d1tq with interpolation in ln(η)", \
	"./data/test/d1tq-ex_xi-1e0.dat" u 1:2 t "my exact result"

set out
