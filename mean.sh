#!/bin/bash

if [[ $# -eq 0 ]]; then # if user gives no column and no file, return error message
    echo "usage: $0 <column> [file.csv]" 1>&2
elif  [[ $# -eq 1 ]]; then # if user pipes a file through our mean.sh wiht a column
    file=/dev/stdin
    echo $(cut -d, -f $1 $file | tail +2 |
               { sum=0; line=0;
                 while read n
                 do sum=$(echo "scale=6; $sum+$n" | bc )
                    line=$(($line+1))
                 done
                 mean=$(echo "scale=6; $sum/$line" | bc)
                 echo  "The mean of column $1 in file: $file is $mean"; })
else # if user give column and file, cut the column, remove the header, calculate mean
    echo $(cut -d, -f $1 $2 | tail +2 |
	       { sum=0; line=0;
		 while read n
		 do sum=$(echo "scale=6; $sum+$n" | bc )
		    line=$(( $line + 1 | bc ))
		 done
		 mean=$(echo "scale=6; $sum/$line" | bc )
		 echo  "The mean of column $1 in file: $2 is $mean"; })
fi


    
