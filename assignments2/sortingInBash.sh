#!/bin/bash


#Assignment 2
#Taking in 10 intages and sorting them

numbers=[]
i=0
while [[ i -lt 10 ]]; do
valid=$false
#While loop to ensure the input is valid
#Regular expression used to check if input is number
re='^[0-9]+$'
while [ !$valid ]
do
#Read user input
echo "Please enter your number -> "
read num
#Check if input is number
 if ! [[ $num =~ $re ]] ; then
	 echo "Invalid Input"
 else
 	 numbers[i]=$num
 	 break
 fi
done
	((++i))
done

#Using sort command to sort array
# -n means to sort numerically
IFS=$'\n' sorted=($(sort -n <<<"${numbers[*]}"))
echo "Ascending" "${sorted[@]}"

#-r means to reverse the sort
IFS=$'\n' sorted=($(sort -r -n <<<"${numbers[*]}"))
echo "Desending" "${sorted[@]}"
