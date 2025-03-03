# Function to delete a directory
delete_directory() {
read -p "Enter the name of the directory to delete: " dir_name
if [ ! -d "$dir_name" ]; then
echo "Error: Directory '$dir_name' does not exist."
else
read -p "Are you sure you want to delete '$dir_name'? (y/n): " confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
rmdir "$dir_name" 2>/dev/null
if [ $? -eq 0 ]; then
echo "Directory '$dir_name' deleted successfully."
else
echo "Error: Directory '$dir_name' is not empty. Use 'rm -r' to
remove it."
fi
else
echo "Deletion of '$dir_name' canceled."
fi
fi
}
echo "3. Delete an empty directory"
delete_directory

