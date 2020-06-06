#!/bin/bash -x

count_array=0


for((count=1;count<=10;count++))
do
	number=$[($RANDOM%899)+100]
	array[count_array++]=$number
done

echo "original array " ${array[@]} 
second_largest=${array[0]}
largest=${array[0]}
smallest=${array[0]}
second_smallest=${array[0]}

for current_number in ${array[@]}
do
	if (($current_number > $largest))  # condition checking for finding largest number
	then
		second_largest=$largest
		largest=$current_number
	elif (($current_number > $second_largest && $current_number!=$largest))
	then  							# condition checking for finding 2nd largest number
		second_largest=$current_number
	fi

	if (($smallest > $current_number)) # condition checking for finding smallest number
	then
		second_smallest=$smallest
		smallest=$current_number
	elif (($second_smallest > $current_number && $current_number!=smallest))
	then								# condition checking for finding 2nd smallest number
		second_smallest=$current_number
	fi

done

echo "without sorting"
echo "largest is " $largest 
echo "2nd largest is " $second_largest
echo "smallest is " $smallest 
echo "2nd smallest is " $second_smallest


#printf '%s\n' "${array[@]}" | sort -nr

array_length=${#array[@]}

for ((pass=0;pass<$array_length;pass++))	#sorting using bubble sort
do
	for((j=0;j<$array_length-$pass-1;j++))
	do
		if (( ${array[j]} > ${array[$((j+1))]} ))
		then
			#swap
			temp=${array[j]} 
            array[$j]=${array[$((j+1))]}   
            array[$((j+1))]=$temp 
		fi
	done
done

echo "using sorting" ${array[@]}
echo "largest element" ${array[9]}
echo "2nd largest element" ${array[8]}
echo "smallest element" ${array[0]}
echo "2nd smallest element" ${array[1]}
