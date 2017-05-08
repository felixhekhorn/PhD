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

# detect pdf
case "$1" in
	"CTEQ3M" | "cteq66" | "MSTW2008nlo90cl" | "all")
		echo "[INFO] plotting PLB353-535"
		( $curd/PLB353-535/all.sh $1 )
		echo "[INFO] plotting PLB452-109"
		( $curd/PLB452-109/all.sh $1 )
		;;

	*)
		usage
		exit 1
		;;
esac




