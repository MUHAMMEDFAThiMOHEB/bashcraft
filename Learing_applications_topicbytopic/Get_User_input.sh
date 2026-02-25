#!/bin/bash


# Author: Muhammad Fathy Moheb
# Date Created: 15/2/2026
# Modified date: 25/2/2026

# Description
# this is an application of how to get an input from user by (read and select) 

# Usage
# Example of getting user input


# An application to get user's [Name,Email,Password, Age, Job, Gender, Preferred_working_style]

read -p "Enter your Name: " name
read -p "Enter your Email: " email
read -s -p "Enter your Password: " password 
echo " "
read -N 2 -p "Enter your Age: " age  
echo ""
read -n 35 -p "Enter your Job: " job

PS3="Select your Gender ..."
select gender in Male Female; do
  break
done

PS3="Select your preferred working style ..."
select pws in "On site" Remote Hybired; do
  break
done

echo " ### --- All Required Data has inputed --- ### "
echo ""
echo ""

echo "${name^^}, $email, $password, $age, $job, $gender, $pws" >> data.txt

bat data.txt
exit 0

# Learned Notes:
# 1- the order of the read command options is so important (-p must be the last)
# 2- option (-t with read) will miss with the program display format as it's does not print a new line
#


# Future enhancments
#
# 1- add a flow to provide options to [ display the file content, erase the entire file, delete the file ]
# 2- enhance the display -- provide options [one line display], [multi line structure display]
#
