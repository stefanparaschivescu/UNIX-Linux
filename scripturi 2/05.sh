
if [ $# -ne 3 ]
	then
	echo " Introdu $0 linie_start linie_stop fisier"
	exit 1
else
	if [ ! -f ./$3 ]
	then
		echo "Introduceti un fisier valid pentru a se realiza cautarea"
                exit 1
        fi
	case $1 in
        [^0-9]) vb=0;;
        [0-9]) vb=1;;
	esac
	if [ "$vb" = "0" ]
	then
		echo "Nu ati introdus primul argument un nr intreg!"
		exit 1 
	fi
	case $2 in
        [^0-9]) vb=0;;
        [0-9]) vb=1;;
	esac
	if [ "$vb" = "0" ]
	then
		echo "Nu ati introdus al doilea argument un nr intreg!"
		exit 1 
	fi
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
