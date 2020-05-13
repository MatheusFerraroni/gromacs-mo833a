cd conf

gro='../../../build/bin/gmx_mpi'

res=''
total=0


if [ "$1" != "" ]; then
	res="$res""$1"
	total=1
fi

if [ "$2" != "" ]; then
	res="$res,""$2"
	total=2
fi

if [ "$3" != "" ]; then
	res="$res,""$3"
	total=3
fi

if [ "$4" != "" ]; then
	res="$res,""$4"
	total=4
fi

if [ "$5" != "" ]; then
	res="$res,""$5"
	total=5
fi

if [ "$6" != "" ]; then
	res="$res,""$6"
	total=6
fi

if [ "$7" != "" ]; then
	res="$res,""$7"
	total=7
fi

if [ "$8" != "" ]; then
	res="$res,""$8"
	total=8
fi


res="mpirun -np $total --host ""$res"" $gro mdrun -v -deffnm em 1> gmx.out 2> gmx.err"

$res