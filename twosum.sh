#!/bin/bash
nums=(2 7 13 3 5 6 4)
target=9
n=${#nums[@]}
x=$((n-1))
for((i=0;i<$x;i++))
do
	a=$((i+1))
	for((j=$a;j<$n;j++))
	do
		sum=$((nums[i]+nums[j]))
		if [ $sum -eq $target ]
		then
			echo $i $j
		fi
	done
done
echo ${nums[@]}
