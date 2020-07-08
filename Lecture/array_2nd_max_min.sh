#!/bin/bash 
for (( k=1; k<=10; k++ ))
do
	        Number[k]=$((RANDOM%10))
done
echo -n "elements= ${Number[*]} "
#for (( i=Number[i]; i<=10; i++))
#do
#	for (( j=i+1; j<=10; i++ ))
#	do
#		done
#done
#echo "${Number[*]} "
