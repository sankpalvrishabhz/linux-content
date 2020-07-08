#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHrs=20
empCheck=$((RANDOM%3))
case $empCheck in
	$isFullTime)
		empHrs=8
		;;
	$isParttime)
		empHrs=4
		;;
	*)
		empHrs=0
		;;
esac
salary=$(($empHrs*$empRatePerHrs))
echo "salary=$salary"
