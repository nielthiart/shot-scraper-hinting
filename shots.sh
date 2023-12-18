# Usage: ./shots.sh
# Description: Generate screenshots of the examples

# Default
shot-scraper "https://www.bellingcat.com/resources/2016/12/06/vacuuming-image-metadata-wayback-machine/" -w 1200 -h 800 \
  -o examples/bellingcat-default.png

# No font hinting
shot-scraper "https://www.bellingcat.com/resources/2016/12/06/vacuuming-image-metadata-wayback-machine/" -w 1200 -h 800 \
  -o examples/bellingcat-font-render-hinting-none.png \
  --browser-args "--font-render-hinting=none"