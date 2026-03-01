#!/bin/bash

read -p "Input a number: " number
case "$number" in
  "") echo "You have not input anything";;
  [0-9]) echo "You have input one digit number";;
  [0-9][0-9]) echo "You have input two digit numbers";;
  [0-9][0-9][0-9]) echo "You have input three digit number";;
  *) echo "You have input more than three digit number";;
esac

exit 0
