#!/bin/bash
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
