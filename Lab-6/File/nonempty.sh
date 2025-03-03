# Function to delete a non-empty directory
delete_non_empty_directory() {
read -p "Enter the name of the directory to delete (non-empty): " dir_name
if [ ! -d "$dir_name" ]; then
echo "Error: Directory '$dir_name' does not exist."
else
read -p "Are you sure you want to delete the non-empty directory
'$dir_name'? (y/n): " confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
rm -r "$dir_name"
if [ $? -eq 0 ]; then
echo "Non-empty directory '$dir_name' deleted successfully."
else
echo "Error: Could not delete '$dir_name'."
fi
else
echo "Deletion of '$dir_name' canceled."
fi
fi
}
echo "4. Delete a non-empty directory"
delete_non_empty_directory

