#!/bin/bash 
function Palindrome()
{
temp=$Number
reverse=0
Number1=0
while [ $Number -gt 0 ]
do
        Number1=$(( $Number%10 ))
        reverse=$(( $reverse*10+$Number1 ))
        Number=$(( $Number/10 ))
done
echo "Reverse Number : $reverse"
if [[ $temp -eq $reverse ]]
then
        echo -e "$temp is palindrome\n"
else
        echo -e "$temp is not palindrome\n"
fi
}

read -p "Enter number1 : " Number
Palindrome
read -p "Enter number2 : " Number
Palindrome
