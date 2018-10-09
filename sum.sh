#!/bin/bash

#Assignment 1
#Sum of the numbers 1 -> n
#Where n is a number inputed by the user

echo "Hello! What number would you like to sum?"

valid=$false
#While loop to ensure the input is valid
#Regular expression used to check if input is number
re='^[0-9]+$'
while [ !$valid ]
do
#Read user input
echo "Please enter a number"
read n
#Check if input is number
 if ! [[ $n =~ $re ]] ; then
	 echo "Invalid Input"
 else
	 echo "Summing numbers 1 -> $n"
	 #For looping though numbers 1 to the input adding them all up
	 sum=0
	 for i in `seq 1 $n`;
	 do
	  	 sum=$(($sum + $i))
	 done
	 echo "The total sum -> $sum"
 	 break
 fi
done

echo "All done :)"


