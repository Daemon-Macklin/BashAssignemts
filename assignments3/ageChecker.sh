#!/bin/bash


#Assignment 3
#Age checker

isOver () {
	if [ $1 -ge 21 ]; then
		echo "Adult"
	else
		echo "Not an Adult"
	fi

}


re='^[0-9]+$'
echo "What is your age"
while [ !validA ] 
do
	read a
	if ! [[ $a =~ $re ]] ; then
	 echo "Please input number"
	elif [[ $a -le 0 ]]; then
	 echo "Please input number greater than 0"
 	else
 	 validA=$true
 	 inputA=$a
 	 break
 	fi
done

isOver $inputA