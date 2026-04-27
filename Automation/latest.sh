#!/bin/bash

# Author: Muhammad Fathy Moheb
# Date Created: 25/4/2026
# Description:-
# replace the file in the local repo with the updated one after finished

var="The_Compressing_Ladybug.sh"
target="/home/muhammad-fathy/Constraction_Area/Bash_projects/The_Compressing_Lady_Bug/"$var""
source="/home/muhammad-fathy/Constraction_Area/Bash_projects/The_Compressing_Lady_Bug/"
if [ -e "$target" ]; then
  echo "file identified ."
  echo "-----"
  read -p "Procceding !? [Y/N]" choose
  if [ "$choose" = "Y" ] || [ "$choose" = "y" ]; then
    echo "deleting ...."
    rm "$target"
    echo ""
    echo " # -- File Deleted Successfully -- # "
    tree "$source"
  else
    echo " Abort ......."
    exit 0
  fi
else
  echo "File does not exist already."
  echo ""
fi


# copying the latest and updated file 
echo " ## --- Copying --- ## "
echo "Copying the last modified version of the file"
cp ~/Downloads/The_Compressing_Ladybug.sh ~/Constraction_Area/Bash_projects/The_Compressing_Lady_Bug/
echo " ##### --- Done --- ##### "
lsd -l "$source"


exit 0
