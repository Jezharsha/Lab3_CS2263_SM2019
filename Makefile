
# TODO: add targets to compile LinkedList.c
Stack: Stack.o
	$(COMPILER) $(C_FLAGS) -o Stack Stack.o

Stack.o: Stack.c
	$(COMPILER) $(C_FLAGS) -c Stack.c


# TODO: add a target for each .input file in the Data directory to run the compiled LinkedList program with the tests in ./Data
test: test1 test2 test3

# TODO: add a target that can run all the tests above.
test1: Stack
	./Stack < Data/test1.input > test1.result

test2: Stack
	./Stack < Data/test2.input > test2.result

test3: Stack
	./Stack < Data/test3.input > test3.result