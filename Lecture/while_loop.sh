valid=true
count=1
while [ -$valid ]
do
	echo $count
	if [ $count -eq 4 ]
	then
		break
	else
		((count++))
	fi
done
