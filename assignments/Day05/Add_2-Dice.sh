#!/bin/bash -x
echo -e "\n1st number\n"
first=$((1+RANDOM%6))
echo "-> $first"
echo -e "\n2nd number\n"
second=$((1+RANDOM%6))
echo "-> $second"
echo -e "\nAddition of above 2 numbers\n"
echo $(( $first+$second ))
