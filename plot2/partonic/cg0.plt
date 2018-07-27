#!/usr/bin/gnuplot
reset

set term png size 400,1000
set logscale x
# setup files

srcM2 = "./data2/partonic-j/cg0-Q2_-2.dat"

src0 = "./data2/partonic-j/cg0-Q2_0.dat"

src1 = "./data2/partonic-j/cg0-Q2_1.dat"

src2 = "./data2/partonic-j/cg0-Q2_2.dat"

src3 = "./data2/partonic-j/cg0-Q2_3.dat"



set title "cg0 F2-VV"
set out "./img2/partonic/cg0-F2-VV.png"
naf = 2

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2  u 1:naf w l t "",\
        srcM2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        srcM2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""

unset title



plot    src0  u 1:naf w l t "",\
        src0  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src0  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src1  u 1:naf w l t "",\
        src1  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src1  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src2  u 1:naf w l t "",\
        src2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 1:naf w l t "",\
        src3  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src3  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



unset multiplot
set out

set title "cg0 FL-VV"
set out "./img2/partonic/cg0-FL-VV.png"
naf = 3

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2  u 1:naf w l t "",\
        srcM2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        srcM2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""

unset title



plot    src0  u 1:naf w l t "",\
        src0  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src0  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src1  u 1:naf w l t "",\
        src1  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src1  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src2  u 1:naf w l t "",\
        src2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 1:naf w l t "",\
        src3  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src3  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



unset multiplot
set out

set title "cg0 x2g1-VV"
set out "./img2/partonic/cg0-x2g1-VV.png"
naf = 4

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2  u 1:naf w l t "",\
        srcM2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        srcM2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""

unset title



plot    src0  u 1:naf w l t "",\
        src0  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src0  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src1  u 1:naf w l t "",\
        src1  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src1  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src2  u 1:naf w l t "",\
        src2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 1:naf w l t "",\
        src3  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src3  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



unset multiplot
set out

set title "cg0 F2-AA"
set out "./img2/partonic/cg0-F2-AA.png"
naf = 5

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2  u 1:naf w l t "",\
        srcM2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        srcM2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""

unset title



plot    src0  u 1:naf w l t "",\
        src0  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src0  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src1  u 1:naf w l t "",\
        src1  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src1  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src2  u 1:naf w l t "",\
        src2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 1:naf w l t "",\
        src3  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src3  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



unset multiplot
set out

set title "cg0 FL-AA"
set out "./img2/partonic/cg0-FL-AA.png"
naf = 6

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2  u 1:naf w l t "",\
        srcM2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        srcM2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""

unset title



plot    src0  u 1:naf w l t "",\
        src0  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src0  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src1  u 1:naf w l t "",\
        src1  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src1  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src2  u 1:naf w l t "",\
        src2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 1:naf w l t "",\
        src3  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src3  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



unset multiplot
set out

set title "cg0 x2g1-AA"
set out "./img2/partonic/cg0-x2g1-AA.png"
naf = 7

set multiplot layout 5,1 spacing 0,0
set xtics format ""
set lmargin 6
unset xlabel
#set bmargin 1



plot    srcM2  u 1:naf w l t "",\
        srcM2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        srcM2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""

unset title



plot    src0  u 1:naf w l t "",\
        src0  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src0  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src1  u 1:naf w l t "",\
        src1  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src1  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



plot    src2  u 1:naf w l t "",\
        src2  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src2  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 1:naf w l t "",\
        src3  u 11:int(2*naf+8):int(2*naf+9) w yerror t "",\
        src3  u 30:int(2*naf+27):int(2*naf+28) w yerror t ""



unset multiplot
set out


#################
# Error Plot
#################

set logscale y
set yrange [1:1.0001]
set key top left
unset xlabel


set title "cg0 F2-VV"
set out "./img2/partonic/e-cg0-F2-VV.png"
naf = 2

set multiplot layout 5,1 spacing 0,0
set xtics format ""
unset xlabel



plot    srcM2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        srcM2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""

unset title



plot    src0  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src0  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src1  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src1  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src3  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



unset multiplot
set out

set title "cg0 FL-VV"
set out "./img2/partonic/e-cg0-FL-VV.png"
naf = 3

set multiplot layout 5,1 spacing 0,0
set xtics format ""
unset xlabel



plot    srcM2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        srcM2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""

unset title



plot    src0  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src0  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src1  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src1  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src3  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



unset multiplot
set out

set title "cg0 x2g1-VV"
set out "./img2/partonic/e-cg0-x2g1-VV.png"
naf = 4

set multiplot layout 5,1 spacing 0,0
set xtics format ""
unset xlabel



plot    srcM2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        srcM2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""

unset title



plot    src0  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src0  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src1  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src1  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src3  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



unset multiplot
set out

set title "cg0 F2-AA"
set out "./img2/partonic/e-cg0-F2-AA.png"
naf = 5

set multiplot layout 5,1 spacing 0,0
set xtics format ""
unset xlabel



plot    srcM2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        srcM2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""

unset title



plot    src0  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src0  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src1  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src1  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src3  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



unset multiplot
set out

set title "cg0 FL-AA"
set out "./img2/partonic/e-cg0-FL-AA.png"
naf = 6

set multiplot layout 5,1 spacing 0,0
set xtics format ""
unset xlabel



plot    srcM2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        srcM2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""

unset title



plot    src0  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src0  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src1  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src1  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src3  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



unset multiplot
set out

set title "cg0 x2g1-AA"
set out "./img2/partonic/e-cg0-x2g1-AA.png"
naf = 7

set multiplot layout 5,1 spacing 0,0
set xtics format ""
unset xlabel



plot    srcM2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        srcM2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""

unset title



plot    src0  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src0  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src1  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src1  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



plot    src2  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src2  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



set xlabel "eta []"
set xtics format "%g"

plot    src3  u 11:(column(2*naf+8)/column(naf)):(column(2*naf+9)/column(naf)) w yerror t "",\
        src3  u 30:(column(2*naf+27)/column(naf)):(column(2*naf+28)/column(naf)) w yerror t ""



unset multiplot
set out
