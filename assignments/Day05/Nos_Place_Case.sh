#!/bin/bash -x
read -p "Enter 10's Number :" Number
case "$Number" in
	1)
		echo "unit"
		;;
	10)
		echo "Ten"
		;;
	100)
		echo "Hundred"
		;;
	1000)
		echo "Thousand"
		;;
	10000)
		echo "Ten Thousand"
		;;
	100000)
		echo "Lakh"
		;;
	*)
		echo "Invalid Number"
		;;
esac
