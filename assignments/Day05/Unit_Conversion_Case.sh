#!/bin/bash -x
read -p "Enter a Number for Feet:" feets
echo -e "Feets= $feets ft\n"
read -p "Enter a Number for Inch:" inches
echo -e "Inches= $inches in\n"
read -p "Enter a Number for Meter:" meter
echo -e "Meters= $meter m\n"
echo -e "Enter 1 for converting Feet to Inches\n"
echo -e "Enter 2 for converting Feet to Meters\n"
echo -e "Enter 3 for converting Inches to Feet\n"
echo -e "Enter 4 for converting Meter to Feet\n"
read -p "Enter your choice:" choice
echo -e "Your Choice= $choice\n"
case $choice in
	1)
		echo -e "Feets= $feets ft\n"
		result=`units -1 "$feets feet" inch | awk '{print $2}'`
		echo -e "Result= $result in\n"
		;;
	2)
		echo -e "Feets= $feets ft\n"
		result=`units -1 "$feets feet" meters | awk '{print $2}'`
                echo -e "Result= $result m\n"
		;;
        3)
                echo -e "Inches= $inches in\n"
                result=`units -1 "$inches inch" feet | awk '{print $2}'`
                echo -e "Result= $result ft\n"
                ;;
        4)
                echo -e "Meters= $meter m\n"
                result=`units -1 "$meter meters" feet | awk '{print $2}'`
                echo -e "Result= $result ft\n"
                ;;
	*)
		echo -e "invalid choice\n"
		;;
esac
