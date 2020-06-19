#!/bin/bash
nr="1 2 3 4 5 6 7"
for n in $nr
do
   r=`expr $n % 2`
   if [ $r -eq 0 ]
   then
	echo "$n este numar par"
	continue
   fi
   echo "$n este numar impar"
done
