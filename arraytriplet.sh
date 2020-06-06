#!/bin/bash -x

array=( 0 -1 2 -3 1 )
echo ${array[@]}
#flag=1
for ((index1=0;index1<3;index1++))
do
	for ((index2=$[(index1+1)];index2<4;index2++))
	do
		for ((index3=$[(index2+1)];index3<5;index3++ ))
		do
			if (( $[(array[$index1]+array[$index2]+array[$index3])] == 0))
			then

				echo "triplet" ${array[$index1]} " " ${array[$index2]} " " ${array[$index3]}
#				$flag=1
			fi
		done
	done
done

#if (($flag==0))
#then
#	echo "Not found"
#fi
