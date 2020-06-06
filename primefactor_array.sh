#!/bin/bash -x

read number
counter=0
for (( factor=2;$number>1;factor++ ))
do
	while (( $(($number%$factor)) == 0 ))
	do
		array[counter++]=$factor
		number=$(($number/$factor))
	done
done

echo ${array[@]}
