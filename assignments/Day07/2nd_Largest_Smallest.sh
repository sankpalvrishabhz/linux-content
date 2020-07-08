#!/bin/bash

function Input()
{
for((i=0;i<10;i++))
do
Num=$((100+RANDOM%899))
array[((i))]=$Num
done
}

function 2ndLargest()
{
if [[ ${array[0]} -gt ${array[1]} ]]
then
   first=${array[0]}
   second=${array[1]}
else
   second=${array[0]}
   first=${array[1]}
fi
for((i=2;i<10;i++))
do
   if [[ $first -lt ${array[i]} ]]
   then
      second=$first
      first=${array[i]}
   elif [[ $second -lt ${array[i]} ]]
   then
      second=${array[i]}
   fi
done
echo -e "\nSecond largest number in the array: $second"
}

function 2ndSmallest()
{
if [[ ${array[0]} -lt ${array[1]} ]]
then
   first=${array[0]}
   second=${array[1]}
else
   second=${array[0]}
   first=${array[1]}
fi
for((i=2;i<10;i++))
do
   if [[ $first -gt ${array[i]} ]]
   then
      second=$first
      first=${array[i]}
   elif [[ $second -gt ${array[i]} ]]
   then
      second=${array[i]}
   fi
done
echo -e "\nSecond Smallest number in the array: $second"
}
Input
echo -e "\nArray of 10 Random 3-digits number :\n${array[@]}"
2ndLargest
2ndSmallest

