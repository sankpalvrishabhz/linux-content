#!/bin/bash 

read -p "Enter n :" n
echo -n "Hn = "
sum=0
for (( i=1;i<=n;i++ ))
do
	if [ "$i" -le "$n" ]
	then
		sum=`echo "1/$i+$sum" | bc -l`
		echo -n " 1/$i "
	fi
	if [ "$i" -lt "$n" ]
	then
		echo -n " + "
	fi
done
echo -e "\n nth Harmonic number:"
echo "$sum"
