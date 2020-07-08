#!/bin/bash -x
read -p "Enter day :" day
read -p "Enter month : " month
if [[ '20' -le "$day" && "$day" -le '31' && "$month" -eq '3' || '1' -le "$day" && "$day" -le '30' && "$month" -eq '4' || '1' -le "$day" && "$day" -le '31' && "$month" -eq '5' || '1' -le "$day" && "$day" -le '20' && "$month" -eq '6' ]]
then
echo True
else
echo False
fi
