#!/bin/bash


#Assignment 2
#Number of vowels in a file

echo "What file do you want to look at?"
read file
re='(?<!\S)[^aeiou]'

fileconent=(cat $file)
count=0
for (( i = 0; i < ${#filecontent}; i++ )); do
	if ! [[ ${filecontent[i]} =~ re ]]; then
		((++count))
	fi
done

echo $count
echo "This is the easiest thing of my life #Winner"
