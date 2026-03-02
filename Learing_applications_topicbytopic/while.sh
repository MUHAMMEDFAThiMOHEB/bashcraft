#!/bin/bash

# Author: Muhammad Fathy Moheb
# Created Date: 18/2/2026
# Modified Date: 2/3/2026

# Description
# Display the multiplication table [0 - 12] of given number

limit=0
echo " --- ### Multiplication Table ### --- "
echo ""
read -p "please, choose a number from from 1 to 99 --> " num

# the condition and main function

while [[ $limit != 13 ]]; do
  echo " $num * $limit = $(( $num * $limit )) "
  ((limit++))
done

exit 0
