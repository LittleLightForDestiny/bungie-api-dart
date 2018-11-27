#!/bin/sh -ex

# Prepare the generated source directory
rm -rf ./lib
mkdir -p ./lib

# Compile and run the generator
cd generator
tsc -p tsconfig.json
node ./build/generate.js
rm -rf build
cd ..
cp generator/dart-custom/http.dart ./lib/