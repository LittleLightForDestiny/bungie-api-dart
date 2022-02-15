#!/bin/sh -ex

# Prepare the generated source directory
rm -rf ./lib
mkdir -p ./lib

# Compile and run the generator
cd generator
npm start
rm -rf build
cd ..

flutter pub run build_runner build