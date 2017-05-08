#!/bin/sh

usage() {
	echo "USAGE: $0 all | pdf"
	echo "       pdf = CTEQ3M | cteq66 | MSTW2008nlo90cl"
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

gnuplot -c $curd/fig1.plt $pdf
gnuplot -c $curd/fig2.plt $pdf
gnuplot -c $curd/fig3.plt $pdf
gnuplot -c $curd/fig4.plt $pdf
gnuplot -c $curd/fig5.plt $pdf
gnuplot -c $curd/fig6.plt $pdf
gnuplot -c $curd/fig7.plt $pdf
gnuplot -c $curd/fig8.plt $pdf

}

# detect pdf
case "$1" in
	"CTEQ3M" | "cteq66" | "MSTW2008nlo90cl")
		pdf=$1
		echo "[INFO] plotting files with $pdf ..."
		run
		;;

	"all")
		( $0 CTEQ3M )
		( $0 cteq66 )
		( $0 MSTW2008nlo90cl )
		;;

	*)
		usage
		exit 1
		;;
esac




