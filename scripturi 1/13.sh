#!/bin/bash
cateFisiere=0
cateDirectoare=-1 ##Se ia de la -1, deoarece se numara si directorul in care suntem deja

for f in `find $pwd -type f`
do
	cateFisiere=`expr $cateFisiere + 1`
done

for f in `find $pwd -type d`
do
        cateDirectoare=`expr $cateDirectoare + 1`
done

echo "Numarul de fisiere este:" $cateFisiere
echo "Numarul de directoare este:" $cateDirectoare
