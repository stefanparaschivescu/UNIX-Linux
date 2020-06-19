#!/bin/bash
vb=0
if [ $# -ne 1 ]
	then
	echo "introdu astfel: $0 nume_utilizator"
	exit 1
else
	lista_utiliz=`cat /etc/passwd | grep "/home" | cut -f1 -d':'`
	for utiliz in $lista_utiliz 
		do
			if [ $utiliz = $1 ] 
			then 
				nr_con=`last |grep $1 |wc -l`
				echo "Utilizatorul $1 s-a conectat de $nr_con ori"
				vb=1
			fi
		done
fi
if [ "$vb" = "0" ]
then
	echo "Utilizatorul $1 nu s-a gasit in sistmem"
fi

