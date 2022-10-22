#!/bin/bash

mkdir five
cd five

for i in {1..5};do
	 mkdir "dir${i}" 
   for j in {1..4};do
		 file="dir${i}/files${j}"
		 l=1
		 while(($l<=$j));do
			 echo $j >> $file
			 let "l++"
		 done;
	 done

	 
 done

	 
