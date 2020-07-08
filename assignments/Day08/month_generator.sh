#!/bin/bash 
declare -A month
declare -A a
for i in {1..50}
do
	month[$i]=$((1+RANDOM%12))
done
echo -e "\nBirthday Months:\n" ${month[@]}
for i in {1..50}
do
	case ${month[$i]} in
		1)
			a[1]=$((1+first_counter++))
			;;
                2)
                        a[2]=$((1+second_counter++))
                        ;;
                3)
                        a[3]=$((1+third_counter++))
                        ;;
                4)
                        a[4]=$((1+forth_counter++))
                        ;;
                5)
                        a[5]=$((1+fifth_counter++))
                        ;;
                6)
                        a[6]=$((1+sixth_counter++))
                        ;;
                7)
                        a[7]=$((1+seventh_counter++))
                        ;;
                8)
                        a[8]=$((1+eigth_counter++))
                        ;;
                9)
                        a[9]=$((1+ningth_counter++))
                        ;;
                10)
                        a[10]=$((1+tenth_counter++))
                        ;;
                11)
                        a[11]=$((1+eleventh_counter++))
                        ;;
                12)
                        a[12]=$((1+twelvethcounter++))
                        ;;
esac
done
echo "Individuals Having Same Birthday Month:"
for i in {1..12}
do
echo ${a[$i]} "individuals have birthdays in $i th month"
done
