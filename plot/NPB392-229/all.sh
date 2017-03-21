#!/bin/sh

# detect pdf
if [ $# -lt 1 ]; then
  echo "USAGE: $0 pdf"
  exit
fi;

curd=$PWD/`dirname $0`

gnuplot -c $curd/fig11.plt $1 &
gnuplot -c $curd/fig12.plt $1 &
gnuplot -c $curd/fig13.plt $1 &
gnuplot -c $curd/fig14.plt $1 &

gnuplot -c $curd/fig16.plt $1 &
gnuplot -c $curd/fig17.plt $1 &
gnuplot -c $curd/fig18.plt $1 &
gnuplot -c $curd/fig19.plt $1 &

