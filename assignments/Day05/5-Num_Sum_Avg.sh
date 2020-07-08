#!/bin/bash -x
sum=0
for loop in {1..5}
do
	num=$((10+RANDOM%89))
	echo "$num"
	sum=$(($sum+$num))
done
echo "Sum= $sum"
echo Average:
echo "$sum/5" | bc -l
