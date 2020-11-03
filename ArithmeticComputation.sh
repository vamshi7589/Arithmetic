echo "*************welcome to arithmetic computation and sorting **********"
#TO DECLAER THE DICTIONARY
declare -A arithmaticOperation

#TO TAKING INPUT FROM USER
read -p "Enter first input :" a
read -p "Enter second input:" b
read -p "Enter third input :" c
#COMPUTE ARITHMETIC OPERATION
result1=$(( a + b * c ))
echo "Result:" $result1
result2=$(( a * b + c ))
echo "Result:" $result2
result3=$(( c + a / b ))
echo "Result:" $result3
