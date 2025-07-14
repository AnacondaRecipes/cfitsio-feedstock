#! /bin/bash

set -ex

cmake -S$SRC_DIR -Bbuild ${CMAKE_ARGS} \
    -DCMAKE_BUILD_TYPE=Release \
    -DUSE_BZIP2=ON

cmake --build build --target install

# Test-ish programs:
$PREFIX/bin/cookbook
$PREFIX/bin/speed
# Actual test suite as described in README.md
./build/TestProg > testprog.lis
diff testprog.lis testprog.out
cmp testprog.fit testprog.std
