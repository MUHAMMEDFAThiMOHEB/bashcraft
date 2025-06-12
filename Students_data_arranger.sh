#!/usr/bin/bash

# Initial student data
students_names=("Muhammad_Fathy")
students_scores=(99)
students_grades=("A")

select option in "Show current data" "Add new student" "Exit"; do

    if (( REPLY == 1 )); then
        echo -e "\n📋 Current Student Records:\n"
        for (( i=0; i<${#students_names[@]}; i++ )); do
            echo "Name : ${students_names[i]}"
            echo "Score: ${students_scores[i]}"
            echo "Grade: ${students_grades[i]}"
            echo "------------------------------"
        done
        echo

    elif (( REPLY == 2 )); then
        read -p "Enter student name  --> " name
        students_names+=("$name")

        read -p "Enter student score --> " score
        students_scores+=("$score")

        case $score in
            100|9[0-9]) grade="A" ;;
            8[0-9])     grade="B" ;;
            7[0-9])     grade="C" ;;
            6[0-9])     grade="D" ;;
            *)          grade="F" ;;
        esac
        students_grades+=("$grade")

        echo -e "\n✅ Student '$name' added with grade '$grade'\n"

    elif (( REPLY == 3 )); then
        echo -e "\n👋 Exiting the program. Goodbye!"
        break
    else
        echo "❌ Invalid choice. Please try again."
    fi

done