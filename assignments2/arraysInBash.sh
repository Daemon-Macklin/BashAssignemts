#!/bin/bash


Linx[0]='Fedora'
Linx[1]='Debian'
Linx[2]='Ubuntu'
Linx[3]='Red Hat'

#Declaring an array
declare -a grades=(52,55,78,94,44)

#Acessing array 
echo ${Linx[1]}
echo ${Linx[2]}
echo "-----------------------------------"
#Use @ to get all elements
echo ${Linx[@]}
echo "-----------------------------------"
echo ${grades[@]}

echo "-----------------------------------"
val1=5
val2=6

for i in `seq 1 10`
do 
  array[i]=$((val1+val2))
  ((++val1))
done

echo ${array[@]}
echo "-----------------------------------"
grades=()
i=0

while [[ i -lt 6 ]]; do
	echo "Enter Grade"
	read io
	grades[i]=$io
	((++i))
done

echo ${grades[@]}