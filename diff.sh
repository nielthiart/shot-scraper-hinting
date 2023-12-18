# examples/1-bellingcat-default.png
# examples/2-bellingcat-font-render-hinting-none.png
# examples/3-bellingcat-default-geomp.png
# examples/4-bellingcat-font-render-hinting-none-geomp.png

image-diff examples/1-bellingcat-default.png examples/2-bellingcat-font-render-hinting-none.png --output diffs/diff-1-2.png 

image-diff examples/1-bellingcat-default.png examples/3-bellingcat-default-geomp.png --output diffs/diff-1-3.png

image-diff examples/1-bellingcat-default.png examples/4-bellingcat-font-render-hinting-none-geomp.png --output diffs/diff-1-4.png