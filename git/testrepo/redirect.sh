#!/bin/bash/

PS4='Line ${LINENO}:'
set -x

zone="/root/git/testrepo/"
echo "redirecting to out.txt"

./fileread.sh > /root/git/out.txt

echo"redirecting is completed"








