isFullTime=1
isPartTime=2
hourRate=100
for (( counter =1; counter<=20; counter++))
do
randomCheck=`echo $(( RANDOM % 3))`
if [ $randomCheck -eq $isFullTime ]
then
        workingHours=10
        echo "FullTime Employee"
        salary=$(( $hourRate*$workingHours ))
elif [ $randomCheck -eq $isPartTime ]
then
        workingHours=5
        echo "PartTime Employee"
        salary=$(( $hourRate*$workingHours ))
else
        echo "employee absent"
fi
done
echo $salary
