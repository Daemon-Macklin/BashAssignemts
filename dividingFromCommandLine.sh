#!/bin/bash

#Assignment 1
#Daemon Macklin
#Dividing two numbers taken from command line

#Taking inputs from arguments from command line
num1=$1
num2=$2
final=0

#Ensuring numbers are vaid
if [ $num1 -lt 1 -o $num2 -lt 1 ] ; then
	echo "Please enter valid numbers"
else 
	#Finding out which number is bigger then doing the suitable division
	if [[ $num1 -gt $num2 ]] ; then
		final="$(($num1 / $num2))"
	elif [[ $num2 -gt $num1 ]]; then
		final="$(($num2 / $num1))"
	else
		final="$(($num1 / $num2))"
	fi
	echo "The result is -> $final"
fi
