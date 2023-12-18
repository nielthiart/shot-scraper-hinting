# Usage: ./shots.sh
# Description: Generate screenshots of the examples
# Pages tested:
# - https://www.bellingcat.com/resources/2016/12/06/vacuuming-image-metadata-wayback-machine/

# Default Bellingcat
shot-scraper "https://www.bellingcat.com/resources/2016/12/06/vacuuming-image-metadata-wayback-machine/" -w 1200 -h 800 \
  -o examples/1-bellingcat-default.png

# No font hinting Bellingcat
shot-scraper "https://www.bellingcat.com/resources/2016/12/06/vacuuming-image-metadata-wayback-machine/" -w 1200 -h 800 \
  -o examples/2-bellingcat-font-render-hinting-none.png \
  --browser-args "--font-render-hinting=none"

# Default with geometricprecision Bellingcat
shot-scraper "https://www.bellingcat.com/resources/2016/12/06/vacuuming-image-metadata-wayback-machine/" -w 1200 -h 800 \
  -o examples/3-bellingcat-default-geomp.png --javascript "(document.head || document.documentElement).appendChild(Object.assign(document.createElement('style'), {textContent: '*, ::before, ::after { text-rendering: geometricPrecision !important; }'}));"

# No font hinting with geometricprecision Bellingcat
shot-scraper "https://www.bellingcat.com/resources/2016/12/06/vacuuming-image-metadata-wayback-machine/" -w 1200 -h 800 \
  -o examples/4-bellingcat-font-render-hinting-none-geomp.png \
  --browser-args "--font-render-hinting=none" \
  --javascript "(document.head || document.documentElement).appendChild(Object.assign(document.createElement('style'), {textContent: '*, ::before, ::after { text-rendering: geometricPrecision !important; }'}));"

# https://github.com/puppeteer/puppeteer/issues/2410#issuecomment-1249727413
# Kitchen sink Bellingcat
shot-scraper "https://www.bellingcat.com/resources/2016/12/06/vacuuming-image-metadata-wayback-machine/" -w 1200 -h 800 \
  -o examples/5-bellingcat-kitchen-sink.png \
  --browser-args "--window-size=1200,800" \
  --browser-args "--font-render-hinting=none" \
  --browser-args "--force-color-profile=generic-rgb" \
  --browser-args "--disable-gpu" \
  --javascript "(document.head || document.documentElement).appendChild(Object.assign(document.createElement('style'), {textContent: '*, ::before, ::after { text-rendering: geometricPrecision !important; }'}));"