
# CPP   	   = /home/valmat/work/git/clang-contracts/build/bin/clang++
CPP   	   = /path/to/your/clang-contracts/build/bin/clang++
CPP_FLAGS  = -std=c++2a -pedantic -Wall -Wextra -Wsequence-point 



.PHONY: clean all


all: bin/example1.bin
	@echo
	@echo "\033[1;34mBuild complite \033[0m"


bin/example1.bin: example1.cpp
	${CPP} ${CPP_FLAGS} -o bin/example1.bin example1.cpp

	
clean:
	rm -f bin/*.bin
