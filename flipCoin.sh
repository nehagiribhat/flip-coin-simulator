#!/bin/bash -x

outcome=$((RANDOM%2))

if [ $outcome -eq 1 ]
then
	echo "Heads Won"
else
	echo "Tails won"
fi
