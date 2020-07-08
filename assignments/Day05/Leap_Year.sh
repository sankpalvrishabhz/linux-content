#!/bin/bash -x
read -p "Enter a Year :" year
if [[ year%4 -eq 0 && year%100 -ne 0 || year%400 -eq 0 ]]
then
echo "is a Leap Year"
else
echo "Not Leap Year"
fi
