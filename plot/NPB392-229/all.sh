#!/bin/sh

usage() {
	echo "USAGE: $0 all | pdf"
	echo "       pdf = MorfinTungB | MSTW2008nlo90cl"
}

if [ $# -lt 1 ]; then
	usage
	exit 1
fi;

curp=`realpath $0`
curd=`dirname $curp`
# run all plots
pdf=""
run() {

gnuplot -c $curd/fig01.plt $pdf
gnuplot -c $curd/fig02.plt $pdf
gnuplot -c $curd/fig03.plt $pdf
gnuplot -c $curd/fig04.plt $pdf

gnuplot -c $curd/fig06.plt $pdf
gnuplot -c $curd/fig07.plt $pdf
gnuplot -c $curd/fig08.plt $pdf
gnuplot -c $curd/fig09.plt $pdf

gnuplot -c $curd/fig11.plt $pdf
gnuplot -c $curd/fig12.plt $pdf
gnuplot -c $curd/fig13.plt $pdf
gnuplot -c $curd/fig14.plt $pdf

gnuplot -c $curd/fig16.plt $pdf
gnuplot -c $curd/fig17.plt $pdf
gnuplot -c $curd/fig18.plt $pdf
gnuplot -c $curd/fig19.plt $pdf

}

# detect pdf
case "$1" in
	"MorfinTungB" | "MSTW2008nlo90cl")
		pdf=$1
		echo "[INFO] plotting files with $pdf ..."
		run
		;;

	"all")
		( $0 MorfinTungB )
		( $0 MSTW2008nlo90cl )
		;;

	*)
		usage
		exit 1
		;;
esac

