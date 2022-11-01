#!/bin/sh

set -xe

CMAKE_ARGS="$CMAKE_ARGS -DBLAS_DIR=$PREFIX -DLAPACK_DIR=$PREFIX"

cmake CMakeLists.txt ${CMAKE_ARGS} -DPython3_EXECUTABLE="$PYTHON" -DBUILD_SHARED_LIBS=ON -DCMAKE_BUILD_TYPE=Release 
cmake --build . -j ${CPU_COUNT} --verbose
cmake --install . --verbose
