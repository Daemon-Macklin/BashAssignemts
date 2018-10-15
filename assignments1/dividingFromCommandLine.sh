#!/bin/bash

#Assignment 1
#Daemon Macklin
#Dividing two numbers taken from command line

final=0
inputA=0
inputB=0
validA=false
validB=false
echo "This progam will take two numbers and divide the smaller one divided by the bigger one"
#Take user input for first number and make sure it is valid
re='^[0-9]+$'
echo "What is your first number?"
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

#Take user input for second number and make sure it is valid
echo "What is your second number?"
while [ !validA ] 
do
	read b
	if ! [[ $b =~ $re ]] ; then
	 echo "Please input number"
	elif [[ $b -le 0 ]]; then
	 echo "Please input number greater than 0"
 	else
 	 validB=$true
 	 inputB=$b
 	 break
 	fi
done


#Finding out which number is bigger then doing the suitable division
if [[ $inputA -gt $inputB ]] ; then
 final="$(($inputA / $inputB))"
elif [[ $inputB -gt $inputA ]]; then
 final="$(($inputB / $inputA))"
else
 final="$(($inputA / $inputB))"
fi
echo "The result is -> $final"

