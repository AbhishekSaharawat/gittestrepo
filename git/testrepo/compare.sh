#/bin/bash

PS4='Line ${LINENO}: '
set -x

echo "Please enter the path whose files list you want to compare"
read zone
path=($(find $zone -type f -name "*.txt"))
index=0
echo "Zone name is $zone"
while [[ $index -lt ${#path[@]}  ]] # agar yaha codition me -le kar diya to last me grep command banegi grep -i '' out.txt and ye puri out.txt ko search karegi without any pattern i.e. every line of file out.txt will be printed in trminal, so be careful in condition
do
  #echo "index value $index and total files are ${#path[@]}" 
 
  if  grep -i "${path[index]}" out.txt  
  then
	  echo "File "${path[index]}" is found in file "out.txt""
  else
          echo "File "${path[index]} is not found in file out.txt}""
  fi
 
  #echo "previous command executed with exit status:  $?"
  
  ((index++))
   
done
