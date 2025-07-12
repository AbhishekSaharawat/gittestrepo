#!/bin/bash

:  ${1:?"First PArameter is not assigned"}  # NUll Command, errors like command not found ko suppress kar deti h and exit status 0 kr deti h ,aage badho
 
string1="ABHISHEK SAHARAWAT"
string2="ABHISHEK SAHARAWAT"
name="twelve"
path1="./LINUX"
path2="./access.log"



# if [ "$string" == "ABHISHEK SAHARAWAT" ] double quotes lagane padenge with $string, then only ye isko "ABHISHEK SAHARAWAT" manega ,is se better [[]] use karo 
if [[ $string1 == "ABHISHEK SAHARAWAT" ]]
then 
echo "both strings are same and last echo command executed with status $?"
else
  "if command retuns 0"	
fi


if [[ -n $name ]]
then
	echo "length of string $name is non zero"

else
	echo "length of string $name is zero"

fi

if [[ -d $path1 ]]
then
	echo "Yes it is a directory $(ls -ld $path1)"
fi 

if [[ -f $path2  ]] 
then
  echo "Yes it is a file not a directory $(ls -la $path2)"	
fi



















