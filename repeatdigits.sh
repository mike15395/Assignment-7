#!/bin/bash -x

counter=0

for ((count=1;count<=100;count++))
do
	temp_number1=$count
	temp_number2=$count
	digit1=$[(temp_number1%10)]
	digit2=$[(temp_number2/10)]
	if (($digit1 == $digit2))
	then
		array[counter++]=$count
	fi
done

echo ${array[@]}

