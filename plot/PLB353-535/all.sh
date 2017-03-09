#!/bin/sh

# detect pdf
if [ $# -lt 1 ]; then
  echo "USAGE: $0 pdf"
  exit
fi;

curd=$PWD/`dirname $0`

gnuplot -c $curd/fig1.plt $1 &
gnuplot -c $curd/fig2.plt $1 &
gnuplot -c $curd/fig3.plt $1 &
gnuplot -c $curd/fig4.plt $1 &
gnuplot -c $curd/fig5.plt $1 &
gnuplot -c $curd/fig6.plt $1 &
gnuplot -c $curd/fig7.plt $1 &
gnuplot -c $curd/fig8.plt $1 &

