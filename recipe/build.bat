mkdir build
cd build

cmake -G "NMake Makefiles" ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -DBUILD_SHARED_LIBS=ON ^
  -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=ON ^
  -DGLM_BUILD_TESTS=ON ^
  ..
if errorlevel 1 exit 1

cmake --build . --config Release --target install
if errorlevel 1 exit 1

ctest --output-on-failure
if errorlevel 1 exit 1
