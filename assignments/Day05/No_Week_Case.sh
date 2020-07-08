#!/bin/bash -x
read -p 'Enter weekly Number consider 1 as sunday:' Number
case $Number in
        1)
		echo Sunday
		;;
        2)
		echo Monday
                ;;
        3)
		echo Tuesday
                ;;
        4)
		echo Wednesday
                ;;
        5)
		echo Thursday
                ;;
        6)
		echo Friday
                ;;
        7)
		echo saturday
		;;
        *)
                echo invalid
                ;;
esac
