#!/usr/bin/gnuplot
reset

set term png

set xlabel "Q² [GeV²]"
set logscale x

set logscale y
set ytics format "%.1e"

set title "d^{(1)}_{G,q}(η,ξ) with m²=(1.5 GeV)²"
set key at 10000, 1e-9
set out "./img/test/dGq-test.png"
plot    "./data/test/dGq-test.dat" u 1:2 t "η=1e-3", \
	"./data/test/dGq-test.dat" u 1:3 t "η=1e-1", \
	"./data/test/dGq-test.dat" u 1:4 t "η=1e0", \
	"./data/test/dGq-test.dat" u 1:5 t "η=1e1", \
	"./data/test/dGq-test.dat" u 1:6 t "η=1e2", \
	"./data/test/dGq-test.dat" u 1:7 t "η=1e3"

set title "d^{(1)}_{L,q}(η,ξ) with m²=(1.5 GeV)²"
set key at 80000,1e-11
set out "./img/test/dLq-test.png"
plot    "./data/test/dLq-test.dat" u 1:2 t "η=1e-3", \
	"./data/test/dLq-test.dat" u 1:3 t "η=1e-1", \
	"./data/test/dLq-test.dat" u 1:4 t "η=1e0", \
	"./data/test/dLq-test.dat" u 1:5 t "η=1e1", \
	"./data/test/dLq-test.dat" u 1:6 t "η=1e2", \
	"./data/test/dLq-test.dat" u 1:7 t "η=1e3"


set out
