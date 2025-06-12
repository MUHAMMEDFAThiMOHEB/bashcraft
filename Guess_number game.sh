#!/usr/bin/bash

target=$(( RANDOM % 50 + 1 ))
counter=0

while true; do
    read -p "Guess a number between [1:50]--> " num
    ((counter++))

    if ((num > target)); then
        echo "lower than that"

    elif ((num < target)); then
        echo "higher than that"

    else
        echo "🎉 you got it 🎉, in $counter tries."
        exit 1
    fi

done