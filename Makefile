rletopng : 5652rgb logo.raw
	   convert -depth 8 -size 480x800 rgb:logo.raw logo.png

pngtorle : to565 mylogo.raw
	   ./to565 -rle < mylogo.raw > mylogo.rle

to565 :
	  gcc -o to565 to565.c

mylogo.raw :
	    convert -depth 8 mylogo.png rgb:mylogo.raw

5652rgb :
	  gcc -O2 -Wall -Wno-unused-parameter -o 5652rgb from565.c

logo.raw :
	  ./5652rgb -rle < logo.rle > logo.raw

clean :
	rm -rf logo.png logo.raw 5652rgb mylogo.raw mylogo.rle
