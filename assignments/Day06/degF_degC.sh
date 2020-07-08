#!/bin/bash 
function celsius()
{
	read -p "Enter the temperature for degree Celsius:" c
	degF=$(((c*9/5)+32))
	echo "degree Fahrenheit: $degF F"
	if [ $degF -lt 32 ]
	then
		echo The Degree is below Freezing Point of Water
	elif [ $degF -gt 212 ]
	then
		echo The Degree is above Boiling Point of Water
	else
		echo It is Between the Freezing and Boiling Point of Water
	fi
}
function fahrenheit()
{
	read -p "Enter the temperature for degree Fahrenheit:" f
        degC=$(((f-32)*5/9))
	echo "degree Celsius: $degC C"
	if [ $degC -lt 0 ]
        then
                echo The Degree is below Freezing Point of Water
        elif [[ $degC -gt 100 ]]
	then
                echo The Degree is above Boiling Point of Water
        else
                echo It is Between the Freezing and Boiling Point of Water
        fi
}
echo -e "\nEnter 1 for calculating degree Fahrenheit from degree Celsius\nEnter 2 for calculating degree Celsius from degree Fahrenheit"
read -p "Enter your Choice:" choice
case $choice in
	1)
		celsius
		;;
	2)
		fahrenheit
		;;
	*)
		echo invalid
		;;
esac
