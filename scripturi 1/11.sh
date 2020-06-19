#!/bin/bash
a=0
if [ $# -lt 1 ]
then
        echo "Introduceti un singur argument in linia de comanda astfel: $0 argument(numar intreg)"
else
        while [ $a -lt 11 ]
	do
		b=`expr $a \* $1`
		echo "$1 * $a = $b"
		a=`expr $a + 1`
	done
fi

