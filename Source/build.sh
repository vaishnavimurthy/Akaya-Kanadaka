TTF="TTF/AkayaKanadaka-Regular.ttf"

# Delete olf font to make sure we’re looking at a freshly generated font after here
rm -f $TTF

# Generate
fontmake -g Source/AkayaKanadaka.glyphs -a -o ttf --output-path $TTF

gftools fix-hinting $TTF
mv $TTF.fix $TTF
gftools fix-dsig $TTF -a -f

rm -r instance_ufo
rm -r master_ufo
