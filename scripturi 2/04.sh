if [ $# -ne 3 ]
	then
	echo " Introdu $0 linie_start linie_stop fisier"
	exit 1
else
	nr=`cat $3 |wc -l`
	if [ $2 -le $nr ]
		then
		i=$1
			while [ $i -le $2 ]
			do
				linie=`head -$i $3 |tail -1`
				echo "$linie"
				i=`expr $i + 1`
			done
	fi
fi
