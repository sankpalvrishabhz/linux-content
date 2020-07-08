cat ../data.csv
echo -e "\n i) Print EmployeeName and TotalPay who has BasePay greater than 10000\n"
cat ../data.csv | awk '$4>10000 { print $2 " " $7}'
echo -e "\n ii) What is the aggregate TotalPay of Employees whose JobTitle is ‘CAPTAIN’\n"
cat ../data.csv | awk '{IGNORECASE=1} $3=="captain" {sum+=$7} END{print sum}'
echo -e "\n iii) Print JobTitle and Overtimepay who has Overtimepay is between 7000 and 10000\n"
cat ../data.csv | awk '$5>7000 && $5<10000{ print $3 " " $5}'
echo -e "\n iv)	Print average BasePay\n"
cat ../data.csv | awk ' {sum+=$4} END{ print sum/NR}'
