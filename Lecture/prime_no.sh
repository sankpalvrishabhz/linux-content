#!/bin/bash -x
function myfunc()
{
	read -p "Enter a Number:" Number
	for ((i=2; i<=Number/2; ++i))
	do
        	if [ $((Number%i)) -eq 0 ]
	        then
			echo "it is not a prime no"
			exit
	        fi
	done
echo it is a prime no
}
myfunc
