#!/bin/bash


#Assignment 3
#Age checker

isOver () {
	if [ $1 -ge 21 ]; then
		echo "Adult"
	else
		echo "Not an Adult"
	fi

}

inputAge(){
	re='^[0-9]+$'
	echo "What is your age"
	while [ !validA ]
		do
		read a
		if ! [[ $a =~ $re ]] ; then
	 		echo "Please input number"
		elif [[ $a -le 0 ]]; then
	 		echo "Please input number greater than 0"
 		else
 	 		validA=$true
 	 		inputA=$a
 	 		break
 		fi
	done
	isOver $inputA
}

while [[ 1 ]]
	do
		continue=True
		while [[ 1 ]]; do
			echo "Input age?(y/n)"
			read option
			if [[ $option == "y" || $option == "Y" ]]; then
				continue=True
				break
			elif [[ $option == "n" || $option == "N" ]]; then
				continue=False
				break
			else
				echo "Please input y or n"
			fi
		done

		if [[ $continue == True ]]; then
			inputAge
		else
			break
		fi
	done
