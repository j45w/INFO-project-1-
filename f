from PIL import Image
from PIL.ExifTags import TAGS

def get_imageMetadata(imagePath):
    image = Image.open(imagePath)
    exif_data = {}
    info = image._getexif()
    if info:
        for tag, value in info.items():
            decoded = TAGS.get(tag, tag)
            exif_data[decoded] = value
    return exif_data

imagePath = 'path/to/image.jpg'
metadata = get_imageMetadata(imagePath)

for key, value in metadata.items():
    print(f"{key}: {value}")
