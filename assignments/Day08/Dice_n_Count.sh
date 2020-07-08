#!/bin/bash
declare -A dice
value=0
dice[one]=0
dice[two]=0
dice[three]=0
dice[four]=0
dice[five]=0
dice[six]=0
while [ true ]
do
	result=$((1+RANDOM%6))
	
