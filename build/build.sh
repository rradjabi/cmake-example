#!/bin/bash

#if RHEL/CENTOS
CMAKE_EXE=cmake3
#else
#CMAKE_EXE=cmake
#endif

here=$PWD
mkdir -p Release
cd Release
$CMAKE_EXE ../../src
make install
make package
cd $here
