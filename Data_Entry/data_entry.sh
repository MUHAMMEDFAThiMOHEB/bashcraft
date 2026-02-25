#!/bin/bash

file="database.txt"

show_menu() {
    echo "===="
    echo "press i to add new contact"
    echo "press v to view all contacts"
    echo "press s to search for record"
    echo "press e to delete all contacts"
    echo "press d to delete one contact"
    echo "press q to exit"
    echo "===="
}

return_menu() {
    echo ""
    read -p "Press m to return to main menu or q to exit: " choice
    case $choice in
        m) main ;;
        q) exit 0 ;;
        *) echo "Invalid choice"; return_menu ;;
    esac
}

add_contact() {
    if [ ! -f "$file" ]; then
        touch "$file"
    fi

    read -p "Enter First Name: " fname
    read -p "Enter Last Name: " lname
    read -p "Enter Email: " email
    read -p "Enter Phone Number: " phone

    echo "$fname,$lname,$email,$phone" >> "$file"
    echo "Contact saved successfully."
    return_menu
}

view_contacts() {
    if [ ! -f "$file" ]; then
        echo "file does not exist yet"
        return_menu
        return
    fi

    if [ -s "$file" ]; then
        cat "$file"
    else
        echo "No contacts found."
    fi
    return_menu
}

search_contact() {
    if [ ! -f "$file" ]; then
        echo "file does not exist yet"
        return_menu
        return
    fi

    read -p "Enter search keyword: " keyword
    result=$(grep -i "$keyword" "$file")

    if [ -n "$result" ]; then
        echo "$result"
    else
        echo "No matching records found."
    fi
    return_menu
}

delete_all() {
    if [ ! -f "$file" ]; then
        echo "file hasn't created already"
        return_menu
        return
    fi

    > "$file"
    echo "Entire file has been eraisd successfully."
    return_menu
}

delete_one() {
    if [ ! -f "$file" ]; then
        echo "file hasn't created already"
        return_menu
        return
    fi

    read -p "Enter keyword to delete record: " keyword

    if grep -qi "$keyword" "$file"; then
        grep -iv "$keyword" "$file" > temp.txt
        mv temp.txt "$file"
        echo "Target content deleted."
    else
        echo "No matching records found."
    fi
    return_menu
}

main() {
    show_menu
    read -p "Enter your choice: " option

    case $option in
        i) add_contact ;;
        v) view_contacts ;;
        s) search_contact ;;
        e) delete_all ;;
        d) delete_one ;;
        q) exit 0 ;;
        *) echo "Invalid option"; main ;;
    esac
}

main
