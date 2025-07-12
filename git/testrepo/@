#!/bin/bash

PS4='Line ${LINENO}: '
set -x

#source redirect.sh
echo "Please enter the path where all files are present"
#read  -a zone
zone="/root/git/testrepo/"
path=($(find $zone -type f -name "*.txt"))
echo "after reading path"
arr=()
index=0
echo "count of files ${#path[@]}"
while [[ $index -le "${#path[@]}" ]]
do
        echo "index value is $index"
	file="${path[index]}"
        echo "File name is $file"
	#sleep 5s

#	if [[ -d $file ]] 
#	then
		
	while read -r arr
        do 
	    echo "$arr"
	done < $file

 #       else
 #          echo " Directory: $file does not exist"
 #       fi

	echo "Inside while loop"
	#file=$(cat ${path[index]})	
        #echo "your filename is ${path[index]} and it's content is "$file""
        index=$((index+1)) 
        echo "after incrementing index value is $index"
	
#	if [[ $index -gt ${#path[@]} ]] 
#	then
                
#           echo "index $index is greater then length of array ${#path[@]} so exiting the while loop and program"
	   
#	  
#	   break

#	fi
 done

#  echo "Hi all files are displayed"

# COMMENT
#echo "HI ABHISHEK" | while read line
#do 
#  echo "Your Line is $line"
#done
 
#while read -r lines
#do
# filename=$(cat lines)
#	echo "Your file's data is $filename"
#  done < $(read -a "$(find /root/git/testrepo  -type f -name "*.txt")")
#COMMENT
