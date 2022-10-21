#!/bin/bash

if [[ $# -ne 2 ]]; then #loop checks if user input 2 values, if not show error
    echo "usage: $0 <dir> <n>" 1>&2 # writes error message to stderr
    exit 0
fi

cd "$1" #changes dirctory to users input 

file=$(find . -type f -size +$2c) #find files in cd with user size in bytes 'c'

for f in $file # loops through files and deletes them 
do
    rm $f
done
