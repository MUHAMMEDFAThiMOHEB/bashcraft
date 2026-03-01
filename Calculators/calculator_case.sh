#!/bin/bash

# Author: Muhammad Fathy Moheb
# Created Date: 17/2/2026
# Modified Date: 1/3/2026

# Description:-
# Calculator by case and if conditions

echo " ### --- Simple calculator using Case --- ### "
# initialize a counter for the inputs
count=0
# validate and inpu the second number
read -p "Input the first number: " num1
if [[ "$num1" =~ ^[0-9]+$ ]];then
  ((count++))
else
  echo "you have to input a numeric value"
  exit 1
fi
# input the second number
read -p "Input the second number: " num2
if [[ "$num2" =~ ^[0-9]+$ ]];then
  ((count++))
else
  echo "you have to input a numeric value"
  exit 1
fi

# choosing operation for the input numbers
read -p "Choose wanted operation [ + - * / % ] --> " ope

# validate and perfom the operation choosen
case "$ope" in
  "") echo "You haven't choosen any operation";;
  "+"|"-"|"*"|"/"|"%") echo " $num1 $ope $num2 = $((num1 ${ope} num2))";;
  *) echo "This is not valid operation";;
esac

exit 0
