#!/bin/bash

mkdir five
cd five

for i in {1..5};do
	 mkdir "dir${i}"
	 for j in {1..4};do
		  for l in {1..$j};do
			   echo $j >>"dir${i}/files${j}"
		  done
	 done
done
	 
	      
	 
