#!/bin/bash

if [[ $# -eq 0 ]]; then # if user gives no column and no file, return error message
    echo "usage: $0 <column> [file.csv]" 1>&2
elif  [[ $# -eq 1 ]]; then
    echo "1"
else # if user give column and file, cut the column, remove the header, calculate mean
    echo $(cut -d, -f $1 $2 | tail +2 |
	       { sum=0; line=0;
		 while read n
		 do sum=$(($sum + $n))
		    line=$(($line + 1))
		 done
		 mean=$(($sum/$line | bc))
		 echo  "The mean of column $1 in file: $2 is $mean"; })
fi


    
