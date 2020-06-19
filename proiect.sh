#!/bin/bash
cateFisiere=0
vb=0

if [ $# -eq 0 ]
then
        echo "Introduceti o cale in linia de comanda astfel: $0 cale(/home/nume_user/director/director ...)"
else

	for director in `find /home/$USER -type d`
		do
			if [ $director = $1 ]
			then 
				echo "Calea introdusa este $director"
				vb=1
			fi
		done

	if [ $vb -eq 0 ]
	then
		echo "Calea introdusa nu exista, incercati din nou astfel: $0 cale (/home/nume_user/director/director ..)"
		exit 1
	fi

	echo "Introduceti numele dorit al arhivei"
	read numeleArhivei

	for f in `find $@ -maxdepth 1 -type f`
	do
		cateFisiere=`expr $cateFisiere + 1`
	done
	echo "Numarul de fisiere arhivate este:" $cateFisiere

	cd $@
	zip -r "$numeleArhivei.zip" `find . -maxdepth 1 -type f` 
fi
