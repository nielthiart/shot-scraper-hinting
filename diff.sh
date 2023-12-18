# examples/1-bellingcat-default.png
# examples/2-bellingcat-font-render-hinting-none.png
# examples/3-bellingcat-default-geomp.png
# examples/4-bellingcat-font-render-hinting-none-geomp.png

image-diff --output diffs/diff-1-2.png examples/1-bellingcat-default.png examples/2-bellingcat-font-render-hinting-none.png

image-diff --output diffs/diff-1-3.png examples/1-bellingcat-default.png examples/3-bellingcat-default-geomp.png

image-diff --output diffs/diff-1-4.png examples/1-bellingcat-default.png examples/4-bellingcat-font-render-hinting-none-geomp.png