cmake -S%SRC_DIR% -Bbuild %CMAKE_ARGS% ^
  -DUSE_BZIP2=ON ^
  -Dconstant=cfitsio_constant

cmake --build build --target install
