#!/bin/bash


#Assignment 3
#Displaying Year

outPutYear () {

	if [ $1 -lt 10 ]; then
		echo $1
	else
		echo $(($1 % 10))
		outPutYear $(($1 / 10))
	fi
}

echo "What year is it"
read year
outPutYear year