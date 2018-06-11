#-
S m2,q2,sp,s,t1,u1,s4,r1,r2,r3,r4,r5;
S psLog1wS1wu6, psLog2wS1ws3,psLog2wS1wu7, psLog3wS1ws3,psLog3wS1wu7, psLog4wS1wu6ws3,psLog4wS1wu6wu7,psLog4wS2wu7ws3;
F Power;
#include pre2IntRQED_F2_VV.frm
L H = G;
Format O2;
.sort
#optimize G
#write "Optimized with O2:"
#write "Optimized with Horner scheme: `optimscheme_'"
#write "Number of operations in output: `optimvalue_'"
#write<out.txt> "%O\ncdbl r = %E",G
Print G;
#clearoptimize
.sort
Format O4,saIter=5000; * use 1000 iterations for optimization
#optimize H
#write "Optimized with O4:"
#write "Optimized with Horner scheme: `optimscheme_'"
#write "Number of operations in output: `OPTIMVALUE_'"
#write<out2.txt> "%O\n%E",H
.end
