import os

def enumerateDirectory(directory_toEnumerate):
    for entry in os.listdir(directory_toEnumerate):
        path = os.path.join(directory_toEnumerate, entry)
        if os.path.isdir(path):
            print(f"Directory: {path}")
            # Recursive call to enumerate subdirectories
            enumerateDirectory(path)
        else:
            print(f"File: {path}")

directory_toEnumerate = "/path/to/directory"  # Replace with the actual directory path
enumerateDirectory(directory_toEnumerate)
