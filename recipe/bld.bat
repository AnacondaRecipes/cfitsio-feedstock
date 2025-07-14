cmake -S%SRC_DIR% -Bbuild %CMAKE_ARGS% ^
  -DUSE_BZIP2=ON ^
  -DUTILS=OFF

cmake --build build --target install
