#!/bin/sh -ex

# Prepare the generated source directory
rm -rf ./lib
mkdir -p ./lib

mkdir -p ./lib/src/helpers
cp generator/dart-custom/helpers/bungie_net_token.dart ./lib/src/helpers
cp generator/dart-custom/helpers/http.dart ./lib/src/helpers
cp generator/dart-custom/helpers/oauth.dart ./lib/src/helpers

# Compile and run the generator
cd generator
tsc -p tsconfig.json
node ./build/generate.js
rm -rf build
cd ..

flutter pub run build_runner build