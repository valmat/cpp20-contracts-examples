# Usage:
# 
# make CPP=/path/to/your/clang-contracts/build/bin/clang++
# for example:
# make CPP=/home/valmat/work/git/clang-contracts/build/bin/clang++
# 

CPP_FLAGS  = -std=c++2a -pedantic -Wall -Wextra -Wsequence-point 


.PHONY: clean all


all: \
bin/example1.bin \
bin/example2.bin \
bin/example3.bin \
bin/example4.bin \
bin/example5.bin \
bin/example6-inheritance.bin \
bin/example7-axiom-1.bin \
bin/example7-axiom-2.bin \
bin/example8-handling.bin 
	@echo
	@echo "\033[1;34mBuild complite \033[0m"


bin/example1.bin: example1.cpp
	${CPP} ${CPP_FLAGS} -o bin/example1.bin example1.cpp

bin/example2.bin: example2.cpp
	${CPP} ${CPP_FLAGS} -o bin/example2.bin example2.cpp

bin/example3.bin: example3.cpp
	${CPP} ${CPP_FLAGS} -o bin/example3.bin example3.cpp

bin/example4.bin: example4.cpp
	${CPP} ${CPP_FLAGS} -o bin/example4.bin example4.cpp

bin/example5.bin: example5.cpp
	${CPP} ${CPP_FLAGS} -o bin/example5.bin example5.cpp

bin/example6-inheritance.bin: example6-inheritance.cpp
	${CPP} ${CPP_FLAGS} -o bin/example6-inheritance.bin example6-inheritance.cpp

bin/example7-axiom-1.bin: example7-axiom.cpp
	${CPP} ${CPP_FLAGS} -o bin/example7-axiom-1.bin example7-axiom.cpp -axiom-mode=off

bin/example7-axiom-2.bin: example7-axiom.cpp
	${CPP} ${CPP_FLAGS} -o bin/example7-axiom-2.bin example7-axiom.cpp -axiom-mode=on

bin/example8-handling.bin: example8-handling.cpp
	${CPP} ${CPP_FLAGS} -o bin/example8-handling.bin example8-handling.cpp -contract-violation-handler=violation_handler -fcontinue-after-violation

clean:
	rm -f bin/*.bin
