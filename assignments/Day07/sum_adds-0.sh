#!/bin/bash 
read -p "enter size of the array:" n
echo "enter elements"
for (( i=0; i<n; i++ ))
do
	read a[i]
done
echo "Entered Elements: ${a[@]}"
for (( j=0; j<n; j++ ))
do
	for (( k=0; k<n; k++ ))
	do
		for (( l=0; l<n; l++ ))
		do
			result=$(( ${a[j]}+${a[k]}+${a[l]} ))
			if [ $result -eq 0 ]
			then
				echo -e "\n( ${a[j]} ) + ( ${a[k]} ) + ( ${a[l]} ) =0\n"
			fi
		done
	done
done
