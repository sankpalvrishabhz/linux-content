#!/bin/bash 
read -p "Enter Number : " Number
for (( i=2; i<Number; i++ ))
do
	for (( j=0; j<=i; j++))
        do
		if [[ $j%$i -eq 0 ]]
		then
			arr[j]=$i
		fi
		Number=$(( $Number/$i ))
        done
done
echo ${arr[@]}
if [[ $Number -gt 2 ]]
then
echo "$Number"
fi
