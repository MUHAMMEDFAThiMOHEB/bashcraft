#!/bin/bash

read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo "Select an operation:"
select operation in "Addition" "Subtraction" "Multiplication" "Division" "Exit"; do
    case $operation in
        "Addition")
            result=$(echo "$num1 + $num2 = $(($num1 + $num2))" )
            echo "Result: $result"
            ;;
        "Subtraction")
            result=$(echo "$num1 - $num2 = $(($num1 - $num2))")
            echo "Result: $result"
            ;;
        "Multiplication")
            result=$(echo "$num1 * $num2 = $(($num1 * $num2))")
            echo "Result: $result"
            ;;
        "Division")
            if [ "$num2" -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
            else
                result=$(echo "scale=2; $num1 / $num2 = $(($num1 / $num2))" )
                echo "Result: $result"
            fi
            ;;
        "Exit")
            echo "Exiting calculator. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please choose a number from the menu."
            ;;
    esac
                break
    echo ""
done
