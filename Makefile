CC = gcc

mat_mul: mat_mul.c
	gcc mat_mul.c -o mat_mul -lm

area_calc: area_calc.c
	gcc area_calc.c -o area_calc -lm

mat_transpose: mat_transpose.c
	gcc mat_transpose.c -o mat_transpose -lm

clean:
	rm mat_mul area_calc mat_transpose

test: mat_mul area_calc mat_transpose
	bash test.sh

	