#!/bin/sh

#function join_by { local d=$1; shift; echo -n "$1"; shift; printf "%s" "${@/#/$d}"; }
pa="../partonic-a/"
pi="../partonic-i/"
pfd="../partonic-fd/"

for l in "cg0" "cgBarR1" "cgBar1"  "cqBarF1"  "dq1"
do
 for q2 in "-2" "0" "1" "2" "3"
 do
  f=$(printf "%s-Q2_%s.dat" $l $q2)
  paste $pa$f $pi$f $pfd$f > $f
 done
done

for l in "cg1"  "cq1"
do
 for q2 in "-2" "0" "1" "2" "3"
 do
  f=$(printf "%s-Q2_%s.dat" $l $q2)
  paste $pi$f $pfd$f > $f
 done
done

#paste ../partonic-a/cg0-Q2_0.dat ../partonic-i/cg0-Q2_0.dat ../partonic-fd/cg0-Q2_0.dat > cg0-Q2_0.dat

