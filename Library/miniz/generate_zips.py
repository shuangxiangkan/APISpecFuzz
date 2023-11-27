import zipfile
import os

# Function to create a zip file
def create_zip_file(filename, content_name, content):
    with zipfile.ZipFile(filename, 'w') as zipf:
        # Writing content to a file to be zipped
        with open(content_name, 'w') as f:
            f.write(content)
        # Adding the file to the zip
        zipf.write(content_name)
        # Removing the temporary content file
        os.remove(content_name)

# Creating two zip files with different contents
create_zip_file('example1.zip', 'file1.txt', 'Hello, this is the content of file1.')
create_zip_file('example2.zip', 'file2.txt', 'This is another file, named file2.')

