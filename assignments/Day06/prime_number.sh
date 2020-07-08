#!/bin/bash -x
read -p "Enter a Number:" Number
for (( i=2; i<=Number/2; ++i ))
do
	if [[ $Number%$i -eq 0 ]]
	then
		count=1
		break
	fi
done
if [[ $count -eq 0 ]]
then
	echo It is a Prime Number
else
	echo It is not a Prime NUmber
fi
