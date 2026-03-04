#!/bin/bash
#
# Author: Muhammad Fathy Moheb
# Created Date: 3/3/2026
# Modified Date: 4/3/2026
#
# Description:-
# a Script to update all system packages and Homebrow packages in my machine
#
# Usage:-
# automate my system Updates.
#
echo " "
echo " ##### --- * Daily Script Start * --- ##### "
echo ""
echo " --- Updating Packages --- "
sudo nala update
echo ""
echo " --- Upgrading --- "
sudo nala upgrade -y
echo ""
echo " ==== * Homebrew * ==== "
brew update
echo ""
echo " ==== * Upgradeing Homebrew * ==== "
brew upgrade


echo " ************************ "
echo " *******All Done ******** "
echo " ************************ "
gnome-terminal
exit
exit 0
