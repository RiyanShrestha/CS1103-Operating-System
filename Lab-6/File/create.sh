#!/bin/bash
usage() {
echo "Usage: $0"
exit 1
}
# Function to create a directory
create_directory() {
read -p "Enter the name of the new directory: " dir_name
if [ -d "$dir_name" ]; then
echo "Error: Directory '$dir_name' already exists."
else
mkdir "$dir_name"
if [ $? -eq 0 ]; then
echo "Directory '$dir_name' created successfully."
else
echo "Error: Could not create directory '$dir_name'."
fi
fi
}

echo "1. Create a new directory"
create_directory
