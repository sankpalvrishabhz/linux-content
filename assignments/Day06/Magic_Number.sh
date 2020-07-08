#!/bin/bash 
read -p "Enter a Number Between 1 to 100:" Number
if [[ $Number -ge 1 && $Number -le 100 ]]
then
	while [ true ]
	do
		if [[ $Number%9 -eq 1 ]]
		then
			echo "$Number is a Magic Number "
			break
		else
			echo "$Number is Not a Magic Number "
			break
		fi
	done
else
	echo invalid
	break
fi
