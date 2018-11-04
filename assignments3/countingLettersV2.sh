#!/bin/bash

#Assignment 3
#Counting number of vowels in file

main (){
  #Removing case sensitivity
  shopt -s nocasematch
  while [[ 1 ]]; do
    echo "Read file? (y/n)"
    read option
    if [[ $option == "y" || $option == "Y" ]]; then
      continue=True
    elif [[ $option == "n" || $option == "N" ]]; then
      continue=False
    else
      echo "Please input y or n"
    fi

    if [[ $continue == True ]]; then
      openFile
    else
      echo "Exiting...."
      exit
    fi
  done
}

openFile(){
  #Getting user input for file
  echo "What file do you want to look at?"
  read file

  #Reading contents of file into string
  filecontent=$(cat $file)
  toArray $filecontent
}

toArray(){
  #Looping though string adding each char to array
  letters=[]
  filecontent=$@
  echo $filecontent
  for (( i = 0; i < ${#filecontent}; i++ )); do
          letters[i]=${filecontent:i:1}
  done
  countVowels $letters
}

countVowels(){
  #Regular expression of vowels
  re='^[aeiou]+$'
  letters=$1
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
}


main
