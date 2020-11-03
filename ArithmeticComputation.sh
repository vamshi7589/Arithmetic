for((index=0; index<=${#arithmaticOperation[@]}; index++)) do 
  array[index]=${arithmaticOperation[result$((index+1))]}
done
#TO PRINT THE ARRAY
echo "${array[@]}"

