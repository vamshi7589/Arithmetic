for((index=0; index<=${#arithmaticOperation[@]}; index++)) do 
  array[index]=${arithmaticOperation[result$((index+1))]}
done
#TO PRINT THE ARRAY
echo "${array[@]}"
#TO FUNCTION SORTING RESULTS IN ASCENDING ORDER
function ascendingOrderSort()
{
   for(( index=0; index<${#array[@]}; index ++ ))
   do
      for(( indexOne=0; indexOne<${#array[@]}-1; indexOne ++ ))
      do
         if (( $(echo "${array[indexOne+1]} < ${array[indexOne]}" | bc -l ) ))
         then
            temp=${array[indexOne]}
            array[indexOne]=${array[indexOne+1]}
            array[indexOne+1]=$temp
         fi
      done
   done
   echo "To data ascending order:"${array[@]}
}
#TO FUNCTION SORTING RESULTS IN DECENDING ORDER
function descendingOrderSort()
{
	for(( index=0; index<${#array[@]}; index ++ ))
	do
		for(( indexOne=0; indexOne<${#array[@]}-1; indexOne ++ ))
		do
			if (( $(echo "${array[indexOne+1]} > ${array[indexOne]}" | bc -l ) ))
			then
				temp=${array[indexOne]}
				array[indexOne]=${array[indexOne+1]}
				array[indexOne+1]=$temp
			fi
		done
	done
echo "To data descending order:${array[@]}"
}
#TO FUNCTION CALL FOR SORTING IN DECENDING ORDER
descendingOrderSort ${array[@]}
