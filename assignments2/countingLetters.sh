#!/bin/bash


#Assignment 2
#Number of vowels in a file

#Removing case sensitivity
shopt -s nocasematch

#Getting user input for file
echo "What file do you want to look at?"
read file

#Regular expression of vowels
re='^[aeiou]+$'

#Reading contents of file into string

filecontent=$(cat $file)


#Looping though string adding each char to array
letters=[]
for (( i = 0; i < ${#filecontent}; i++ )); do
        letters[i]=${filecontent:i:1}
done

#Looping through arry checking each letter against regular expression
count=0
for (( j = 0; j < ${#letters[@]}; j++ )); do
	if [[ ${letters[j]} =~ $re ]]; then
		echo "${letters[j]} is a vowel"
		#If checking the char against the regualr expression re
		#returns true add 1 to the counter
		((++count))
	elif [[ ${letters[j]} == " " ]]; then

		#If the char is empty echo Space
		echo "Space"
	else

		#Else return it is a consonant
		echo "${letters[j]} is a consonant"
	fi
done

echo "Number of voewls in file -> $count"
