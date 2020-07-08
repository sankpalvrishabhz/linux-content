#!/bin/bash 
read -p "Enter a limit of power:" number
echo "power limit: $number"
result=0
limit=$((2**number))
i=1
while [ $result -lt $limit ]
do
        result=$((2*$i))
        echo -n "$result	"
	if [[ $result -eq 256 ]]
	then
		break
	fi
	((i++))
done
