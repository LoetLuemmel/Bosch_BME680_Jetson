main:main.c bme680.c bme680.h bme680_defs.h
	gcc -Wall main.c bme680.c -o main -I. -lm -li2c
clean:
	rm main

