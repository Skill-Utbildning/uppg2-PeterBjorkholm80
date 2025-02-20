program: main.c 
	gcc main.c -o main

clean:
	rm main

test: program
	bash test.sh
