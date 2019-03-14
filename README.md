# C++20 contracts examples


Clone and build experemental compiler from  *ARCOS research group*

https://github.com/arcosuc3m/clang-contracts


``` bash
git clone https://github.com/arcosuc3m/clang-contracts/
mkdir -p clang-contracts/build/ && cd clang-contracts/build/
cmake -G "Unix Makefiles" -DLLVM_USE_LINKER=gold -DBUILD_SHARED_LIBS=ON -DLLVM_USE_SPLIT_DWARF=ON  -DLLVM_OPTIMIZED_TABLEGEN=ON ../
make -j8
```

Then clone and build this examples

```bash
git clone https://github.com/valmat/cpp20-contracts-examples/
cd cpp20-contracts-examples
make CPP=/path/to/clang++
```
When `/path/to/clang++` is the path to binary `clang++` from clang-contracts repo.
