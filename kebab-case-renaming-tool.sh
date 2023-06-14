#!/bin/bash

# Set the directory to search for files and folders
directory_path="/path/to/directory"

# Loop through all files and folders in the directory
for file in "$directory_path"/*; do
    # Check if the file/folder name contains any spaces
    if [[ "$file" == *" "* ]]; then
        # Replace spaces with hyphens and convert to lowercase
        new_name=$(echo "$file" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
        # Rename the file/folder
        mv "$file" "$new_name"
    fi
done