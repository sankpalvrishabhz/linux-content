#!/bin/bash 
echo "Enter the Starting and the Ending Point for Finding Prime Number"
read -p "Enter Start : " start
read -p "Enter end : " end
echo "Prime numbers between $start and $end : "
for (( i=start; i<=end; i++ ))
do
	count=0
        for (( j=1; j<=i; j++ ))
        do
                if [[ $i%$j -eq 0 ]]
                then
                        count=$(( $count+1 ))
                fi
        done
        if [ $count -eq 2 ]
        then
                echo -n "$i	"
        fi

done
