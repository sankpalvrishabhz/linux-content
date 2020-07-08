#!/bin/bash 
declare -A dice
declare -A die
valid=true
while [[ $valid ]]
do
result=`echo $((1+RANDOM%6))`
case $result in
	1)
		dice[1]=$((count_one++))
		if [[ $count_one -eq 11 ]]
		then
			break
		fi
		;;
	2)
                dice[2]=$((count_two++))
		if [[ $count_two -eq 11 ]]
                then
                        break
                fi
		;;
	3)
		dice[3]=$((count_three++))
		if [[ $count_three -eq 11 ]]
                then
                        break
                fi
		;;
	4)
                dice[4]=$((count_four++))
                if [[ $count_four -eq 11 ]]
                then
                        break
                fi
                ;;
	5)
                dice[5]=$((count_five++))
                if [[ $count_five -eq 11 ]]
                then
                        break
                fi
                ;;
	6)
                dice[6]=$((count_six++))
                if [[ $count_six -eq 11 ]]
                then
                        break
                fi
                ;;
esac
done
echo ${!dice[@]}
echo ${dice[@]}
Min_count=${dice[1]}
min=7
Max_count=${dice[6]}
max=0
for (( i=2; i<=6; i++))
do
	if [[ ${dice[$i]} -le $Min_count ]]
	then
		min=$i
		Min_count=${dice[$i]}
	fi
        if [[ ${dice[$i]} -ge $Max_count ]]
        then
                max=$i
                Max_count=${dice[$i]}
        fi
done
echo $min "is occurs minimum times"
echo $max "is occurs maximum times"
