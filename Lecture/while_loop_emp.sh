isFullTime=1
isPartTime=2
hourRate=100
valid=true
count=1
while [ -$valid ]
do
	randomCheck=`echo $(( RANDOM % 3))`
        if [ $count -eq 50 ]
        then
                break
	elif [ $randomCheck -eq $isFullTime ]
	then
	        workingHours=10
	        echo -e "\nFullTime Employee"
	        salary=$(( $hourRate*$workingHours ))
		echo -e "\n$salary\n"
		((count++))
	elif [ $randomCheck -eq $isPartTime ]
	then
	        workingHours=5
	        echo -e "\nPartTime Employee"
	        salary=$(( $hourRate*$workingHours ))
                echo -e "\n$salary\n"
		((count++))
	else
	        echo -e "\nemployee absent"
		((count++))
	fi
done
