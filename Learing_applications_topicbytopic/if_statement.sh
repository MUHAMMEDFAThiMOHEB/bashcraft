#!/bin/bash

# Author: Muhammad Fathy Moheb
# Created Date: 16/2/2026
# Modified Date: 27/2/2026

# Description
# even, odd number checker

echo " --- # Is this an even or odd number # --- "
echo ""
read -p "Enter a number: " number

if [ $(($number % 2)) -eq 0 ]; then
  echo "The number is even"
else
  echo "The number is odd"
fi

exit 0
