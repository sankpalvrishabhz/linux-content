#!/bin/bash 
valid=true
count_H=0
count_T=0
while [ $valid ]
do
	num=$((RANDOM%2))
	if [[ $num -eq 0 ]]
	then
	        echo "Heads"
		((count_H++))
	else
	        echo "Tails"
		((count_T++))
	fi
	if [[ $count_H -eq 11 ]]
	then
		echo -e "\nHeads have been placed 11 times"
		break
	fi
	if [[ $count_T -eq 11 ]]
	then
                echo -e "\nTails have been placed 11 times"
                break
        fi
done
