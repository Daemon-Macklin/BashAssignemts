#!/bin/bash


#Assignment 2
#Palindrome checker

echo "Please input your string"
read str
letters=[]
for (( i = 0; i < ${#str}; i++ )); do
	letters[i]=${str:i:1}
done

revLetter=[]
j=0
for (( i = ((${#str} - 1)); i >= 0; i-- )); do
	revLetter[j]=${letters[i]}
	((++j))
done

isPalindrome=True
for (( i = 0; i < ${#str}; i++ )); do
	if ! [ ${letters[$i]} = ${revLetter[$i]} ] ; then
		isPalindrome=False
		break
	fi
done

if [ $isPalindrome = True ]; then
	echo "The word is a Palindrome"
else
	echo "The word is not a Palindrome"
fi