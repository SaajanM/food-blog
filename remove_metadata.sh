cd static/images
exiftool -all:all= -tagsFromFile @ -exif:Orientation *.jpg
rm *.jpg_original