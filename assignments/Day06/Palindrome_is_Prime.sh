#!/bin/bash
read -p "Enter number to check prime or not : " Number
count=0
function Prime()
{
for((i=2;i<=Number/2;i++))
do
if [ $((Number%i)) -eq 0 ]
then
count=$(( $count+1 ))
fi
done
if [ $count -eq 0 ]
then
echo -e "$Number is Prime Number\n"
else
echo -e "$Number is Not a prime number\n"
fi
}
Prime

read -p "Enter number to check palindrome or not : " Num
temp=$Num
reverse=0
Number1=0
function Palindrome()
{
while [ $Num -gt 0 ]
do
Number1=$(( $Num%10 ))
reverse=$(( $reverse*10+$Number1 ))
Num=$(( $Num/10 ))
done
echo "Reverse Number : $reverse"
if [[ $temp -eq $reverse ]]
then
echo -e "\nNumber is palindrome"
echo -e "\nChecking Palindrome number is also prime or not\n"
Number=$reverse
Prime
else
echo -e "Number is not palindrome\n"
fi
}
Palindrome
