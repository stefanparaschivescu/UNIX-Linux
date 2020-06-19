#!/bin/bash
if [ $# -ne 2 ]
then
	echo "Pentru executie completati linia de comanda astfel: $0 k calea"
	exit 1
else
	if [ ! -d ~/1022/$2 ] #eu am intrebat pe grup care e diferenta dintre tilda si punct si mi-am dat seama ca trebuia sa mentionez si directorul in care sunt directoarele lab
		then
		echo "Introduceti un director pentru a se realiza cautarea"
		exit 1
	fi
fi
case $1 in
	[^0-9]) vb=0;;
	[0-9]) vb=1;;
esac
if [ "$vb" = "0" ]
then
echo "Nu ati introdus un numar intreg!"
exit 1 
fi

for file in `find ~/1022/$2 -name "*.sh" -type f`
do
	nr_aparitii=`grep -c "echo" $file`
	if [ $nr_aparitii -gt $1 ]
		then
			echo $file
	fi
done
