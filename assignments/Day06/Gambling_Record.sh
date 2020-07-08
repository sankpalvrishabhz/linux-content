#!/bin/bash 
count=0
won=0
lost=0
Rupees=100
while [[ $Rupees -gt 0 && $Rupees -lt 200 ]]
do
count=$(( $count+1 ))
var=$(( RANDOM%2 ))
if [ $var -eq 1 ]
then
won=$(( $won+1 ))
Rupees=$(( $Rupees+1 ))
else
lost=$(( $lost+1 ))
Rupees=$(( $Rupees-1 ))
fi
done
echo "Number of bets : $count"
echo "Number of times won : $won"
if [ $Rupees -eq 0 ]
then
	echo Gambler loss all Money
else
	echo Gambler won $Rupees Rs
fi
