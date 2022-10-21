#!/bin/bash

re='\b[^2-9]{1,4}\b' #regular expression for finding digits that are  2-9
sum=0 # initalize sum
for r in {1000..2000} #loop through range of values
do
    if [[ $r =~ $re ]]; then # finds if the index r matches the re
	sum=$(($sum + $r)) # if so, add the index to current sum
    fi
done
echo $sum


