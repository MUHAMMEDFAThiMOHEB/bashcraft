#!/bin/bash

# Author: Muhammad Fathy Moheb
# Date Created: 25/4/2026
# Date Modified: 25/4/2026
#
# Description:-
# copy the last version of the current bash project to ~/Download after removing the existing one
# to modify in another dir and then update in production dir

var="The_Compressing_Ladybug.sh"

echo " Checking ....... "
if [ -f "${var}" ]; then
  echo "File found, Deleting ......"
  rm "$var"
  echo "Done ...."
else
  echo "No file found"
fi

echo "Getting the updated File..."
cp ~/Constraction_Area/Bash_projects/The_Compressing_Lady_Bug/The_Compressing_Ladybug.sh .
echo " ##### ---- Done ---- ##### "


lsd -l


exit 0
