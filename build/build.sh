#!/bin/bash
# test

FLAVOR=`grep '^ID=' /etc/os-release | awk -F= '{print $2}'`
FLAVOR=`echo $FLAVOR | tr -d '"'`
echo "Flavor: $FLAVOR"
CMAKE_EXE=cmake
if [ $FLAVOR == "centos" ] || [ $FLAVOR == "rhel" ] ; then
    CMAKE_EXE=cmake3
fi
echo "CMake: $CMAKE_EXE"

here=$PWD
mkdir -p Release
cd Release
$CMAKE_EXE ../../src
make install
make package
cd $here
