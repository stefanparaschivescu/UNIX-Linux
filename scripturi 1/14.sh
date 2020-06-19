for fis in ` find . -perm 777 -type f`
do
	echo $fis >> tema2
	cat $fis >> tema2
done


