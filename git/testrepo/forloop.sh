#!/bin/bash

PS4='Line {LINENO}: '
set -x

file="/root/git/out.txt"

for var in $(cat "$file")
do
	echo "$var"
done





