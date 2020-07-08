#!/bin/bash 
read -p "Enter a limit of power" number
echo "power limit: $number"
for(( i=1; i<=((2**number))/2; i++))
do
	result=$((2*$i))
	echo $result
done
