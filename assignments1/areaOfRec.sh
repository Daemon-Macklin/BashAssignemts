#!/bin/bash

#Assignment 1
#Daemon Macklin
#Area of a rectangle

inputA=0
inputB=0
validA=$false
validB=$false

echo "This progam will find the area of a rectangle given two sides"
#Take user input for first number and make sure it is valid
re='^[0-9]+$'
echo "What is your first side?"
while [ !validA ] 
do
	read a
	if ! [[ $a =~ $re ]] ; then
	 echo "Invalid Input"
 	else
 	 validA=$true
 	 inputA=$a
 	 break
 	fi
done

#Take user input for second number and make sure it is valid
echo "What is your second side?"
while [ !validA ] 
do
	read b
	if ! [[ $b =~ $re ]] ; then
	 echo "Invalid Input"
 	else
 	 validB=$true
 	 inputB=$b
 	 break
 	fi
done

#Multiplying two sides to get area
area=$(($inputA * $inputB))

echo "Area of the rectangle is -> $area"