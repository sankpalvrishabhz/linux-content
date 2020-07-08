#!/bin/bash -x
read -p 'Enter weekly Number consider 1 as sunday:' Number
if [ $Number -eq 1 ]
then
echo Sunday
elif [ $Number -eq 2 ]
then
echo Monday
elif [ $Number -eq 3 ]
then
echo Tuesday
elif [ $Number -eq 4 ]
then
echo Wednesday
elif [ $Number -eq 5 ]
then
echo Thursday
elif [ $Number -eq 6 ]
then
echo Friday
elif [ $Number -eq 7 ]
then
echo saturday
fi
