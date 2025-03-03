#!/bin/bash
usage() {
echo "Usage: $0"
exit 1
}
# Function to list existing directories
list_directories() {
echo "Listing directories:"
ls -d */ 2>/dev/null || echo "No directories found."
}

echo "2. List existing directories"
list_directories
