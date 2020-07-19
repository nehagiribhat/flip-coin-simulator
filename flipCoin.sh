#!/bin/bash -x

#variables
flip=0
total_no_of_heads=0
total_no_of_tails=0
limit=21

while [ $flip -lt $limit ]
do
	outcome=$((RANDOM%2))
	if [ $outcome -eq 1 ]
	then
		((flip++))
		total_no_of_heads=$flip
	else
		((flip++))
		total_no_of_tails=$flip
	fi
done

echo "Heads occured $total_no_of_heads times"
echo "Tails occured $total_no_of_tails times"

if [ $total_no_of_heads -eq $total_no_of_tails ]
then
	echo "It's a TIE"
	difference1=$((total_no_of_heads-total_no_of_tails))
	difference2=$((total_no_of_tails-total_no_of_heads))
	if [ $difference1 -ge 2 -o $difference2 -ge 2 ]
	then
		if [ $total_no_of_heads -gt $total_no_of_tails ]
		then
        		difference=$((total_no_of_heads-total_no_of_tails))
        		echo "Heads Wins by $difference"
		else
        		difference=$((total_no_of_tails-total_no_of_heads))
        		echo "Tails Wins by $difference"
		fi
		((limit++))
	else
		echo "Minimum Difference NOT Reached"
		break
	fi
else
	echo "No TIE Occured"
fi
