#!/bin/bash

here=$PWD
mkdir -p Release
cd Release
cmake ../../src
make install
make package
cd $here
