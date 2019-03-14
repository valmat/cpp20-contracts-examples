# Usage:
# 
# make CPP=/path/to/your/clang-contracts/build/bin/clang++
# for example:
# make CPP=/home/valmat/work/git/clang-contracts/build/bin/clang++
# 

CPP_FLAGS  = -std=c++2a -pedantic -Wall -Wextra


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
bin/example8-handling.bin \
bin/example9-off.bin \
bin/example9-default.bin \
bin/example9-audit.bin \
bin/example10-off.bin \
bin/example10-default.bin \
bin/example10-audit.bin \
bin/example11.bin
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

bin/example9-off.bin: example9.cpp
	${CPP} ${CPP_FLAGS} -o bin/example9-off.bin example9.cpp -build-level=off -contract-violation-handler=violation_handler -fcontinue-after-violation

bin/example9-default.bin: example9.cpp
	${CPP} ${CPP_FLAGS} -o bin/example9-default.bin example9.cpp -build-level=default -contract-violation-handler=violation_handler -fcontinue-after-violation

bin/example9-audit.bin: example9.cpp
	${CPP} ${CPP_FLAGS} -o bin/example9-audit.bin example9.cpp -build-level=audit -contract-violation-handler=violation_handler -fcontinue-after-violation

bin/example10-off.bin: example10.cpp
	${CPP} ${CPP_FLAGS} -o bin/example10-off.bin example10.cpp -build-level=off -contract-violation-handler=violation_handler -fcontinue-after-violation

bin/example10-default.bin: example10.cpp
	${CPP} ${CPP_FLAGS} -o bin/example10-default.bin example10.cpp -build-level=default -contract-violation-handler=violation_handler -fcontinue-after-violation

bin/example10-audit.bin: example10.cpp
	${CPP} ${CPP_FLAGS} -o bin/example10-audit.bin example10.cpp -build-level=audit -contract-violation-handler=violation_handler -fcontinue-after-violation

bin/example11.bin: example11.cpp
	${CPP} ${CPP_FLAGS} -o bin/example11.bin example11.cpp -contract-violation-handler=violation_handler -fcontinue-after-violation


clean:
	rm -f bin/*.bin
