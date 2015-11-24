#!/bin/sh
read column_input

i=0
#This inner and outer while loop performs the first half of the output
#The outer while loop determines the number of lines that get printed, which is one less than the column_input variable 
while [ $column_input -gt $i ] ; do
	j=0
#The inner while loop determines the numbers that get printed in each line 
	while [ $i -ge $j ] ; do
		echo -n "$j "
		j=`expr $j + 1`
		done
	echo 
	i=`expr $i + 1`
	done

#This inner and outer while loop performs the second half of the output
#This second inner and outer while loop performs the reverse of the first inner and outer while loop  
while [ $column_input -gt 1 ] ; do
	j=`expr $column_input - 2`
	i=0
	while [ $j -ge $i ] ; do
		echo -n "$i "
		i=`expr $i + 1`
		done
	echo
	column_input=`expr $column_input - 1`
	done 
