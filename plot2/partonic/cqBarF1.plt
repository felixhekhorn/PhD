#!/usr/bin/gnuplot
reset

set term png

set xlabel "η []"
set logscale x
set xrange [1e-3:1e3]
set xtics ("-4" 1e-4, "-3" 1e-3, "-2" 1e-2, "-1" 1e-1, "0" 1e0, "1" 1e1, "2" 1e2)

#set key left bottom Left reverse

set out "./img2/partonic/cqBarF1_VV_F2.png"
#set yrange [1e-3:1e3]
plot    "./data2/partonic/cqBarF1-Q2_-2.dat"  u 1:2 t "Q²=1e-2" w lines, \
	"./data2/partonic/cqBarF1-Q2_0.dat"   u 1:2 t "Q²=1e0" w lines, \
        "./data2/partonic/cqBarF1-Q2_1.dat"   u 1:2 t "Q²=1e1" w lines, \
	"./data2/partonic/cqBarF1-Q2_2.dat"   u 1:2 t "Q²=1e2" w lines, \
	"./data2/partonic/cqBarF1-Q2_3.dat"   u 1:2 t "Q²=1e3" w lines

set out "./img2/partonic/cqBarF1_VV_FL.png"
#set yrange [1e-3:1e3]
plot    "./data2/partonic/cqBarF1-Q2_-2.dat"  u 1:3 t "Q²=1e-2" w lines, \
	"./data2/partonic/cqBarF1-Q2_0.dat"   u 1:3 t "Q²=1e0" w lines, \
        "./data2/partonic/cqBarF1-Q2_1.dat"   u 1:3 t "Q²=1e1" w lines, \
	"./data2/partonic/cqBarF1-Q2_2.dat"   u 1:3 t "Q²=1e2" w lines, \
	"./data2/partonic/cqBarF1-Q2_3.dat"   u 1:3 t "Q²=1e3" w lines

set out "./img2/partonic/cqBarF1_VV_x2g1.png"
#set yrange [1e-3:1e3]
plot    "./data2/partonic/cqBarF1-Q2_-2.dat"  u 1:4 t "Q²=1e-2" w lines, \
	"./data2/partonic/cqBarF1-Q2_0.dat"   u 1:4 t "Q²=1e0" w lines, \
        "./data2/partonic/cqBarF1-Q2_1.dat"   u 1:4 t "Q²=1e1" w lines, \
	"./data2/partonic/cqBarF1-Q2_2.dat"   u 1:4 t "Q²=1e2" w lines, \
	"./data2/partonic/cqBarF1-Q2_3.dat"   u 1:4 t "Q²=1e3" w lines

set out "./img2/partonic/cqBarF1_VA_xF3.png"
#set yrange [1e-3:1e3]
plot    "./data2/partonic/cqBarF1-Q2_-2.dat"  u 1:5 t "Q²=1e-2" w lines, \
	"./data2/partonic/cqBarF1-Q2_0.dat"   u 1:5 t "Q²=1e0" w lines, \
        "./data2/partonic/cqBarF1-Q2_1.dat"   u 1:5 t "Q²=1e1" w lines, \
	"./data2/partonic/cqBarF1-Q2_2.dat"   u 1:5 t "Q²=1e2" w lines, \
	"./data2/partonic/cqBarF1-Q2_3.dat"   u 1:5 t "Q²=1e3" w lines

set out "./img2/partonic/cqBarF1_VA_g4.png"
#set yrange [1e-3:1e3]
plot    "./data2/partonic/cqBarF1-Q2_-2.dat"  u 1:6 t "Q²=1e-2" w lines, \
	"./data2/partonic/cqBarF1-Q2_0.dat"   u 1:6 t "Q²=1e0" w lines, \
        "./data2/partonic/cqBarF1-Q2_1.dat"   u 1:6 t "Q²=1e1" w lines, \
	"./data2/partonic/cqBarF1-Q2_2.dat"   u 1:6 t "Q²=1e2" w lines, \
	"./data2/partonic/cqBarF1-Q2_3.dat"   u 1:6 t "Q²=1e3" w lines

set out "./img2/partonic/cqBarF1_VA_gL.png"
#set yrange [1e-3:1e3]
plot    "./data2/partonic/cqBarF1-Q2_-2.dat"  u 1:7 t "Q²=1e-2" w lines, \
	"./data2/partonic/cqBarF1-Q2_0.dat"   u 1:7 t "Q²=1e0" w lines, \
        "./data2/partonic/cqBarF1-Q2_1.dat"   u 1:7 t "Q²=1e1" w lines, \
	"./data2/partonic/cqBarF1-Q2_2.dat"   u 1:7 t "Q²=1e2" w lines, \
	"./data2/partonic/cqBarF1-Q2_3.dat"   u 1:7 t "Q²=1e3" w lines

set out "./img2/partonic/cqBarF1_AA_F2.png"
#set logscale y
#set yrange [1e-3:1e3]
plot    "./data2/partonic/cqBarF1-Q2_-2.dat"  u 1:8 t "Q²=1e-2" w lines, \
	"./data2/partonic/cqBarF1-Q2_0.dat"   u 1:8 t "Q²=1e0" w lines, \
        "./data2/partonic/cqBarF1-Q2_1.dat"   u 1:8 t "Q²=1e1" w lines, \
	"./data2/partonic/cqBarF1-Q2_2.dat"   u 1:8 t "Q²=1e2" w lines, \
	"./data2/partonic/cqBarF1-Q2_3.dat"   u 1:8 t "Q²=1e3" w lines

set out "./img2/partonic/cqBarF1_AA_FL.png"
#set yrange [1e-3:1e3]
plot    "./data2/partonic/cqBarF1-Q2_-2.dat"  u 1:9 t "Q²=1e-2" w lines, \
	"./data2/partonic/cqBarF1-Q2_0.dat"   u 1:9 t "Q²=1e0" w lines, \
        "./data2/partonic/cqBarF1-Q2_1.dat"   u 1:9 t "Q²=1e1" w lines, \
	"./data2/partonic/cqBarF1-Q2_2.dat"   u 1:9 t "Q²=1e2" w lines, \
	"./data2/partonic/cqBarF1-Q2_3.dat"   u 1:9 t "Q²=1e3" w lines

set out "./img2/partonic/cqBarF1_AA_x2g1.png"
#unset logscale y
#set yrange [1e-3:1e3]
plot    "./data2/partonic/cqBarF1-Q2_-2.dat"  u 1:10 t "Q²=1e-2" w lines, \
	"./data2/partonic/cqBarF1-Q2_0.dat"   u 1:10 t "Q²=1e0" w lines, \
        "./data2/partonic/cqBarF1-Q2_1.dat"   u 1:10 t "Q²=1e1" w lines, \
	"./data2/partonic/cqBarF1-Q2_2.dat"   u 1:10 t "Q²=1e2" w lines, \
	"./data2/partonic/cqBarF1-Q2_3.dat"   u 1:10 t "Q²=1e3" w lines


set out
