FLAGS = -Werror -Wall -g -fsanitize=address,undefined

run: task2
	./task2

task2: main.o str.o 
	g++ ${FLAGS}  main.o str.o -o task2

main.o: main.cpp str.h
	g++ ${FLAGS} -c main.cpp

str.o: str.cpp str.h
	g++ ${FLAGS} -c str.cpp 

clean:
	rm *.o task2
