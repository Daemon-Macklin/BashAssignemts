#!/bin/bash


#Assignment 2
#Storing grades and preforming calculations on them

grades=[]
i=0
while [[ i -lt 12 ]]; do
valid=$false
#While loop to ensure the input is valid
#Regular expression used to check if input is number
re='^[0-9]+$'
while [ !$valid ]
do
#Read user input
echo "Please enter your grade -> "
read grade
#Check if input is number
 if ! [[ $grade =~ $re ]] ; then
	 echo "Invalid Input"
 elif [[ $grade -gt 100 ]]; then
 	 echo "Grade can't be larger than 100"
 else
 	 grades[i]=$grade
 	 break
 fi
done
	((++i))
done

#Finding averages
sum1=0
for (( i = 0; i < 6; i++ )); do
	sum1=$(($sum1 + ${grades[i]}))
done
sem1Avg=$(($sum1 / 6))

sum2=0
for (( i = 6; i < 12; i++ )); do
	sum2=$(($sum2 + ${grades[$i]}))
done
sem2Avg=$(($sum2 / 6))

sum3=0
for (( i = 0; i < 12; i++ )); do
	sum3=$(($sum3 + ${grades[$i]}))
done
overallAvg=$(($sum3 / 12))

#Finding lowest and highest grades
lowest=101
highest=0
for (( i = 0; i < 12; i++ )); do
	if [[ ${grades[$i]} -ge $highest ]]; then
		highest=${grades[$i]}
	fi
	if [[ ${grades[$i]} -le $lowest ]]; then
		lowest=${grades[$i]}
	fi
done

#Displaying grades and stats to user
echo ${grades[@]}
echo "Semester 1 average -> $sem1Avg"
echo "Semester 2 average -> $sem2Avg"
echo "Over all average -> $overallAvg"
echo "Highest grade -> $highest"
echo "Lowest grade -> $lowest"