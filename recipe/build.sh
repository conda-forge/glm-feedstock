#!/bin/sh

mkdir build
cd build

cmake -E env CXXFLAGS="-Wno-error=implicit-int-conversion -Wno-error=implicit-int-float-conversion -Wno-error=unused-but-set-variable" cmake ${CMAKE_ARGS} \
  -DCMAKE_PREFIX_PATH=${PREFIX} \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} \
  -DCMAKE_BUILD_TYPE=Release \
  ..

make install

if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" != "1" || "${CROSSCOMPILING_EMULATOR}" != "" ]]; then
ctest
fi
