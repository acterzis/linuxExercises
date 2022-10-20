#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d , -f 7 | {sum=0; total=0; while read n; do sum=$(($sum + $n)); total=$(($count + 1)); done; average=$(echo "scale = 4; (($sum/$total))" | bc); echo $average;}
