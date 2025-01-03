cd static/images

exiftool -all:all= -tagsFromFile @ -exif:Orientation *.jpg

rm *.jpg_original

identify -format "%w %h %f\n" *.jpg | grep -v "720 540" | awk '{print $3}'

identify -format "%w %h %f\n" *.jpg | grep -v "720 540" | awk '{print $3}' | xargs mogrify -resize '720x720>'