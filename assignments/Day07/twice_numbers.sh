#!/bin/bash 
echo The number tht are repeated From 0 to 100 
for (( i=1; i<=100; i++))
{
	if [[ $i%11 -eq 0 ]]
	then
		Result[i]=$i
	fi
}
echo ${Result[@]}
