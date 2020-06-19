#!/bin/bash
a=1
if [ $# -lt 1 ]
then
        echo "Introduceti un singur argument in linia de comanda astfel: $0 argument(numar intreg)"
else
	if [ $1 -eq 0 ]
	then
	echo "Introduceti un numar mai mare ca 0"
	exit
	else
        while [ $a -lt $1 ]
	do
	echo "$a $a $a $a $a"
	a=`expr $a + 2`	
	done
	fi
fi

