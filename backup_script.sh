#!/usr/bin/bash

# Directory to backup (current directory)
target_destination=$(pwd)

# Get only the directory name (no full path) as file names not allowed to contain / (will couse errors)
base_dir_name=$(basename "$target_destination")

# Create backup filename with timestamp and .tar.gz extension
backup_file_name="backup_of_${base_dir_name}_$(date +%d%m%Y_%H%M%S).tar.gz"

echo "Backup Process Starts ...."
# Create compressed archive of the target destination (current directory)
tar -czvf "$backup_file_name" -C "$target_destination" .

echo "Backup created successfully: $backup_file_name"

