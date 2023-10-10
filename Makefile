CC = gcc

banking_system: banking_system.c
	gcc banking_system.c -o banking_system -lm

fahrenheit_to_celsius: fahrenheit_to_celsius.c
	gcc fahrenheit_to_celsius.c -o fahrenheit_to_celsius -lm

clean:
	rm banking_system fahrenheit_to_celsius

test: banking_system fahrenheit_to_celsius
	bash test.sh
