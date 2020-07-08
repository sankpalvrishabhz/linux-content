#!/bin/bash -x
read -p "Enter a num 1 or 10's Divisible:" Number
if [[ "$Number" -eq '1' ]]
then
	echo "unit"
elif [[ "$Number" -eq '10' ]]
then
	echo "Tens"
elif [[ "$Number" -eq '100' ]]
then
	echo "Hundreds"
elif [[ "$Number" -eq '1000' ]]
then
	echo "Thousands"
elif [[ "$Number" -eq '10000' ]]
then
	echo "Ten Thousands"
elif [[ "$Number" -eq '100000' ]]
then
	echo "One Lakh"
else
	echo "invalid" 
fi
