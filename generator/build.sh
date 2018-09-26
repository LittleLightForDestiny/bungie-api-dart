#!/bin/sh -ex

# Prepare the generated source directory
rm -rf ../lib
mkdir -p ../lib
cp dart-custom/http.dart ../lib/

# Compile and run the generator
tsc -p tsconfig.json
node ./build/generate.js

# rm -rf ./docs
# typedoc --target ES5 --out ./docs/ --readme README.md lib
# touch ./docs/.nojekyll

# Build the package from the generated sources
# rm -rf ./lib
# mkdir -p lib
# rsync -a --include '*/' --include '*.d.ts' --exclude '*' lib/ lib/
# tsc -p tsconfig-package.json

# Copy package.json into lib - we'll publish lib as the package instead of the whole repo, so paths are nicer.
cp ../README.md ../lib/
cp ../bungie-api-LICENSE ../lib/
rm -rf build
