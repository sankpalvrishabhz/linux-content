#!/bin/bash -x
function myfunc()
{
	echo $1
}
var="$( myfunc $((RANDOM%2)) )"
if [ $var -eq 1 ]
then
	echo success
else
	echo failure
fi
