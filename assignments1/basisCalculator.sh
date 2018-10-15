#!/bin/bash

#Assignment 1
#Daemon Macklin
#Basis Calculator
#Bug: If you try to divide and the result is a decimal, it will round DOWN to the nearest whole number. 

echo "Hello! What would you like to calculate"

#Delaring variables
inputA=0
inputB=0
validA=$false
validB=$false


#Take user input for first number and make sure it is valid
re='^[0-9]+$'
echo "What is your first number?"
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
echo "What is your second number?"
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

#Display menu for operator selection
echo "Which opperator whould you like?"
echo "1) Addition -> +"
echo "2) Subtraction -> -"
echo "3) Multiplication -> *"
echo "4) Division -> /"
echo "5) Modulus -> %"

#Ensure valid input for opperator selection
validSelection=$false
while [[ !validSelection ]] 
do
	read selection
	if [ $selection -ge 1 -a $selection -le 5 ] ; 
		then
		validSelection=$true
		break
	else
		echo "Invalid selection"
	fi
done

#Use case switch with user input to do correct opperator
finalValue=0
case "$selection" in
	"1")
		finalValue=$(($inputA + $inputB))
		;;
	"2")
		finalValue=$(($inputA - $inputB))
		;;
	"3")
		finalValue=$(($inputA * $inputB))
		;;
	"4")
		finalValue=$(($inputA / $inputB))
		;;
	"5")
		finalValue=$(($inputA % $inputB))
		;;
	 *)
		echo "Error"
		;;
esac

#Print final value
echo "Final value is -> $finalValue"