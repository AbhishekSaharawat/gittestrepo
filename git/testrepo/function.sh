#!/bin/bash

#values=("$@") # This gives an array of command Line arguments
values="$@"
hshval="$*"
echo "hshval are $hshval"
function add()
{
 sum=0
 for args in "$@";
 do
	 sum=$(echo "scale=2; ${sum} + ${args}" | bc ) 
 echo "Printing sum and args value ${sum} and args${args}  "
 done 
 echo "addition of numbers is ${sum}" 
}
echo "Values are ${values}"
add $values

function multiply()
{
 mul=1
 for args in "$@";
 do
  mul=$((mul * args))
 done
 echo "Multiplication of User Input Values is ${mul}"
}

multiply $values

function divide() 
{
 divide=("$@")
 echo "$#"
 echo "simple divide without parenthesis is ${divide}"
 echo "${divide[0]}"
 echo "${divide[1]}" 
 result=$(echo "scale=2; ${divide[0]}  / ${divide[1]}" | bc)
 echo "Division of First number from Second Number $result" 
}

divide $values
echo "${values[2]}"

function divide1()
{
  echo "Inside divide1 "${@}""	
  echo "using only \'$@' for values assignment"
  assign=("$@")
  echo "${assign[0]}"
  echo "${assign[1]}"
  arrval=("${values[@]}") # beacuse yaha pe abhi bhi Striing of Value ki tarah treat ho rha h values variable , but "$@" function k andar array kitarah treat hota h to isliy upper vala division method use karo jisme "$@" se value dusre array variable me chali jati h 
  echo "${assign[0]}  , ${assign[1]} "
  result=$(echo "scale=2; ${assign[0]} / ${assign[1]}" | bc) 
 echo "global variable division testing ${result}"
}

divide1 $values

for args in $*;
do
    echo "Using the '$*' and value is "$args""
done

for agrs in $@;
do
    echo "Using '$@' and value is "$args""
done

for args in "$*";
do
    echo "Using "$*" and value is "$args" "
done

for args in "$@";
do
    echo "Using "$@" and value is "$args" "
done	

echo "$#(($@))"
echo "$#(($*))"

echo "$#(("$@"))"
echo "$#(("$*"))"
