import os

def get_basicMetadata(filePath):
    metadata = {}
    metadata['size'] = os.path.getsize(filePath)
    metadata['creation_time'] = os.path.getctime(filePath)
    metadata['modification_time'] = os.path.getmtime(filePath)
    metadata['access_time'] = os.path.getatime(filePath)
    return metadata

filePath = '/path/to/file'  # Replace this with your actual file path
metadata = get_basicMetadata(filePath)

for key, value in metadata.items():
    print(f"{key}: {value}")
