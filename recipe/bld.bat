cmake -S%SRC_DIR% -Bbuild %CMAKE_ARGS% ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DUSE_BZIP2=ON ^
  -DUTILS=OFF

cmake --build build --target install
