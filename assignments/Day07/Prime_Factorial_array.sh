#!/bin/bash 
counter=0
read -p "Enter Number : " Number
for (( i=2; i<=Number; i++ ))
do
        while [[ $Number%$i -eq 0 ]]
        do
                arr[((counter++))]=$i
                Number=$(($Number/$i))
        done
done
echo ${arr[@]}
if [[ $Number -gt 2 ]]
then
echo "$Number"
fi
