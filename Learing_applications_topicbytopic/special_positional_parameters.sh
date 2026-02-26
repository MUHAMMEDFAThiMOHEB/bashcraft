#!/bin/bash

# Author: Muhammad Fathy Moheb
# Date Created: 16/2/2026
# Date Modified: 26/2/2026


# a super simple calculator depends on positional parameters only
# $# --> print the number of paramerters inputed
# $0 --> the relative path of the current script

echo "$1 $2 $3 = $((${1:-0} ${2} ${3:-0}))"
echo "you have inputed $# parametars"
echo "your script name is $0"
echo ""
echo "---------------------------------"
echo ""
# this special parameter version

# $@ --> reffers to all parameters input and print them all at once
# for example if the paramert is a b c 
# to print them by positional parameters we have to user $1 $2 $3 or we could use just $@

# so --> echo "$1 $2 $3" = echo $@
echo "This is special parameters version ..."
echo "$@ = $(($@))"
echo ""
echo "$ star * version"
echo ""
echo "$* = $(($*))"
# the IFS (internal field separator) by default is = " " space, so the $@ will not considering the "" unless we use "$@"
# with $@ --> "daily Report" = daily Report, 2 words, but it's not the same with "$@"

# $* is the exact same as $@
# but the "$*" is not the same as "$@"
# simply we use IFS with "$*" 

exit 0

# Future Inhancements
#
# Add a flow to check in each steps the logic errors like zero division
# use bs and scale commands to enhance the output
# make it repetative till the client input q to quit
#
# Note --> The updated version will be added under ./Calculators
