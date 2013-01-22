rletopng : 5652rgb logo.raw
	   convert -depth 8 -size 480x800 rgb:logo.raw logo.png

5652rgb :
	  gcc -O2 -Wall -Wno-unused-parameter -o 5652rgb from565.c

logo.raw :
	  ./5652rgb -rle < logo.rle > logo.raw

clean :
	rm logo.png logo.raw 5652rgb
