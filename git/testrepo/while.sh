#!/bin/bash

read -p "Please enter number for which you need complete table" number 
read -p "Please enter the lengt upto which you need table" length
start=1
#echo "after start"
if [[ $number -gt 0 && $length -gt 0 ]]
then
#echo "After if statement"
while [[ $start -le $length ]]
do 
#	echo "after while condition"

	echo "$number ${start}s are $((number * start))"
        ((start++ ))
done


fi	






