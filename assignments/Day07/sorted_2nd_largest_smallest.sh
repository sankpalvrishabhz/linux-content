
#!/bin/bash

function Input()
{
for((i=0;i<n;i++))
do
Num=$((100+RANDOM%899))
arr[i]=$Num
done
}

read -p "Enter size of array : " n
Input
array=($(echo ${arr[@]} | tr " " "\n" | sort -n))
echo -e "\nEntered Elements: ${arr[@]}"
echo -e "\nSorted Elements: ${array[@]}"
echo -e "\nSecond smallest number in the array: ${array[1]}"
echo -e "\nSecond largest number in the array: ${array[N-2]}"


