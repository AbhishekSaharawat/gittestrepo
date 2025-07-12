#!/bin/bash

trap 'echo"This is ctrl + c signal exit" ; exit' 2

while true

do 
echo "This is the infinite loop at interval of 5 seconds"
sleep 5s
done
