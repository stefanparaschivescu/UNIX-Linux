#!/bin/bash
PS3="Intorduceti un numar intre 1 si 3: "
select optiune in Matematica Fizica Informatica
do
	if [ -n "$optiune" ]
		then
			echo "Materia preferata este $optiune"
		else
			exit
		fi
done
