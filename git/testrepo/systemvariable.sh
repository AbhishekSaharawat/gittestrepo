#!/bin/bash

read  name 
read  age
read -s password
echo 
echo "your name is ${1}"
echo "your age is ${2}"
echo "your password is ${3}"


# skills="Devops Engineer"
# expectation="Unlimited"

echo "your skills are ${4}"
echo "You may achieve per annum atleast ${5}"

echo "using uer deined variable name ${name}"
name
name="Expec"
echo "after using readonly for name variable ${name}"
unset name 
echo "After applying unset on name Variable, the avlue of name is  ${name}"

path=$(pwd)
echo "current path to execute the script is ${path}"

date_1=$(echo $(($(date  '+%s') + 3600)) | xargs -I {} date -d @{})

echo "your date is ${date_1}"

# String feature

string="Abhmh name is Abhishek"
echo "initial capital letter of string "my name is Abhishek" ${string^}"
echo "ALL capital letters ${string^^}"
echo "AL Small Letters ${string,,}"
echo "Initial Small Letters ${string,}"
echo "length of string ${#string}"

echo "${string:0}"
echo "${string:1}"
echo "${string:2}"
echo "${string:0:3}"
echo "${string:0:4}"
echo "${string:-1}"
echo "${string: -1}"
echo "${string: -4}"
echo "${string#A*h}" # from start of string, Shortest pattern ko delete karegin ye line , starting and ending os string jo mention kiya h usi se hi honi chahiye otherwise whole string fenk dega sare cased me chahe vo niche vale cases hi kyu na ho
echo "${string##A*h}" #from start of string, Longest pattern ko delte karegi ye line
echo "${string%s*k}" # from end of string, shortest pattern ko delete karegi
echo "${string/Abh/RICH}" # staring ki 1st match string ko replace karega
echo "${string//Abh/RICH}" # sari string me Abh ko RICH se replcae kar dega
echo "${string/Abh}" # remove kar dega 1st appearance of Abh from string
echo "${string//Abh}"  # remove kar dega all occurences of Abh from string
echo "${string#name}"

read -p "please enter your acc balance" bal
bal=${bal:-0}
echo "your account balance is ${bal}"

read -p "do you need a loan" loan
loan=${loan:-10000000}
echo "Your need of loan is ${loan}"
