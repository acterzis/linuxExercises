#!/bin/bash

re='\b[^2-9]{1,4}\b'
sum=0
for r in {1000..2000}
do
    if [[ $r =~ $re ]]; then
	sum=$(($sum + $r))
    fi
done
echo $sum


