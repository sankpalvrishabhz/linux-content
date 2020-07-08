#!/bin/bash -x

for (( counter=1; counter<=10; counter++))
do
	Number[((counter))]=$((RANDOM))
done
echo "${Number[*]} "
