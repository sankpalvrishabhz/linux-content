#!/bin/bash -x
min=999
max=100
for number in {1..5}
do
	num=$((100+RANDOM%899))
	echo "$num"
	if [ $num -lt $min ]
	then
		min=$num
	fi
	if [ $num -gt $max ]
	then
		max=$num 
	fi
done
echo "Maximum number = $max"
echo "Minimum number = $min"
