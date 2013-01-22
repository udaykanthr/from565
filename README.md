from565
=======

converts rle android boot images to png format

Compile
----------
gcc -O2 -Wall -Wno-unused-parameter -o 5652rgb from565.c

Create a Raw File.
-----------------------
./5652rgb -rle < logo.rle > logo.raw

Convert the raw filoe to png
------------------------------

convert -depth 8 -size 320x480 rgb:logo.raw logo.png

## Credits
zebarbu - original author.
Referenced from : http://forum.xda-developers.com/showthread.php?t=448804
