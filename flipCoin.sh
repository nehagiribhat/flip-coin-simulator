#!/bin/bash -x

#variables
flip=0
total_no_of_heads=0
total_no_of_tails=0

read -p "Enter number of times to flip: " limit
while [ $flip -lt $limit ]
do
        outcome=$((RANDOM%2))
        if [ $outcome -eq 1 ]
        then
                ((total_no_of_heads++))
        else
                ((total_no_of_tails++))
        fi
        ((flip++))
done

echo "Heads occured $total_no_of_heads times"
echo "Tails occured $total_no_of_tails times"

if [ $total_no_of_heads -eq $total_no_of_tails ]
then
	echo "It's a TIE"
else
	if [ $total_no_of_heads -eq $total_no_of_tails ]
	then
		difference=$((total_no_of_heads-total_no_of_tails))
		echo "Heads Wins by $difference"
	else
		difference=$((total_no_of_tails-total_no_of_heads))
                echo "Tails Wins by $difference"
	fi
fi
