#!/bin/bash

for i in {1..100}; do
  echo $i | cat > /root/git/testrepo/file3.txt

  sleep 0.25
  done 
