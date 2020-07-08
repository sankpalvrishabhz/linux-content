#!/bin/bash -x
read -p "Enter a Value for a :" a
read -p "Enter a Value for b :" b
read -p "Enter a Value for c :" c
first=$(( $a + $b * $c ))
echo -e "\nResult of 1st arrithmatic operation: $first"
second=$(( $c + $a / $b ))
echo -e "\nResult of 1st arrithmatic operation: $second"
third=$(( $a % $b + $c ))
echo -e "\nResult of 1st arrithmatic operation: $third"
forth=$(( $a * $b + $c ))
echo -e "\nResult of 1st arrithmatic operation: $forth\n"
arr=("$first" "$second" "$third" "$forth")
min="$first"
max="$first"
for i in "${arr[@]}"
do
if [[ "$i" -gt "$max" ]]
then
max="$i"
fi
if [[ "$i" -lt "$min" ]]
then
min="$i"
fi
done
echo "Max is = $max"
echo "Min is = $min"
