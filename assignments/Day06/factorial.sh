#!/bin/bash 
read -p "Enter a Number For calculating Factorial: " Fact
result=1

for (( i=1; i<=Fact; i++ ))
do
	result=$(( $i*$result ))
done
echo $result
