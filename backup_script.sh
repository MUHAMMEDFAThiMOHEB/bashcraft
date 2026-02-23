#!/usr/bin/bash

# Author: Muhammad Fathy Moheb
# Created Date:
# Modified Date: 23/2/2026

# Discription: Archive all files in the current directory


target_destination=$(pwd)

base_dir_name=$(basename "$target_destination")

backup_file_name="backup_of_${base_dir_name}_$(date +%d%m%Y_%H%M%S).tar.gz"

echo "Backup Process Starts ...."
tar -cvf "$backup_file_name" -C "$target_destination" .

echo "Backup created successfully: $backup_file_name"

exit 0
