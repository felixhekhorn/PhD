#!/usr/bin/gnuplot
reset

set term png size 400,1000
set logscale x

mainDir = "~/Physik/PhD/"

#####################
# setup files
#####################


srcM2  = mainDir . "data2/partonic-j/cg1-Q2_-2.dat"

src0  = mainDir . "data2/partonic-j/cg1-Q2_0.dat"

src1  = mainDir . "data2/partonic-j/cg1-Q2_1.dat"

src2  = mainDir . "data2/partonic-j/cg1-Q2_2.dat"

src3  = mainDir . "data2/partonic-j/cg1-Q2_3.dat"


#####################
# comparision plots
#####################


set title "cg1 F2-VV"
set out mainDir . "img2/partonic/cg1-F2-VV.png"
naf = 1

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        srcM2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""

unset title



plot    src0 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src0 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src1 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src1 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src3 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



unset multiplot
set out

set title "cg1 FL-VV"
set out mainDir . "img2/partonic/cg1-FL-VV.png"
naf = 2

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        srcM2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""

unset title



plot    src0 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src0 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src1 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src1 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src3 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



unset multiplot
set out

set title "cg1 x2g1-VV"
set out mainDir . "img2/partonic/cg1-x2g1-VV.png"
naf = 3

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        srcM2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""

unset title



plot    src0 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src0 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src1 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src1 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src3 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



unset multiplot
set out

set title "cg1 F2-AA"
set out mainDir . "img2/partonic/cg1-F2-AA.png"
naf = 4

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        srcM2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""

unset title



plot    src0 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src0 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src1 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src1 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src3 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



unset multiplot
set out

set title "cg1 FL-AA"
set out mainDir . "img2/partonic/cg1-FL-AA.png"
naf = 5

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        srcM2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""

unset title



plot    src0 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src0 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src1 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src1 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src3 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



unset multiplot
set out

set title "cg1 x2g1-AA"
set out mainDir . "img2/partonic/cg1-x2g1-AA.png"
naf = 6

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        srcM2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""

unset title



plot    src0 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src0 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src1 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src1 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src3 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



unset multiplot
set out


#####################
# error to zero plots
#####################

set logscale y
set key top left
unset xlabel

yminZero = 1e-08
ymaxZero = 0.01
set yrange [yminZero:ymaxZero]
re1(naf,o) = abs(column(2*naf+o))
re(naf,o) = (0. == re1(naf,o) ? yminZero : re1(naf,o))
ree1(naf,o) = abs(column(2*naf+o)+column(2*naf+o+1))
ree2(naf,o) = abs(column(2*naf+o)-column(2*naf+o+1))
ree12(naf,o) = (ree1(naf,o) < ree2(naf,o) ? ree2(naf,o) : ree1(naf,o))
ree(naf,o) = (re(naf,o) + ree12(naf,o))


set title "cg1 xF3-VA"
set out mainDir . "img2/partonic/e-cg1-xF3-VA.png"
naf = 7

set multiplot layout 5,1 spacing 0,0
set xtics format ""
unset xlabel



plot    srcM2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        srcM2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""

unset title



plot    src0 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src0 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src1 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src1 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src3 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



unset multiplot
set out

set title "cg1 g4-VA"
set out mainDir . "img2/partonic/e-cg1-g4-VA.png"
naf = 8

set multiplot layout 5,1 spacing 0,0
set xtics format ""
unset xlabel



plot    srcM2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        srcM2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""

unset title



plot    src0 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src0 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src1 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src1 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



plot    src2 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src2 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3 u 1:int(2*naf):int(2*naf+1) w yerror lc "red" t "",\
        src3 u 20:int(2*naf+19):int(2*naf+19+1) w yerror lc "blue" t ""



unset multiplot
set out
