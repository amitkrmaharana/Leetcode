#!/bin/bash -x
a=($3 $2 $1)
b=($6 $5 $4)
num1=$((a[2]*100+a[1]*10+a[0]))
num2=$((b[2]*100+b[1]*10+b[0]))
sum=$((num1+num2))
i=0
while [ $sum -gt 0 ]
do
	remain=$((sum%10))
	result[i]=$remain
	sum=$((sum/10))
	(( i++ ))
done
echo ${result[@]}
