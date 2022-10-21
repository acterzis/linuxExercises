#!/bin/bash
column = $1

echo "usage:mean.sh <column> [file.csv]"

if [[$# -eq 2]]; then
    file = $2
elif [[$# -eq 1]]; then
     file = /dev/stdin
else
    echo "none"
fi

cut $file -d, -f $column |
    tail -n + 2 |
    {sum=0;
     total=0;
     while read value; do
	 sum=$(($sum + $value));
	 total=$(($total + 1));
     done;
     average=$(echo "scale = 4; $sum/$total" | bc);
     echo $average;
}
