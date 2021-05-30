#!/bin/bash

# This script was written by Rob Goelz
# It's purpose is to perform looping

echo "Which directory do you want to search in?"

read searchDir

cd $searchDir

for obj in $(ls | sort ) ; do
	if [ -f $obj ];	then
		echo "$obj is a normal text file"
	elif [ -d $obj ];then
		echo "$obj is a directory"
	else
		echo "Rob isn't sure what kind of file $obj is!"
	fi
done
